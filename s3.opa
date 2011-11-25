package blasphemy.s3

import stdlib.crypto

S3 = {{
  date_printer = Date.generate_printer("%a, %d %b %Y %H:%M:%S GMT")
  aws_secret_key = "secret_key"
  aws_access_key_id = "access_key_id"

  aws_uri(filename) = Uri.of_absolute({
     Uri.default_absolute with
     schema = {some = "http"}
     domain = "s3.amazonaws.com"
     port   = {some = 80}
     path   = ["blasphemy", "images", filename]
     is_directory = false
  })

  padding(raw_signature) =
    match (mod(String.length(raw_signature), 4)) with
    | 3 -> "{raw_signature}="
    | 2 -> "{raw_signature}=="
    | _ -> raw_signature

  aws_signature(file, date) =
    string_to_sign = "PUT\n\n{file.mimetype}\n{date}\nx-amz-acl:public-read\n/blasphemy/images/{file.filename}"
    padded_signature = padding(Crypto.Base64.encode(Crypto.Hash.hmac_sha1(
      aws_secret_key,
      string_to_sign
    )))
    padded_signature

  options(file, date) =
  {
    WebClient.Put.default_options with
    mimetype = file.mimetype
    auth = some("AWS {aws_access_key_id}:{aws_signature(file, date)}")
    custom_headers = some("Date: {date}\r\nx-amz-acl: public-read\r\n")
  }

  upload(file) =
    date = Date.to_formatted_string(date_printer, Date.now())
    options = S3.options(file, date)
    uri = S3.aws_uri(file.filename)
    response = match WebClient.Put.try_put_with_options(uri, file.content, options)
     | { failure = _ } -> {failure = "Could not reach distant server"}
     | { success = s } -> match WebClient.Result.get_class(s) with
        |  {success} -> {success = "Success."}
        |  _         -> {failure = "{s.content}"}
      end
    end
    do Log.info("Response from Amazon S3", response)
    void
}}
