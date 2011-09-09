let _v3_clos_anon_fun_skeleton_fun_action_body = ((Obj.magic) ((Bsl_init_.bslp26 (Link_web_chat_003._v0_anon_fun_skeleton_fun_action_body) (2) (Link_web_chat_002._v327_const) (Link_web_chat_001._v2_const))))
let _v1_skeleton_fun_action_body _v2_str _v1144_cont = let _v1155_cont = (QmlCpsServerLib.ccont (_v1144_cont) ((Bsl_init_.clos_env_1 (_v3_clos_anon_fun_skeleton_fun_action_body) (_v1144_cont)))) in
(Opa_stdlib_2ecore_2erpc_2ecore_019._v1_OpaRPC_unserialize_f2f00d5f (_v2_str) (_v1155_cont))
let _v0_clos_skeleton_fun_action_body = ((Obj.magic) ((Bsl_init_.bslp26 (_v1_skeleton_fun_action_body) (2) (Link_web_chat_002._v328_const) (Link_web_chat_001._v2_const))))
let _v1_register_fun_action_body = ((Obj.magic) (let _v294_arg = Link_web_chat_002._v329_const in
(Opa_stdlib_2ecore_2erpc_2ecore_017._v0_register_skip_f2f00d5f (_v294_arg) (_v0_clos_skeleton_fun_action_body))))
let _v7_anon_fun_skeleton_fun_action_body _v152_extra_cont _v966_val = let _v968_val = ((QmlFlatServerLib.may_be_simple) ([| (((Obj.repr) (( (* ["some"] *) Link_web_chat_001._v18_shared_vtable)))) ; (((Obj.repr) (None))) ; (((Obj.repr) (_v966_val))) |])) in
(QmlCpsServerLib.return (_v152_extra_cont) (_v968_val))
let _v4_clos_anon_fun_skeleton_fun_action_body = ((Obj.magic) ((Bsl_init_.bslp26 (_v7_anon_fun_skeleton_fun_action_body) (2) (Link_web_chat_002._v330_const) (Link_web_chat_001._v2_const))))
let _v6_anon_fun_skeleton_fun_action_body _v4_extra_tres _v153_extra_cont _v971_val = (match ((QmlFlatServerLib.unwrap_record) (_v971_val)) with
[| _v23_vt ; _ ; lazy _v20_some |] when (((&&)) ((((==)) (((Obj.magic) (_v23_vt))) (( (* ["some"] *) Link_web_chat_001._v18_shared_vtable)))) ((((&&)) ((((==)) (((QmlFlatServerLib.get_vtable) (((Obj.magic) (_v20_some))))) (( (* ["hd" ; "tl"] *) Link_web_chat_001._v3_shared_vtable)))) (let _v26_tl = (QmlFlatServerLib.unsafe_get (1) (((Obj.magic) (_v20_some)))) in
(((&&)) ((((==)) (((QmlFlatServerLib.get_vtable) (((Obj.magic) (_v26_tl))))) (( (* ["hd" ; "tl"] *) Link_web_chat_001._v3_shared_vtable)))) (let _v27_tl = (QmlFlatServerLib.unsafe_get (1) (((Obj.magic) (_v26_tl)))) in
(((==)) (((Obj.magic) (_v27_tl))) (Link_web_chat_001._v0_simple_nil)))))))) -> let _v2_a1 = (QmlFlatServerLib.unsafe_get (0) (((Obj.magic) (_v20_some)))) in
let _v28_tl = (QmlFlatServerLib.unsafe_get (1) (((Obj.magic) (_v20_some)))) in
let _v0_a2 = (QmlFlatServerLib.unsafe_get (0) (((Obj.magic) (_v28_tl)))) in
let _v1159_cont = (QmlCpsServerLib.ccont (_v153_extra_cont) ((Bsl_init_.clos_env_1 (_v4_clos_anon_fun_skeleton_fun_action_body) (_v153_extra_cont)))) in
let _v967_val = (Link_web_chat_003._v0_fun_action_body_skip (_v2_a1) (_v0_a2)) in
(Opa_stdlib_2ecore_2erpc_2ecore_019._v1_OpaSerialize_serialize_f2f00d5f (_v4_extra_tres) (_v967_val) (_v1159_cont))
| _ -> let _v970_val = Link_web_chat_001._v81_const in
(QmlCpsServerLib.return (_v153_extra_cont) (_v970_val)))
let _v5_clos_anon_fun_skeleton_fun_action_body = ((Obj.magic) ((Bsl_init_.bslp26 (_v6_anon_fun_skeleton_fun_action_body) (3) (Link_web_chat_002._v331_const) (Link_web_chat_001._v2_const))))
let _v5_anon_fun_skeleton_fun_action_body _v1_extra_request _v154_extra_cont _v974_val = (match ((QmlFlatServerLib.unwrap_record) (_v974_val)) with
[| _v24_vt ; _ ; lazy _v9_TyArrow_params ; lazy _v4_TyArrow_res |] when (((==)) (((Obj.magic) (_v24_vt))) (( (* ["TyArrow_params" ; "TyArrow_res"] *) Link_web_chat_001._v8_shared_vtable))) -> let _v0_ts = ((Obj.magic) (_v9_TyArrow_params)) in
let _v5_tres = ((Obj.magic) (_v4_TyArrow_res)) in
let _v1162_cont = (QmlCpsServerLib.ccont (_v154_extra_cont) ((Bsl_init_.clos_env_2 (_v5_clos_anon_fun_skeleton_fun_action_body) (_v5_tres) (_v154_extra_cont)))) in
(Opa_stdlib_2ecore_2erpc_2ecore_019._v1_OpaRPC_extract_values_f2f00d5f (_v1_extra_request) (_v0_ts) (_v1162_cont))
| _ -> let _v973_val = Link_web_chat_001._v81_const in
(QmlCpsServerLib.return (_v154_extra_cont) (_v973_val)))
let _v6_clos_anon_fun_skeleton_fun_action_body = ((Obj.magic) ((Bsl_init_.bslp26 (_v5_anon_fun_skeleton_fun_action_body) (3) (Link_web_chat_002._v332_const) (Link_web_chat_001._v2_const))))
let _v4_anon_fun_skeleton_fun_action_body _v155_extra_cont _v981_val = (match ((QmlFlatServerLib.unwrap_record) (_v981_val)) with
[| _v26_vt ; _ ; lazy _v21_some |] when (((==)) (((Obj.magic) (_v26_vt))) (( (* ["some"] *) Link_web_chat_001._v18_shared_vtable))) -> let _v1_request = ((Obj.magic) (_v21_some)) in
let _v978_val = ((Opa_stdlib_2ecore_2erpc_2ecore_017._v0_extract_types_skip_f2f00d5f) (_v1_request)) in
(match ((QmlFlatServerLib.unwrap_record) (_v978_val)) with
[| _v25_vt ; _ ; lazy _v4_cols ; lazy _v4_rows ; lazy _v4_types |] when (((&&)) ((((&&)) ((((&&)) ((((==)) (((Obj.magic) (_v25_vt))) (( (* ["cols" ; "rows" ; "types"] *) Link_web_chat_001._v7_shared_vtable)))) ((((==)) (((Obj.magic) (_v4_cols))) (Link_web_chat_001._v0_simple_nil))))) ((((==)) (((Obj.magic) (_v4_rows))) (Link_web_chat_001._v0_simple_nil))))) ((((==)) (((Obj.magic) (_v4_types))) (Link_web_chat_001._v0_simple_nil)))) -> let _v1164_cont = (QmlCpsServerLib.ccont (_v155_extra_cont) ((Bsl_init_.clos_env_2 (_v6_clos_anon_fun_skeleton_fun_action_body) (_v1_request) (_v155_extra_cont)))) in
(Opa_stdlib_2ecore_2erpc_2ecore_012._v1_OpaTsc_implementation_f2f00d5f (_v978_val) (Link_web_chat_002._v22_memo_ty) (_v1164_cont))
| _ -> let _v976_val = Link_web_chat_001._v81_const in
(QmlCpsServerLib.return (_v155_extra_cont) (_v976_val)))
| _v13_none when (((==)) (((Obj.magic) (_v13_none))) (Link_web_chat_001._v0_simple_none)) -> let _v980_val = Link_web_chat_001._v81_const in
(QmlCpsServerLib.return (_v155_extra_cont) (_v980_val)))
let _v7_clos_anon_fun_skeleton_fun_action_body = ((Obj.magic) ((Bsl_init_.bslp26 (_v4_anon_fun_skeleton_fun_action_body) (2) (Link_web_chat_002._v333_const) (Link_web_chat_001._v2_const))))
let _v0_skeleton_fun_action_body _v1_str _v1157_cont = let _v1168_cont = (QmlCpsServerLib.ccont (_v1157_cont) ((Bsl_init_.clos_env_1 (_v7_clos_anon_fun_skeleton_fun_action_body) (_v1157_cont)))) in
(Opa_stdlib_2ecore_2erpc_2ecore_019._v1_OpaRPC_unserialize_f2f00d5f (_v1_str) (_v1168_cont))
let _v1_clos_skeleton_fun_action_body = ((Obj.magic) ((Bsl_init_.bslp26 (_v0_skeleton_fun_action_body) (2) (Link_web_chat_002._v334_const) (Link_web_chat_001._v2_const))))
let _v0_register_fun_action_body = ((Obj.magic) (let _v296_arg = Link_web_chat_002._v335_const in
(Opa_stdlib_2ecore_2erpc_2ecore_017._v0_register_skip_f2f00d5f (_v296_arg) (_v1_clos_skeleton_fun_action_body))))
let _v3_anon_fun_skeleton_room _v156_extra_cont _v982_val = let _v983_val = ((QmlFlatServerLib.may_be_simple) ([| (((Obj.repr) (( (* ["some"] *) Link_web_chat_001._v18_shared_vtable)))) ; (((Obj.repr) (None))) ; (((Obj.repr) (_v982_val))) |])) in
(QmlCpsServerLib.return (_v156_extra_cont) (_v983_val))
let _v0_clos_anon_fun_skeleton_room = ((Obj.magic) ((Bsl_init_.bslp26 (_v3_anon_fun_skeleton_room) (2) (Link_web_chat_002._v336_const) (Link_web_chat_001._v2_const))))
let _v2_anon_fun_skeleton_room _v5_extra_tres _v157_extra_cont _v988_val = (match ((QmlFlatServerLib.unwrap_record) (_v988_val)) with
[| _v27_vt ; _ ; lazy _v22_some |] when (((&&)) ((((==)) (((Obj.magic) (_v27_vt))) (( (* ["some"] *) Link_web_chat_001._v18_shared_vtable)))) ((((==)) (((Obj.magic) (_v22_some))) (Link_web_chat_001._v0_simple_nil)))) -> let _v1172_cont = (QmlCpsServerLib.ccont (_v157_extra_cont) ((Bsl_init_.clos_env_1 (_v0_clos_anon_fun_skeleton_room) (_v157_extra_cont)))) in
(Opa_stdlib_2ecore_2erpc_2ecore_019._v1_OpaSerialize_serialize_f2f00d5f (_v5_extra_tres) (Link_web_chat_003._v2_room) (_v1172_cont))
| _ -> let _v987_val = Link_web_chat_001._v81_const in
(QmlCpsServerLib.return (_v157_extra_cont) (_v987_val)))
let _v1_clos_anon_fun_skeleton_room = ((Obj.magic) ((Bsl_init_.bslp26 (_v2_anon_fun_skeleton_room) (3) (Link_web_chat_002._v337_const) (Link_web_chat_001._v2_const))))
let _v1_anon_fun_skeleton_room _v2_extra_request _v158_extra_cont _v991_val = (match _v991_val with
_v3_tres -> let _v1174_cont = (QmlCpsServerLib.ccont (_v158_extra_cont) ((Bsl_init_.clos_env_2 (_v1_clos_anon_fun_skeleton_room) (_v3_tres) (_v158_extra_cont)))) in
let _v986_val = Link_web_chat_001._v13_const in
(Opa_stdlib_2ecore_2erpc_2ecore_019._v1_OpaRPC_extract_values_f2f00d5f (_v2_extra_request) (_v986_val) (_v1174_cont))
| _ -> let _v990_val = Link_web_chat_001._v81_const in
(QmlCpsServerLib.return (_v158_extra_cont) (_v990_val)))
let _v2_clos_anon_fun_skeleton_room = ((Obj.magic) ((Bsl_init_.bslp26 (_v1_anon_fun_skeleton_room) (3) (Link_web_chat_002._v338_const) (Link_web_chat_001._v2_const))))
let _v0_anon_fun_skeleton_room _v159_extra_cont _v998_val = (match ((QmlFlatServerLib.unwrap_record) (_v998_val)) with
[| _v29_vt ; _ ; lazy _v23_some |] when (((==)) (((Obj.magic) (_v29_vt))) (( (* ["some"] *) Link_web_chat_001._v18_shared_vtable))) -> let _v0_request = ((Obj.magic) (_v23_some)) in
let _v995_val = ((Opa_stdlib_2ecore_2erpc_2ecore_017._v0_extract_types_skip_f2f00d5f) (_v0_request)) in
(match ((QmlFlatServerLib.unwrap_record) (_v995_val)) with
[| _v28_vt ; _ ; lazy _v5_cols ; lazy _v5_rows ; lazy _v5_types |] when (((&&)) ((((&&)) ((((&&)) ((((==)) (((Obj.magic) (_v28_vt))) (( (* ["cols" ; "rows" ; "types"] *) Link_web_chat_001._v7_shared_vtable)))) ((((==)) (((Obj.magic) (_v5_cols))) (Link_web_chat_001._v0_simple_nil))))) ((((==)) (((Obj.magic) (_v5_rows))) (Link_web_chat_001._v0_simple_nil))))) ((((==)) (((Obj.magic) (_v5_types))) (Link_web_chat_001._v0_simple_nil)))) -> let _v1178_cont = (QmlCpsServerLib.ccont (_v159_extra_cont) ((Bsl_init_.clos_env_2 (_v2_clos_anon_fun_skeleton_room) (_v0_request) (_v159_extra_cont)))) in
(Opa_stdlib_2ecore_2erpc_2ecore_012._v1_OpaTsc_implementation_f2f00d5f (_v995_val) (Link_web_chat_002._v19_memo_ty) (_v1178_cont))
| _ -> let _v993_val = Link_web_chat_001._v81_const in
(QmlCpsServerLib.return (_v159_extra_cont) (_v993_val)))
| _v14_none when (((==)) (((Obj.magic) (_v14_none))) (Link_web_chat_001._v0_simple_none)) -> let _v997_val = Link_web_chat_001._v81_const in
(QmlCpsServerLib.return (_v159_extra_cont) (_v997_val)))
let _v3_clos_anon_fun_skeleton_room = ((Obj.magic) ((Bsl_init_.bslp26 (_v0_anon_fun_skeleton_room) (2) (Link_web_chat_002._v339_const) (Link_web_chat_001._v2_const))))
let _v0_skeleton_room _v0_str _v1170_cont = let _v1182_cont = (QmlCpsServerLib.ccont (_v1170_cont) ((Bsl_init_.clos_env_1 (_v3_clos_anon_fun_skeleton_room) (_v1170_cont)))) in
(Opa_stdlib_2ecore_2erpc_2ecore_019._v1_OpaRPC_unserialize_f2f00d5f (_v0_str) (_v1182_cont))
let _v0_clos_skeleton_room = ((Obj.magic) ((Bsl_init_.bslp26 (_v0_skeleton_room) (2) (Link_web_chat_002._v340_const) (Link_web_chat_001._v2_const))))
let _v0_register_room = ((Obj.magic) (let _v298_arg = Link_web_chat_002._v341_const in
(Opa_stdlib_2ecore_2erpc_2ecore_017._v0_register_skip_f2f00d5f (_v298_arg) (_v0_clos_skeleton_room))))
let _v0_anon_fun_run_services _v0_extra_run_services_barrier _v999_val = (QmlCpsServerLib.black_release_barrier (_v0_extra_run_services_barrier) (_v999_val))
let _v0_clos_anon_fun_run_services = ((Obj.magic) ((Bsl_init_.bslp26 (_v0_anon_fun_run_services) (2) (Link_web_chat_002._v342_const) (Link_web_chat_001._v2_const))))
let _v1_run_services = ((Obj.magic) (let _v7_before = ((QmlCpsServerLib.before_wait) (Link_web_chat_001._v1_const)) in
let _v0_run_services_barrier = ((QmlCpsServerLib.black_make_barrier) (Link_web_chat_002._v343_const)) in
let _v7_barrier_unit = let _v1184_cont = ((QmlCpsServerLib.cont) ((Bsl_init_.clos_env_1 (_v0_clos_anon_fun_run_services) (_v0_run_services_barrier)))) in
((Opa_stdlib_2ecore_2eweb_2eserver_010._v1_Server_private_run_services_b970f080) (_v1184_cont)) in
((OpabslgenMLRuntime.BslCps.black_toplevel_wait) (_v0_run_services_barrier))))
