(* Translation of bsl in the flat compiler runtime algebra*)
module CR = QmlClosureRuntime
(** {6 cps tools} *)
let return_exc = OpabslgenMLRuntime.BslPervasives.return_exc
let uncps = OpabslgenMLRuntime.BslCps.uncps_ml
let uncps0 s k f = (); fun () -> uncps s k f
let cps f k = QmlCpsServerLib.return k f
let cps0 f k = QmlCpsServerLib.return k (f ())

(** {6 closure tools} *)
type 'a tuple1 = { tuple1 : 'a }
let clos_args_0 closure  =
match closure.CR.args with
    | [||] -> (Obj.magic closure.CR.func) ()
    | [|e0|] -> (Obj.magic closure.CR.func) e0
    | [|e0; e1|] -> (Obj.magic closure.CR.func) e0 e1
    | [|e0; e1; e2|] -> (Obj.magic closure.CR.func) e0 e1 e2
    | [|e0; e1; e2; e3|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3
    | [|e0; e1; e2; e3; e4|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4
    | [|e0; e1; e2; e3; e4; e5|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 e5
    | [|e0; e1; e2; e3; e4; e5; e6|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 e5 e6
    | [|e0; e1; e2; e3; e4; e5; e6; e7|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 e5 e6 e7
    | [|e0; e1; e2; e3; e4; e5; e6; e7; e8|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 e5 e6 e7 e8
    | _ -> CR.args_apply closure[||]

let clos_export_0 clos =
  fun () -> clos_args_0 clos
let clos_env_0 f  =
 CR.env_apply f [||]
let clos_env_1 f x0 =
 CR.env_apply f (Obj.magic {tuple1 = x0} : Obj.t array)
let clos_env_2 f x0 x1 =
 CR.env_apply f (Obj.magic (x0, x1) : Obj.t array)
let clos_env_3 f x0 x1 x2 =
 CR.env_apply f (Obj.magic (x0, x1, x2) : Obj.t array)
let clos_env_4 f x0 x1 x2 x3 =
 CR.env_apply f (Obj.magic (x0, x1, x2, x3) : Obj.t array)

(** {6 Converters} *)

let bslp38 ()  =
  let r = OpabslgenMLRuntime.Badop_engine.check_remaining_arguments () in
  let r2 = QmlFlatServerLib.empty in
  r2

let bslp39 ( x0 : QmlFlatServerLib.record ) ( x1 : QmlFlatServerLib.record )  =
  let p0 = QmlFlatServerLib.unwrap_option x0 in
  let p1 = QmlFlatServerLib.unwrap_option x1 in
  let r = OpabslgenMLRuntime.Badop_engine.local_options p0 p1 in
  r

let bslp51 ( x0 : string )  =
  let r = OpabslgenMLRuntime.Badoplink.jlog x0 in
  let r2 = QmlFlatServerLib.empty in
  r2

let bslp56 ( x0 : string ) ( x1 (* : 'v0 *) )  =
  let r = OpabslgenMLRuntime.Badoplink.register_db_ident x0 ( x1 (* : alpha *) ) in
  let r2 = QmlFlatServerLib.empty in
  r2

let bslp57 ( x0 : string ) ( x1 : string ) ( x2 : int ) ( x3 : int )  =
  let r = OpabslgenMLRuntime.Badoplink.register_root_edge x0 x1 x2 x3 in
  let r2 = QmlFlatServerLib.empty in
  r2

let bslp62 ( x0 (* : 'v0 *) ) ( x1 : int ) ( x2 : string ) ( x3 : QmlFlatServerLib.record )  =
  let p3 = QmlFlatServerLib.unwrap_bool x3 in
  let r = OpabslgenMLRuntime.BslClosure.create_and_register ( x0 (* : alpha *) ) x1 x2 p3 in
  r

let bslp65 ( x0 : string )  =
  let r = OpabslgenMLRuntime.BslInit.set_executable_id x0 in
  let r2 = QmlFlatServerLib.empty in
  r2

let bslp66 ( x0 : QmlFlatServerLib.record )  =
  let p0 = QmlFlatServerLib.unwrap_bool x0 in
  let r = OpabslgenMLRuntime.BslJsIdent.set_cleaning_default_value p0 in
  let r2 = QmlFlatServerLib.empty in
  r2

