# Makefile for web_chat.exe

CAMLP4O=camlp4o.opt

.SUFFIXES: .cmo .cmx .cmi .ml

.ml.cmo:
		$(BYTECODE_RULE) $<

.ml.cmi:
		$(BYTECODE_RULE) $<

.ml.cmx:
		$(NATIVE_RULE) $<

NATIVE_RULE=/opt/mlstate/bin/ocamlopt.opt -c -g   -w a -I "/opt/mlstate/lib/opa/stdlib/stdlib.web.template.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.components.weather.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.apis.worldweather.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.web.client.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.server.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.resource.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.request.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.xmlm.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.context.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.client.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.xhtml.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.rpc.maxint.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.qos.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.mutable.buffer.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.loop.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.funaction.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.fresh.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.rpc.core.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.js.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.rpc.hlnet.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.security.ssl.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.core.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.db.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.compare.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.color.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.cache.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.date.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.set.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.args.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.parser.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.map.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.iter.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.opx/_build" -I "+zip" -I "+site-lib/zip" -I "+site-lib/camlzip" -I "+ssl" -I "+site-lib/ssl" -I "+cryptokit" -I "+site-lib/cryptokit" -I "+ulex" -I "+site-lib/ulex" -I "+dbm" -I "+site-lib/dbm" -I "/opt/mlstate/lib/opa/static" 

BYTECODE_RULE=ocamlc.opt -c -g   -w a -I "/opt/mlstate/lib/opa/stdlib/stdlib.web.template.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.components.weather.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.apis.worldweather.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.web.client.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.server.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.resource.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.request.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.xmlm.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.context.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.client.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.xhtml.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.rpc.maxint.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.qos.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.mutable.buffer.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.loop.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.funaction.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.fresh.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.rpc.core.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.js.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.rpc.hlnet.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.security.ssl.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.core.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.db.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.compare.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.color.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.cache.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.date.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.set.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.args.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.parser.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.map.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.iter.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.opx/_build" -I "+zip" -I "+site-lib/zip" -I "+site-lib/camlzip" -I "+ssl" -I "+site-lib/ssl" -I "+cryptokit" -I "+site-lib/cryptokit" -I "+ulex" -I "+site-lib/ulex" -I "+dbm" -I "+site-lib/dbm" -I "/opt/mlstate/lib/opa/static" 

NATIVE_LINKING=/opt/mlstate/bin/ocamlopt.opt -g  -w a -I "/opt/mlstate/lib/opa/stdlib/stdlib.web.template.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.components.weather.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.apis.worldweather.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.web.client.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.server.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.resource.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.request.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.xmlm.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.context.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.client.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.xhtml.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.rpc.maxint.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.qos.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.mutable.buffer.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.loop.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.funaction.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.fresh.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.rpc.core.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.js.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.rpc.hlnet.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.security.ssl.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.core.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.db.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.compare.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.color.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.cache.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.date.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.set.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.args.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.parser.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.map.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.iter.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.opx/_build" -I "+zip" -I "+site-lib/zip" -I "+site-lib/camlzip" -I "+ssl" -I "+site-lib/ssl" -I "+cryptokit" -I "+site-lib/cryptokit" -I "+ulex" -I "+site-lib/ulex" -I "+dbm" -I "+site-lib/dbm" -I "/opt/mlstate/lib/opa/static" str.cmxa unix.cmxa bigarray.cmxa ssl.cmxa dbm.cmxa zip.cmxa nums.cmxa ulexing.cmxa buildinfos.cmxa libbase.cmxa libtrx.cmxa libruntime.cmxa appruntime.cmxa libtools.cmxa libsecurity.cmxa libnet.cmxa libirc.cmxa database.cmxa oparuntime.cmxa libsession.cmxa qmlcpsserver.cmxa qmlflatserver.cmxa opabsl_for_server.cmxa cryptokit.cmxa opabsl_for_server.cmxa l.cmxa cstdlib_2ecore.cmxa  cstdlib_2ecore_2eiter.cmxa  cstdlib_2ecore_2emap.cmxa  cstdlib_2ecore_2eparser.cmxa  cstdlib_2ecore_2eargs.cmxa  cstdlib_2ecore_2eset.cmxa  cstdlib_2ecore_2edate.cmxa  cstdlib_2ecore_2ecache.cmxa  cstdlib_2ecore_2ecolor.cmxa  cstdlib_2ecore_2ecompare.cmxa  cstdlib_2ecore_2edb.cmxa  cstdlib_2ecore_2eweb_2ecore.cmxa  cstdlib_2ecore_2esecurity_2essl.cmxa  cstdlib_2ecore_2erpc_2ehlnet.cmxa  cstdlib_2ecore_2ejs.cmxa  cstdlib_2ecore_2erpc_2ecore.cmxa  cstdlib_2ecore_2efresh.cmxa  cstdlib_2ecore_2efunaction.cmxa  cstdlib_2ecore_2eloop.cmxa  cstdlib_2ecore_2emutable_2ebuffer.cmxa  cstdlib_2ecore_2eqos.cmxa  cstdlib_2ecore_2erpc_2emaxint.cmxa  cstdlib_2ecore_2exhtml.cmxa  cstdlib_2ecore_2eweb_2eclient.cmxa  cstdlib_2ecore_2eweb_2econtext.cmxa  cstdlib_2ecore_2exmlm.cmxa  cstdlib_2ecore_2eweb_2erequest.cmxa  cstdlib_2ecore_2eweb_2eresource.cmxa  cstdlib_2ecore_2eweb_2eserver.cmxa  cstdlib_2eweb_2eclient.cmxa  cstdlib_2eapis_2eworldweather.cmxa  cstdlib_2ecomponents_2eweather.cmxa  cstdlib_2eweb_2etemplate.cmxa  link.cmxa  runtimeMain.cmx -o 

BYTECODE_LINKING=ocamlc.opt -g  -w a -I "/opt/mlstate/lib/opa/stdlib/stdlib.web.template.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.components.weather.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.apis.worldweather.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.web.client.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.server.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.resource.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.request.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.xmlm.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.context.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.client.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.xhtml.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.rpc.maxint.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.qos.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.mutable.buffer.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.loop.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.funaction.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.fresh.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.rpc.core.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.js.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.rpc.hlnet.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.security.ssl.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.web.core.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.db.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.compare.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.color.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.cache.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.date.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.set.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.args.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.parser.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.map.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.iter.opx/_build" -I "/opt/mlstate/lib/opa/stdlib/stdlib.core.opx/_build" -I "+zip" -I "+site-lib/zip" -I "+site-lib/camlzip" -I "+ssl" -I "+site-lib/ssl" -I "+cryptokit" -I "+site-lib/cryptokit" -I "+ulex" -I "+site-lib/ulex" -I "+dbm" -I "+site-lib/dbm" -I "/opt/mlstate/lib/opa/static" str.cma unix.cma bigarray.cma ssl.cma dbm.cma zip.cma nums.cma ulexing.cma buildinfos.cma libbase.cma libtrx.cma libruntime.cma appruntime.cma libtools.cma libsecurity.cma libnet.cma libirc.cma database.cma oparuntime.cma libsession.cma qmlcpsserver.cma qmlflatserver.cma opabsl_for_server.cma cryptokit.cma opabsl_for_server.cma l.cma cstdlib_2ecore.cma  cstdlib_2ecore_2eiter.cma  cstdlib_2ecore_2emap.cma  cstdlib_2ecore_2eparser.cma  cstdlib_2ecore_2eargs.cma  cstdlib_2ecore_2eset.cma  cstdlib_2ecore_2edate.cma  cstdlib_2ecore_2ecache.cma  cstdlib_2ecore_2ecolor.cma  cstdlib_2ecore_2ecompare.cma  cstdlib_2ecore_2edb.cma  cstdlib_2ecore_2eweb_2ecore.cma  cstdlib_2ecore_2esecurity_2essl.cma  cstdlib_2ecore_2erpc_2ehlnet.cma  cstdlib_2ecore_2ejs.cma  cstdlib_2ecore_2erpc_2ecore.cma  cstdlib_2ecore_2efresh.cma  cstdlib_2ecore_2efunaction.cma  cstdlib_2ecore_2eloop.cma  cstdlib_2ecore_2emutable_2ebuffer.cma  cstdlib_2ecore_2eqos.cma  cstdlib_2ecore_2erpc_2emaxint.cma  cstdlib_2ecore_2exhtml.cma  cstdlib_2ecore_2eweb_2eclient.cma  cstdlib_2ecore_2eweb_2econtext.cma  cstdlib_2ecore_2exmlm.cma  cstdlib_2ecore_2eweb_2erequest.cma  cstdlib_2ecore_2eweb_2eresource.cma  cstdlib_2ecore_2eweb_2eserver.cma  cstdlib_2eweb_2eclient.cma  cstdlib_2eapis_2eworldweather.cma  cstdlib_2ecomponents_2eweather.cma  cstdlib_2eweb_2etemplate.cma  link.cma  runtimeMain.cmo -o 

OCAMLDEP=ocamldep 
all :

	$(MAKE) native
	$(MAKE) byte
	$(MAKE) exe
exe : web_chat.exe
tryall :
	$(MAKE) byte || $(MAKE) native || echo "compilation failed in native and in byte"
all_cmx : bsl_init.cmx  init_web_chat_001.cmx 
all_cmo : bsl_init.cmo  init_web_chat_001.cmo 
cmxa: all_cmx
	/opt/mlstate/bin/ocamlopt.opt -linkall -a bsl_init.cmx  init_web_chat_001.cmx  -o l.cmxa
cma: all_cmo
	ocamlc.opt -linkall -a bsl_init.cmo  init_web_chat_001.cmo  -o l.cma

# Default compilation
web_chat.exe : all_cmx
	$(NATIVE_LINKING) $@

# Native compilation
native : cmxa
	$(NATIVE_LINKING) web_chat.exe
web_chat.exe.native : cmxa
	$(NATIVE_LINKING) $@

# Bytecode compilation
byte : cma
	$(BYTECODE_LINKING) web_chat.exe
web_chat.exe.byte : cma
	$(BYTECODE_LINKING) $@

# COMPILATION RULES

-include .depends

camlp4 :
	$(CAMLP4O) bsl_init.ml -o bsl_init.ml
	$(CAMLP4O) init_web_chat_001.ml -o init_web_chat_001.ml

clean :
	rm -f *.cmx *.cmi *.cmo *.o

show_old_source :
	ls | grep -v -E "bsl_init.ml|init_web_chat_001.ml"

clean_old_source :
	ls | grep -v -E "Makefile|bsl_init.ml|init_web_chat_001.ml|*.qml|*.exe" | xargs rm -f
