let _v1_label_none = ((QmlFlatServerLib.Field.register) ("none"))
let _v0_label_trans = ((QmlFlatServerLib.Field.register) ("trans"))
let _v1_label_diff = ((QmlFlatServerLib.Field.register) ("diff"))
let _v0_label_f1 = ((QmlFlatServerLib.Field.register) ("f1"))
let _v0_label_f2 = ((QmlFlatServerLib.Field.register) ("f2"))
let _v1_label_some = ((QmlFlatServerLib.Field.register) ("some"))
let _v1_label_database = ((QmlFlatServerLib.Field.register) ("database"))
let _v32_shared_vtable = ((QmlFlatServerLib.VTable.register) ([| ("true") |]))
let _v33_shared_vtable = ((QmlFlatServerLib.VTable.register) ([| ("none") |]))
let _v34_shared_vtable = ((QmlFlatServerLib.VTable.register) ([| ("false") |]))
let _v35_shared_vtable = ((QmlFlatServerLib.VTable.register) ([| ("f1") ; ("f2") |]))
let _v36_shared_vtable = ((QmlFlatServerLib.VTable.register) ([| ("some") |]))
let _v37_shared_vtable = ((QmlFlatServerLib.VTable.register) ([| ("diff") ; ("trans") |]))
let _v38_shared_vtable = ((QmlFlatServerLib.VTable.register) ([| ("database") ; ("diff") |]))
let _v1_simple_none = ((QmlFlatServerLib.Simple.register) ("none"))
let _v2_access_cache = ((QmlFlatServerLib.FieldAccess.make_cache) (()))
let _v3_access_cache = ((QmlFlatServerLib.FieldAccess.make_cache) (()))
let _v344_const = QmlFlatServerLib.empty
let _v345_const = ((Obj.magic) (((QmlFlatServerLib.may_be_simple) ([| (((Obj.repr) (( (* ["true"] *) _v32_shared_vtable)))) ; (((Obj.repr) (None))) ; (((Obj.repr) (_v344_const))) |]))))
let _v346_const = ((Obj.magic) ("axmxxpeumgffedtdmmbnjioqzvxhmgob"))
let _v347_const = ((Obj.magic) (((QmlFlatServerLib.may_be_simple) ([| (((Obj.repr) (( (* ["none"] *) _v33_shared_vtable)))) ; (((Obj.repr) (None))) ; (((Obj.repr) (_v344_const))) |]))))
let _v348_const = ((Obj.magic) ("__v7_anon_fun__"))
let _v349_const = ((Obj.magic) (((QmlFlatServerLib.may_be_simple) ([| (((Obj.repr) (( (* ["false"] *) _v34_shared_vtable)))) ; (((Obj.repr) (None))) ; (((Obj.repr) (_v344_const))) |]))))
let _v350_const = ((Obj.magic) ("__v28_anon_fun__"))
let _v351_const = ((Obj.magic) ("__v9_anon_fun__"))
let _v352_const = ((Obj.magic) ("__v10_anon_fun__"))
let _v353_const = ((Obj.magic) ("__v11_anon_fun__"))
let _v354_const = ((Obj.magic) ("graph [\n  node [\n    id 1\n    nodeid \"1\"\n    nlabel \"Multi\"\n  ]\n  node [\n    id 2\n    nodeid \"10\"\n    nlabel \"Product\"\n    ty \"7b7d\"\n  ]\n  node [\n    id 3\n    nodeid \"11\"\n    nlabel \"Product\"\n  ]\n  node [\n    id 4\n    nodeid \"12\"\n    nlabel \"Product\"\n    ty \"7b7d\"\n  ]\n  node [\n    id 5\n    nodeid \"13\"\n    nlabel [\n      Leaf \"text\"\n    ]\n    ty \"737472696e67\"\n  ]\n  node [\n    id 6\n    nodeid \"14\"\n    nlabel [\n      Leaf \"text\"\n    ]\n    ty \"737472696e67\"\n  ]\n  node [\n    id 7\n    nodeid \"15\"\n    nlabel [\n      Leaf \"text\"\n    ]\n    ty \"737472696e67\"\n  ]\n  node [\n    id 8\n    nodeid \"2\"\n    nlabel \"Hidden\"\n  ]\n  node [\n    id 9\n    nodeid \"3\"\n    nlabel \"Sum\"\n    ty \"6c697374286d65737361676529\"\n  ]\n  node [\n    id 10\n    nodeid \"4\"\n    nlabel \"Product\"\n  ]\n  node [\n    id 11\n    nodeid \"5\"\n    nlabel \"Product\"\n    ty \"7b7d\"\n  ]\n  node [\n    id 12\n    nodeid \"6\"\n    nlabel \"Product\"\n  ]\n  node [\n    id 13\n    nodeid \"7\"\n    nlabel \"Product\"\n  ]\n  node [\n    id 14\n    nodeid \"8\"\n    nlabel \"Sum\"\n  ]\n  node [\n    id 15\n    nodeid \"9\"\n    nlabel \"Product\"\n  ]\n  node [\n    id 16\n    nodeid \"root\"\n    nlabel \"Product\"\n  ]\n  edge [\n    source 1\n    target 8\n    elabel [\n      Multiedge \"Kstring\"\n    ]\n    ismain 1\n  ]\n  edge [\n    source 3\n    target 4\n    elabel [\n      Field [\n        field \"false\"\n        index 0\n      ]\n    ]\n    ismain 1\n  ]\n  edge [\n    source 8\n    target 9\n    elabel \"Hiddenedge\"\n    ismain 1\n  ]\n  edge [\n    source 9\n    target 10\n    elabel [\n      SumCase 1\n    ]\n    ismain 1\n  ]\n  edge [\n    source 9\n    target 12\n    elabel [\n      SumCase 0\n    ]\n    ismain 1\n  ]\n  edge [\n    source 10\n    target 11\n    elabel [\n      Field [\n        field \"nil\"\n        index 0\n      ]\n    ]\n    ismain 1\n  ]\n  edge [\n    source 12\n    target 9\n    elabel [\n      Field [\n        field \"tl\"\n        index 1\n      ]\n    ]\n    ismain 0\n  ]\n  edge [\n    source 12\n    target 13\n    elabel [\n      Field [\n        field \"hd\"\n        index 0\n      ]\n    ]\n    ismain 1\n  ]\n  edge [\n    source 13\n    target 5\n    elabel [\n      Field [\n        field \"time\"\n        index 2\n      ]\n    ]\n    ismain 1\n  ]\n  edge [\n    source 13\n    target 6\n    elabel [\n      Field [\n        field \"text\"\n        index 1\n      ]\n    ]\n    ismain 1\n  ]\n  edge [\n    source 13\n    target 7\n    elabel [\n      Field [\n        field \"author\"\n        index 0\n      ]\n    ]\n    ismain 1\n  ]\n  edge [\n    source 13\n    target 14\n    elabel [\n      Field [\n        field \"welcome\"\n        index 3\n      ]\n    ]\n    ismain 1\n  ]\n  edge [\n    source 14\n    target 3\n    elabel [\n      SumCase 0\n    ]\n    ismain 1\n  ]\n  edge [\n    source 14\n    target 15\n    elabel [\n      SumCase 1\n    ]\n    ismain 1\n  ]\n  edge [\n    source 15\n    target 2\n    elabel [\n      Field [\n        field \"true\"\n        index 0\n      ]\n    ]\n    ismain 1\n  ]\n  edge [\n    source 16\n    target 1\n    elabel [\n      Field [\n        field \"history\"\n        index 0\n      ]\n    ]\n    ismain 1\n  ]\n]\n"))
let _v355_const = ((Obj.magic) ("__v8_anon_fun__"))
let _v356_const = ((Obj.magic) ("__v29_anon_fun__"))
let _v357_const = ((Obj.magic) ("__v30_anon_fun__"))
let _v358_const = ((Obj.magic) ("__v12_anon_fun__"))
let _v359_const = ((Obj.magic) ("db_init___inaccessible_db_ident"))
let _v360_const = ((Obj.magic) ("__v0_anon_fun__"))
let _v361_const = ((Obj.magic) ("__v5_anon_fun__"))
let _v362_const = ((Obj.magic) ("__v4_anon_fun__"))
let _v363_const = ((Obj.magic) ("__v3_anon_fun__"))
let _v364_const = ((Obj.magic) ("__v13_anon_fun__"))
let _v365_const = ((Obj.magic) ("The database was created with a different application, and cannot be migrated.\nAutomatic update supports add, remove and rename, extension and reduction of sum types.\nTo continue, remove your database files (\""))
let _v366_const = ((Obj.magic) ("__v16_anon_fun__"))
let _v367_const = ((Obj.magic) ("__v17_anon_fun__"))
let _v368_const = ((Obj.magic) ("__v18_anon_fun__"))
let _v369_const = ((Obj.magic) ("__v19_anon_fun__"))
let _v370_const = ((Obj.magic) ("__v20_anon_fun__"))
let _v371_const = ((Obj.magic) ("*\"). Or contact us for more options."))
let _v372_const = ((Obj.magic) ("The structure of this database doesn't match the current program.\nIt differs by "))
let _v373_const = ((Obj.magic) ("Automatic update is possible. If you agree with the above database migration\ninformation, re-run with the option --db-force-upgrade."))
let _v374_const = ((Obj.magic) (""))
let _v375_const = ((Obj.magic) ("Not doing database upgrade, giving up now."))
let _v376_const = ((Obj.magic) ("Automatic update done. Saving..."))
let _v377_const = ((Obj.magic) ("__v15_anon_fun__"))
let _v378_const = ((Obj.magic) ("Impossible to read structure data from the database"))
let _v379_const = ((Obj.magic) ("__v21_anon_fun__"))
let _v380_const = ((Obj.magic) ("__v22_anon_fun__"))
let _v381_const = ((Obj.magic) ("__v23_anon_fun__"))
let _v382_const = ((Obj.magic) ("__v24_anon_fun__"))
let _v383_const = ((Obj.magic) ("__v14_anon_fun__"))
let _v384_const = ((Obj.magic) ("This database was created using an older version of the OPA compiler.\nYou can clear it by removing \""))
let _v385_const = ((Obj.magic) ("__v26_anon_fun__"))
let _v386_const = ((Obj.magic) ("Can't recognise the meta-data in this database. You can clear it by removing \""))
let _v387_const = ((Obj.magic) ("__v27_anon_fun__"))
let _v388_const = ((Obj.magic) ("*\".\nUpdate will be available in an upcoming version."))
let _v389_const = ((Obj.magic) ("*\"."))
let _v390_const = ((Obj.magic) ("__v25_anon_fun__"))
let _v391_const = ((Obj.magic) ("__v6_anon_fun__"))
let _v392_const = ((Obj.magic) ("__v2_anon_fun__"))
let _v393_const = ((Obj.magic) ("__v1_anon_fun__"))
let _v394_const = ((Obj.magic) ("_v0___barrier"))
let _v395_const = ((Obj.magic) ("_v1___barrier"))
let _v396_const = ((Obj.magic) ("_inaccessible_db_ident"))
let _v1___dummy = ((Obj.magic) (let _v299_arg = _v345_const in
((Bsl_init.bslp66) (_v299_arg))))
let _v0___dummy = ((Obj.magic) (let _v300_arg = _v346_const in
((Bsl_init.bslp65) (_v300_arg))))
let _v2_engine_ = ((Obj.magic) (let _v301_arg = let _v303_arg = _v347_const in
let _v302_arg = _v347_const in
(Bsl_init.bslp39 (_v302_arg) (_v303_arg)) in
((OpabslgenMLRuntime.Badop_engine.get) (_v301_arg))))
let _v26__ = ((Obj.magic) (((Bsl_init.bslp38) (()))))
let _v7_anon_fun__ _v163_extra_cont _v65_extra_val _v1_tr_df = let _v1021_val = ((QmlFlatServerLib.unsafe_init_static) ([| (((Obj.repr) (( (* ["f1" ; "f2"] *) _v35_shared_vtable)))) ; (((Obj.repr) (None))) ; (((Obj.repr) (_v65_extra_val))) ; (((Obj.repr) (_v1_tr_df))) |])) in
(QmlCpsServerLib.return (_v163_extra_cont) (_v1021_val))
let _v0_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v7_anon_fun__) (3) (_v348_const) (_v349_const))))
let _v28_anon_fun__ _v184_extra_cont _v1036_val = (match ((QmlFlatServerLib.unwrap_record) (_v1036_val)) with
[| _v30_vt ; _ ; lazy _v24_some |] when (((==)) (((Obj.magic) (_v30_vt))) (( (* ["some"] *) _v36_shared_vtable))) -> let _v16_x = ((Obj.magic) (_v24_some)) in
let _v1034_val = ((QmlFlatServerLib.may_be_simple) ([| (((Obj.repr) (( (* ["some"] *) _v36_shared_vtable)))) ; (((Obj.repr) (None))) ; (((Obj.repr) (((OpabslgenMLRuntime.Badoplink.Data.obj_int) (_v16_x))))) |])) in
(QmlCpsServerLib.return (_v184_extra_cont) (_v1034_val))
| _v15_none when (((==)) (((Obj.magic) (_v15_none))) (_v1_simple_none)) -> let _v1035_val = _v347_const in
(QmlCpsServerLib.return (_v184_extra_cont) (_v1035_val)))
let _v1_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v28_anon_fun__) (2) (_v350_const) (_v349_const))))
let _v9_anon_fun__ _v164_extra_cont _v1009_val = let _v1017_val = OpabslgenMLRuntime.Dbgraph.empty_diff in
let _v1018_val = ((QmlFlatServerLib.unsafe_init_static) ([| (((Obj.repr) (( (* ["diff" ; "trans"] *) _v37_shared_vtable)))) ; (((Obj.repr) (None))) ; (((Obj.repr) (_v1017_val))) ; (((Obj.repr) (_v1009_val))) |])) in
(QmlCpsServerLib.return (_v164_extra_cont) (_v1018_val))
let _v2_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v9_anon_fun__) (2) (_v351_const) (_v349_const))))
let _v10_anon_fun__ _v13_extra_tr _v165_extra_cont _v66_extra_val _v315_arg = (OpabslgenMLRuntime.Badoplink.set (_v13_extra_tr) (_v315_arg) (_v66_extra_val) (_v165_extra_cont))
let _v3_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v10_anon_fun__) (4) (_v352_const) (_v349_const))))
let _v11_anon_fun__ _v166_extra_cont _v67_extra_val _v318_arg = let _v1013_val = (OpabslgenMLRuntime.Badoplink.dbpath_add (_v318_arg) (_v67_extra_val)) in
(QmlCpsServerLib.return (_v166_extra_cont) (_v1013_val))
let _v4_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v11_anon_fun__) (3) (_v353_const) (_v349_const))))
let _v8_anon_fun__ _v167_extra_cont _v35_tr = let _v1209_cont = (QmlCpsServerLib.ccont (_v167_extra_cont) ((Bsl_init.clos_env_1 (_v2_clos_anon_fun__) (_v167_extra_cont)))) in
let _v1015_val = let _v317_arg = _v354_const in
((OpabslgenMLRuntime.Badoplink.Data.binary) (_v317_arg)) in
let _v1212_cont = (QmlCpsServerLib.ccont (_v1209_cont) ((Bsl_init.clos_env_3 (_v3_clos_anon_fun__) (_v35_tr) (_v1209_cont) (_v1015_val)))) in
let _v1014_val = let _v320_arg = 0 in
((OpabslgenMLRuntime.Badoplink.key_int) (_v320_arg)) in
let _v1215_cont = (QmlCpsServerLib.ccont (_v1212_cont) ((Bsl_init.clos_env_2 (_v4_clos_anon_fun__) (_v1212_cont) (_v1014_val)))) in
let _v1012_val = let _v323_arg = 2 in
((OpabslgenMLRuntime.Badoplink.key_int) (_v323_arg)) in
let _v1010_val = OpabslgenMLRuntime.Badoplink.dbpath_root in
let _v1011_val = (OpabslgenMLRuntime.Badoplink.dbpath_add (_v1010_val) (_v1012_val)) in
(QmlCpsServerLib.return (_v1215_cont) (_v1011_val))
let _v5_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v8_anon_fun__) (2) (_v355_const) (_v349_const))))
let _v29_anon_fun__ _v5_extra_tr1 _v185_extra_cont _v330_arg = (OpabslgenMLRuntime.Badoplink.get_opt (_v5_extra_tr1) (_v330_arg) (_v185_extra_cont))
let _v6_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v29_anon_fun__) (3) (_v356_const) (_v349_const))))
let _v30_anon_fun__ _v186_extra_cont _v80_extra_val _v331_arg = let _v1032_val = (OpabslgenMLRuntime.Badoplink.dbpath_add (_v331_arg) (_v80_extra_val)) in
(QmlCpsServerLib.return (_v186_extra_cont) (_v1032_val))
let _v7_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v30_anon_fun__) (3) (_v357_const) (_v349_const))))
let _v12_anon_fun__ _v0_extra_tr1 _v168_extra_cont _v68_extra_val _v306_arg = (OpabslgenMLRuntime.Badoplink.set (_v0_extra_tr1) (_v306_arg) (_v68_extra_val) (_v168_extra_cont))
let _v8_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v12_anon_fun__) (4) (_v358_const) (_v349_const))))
let _v0_anon_fun__ _v0_extra___barrier _v305_arg = let _v1088_val = let _v304_arg = _v359_const in
(Bsl_init.bslp56 (_v304_arg) (_v305_arg)) in
(QmlCpsServerLib.black_release_barrier (_v0_extra___barrier) (_v1088_val))
let _v9_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v0_anon_fun__) (2) (_v360_const) (_v349_const))))
let _v5_anon_fun__ _v0_extra_db _v160_extra_cont _v64_extra_val _v18__ = let _v1083_val = ((QmlFlatServerLib.unsafe_init_static) ([| (((Obj.repr) (( (* ["database" ; "diff"] *) _v38_shared_vtable)))) ; (((Obj.repr) (None))) ; (((Obj.repr) (_v0_extra_db))) ; (((Obj.repr) (( (* Cache case *) (QmlFlatServerLib.dot_with_cache (_v2_access_cache) (_v1_label_diff) (_v64_extra_val)))))) |])) in
(QmlCpsServerLib.return (_v160_extra_cont) (_v1083_val))
let _v10_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v5_anon_fun__) (4) (_v361_const) (_v349_const))))
let _v4_anon_fun__ _v1_extra_db _v0_extra_init_tuple _v161_extra_cont _v19__ = let _v1085_val = ( (* Eliminated vtable for field f2 *) (QmlFlatServerLib.unsafe_get (1) (_v0_extra_init_tuple))) in
let _v1084_val = ( (* Cache case *) (QmlFlatServerLib.dot_with_cache (_v3_access_cache) (_v0_label_trans) (_v1085_val))) in
let _v1300_cont = (QmlCpsServerLib.ccont (_v161_extra_cont) ((Bsl_init.clos_env_3 (_v10_clos_anon_fun__) (_v1_extra_db) (_v161_extra_cont) (_v1085_val)))) in
(OpabslgenMLRuntime.Badoplink.trans_commit (_v1084_val) (_v1300_cont))
let _v11_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v4_anon_fun__) (4) (_v362_const) (_v349_const))))
let _v3_anon_fun__ _v2_extra_db _v162_extra_cont _v0_init_tuple = let _v1087_val = ( (* Eliminated vtable for field f1 *) (QmlFlatServerLib.unsafe_get (0) (_v0_init_tuple))) in
let _v1086_val = ((Badop.Structure.Node_property.construct) (_v1087_val)) in
let _v1295_cont = (QmlCpsServerLib.ccont (_v162_extra_cont) ((Bsl_init.clos_env_3 (_v11_clos_anon_fun__) (_v2_extra_db) (_v0_init_tuple) (_v162_extra_cont)))) in
(OpabslgenMLRuntime.Badoplink.node_properties (_v2_extra_db) (_v1086_val) (_v1295_cont))
let _v12_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v3_anon_fun__) (3) (_v363_const) (_v349_const))))
let _v13_anon_fun__ _v169_extra_cont _v69_extra_val _v309_arg = let _v1006_val = (OpabslgenMLRuntime.Badoplink.dbpath_add (_v309_arg) (_v69_extra_val)) in
(QmlCpsServerLib.return (_v169_extra_cont) (_v1006_val))
let _v13_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v13_anon_fun__) (3) (_v364_const) (_v349_const))))
let _v16_anon_fun__ _v170_extra_cont _v70_extra_val _v348_arg = let _v1055_val = let _v347_arg = _v365_const in
(OpabslgenMLRuntime.Badoplink.fatal_error_for_dbgen (_v347_arg) (_v348_arg) (_v70_extra_val)) in
(QmlCpsServerLib.return (_v170_extra_cont) (_v1055_val))
let _v14_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v16_anon_fun__) (3) (_v366_const) (_v349_const))))
let _v17_anon_fun__ _v171_extra_cont _v71_extra_val _v0_tr_df = let _v1068_val = ((QmlFlatServerLib.unsafe_init_static) ([| (((Obj.repr) (( (* ["f1" ; "f2"] *) _v35_shared_vtable)))) ; (((Obj.repr) (None))) ; (((Obj.repr) (_v71_extra_val))) ; (((Obj.repr) (_v0_tr_df))) |])) in
(QmlCpsServerLib.return (_v171_extra_cont) (_v1068_val))
let _v15_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v17_anon_fun__) (3) (_v367_const) (_v349_const))))
let _v18_anon_fun__ _v172_extra_cont _v72_extra_val _v1057_val = let _v1065_val = ((QmlFlatServerLib.unsafe_init_static) ([| (((Obj.repr) (( (* ["diff" ; "trans"] *) _v37_shared_vtable)))) ; (((Obj.repr) (None))) ; (((Obj.repr) (_v72_extra_val))) ; (((Obj.repr) (_v1057_val))) |])) in
(QmlCpsServerLib.return (_v172_extra_cont) (_v1065_val))
let _v16_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v18_anon_fun__) (3) (_v368_const) (_v349_const))))
let _v19_anon_fun__ _v1_extra_tr1 _v173_extra_cont _v73_extra_val _v357_arg = (OpabslgenMLRuntime.Badoplink.set (_v1_extra_tr1) (_v357_arg) (_v73_extra_val) (_v173_extra_cont))
let _v17_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v19_anon_fun__) (4) (_v369_const) (_v349_const))))
let _v20_anon_fun__ _v174_extra_cont _v74_extra_val _v359_arg = let _v1061_val = (OpabslgenMLRuntime.Badoplink.dbpath_add (_v359_arg) (_v74_extra_val)) in
(QmlCpsServerLib.return (_v174_extra_cont) (_v1061_val))
let _v18_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v20_anon_fun__) (3) (_v370_const) (_v349_const))))
let _v15_anon_fun__ _v3_extra_db _v2_extra_tr1 _v175_extra_cont _v75_extra_val _v0_read_schema = let _v1078_val = (OpabslgenMLRuntime.Dbgraph.diff (_v0_read_schema) (_v75_extra_val)) in
let _v1076_val = ((OpabslgenMLRuntime.Dbgraph.diff_status) (_v1078_val)) in
(match _v1076_val with
0 -> let _v1075_val = let _v0_tr_df = ((QmlFlatServerLib.unsafe_init_static) ([| (((Obj.repr) (( (* ["diff" ; "trans"] *) _v37_shared_vtable)))) ; (((Obj.repr) (None))) ; (((Obj.repr) (_v1078_val))) ; (((Obj.repr) (_v2_extra_tr1))) |])) in
((QmlFlatServerLib.unsafe_init_static) ([| (((Obj.repr) (( (* ["f1" ; "f2"] *) _v35_shared_vtable)))) ; (((Obj.repr) (None))) ; (((Obj.repr) (_v75_extra_val))) ; (((Obj.repr) (_v0_tr_df))) |])) in
(QmlCpsServerLib.return (_v175_extra_cont) (_v1075_val))
| 2048 -> let _v1056_val = _v371_const in
let _v1263_cont = (QmlCpsServerLib.ccont (_v175_extra_cont) ((Bsl_init.clos_env_2 (_v14_clos_anon_fun__) (_v175_extra_cont) (_v1056_val)))) in
(OpabslgenMLRuntime.Badoplink.get_db_prefix (_v3_extra_db) (_v1263_cont))
| _ -> let _v1074_val = let _v350_arg = let _v351_arg = _v372_const in
(OpabslgenMLRuntime.Dbgraph.diff_message (_v351_arg) (_v1078_val)) in
((Bsl_init.bslp51) (_v350_arg)) in
let _v1072_val = ((OpabslgenMLRuntime.Badoplink.shall_i_upgrade) (_v3_extra_db)) in
(match _v1072_val with
0 -> let _v1071_val = let _v14__ = let _v352_arg = _v373_const in
((Bsl_init.bslp51) (_v352_arg)) in
let _v355_arg = _v374_const in
let _v354_arg = _v374_const in
let _v353_arg = _v375_const in
(OpabslgenMLRuntime.Badoplink.fatal_error_for_dbgen (_v353_arg) (_v354_arg) (_v355_arg)) in
(QmlCpsServerLib.return (_v175_extra_cont) (_v1071_val))
| _ -> let _v1070_val = let _v356_arg = _v376_const in
((Bsl_init.bslp51) (_v356_arg)) in
let _v1069_val = ((OpabslgenMLRuntime.Dbgraph.get_diffed_schema) (_v1078_val)) in
let _v1276_cont = (QmlCpsServerLib.ccont (_v175_extra_cont) ((Bsl_init.clos_env_2 (_v15_clos_anon_fun__) (_v175_extra_cont) (_v1069_val)))) in
let _v1277_cont = (QmlCpsServerLib.ccont (_v1276_cont) ((Bsl_init.clos_env_2 (_v16_clos_anon_fun__) (_v1276_cont) (_v1078_val)))) in
let _v1063_val = ((OpabslgenMLRuntime.Badoplink.Data.binary) (_v1069_val)) in
let _v1279_cont = (QmlCpsServerLib.ccont (_v1277_cont) ((Bsl_init.clos_env_3 (_v17_clos_anon_fun__) (_v2_extra_tr1) (_v1277_cont) (_v1063_val)))) in
let _v1062_val = let _v361_arg = 0 in
((OpabslgenMLRuntime.Badoplink.key_int) (_v361_arg)) in
let _v1282_cont = (QmlCpsServerLib.ccont (_v1279_cont) ((Bsl_init.clos_env_2 (_v18_clos_anon_fun__) (_v1279_cont) (_v1062_val)))) in
let _v1060_val = let _v364_arg = 2 in
((OpabslgenMLRuntime.Badoplink.key_int) (_v364_arg)) in
let _v1058_val = OpabslgenMLRuntime.Badoplink.dbpath_root in
let _v1059_val = (OpabslgenMLRuntime.Badoplink.dbpath_add (_v1058_val) (_v1060_val)) in
(QmlCpsServerLib.return (_v1282_cont) (_v1059_val))))
let _v19_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v15_anon_fun__) (5) (_v377_const) (_v349_const))))
let _v21_anon_fun__ _v176_extra_cont _v1050_val = (match ((QmlFlatServerLib.unwrap_record) (_v1050_val)) with
[| _v31_vt ; _ ; lazy _v25_some |] when (((==)) (((Obj.magic) (_v31_vt))) (( (* ["some"] *) _v36_shared_vtable))) -> let _v14_x = ((Obj.magic) (_v25_some)) in
(QmlCpsServerLib.return (_v176_extra_cont) (_v14_x))
| _v16_none when (((==)) (((Obj.magic) (_v16_none))) (_v1_simple_none)) -> let _v1049_val = let _v339_arg = _v374_const in
let _v338_arg = _v374_const in
let _v337_arg = _v378_const in
(OpabslgenMLRuntime.Badoplink.fatal_error_for_dbgen (_v337_arg) (_v338_arg) (_v339_arg)) in
(QmlCpsServerLib.return (_v176_extra_cont) (_v1049_val)))
let _v20_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v21_anon_fun__) (2) (_v379_const) (_v349_const))))
let _v22_anon_fun__ _v177_extra_cont _v1048_val = (match ((QmlFlatServerLib.unwrap_record) (_v1048_val)) with
[| _v32_vt ; _ ; lazy _v26_some |] when (((==)) (((Obj.magic) (_v32_vt))) (( (* ["some"] *) _v36_shared_vtable))) -> let _v15_x = ((Obj.magic) (_v26_some)) in
let _v1046_val = ((QmlFlatServerLib.may_be_simple) ([| (((Obj.repr) (( (* ["some"] *) _v36_shared_vtable)))) ; (((Obj.repr) (None))) ; (((Obj.repr) (((OpabslgenMLRuntime.Badoplink.Data.obj_binary) (_v15_x))))) |])) in
(QmlCpsServerLib.return (_v177_extra_cont) (_v1046_val))
| _v17_none when (((==)) (((Obj.magic) (_v17_none))) (_v1_simple_none)) -> let _v1047_val = _v347_const in
(QmlCpsServerLib.return (_v177_extra_cont) (_v1047_val)))
let _v21_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v22_anon_fun__) (2) (_v380_const) (_v349_const))))
let _v23_anon_fun__ _v3_extra_tr1 _v178_extra_cont _v340_arg = (OpabslgenMLRuntime.Badoplink.get_opt (_v3_extra_tr1) (_v340_arg) (_v178_extra_cont))
let _v22_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v23_anon_fun__) (3) (_v381_const) (_v349_const))))
let _v24_anon_fun__ _v179_extra_cont _v76_extra_val _v341_arg = let _v1044_val = (OpabslgenMLRuntime.Badoplink.dbpath_add (_v341_arg) (_v76_extra_val)) in
(QmlCpsServerLib.return (_v179_extra_cont) (_v1044_val))
let _v23_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v24_anon_fun__) (3) (_v382_const) (_v349_const))))
let _v14_anon_fun__ _v4_extra_db _v4_extra_tr1 _v180_extra_cont _v77_extra_val _v17__ = let _v1241_cont = (QmlCpsServerLib.ccont (_v180_extra_cont) ((Bsl_init.clos_env_4 (_v19_clos_anon_fun__) (_v4_extra_db) (_v4_extra_tr1) (_v180_extra_cont) (_v77_extra_val)))) in
let _v1245_cont = (QmlCpsServerLib.ccont (_v1241_cont) ((Bsl_init.clos_env_1 (_v20_clos_anon_fun__) (_v1241_cont)))) in
let _v1248_cont = (QmlCpsServerLib.ccont (_v1245_cont) ((Bsl_init.clos_env_1 (_v21_clos_anon_fun__) (_v1245_cont)))) in
let _v1249_cont = (QmlCpsServerLib.ccont (_v1248_cont) ((Bsl_init.clos_env_2 (_v22_clos_anon_fun__) (_v4_extra_tr1) (_v1248_cont)))) in
let _v1045_val = let _v343_arg = 0 in
((OpabslgenMLRuntime.Badoplink.key_int) (_v343_arg)) in
let _v1252_cont = (QmlCpsServerLib.ccont (_v1249_cont) ((Bsl_init.clos_env_2 (_v23_clos_anon_fun__) (_v1249_cont) (_v1045_val)))) in
let _v1043_val = let _v346_arg = 2 in
((OpabslgenMLRuntime.Badoplink.key_int) (_v346_arg)) in
let _v1041_val = OpabslgenMLRuntime.Badoplink.dbpath_root in
let _v1042_val = (OpabslgenMLRuntime.Badoplink.dbpath_add (_v1041_val) (_v1043_val)) in
(QmlCpsServerLib.return (_v1252_cont) (_v1042_val))
let _v24_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v14_anon_fun__) (5) (_v383_const) (_v349_const))))
let _v26_anon_fun__ _v181_extra_cont _v78_extra_val _v325_arg = let _v1023_val = let _v324_arg = _v384_const in
(OpabslgenMLRuntime.Badoplink.fatal_error_for_dbgen (_v324_arg) (_v325_arg) (_v78_extra_val)) in
(QmlCpsServerLib.return (_v181_extra_cont) (_v1023_val))
let _v25_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v26_anon_fun__) (3) (_v385_const) (_v349_const))))
let _v27_anon_fun__ _v182_extra_cont _v79_extra_val _v328_arg = let _v1025_val = let _v327_arg = _v386_const in
(OpabslgenMLRuntime.Badoplink.fatal_error_for_dbgen (_v327_arg) (_v328_arg) (_v79_extra_val)) in
(QmlCpsServerLib.return (_v182_extra_cont) (_v1025_val))
let _v26_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v27_anon_fun__) (3) (_v387_const) (_v349_const))))
let _v25_anon_fun__ _v5_extra_db _v183_extra_cont _v1038_val = (match ((QmlFlatServerLib.unwrap_record) (_v1038_val)) with
[| _v33_vt ; _ ; lazy _v27_some |] when (((&&)) ((((==)) (((Obj.magic) (_v33_vt))) (( (* ["some"] *) _v36_shared_vtable)))) ((((=)) (((Obj.magic) (_v27_some))) (9)))) -> let _v1037_val = _v344_const in
(QmlCpsServerLib.return (_v183_extra_cont) (_v1037_val))
| [| _v34_vt ; _ ; _ |] when (((==)) (((Obj.magic) (_v34_vt))) (( (* ["some"] *) _v36_shared_vtable))) -> let _v1024_val = _v388_const in
let _v1225_cont = (QmlCpsServerLib.ccont (_v183_extra_cont) ((Bsl_init.clos_env_2 (_v25_clos_anon_fun__) (_v183_extra_cont) (_v1024_val)))) in
(OpabslgenMLRuntime.Badoplink.get_db_prefix (_v5_extra_db) (_v1225_cont))
| _v18_none when (((==)) (((Obj.magic) (_v18_none))) (_v1_simple_none)) -> let _v1026_val = _v389_const in
let _v1228_cont = (QmlCpsServerLib.ccont (_v183_extra_cont) ((Bsl_init.clos_env_2 (_v26_clos_anon_fun__) (_v183_extra_cont) (_v1026_val)))) in
(OpabslgenMLRuntime.Badoplink.get_db_prefix (_v5_extra_db) (_v1228_cont)))
let _v27_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v25_anon_fun__) (3) (_v390_const) (_v349_const))))
let _v6_anon_fun__ _v6_extra_db _v6_extra_tr1 _v187_extra_cont _v1080_val = (match _v1080_val with
1 -> let _v1022_val = _v354_const in
let _v1198_cont = (QmlCpsServerLib.ccont (_v187_extra_cont) ((Bsl_init.clos_env_2 (_v0_clos_anon_fun__) (_v187_extra_cont) (_v1022_val)))) in
let _v1199_cont = (QmlCpsServerLib.ccont (_v1198_cont) ((Bsl_init.clos_env_1 (_v5_clos_anon_fun__) (_v1198_cont)))) in
let _v1008_val = let _v308_arg = 9 in
((OpabslgenMLRuntime.Badoplink.Data.int) (_v308_arg)) in
let _v1202_cont = (QmlCpsServerLib.ccont (_v1199_cont) ((Bsl_init.clos_env_3 (_v8_clos_anon_fun__) (_v6_extra_tr1) (_v1199_cont) (_v1008_val)))) in
let _v1007_val = let _v311_arg = (-1) in
((OpabslgenMLRuntime.Badoplink.key_int) (_v311_arg)) in
let _v1205_cont = (QmlCpsServerLib.ccont (_v1202_cont) ((Bsl_init.clos_env_2 (_v13_clos_anon_fun__) (_v1202_cont) (_v1007_val)))) in
let _v1005_val = let _v314_arg = 2 in
((OpabslgenMLRuntime.Badoplink.key_int) (_v314_arg)) in
let _v1003_val = OpabslgenMLRuntime.Badoplink.dbpath_root in
let _v1004_val = (OpabslgenMLRuntime.Badoplink.dbpath_add (_v1003_val) (_v1005_val)) in
(QmlCpsServerLib.return (_v1205_cont) (_v1004_val))
| 0 -> let _v1079_val = _v354_const in
let _v1223_cont = (QmlCpsServerLib.ccont (_v187_extra_cont) ((Bsl_init.clos_env_4 (_v24_clos_anon_fun__) (_v6_extra_db) (_v6_extra_tr1) (_v187_extra_cont) (_v1079_val)))) in
let _v1230_cont = (QmlCpsServerLib.ccont (_v1223_cont) ((Bsl_init.clos_env_2 (_v27_clos_anon_fun__) (_v6_extra_db) (_v1223_cont)))) in
let _v1233_cont = (QmlCpsServerLib.ccont (_v1230_cont) ((Bsl_init.clos_env_1 (_v1_clos_anon_fun__) (_v1230_cont)))) in
let _v1234_cont = (QmlCpsServerLib.ccont (_v1233_cont) ((Bsl_init.clos_env_2 (_v6_clos_anon_fun__) (_v6_extra_tr1) (_v1233_cont)))) in
let _v1033_val = let _v333_arg = (-1) in
((OpabslgenMLRuntime.Badoplink.key_int) (_v333_arg)) in
let _v1237_cont = (QmlCpsServerLib.ccont (_v1234_cont) ((Bsl_init.clos_env_2 (_v7_clos_anon_fun__) (_v1234_cont) (_v1033_val)))) in
let _v1031_val = let _v336_arg = 2 in
((OpabslgenMLRuntime.Badoplink.key_int) (_v336_arg)) in
let _v1029_val = OpabslgenMLRuntime.Badoplink.dbpath_root in
let _v1030_val = (OpabslgenMLRuntime.Badoplink.dbpath_add (_v1029_val) (_v1031_val)) in
(QmlCpsServerLib.return (_v1237_cont) (_v1030_val)))
let _v28_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v6_anon_fun__) (4) (_v391_const) (_v349_const))))
let _v2_anon_fun__ _v7_extra_db _v188_extra_cont _v3_tr1 = let _v1196_cont = (QmlCpsServerLib.ccont (_v188_extra_cont) ((Bsl_init.clos_env_2 (_v12_clos_anon_fun__) (_v7_extra_db) (_v188_extra_cont)))) in
let _v1291_cont = (QmlCpsServerLib.ccont (_v1196_cont) ((Bsl_init.clos_env_3 (_v28_clos_anon_fun__) (_v7_extra_db) (_v3_tr1) (_v1196_cont)))) in
(OpabslgenMLRuntime.Badoplink.is_db_new (_v7_extra_db) (_v1291_cont))
let _v29_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v2_anon_fun__) (3) (_v392_const) (_v349_const))))
let _v1_anon_fun__ _v189_extra_cont _v0_db = let _v1195_cont = (QmlCpsServerLib.ccont (_v189_extra_cont) ((Bsl_init.clos_env_2 (_v29_clos_anon_fun__) (_v0_db) (_v189_extra_cont)))) in
(OpabslgenMLRuntime.Badoplink.trans_start (_v0_db) (_v1195_cont))
let _v30_clos_anon_fun__ = ((Obj.magic) ((Bsl_init.bslp62 (_v1_anon_fun__) (2) (_v393_const) (_v349_const))))
let _v24__ = ((Obj.magic) (let _v8_before = ((QmlCpsServerLib.before_wait) (_v344_const)) in
let _v0___barrier = ((QmlCpsServerLib.black_make_barrier) (_v394_const)) in
let _v8_barrier_unit = let _v1193_cont = ((QmlCpsServerLib.cont) ((Bsl_init.clos_env_1 (_v9_clos_anon_fun__) (_v0___barrier)))) in
let _v1194_cont = (QmlCpsServerLib.ccont (_v1193_cont) ((Bsl_init.clos_env_1 (_v30_clos_anon_fun__) (_v1193_cont)))) in
(OpabslgenMLRuntime.Badoplink.open_db (_v2_engine_) (_v1194_cont)) in
((OpabslgenMLRuntime.BslCps.black_toplevel_wait) (_v0___barrier))))
let _v3_dbinit = ((Obj.magic) (let _v365_arg = _v359_const in
((OpabslgenMLRuntime.Badoplink.get_registered_db_ident) (_v365_arg))))
let _v3__inaccessible_db_ident = ((Obj.magic) (( (* Eliminated vtable for field database *) (QmlFlatServerLib.unsafe_get (0) (_v3_dbinit)))))
let _v3_db_diff = ((Obj.magic) (( (* Eliminated vtable for field diff *) (QmlFlatServerLib.unsafe_get (1) (_v3_dbinit)))))
let _v25__ = ((Obj.magic) (let _v9_before = ((QmlCpsServerLib.before_wait) (_v344_const)) in
let _v1___barrier = ((QmlCpsServerLib.black_make_barrier) (_v395_const)) in
let _v9_barrier_unit = let _v1089_val = let _v21__ = let _v369_arg = 0 in
let _v368_arg = 0 in
let _v367_arg = _v374_const in
let _v366_arg = _v396_const in
(Bsl_init.bslp57 (_v366_arg) (_v367_arg) (_v368_arg) (_v369_arg)) in
_v344_const in
(QmlCpsServerLib.black_release_barrier (_v1___barrier) (_v1089_val)) in
((OpabslgenMLRuntime.BslCps.black_toplevel_wait) (_v1___barrier))))
