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

let clos_args_1 = CR.args_apply1

let clos_args_2 closure a0 a1 =
match closure.CR.args with
    | [||] -> (Obj.magic closure.CR.func)  a0 a1
    | [|e0|] -> (Obj.magic closure.CR.func) e0 a0 a1
    | [|e0; e1|] -> (Obj.magic closure.CR.func) e0 e1 a0 a1
    | [|e0; e1; e2|] -> (Obj.magic closure.CR.func) e0 e1 e2 a0 a1
    | [|e0; e1; e2; e3|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 a0 a1
    | [|e0; e1; e2; e3; e4|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 a0 a1
    | [|e0; e1; e2; e3; e4; e5|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 e5 a0 a1
    | [|e0; e1; e2; e3; e4; e5; e6|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 e5 e6 a0 a1
    | [|e0; e1; e2; e3; e4; e5; e6; e7|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 e5 e6 e7 a0 a1
    | [|e0; e1; e2; e3; e4; e5; e6; e7; e8|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 e5 e6 e7 e8 a0 a1
    | _ -> CR.args_apply closure(Obj.magic (a0, a1) : Obj.t array)

let clos_args_3 closure a0 a1 a2 =
match closure.CR.args with
    | [||] -> (Obj.magic closure.CR.func)  a0 a1 a2
    | [|e0|] -> (Obj.magic closure.CR.func) e0 a0 a1 a2
    | [|e0; e1|] -> (Obj.magic closure.CR.func) e0 e1 a0 a1 a2
    | [|e0; e1; e2|] -> (Obj.magic closure.CR.func) e0 e1 e2 a0 a1 a2
    | [|e0; e1; e2; e3|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 a0 a1 a2
    | [|e0; e1; e2; e3; e4|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 a0 a1 a2
    | [|e0; e1; e2; e3; e4; e5|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 e5 a0 a1 a2
    | [|e0; e1; e2; e3; e4; e5; e6|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 e5 e6 a0 a1 a2
    | [|e0; e1; e2; e3; e4; e5; e6; e7|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 e5 e6 e7 a0 a1 a2
    | [|e0; e1; e2; e3; e4; e5; e6; e7; e8|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 e5 e6 e7 e8 a0 a1 a2
    | _ -> CR.args_apply closure(Obj.magic (a0, a1, a2) : Obj.t array)

let clos_args_4 closure a0 a1 a2 a3 =
match closure.CR.args with
    | [||] -> (Obj.magic closure.CR.func)  a0 a1 a2 a3
    | [|e0|] -> (Obj.magic closure.CR.func) e0 a0 a1 a2 a3
    | [|e0; e1|] -> (Obj.magic closure.CR.func) e0 e1 a0 a1 a2 a3
    | [|e0; e1; e2|] -> (Obj.magic closure.CR.func) e0 e1 e2 a0 a1 a2 a3
    | [|e0; e1; e2; e3|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 a0 a1 a2 a3
    | [|e0; e1; e2; e3; e4|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 a0 a1 a2 a3
    | [|e0; e1; e2; e3; e4; e5|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 e5 a0 a1 a2 a3
    | [|e0; e1; e2; e3; e4; e5; e6|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 e5 e6 a0 a1 a2 a3
    | [|e0; e1; e2; e3; e4; e5; e6; e7|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 e5 e6 e7 a0 a1 a2 a3
    | [|e0; e1; e2; e3; e4; e5; e6; e7; e8|] -> (Obj.magic closure.CR.func) e0 e1 e2 e3 e4 e5 e6 e7 e8 a0 a1 a2 a3
    | _ -> CR.args_apply closure(Obj.magic (a0, a1, a2, a3) : Obj.t array)

let clos_export_0 clos =
  fun () -> clos_args_0 clos
let clos_export_1 clos =
  fun a0 -> clos_args_1 clos a0
let clos_export_2 clos =
  fun a0 a1 -> clos_args_2 clos a0 a1
let clos_export_3 clos =
  fun a0 a1 a2 -> clos_args_3 clos a0 a1 a2
let clos_export_4 clos =
  fun a0 a1 a2 a3 -> clos_args_4 clos a0 a1 a2 a3
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
let clos_env_5 f x0 x1 x2 x3 x4 =
 CR.env_apply f (Obj.magic (x0, x1, x2, x3, x4) : Obj.t array)
let clos_env_6 f x0 x1 x2 x3 x4 x5 =
 CR.env_apply f (Obj.magic (x0, x1, x2, x3, x4, x5) : Obj.t array)

(** {6 Converters} *)

let bslp12 ( x0 (* : external[badoplink_transaction] *) ) ( x1 (* : external[badoplink_path] *) ) ( x2 (* : external[badoplink_transaction], external[badoplink_path], external[continuation('v0)] -> opa[void] *) ) ( x3 (* : opa['v0], external[badoplink_db_path_key], opa['v1], external[continuation('v0)] -> opa[void] *) ) ( x4 (* : 'v0 *) ) ( x5 (* : external[continuation('v0)] *) )  =
  let p2 = let _v0_f = CR.export (x2) in let f' _v0_y _v1_y _v2_y =
  let r = _v0_f _v0_y _v1_y _v2_y in
  Pervasives.ignore r in
f' in
  let p3 = let _v1_f = CR.export (x3) in let f' _v3_y _v4_y _v5_y _v6_y =
  let r = _v1_f ( _v3_y (* : alpha *) ) _v4_y ( _v5_y (* : alpha *) ) _v6_y in
  Pervasives.ignore r in
f' in
  let r = OpabslgenMLRuntime.Badoplink.fold_children x0 x1 p2 p3 ( x4 (* : alpha *) ) x5 in
  r

let bslp25 ( x0 : string ) ( x1 : string )  =
  let r = OpabslgenMLRuntime.BslAppSrcCode.register_src_code x0 x1 in
  let r2 = QmlFlatServerLib.empty in
  r2

let bslp26 ( x0 (* : 'v0 *) ) ( x1 : int ) ( x2 : string ) ( x3 : QmlFlatServerLib.record )  =
  let p3 = QmlFlatServerLib.unwrap_bool x3 in
  let r = OpabslgenMLRuntime.BslClosure.create_and_register ( x0 (* : alpha *) ) x1 x2 p3 in
  r

let bslp27 ( x0 : int ) ( x1 : string ) ( x2 : QmlFlatServerLib.record )  =
  let p2 = QmlFlatServerLib.unwrap_bool x2 in
  let r = OpabslgenMLRuntime.BslClosure.create_no_function_and_register x0 x1 p2 in
  r

let bslp28 ( x0 (* : external[Closure.t] *) ) ( x1 (* : 'v0 *) )  =
  let r = QmlClosureRuntime.define_function x0 ( x1 (* : alpha *) ) in
  let r2 = QmlFlatServerLib.empty in
  r2

let bslp33 ( x0 : string ) ( x1 (* : 'v0 *) )  =
  let r = OpabslgenMLRuntime.BslValue.Tsc.add x0 ( x1 (* : alpha *) ) in
  let r2 = QmlFlatServerLib.empty in
  r2

let bslp37 ( x0 (* : external[badoplink_database] *) ) ( x1 (* : external[badoplink_path] *) ) ( x2 (* : external[badoplink_transaction], external[continuation('v0)] -> opa[void] *) ) ( x3 (* : external[badoplink_transaction], opa['v0], external[continuation(external[badoplink_transaction])] -> opa[void] *) ) ( x4 (* : external[continuation(external[path_t(external[path_ref_p], 'v0)])] *) )  =
  let p2 = let _v2_f = CR.export (x2) in let f' _v7_y _v8_y =
  let r = _v2_f _v7_y _v8_y in
  Pervasives.ignore r in
f' in
  let p3 = let _v3_f = CR.export (x3) in let f' _v9_y _v10_y _v11_y =
  let r = _v3_f _v9_y ( _v10_y (* : alpha *) ) _v11_y in
  Pervasives.ignore r in
f' in
  let r = OpabslgenMLRuntime.Path.get_ref_path x0 x1 p2 p3 x4 in
  r

