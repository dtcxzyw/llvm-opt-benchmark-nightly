Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/JSONSchema?download=true
inline.NumInlined: 9470
inline.NumDeleted: 4163
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE:bb.a
  %i.dn = icmp eq i64 %.8.val4.fr.i.i.i.i1705, %.val7.i.i.i.i.i1716
  br i1 %i.dn, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i1717, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i1711

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i1717: ; preds = %bb.ai
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1710, i64 8
  %.val6.i.i.i.i.i1718 = load ptr, ptr %i.do, align 8
  %bcmp.i.i.i.i.i.i.i.i1719 = call i32 @bcmp(ptr readonly %.val25.i.i, ptr readonly %.val6.i.i.i.i.i1718, i64 %.8.val4.fr.i.i.i.i1705)
  %i.dp = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i1719, 0
  br i1 %i.dp, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i1711

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i1711: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i1717, %bb.ai, %.split.i.i.i.i1708
  %i.dq = load ptr, ptr %.0.i.i.i.i1710, align 8, !tbaa !458 ; 3 uses
  %.not18.i.i.i.i1712 = icmp eq ptr %i.dq, null
  br i1 %.not18.i.i.i.i1712, label %.loopexit.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i1711
  %i.dr = getelementptr i8, ptr %i.dq, i64 48
  %.val23.i.i.i.i1713 = load i64, ptr %i.dr, align 8, !tbaa !460 ; 2 uses
  %i.ds = urem i64 %.val23.i.i.i.i1713, %.val22.i.i
  %.not19.i.i.i.i1714 = icmp eq i64 %i.ds, %i.da
  br i1 %.not19.i.i.i.i1714, label %.split.i.i.i.i1708, label %.loopexit.i.i, !llvm.loop !0

.loopexit.i.i:                                    ; preds = %bb.aj, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i1711, %bb.ah, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i1723, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i1704
  %i.dt = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #46
          to label %.noexc1728 unwind label %bb.ba ; 9 uses

.noexc1728:                                       ; preds = %.loopexit.i.i
  store ptr null, ptr %i.dt, align 8, !tbaa !458
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 24 ; 3 uses
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !454
  %i.dw = load ptr, ptr %i.e, align 8, !tbaa !462 ; 2 uses
  %i.dx = load i64, ptr %i.bf, align 8, !tbaa !456 ; 8 uses
  %i.dy = icmp ugt i64 %i.dx, 15
  br i1 %i.dy, label %bb.ak, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %.noexc1728
  %i.dz = icmp slt i64 %i.dx, 0
  br i1 %i.dz, label %.noexc.i.i.i.i.i.i.i.i, label %bb.al

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #44
          to label %.noexc.i.i.i.i1715 unwind label %bb.ao

.noexc.i.i.i.i1715:                               ; preds = %.noexc.i.i.i.i.i.i.i.i
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.ea = add nuw i64 %i.dx, 1                    ; 2 uses
  %i.eb = icmp slt i64 %i.ea, 0
  br i1 %i.eb, label %.noexc6.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i, !prof !425

.noexc6.i.i.i.i.i.i.i.i:                          ; preds = %bb.al
  invoke void @_ZSt17__throw_bad_allocv() #44
          to label %.noexc11.i.i.i.i unwind label %bb.ao

.noexc11.i.i.i.i:                                 ; preds = %.noexc6.i.i.i.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.al
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #46
          to label %.noexc12.i.i.i.i unwind label %bb.ao ; 2 uses

.noexc12.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.ec, ptr %i.du, align 8, !tbaa !462
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !428
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc12.i.i.i.i, %.noexc1728
  %i.ed = phi ptr [ %i.ec, %.noexc12.i.i.i.i ], [ %i.dv, %.noexc1728 ] ; 3 uses
  switch i64 %i.dx, label %bb.an [
    i64 1, label %bb.am
    i64 0, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESW_IJEEEEEPNSF_16_Hashtable_allocISaINSF_10_Hash_nodeISD_Lb1EEEEEEDpOT_.exit.i.i
  ]

bb.am:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ee = load i8, ptr %i.dw, align 1, !tbaa !428
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !428
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESW_IJEEEEEPNSF_16_Hashtable_allocISaINSF_10_Hash_nodeISD_Lb1EEEEEEDpOT_.exit.i.i

bb.an:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ed, ptr align 1 %i.dw, i64 %i.dx, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESW_IJEEEEEPNSF_16_Hashtable_allocISaINSF_10_Hash_nodeISD_Lb1EEEEEEDpOT_.exit.i.i

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  %i.eh = call ptr @__cxa_begin_catch(ptr %i.eg) #23 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef 56) #47
  invoke void @__cxa_rethrow() #44
          to label %bb.ar unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body1729 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #45
  unreachable

bb.ar:                                            ; preds = %bb.ao
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESW_IJEEEEEPNSF_16_Hashtable_allocISaINSF_10_Hash_nodeISD_Lb1EEEEEEDpOT_.exit.i.i: ; preds = %bb.an, %bb.am, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 %i.dx, ptr %i.el, align 8, !tbaa !456
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dx
  store i8 0, ptr %i.em, align 1, !tbaa !428
  %i.en = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  store ptr null, ptr %i.en, align 8, !tbaa !465
  %i.eo = invoke fastcc ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSF_10_Hash_nodeISD_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 noundef %i.da, i64 noundef %i.cw, ptr noundef nonnull %i.dt)
          to label %.loopexit unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESW_IJEEEEEPNSF_16_Hashtable_allocISaINSF_10_Hash_nodeISD_Lb1EEEEEEDpOT_.exit.i.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr nonnull %i.dt) #23
  br label %.body1729

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i1717, %bb.ag, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESW_IJEEEEEPNSF_16_Hashtable_allocISaINSF_10_Hash_nodeISD_Lb1EEEEEEDpOT_.exit.i.i
  %.pn.i.i = phi ptr [ %i.dt, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESW_IJEEEEEPNSF_16_Hashtable_allocISaINSF_10_Hash_nodeISD_Lb1EEEEEEDpOT_.exit.i.i ], [ %.0.us.i.i.i.i1722, %bb.ag ], [ %.0.i.i.i.i1710, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i1717 ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 40
  store ptr %i.cr, ptr %.1.i.i, align 8, !tbaa !466
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.cr, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %.01131207)
          to label %bb.at unwind label %bb.ba

bb.at:                                            ; preds = %.loopexit
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !8350 ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !8351
  %.not.i1731 = icmp eq ptr %i.es, %i.eu
  br i1 %.not.i1731, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr %i.cr, ptr %i.es, align 8, !tbaa !8353
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr %i.ev, ptr %i.er, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit

bb.av:                                            ; preds = %bb.at
  %.val.i.i1732 = load ptr, ptr %i.eq, align 8, !tbaa !8354 ; 7 uses
  %i.ew = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.ex = ptrtoint ptr %.val.i.i1732 to i64       ; 3 uses
  %i.ey = sub i64 %i.ew, %i.ex                    ; 3 uses
  %i.ez = icmp eq i64 %i.ey, 9223372036854775800
  br i1 %i.ez, label %bb.aw, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i1733

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc1744 unwind label %bb.ba

.noexc1744:                                       ; preds = %bb.aw
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i1733: ; preds = %bb.av
  %i.fa = ashr exact i64 %i.ey, 3                 ; 3 uses
  %i.fb = icmp eq ptr %i.es, %.val.i.i1732        ; 2 uses
  %.sroa.speculated.i.i.i1734 = select i1 %i.fb, i64 1, i64 %i.fa
  %i.fc = add nsw i64 %.sroa.speculated.i.i.i1734, %i.fa ; 2 uses
  %i.fd = icmp ult i64 %i.fc, %i.fa
  %i.fe = call i64 @llvm.umin.i64(i64 %i.fc, i64 1152921504606846975)
  %i.ff = select i1 %i.fd, i64 1152921504606846975, i64 %i.fe ; 3 uses
  %.not.i.i.i1735 = icmp ne i64 %i.ff, 0
  call void @llvm.assume(i1 %.not.i.i.i1735)
  %i.fg = shl nuw nsw i64 %i.ff, 3
  %i.fh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #46
          to label %.noexc1745 unwind label %bb.ba ; 7 uses

.noexc1745:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i1733
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ey
  store ptr %i.cr, ptr %i.fi, align 8, !tbaa !8353
  br i1 %i.fb, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i1741, label %.lr.ph.i.i.i.i.i1736.preheader

.lr.ph.i.i.i.i.i1736.preheader:                   ; preds = %.noexc1745
  %i.fj = add i64 %i.ew, -8
  %i.fk = sub i64 %i.fj, %i.ex                    ; 2 uses
  %i.fl = lshr i64 %i.fk, 3
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fk, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i1736.preheader3235, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i1736.preheader
  %n.vec = and i64 %i.fm, 4611686018427387900     ; 3 uses
  %i.fn = shl i64 %n.vec, 3                       ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fh, i64 %i.fn  ; 2 uses
  %i.fp = getelementptr i8, ptr %.val.i.i1732, i64 %i.fn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fh, i64 %i.fq ; 2 uses
  %next.gep2543 = getelementptr i8, ptr %.val.i.i1732, i64 %i.fq ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11030)
  call void @llvm.experimental.noalias.scope.decl(metadata !11031)
  %i.fr = getelementptr i8, ptr %next.gep2543, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep2543, align 8, !tbaa !466, !alias.scope !11031
  %wide.load2544 = load <2 x i64>, ptr %i.fr, align 8, !tbaa !466, !alias.scope !11031
  %i.fs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !466, !alias.scope !11030
  store <2 x i64> %wide.load2544, ptr %i.fs, align 8, !tbaa !466, !alias.scope !11030
  store <2 x ptr> splat (ptr null), ptr %next.gep2543, align 8, !tbaa !466, !alias.scope !11031
  store <2 x ptr> splat (ptr null), ptr %i.fr, align 8, !tbaa !466, !alias.scope !11031
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !10731

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i1741, label %.lr.ph.i.i.i.i.i1736.preheader3235

.lr.ph.i.i.i.i.i1736.preheader3235:               ; preds = %.lr.ph.i.i.i.i.i1736.preheader, %middle.block
  %.03.i.i.i.i.i1737.ph = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i1736.preheader ], [ %i.fo, %middle.block ]
  %.092.i.i.i.i.i1738.ph = phi ptr [ %.val.i.i1732, %.lr.ph.i.i.i.i.i1736.preheader ], [ %i.fp, %middle.block ]
  br label %.lr.ph.i.i.i.i.i1736

.lr.ph.i.i.i.i.i1736:                             ; preds = %.lr.ph.i.i.i.i.i1736.preheader3235, %.lr.ph.i.i.i.i.i1736
  %.03.i.i.i.i.i1737 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i1736 ], [ %.03.i.i.i.i.i1737.ph, %.lr.ph.i.i.i.i.i1736.preheader3235 ] ; 2 uses
  %.092.i.i.i.i.i1738 = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i1736 ], [ %.092.i.i.i.i.i1738.ph, %.lr.ph.i.i.i.i.i1736.preheader3235 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11030)
  call void @llvm.experimental.noalias.scope.decl(metadata !11031)
  %.val.i.i.i.i.i.i.i.i.i.i1739 = load i64, ptr %.092.i.i.i.i.i1738, align 8, !tbaa !466, !alias.scope !11031
  store i64 %.val.i.i.i.i.i.i.i.i.i.i1739, ptr %.03.i.i.i.i.i1737, align 8, !tbaa !466, !alias.scope !11030
  store ptr null, ptr %.092.i.i.i.i.i1738, align 8, !tbaa !466, !alias.scope !11031
  %i.fu = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i1738, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i1737, i64 8 ; 2 uses
  %.not.i.i.i.i.i1740 = icmp eq ptr %i.fu, %i.es
  br i1 %.not.i.i.i.i.i1740, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i1741, label %.lr.ph.i.i.i.i.i1736, !llvm.loop !10732

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i1741: ; preds = %.lr.ph.i.i.i.i.i1736, %middle.block, %.noexc1745
  %.0.lcssa.i.i.i.i.i1742 = phi ptr [ %i.fh, %.noexc1745 ], [ %i.fo, %middle.block ], [ %i.fv, %.lr.ph.i.i.i.i.i1736 ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i1742, i64 8
  %.not.i28.i.i1743 = icmp eq ptr %.val.i.i1732, null
  br i1 %.not.i28.i.i1743, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i1741
  %i.fx = load ptr, ptr %i.et, align 8, !tbaa !8351
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = sub i64 %i.fy, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i1732, i64 noundef %i.fz) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.ax, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i1741
  store ptr %i.fh, ptr %i.eq, align 8, !tbaa !8354
  store ptr %i.fw, ptr %i.er, align 8, !tbaa !8350
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.ff
  store ptr %i.ga, ptr %i.et, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.au, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  %i.gb = load ptr, ptr %24, align 8, !tbaa !8347 ; 3 uses
  %i.gc = load ptr, ptr %i.bj, align 8, !tbaa !8346 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gb, %i.gc
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gi, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gb, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit ] ; 3 uses
  %i.gd = load ptr, ptr %.05.i.i.i, align 8, !tbaa !462 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !428
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #47
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1748 = icmp eq ptr %i.gi, %i.gc
  br i1 %.not.i.i.i1748, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !298

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %24, align 8, !tbaa !8347
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit
  %i.gj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gb, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gk = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !8355
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gj to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.go) #47
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %.critedge

bb.az:                                            ; preds = %.thread
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i1733, %bb.aw, %.loopexit.i.i, %bb.ad, %.loopexit
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body1729

.body1729:                                        ; preds = %bb.ap, %bb.as, %bb.ba
  %eh.lpad-body1730 = phi { ptr, i32 } [ %i.gq, %bb.ba ], [ %i.ep, %bb.as ], [ %i.ei, %bb.ap ]
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #23
  br label %bb.bb

bb.bb:                                            ; preds = %.body1729, %bb.az
  %.pn = phi { ptr, i32 } [ %eh.lpad-body1730, %.body1729 ], [ %i.gp, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %.loopexit.split-lp1087

.loopexit.split-lp1087:                           ; preds = %.loopexit.split-lp1087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bb, %.body
  %.merged178 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn, %bb.bb ], [ %lpad.loopexit.split-lp3242, %.loopexit.split-lp1087.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %common.resume

.critedge184:                                     ; preds = %bb.ab
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %bb.bc

bb.bc:                                            ; preds = %bb.c, %.critedge184, %_ZNK5folly7dynamic11stringPieceEv.exit, %bb.b
  %i.gr = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.37, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.37, i64 10)) ; 2 uses
  %.not155 = icmp eq ptr %i.gr, null
  br i1 %.not155, label %bb.bk, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !11032)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  %i.gt = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #46, !noalias !11032 ; 6 uses
  invoke void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(40) %i.gr)
          to label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119MultipleOfValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.be, !noalias !11032

common.resume:                                    ; preds = %bb.bj, %bb.bu, %bb.cf, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit276, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit296, %bb.dp, %.loopexit.split-lp1087, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_112RefValidatorESt14default_deleteIS3_EED2Ev.exit205, %bb.ix, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit443, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit468, %bb.jt, %bb.lv, %bb.md, %bb.mp, %bb.nd, %bb.nl, %bb.nt, %bb.oc, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit403, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit383, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit358, %bb.ep, %.body.i838, %bb.no, %bb.ng, %.body836, %.body.i532, %bb.ly, %.body793, %.body.i, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i680, %.body675, %.body.i.i, %bb.ca, %bb.bp, %bb.be
  %common.resume.op = phi { ptr, i32 } [ %i.gu, %bb.be ], [ %i.iv, %bb.bp ], [ %i.kv, %bb.ca ], [ %i.sg, %.body.i.i ], [ %.pn34.i, %.body675 ], [ %.pn53.pn.pn.pn.i, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i680 ], [ %i.axc, %.body.i ], [ %.pn28.pn.pn.pn.pn.pn.i, %.body793 ], [ %i.bim, %bb.ly ], [ %lpad.loopexit.split-lp3089, %.body.i532 ], [ %.pn.i803, %.body836 ], [ %i.bqy, %bb.ng ], [ %i.bsr, %bb.no ], [ %eh.lpad-body.i839, %.body.i838 ], [ %.merged178, %.loopexit.split-lp1087 ], [ %i.tv, %bb.dp ], [ %i.qe, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit296 ], [ %i.oh, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit276 ], [ %i.mk, %bb.cf ], [ %i.kk, %bb.bu ], [ %i.ik, %bb.bj ], [ %i.ba, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_112RefValidatorESt14default_deleteIS3_EED2Ev.exit205 ], [ %i.zi, %bb.ep ], [ %i.aey, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit403 ], [ %i.adc, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit383 ], [ %i.abf, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit358 ], [ %i.bvw, %bb.oc ], [ %i.buc, %bb.nt ], [ %i.bsn, %bb.nl ], [ %i.bqu, %bb.nd ], [ %i.bnb, %bb.mp ], [ %i.bkc, %bb.md ], [ %i.bii, %bb.lv ], [ %i.ayr, %bb.jt ], [ %i.awm, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit468 ], [ %i.aup, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit443 ], [ %i.ass, %bb.ix ]
  resume { ptr, i32 } %common.resume.op

bb.be:                                            ; preds = %bb.bd
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef 48) #47, !noalias !11032
  br label %common.resume

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119MultipleOfValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.bd
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_119MultipleOfValidatorE, i64 16), ptr %i.gt, align 8, !tbaa !436, !noalias !11032
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.gv, ptr noundef nonnull align 8 dereferenceable(40) %21) #23, !noalias !11032
  store ptr %i.gt, ptr %26, align 8, !tbaa !8357, !alias.scope !11032
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %21) #23, !noalias !11032
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !8350 ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !8351
  %.not.i210 = icmp eq ptr %i.gx, %i.gz
  br i1 %.not.i210, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119MultipleOfValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.gt, ptr %i.gx, align 8, !tbaa !8353
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store ptr %i.ha, ptr %i.gw, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119MultipleOfValidatorESt14default_deleteIS3_EED2Ev.exit

bb.bg:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119MultipleOfValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i211 = load ptr, ptr %i.gs, align 8, !tbaa !8354 ; 10 uses
  %i.hb = ptrtoint ptr %i.gx to i64               ; 2 uses
  %i.hc = ptrtoint ptr %.val.i.i211 to i64        ; 3 uses
  %i.hd = sub i64 %i.hb, %i.hc                    ; 3 uses
  %i.he = icmp eq i64 %i.hd, 9223372036854775800
  br i1 %i.he, label %bb.bh, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc213 unwind label %bb.bj

.noexc213:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bg
  %i.hf = ashr exact i64 %i.hd, 3                 ; 3 uses
  %i.hg = icmp eq ptr %i.gx, %.val.i.i211         ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.hg, i64 1, i64 %i.hf
  %i.hh = add nsw i64 %.sroa.speculated.i.i.i, %i.hf ; 2 uses
  %i.hi = icmp ult i64 %i.hh, %i.hf
  %i.hj = call i64 @llvm.umin.i64(i64 %i.hh, i64 1152921504606846975)
  %i.hk = select i1 %i.hi, i64 1152921504606846975, i64 %i.hj ; 3 uses
  %.not.i.i.i212 = icmp ne i64 %i.hk, 0
  call void @llvm.assume(i1 %.not.i.i.i212)
  %i.hl = shl nuw nsw i64 %i.hk, 3
  %i.hm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hl) #46
          to label %.noexc214 unwind label %bb.bj ; 10 uses

.noexc214:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hd
  store ptr %i.gt, ptr %i.hn, align 8, !tbaa !8353
  br i1 %i.hg, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc214
  %i.ho = add i64 %i.hb, -8
  %i.hp = sub i64 %i.ho, %i.hc                    ; 3 uses
  %i.hq = lshr i64 %i.hp, 3
  %i.hr = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %min.iters.check2548 = icmp ult i64 %i.hp, 136
  br i1 %min.iters.check2548, label %.lr.ph.i.i.i.i.i.preheader3233, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.hs = and i64 %i.hp, -8
  %i.ht = add i64 %i.hs, 8                        ; 2 uses
  %i.hu = getelementptr i8, ptr %i.hm, i64 %i.ht
  %i.hv = getelementptr i8, ptr %.val.i.i211, i64 %i.ht
  %bound0 = icmp ult ptr %i.hm, %i.hv
  %bound1 = icmp ult ptr %.val.i.i211, %i.hu
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader3233, label %vector.ph2549

vector.ph2549:                                    ; preds = %vector.memcheck
  %n.vec2550 = and i64 %i.hr, 4611686018427387900 ; 3 uses
  %i.hw = shl i64 %n.vec2550, 3                   ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hm, i64 %i.hw  ; 2 uses
  %i.hy = getelementptr i8, ptr %.val.i.i211, i64 %i.hw
  br label %vector.body2551

vector.body2551:                                  ; preds = %vector.body2551, %vector.ph2549
  %index2552 = phi i64 [ 0, %vector.ph2549 ], [ %index.next2557, %vector.body2551 ] ; 2 uses
  %i.hz = shl i64 %index2552, 3                   ; 2 uses
  %next.gep2553 = getelementptr i8, ptr %i.hm, i64 %i.hz ; 2 uses
  %next.gep2554 = getelementptr i8, ptr %.val.i.i211, i64 %i.hz ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11033)
  call void @llvm.experimental.noalias.scope.decl(metadata !11034)
  %i.ia = getelementptr i8, ptr %next.gep2554, i64 16 ; 2 uses
  %wide.load2555 = load <2 x i64>, ptr %next.gep2554, align 8, !tbaa !466, !alias.scope !11035
  %wide.load2556 = load <2 x i64>, ptr %i.ia, align 8, !tbaa !466, !alias.scope !11035
  %i.ib = getelementptr i8, ptr %next.gep2553, i64 16
  store <2 x i64> %wide.load2555, ptr %next.gep2553, align 8, !tbaa !466, !alias.scope !11036, !noalias !11037
  store <2 x i64> %wide.load2556, ptr %i.ib, align 8, !tbaa !466, !alias.scope !11036, !noalias !11037
  store <2 x ptr> splat (ptr null), ptr %next.gep2554, align 8, !tbaa !466, !alias.scope !11035
  store <2 x ptr> splat (ptr null), ptr %i.ia, align 8, !tbaa !466, !alias.scope !11035
  %index.next2557 = add nuw i64 %index2552, 4     ; 2 uses
  %i.ic = icmp eq i64 %index.next2557, %n.vec2550
  br i1 %i.ic, label %middle.block2558, label %vector.body2551, !llvm.loop !10741

middle.block2558:                                 ; preds = %vector.body2551
  %cmp.n2559 = icmp eq i64 %i.hr, %n.vec2550
  br i1 %cmp.n2559, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i, label %.lr.ph.i.i.i.i.i.preheader3233

.lr.ph.i.i.i.i.i.preheader3233:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block2558
  %.03.i.i.i.i.i.ph = phi ptr [ %i.hm, %vector.memcheck ], [ %i.hm, %.lr.ph.i.i.i.i.i.preheader ], [ %i.hx, %middle.block2558 ]
  %.092.i.i.i.i.i.ph = phi ptr [ %.val.i.i211, %vector.memcheck ], [ %.val.i.i211, %.lr.ph.i.i.i.i.i.preheader ], [ %i.hy, %middle.block2558 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader3233, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.ie, %.lr.ph.i.i.i.i.i ], [ %.03.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader3233 ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.id, %.lr.ph.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader3233 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11033)
  call void @llvm.experimental.noalias.scope.decl(metadata !11034)
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i, align 8, !tbaa !466, !alias.scope !11034
  store i64 %.val.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i, align 8, !tbaa !466, !alias.scope !11033
  store ptr null, ptr %.092.i.i.i.i.i, align 8, !tbaa !466, !alias.scope !11034
  %i.id = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.id, %i.gx
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !10742

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block2558, %.noexc214
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.hm, %.noexc214 ], [ %i.hx, %middle.block2558 ], [ %i.ie, %.lr.ph.i.i.i.i.i ]
  %i.if = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i28.i.i = icmp eq ptr %.val.i.i211, null
  br i1 %.not.i28.i.i, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19MultipleOfValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i
  %i.ig = load ptr, ptr %i.gy, align 8, !tbaa !8351
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = sub i64 %i.ih, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i211, i64 noundef %i.ii) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19MultipleOfValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19MultipleOfValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.bi, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i
  store ptr %i.hm, ptr %i.gs, align 8, !tbaa !8354
  store ptr %i.if, ptr %i.gw, align 8, !tbaa !8350
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.hk
  store ptr %i.ij, ptr %i.gy, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119MultipleOfValidatorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119MultipleOfValidatorESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.bf, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19MultipleOfValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  br label %bb.bk

bb.bj:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i, %bb.bh
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119MultipleOfValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  br label %common.resume

bb.bk:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119MultipleOfValidatorESt14default_deleteIS3_EED2Ev.exit, %bb.bc
  %i.il = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.38, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 7)) ; 2 uses
  %.not156 = icmp eq ptr %i.il, null
  br i1 %.not156, label %bb.bv, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  %i.in = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.39, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.39, i64 16)) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11038)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %i.io = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #46, !noalias !11038 ; 8 uses
  invoke void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 8 dereferenceable(40) %i.il)
          to label %bb.bm unwind label %bb.bp, !noalias !11038

bb.bm:                                            ; preds = %bb.bl
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorE, i64 16), ptr %i.io, align 8, !tbaa !436, !noalias !11038
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ip, ptr noundef nonnull align 8 dereferenceable(40) %20) #23, !noalias !11038
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 48 ; 2 uses
  store i8 0, ptr %i.iq, align 8, !tbaa !8359, !noalias !11038
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 52
  store i32 1, ptr %i.ir, align 4, !tbaa !8360, !noalias !11038
  %.not.i.i216 = icmp eq ptr %i.in, null
  br i1 %.not.i.i216, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorEJRKNS0_7dynamicEPS5_NS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.is = load i32, ptr %i.in, align 8, !tbaa !8338, !noalias !11038
  %.not.i.i.i.i.i217 = icmp eq i32 %i.is, 2
  br i1 %.not.i.i.i.i.i217, label %bb.bo, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorEJRKNS0_7dynamicEPS5_NS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.bo:                                            ; preds = %bb.bn
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.iu = load i8, ptr %i.it, align 8, !tbaa !651, !range !629, !noalias !11038, !noundef !530
  store i8 %i.iu, ptr %i.iq, align 8, !tbaa !8359, !noalias !11038
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorEJRKNS0_7dynamicEPS5_NS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.bp:                                            ; preds = %bb.bl
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef 56) #47, !noalias !11038
  br label %common.resume

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorEJRKNS0_7dynamicEPS5_NS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.bm, %bb.bn, %bb.bo
  store ptr %i.io, ptr %27, align 8, !tbaa !8362, !alias.scope !11038
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %20) #23, !noalias !11038
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !8350 ; 6 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !8351
  %.not.i218 = icmp eq ptr %i.ix, %i.iz
  br i1 %.not.i218, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorEJRKNS0_7dynamicEPS5_NS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.io, ptr %i.ix, align 8, !tbaa !8353
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store ptr %i.ja, ptr %i.iw, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorESt14default_deleteIS3_EED2Ev.exit

bb.br:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorEJRKNS0_7dynamicEPS5_NS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i219 = load ptr, ptr %i.im, align 8, !tbaa !8354 ; 10 uses
  %i.jb = ptrtoint ptr %i.ix to i64               ; 2 uses
  %i.jc = ptrtoint ptr %.val.i.i219 to i64        ; 3 uses
  %i.jd = sub i64 %i.jb, %i.jc                    ; 3 uses
  %i.je = icmp eq i64 %i.jd, 9223372036854775800
  br i1 %i.je, label %bb.bs, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i220

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc231 unwind label %bb.bu

.noexc231:                                        ; preds = %bb.bs
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i220: ; preds = %bb.br
  %i.jf = ashr exact i64 %i.jd, 3                 ; 3 uses
  %i.jg = icmp eq ptr %i.ix, %.val.i.i219         ; 2 uses
  %.sroa.speculated.i.i.i221 = select i1 %i.jg, i64 1, i64 %i.jf
  %i.jh = add nsw i64 %.sroa.speculated.i.i.i221, %i.jf ; 2 uses
  %i.ji = icmp ult i64 %i.jh, %i.jf
  %i.jj = call i64 @llvm.umin.i64(i64 %i.jh, i64 1152921504606846975)
  %i.jk = select i1 %i.ji, i64 1152921504606846975, i64 %i.jj ; 3 uses
  %.not.i.i.i222 = icmp ne i64 %i.jk, 0
  call void @llvm.assume(i1 %.not.i.i.i222)
  %i.jl = shl nuw nsw i64 %i.jk, 3
  %i.jm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jl) #46
          to label %.noexc232 unwind label %bb.bu ; 10 uses

.noexc232:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i220
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jd
  store ptr %i.io, ptr %i.jn, align 8, !tbaa !8353
  br i1 %i.jg, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i228, label %.lr.ph.i.i.i.i.i223.preheader

.lr.ph.i.i.i.i.i223.preheader:                    ; preds = %.noexc232
  %i.jo = add i64 %i.jb, -8
  %i.jp = sub i64 %i.jo, %i.jc                    ; 3 uses
  %i.jq = lshr i64 %i.jp, 3
  %i.jr = add nuw nsw i64 %i.jq, 1                ; 2 uses
  %min.iters.check2568 = icmp ult i64 %i.jp, 136
  br i1 %min.iters.check2568, label %.lr.ph.i.i.i.i.i223.preheader3231, label %vector.memcheck2569

vector.memcheck2569:                              ; preds = %.lr.ph.i.i.i.i.i223.preheader
  %i.js = and i64 %i.jp, -8
  %i.jt = add i64 %i.js, 8                        ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jm, i64 %i.jt
  %i.jv = getelementptr i8, ptr %.val.i.i219, i64 %i.jt
  %bound02570 = icmp ult ptr %i.jm, %i.jv
  %bound12571 = icmp ult ptr %.val.i.i219, %i.ju
  %found.conflict2572 = and i1 %bound02570, %bound12571
  br i1 %found.conflict2572, label %.lr.ph.i.i.i.i.i223.preheader3231, label %vector.ph2573

vector.ph2573:                                    ; preds = %vector.memcheck2569
  %n.vec2574 = and i64 %i.jr, 4611686018427387900 ; 3 uses
  %i.jw = shl i64 %n.vec2574, 3                   ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jm, i64 %i.jw  ; 2 uses
  %i.jy = getelementptr i8, ptr %.val.i.i219, i64 %i.jw
  br label %vector.body2575

vector.body2575:                                  ; preds = %vector.body2575, %vector.ph2573
  %index2576 = phi i64 [ 0, %vector.ph2573 ], [ %index.next2581, %vector.body2575 ] ; 2 uses
  %i.jz = shl i64 %index2576, 3                   ; 2 uses
  %next.gep2577 = getelementptr i8, ptr %i.jm, i64 %i.jz ; 2 uses
  %next.gep2578 = getelementptr i8, ptr %.val.i.i219, i64 %i.jz ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11039)
  call void @llvm.experimental.noalias.scope.decl(metadata !11040)
  %i.ka = getelementptr i8, ptr %next.gep2578, i64 16 ; 2 uses
  %wide.load2579 = load <2 x i64>, ptr %next.gep2578, align 8, !tbaa !466, !alias.scope !11041
  %wide.load2580 = load <2 x i64>, ptr %i.ka, align 8, !tbaa !466, !alias.scope !11041
  %i.kb = getelementptr i8, ptr %next.gep2577, i64 16
  store <2 x i64> %wide.load2579, ptr %next.gep2577, align 8, !tbaa !466, !alias.scope !11042, !noalias !11043
  store <2 x i64> %wide.load2580, ptr %i.kb, align 8, !tbaa !466, !alias.scope !11042, !noalias !11043
  store <2 x ptr> splat (ptr null), ptr %next.gep2578, align 8, !tbaa !466, !alias.scope !11041
  store <2 x ptr> splat (ptr null), ptr %i.ka, align 8, !tbaa !466, !alias.scope !11041
  %index.next2581 = add nuw i64 %index2576, 4     ; 2 uses
  %i.kc = icmp eq i64 %index.next2581, %n.vec2574
  br i1 %i.kc, label %middle.block2582, label %vector.body2575, !llvm.loop !10751

middle.block2582:                                 ; preds = %vector.body2575
  %cmp.n2583 = icmp eq i64 %i.jr, %n.vec2574
  br i1 %cmp.n2583, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i228, label %.lr.ph.i.i.i.i.i223.preheader3231

.lr.ph.i.i.i.i.i223.preheader3231:                ; preds = %vector.memcheck2569, %.lr.ph.i.i.i.i.i223.preheader, %middle.block2582
  %.03.i.i.i.i.i224.ph = phi ptr [ %i.jm, %vector.memcheck2569 ], [ %i.jm, %.lr.ph.i.i.i.i.i223.preheader ], [ %i.jx, %middle.block2582 ]
  %.092.i.i.i.i.i225.ph = phi ptr [ %.val.i.i219, %vector.memcheck2569 ], [ %.val.i.i219, %.lr.ph.i.i.i.i.i223.preheader ], [ %i.jy, %middle.block2582 ]
  br label %.lr.ph.i.i.i.i.i223

.lr.ph.i.i.i.i.i223:                              ; preds = %.lr.ph.i.i.i.i.i223.preheader3231, %.lr.ph.i.i.i.i.i223
  %.03.i.i.i.i.i224 = phi ptr [ %i.ke, %.lr.ph.i.i.i.i.i223 ], [ %.03.i.i.i.i.i224.ph, %.lr.ph.i.i.i.i.i223.preheader3231 ] ; 2 uses
  %.092.i.i.i.i.i225 = phi ptr [ %i.kd, %.lr.ph.i.i.i.i.i223 ], [ %.092.i.i.i.i.i225.ph, %.lr.ph.i.i.i.i.i223.preheader3231 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11039)
  call void @llvm.experimental.noalias.scope.decl(metadata !11040)
  %.val.i.i.i.i.i.i.i.i.i.i226 = load i64, ptr %.092.i.i.i.i.i225, align 8, !tbaa !466, !alias.scope !11040
  store i64 %.val.i.i.i.i.i.i.i.i.i.i226, ptr %.03.i.i.i.i.i224, align 8, !tbaa !466, !alias.scope !11039
  store ptr null, ptr %.092.i.i.i.i.i225, align 8, !tbaa !466, !alias.scope !11040
  %i.kd = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i225, i64 8 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i224, i64 8 ; 2 uses
  %.not.i.i.i.i.i227 = icmp eq ptr %i.kd, %i.ix
  br i1 %.not.i.i.i.i.i227, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i228, label %.lr.ph.i.i.i.i.i223, !llvm.loop !10752

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i228: ; preds = %.lr.ph.i.i.i.i.i223, %middle.block2582, %.noexc232
  %.0.lcssa.i.i.i.i.i229 = phi ptr [ %i.jm, %.noexc232 ], [ %i.jx, %middle.block2582 ], [ %i.ke, %.lr.ph.i.i.i.i.i223 ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i229, i64 8
  %.not.i28.i.i230 = icmp eq ptr %.val.i.i219, null
  br i1 %.not.i28.i.i230, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19ComparisonValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i228
  %i.kg = load ptr, ptr %i.iy, align 8, !tbaa !8351
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = sub i64 %i.kh, %i.jc
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i219, i64 noundef %i.ki) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19ComparisonValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19ComparisonValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.bt, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i228
  store ptr %i.jm, ptr %i.im, align 8, !tbaa !8354
  store ptr %i.kf, ptr %i.iw, align 8, !tbaa !8350
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jk
  store ptr %i.kj, ptr %i.iy, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.bq, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19ComparisonValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %bb.bv

bb.bu:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i220, %bb.bs
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %common.resume

bb.bv:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorESt14default_deleteIS3_EED2Ev.exit, %bb.bk
  %i.kl = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.40, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 7)) ; 2 uses
  %.not157 = icmp eq ptr %i.kl, null
  br i1 %.not157, label %bb.cg, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  %i.kn = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.41, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.41, i64 16)) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11044)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.ko = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #46, !noalias !11044 ; 8 uses
  invoke void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(40) %i.kl)
          to label %bb.bx unwind label %bb.ca, !noalias !11044

bb.bx:                                            ; preds = %bb.bw
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorE, i64 16), ptr %i.ko, align 8, !tbaa !436, !noalias !11044
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.kp, ptr noundef nonnull align 8 dereferenceable(40) %19) #23, !noalias !11044
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 48 ; 2 uses
  store i8 0, ptr %i.kq, align 8, !tbaa !8359, !noalias !11044
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 52
  store i32 0, ptr %i.kr, align 4, !tbaa !8360, !noalias !11044
  %.not.i.i234 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i234, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorEJRKNS0_7dynamicEPS5_NS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit236, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ks = load i32, ptr %i.kn, align 8, !tbaa !8338, !noalias !11044
  %.not.i.i.i.i.i235 = icmp eq i32 %i.ks, 2
  br i1 %.not.i.i.i.i.i235, label %bb.bz, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorEJRKNS0_7dynamicEPS5_NS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit236

bb.bz:                                            ; preds = %bb.by
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.ku = load i8, ptr %i.kt, align 8, !tbaa !651, !range !629, !noalias !11044, !noundef !530
  store i8 %i.ku, ptr %i.kq, align 8, !tbaa !8359, !noalias !11044
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorEJRKNS0_7dynamicEPS5_NS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit236

bb.ca:                                            ; preds = %bb.bw
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ko, i64 noundef 56) #47, !noalias !11044
  br label %common.resume

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorEJRKNS0_7dynamicEPS5_NS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit236: ; preds = %bb.bx, %bb.by, %bb.bz
  store ptr %i.ko, ptr %28, align 8, !tbaa !8362, !alias.scope !11044
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %19) #23, !noalias !11044
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !8350 ; 6 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !8351
  %.not.i237 = icmp eq ptr %i.kx, %i.kz
  br i1 %.not.i237, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorEJRKNS0_7dynamicEPS5_NS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit236
  store ptr %i.ko, ptr %i.kx, align 8, !tbaa !8353
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store ptr %i.la, ptr %i.kw, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorESt14default_deleteIS3_EED2Ev.exit256

bb.cc:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorEJRKNS0_7dynamicEPS5_NS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit236
  %.val.i.i238 = load ptr, ptr %i.km, align 8, !tbaa !8354 ; 10 uses
  %i.lb = ptrtoint ptr %i.kx to i64               ; 2 uses
  %i.lc = ptrtoint ptr %.val.i.i238 to i64        ; 3 uses
  %i.ld = sub i64 %i.lb, %i.lc                    ; 3 uses
  %i.le = icmp eq i64 %i.ld, 9223372036854775800
  br i1 %i.le, label %bb.cd, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i239

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc251 unwind label %bb.cf

.noexc251:                                        ; preds = %bb.cd
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i239: ; preds = %bb.cc
  %i.lf = ashr exact i64 %i.ld, 3                 ; 3 uses
  %i.lg = icmp eq ptr %i.kx, %.val.i.i238         ; 2 uses
  %.sroa.speculated.i.i.i240 = select i1 %i.lg, i64 1, i64 %i.lf
  %i.lh = add nsw i64 %.sroa.speculated.i.i.i240, %i.lf ; 2 uses
  %i.li = icmp ult i64 %i.lh, %i.lf
  %i.lj = call i64 @llvm.umin.i64(i64 %i.lh, i64 1152921504606846975)
  %i.lk = select i1 %i.li, i64 1152921504606846975, i64 %i.lj ; 3 uses
  %.not.i.i.i241 = icmp ne i64 %i.lk, 0
  call void @llvm.assume(i1 %.not.i.i.i241)
  %i.ll = shl nuw nsw i64 %i.lk, 3
  %i.lm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ll) #46
          to label %.noexc252 unwind label %bb.cf ; 10 uses

.noexc252:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i239
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.ld
  store ptr %i.ko, ptr %i.ln, align 8, !tbaa !8353
  br i1 %i.lg, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i247, label %.lr.ph.i.i.i.i.i242.preheader

.lr.ph.i.i.i.i.i242.preheader:                    ; preds = %.noexc252
  %i.lo = add i64 %i.lb, -8
  %i.lp = sub i64 %i.lo, %i.lc                    ; 3 uses
  %i.lq = lshr i64 %i.lp, 3
  %i.lr = add nuw nsw i64 %i.lq, 1                ; 2 uses
  %min.iters.check2592 = icmp ult i64 %i.lp, 136
  br i1 %min.iters.check2592, label %.lr.ph.i.i.i.i.i242.preheader3229, label %vector.memcheck2593

vector.memcheck2593:                              ; preds = %.lr.ph.i.i.i.i.i242.preheader
  %i.ls = and i64 %i.lp, -8
  %i.lt = add i64 %i.ls, 8                        ; 2 uses
  %i.lu = getelementptr i8, ptr %i.lm, i64 %i.lt
  %i.lv = getelementptr i8, ptr %.val.i.i238, i64 %i.lt
  %bound02594 = icmp ult ptr %i.lm, %i.lv
  %bound12595 = icmp ult ptr %.val.i.i238, %i.lu
  %found.conflict2596 = and i1 %bound02594, %bound12595
  br i1 %found.conflict2596, label %.lr.ph.i.i.i.i.i242.preheader3229, label %vector.ph2597

vector.ph2597:                                    ; preds = %vector.memcheck2593
  %n.vec2598 = and i64 %i.lr, 4611686018427387900 ; 3 uses
  %i.lw = shl i64 %n.vec2598, 3                   ; 2 uses
  %i.lx = getelementptr i8, ptr %i.lm, i64 %i.lw  ; 2 uses
  %i.ly = getelementptr i8, ptr %.val.i.i238, i64 %i.lw
  br label %vector.body2599

vector.body2599:                                  ; preds = %vector.body2599, %vector.ph2597
  %index2600 = phi i64 [ 0, %vector.ph2597 ], [ %index.next2605, %vector.body2599 ] ; 2 uses
  %i.lz = shl i64 %index2600, 3                   ; 2 uses
  %next.gep2601 = getelementptr i8, ptr %i.lm, i64 %i.lz ; 2 uses
  %next.gep2602 = getelementptr i8, ptr %.val.i.i238, i64 %i.lz ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11045)
  call void @llvm.experimental.noalias.scope.decl(metadata !11046)
  %i.ma = getelementptr i8, ptr %next.gep2602, i64 16 ; 2 uses
  %wide.load2603 = load <2 x i64>, ptr %next.gep2602, align 8, !tbaa !466, !alias.scope !11047
  %wide.load2604 = load <2 x i64>, ptr %i.ma, align 8, !tbaa !466, !alias.scope !11047
  %i.mb = getelementptr i8, ptr %next.gep2601, i64 16
  store <2 x i64> %wide.load2603, ptr %next.gep2601, align 8, !tbaa !466, !alias.scope !11048, !noalias !11049
  store <2 x i64> %wide.load2604, ptr %i.mb, align 8, !tbaa !466, !alias.scope !11048, !noalias !11049
  store <2 x ptr> splat (ptr null), ptr %next.gep2602, align 8, !tbaa !466, !alias.scope !11047
  store <2 x ptr> splat (ptr null), ptr %i.ma, align 8, !tbaa !466, !alias.scope !11047
  %index.next2605 = add nuw i64 %index2600, 4     ; 2 uses
  %i.mc = icmp eq i64 %index.next2605, %n.vec2598
  br i1 %i.mc, label %middle.block2606, label %vector.body2599, !llvm.loop !10761

middle.block2606:                                 ; preds = %vector.body2599
  %cmp.n2607 = icmp eq i64 %i.lr, %n.vec2598
  br i1 %cmp.n2607, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i247, label %.lr.ph.i.i.i.i.i242.preheader3229

.lr.ph.i.i.i.i.i242.preheader3229:                ; preds = %vector.memcheck2593, %.lr.ph.i.i.i.i.i242.preheader, %middle.block2606
  %.03.i.i.i.i.i243.ph = phi ptr [ %i.lm, %vector.memcheck2593 ], [ %i.lm, %.lr.ph.i.i.i.i.i242.preheader ], [ %i.lx, %middle.block2606 ]
  %.092.i.i.i.i.i244.ph = phi ptr [ %.val.i.i238, %vector.memcheck2593 ], [ %.val.i.i238, %.lr.ph.i.i.i.i.i242.preheader ], [ %i.ly, %middle.block2606 ]
  br label %.lr.ph.i.i.i.i.i242

.lr.ph.i.i.i.i.i242:                              ; preds = %.lr.ph.i.i.i.i.i242.preheader3229, %.lr.ph.i.i.i.i.i242
  %.03.i.i.i.i.i243 = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i242 ], [ %.03.i.i.i.i.i243.ph, %.lr.ph.i.i.i.i.i242.preheader3229 ] ; 2 uses
  %.092.i.i.i.i.i244 = phi ptr [ %i.md, %.lr.ph.i.i.i.i.i242 ], [ %.092.i.i.i.i.i244.ph, %.lr.ph.i.i.i.i.i242.preheader3229 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11045)
  call void @llvm.experimental.noalias.scope.decl(metadata !11046)
  %.val.i.i.i.i.i.i.i.i.i.i245 = load i64, ptr %.092.i.i.i.i.i244, align 8, !tbaa !466, !alias.scope !11046
  store i64 %.val.i.i.i.i.i.i.i.i.i.i245, ptr %.03.i.i.i.i.i243, align 8, !tbaa !466, !alias.scope !11045
  store ptr null, ptr %.092.i.i.i.i.i244, align 8, !tbaa !466, !alias.scope !11046
  %i.md = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i244, i64 8 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i243, i64 8 ; 2 uses
  %.not.i.i.i.i.i246 = icmp eq ptr %i.md, %i.kx
  br i1 %.not.i.i.i.i.i246, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i247, label %.lr.ph.i.i.i.i.i242, !llvm.loop !10762

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i247: ; preds = %.lr.ph.i.i.i.i.i242, %middle.block2606, %.noexc252
  %.0.lcssa.i.i.i.i.i248 = phi ptr [ %i.lm, %.noexc252 ], [ %i.lx, %middle.block2606 ], [ %i.me, %.lr.ph.i.i.i.i.i242 ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i248, i64 8
  %.not.i28.i.i249 = icmp eq ptr %.val.i.i238, null
  br i1 %.not.i28.i.i249, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19ComparisonValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i250, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i247
  %i.mg = load ptr, ptr %i.ky, align 8, !tbaa !8351
  %i.mh = ptrtoint ptr %i.mg to i64
  %i.mi = sub i64 %i.mh, %i.lc
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i238, i64 noundef %i.mi) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19ComparisonValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i250

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19ComparisonValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i250: ; preds = %bb.ce, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i247
  store ptr %i.lm, ptr %i.km, align 8, !tbaa !8354
  store ptr %i.mf, ptr %i.kw, align 8, !tbaa !8350
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.lk
  store ptr %i.mj, ptr %i.ky, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorESt14default_deleteIS3_EED2Ev.exit256

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorESt14default_deleteIS3_EED2Ev.exit256: ; preds = %bb.cb, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19ComparisonValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %bb.cg

bb.cf:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i239, %bb.cd
  %i.mk = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %common.resume

bb.cg:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119ComparisonValidatorESt14default_deleteIS3_EED2Ev.exit256, %bb.bv
  %i.ml = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.42, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 9)) ; 3 uses
  %.not158 = icmp eq ptr %i.ml, null
  br i1 %.not158, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mn = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #46, !noalias !11050 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEE, i64 16), ptr %i.mn, align 8, !tbaa !436, !noalias !11050
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 2 uses
  store i64 -1, ptr %i.mo, align 8, !tbaa !8364, !noalias !11050
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  store i32 6, ptr %i.mp, align 8, !tbaa !8365, !noalias !11050
  %i.mq = load i32, ptr %i.ml, align 8, !tbaa !8338, !noalias !11050
  %.not.i.i.i.i.i257 = icmp eq i32 %i.mq, 4
  br i1 %.not.i.i.i.i.i257, label %bb.ci, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.ci:                                            ; preds = %bb.ch
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !650, !noalias !11050
  store i64 %i.ms, ptr %i.mo, align 8, !tbaa !8364, !noalias !11050
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.ch, %bb.ci
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !8350 ; 6 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !8351
  %.not.i258 = icmp eq ptr %i.mu, %i.mw
  br i1 %.not.i258, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.mn, ptr %i.mu, align 8, !tbaa !8353
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  store ptr %i.mx, ptr %i.mt, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit

bb.ck:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i259 = load ptr, ptr %i.mm, align 8, !tbaa !8354 ; 10 uses
  %i.my = ptrtoint ptr %i.mu to i64               ; 2 uses
  %i.mz = ptrtoint ptr %.val.i.i259 to i64        ; 3 uses
  %i.na = sub i64 %i.my, %i.mz                    ; 3 uses
  %i.nb = icmp eq i64 %i.na, 9223372036854775800
  br i1 %i.nb, label %bb.cl, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i260

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc271 unwind label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit276

.noexc271:                                        ; preds = %bb.cl
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i260: ; preds = %bb.ck
  %i.nc = ashr exact i64 %i.na, 3                 ; 3 uses
  %i.nd = icmp eq ptr %i.mu, %.val.i.i259         ; 2 uses
  %.sroa.speculated.i.i.i261 = select i1 %i.nd, i64 1, i64 %i.nc
  %i.ne = add nsw i64 %.sroa.speculated.i.i.i261, %i.nc ; 2 uses
  %i.nf = icmp ult i64 %i.ne, %i.nc
  %i.ng = call i64 @llvm.umin.i64(i64 %i.ne, i64 1152921504606846975)
  %i.nh = select i1 %i.nf, i64 1152921504606846975, i64 %i.ng ; 3 uses
  %.not.i.i.i262 = icmp ne i64 %i.nh, 0
  call void @llvm.assume(i1 %.not.i.i.i262)
  %i.ni = shl nuw nsw i64 %i.nh, 3
  %i.nj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ni) #46
          to label %.noexc272 unwind label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit276 ; 10 uses

.noexc272:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i260
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.na
  store ptr %i.mn, ptr %i.nk, align 8, !tbaa !8353
  br i1 %i.nd, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i268, label %.lr.ph.i.i.i.i.i263.preheader

.lr.ph.i.i.i.i.i263.preheader:                    ; preds = %.noexc272
  %i.nl = add i64 %i.my, -8
  %i.nm = sub i64 %i.nl, %i.mz                    ; 3 uses
  %i.nn = lshr i64 %i.nm, 3
  %i.no = add nuw nsw i64 %i.nn, 1                ; 2 uses
  %min.iters.check2616 = icmp ult i64 %i.nm, 136
  br i1 %min.iters.check2616, label %.lr.ph.i.i.i.i.i263.preheader3227, label %vector.memcheck2617

vector.memcheck2617:                              ; preds = %.lr.ph.i.i.i.i.i263.preheader
  %i.np = and i64 %i.nm, -8
  %i.nq = add i64 %i.np, 8                        ; 2 uses
  %i.nr = getelementptr i8, ptr %i.nj, i64 %i.nq
  %i.ns = getelementptr i8, ptr %.val.i.i259, i64 %i.nq
  %bound02618 = icmp ult ptr %i.nj, %i.ns
  %bound12619 = icmp ult ptr %.val.i.i259, %i.nr
  %found.conflict2620 = and i1 %bound02618, %bound12619
  br i1 %found.conflict2620, label %.lr.ph.i.i.i.i.i263.preheader3227, label %vector.ph2621

vector.ph2621:                                    ; preds = %vector.memcheck2617
  %n.vec2622 = and i64 %i.no, 4611686018427387900 ; 3 uses
  %i.nt = shl i64 %n.vec2622, 3                   ; 2 uses
  %i.nu = getelementptr i8, ptr %i.nj, i64 %i.nt  ; 2 uses
  %i.nv = getelementptr i8, ptr %.val.i.i259, i64 %i.nt
  br label %vector.body2623

vector.body2623:                                  ; preds = %vector.body2623, %vector.ph2621
  %index2624 = phi i64 [ 0, %vector.ph2621 ], [ %index.next2629, %vector.body2623 ] ; 2 uses
  %i.nw = shl i64 %index2624, 3                   ; 2 uses
  %next.gep2625 = getelementptr i8, ptr %i.nj, i64 %i.nw ; 2 uses
  %next.gep2626 = getelementptr i8, ptr %.val.i.i259, i64 %i.nw ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11051)
  call void @llvm.experimental.noalias.scope.decl(metadata !11052)
  %i.nx = getelementptr i8, ptr %next.gep2626, i64 16 ; 2 uses
  %wide.load2627 = load <2 x i64>, ptr %next.gep2626, align 8, !tbaa !466, !alias.scope !11053
  %wide.load2628 = load <2 x i64>, ptr %i.nx, align 8, !tbaa !466, !alias.scope !11053
  %i.ny = getelementptr i8, ptr %next.gep2625, i64 16
  store <2 x i64> %wide.load2627, ptr %next.gep2625, align 8, !tbaa !466, !alias.scope !11054, !noalias !11055
  store <2 x i64> %wide.load2628, ptr %i.ny, align 8, !tbaa !466, !alias.scope !11054, !noalias !11055
  store <2 x ptr> splat (ptr null), ptr %next.gep2626, align 8, !tbaa !466, !alias.scope !11053
  store <2 x ptr> splat (ptr null), ptr %i.nx, align 8, !tbaa !466, !alias.scope !11053
  %index.next2629 = add nuw i64 %index2624, 4     ; 2 uses
  %i.nz = icmp eq i64 %index.next2629, %n.vec2622
  br i1 %i.nz, label %middle.block2630, label %vector.body2623, !llvm.loop !10771

middle.block2630:                                 ; preds = %vector.body2623
  %cmp.n2631 = icmp eq i64 %i.no, %n.vec2622
  br i1 %cmp.n2631, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i268, label %.lr.ph.i.i.i.i.i263.preheader3227

.lr.ph.i.i.i.i.i263.preheader3227:                ; preds = %vector.memcheck2617, %.lr.ph.i.i.i.i.i263.preheader, %middle.block2630
  %.03.i.i.i.i.i264.ph = phi ptr [ %i.nj, %vector.memcheck2617 ], [ %i.nj, %.lr.ph.i.i.i.i.i263.preheader ], [ %i.nu, %middle.block2630 ]
  %.092.i.i.i.i.i265.ph = phi ptr [ %.val.i.i259, %vector.memcheck2617 ], [ %.val.i.i259, %.lr.ph.i.i.i.i.i263.preheader ], [ %i.nv, %middle.block2630 ]
  br label %.lr.ph.i.i.i.i.i263

.lr.ph.i.i.i.i.i263:                              ; preds = %.lr.ph.i.i.i.i.i263.preheader3227, %.lr.ph.i.i.i.i.i263
  %.03.i.i.i.i.i264 = phi ptr [ %i.ob, %.lr.ph.i.i.i.i.i263 ], [ %.03.i.i.i.i.i264.ph, %.lr.ph.i.i.i.i.i263.preheader3227 ] ; 2 uses
  %.092.i.i.i.i.i265 = phi ptr [ %i.oa, %.lr.ph.i.i.i.i.i263 ], [ %.092.i.i.i.i.i265.ph, %.lr.ph.i.i.i.i.i263.preheader3227 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11051)
  call void @llvm.experimental.noalias.scope.decl(metadata !11052)
  %.val.i.i.i.i.i.i.i.i.i.i266 = load i64, ptr %.092.i.i.i.i.i265, align 8, !tbaa !466, !alias.scope !11052
  store i64 %.val.i.i.i.i.i.i.i.i.i.i266, ptr %.03.i.i.i.i.i264, align 8, !tbaa !466, !alias.scope !11051
  store ptr null, ptr %.092.i.i.i.i.i265, align 8, !tbaa !466, !alias.scope !11052
  %i.oa = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i265, i64 8 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i264, i64 8 ; 2 uses
  %.not.i.i.i.i.i267 = icmp eq ptr %i.oa, %i.mu
  br i1 %.not.i.i.i.i.i267, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i268, label %.lr.ph.i.i.i.i.i263, !llvm.loop !10772

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i268: ; preds = %.lr.ph.i.i.i.i.i263, %middle.block2630, %.noexc272
  %.0.lcssa.i.i.i.i.i269 = phi ptr [ %i.nj, %.noexc272 ], [ %i.nu, %middle.block2630 ], [ %i.ob, %.lr.ph.i.i.i.i.i263 ]
  %i.oc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i269, i64 8
  %.not.i28.i.i270 = icmp eq ptr %.val.i.i259, null
  br i1 %.not.i28.i.i270, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt13greater_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i268
  %i.od = load ptr, ptr %i.mv, align 8, !tbaa !8351
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = sub i64 %i.oe, %i.mz
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i259, i64 noundef %i.of) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt13greater_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt13greater_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.cm, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i268
  store ptr %i.nj, ptr %i.mm, align 8, !tbaa !8354
  store ptr %i.oc, ptr %i.mt, align 8, !tbaa !8350
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.nh
  store ptr %i.og, ptr %i.mv, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit276: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i260, %bb.cl
  %i.oh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.mn, i64 noundef 24) #47
  br label %common.resume

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt13greater_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.cj, %bb.cg
  %i.oi = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.43, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 9)) ; 3 uses
  %.not159 = icmp eq ptr %i.oi, null
  br i1 %.not159, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ok = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #46, !noalias !11056 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEE, i64 16), ptr %i.ok, align 8, !tbaa !436, !noalias !11056
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8 ; 2 uses
  store i64 -1, ptr %i.ol, align 8, !tbaa !8367, !noalias !11056
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  store i32 6, ptr %i.om, align 8, !tbaa !8368, !noalias !11056
  %i.on = load i32, ptr %i.oi, align 8, !tbaa !8338, !noalias !11056
  %.not.i.i.i.i.i277 = icmp eq i32 %i.on, 4
  br i1 %.not.i.i.i.i.i277, label %bb.co, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.co:                                            ; preds = %bb.cn
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !650, !noalias !11056
  store i64 %i.op, ptr %i.ol, align 8, !tbaa !8367, !noalias !11056
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.cn, %bb.co
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !8350 ; 6 uses
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !8351
  %.not.i278 = icmp eq ptr %i.or, %i.ot
  br i1 %.not.i278, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.ok, ptr %i.or, align 8, !tbaa !8353
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  store ptr %i.ou, ptr %i.oq, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit

bb.cq:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i279 = load ptr, ptr %i.oj, align 8, !tbaa !8354 ; 10 uses
  %i.ov = ptrtoint ptr %i.or to i64               ; 2 uses
  %i.ow = ptrtoint ptr %.val.i.i279 to i64        ; 3 uses
  %i.ox = sub i64 %i.ov, %i.ow                    ; 3 uses
  %i.oy = icmp eq i64 %i.ox, 9223372036854775800
  br i1 %i.oy, label %bb.cr, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i280

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc291 unwind label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit296

.noexc291:                                        ; preds = %bb.cr
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i280: ; preds = %bb.cq
  %i.oz = ashr exact i64 %i.ox, 3                 ; 3 uses
  %i.pa = icmp eq ptr %i.or, %.val.i.i279         ; 2 uses
  %.sroa.speculated.i.i.i281 = select i1 %i.pa, i64 1, i64 %i.oz
  %i.pb = add nsw i64 %.sroa.speculated.i.i.i281, %i.oz ; 2 uses
  %i.pc = icmp ult i64 %i.pb, %i.oz
  %i.pd = call i64 @llvm.umin.i64(i64 %i.pb, i64 1152921504606846975)
  %i.pe = select i1 %i.pc, i64 1152921504606846975, i64 %i.pd ; 3 uses
  %.not.i.i.i282 = icmp ne i64 %i.pe, 0
  call void @llvm.assume(i1 %.not.i.i.i282)
  %i.pf = shl nuw nsw i64 %i.pe, 3
  %i.pg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pf) #46
          to label %.noexc292 unwind label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit296 ; 10 uses

.noexc292:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i280
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.ox
  store ptr %i.ok, ptr %i.ph, align 8, !tbaa !8353
  br i1 %i.pa, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i288, label %.lr.ph.i.i.i.i.i283.preheader

.lr.ph.i.i.i.i.i283.preheader:                    ; preds = %.noexc292
  %i.pi = add i64 %i.ov, -8
  %i.pj = sub i64 %i.pi, %i.ow                    ; 3 uses
  %i.pk = lshr i64 %i.pj, 3
  %i.pl = add nuw nsw i64 %i.pk, 1                ; 2 uses
  %min.iters.check2640 = icmp ult i64 %i.pj, 136
  br i1 %min.iters.check2640, label %.lr.ph.i.i.i.i.i283.preheader3225, label %vector.memcheck2641

vector.memcheck2641:                              ; preds = %.lr.ph.i.i.i.i.i283.preheader
  %i.pm = and i64 %i.pj, -8
  %i.pn = add i64 %i.pm, 8                        ; 2 uses
  %i.po = getelementptr i8, ptr %i.pg, i64 %i.pn
  %i.pp = getelementptr i8, ptr %.val.i.i279, i64 %i.pn
  %bound02642 = icmp ult ptr %i.pg, %i.pp
  %bound12643 = icmp ult ptr %.val.i.i279, %i.po
  %found.conflict2644 = and i1 %bound02642, %bound12643
  br i1 %found.conflict2644, label %.lr.ph.i.i.i.i.i283.preheader3225, label %vector.ph2645

vector.ph2645:                                    ; preds = %vector.memcheck2641
  %n.vec2646 = and i64 %i.pl, 4611686018427387900 ; 3 uses
  %i.pq = shl i64 %n.vec2646, 3                   ; 2 uses
  %i.pr = getelementptr i8, ptr %i.pg, i64 %i.pq  ; 2 uses
  %i.ps = getelementptr i8, ptr %.val.i.i279, i64 %i.pq
  br label %vector.body2647

vector.body2647:                                  ; preds = %vector.body2647, %vector.ph2645
  %index2648 = phi i64 [ 0, %vector.ph2645 ], [ %index.next2653, %vector.body2647 ] ; 2 uses
  %i.pt = shl i64 %index2648, 3                   ; 2 uses
  %next.gep2649 = getelementptr i8, ptr %i.pg, i64 %i.pt ; 2 uses
  %next.gep2650 = getelementptr i8, ptr %.val.i.i279, i64 %i.pt ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11057)
  call void @llvm.experimental.noalias.scope.decl(metadata !11058)
  %i.pu = getelementptr i8, ptr %next.gep2650, i64 16 ; 2 uses
  %wide.load2651 = load <2 x i64>, ptr %next.gep2650, align 8, !tbaa !466, !alias.scope !11059
  %wide.load2652 = load <2 x i64>, ptr %i.pu, align 8, !tbaa !466, !alias.scope !11059
  %i.pv = getelementptr i8, ptr %next.gep2649, i64 16
  store <2 x i64> %wide.load2651, ptr %next.gep2649, align 8, !tbaa !466, !alias.scope !11060, !noalias !11061
  store <2 x i64> %wide.load2652, ptr %i.pv, align 8, !tbaa !466, !alias.scope !11060, !noalias !11061
  store <2 x ptr> splat (ptr null), ptr %next.gep2650, align 8, !tbaa !466, !alias.scope !11059
  store <2 x ptr> splat (ptr null), ptr %i.pu, align 8, !tbaa !466, !alias.scope !11059
  %index.next2653 = add nuw i64 %index2648, 4     ; 2 uses
  %i.pw = icmp eq i64 %index.next2653, %n.vec2646
  br i1 %i.pw, label %middle.block2654, label %vector.body2647, !llvm.loop !10781

middle.block2654:                                 ; preds = %vector.body2647
  %cmp.n2655 = icmp eq i64 %i.pl, %n.vec2646
  br i1 %cmp.n2655, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i288, label %.lr.ph.i.i.i.i.i283.preheader3225

.lr.ph.i.i.i.i.i283.preheader3225:                ; preds = %vector.memcheck2641, %.lr.ph.i.i.i.i.i283.preheader, %middle.block2654
  %.03.i.i.i.i.i284.ph = phi ptr [ %i.pg, %vector.memcheck2641 ], [ %i.pg, %.lr.ph.i.i.i.i.i283.preheader ], [ %i.pr, %middle.block2654 ]
  %.092.i.i.i.i.i285.ph = phi ptr [ %.val.i.i279, %vector.memcheck2641 ], [ %.val.i.i279, %.lr.ph.i.i.i.i.i283.preheader ], [ %i.ps, %middle.block2654 ]
  br label %.lr.ph.i.i.i.i.i283

.lr.ph.i.i.i.i.i283:                              ; preds = %.lr.ph.i.i.i.i.i283.preheader3225, %.lr.ph.i.i.i.i.i283
  %.03.i.i.i.i.i284 = phi ptr [ %i.py, %.lr.ph.i.i.i.i.i283 ], [ %.03.i.i.i.i.i284.ph, %.lr.ph.i.i.i.i.i283.preheader3225 ] ; 2 uses
  %.092.i.i.i.i.i285 = phi ptr [ %i.px, %.lr.ph.i.i.i.i.i283 ], [ %.092.i.i.i.i.i285.ph, %.lr.ph.i.i.i.i.i283.preheader3225 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11057)
  call void @llvm.experimental.noalias.scope.decl(metadata !11058)
  %.val.i.i.i.i.i.i.i.i.i.i286 = load i64, ptr %.092.i.i.i.i.i285, align 8, !tbaa !466, !alias.scope !11058
  store i64 %.val.i.i.i.i.i.i.i.i.i.i286, ptr %.03.i.i.i.i.i284, align 8, !tbaa !466, !alias.scope !11057
  store ptr null, ptr %.092.i.i.i.i.i285, align 8, !tbaa !466, !alias.scope !11058
  %i.px = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i285, i64 8 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i284, i64 8 ; 2 uses
  %.not.i.i.i.i.i287 = icmp eq ptr %i.px, %i.or
  br i1 %.not.i.i.i.i.i287, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i288, label %.lr.ph.i.i.i.i.i283, !llvm.loop !10782

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i288: ; preds = %.lr.ph.i.i.i.i.i283, %middle.block2654, %.noexc292
  %.0.lcssa.i.i.i.i.i289 = phi ptr [ %i.pg, %.noexc292 ], [ %i.pr, %middle.block2654 ], [ %i.py, %.lr.ph.i.i.i.i.i283 ]
  %i.pz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i289, i64 8
  %.not.i28.i.i290 = icmp eq ptr %.val.i.i279, null
  br i1 %.not.i28.i.i290, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt10less_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i288
  %i.qa = load ptr, ptr %i.os, align 8, !tbaa !8351
  %i.qb = ptrtoint ptr %i.qa to i64
  %i.qc = sub i64 %i.qb, %i.ow
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i279, i64 noundef %i.qc) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt10less_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt10less_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.cs, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i288
  store ptr %i.pg, ptr %i.oj, align 8, !tbaa !8354
  store ptr %i.pz, ptr %i.oq, align 8, !tbaa !8350
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %i.pe
  store ptr %i.qd, ptr %i.os, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit296: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i280, %bb.cr
  %i.qe = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ok, i64 noundef 24) #47
  br label %common.resume

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt10less_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.cp, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit
  %i.qf = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.44, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 7)) ; 4 uses
  %.not160 = icmp eq ptr %i.qf, null
  br i1 %.not160, label %bb.dq, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !11062)
  %i.qh = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #46, !noalias !11062 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorE, i64 16), ptr %i.qh, align 8, !tbaa !436, !noalias !11062
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qi, i8 0, i64 16, i1 false), !noalias !11062
  %i.qj = load i32, ptr %i.qf, align 8, !tbaa !8338, !noalias !11062
  %.not.i.i.i.i.i297 = icmp eq i32 %i.qj, 6
  br i1 %.not.i.i.i.i.i297, label %bb.cu, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23, !noalias !11062
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false), !noalias !11062
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !462, !noalias !11062 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !456, !noalias !11062
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qn
  %i.qp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9do_assignEPKcS7_j(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef %i.ql, ptr noundef %i.qo, i32 noundef 0)
          to label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EEj.exit.i.i unwind label %.body.i.i, !noalias !11062 ; 0 uses

_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EEj.exit.i.i: ; preds = %bb.cu
  %i.qq = load ptr, ptr %18, align 8, !tbaa !8371, !noalias !11062
  store ptr %i.qq, ptr %i.qi, align 8, !tbaa !8371, !noalias !11062
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qh, i64 16 ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !473, !noalias !11062 ; 5 uses
  %i.qu = load ptr, ptr %i.qr, align 8, !tbaa !473, !noalias !11062 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.qt, %i.qu
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEaSERKS5_.exit.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EEj.exit.i.i
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.qt, null
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 8 ; 3 uses
  %i.qw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !428, !noalias !11062
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.qw, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.qx = load i32, ptr %i.qv, align 4, !tbaa !542, !noalias !11062
  %i.qy = add nsw i32 %i.qx, 1
  store i32 %i.qy, ptr %i.qv, align 4, !tbaa !542, !noalias !11062
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i

bb.cy:                                            ; preds = %bb.cw
  %i.qz = atomicrmw volatile add ptr %i.qv, i32 1 acq_rel, align 4, !noalias !11062 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i = load ptr, ptr %i.qr, align 8, !tbaa !473, !noalias !11062
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i: ; preds = %bb.cy, %bb.cx, %bb.cv
  %i.ra = phi ptr [ %i.qu, %bb.cv ], [ %i.qu, %bb.cx ], [ %.pr.pre.i.i.i.i.i.i.i, %bb.cy ] ; 8 uses
  %.not8.i.i.i.i.i.i.i = icmp eq ptr %i.ra, null
  br i1 %.not8.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8 ; 4 uses
  %i.rc = load atomic i64, ptr %i.rb acquire, align 8, !noalias !11062 ; 2 uses
  %i.rd = icmp eq i64 %i.rc, 4294967297
  %i.re = trunc i64 %i.rc to i32                  ; 2 uses
  br i1 %i.rd, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  store i32 0, ptr %i.rb, align 8, !tbaa !475, !noalias !11062
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ra, i64 12
  store i32 0, ptr %i.rf, align 4, !tbaa !476, !noalias !11062
  %i.rg = load ptr, ptr %i.ra, align 8, !tbaa !436, !noalias !11062
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.ri = load ptr, ptr %i.rh, align 8, !noalias !11062
  call void %i.ri(ptr noundef nonnull align 8 dereferenceable(16) %i.ra) #23, !noalias !11062, !call_target !481, !inline_history !10785
  %i.rj = load ptr, ptr %i.ra, align 8, !tbaa !436, !noalias !11062
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %i.rl = load ptr, ptr %i.rk, align 8, !noalias !11062
  call void %i.rl(ptr noundef nonnull align 8 dereferenceable(16) %i.ra) #23, !noalias !11062, !call_target !496, !inline_history !10785
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i

bb.db:                                            ; preds = %bb.cz
  %i.rm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !428, !noalias !11062
  %.not.i9.i.i.i.i.i.i.i = icmp eq i8 %i.rm, 0
  br i1 %.not.i9.i.i.i.i.i.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.rn = add nsw i32 %i.re, -1
  store i32 %i.rn, ptr %i.rb, align 8, !tbaa !542, !noalias !11062
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.dd:                                            ; preds = %bb.db
  %i.ro = atomicrmw volatile add ptr %i.rb, i32 -1 acq_rel, align 4, !noalias !11062
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dd, %bb.dc
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.re, %bb.dc ], [ %i.ro, %bb.dd ]
  %i.rp = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.rp, label %bb.de, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i, !prof !425

bb.de:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ra) #23, !noalias !11062
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i: ; preds = %bb.de, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.da, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i
  store ptr %i.qt, ptr %i.qr, align 8, !tbaa !473, !noalias !11062
  %.pr.i.i = load ptr, ptr %i.qs, align 8, !tbaa !473, !noalias !11062
  br label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEaSERKS5_.exit.i.i

_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEaSERKS5_.exit.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i, %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EEj.exit.i.i
  %i.rq = phi ptr [ %.pr.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i ], [ %i.qt, %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EEj.exit.i.i ] ; 8 uses
  %.not.i.i.i6.i.i = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i6.i.i, label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i.i, label %bb.df

bb.df:                                            ; preds = %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEaSERKS5_.exit.i.i
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8 ; 4 uses
  %i.rs = load atomic i64, ptr %i.rr acquire, align 8, !noalias !11062 ; 2 uses
  %i.rt = icmp eq i64 %i.rs, 4294967297
  %i.ru = trunc i64 %i.rs to i32                  ; 2 uses
  br i1 %i.rt, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store i32 0, ptr %i.rr, align 8, !tbaa !475, !noalias !11062
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 12
  store i32 0, ptr %i.rv, align 4, !tbaa !476, !noalias !11062
  %i.rw = load ptr, ptr %i.rq, align 8, !tbaa !436, !noalias !11062
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %i.ry = load ptr, ptr %i.rx, align 8, !noalias !11062
  call void %i.ry(ptr noundef nonnull align 8 dereferenceable(16) %i.rq) #23, !noalias !11062, !call_target !481, !inline_history !10786
  %i.rz = load ptr, ptr %i.rq, align 8, !tbaa !436, !noalias !11062
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 24
  %i.sb = load ptr, ptr %i.sa, align 8, !noalias !11062
  call void %i.sb(ptr noundef nonnull align 8 dereferenceable(16) %i.rq) #23, !noalias !11062, !call_target !496, !inline_history !10786
  br label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i.i

bb.dh:                                            ; preds = %bb.df
  %i.sc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !428, !noalias !11062
  %.not.i.i.i.i.i.i = icmp eq i8 %i.sc, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.sd = add nsw i32 %i.ru, -1
  store i32 %i.sd, ptr %i.rr, align 8, !tbaa !542, !noalias !11062
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.dj:                                            ; preds = %bb.dh
  %i.se = atomicrmw volatile add ptr %i.rr, i32 -1 acq_rel, align 4, !noalias !11062
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.dj, %bb.di
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ru, %bb.di ], [ %i.se, %bb.dj ]
  %i.sf = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.sf, label %bb.dk, label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i.i, !prof !425

bb.dk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rq) #23, !noalias !11062
  br label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i.i

_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i.i: ; preds = %bb.dk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.dg, %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEaSERKS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23, !noalias !11062
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

.body.i.i:                                        ; preds = %bb.cu
  %i.sg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5boost13re_detail_50026basic_regex_implementationIcNS0_12regex_traitsIcNS0_16cpp_regex_traitsIcEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #23, !noalias !11062
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23, !noalias !11062
  call void @_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.qi) #23, !noalias !11062
  call void @_ZdlPvm(ptr noundef nonnull %i.qh, i64 noundef 24) #47, !noalias !11062
  br label %common.resume

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.ct, %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i.i
  store ptr %i.qh, ptr %29, align 8, !tbaa !8373, !alias.scope !11062
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !8350 ; 6 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !8351
  %.not.i298 = icmp eq ptr %i.si, %i.sk
  br i1 %.not.i298, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.qh, ptr %i.si, align 8, !tbaa !8353
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  store ptr %i.sl, ptr %i.sh, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorESt14default_deleteIS3_EED2Ev.exit

bb.dm:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i299 = load ptr, ptr %i.qg, align 8, !tbaa !8354 ; 10 uses
  %i.sm = ptrtoint ptr %i.si to i64               ; 2 uses
  %i.sn = ptrtoint ptr %.val.i.i299 to i64        ; 3 uses
  %i.so = sub i64 %i.sm, %i.sn                    ; 3 uses
  %i.sp = icmp eq i64 %i.so, 9223372036854775800
  br i1 %i.sp, label %bb.dn, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i300

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc311 unwind label %bb.dp

.noexc311:                                        ; preds = %bb.dn
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i300: ; preds = %bb.dm
  %i.sq = ashr exact i64 %i.so, 3                 ; 3 uses
  %i.sr = icmp eq ptr %i.si, %.val.i.i299         ; 2 uses
  %.sroa.speculated.i.i.i301 = select i1 %i.sr, i64 1, i64 %i.sq
  %i.ss = add nsw i64 %.sroa.speculated.i.i.i301, %i.sq ; 2 uses
  %i.st = icmp ult i64 %i.ss, %i.sq
  %i.su = call i64 @llvm.umin.i64(i64 %i.ss, i64 1152921504606846975)
  %i.sv = select i1 %i.st, i64 1152921504606846975, i64 %i.su ; 3 uses
  %.not.i.i.i302 = icmp ne i64 %i.sv, 0
  call void @llvm.assume(i1 %.not.i.i.i302)
  %i.sw = shl nuw nsw i64 %i.sv, 3
  %i.sx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sw) #46
          to label %.noexc312 unwind label %bb.dp ; 10 uses

.noexc312:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i300
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.so
  store ptr %i.qh, ptr %i.sy, align 8, !tbaa !8353
  br i1 %i.sr, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i308, label %.lr.ph.i.i.i.i.i303.preheader

.lr.ph.i.i.i.i.i303.preheader:                    ; preds = %.noexc312
  %i.sz = add i64 %i.sm, -8
  %i.ta = sub i64 %i.sz, %i.sn                    ; 3 uses
  %i.tb = lshr i64 %i.ta, 3
  %i.tc = add nuw nsw i64 %i.tb, 1                ; 2 uses
  %min.iters.check2664 = icmp ult i64 %i.ta, 136
  br i1 %min.iters.check2664, label %.lr.ph.i.i.i.i.i303.preheader3223, label %vector.memcheck2665

vector.memcheck2665:                              ; preds = %.lr.ph.i.i.i.i.i303.preheader
  %i.td = and i64 %i.ta, -8
  %i.te = add i64 %i.td, 8                        ; 2 uses
  %i.tf = getelementptr i8, ptr %i.sx, i64 %i.te
  %i.tg = getelementptr i8, ptr %.val.i.i299, i64 %i.te
  %bound02666 = icmp ult ptr %i.sx, %i.tg
  %bound12667 = icmp ult ptr %.val.i.i299, %i.tf
  %found.conflict2668 = and i1 %bound02666, %bound12667
  br i1 %found.conflict2668, label %.lr.ph.i.i.i.i.i303.preheader3223, label %vector.ph2669

vector.ph2669:                                    ; preds = %vector.memcheck2665
  %n.vec2670 = and i64 %i.tc, 4611686018427387900 ; 3 uses
  %i.th = shl i64 %n.vec2670, 3                   ; 2 uses
  %i.ti = getelementptr i8, ptr %i.sx, i64 %i.th  ; 2 uses
  %i.tj = getelementptr i8, ptr %.val.i.i299, i64 %i.th
  br label %vector.body2671

vector.body2671:                                  ; preds = %vector.body2671, %vector.ph2669
  %index2672 = phi i64 [ 0, %vector.ph2669 ], [ %index.next2677, %vector.body2671 ] ; 2 uses
  %i.tk = shl i64 %index2672, 3                   ; 2 uses
  %next.gep2673 = getelementptr i8, ptr %i.sx, i64 %i.tk ; 2 uses
  %next.gep2674 = getelementptr i8, ptr %.val.i.i299, i64 %i.tk ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11063)
  call void @llvm.experimental.noalias.scope.decl(metadata !11064)
  %i.tl = getelementptr i8, ptr %next.gep2674, i64 16 ; 2 uses
  %wide.load2675 = load <2 x i64>, ptr %next.gep2674, align 8, !tbaa !466, !alias.scope !11065
  %wide.load2676 = load <2 x i64>, ptr %i.tl, align 8, !tbaa !466, !alias.scope !11065
  %i.tm = getelementptr i8, ptr %next.gep2673, i64 16
  store <2 x i64> %wide.load2675, ptr %next.gep2673, align 8, !tbaa !466, !alias.scope !11066, !noalias !11067
  store <2 x i64> %wide.load2676, ptr %i.tm, align 8, !tbaa !466, !alias.scope !11066, !noalias !11067
  store <2 x ptr> splat (ptr null), ptr %next.gep2674, align 8, !tbaa !466, !alias.scope !11065
  store <2 x ptr> splat (ptr null), ptr %i.tl, align 8, !tbaa !466, !alias.scope !11065
  %index.next2677 = add nuw i64 %index2672, 4     ; 2 uses
  %i.tn = icmp eq i64 %index.next2677, %n.vec2670
  br i1 %i.tn, label %middle.block2678, label %vector.body2671, !llvm.loop !10793

middle.block2678:                                 ; preds = %vector.body2671
  %cmp.n2679 = icmp eq i64 %i.tc, %n.vec2670
  br i1 %cmp.n2679, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i308, label %.lr.ph.i.i.i.i.i303.preheader3223

.lr.ph.i.i.i.i.i303.preheader3223:                ; preds = %vector.memcheck2665, %.lr.ph.i.i.i.i.i303.preheader, %middle.block2678
  %.03.i.i.i.i.i304.ph = phi ptr [ %i.sx, %vector.memcheck2665 ], [ %i.sx, %.lr.ph.i.i.i.i.i303.preheader ], [ %i.ti, %middle.block2678 ]
  %.092.i.i.i.i.i305.ph = phi ptr [ %.val.i.i299, %vector.memcheck2665 ], [ %.val.i.i299, %.lr.ph.i.i.i.i.i303.preheader ], [ %i.tj, %middle.block2678 ]
  br label %.lr.ph.i.i.i.i.i303

.lr.ph.i.i.i.i.i303:                              ; preds = %.lr.ph.i.i.i.i.i303.preheader3223, %.lr.ph.i.i.i.i.i303
  %.03.i.i.i.i.i304 = phi ptr [ %i.tp, %.lr.ph.i.i.i.i.i303 ], [ %.03.i.i.i.i.i304.ph, %.lr.ph.i.i.i.i.i303.preheader3223 ] ; 2 uses
  %.092.i.i.i.i.i305 = phi ptr [ %i.to, %.lr.ph.i.i.i.i.i303 ], [ %.092.i.i.i.i.i305.ph, %.lr.ph.i.i.i.i.i303.preheader3223 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11063)
  call void @llvm.experimental.noalias.scope.decl(metadata !11064)
  %.val.i.i.i.i.i.i.i.i.i.i306 = load i64, ptr %.092.i.i.i.i.i305, align 8, !tbaa !466, !alias.scope !11064
  store i64 %.val.i.i.i.i.i.i.i.i.i.i306, ptr %.03.i.i.i.i.i304, align 8, !tbaa !466, !alias.scope !11063
  store ptr null, ptr %.092.i.i.i.i.i305, align 8, !tbaa !466, !alias.scope !11064
  %i.to = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i305, i64 8 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i304, i64 8 ; 2 uses
  %.not.i.i.i.i.i307 = icmp eq ptr %i.to, %i.si
  br i1 %.not.i.i.i.i.i307, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i308, label %.lr.ph.i.i.i.i.i303, !llvm.loop !10794

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i308: ; preds = %.lr.ph.i.i.i.i.i303, %middle.block2678, %.noexc312
  %.0.lcssa.i.i.i.i.i309 = phi ptr [ %i.sx, %.noexc312 ], [ %i.ti, %middle.block2678 ], [ %i.tp, %.lr.ph.i.i.i.i.i303 ]
  %i.tq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i309, i64 8
  %.not.i28.i.i310 = icmp eq ptr %.val.i.i299, null
  br i1 %.not.i28.i.i310, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_22StringPatternValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i308
  %i.tr = load ptr, ptr %i.sj, align 8, !tbaa !8351
  %i.ts = ptrtoint ptr %i.tr to i64
  %i.tt = sub i64 %i.ts, %i.sn
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i299, i64 noundef %i.tt) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_22StringPatternValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_22StringPatternValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.do, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i308
  store ptr %i.sx, ptr %i.qg, align 8, !tbaa !8354
  store ptr %i.tq, ptr %i.sh, align 8, !tbaa !8350
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.sx, i64 %i.sv
  store ptr %i.tu, ptr %i.sj, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.dl, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_22StringPatternValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %bb.dq

bb.dp:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i300, %bb.dn
  %i.tv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %common.resume

bb.dq:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_122StringPatternValidatorESt14default_deleteIS3_EED2Ev.exit, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit
  %i.tw = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.45, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.45, i64 5)) ; 5 uses
  %i.tx = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.46, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.46, i64 15)) ; 4 uses
  %i.ty = icmp ne ptr %i.tw, null                 ; 2 uses
  %i.tz = icmp ne ptr %i.tx, null                 ; 2 uses
  %or.cond = or i1 %i.ty, %i.tz
  br i1 %or.cond, label %bb.dr, label %bb.eq

bb.dr:                                            ; preds = %bb.dq
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  %i.ub = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #46, !noalias !11068, !inline_history !10797 ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorE, i64 16), ptr %i.ub, align 8, !tbaa !436, !noalias !11068
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8 ; 6 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 16 ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 40 ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ub, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.uc, i8 0, i64 40, i1 false)
  store i8 1, ptr %i.uf, align 8, !tbaa !8383, !noalias !11068
  br i1 %i.ty, label %bb.ds, label %.critedge.i

bb.ds:                                            ; preds = %bb.dr
  %i.ug = load i32, ptr %i.tw, align 8, !tbaa !8338, !noalias !11068
  switch i32 %i.ug, label %.critedge.i [
    i32 5, label %bb.dt
    i32 1, label %_ZNK5folly7dynamic3endEv.exit.i
  ]

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23, !noalias !11068
  call void @llvm.experimental.noalias.scope.decl(metadata !11069)
  %i.uh = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %.noexc.i unwind label %bb.dv  ; 6 uses

.noexc.i:                                         ; preds = %bb.dt
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 16), ptr %i.uh, align 8, !tbaa !436, !noalias !11070
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 72), ptr %i.ui, align 8, !tbaa !436, !noalias !11070
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uj, i8 0, i64 24, i1 false), !noalias !11070
  store ptr %i.uh, ptr %12, align 8, !tbaa !438, !alias.scope !11069, !noalias !11068
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.uh, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.tw)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i unwind label %bb.du, !noalias !11071, !inline_history !10802

bb.du:                                            ; preds = %.noexc.i
  %i.uk = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23, !noalias !11068, !inline_history !10802
  br label %.body.i667

_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i: ; preds = %.noexc.i
  %i.ul = load ptr, ptr %i.uc, align 8, !tbaa !466, !noalias !11068 ; 3 uses
  store ptr %i.uh, ptr %i.uc, align 8, !tbaa !466, !noalias !11068
  %.not.i.i.i36.i = icmp eq ptr %i.ul, null
  br i1 %.not.i.i.i36.i, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i669

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i669: ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !436, !noalias !11068
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.uo = load ptr, ptr %i.un, align 8, !noalias !11068
  call void %i.uo(ptr noundef nonnull align 8 dereferenceable(8) %i.ul) #23, !noalias !11068, !call_target !8388, !inline_history !10803
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i, %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i669
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !11068
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.dv:                                            ; preds = %bb.dt
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %.body.i667

.body.i667:                                       ; preds = %bb.dv, %bb.du
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.up, %bb.dv ], [ %i.uk, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !11068
  br label %bb.ek

_ZNK5folly7dynamic3endEv.exit.i:                  ; preds = %bb.ds
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !440, !noalias !11068 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !440, !noalias !11068 ; 2 uses
  %i.uu = icmp eq ptr %i.ur, %i.ut
  br i1 %i.uu, label %.loopexit1080, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5folly7dynamic3endEv.exit.i
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ub, i64 24 ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ub, i64 32 ; 3 uses
  br label %bb.dw

bb.dw:                                            ; preds = %.lr.ph, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit66.i
  %.sroa.0987.01209 = phi ptr [ %i.ur, %.lr.ph ], [ %i.wm, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit66.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23, !noalias !11068
  call void @llvm.experimental.noalias.scope.decl(metadata !11072)
  %i.ux = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %.noexc42.i unwind label %bb.ec ; 6 uses

.noexc42.i:                                       ; preds = %bb.dw
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 72)>, ptr %i.ux, align 8, !tbaa !436, !noalias !11073
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uy, i8 0, i64 24, i1 false), !noalias !11073
  store ptr %i.ux, ptr %13, align 8, !tbaa !438, !alias.scope !11072, !noalias !11068
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.ux, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0987.01209)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit45.i unwind label %bb.dx, !noalias !11074, !inline_history !10802

bb.dx:                                            ; preds = %.noexc42.i
  %i.uz = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #23, !noalias !11068, !inline_history !10802
  br label %bb.ed

_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit45.i: ; preds = %.noexc42.i
  %i.va = load ptr, ptr %i.uv, align 8, !tbaa !8350, !noalias !11068 ; 6 uses
  %i.vb = load ptr, ptr %i.uw, align 8, !tbaa !8351, !noalias !11068
  %.not.i46.i = icmp eq ptr %i.va, %i.vb
  br i1 %.not.i46.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit45.i
  store ptr %i.ux, ptr %i.va, align 8, !tbaa !8353, !noalias !11068
  %i.vc = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  store ptr %i.vc, ptr %i.uv, align 8, !tbaa !8350, !noalias !11068
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit66.i

bb.dz:                                            ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit45.i
  %.val.i.i.i = load ptr, ptr %i.ud, align 8, !tbaa !8354, !noalias !11068 ; 10 uses
  %i.vd = ptrtoint ptr %i.va to i64               ; 2 uses
  %i.ve = ptrtoint ptr %.val.i.i.i to i64         ; 3 uses
  %i.vf = sub i64 %i.vd, %i.ve                    ; 3 uses
  %i.vg = icmp eq i64 %i.vf, 9223372036854775800
  br i1 %i.vg, label %bb.ea, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ea:                                            ; preds = %bb.dz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc48.i unwind label %.loopexit.split-lp1082.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11068, !inline_history !10808

.noexc48.i:                                       ; preds = %bb.ea
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dz
  %i.vh = ashr exact i64 %i.vf, 3                 ; 3 uses
  %i.vi = icmp eq ptr %i.va, %.val.i.i.i          ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.vi, i64 1, i64 %i.vh
  %i.vj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.vh ; 2 uses
  %i.vk = icmp ult i64 %i.vj, %i.vh
  %i.vl = call i64 @llvm.umin.i64(i64 %i.vj, i64 1152921504606846975)
  %i.vm = select i1 %i.vk, i64 1152921504606846975, i64 %i.vl ; 3 uses
  %.not.i.i.i47.i = icmp ne i64 %i.vm, 0
  call void @llvm.assume(i1 %.not.i.i.i47.i), !noalias !11068
  %i.vn = shl nuw nsw i64 %i.vm, 3
  %i.vo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vn) #46
          to label %.noexc49.i unwind label %.loopexit.split-lp1082.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11068, !inline_history !10808 ; 10 uses

.noexc49.i:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 %i.vf
  store ptr %i.ux, ptr %i.vp, align 8, !tbaa !8353, !noalias !11068
  br i1 %i.vi, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i665.preheader

.lr.ph.i.i.i.i.i.i665.preheader:                  ; preds = %.noexc49.i
  %i.vq = add i64 %i.vd, -8
  %i.vr = sub i64 %i.vq, %i.ve                    ; 3 uses
  %i.vs = lshr i64 %i.vr, 3
  %i.vt = add nuw nsw i64 %i.vs, 1                ; 2 uses
  %min.iters.check2690 = icmp ult i64 %i.vr, 56
  br i1 %min.iters.check2690, label %.lr.ph.i.i.i.i.i.i665.preheader3218, label %vector.memcheck2691

vector.memcheck2691:                              ; preds = %.lr.ph.i.i.i.i.i.i665.preheader
  %i.vu = and i64 %i.vr, -8
  %i.vv = add i64 %i.vu, 8                        ; 2 uses
  %i.vw = getelementptr i8, ptr %i.vo, i64 %i.vv
  %i.vx = getelementptr i8, ptr %.val.i.i.i, i64 %i.vv
  %bound02692 = icmp ult ptr %i.vo, %i.vx
  %bound12693 = icmp ult ptr %.val.i.i.i, %i.vw
  %found.conflict2694 = and i1 %bound02692, %bound12693
  br i1 %found.conflict2694, label %.lr.ph.i.i.i.i.i.i665.preheader3218, label %vector.ph2695

vector.ph2695:                                    ; preds = %vector.memcheck2691
  %n.vec2696 = and i64 %i.vt, 4611686018427387900 ; 3 uses
  %i.vy = shl i64 %n.vec2696, 3                   ; 2 uses
  %i.vz = getelementptr i8, ptr %i.vo, i64 %i.vy  ; 2 uses
  %i.wa = getelementptr i8, ptr %.val.i.i.i, i64 %i.vy
  br label %vector.body2697

vector.body2697:                                  ; preds = %vector.body2697, %vector.ph2695
  %index2698 = phi i64 [ 0, %vector.ph2695 ], [ %index.next2703, %vector.body2697 ] ; 2 uses
  %i.wb = shl i64 %index2698, 3                   ; 2 uses
  %next.gep2699 = getelementptr i8, ptr %i.vo, i64 %i.wb ; 2 uses
  %next.gep2700 = getelementptr i8, ptr %.val.i.i.i, i64 %i.wb ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11075), !noalias !11068
  call void @llvm.experimental.noalias.scope.decl(metadata !11076), !noalias !11068
  %i.wc = getelementptr i8, ptr %next.gep2700, i64 16 ; 2 uses
  %wide.load2701 = load <2 x i64>, ptr %next.gep2700, align 8, !tbaa !466, !alias.scope !11077, !noalias !11068
  %wide.load2702 = load <2 x i64>, ptr %i.wc, align 8, !tbaa !466, !alias.scope !11077, !noalias !11068
  %i.wd = getelementptr i8, ptr %next.gep2699, i64 16
  store <2 x i64> %wide.load2701, ptr %next.gep2699, align 8, !tbaa !466, !alias.scope !11078, !noalias !11079
  store <2 x i64> %wide.load2702, ptr %i.wd, align 8, !tbaa !466, !alias.scope !11078, !noalias !11079
  store <2 x ptr> splat (ptr null), ptr %next.gep2700, align 8, !tbaa !466, !alias.scope !11077, !noalias !11068
  store <2 x ptr> splat (ptr null), ptr %i.wc, align 8, !tbaa !466, !alias.scope !11077, !noalias !11068
  %index.next2703 = add nuw i64 %index2698, 4     ; 2 uses
  %i.we = icmp eq i64 %index.next2703, %n.vec2696
  br i1 %i.we, label %middle.block2704, label %vector.body2697, !llvm.loop !10815

middle.block2704:                                 ; preds = %vector.body2697
  %cmp.n2705 = icmp eq i64 %i.vt, %n.vec2696
  br i1 %cmp.n2705, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i665.preheader3218

.lr.ph.i.i.i.i.i.i665.preheader3218:              ; preds = %vector.memcheck2691, %.lr.ph.i.i.i.i.i.i665.preheader, %middle.block2704
  %.03.i.i.i.i.i.i.ph = phi ptr [ %i.vo, %vector.memcheck2691 ], [ %i.vo, %.lr.ph.i.i.i.i.i.i665.preheader ], [ %i.vz, %middle.block2704 ]
  %.092.i.i.i.i.i.i.ph = phi ptr [ %.val.i.i.i, %vector.memcheck2691 ], [ %.val.i.i.i, %.lr.ph.i.i.i.i.i.i665.preheader ], [ %i.wa, %middle.block2704 ]
  br label %.lr.ph.i.i.i.i.i.i665

.lr.ph.i.i.i.i.i.i665:                            ; preds = %.lr.ph.i.i.i.i.i.i665.preheader3218, %.lr.ph.i.i.i.i.i.i665
  %.03.i.i.i.i.i.i = phi ptr [ %i.wg, %.lr.ph.i.i.i.i.i.i665 ], [ %.03.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i665.preheader3218 ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.wf, %.lr.ph.i.i.i.i.i.i665 ], [ %.092.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i665.preheader3218 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11075), !noalias !11068
  call void @llvm.experimental.noalias.scope.decl(metadata !11076), !noalias !11068
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !466, !alias.scope !11076, !noalias !11068
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i, align 8, !tbaa !466, !alias.scope !11075, !noalias !11068
  store ptr null, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !466, !alias.scope !11076, !noalias !11068
  %i.wf = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i666 = icmp eq ptr %i.wf, %i.va
  br i1 %.not.i.i.i.i.i.i666, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i665, !llvm.loop !10816

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i665, %middle.block2704, %.noexc49.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.vo, %.noexc49.i ], [ %i.vz, %middle.block2704 ], [ %i.wg, %.lr.ph.i.i.i.i.i.i665 ]
  %i.wh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i28.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i28.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i
  %i.wi = load ptr, ptr %i.uw, align 8, !tbaa !8351, !noalias !11068
  %i.wj = ptrtoint ptr %i.wi to i64
  %i.wk = sub i64 %i.wj, %i.ve
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.wk) #47, !noalias !11068, !inline_history !10808
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i: ; preds = %bb.eb, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i
  store ptr %i.vo, ptr %i.ud, align 8, !tbaa !8354, !noalias !11068
  store ptr %i.wh, ptr %i.uv, align 8, !tbaa !8350, !noalias !11068
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %i.vm
  store ptr %i.wl, ptr %i.uw, align 8, !tbaa !8351, !noalias !11068
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit66.i

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit66.i: ; preds = %bb.dy, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !11068
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.0987.01209, i64 40 ; 2 uses
  %i.wn = icmp eq ptr %i.wm, %i.ut
  br i1 %i.wn, label %.loopexit1080, label %bb.dw

bb.ec:                                            ; preds = %bb.dw
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

.loopexit.split-lp1082.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ea
  %lpad.loopexit.split-lp3220 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #23, !noalias !11068, !inline_history !10808
  br label %bb.ed

bb.ed:                                            ; preds = %bb.dx, %bb.ec, %.loopexit.split-lp1082.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn30.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp3220, %.loopexit.split-lp1082.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.wo, %bb.ec ], [ %i.uz, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !11068
  br label %bb.ek

.critedge.i:                                      ; preds = %bb.ds, %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23, !noalias !11068
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23, !noalias !11068
  store i32 5, ptr %15, align 8, !tbaa !8338, !noalias !11068
  %i.wp = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.wp, align 8, !tbaa !9864, !noalias !11068
  %i.wq = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wq, i8 0, i64 16, i1 false), !noalias !11068
  call void @llvm.experimental.noalias.scope.decl(metadata !11080)
  %i.wr = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %.noexc68.i unwind label %bb.ef ; 6 uses

.noexc68.i:                                       ; preds = %.critedge.i
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 16), ptr %i.wr, align 8, !tbaa !436, !noalias !11081
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 72), ptr %i.ws, align 8, !tbaa !436, !noalias !11081
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wt, i8 0, i64 24, i1 false), !noalias !11081
  store ptr %i.wr, ptr %14, align 8, !tbaa !438, !alias.scope !11080, !noalias !11068
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.wr, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %15)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit71.i unwind label %bb.ee, !noalias !11082, !inline_history !10802

bb.ee:                                            ; preds = %.noexc68.i
  %i.wu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #23, !noalias !11068, !inline_history !10802
  br label %.body69.i

_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit71.i: ; preds = %.noexc68.i
  %i.wv = load ptr, ptr %i.uc, align 8, !tbaa !466, !noalias !11068 ; 3 uses
  store ptr %i.wr, ptr %i.uc, align 8, !tbaa !466, !noalias !11068
  %.not.i.i.i72.i = icmp eq ptr %i.wv, null
  br i1 %.not.i.i.i72.i, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit91.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i73.i

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i73.i: ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit71.i
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !436, !noalias !11068
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  %i.wy = load ptr, ptr %i.wx, align 8, !noalias !11068
  call void %i.wy(ptr noundef nonnull align 8 dereferenceable(8) %i.wv) #23, !noalias !11068, !call_target !8388, !inline_history !10803
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit91.i

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit91.i: ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit71.i, %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i73.i
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %15) #23, !noalias !11068, !inline_history !10808
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23, !noalias !11068
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !11068
  br label %.loopexit1080

bb.ef:                                            ; preds = %.critedge.i
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %.body69.i

.body69.i:                                        ; preds = %bb.ef, %bb.ee
  %eh.lpad-body70.i = phi { ptr, i32 } [ %i.wz, %bb.ef ], [ %i.wu, %bb.ee ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %15) #23, !noalias !11068, !inline_history !10808
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23, !noalias !11068
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !11068
  br label %bb.ek

.loopexit1080:                                    ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit66.i, %_ZNK5folly7dynamic3endEv.exit.i, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit91.i
  br i1 %i.tz, label %bb.eg, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.eg:                                            ; preds = %.loopexit1080
  %i.xa = load i32, ptr %i.tx, align 8, !tbaa !8338, !noalias !11068
  switch i32 %i.xa, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit [
    i32 2, label %_ZNKR5folly7dynamic7getBoolEv.exit.i
    i32 5, label %bb.eh
  ]

_ZNKR5folly7dynamic7getBoolEv.exit.i:             ; preds = %bb.eg
  %i.xb = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.xc = load i8, ptr %i.xb, align 8, !tbaa !651, !range !629, !noalias !11068, !noundef !530
  store i8 %i.xc, ptr %i.uf, align 8, !tbaa !8383, !noalias !11068
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23, !noalias !11068
  call void @llvm.experimental.noalias.scope.decl(metadata !11083)
  %i.xd = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %.noexc97.i unwind label %bb.ej ; 6 uses

.noexc97.i:                                       ; preds = %bb.eh
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 16), ptr %i.xd, align 8, !tbaa !436, !noalias !11084
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 72), ptr %i.xe, align 8, !tbaa !436, !noalias !11084
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xf, i8 0, i64 24, i1 false), !noalias !11084
  store ptr %i.xd, ptr %16, align 8, !tbaa !438, !alias.scope !11083, !noalias !11068
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.xd, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.tx)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit100.i unwind label %bb.ei, !noalias !11085, !inline_history !10802

bb.ei:                                            ; preds = %.noexc97.i
  %i.xg = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #23, !noalias !11068, !inline_history !10802
  br label %.body98.i

_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit100.i: ; preds = %.noexc97.i
  %i.xh = load ptr, ptr %i.ue, align 8, !tbaa !466, !noalias !11068 ; 3 uses
  store ptr %i.xd, ptr %i.ue, align 8, !tbaa !466, !noalias !11068
  %.not.i.i.i101.i = icmp eq ptr %i.xh, null
  br i1 %.not.i.i.i101.i, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit120.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i102.i

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i102.i: ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit100.i
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !436, !noalias !11068
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  %i.xk = load ptr, ptr %i.xj, align 8, !noalias !11068
  call void %i.xk(ptr noundef nonnull align 8 dereferenceable(8) %i.xh) #23, !noalias !11068, !call_target !8388, !inline_history !10803
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit120.i

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit120.i: ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit100.i, %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23, !noalias !11068
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.ej:                                            ; preds = %bb.eh
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %.body98.i

.body98.i:                                        ; preds = %bb.ej, %bb.ei
  %eh.lpad-body99.i = phi { ptr, i32 } [ %i.xl, %bb.ej ], [ %i.xg, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23, !noalias !11068
  br label %bb.ek

bb.ek:                                            ; preds = %.body98.i, %.body69.i, %bb.ed, %.body.i667
  %.pn34.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i667 ], [ %.pn30.i, %bb.ed ], [ %eh.lpad-body70.i, %.body69.i ], [ %eh.lpad-body99.i, %.body98.i ]
  %i.xm = load ptr, ptr %i.ue, align 8, !tbaa !466, !noalias !11068 ; 3 uses
  %.not.i121.i = icmp eq ptr %i.xm, null
  br i1 %.not.i121.i, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i: ; preds = %bb.ek
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !436, !noalias !11068
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  %i.xp = load ptr, ptr %i.xo, align 8, !noalias !11068
  call void %i.xp(ptr noundef nonnull align 8 dereferenceable(8) %i.xm) #23, !noalias !11068, !call_target !8388, !inline_history !10825
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i, %bb.ek
  call fastcc void @_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ud) #23, !noalias !11068, !inline_history !10808
  %i.xq = load ptr, ptr %i.uc, align 8, !tbaa !466, !noalias !11068 ; 3 uses
  %.not.i122.i = icmp eq ptr %i.xq, null
  br i1 %.not.i122.i, label %.body675, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i123.i

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i123.i: ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !436, !noalias !11068
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  %i.xt = load ptr, ptr %i.xs, align 8, !noalias !11068
  call void %i.xt(ptr noundef nonnull align 8 dereferenceable(8) %i.xq) #23, !noalias !11068, !call_target !8388, !inline_history !10825
  br label %.body675

.body675:                                         ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i, %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i123.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ub, i64 noundef 56) #47, !noalias !11068, !inline_history !10797
  br label %common.resume

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.eg, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit120.i, %_ZNKR5folly7dynamic7getBoolEv.exit.i, %.loopexit1080, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i
  store ptr %i.ub, ptr %30, align 8, !tbaa !9866
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !8350 ; 6 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !8351
  %.not.i316 = icmp eq ptr %i.xv, %i.xx
  br i1 %.not.i316, label %bb.em, label %bb.el

bb.el:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.ub, ptr %i.xv, align 8, !tbaa !8353
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  store ptr %i.xy, ptr %i.xu, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorESt14default_deleteIS3_EED2Ev.exit

bb.em:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i317 = load ptr, ptr %i.ua, align 8, !tbaa !8354 ; 10 uses
  %i.xz = ptrtoint ptr %i.xv to i64               ; 2 uses
  %i.ya = ptrtoint ptr %.val.i.i317 to i64        ; 3 uses
  %i.yb = sub i64 %i.xz, %i.ya                    ; 3 uses
  %i.yc = icmp eq i64 %i.yb, 9223372036854775800
  br i1 %i.yc, label %bb.en, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i318

bb.en:                                            ; preds = %bb.em
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc329 unwind label %bb.ep

.noexc329:                                        ; preds = %bb.en
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i318: ; preds = %bb.em
  %i.yd = ashr exact i64 %i.yb, 3                 ; 3 uses
  %i.ye = icmp eq ptr %i.xv, %.val.i.i317         ; 2 uses
  %.sroa.speculated.i.i.i319 = select i1 %i.ye, i64 1, i64 %i.yd
  %i.yf = add nsw i64 %.sroa.speculated.i.i.i319, %i.yd ; 2 uses
  %i.yg = icmp ult i64 %i.yf, %i.yd
  %i.yh = call i64 @llvm.umin.i64(i64 %i.yf, i64 1152921504606846975)
  %i.yi = select i1 %i.yg, i64 1152921504606846975, i64 %i.yh ; 3 uses
  %.not.i.i.i320 = icmp ne i64 %i.yi, 0
  call void @llvm.assume(i1 %.not.i.i.i320)
  %i.yj = shl nuw nsw i64 %i.yi, 3
  %i.yk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yj) #46
          to label %.noexc330 unwind label %bb.ep ; 10 uses

.noexc330:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i318
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 %i.yb
  store ptr %i.ub, ptr %i.yl, align 8, !tbaa !8353
  br i1 %i.ye, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i326, label %.lr.ph.i.i.i.i.i321.preheader

.lr.ph.i.i.i.i.i321.preheader:                    ; preds = %.noexc330
  %i.ym = add i64 %i.xz, -8
  %i.yn = sub i64 %i.ym, %i.ya                    ; 3 uses
  %i.yo = lshr i64 %i.yn, 3
  %i.yp = add nuw nsw i64 %i.yo, 1                ; 2 uses
  %min.iters.check2714 = icmp ult i64 %i.yn, 136
  br i1 %min.iters.check2714, label %.lr.ph.i.i.i.i.i321.preheader3216, label %vector.memcheck2715

vector.memcheck2715:                              ; preds = %.lr.ph.i.i.i.i.i321.preheader
  %i.yq = and i64 %i.yn, -8
  %i.yr = add i64 %i.yq, 8                        ; 2 uses
  %i.ys = getelementptr i8, ptr %i.yk, i64 %i.yr
  %i.yt = getelementptr i8, ptr %.val.i.i317, i64 %i.yr
  %bound02716 = icmp ult ptr %i.yk, %i.yt
  %bound12717 = icmp ult ptr %.val.i.i317, %i.ys
  %found.conflict2718 = and i1 %bound02716, %bound12717
  br i1 %found.conflict2718, label %.lr.ph.i.i.i.i.i321.preheader3216, label %vector.ph2719

vector.ph2719:                                    ; preds = %vector.memcheck2715
  %n.vec2720 = and i64 %i.yp, 4611686018427387900 ; 3 uses
  %i.yu = shl i64 %n.vec2720, 3                   ; 2 uses
  %i.yv = getelementptr i8, ptr %i.yk, i64 %i.yu  ; 2 uses
  %i.yw = getelementptr i8, ptr %.val.i.i317, i64 %i.yu
  br label %vector.body2721

vector.body2721:                                  ; preds = %vector.body2721, %vector.ph2719
  %index2722 = phi i64 [ 0, %vector.ph2719 ], [ %index.next2727, %vector.body2721 ] ; 2 uses
  %i.yx = shl i64 %index2722, 3                   ; 2 uses
  %next.gep2723 = getelementptr i8, ptr %i.yk, i64 %i.yx ; 2 uses
  %next.gep2724 = getelementptr i8, ptr %.val.i.i317, i64 %i.yx ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11086)
  call void @llvm.experimental.noalias.scope.decl(metadata !11087)
  %i.yy = getelementptr i8, ptr %next.gep2724, i64 16 ; 2 uses
  %wide.load2725 = load <2 x i64>, ptr %next.gep2724, align 8, !tbaa !466, !alias.scope !11088
  %wide.load2726 = load <2 x i64>, ptr %i.yy, align 8, !tbaa !466, !alias.scope !11088
  %i.yz = getelementptr i8, ptr %next.gep2723, i64 16
  store <2 x i64> %wide.load2725, ptr %next.gep2723, align 8, !tbaa !466, !alias.scope !11089, !noalias !11090
  store <2 x i64> %wide.load2726, ptr %i.yz, align 8, !tbaa !466, !alias.scope !11089, !noalias !11090
  store <2 x ptr> splat (ptr null), ptr %next.gep2724, align 8, !tbaa !466, !alias.scope !11088
  store <2 x ptr> splat (ptr null), ptr %i.yy, align 8, !tbaa !466, !alias.scope !11088
  %index.next2727 = add nuw i64 %index2722, 4     ; 2 uses
  %i.za = icmp eq i64 %index.next2727, %n.vec2720
  br i1 %i.za, label %middle.block2728, label %vector.body2721, !llvm.loop !10832

middle.block2728:                                 ; preds = %vector.body2721
  %cmp.n2729 = icmp eq i64 %i.yp, %n.vec2720
  br i1 %cmp.n2729, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i326, label %.lr.ph.i.i.i.i.i321.preheader3216

.lr.ph.i.i.i.i.i321.preheader3216:                ; preds = %vector.memcheck2715, %.lr.ph.i.i.i.i.i321.preheader, %middle.block2728
  %.03.i.i.i.i.i322.ph = phi ptr [ %i.yk, %vector.memcheck2715 ], [ %i.yk, %.lr.ph.i.i.i.i.i321.preheader ], [ %i.yv, %middle.block2728 ]
  %.092.i.i.i.i.i323.ph = phi ptr [ %.val.i.i317, %vector.memcheck2715 ], [ %.val.i.i317, %.lr.ph.i.i.i.i.i321.preheader ], [ %i.yw, %middle.block2728 ]
  br label %.lr.ph.i.i.i.i.i321

.lr.ph.i.i.i.i.i321:                              ; preds = %.lr.ph.i.i.i.i.i321.preheader3216, %.lr.ph.i.i.i.i.i321
  %.03.i.i.i.i.i322 = phi ptr [ %i.zc, %.lr.ph.i.i.i.i.i321 ], [ %.03.i.i.i.i.i322.ph, %.lr.ph.i.i.i.i.i321.preheader3216 ] ; 2 uses
  %.092.i.i.i.i.i323 = phi ptr [ %i.zb, %.lr.ph.i.i.i.i.i321 ], [ %.092.i.i.i.i.i323.ph, %.lr.ph.i.i.i.i.i321.preheader3216 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11086)
  call void @llvm.experimental.noalias.scope.decl(metadata !11087)
  %.val.i.i.i.i.i.i.i.i.i.i324 = load i64, ptr %.092.i.i.i.i.i323, align 8, !tbaa !466, !alias.scope !11087
  store i64 %.val.i.i.i.i.i.i.i.i.i.i324, ptr %.03.i.i.i.i.i322, align 8, !tbaa !466, !alias.scope !11086
  store ptr null, ptr %.092.i.i.i.i.i323, align 8, !tbaa !466, !alias.scope !11087
  %i.zb = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i323, i64 8 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i322, i64 8 ; 2 uses
  %.not.i.i.i.i.i325 = icmp eq ptr %i.zb, %i.xv
  br i1 %.not.i.i.i.i.i325, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i326, label %.lr.ph.i.i.i.i.i321, !llvm.loop !10833

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i326: ; preds = %.lr.ph.i.i.i.i.i321, %middle.block2728, %.noexc330
  %.0.lcssa.i.i.i.i.i327 = phi ptr [ %i.yk, %.noexc330 ], [ %i.yv, %middle.block2728 ], [ %i.zc, %.lr.ph.i.i.i.i.i321 ]
  %i.zd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i327, i64 8
  %.not.i28.i.i328 = icmp eq ptr %.val.i.i317, null
  br i1 %.not.i28.i.i328, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19ArrayItemsValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i326
  %i.ze = load ptr, ptr %i.xw, align 8, !tbaa !8351
  %i.zf = ptrtoint ptr %i.ze to i64
  %i.zg = sub i64 %i.zf, %i.ya
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i317, i64 noundef %i.zg) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19ArrayItemsValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19ArrayItemsValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.eo, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i326
  store ptr %i.yk, ptr %i.ua, align 8, !tbaa !8354
  store ptr %i.zd, ptr %i.xu, align 8, !tbaa !8350
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.yk, i64 %i.yi
  store ptr %i.zh, ptr %i.xw, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.el, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19ArrayItemsValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.eq

bb.ep:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i318, %bb.en
  %i.zi = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %common.resume

bb.eq:                                            ; preds = %bb.dq, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorESt14default_deleteIS3_EED2Ev.exit
  %i.zj = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.47, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.47, i64 8)) ; 3 uses
  %.not161 = icmp eq ptr %i.zj, null
  br i1 %.not161, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit355, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.zl = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #46, !noalias !11091 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEE, i64 16), ptr %i.zl, align 8, !tbaa !436, !noalias !11091
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 8 ; 2 uses
  store i64 -1, ptr %i.zm, align 8, !tbaa !8364, !noalias !11091
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  store i32 1, ptr %i.zn, align 8, !tbaa !8365, !noalias !11091
  %i.zo = load i32, ptr %i.zj, align 8, !tbaa !8338, !noalias !11091
  %.not.i.i.i.i.i334 = icmp eq i32 %i.zo, 4
  br i1 %.not.i.i.i.i.i334, label %bb.es, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit335

bb.es:                                            ; preds = %bb.er
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  %i.zq = load i64, ptr %i.zp, align 8, !tbaa !650, !noalias !11091
  store i64 %i.zq, ptr %i.zm, align 8, !tbaa !8364, !noalias !11091
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit335

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit335: ; preds = %bb.er, %bb.es
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !8350 ; 6 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !8351
  %.not.i336 = icmp eq ptr %i.zs, %i.zu
  br i1 %.not.i336, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit335
  store ptr %i.zl, ptr %i.zs, align 8, !tbaa !8353
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  store ptr %i.zv, ptr %i.zr, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit355

bb.eu:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit335
  %.val.i.i337 = load ptr, ptr %i.zk, align 8, !tbaa !8354 ; 10 uses
  %i.zw = ptrtoint ptr %i.zs to i64               ; 2 uses
  %i.zx = ptrtoint ptr %.val.i.i337 to i64        ; 3 uses
  %i.zy = sub i64 %i.zw, %i.zx                    ; 3 uses
  %i.zz = icmp eq i64 %i.zy, 9223372036854775800
  br i1 %i.zz, label %bb.ev, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i338

bb.ev:                                            ; preds = %bb.eu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc350 unwind label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit358

.noexc350:                                        ; preds = %bb.ev
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i338: ; preds = %bb.eu
  %i.aaa = ashr exact i64 %i.zy, 3                ; 3 uses
  %i.aab = icmp eq ptr %i.zs, %.val.i.i337        ; 2 uses
  %.sroa.speculated.i.i.i339 = select i1 %i.aab, i64 1, i64 %i.aaa
  %i.aac = add nsw i64 %.sroa.speculated.i.i.i339, %i.aaa ; 2 uses
  %i.aad = icmp ult i64 %i.aac, %i.aaa
  %i.aae = call i64 @llvm.umin.i64(i64 %i.aac, i64 1152921504606846975)
  %i.aaf = select i1 %i.aad, i64 1152921504606846975, i64 %i.aae ; 3 uses
  %.not.i.i.i340 = icmp ne i64 %i.aaf, 0
  call void @llvm.assume(i1 %.not.i.i.i340)
  %i.aag = shl nuw nsw i64 %i.aaf, 3
  %i.aah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aag) #46
          to label %.noexc351 unwind label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit358 ; 10 uses

.noexc351:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i338
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 %i.zy
  store ptr %i.zl, ptr %i.aai, align 8, !tbaa !8353
  br i1 %i.aab, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i346, label %.lr.ph.i.i.i.i.i341.preheader

.lr.ph.i.i.i.i.i341.preheader:                    ; preds = %.noexc351
  %i.aaj = add i64 %i.zw, -8
  %i.aak = sub i64 %i.aaj, %i.zx                  ; 3 uses
  %i.aal = lshr i64 %i.aak, 3
  %i.aam = add nuw nsw i64 %i.aal, 1              ; 2 uses
  %min.iters.check2738 = icmp ult i64 %i.aak, 136
  br i1 %min.iters.check2738, label %.lr.ph.i.i.i.i.i341.preheader3214, label %vector.memcheck2739

vector.memcheck2739:                              ; preds = %.lr.ph.i.i.i.i.i341.preheader
  %i.aan = and i64 %i.aak, -8
  %i.aao = add i64 %i.aan, 8                      ; 2 uses
  %i.aap = getelementptr i8, ptr %i.aah, i64 %i.aao
  %i.aaq = getelementptr i8, ptr %.val.i.i337, i64 %i.aao
  %bound02740 = icmp ult ptr %i.aah, %i.aaq
  %bound12741 = icmp ult ptr %.val.i.i337, %i.aap
  %found.conflict2742 = and i1 %bound02740, %bound12741
  br i1 %found.conflict2742, label %.lr.ph.i.i.i.i.i341.preheader3214, label %vector.ph2743

vector.ph2743:                                    ; preds = %vector.memcheck2739
  %n.vec2744 = and i64 %i.aam, 4611686018427387900 ; 3 uses
  %i.aar = shl i64 %n.vec2744, 3                  ; 2 uses
  %i.aas = getelementptr i8, ptr %i.aah, i64 %i.aar ; 2 uses
  %i.aat = getelementptr i8, ptr %.val.i.i337, i64 %i.aar
  br label %vector.body2745

vector.body2745:                                  ; preds = %vector.body2745, %vector.ph2743
  %index2746 = phi i64 [ 0, %vector.ph2743 ], [ %index.next2751, %vector.body2745 ] ; 2 uses
  %i.aau = shl i64 %index2746, 3                  ; 2 uses
  %next.gep2747 = getelementptr i8, ptr %i.aah, i64 %i.aau ; 2 uses
  %next.gep2748 = getelementptr i8, ptr %.val.i.i337, i64 %i.aau ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11092)
  call void @llvm.experimental.noalias.scope.decl(metadata !11093)
  %i.aav = getelementptr i8, ptr %next.gep2748, i64 16 ; 2 uses
  %wide.load2749 = load <2 x i64>, ptr %next.gep2748, align 8, !tbaa !466, !alias.scope !11094
  %wide.load2750 = load <2 x i64>, ptr %i.aav, align 8, !tbaa !466, !alias.scope !11094
  %i.aaw = getelementptr i8, ptr %next.gep2747, i64 16
  store <2 x i64> %wide.load2749, ptr %next.gep2747, align 8, !tbaa !466, !alias.scope !11095, !noalias !11096
  store <2 x i64> %wide.load2750, ptr %i.aaw, align 8, !tbaa !466, !alias.scope !11095, !noalias !11096
  store <2 x ptr> splat (ptr null), ptr %next.gep2748, align 8, !tbaa !466, !alias.scope !11094
  store <2 x ptr> splat (ptr null), ptr %i.aav, align 8, !tbaa !466, !alias.scope !11094
  %index.next2751 = add nuw i64 %index2746, 4     ; 2 uses
  %i.aax = icmp eq i64 %index.next2751, %n.vec2744
  br i1 %i.aax, label %middle.block2752, label %vector.body2745, !llvm.loop !10842

middle.block2752:                                 ; preds = %vector.body2745
  %cmp.n2753 = icmp eq i64 %i.aam, %n.vec2744
  br i1 %cmp.n2753, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i346, label %.lr.ph.i.i.i.i.i341.preheader3214

.lr.ph.i.i.i.i.i341.preheader3214:                ; preds = %vector.memcheck2739, %.lr.ph.i.i.i.i.i341.preheader, %middle.block2752
  %.03.i.i.i.i.i342.ph = phi ptr [ %i.aah, %vector.memcheck2739 ], [ %i.aah, %.lr.ph.i.i.i.i.i341.preheader ], [ %i.aas, %middle.block2752 ]
  %.092.i.i.i.i.i343.ph = phi ptr [ %.val.i.i337, %vector.memcheck2739 ], [ %.val.i.i337, %.lr.ph.i.i.i.i.i341.preheader ], [ %i.aat, %middle.block2752 ]
  br label %.lr.ph.i.i.i.i.i341

.lr.ph.i.i.i.i.i341:                              ; preds = %.lr.ph.i.i.i.i.i341.preheader3214, %.lr.ph.i.i.i.i.i341
  %.03.i.i.i.i.i342 = phi ptr [ %i.aaz, %.lr.ph.i.i.i.i.i341 ], [ %.03.i.i.i.i.i342.ph, %.lr.ph.i.i.i.i.i341.preheader3214 ] ; 2 uses
  %.092.i.i.i.i.i343 = phi ptr [ %i.aay, %.lr.ph.i.i.i.i.i341 ], [ %.092.i.i.i.i.i343.ph, %.lr.ph.i.i.i.i.i341.preheader3214 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11092)
  call void @llvm.experimental.noalias.scope.decl(metadata !11093)
  %.val.i.i.i.i.i.i.i.i.i.i344 = load i64, ptr %.092.i.i.i.i.i343, align 8, !tbaa !466, !alias.scope !11093
  store i64 %.val.i.i.i.i.i.i.i.i.i.i344, ptr %.03.i.i.i.i.i342, align 8, !tbaa !466, !alias.scope !11092
  store ptr null, ptr %.092.i.i.i.i.i343, align 8, !tbaa !466, !alias.scope !11093
  %i.aay = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i343, i64 8 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i342, i64 8 ; 2 uses
  %.not.i.i.i.i.i345 = icmp eq ptr %i.aay, %i.zs
  br i1 %.not.i.i.i.i.i345, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i346, label %.lr.ph.i.i.i.i.i341, !llvm.loop !10843

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i346: ; preds = %.lr.ph.i.i.i.i.i341, %middle.block2752, %.noexc351
  %.0.lcssa.i.i.i.i.i347 = phi ptr [ %i.aah, %.noexc351 ], [ %i.aas, %middle.block2752 ], [ %i.aaz, %.lr.ph.i.i.i.i.i341 ]
  %i.aba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i347, i64 8
  %.not.i28.i.i348 = icmp eq ptr %.val.i.i337, null
  br i1 %.not.i28.i.i348, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt13greater_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i349, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i346
  %i.abb = load ptr, ptr %i.zt, align 8, !tbaa !8351
  %i.abc = ptrtoint ptr %i.abb to i64
  %i.abd = sub i64 %i.abc, %i.zx
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i337, i64 noundef %i.abd) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt13greater_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i349

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt13greater_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i349: ; preds = %bb.ew, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i346
  store ptr %i.aah, ptr %i.zk, align 8, !tbaa !8354
  store ptr %i.aba, ptr %i.zr, align 8, !tbaa !8350
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.aah, i64 %i.aaf
  store ptr %i.abe, ptr %i.zt, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit355

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit358: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i338, %bb.ev
  %i.abf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.zl, i64 noundef 24) #47
  br label %common.resume

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit355: ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt13greater_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i349, %bb.et, %bb.eq
  %i.abg = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.48, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.48, i64 8)) ; 3 uses
  %.not162 = icmp eq ptr %i.abg, null
  br i1 %.not162, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit380, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit355
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.abi = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #46, !noalias !11097 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEE, i64 16), ptr %i.abi, align 8, !tbaa !436, !noalias !11097
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 8 ; 2 uses
  store i64 -1, ptr %i.abj, align 8, !tbaa !8367, !noalias !11097
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abi, i64 16
  store i32 1, ptr %i.abk, align 8, !tbaa !8368, !noalias !11097
  %i.abl = load i32, ptr %i.abg, align 8, !tbaa !8338, !noalias !11097
  %.not.i.i.i.i.i359 = icmp eq i32 %i.abl, 4
  br i1 %.not.i.i.i.i.i359, label %bb.ey, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit360

bb.ey:                                            ; preds = %bb.ex
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.abn = load i64, ptr %i.abm, align 8, !tbaa !650, !noalias !11097
  store i64 %i.abn, ptr %i.abj, align 8, !tbaa !8367, !noalias !11097
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit360

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit360: ; preds = %bb.ex, %bb.ey
  %i.abo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !8350 ; 6 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !8351
  %.not.i361 = icmp eq ptr %i.abp, %i.abr
  br i1 %.not.i361, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit360
  store ptr %i.abi, ptr %i.abp, align 8, !tbaa !8353
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abp, i64 8
  store ptr %i.abs, ptr %i.abo, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit380

bb.fa:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit360
  %.val.i.i362 = load ptr, ptr %i.abh, align 8, !tbaa !8354 ; 10 uses
  %i.abt = ptrtoint ptr %i.abp to i64             ; 2 uses
  %i.abu = ptrtoint ptr %.val.i.i362 to i64       ; 3 uses
  %i.abv = sub i64 %i.abt, %i.abu                 ; 3 uses
  %i.abw = icmp eq i64 %i.abv, 9223372036854775800
  br i1 %i.abw, label %bb.fb, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i363

bb.fb:                                            ; preds = %bb.fa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc375 unwind label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit383

.noexc375:                                        ; preds = %bb.fb
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i363: ; preds = %bb.fa
  %i.abx = ashr exact i64 %i.abv, 3               ; 3 uses
  %i.aby = icmp eq ptr %i.abp, %.val.i.i362       ; 2 uses
  %.sroa.speculated.i.i.i364 = select i1 %i.aby, i64 1, i64 %i.abx
  %i.abz = add nsw i64 %.sroa.speculated.i.i.i364, %i.abx ; 2 uses
  %i.aca = icmp ult i64 %i.abz, %i.abx
  %i.acb = call i64 @llvm.umin.i64(i64 %i.abz, i64 1152921504606846975)
  %i.acc = select i1 %i.aca, i64 1152921504606846975, i64 %i.acb ; 3 uses
  %.not.i.i.i365 = icmp ne i64 %i.acc, 0
  call void @llvm.assume(i1 %.not.i.i.i365)
  %i.acd = shl nuw nsw i64 %i.acc, 3
  %i.ace = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acd) #46
          to label %.noexc376 unwind label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit383 ; 10 uses

.noexc376:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i363
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 %i.abv
  store ptr %i.abi, ptr %i.acf, align 8, !tbaa !8353
  br i1 %i.aby, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i371, label %.lr.ph.i.i.i.i.i366.preheader

.lr.ph.i.i.i.i.i366.preheader:                    ; preds = %.noexc376
  %i.acg = add i64 %i.abt, -8
  %i.ach = sub i64 %i.acg, %i.abu                 ; 3 uses
  %i.aci = lshr i64 %i.ach, 3
  %i.acj = add nuw nsw i64 %i.aci, 1              ; 2 uses
  %min.iters.check2762 = icmp ult i64 %i.ach, 136
  br i1 %min.iters.check2762, label %.lr.ph.i.i.i.i.i366.preheader3212, label %vector.memcheck2763

vector.memcheck2763:                              ; preds = %.lr.ph.i.i.i.i.i366.preheader
  %i.ack = and i64 %i.ach, -8
  %i.acl = add i64 %i.ack, 8                      ; 2 uses
  %i.acm = getelementptr i8, ptr %i.ace, i64 %i.acl
  %i.acn = getelementptr i8, ptr %.val.i.i362, i64 %i.acl
  %bound02764 = icmp ult ptr %i.ace, %i.acn
  %bound12765 = icmp ult ptr %.val.i.i362, %i.acm
  %found.conflict2766 = and i1 %bound02764, %bound12765
  br i1 %found.conflict2766, label %.lr.ph.i.i.i.i.i366.preheader3212, label %vector.ph2767

vector.ph2767:                                    ; preds = %vector.memcheck2763
  %n.vec2768 = and i64 %i.acj, 4611686018427387900 ; 3 uses
  %i.aco = shl i64 %n.vec2768, 3                  ; 2 uses
  %i.acp = getelementptr i8, ptr %i.ace, i64 %i.aco ; 2 uses
  %i.acq = getelementptr i8, ptr %.val.i.i362, i64 %i.aco
  br label %vector.body2769

vector.body2769:                                  ; preds = %vector.body2769, %vector.ph2767
  %index2770 = phi i64 [ 0, %vector.ph2767 ], [ %index.next2775, %vector.body2769 ] ; 2 uses
  %i.acr = shl i64 %index2770, 3                  ; 2 uses
  %next.gep2771 = getelementptr i8, ptr %i.ace, i64 %i.acr ; 2 uses
  %next.gep2772 = getelementptr i8, ptr %.val.i.i362, i64 %i.acr ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11098)
  call void @llvm.experimental.noalias.scope.decl(metadata !11099)
  %i.acs = getelementptr i8, ptr %next.gep2772, i64 16 ; 2 uses
  %wide.load2773 = load <2 x i64>, ptr %next.gep2772, align 8, !tbaa !466, !alias.scope !11100
  %wide.load2774 = load <2 x i64>, ptr %i.acs, align 8, !tbaa !466, !alias.scope !11100
  %i.act = getelementptr i8, ptr %next.gep2771, i64 16
  store <2 x i64> %wide.load2773, ptr %next.gep2771, align 8, !tbaa !466, !alias.scope !11101, !noalias !11102
  store <2 x i64> %wide.load2774, ptr %i.act, align 8, !tbaa !466, !alias.scope !11101, !noalias !11102
  store <2 x ptr> splat (ptr null), ptr %next.gep2772, align 8, !tbaa !466, !alias.scope !11100
  store <2 x ptr> splat (ptr null), ptr %i.acs, align 8, !tbaa !466, !alias.scope !11100
  %index.next2775 = add nuw i64 %index2770, 4     ; 2 uses
  %i.acu = icmp eq i64 %index.next2775, %n.vec2768
  br i1 %i.acu, label %middle.block2776, label %vector.body2769, !llvm.loop !10852

middle.block2776:                                 ; preds = %vector.body2769
  %cmp.n2777 = icmp eq i64 %i.acj, %n.vec2768
  br i1 %cmp.n2777, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i371, label %.lr.ph.i.i.i.i.i366.preheader3212

.lr.ph.i.i.i.i.i366.preheader3212:                ; preds = %vector.memcheck2763, %.lr.ph.i.i.i.i.i366.preheader, %middle.block2776
  %.03.i.i.i.i.i367.ph = phi ptr [ %i.ace, %vector.memcheck2763 ], [ %i.ace, %.lr.ph.i.i.i.i.i366.preheader ], [ %i.acp, %middle.block2776 ]
  %.092.i.i.i.i.i368.ph = phi ptr [ %.val.i.i362, %vector.memcheck2763 ], [ %.val.i.i362, %.lr.ph.i.i.i.i.i366.preheader ], [ %i.acq, %middle.block2776 ]
  br label %.lr.ph.i.i.i.i.i366

.lr.ph.i.i.i.i.i366:                              ; preds = %.lr.ph.i.i.i.i.i366.preheader3212, %.lr.ph.i.i.i.i.i366
  %.03.i.i.i.i.i367 = phi ptr [ %i.acw, %.lr.ph.i.i.i.i.i366 ], [ %.03.i.i.i.i.i367.ph, %.lr.ph.i.i.i.i.i366.preheader3212 ] ; 2 uses
  %.092.i.i.i.i.i368 = phi ptr [ %i.acv, %.lr.ph.i.i.i.i.i366 ], [ %.092.i.i.i.i.i368.ph, %.lr.ph.i.i.i.i.i366.preheader3212 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11098)
  call void @llvm.experimental.noalias.scope.decl(metadata !11099)
  %.val.i.i.i.i.i.i.i.i.i.i369 = load i64, ptr %.092.i.i.i.i.i368, align 8, !tbaa !466, !alias.scope !11099
  store i64 %.val.i.i.i.i.i.i.i.i.i.i369, ptr %.03.i.i.i.i.i367, align 8, !tbaa !466, !alias.scope !11098
  store ptr null, ptr %.092.i.i.i.i.i368, align 8, !tbaa !466, !alias.scope !11099
  %i.acv = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i368, i64 8 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i367, i64 8 ; 2 uses
  %.not.i.i.i.i.i370 = icmp eq ptr %i.acv, %i.abp
  br i1 %.not.i.i.i.i.i370, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i371, label %.lr.ph.i.i.i.i.i366, !llvm.loop !10853

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i371: ; preds = %.lr.ph.i.i.i.i.i366, %middle.block2776, %.noexc376
  %.0.lcssa.i.i.i.i.i372 = phi ptr [ %i.ace, %.noexc376 ], [ %i.acp, %middle.block2776 ], [ %i.acw, %.lr.ph.i.i.i.i.i366 ]
  %i.acx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i372, i64 8
  %.not.i28.i.i373 = icmp eq ptr %.val.i.i362, null
  br i1 %.not.i28.i.i373, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt10less_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i374, label %bb.fc

bb.fc:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i371
  %i.acy = load ptr, ptr %i.abq, align 8, !tbaa !8351
  %i.acz = ptrtoint ptr %i.acy to i64
  %i.ada = sub i64 %i.acz, %i.abu
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i362, i64 noundef %i.ada) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt10less_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i374

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt10less_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i374: ; preds = %bb.fc, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i371
  store ptr %i.ace, ptr %i.abh, align 8, !tbaa !8354
  store ptr %i.acx, ptr %i.abo, align 8, !tbaa !8350
  %i.adb = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %i.acc
  store ptr %i.adb, ptr %i.abq, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit380

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit383: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i363, %bb.fb
  %i.adc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.abi, i64 noundef 24) #47
  br label %common.resume

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit380: ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt10less_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i374, %bb.ez, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit355
  %i.add = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.49, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.49, i64 11)) ; 3 uses
  %.not163 = icmp eq ptr %i.add, null
  br i1 %.not163, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit, label %bb.fd

bb.fd:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit380
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.adf = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #46, !noalias !11103 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorE, i64 16), ptr %i.adf, align 8, !tbaa !436, !noalias !11103
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 8 ; 2 uses
  store i8 0, ptr %i.adg, align 8, !tbaa !9868, !noalias !11103
  %i.adh = load i32, ptr %i.add, align 8, !tbaa !8338, !noalias !11103
  %.not.i.i.i.i.i384 = icmp eq i32 %i.adh, 2
  br i1 %.not.i.i.i.i.i384, label %bb.fe, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.fe:                                            ; preds = %bb.fd
  %i.adi = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  %i.adj = load i8, ptr %i.adi, align 8, !tbaa !651, !range !629, !noalias !11103, !noundef !530
  store i8 %i.adj, ptr %i.adg, align 8, !tbaa !9868, !noalias !11103
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.fd, %bb.fe
  %i.adk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !8350 ; 6 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !8351
  %.not.i385 = icmp eq ptr %i.adl, %i.adn
  br i1 %.not.i385, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.adf, ptr %i.adl, align 8, !tbaa !8353
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adl, i64 8
  store ptr %i.ado, ptr %i.adk, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit

bb.fg:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i386 = load ptr, ptr %i.ade, align 8, !tbaa !8354 ; 10 uses
  %i.adp = ptrtoint ptr %i.adl to i64             ; 2 uses
  %i.adq = ptrtoint ptr %.val.i.i386 to i64       ; 3 uses
  %i.adr = sub i64 %i.adp, %i.adq                 ; 3 uses
  %i.ads = icmp eq i64 %i.adr, 9223372036854775800
  br i1 %i.ads, label %bb.fh, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i387

bb.fh:                                            ; preds = %bb.fg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc398 unwind label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit403

.noexc398:                                        ; preds = %bb.fh
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i387: ; preds = %bb.fg
  %i.adt = ashr exact i64 %i.adr, 3               ; 3 uses
  %i.adu = icmp eq ptr %i.adl, %.val.i.i386       ; 2 uses
  %.sroa.speculated.i.i.i388 = select i1 %i.adu, i64 1, i64 %i.adt
  %i.adv = add nsw i64 %.sroa.speculated.i.i.i388, %i.adt ; 2 uses
  %i.adw = icmp ult i64 %i.adv, %i.adt
  %i.adx = call i64 @llvm.umin.i64(i64 %i.adv, i64 1152921504606846975)
  %i.ady = select i1 %i.adw, i64 1152921504606846975, i64 %i.adx ; 3 uses
  %.not.i.i.i389 = icmp ne i64 %i.ady, 0
  call void @llvm.assume(i1 %.not.i.i.i389)
  %i.adz = shl nuw nsw i64 %i.ady, 3
  %i.aea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adz) #46
          to label %.noexc399 unwind label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit403 ; 10 uses

.noexc399:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i387
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 %i.adr
  store ptr %i.adf, ptr %i.aeb, align 8, !tbaa !8353
  br i1 %i.adu, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i395, label %.lr.ph.i.i.i.i.i390.preheader

.lr.ph.i.i.i.i.i390.preheader:                    ; preds = %.noexc399
  %i.aec = add i64 %i.adp, -8
  %i.aed = sub i64 %i.aec, %i.adq                 ; 3 uses
  %i.aee = lshr i64 %i.aed, 3
  %i.aef = add nuw nsw i64 %i.aee, 1              ; 2 uses
  %min.iters.check2786 = icmp ult i64 %i.aed, 136
  br i1 %min.iters.check2786, label %.lr.ph.i.i.i.i.i390.preheader3210, label %vector.memcheck2787

vector.memcheck2787:                              ; preds = %.lr.ph.i.i.i.i.i390.preheader
  %i.aeg = and i64 %i.aed, -8
  %i.aeh = add i64 %i.aeg, 8                      ; 2 uses
  %i.aei = getelementptr i8, ptr %i.aea, i64 %i.aeh
  %i.aej = getelementptr i8, ptr %.val.i.i386, i64 %i.aeh
  %bound02788 = icmp ult ptr %i.aea, %i.aej
  %bound12789 = icmp ult ptr %.val.i.i386, %i.aei
  %found.conflict2790 = and i1 %bound02788, %bound12789
  br i1 %found.conflict2790, label %.lr.ph.i.i.i.i.i390.preheader3210, label %vector.ph2791

vector.ph2791:                                    ; preds = %vector.memcheck2787
  %n.vec2792 = and i64 %i.aef, 4611686018427387900 ; 3 uses
  %i.aek = shl i64 %n.vec2792, 3                  ; 2 uses
  %i.ael = getelementptr i8, ptr %i.aea, i64 %i.aek ; 2 uses
  %i.aem = getelementptr i8, ptr %.val.i.i386, i64 %i.aek
  br label %vector.body2793

vector.body2793:                                  ; preds = %vector.body2793, %vector.ph2791
  %index2794 = phi i64 [ 0, %vector.ph2791 ], [ %index.next2799, %vector.body2793 ] ; 2 uses
  %i.aen = shl i64 %index2794, 3                  ; 2 uses
  %next.gep2795 = getelementptr i8, ptr %i.aea, i64 %i.aen ; 2 uses
  %next.gep2796 = getelementptr i8, ptr %.val.i.i386, i64 %i.aen ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11104)
  call void @llvm.experimental.noalias.scope.decl(metadata !11105)
  %i.aeo = getelementptr i8, ptr %next.gep2796, i64 16 ; 2 uses
  %wide.load2797 = load <2 x i64>, ptr %next.gep2796, align 8, !tbaa !466, !alias.scope !11106
  %wide.load2798 = load <2 x i64>, ptr %i.aeo, align 8, !tbaa !466, !alias.scope !11106
  %i.aep = getelementptr i8, ptr %next.gep2795, i64 16
  store <2 x i64> %wide.load2797, ptr %next.gep2795, align 8, !tbaa !466, !alias.scope !11107, !noalias !11108
  store <2 x i64> %wide.load2798, ptr %i.aep, align 8, !tbaa !466, !alias.scope !11107, !noalias !11108
  store <2 x ptr> splat (ptr null), ptr %next.gep2796, align 8, !tbaa !466, !alias.scope !11106
  store <2 x ptr> splat (ptr null), ptr %i.aeo, align 8, !tbaa !466, !alias.scope !11106
  %index.next2799 = add nuw i64 %index2794, 4     ; 2 uses
  %i.aeq = icmp eq i64 %index.next2799, %n.vec2792
  br i1 %i.aeq, label %middle.block2800, label %vector.body2793, !llvm.loop !10862

middle.block2800:                                 ; preds = %vector.body2793
  %cmp.n2801 = icmp eq i64 %i.aef, %n.vec2792
  br i1 %cmp.n2801, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i395, label %.lr.ph.i.i.i.i.i390.preheader3210

.lr.ph.i.i.i.i.i390.preheader3210:                ; preds = %vector.memcheck2787, %.lr.ph.i.i.i.i.i390.preheader, %middle.block2800
  %.03.i.i.i.i.i391.ph = phi ptr [ %i.aea, %vector.memcheck2787 ], [ %i.aea, %.lr.ph.i.i.i.i.i390.preheader ], [ %i.ael, %middle.block2800 ]
  %.092.i.i.i.i.i392.ph = phi ptr [ %.val.i.i386, %vector.memcheck2787 ], [ %.val.i.i386, %.lr.ph.i.i.i.i.i390.preheader ], [ %i.aem, %middle.block2800 ]
  br label %.lr.ph.i.i.i.i.i390

.lr.ph.i.i.i.i.i390:                              ; preds = %.lr.ph.i.i.i.i.i390.preheader3210, %.lr.ph.i.i.i.i.i390
  %.03.i.i.i.i.i391 = phi ptr [ %i.aes, %.lr.ph.i.i.i.i.i390 ], [ %.03.i.i.i.i.i391.ph, %.lr.ph.i.i.i.i.i390.preheader3210 ] ; 2 uses
  %.092.i.i.i.i.i392 = phi ptr [ %i.aer, %.lr.ph.i.i.i.i.i390 ], [ %.092.i.i.i.i.i392.ph, %.lr.ph.i.i.i.i.i390.preheader3210 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11104)
  call void @llvm.experimental.noalias.scope.decl(metadata !11105)
  %.val.i.i.i.i.i.i.i.i.i.i393 = load i64, ptr %.092.i.i.i.i.i392, align 8, !tbaa !466, !alias.scope !11105
  store i64 %.val.i.i.i.i.i.i.i.i.i.i393, ptr %.03.i.i.i.i.i391, align 8, !tbaa !466, !alias.scope !11104
  store ptr null, ptr %.092.i.i.i.i.i392, align 8, !tbaa !466, !alias.scope !11105
  %i.aer = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i392, i64 8 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i391, i64 8 ; 2 uses
  %.not.i.i.i.i.i394 = icmp eq ptr %i.aer, %i.adl
  br i1 %.not.i.i.i.i.i394, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i395, label %.lr.ph.i.i.i.i.i390, !llvm.loop !10863

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i395: ; preds = %.lr.ph.i.i.i.i.i390, %middle.block2800, %.noexc399
  %.0.lcssa.i.i.i.i.i396 = phi ptr [ %i.aea, %.noexc399 ], [ %i.ael, %middle.block2800 ], [ %i.aes, %.lr.ph.i.i.i.i.i390 ]
  %i.aet = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i396, i64 8
  %.not.i28.i.i397 = icmp eq ptr %.val.i.i386, null
  br i1 %.not.i28.i.i397, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_20ArrayUniqueValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i395
  %i.aeu = load ptr, ptr %i.adm, align 8, !tbaa !8351
  %i.aev = ptrtoint ptr %i.aeu to i64
  %i.aew = sub i64 %i.aev, %i.adq
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i386, i64 noundef %i.aew) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_20ArrayUniqueValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_20ArrayUniqueValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.fi, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i395
  store ptr %i.aea, ptr %i.ade, align 8, !tbaa !8354
  store ptr %i.aet, ptr %i.adk, align 8, !tbaa !8350
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %i.ady
  store ptr %i.aex, ptr %i.adm, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit403: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i387, %bb.fh
  %i.aey = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.adf, i64 noundef 16) #47
  br label %common.resume

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_20ArrayUniqueValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.ff, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit380
  %i.aez = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.50, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.50, i64 10)) ; 3 uses
  %i.afa = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.51, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.51, i64 17)) ; 3 uses
  %i.afb = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.52, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.52, i64 20)) ; 4 uses
  %i.afc = icmp ne ptr %i.aez, null               ; 2 uses
  %i.afd = icmp ne ptr %i.afa, null               ; 2 uses
  %or.cond5 = or i1 %i.afc, %i.afd
  %i.afe = icmp ne ptr %i.afb, null               ; 2 uses
  %or.cond7 = or i1 %or.cond5, %i.afe
  br i1 %or.cond7, label %bb.fj, label %bb.iy

bb.fj:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit
  %i.aff = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.afg = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #46, !noalias !11109, !inline_history !10866 ; 17 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorE, i64 16), ptr %i.afg, align 8, !tbaa !436, !noalias !11109
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 8 ; 6 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afg, i64 56 ; 4 uses
  store ptr %i.afi, ptr %i.afh, align 8, !tbaa !9870, !noalias !11109
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afg, i64 16 ; 6 uses
  store i64 1, ptr %i.afj, align 8, !tbaa !9871, !noalias !11109
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afg, i64 24 ; 9 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afg, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afk, i8 0, i64 16, i1 false), !noalias !11109
  store float 1.000000e+00, ptr %i.afl, align 8, !tbaa !451, !noalias !11109
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afg, i64 48 ; 3 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afg, i64 64 ; 3 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afg, i64 88 ; 3 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afg, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.afm, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.afp, align 8, !tbaa !9879, !noalias !11109
  br i1 %i.afc, label %bb.fk, label %.loopexit1064

bb.fk:                                            ; preds = %bb.fj
  %i.afq = load i32, ptr %i.aez, align 8, !tbaa !8338, !noalias !11109
  %.not.i.i.i.i678 = icmp eq i32 %i.afq, 5
  br i1 %.not.i.i.i.i678, label %_ZNK5folly7dynamic5itemsEv.exit.i, label %.loopexit1064

_ZNK5folly7dynamic5itemsEv.exit.i:                ; preds = %bb.fk
  %i.afr = getelementptr inbounds nuw i8, ptr %i.aez, i64 24
  %i.afs = load i64, ptr %i.afr, align 8, !tbaa !9880, !noalias !11109 ; 3 uses
  %i.aft = and i64 %i.afs, -8                     ; 2 uses
  %.not10241210 = icmp eq i64 %i.aft, 0
  br i1 %.not10241210, label %.loopexit1064, label %.lr.ph1213

.lr.ph1213:                                       ; preds = %_ZNK5folly7dynamic5itemsEv.exit.i
  %i.afu = inttoptr i64 %i.aft to ptr
  %i.afv = shl i64 %i.afs, 1
  %i.afw = and i64 %i.afv, 14
  %i.afx = lshr i64 %i.afs, 3
  %i.afy = and i64 %i.afx, 1
  %i.afz = or disjoint i64 %i.afw, %i.afy
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afg, i64 32 ; 3 uses
  br label %bb.fl

bb.fl:                                            ; preds = %.lr.ph1213, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i
  %.sroa.91001.01212 = phi i64 [ %i.afz, %.lr.ph1213 ], [ %.sroa.91001.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i ] ; 3 uses
  %.sroa.0998.01211 = phi ptr [ %i.afu, %.lr.ph1213 ], [ %.sroa.0998.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i ] ; 3 uses
  %i.agb = load ptr, ptr %.sroa.0998.01211, align 8, !tbaa !9882, !noalias !11109 ; 5 uses
  %i.agc = load i32, ptr %i.agb, align 8, !tbaa !8338, !noalias !11109
  %.not.i.i.i58.i = icmp eq i32 %i.agc, 6
  br i1 %.not.i.i.i58.i, label %bb.fm, label %bb.gx

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !11109
  call void @llvm.experimental.noalias.scope.decl(metadata !11110)
  %i.agd = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %.noexc59.i unwind label %bb.gw ; 5 uses

.noexc59.i:                                       ; preds = %bb.fm
  %i.age = getelementptr inbounds nuw i8, ptr %i.agb, i64 40
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 72)>, ptr %i.agd, align 8, !tbaa !436, !noalias !11111
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agd, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agf, i8 0, i64 24, i1 false), !noalias !11111
  store ptr %i.agd, ptr %8, align 8, !tbaa !438, !alias.scope !11110, !noalias !11109
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.agd, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.age)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i693 unwind label %bb.fn, !noalias !11112, !inline_history !10871

bb.fn:                                            ; preds = %.noexc59.i
  %i.agg = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #23, !noalias !11109, !inline_history !10871
  br label %.body.i690

_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i693: ; preds = %.noexc59.i
  %i.agh = load i32, ptr %i.agb, align 8, !tbaa !8338, !noalias !11109 ; 2 uses
  %.not.i.not.i.i.i60.i = icmp eq i32 %i.agh, 6
  br i1 %.not.i.not.i.i.i60.i, label %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit.i, label %bb.fo

bb.fo:                                            ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i693
  %i.agi = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4nameE, align 8, !tbaa !8345, !noalias !11109
  invoke void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.agi, i32 noundef %i.agh) #20
          to label %.noexc61.i unwind label %.loopexit.split-lp1066.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11109, !inline_history !10872

.noexc61.i:                                       ; preds = %bb.fo
  unreachable

_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit.i:    ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i693
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agb, i64 8 ; 3 uses
  %.val.i.i.i694 = load ptr, ptr %i.agj, align 8, !tbaa !462, !noalias !11109
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agb, i64 16 ; 3 uses
  %.val21.i.i.i = load i64, ptr %i.agk, align 8, !tbaa !456, !noalias !11109
  %i.agl = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %.val.i.i.i694, i64 noundef %.val21.i.i.i, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i.i unwind label %bb.fp, !noalias !11109, !inline_history !10872 ; 5 uses

bb.fp:                                            ; preds = %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit.i
  %i.agm = landingpad { ptr, i32 }
          catch ptr null
  %i.agn = extractvalue { ptr, i32 } %i.agm, 0
  call void @__clang_call_terminate(ptr %i.agn) #45, !noalias !11109, !inline_history !10872
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i.i: ; preds = %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit.i
  %.val22.i.i.i = load i64, ptr %i.afj, align 8, !tbaa !9871, !noalias !11109 ; 3 uses
  %i.ago = urem i64 %i.agl, %.val22.i.i.i         ; 4 uses
  %.val23.i.i.i = load ptr, ptr %i.afh, align 8, !tbaa !9870, !noalias !11109
  %.val25.i.i.i = load ptr, ptr %i.agj, align 8, !noalias !11109
  %.val26.i.i.i = load i64, ptr %i.agk, align 8, !noalias !11109
  %.8.val4.fr.i.i.i.i.i = freeze i64 %.val26.i.i.i ; 3 uses
  %i.agp = getelementptr inbounds nuw [8 x i8], ptr %.val23.i.i.i, i64 %i.ago
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !457, !noalias !11109 ; 2 uses
  %.not.i.i.i.i.i695 = icmp eq ptr %i.agq, null
  br i1 %.not.i.i.i.i.i695, label %.loopexit42.i.i.i, label %bb.fq

bb.fq:                                            ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i.i
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !458, !noalias !11109 ; 3 uses
  %i.ags = icmp eq i64 %.8.val4.fr.i.i.i.i.i, 0
  %.phi.trans.insert11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.agr, i64 48
  %.val.i.us.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert11.i.i.i.i.i, align 8, !tbaa !460, !noalias !11109 ; 2 uses
  br i1 %i.ags, label %.split.us.i.i.i.i.i, label %.split.i.i.i.i.i

.split.us.i.i.i.i.i:                              ; preds = %bb.fq, %bb.fs
  %.val.i.us.i.i.i.i.i = phi i64 [ %.val23.us.i.i.i.i.i, %bb.fs ], [ %.val.i.us.pre.i.i.i.i.i, %bb.fq ]
  %.0.us.i.i.i.i.i = phi ptr [ %i.agw, %bb.fs ], [ %i.agr, %bb.fq ] ; 3 uses
  %i.agt = icmp eq i64 %i.agl, %.val.i.us.i.i.i.i.i
  br i1 %i.agt, label %bb.fr, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.us.i.i.i.i.i

bb.fr:                                            ; preds = %.split.us.i.i.i.i.i
  %i.agu = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i.i.i, i64 16
  %.val7.i.us.i.i.i.i.i = load i64, ptr %i.agu, align 8, !tbaa !456, !noalias !11109
  %i.agv = icmp eq i64 %.val7.i.us.i.i.i.i.i, 0
  br i1 %i.agv, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.us.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.thread.us.i.i.i.i.i: ; preds = %bb.fr, %.split.us.i.i.i.i.i
  %i.agw = load ptr, ptr %.0.us.i.i.i.i.i, align 8, !tbaa !458, !noalias !11109 ; 3 uses
  %.not18.us.i.i.i.i.i = icmp eq ptr %i.agw, null
  br i1 %.not18.us.i.i.i.i.i, label %.loopexit42.i.i.i, label %bb.fs

end_hunk_0
begin_hunk_1_@_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE:bb.a
  %i.apw = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i119.i, i64 14
  %i.apx = load i8, ptr %i.apw, align 1, !tbaa !428, !noalias !11109
  %i.apy = and i8 %i.apx, 15
  %.not2.i.i.i120.i = icmp eq i8 %i.apy, 0
  br i1 %.not2.i.i.i120.i, label %bb.im, label %.loopexit1055, !prof !643

bb.im:                                            ; preds = %.critedge.i.i.i.i118.i
  %i.apz = getelementptr inbounds i8, ptr %.017.i.i.i.i119.i, i64 -128 ; 4 uses
  %i.aqa = load <16 x i8>, ptr %i.apz, align 16, !tbaa !428, !noalias !11109
  %i.aqb = icmp eq <16 x i8> %i.aqa, zeroinitializer
  %i.aqc = bitcast <16 x i1> %i.aqb to i16
  %i.aqd = and i16 %i.aqc, 16383                  ; 2 uses
  %i.aqe = getelementptr inbounds i8, ptr %.017.i.i.i.i119.i, i64 -256
  call void @llvm.prefetch.p0(ptr nonnull %i.aqe, i32 0, i32 3, i32 1), !noalias !11109
  %.not3.i.i.i123.i = icmp eq i16 %i.aqd, 16383
  br i1 %.not3.i.i.i123.i, label %.critedge.i.i.i.i118.i, label %bb.in, !prof !425, !llvm.loop !362

bb.in:                                            ; preds = %bb.im
  %i.aqf = xor i16 %i.aqd, 16383
  %i.aqg = zext nneg i16 %i.aqf to i32
  %i.aqh = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aqg, i1 true)
  %i.aqi = xor i32 %i.aqh, 31
  %i.aqj = zext nneg i32 %i.aqi to i64            ; 2 uses
  %i.aqk = icmp ne ptr %i.apz, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.aqk), !noalias !11109
  %i.aql = shl nuw nsw i64 %i.aqj, 3
  %i.aqm = getelementptr i8, ptr %i.apz, i64 %i.aql
  %i.aqn = getelementptr i8, ptr %i.aqm, i64 16
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit124.i

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit124.i: ; preds = %thread-pre-split.i.i.i114.i, %bb.in
  %.sroa.0992.1 = phi ptr [ %i.aqn, %bb.in ], [ %i.apt, %thread-pre-split.i.i.i114.i ] ; 2 uses
  %.sroa.9.1 = phi i64 [ %i.aqj, %bb.in ], [ %i.aps, %thread-pre-split.i.i.i114.i ]
  %.not1025 = icmp eq ptr %.sroa.0992.1, null
  br i1 %.not1025, label %.loopexit1055, label %bb.hc

.loopexit1055:                                    ; preds = %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit124.i, %.critedge.i.i.i.i118.i, %_ZNK5folly7dynamic5itemsEv.exit71.i, %bb.hb, %.loopexit1064
  br i1 %i.afe, label %bb.io, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_S9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.io:                                            ; preds = %.loopexit1055
  %i.aqo = load i32, ptr %i.afb, align 8, !tbaa !8338, !noalias !11109
  switch i32 %i.aqo, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_S9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit [
    i32 2, label %_ZNKR5folly7dynamic7getBoolEv.exit.i681
    i32 5, label %bb.ip
  ]

_ZNKR5folly7dynamic7getBoolEv.exit.i681:          ; preds = %bb.io
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  %i.aqq = load i8, ptr %i.aqp, align 8, !tbaa !651, !range !629, !noalias !11109, !noundef !530
  store i8 %i.aqq, ptr %i.afp, align 8, !tbaa !9879, !noalias !11109
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_S9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.ip:                                            ; preds = %bb.io
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !11109
  call void @llvm.experimental.noalias.scope.decl(metadata !11117)
  %i.aqr = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %.noexc130.i unwind label %bb.ir ; 6 uses

.noexc130.i:                                      ; preds = %bb.ip
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 16), ptr %i.aqr, align 8, !tbaa !436, !noalias !11118
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 72), ptr %i.aqs, align 8, !tbaa !436, !noalias !11118
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqr, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqt, i8 0, i64 24, i1 false), !noalias !11118
  store ptr %i.aqr, ptr %11, align 8, !tbaa !438, !alias.scope !11117, !noalias !11109
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.aqr, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.afb)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit133.i unwind label %bb.iq, !noalias !11119, !inline_history !10871

bb.iq:                                            ; preds = %.noexc130.i
  %i.aqu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23, !noalias !11109, !inline_history !10871
  br label %.body131.i

_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit133.i: ; preds = %.noexc130.i
  %i.aqv = load ptr, ptr %i.afo, align 8, !tbaa !466, !noalias !11109 ; 3 uses
  store ptr %i.aqr, ptr %i.afo, align 8, !tbaa !466, !noalias !11109
  %.not.i.i.i134.i = icmp eq ptr %i.aqv, null
  br i1 %.not.i.i.i134.i, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit153.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i135.i

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i135.i: ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit133.i
  %i.aqw = load ptr, ptr %i.aqv, align 8, !tbaa !436, !noalias !11109
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 8
  %i.aqy = load ptr, ptr %i.aqx, align 8, !noalias !11109
  call void %i.aqy(ptr noundef nonnull align 8 dereferenceable(8) %i.aqv) #23, !noalias !11109, !call_target !8388, !inline_history !10874
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit153.i

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit153.i: ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit133.i, %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i135.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !11109
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_S9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.ir:                                            ; preds = %bb.ip
  %i.aqz = landingpad { ptr, i32 }
          cleanup
  br label %.body131.i

.body131.i:                                       ; preds = %bb.ir, %bb.iq
  %eh.lpad-body132.i = phi { ptr, i32 } [ %i.aqz, %bb.ir ], [ %i.aqu, %bb.iq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !11109
  br label %bb.is

bb.is:                                            ; preds = %.body131.i, %.body78.i, %.body.i690
  %.pn53.pn.pn.pn.i = phi { ptr, i32 } [ %eh.lpad-body132.i, %.body131.i ], [ %.pn.pn.i, %.body78.i ], [ %.pn50.i, %.body.i690 ]
  %i.ara = load ptr, ptr %i.afo, align 8, !tbaa !466, !noalias !11109 ; 3 uses
  %.not.i154.i = icmp eq ptr %i.ara, null
  br i1 %.not.i154.i, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i680, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i679

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i679: ; preds = %bb.is
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !436, !noalias !11109
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 8
  %i.ard = load ptr, ptr %i.arc, align 8, !noalias !11109
  call void %i.ard(ptr noundef nonnull align 8 dereferenceable(8) %i.ara) #23, !noalias !11109, !call_target !8388, !inline_history !10887
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i680

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i680: ; preds = %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i679, %bb.is
  call fastcc void @_ZNSt6vectorISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.afn) #23, !noalias !11109, !inline_history !10872
  call fastcc void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.afh) #23, !noalias !11109, !inline_history !10872
  call void @_ZdlPvm(ptr noundef nonnull %i.afg, i64 noundef 104) #47, !noalias !11109, !inline_history !10866
  br label %common.resume

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_S9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.io, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit153.i, %_ZNKR5folly7dynamic7getBoolEv.exit.i681, %.loopexit1055
  store ptr %i.afg, ptr %31, align 8, !tbaa !9889
  %i.are = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !8350 ; 6 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.arh = load ptr, ptr %i.arg, align 8, !tbaa !8351
  %.not.i404 = icmp eq ptr %i.arf, %i.arh
  br i1 %.not.i404, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_S9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr null, ptr %31, align 8, !tbaa !9889
  store ptr %i.afg, ptr %i.arf, align 8, !tbaa !8353
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arf, i64 8
  store ptr %i.ari, ptr %i.are, align 8, !tbaa !8350
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_19PropertiesValidatorES5_ISB_EEEEERS7_DpOT_.exit

bb.iu:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorEJRNS2_22SchemaValidatorContextERPKNS0_7dynamicES9_S9_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i405 = load ptr, ptr %i.aff, align 8, !tbaa !8354 ; 10 uses
  %i.arj = ptrtoint ptr %i.arf to i64             ; 2 uses
  %i.ark = ptrtoint ptr %.val.i.i405 to i64       ; 3 uses
  %i.arl = sub i64 %i.arj, %i.ark                 ; 3 uses
  %i.arm = icmp eq i64 %i.arl, 9223372036854775800
  br i1 %i.arm, label %bb.iv, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i406

bb.iv:                                            ; preds = %bb.iu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc417 unwind label %bb.ix

.noexc417:                                        ; preds = %bb.iv
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i406: ; preds = %bb.iu
  %i.arn = ashr exact i64 %i.arl, 3               ; 3 uses
  %i.aro = icmp eq ptr %i.arf, %.val.i.i405       ; 2 uses
  %.sroa.speculated.i.i.i407 = select i1 %i.aro, i64 1, i64 %i.arn
  %i.arp = add nsw i64 %.sroa.speculated.i.i.i407, %i.arn ; 2 uses
  %i.arq = icmp ult i64 %i.arp, %i.arn
  %i.arr = call i64 @llvm.umin.i64(i64 %i.arp, i64 1152921504606846975)
  %i.ars = select i1 %i.arq, i64 1152921504606846975, i64 %i.arr ; 3 uses
  %.not.i.i.i408 = icmp ne i64 %i.ars, 0
  call void @llvm.assume(i1 %.not.i.i.i408)
  %i.art = shl nuw nsw i64 %i.ars, 3
  %i.aru = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.art) #46
          to label %.noexc418 unwind label %bb.ix ; 10 uses

.noexc418:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i406
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 %i.arl
  store ptr null, ptr %31, align 8, !tbaa !9889
  store ptr %i.afg, ptr %i.arv, align 8, !tbaa !8353
  br i1 %i.aro, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i414, label %.lr.ph.i.i.i.i.i409.preheader

.lr.ph.i.i.i.i.i409.preheader:                    ; preds = %.noexc418
  %i.arw = add i64 %i.arj, -8
  %i.arx = sub i64 %i.arw, %i.ark                 ; 3 uses
  %i.ary = lshr i64 %i.arx, 3
  %i.arz = add nuw nsw i64 %i.ary, 1              ; 2 uses
  %min.iters.check2810 = icmp ult i64 %i.arx, 136
  br i1 %min.iters.check2810, label %.lr.ph.i.i.i.i.i409.preheader3153, label %vector.memcheck2811

vector.memcheck2811:                              ; preds = %.lr.ph.i.i.i.i.i409.preheader
  %i.asa = and i64 %i.arx, -8
  %i.asb = add i64 %i.asa, 8                      ; 2 uses
  %i.asc = getelementptr i8, ptr %i.aru, i64 %i.asb
  %i.asd = getelementptr i8, ptr %.val.i.i405, i64 %i.asb
  %bound02812 = icmp ult ptr %i.aru, %i.asd
  %bound12813 = icmp ult ptr %.val.i.i405, %i.asc
  %found.conflict2814 = and i1 %bound02812, %bound12813
  br i1 %found.conflict2814, label %.lr.ph.i.i.i.i.i409.preheader3153, label %vector.ph2815

vector.ph2815:                                    ; preds = %vector.memcheck2811
  %n.vec2816 = and i64 %i.arz, 4611686018427387900 ; 3 uses
  %i.ase = shl i64 %n.vec2816, 3                  ; 2 uses
  %i.asf = getelementptr i8, ptr %i.aru, i64 %i.ase ; 2 uses
  %i.asg = getelementptr i8, ptr %.val.i.i405, i64 %i.ase
  br label %vector.body2817

vector.body2817:                                  ; preds = %vector.body2817, %vector.ph2815
  %index2818 = phi i64 [ 0, %vector.ph2815 ], [ %index.next2823, %vector.body2817 ] ; 2 uses
  %i.ash = shl i64 %index2818, 3                  ; 2 uses
  %next.gep2819 = getelementptr i8, ptr %i.aru, i64 %i.ash ; 2 uses
  %next.gep2820 = getelementptr i8, ptr %.val.i.i405, i64 %i.ash ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11120)
  call void @llvm.experimental.noalias.scope.decl(metadata !11121)
  %i.asi = getelementptr i8, ptr %next.gep2820, i64 16 ; 2 uses
  %wide.load2821 = load <2 x i64>, ptr %next.gep2820, align 8, !tbaa !466, !alias.scope !11122
  %wide.load2822 = load <2 x i64>, ptr %i.asi, align 8, !tbaa !466, !alias.scope !11122
  %i.asj = getelementptr i8, ptr %next.gep2819, i64 16
  store <2 x i64> %wide.load2821, ptr %next.gep2819, align 8, !tbaa !466, !alias.scope !11123, !noalias !11124
  store <2 x i64> %wide.load2822, ptr %i.asj, align 8, !tbaa !466, !alias.scope !11123, !noalias !11124
  store <2 x ptr> splat (ptr null), ptr %next.gep2820, align 8, !tbaa !466, !alias.scope !11122
  store <2 x ptr> splat (ptr null), ptr %i.asi, align 8, !tbaa !466, !alias.scope !11122
  %index.next2823 = add nuw i64 %index2818, 4     ; 2 uses
  %i.ask = icmp eq i64 %index.next2823, %n.vec2816
  br i1 %i.ask, label %middle.block2824, label %vector.body2817, !llvm.loop !10894

middle.block2824:                                 ; preds = %vector.body2817
  %cmp.n2825 = icmp eq i64 %i.arz, %n.vec2816
  br i1 %cmp.n2825, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i414, label %.lr.ph.i.i.i.i.i409.preheader3153

.lr.ph.i.i.i.i.i409.preheader3153:                ; preds = %vector.memcheck2811, %.lr.ph.i.i.i.i.i409.preheader, %middle.block2824
  %.03.i.i.i.i.i410.ph = phi ptr [ %i.aru, %vector.memcheck2811 ], [ %i.aru, %.lr.ph.i.i.i.i.i409.preheader ], [ %i.asf, %middle.block2824 ]
  %.092.i.i.i.i.i411.ph = phi ptr [ %.val.i.i405, %vector.memcheck2811 ], [ %.val.i.i405, %.lr.ph.i.i.i.i.i409.preheader ], [ %i.asg, %middle.block2824 ]
  br label %.lr.ph.i.i.i.i.i409

.lr.ph.i.i.i.i.i409:                              ; preds = %.lr.ph.i.i.i.i.i409.preheader3153, %.lr.ph.i.i.i.i.i409
  %.03.i.i.i.i.i410 = phi ptr [ %i.asm, %.lr.ph.i.i.i.i.i409 ], [ %.03.i.i.i.i.i410.ph, %.lr.ph.i.i.i.i.i409.preheader3153 ] ; 2 uses
  %.092.i.i.i.i.i411 = phi ptr [ %i.asl, %.lr.ph.i.i.i.i.i409 ], [ %.092.i.i.i.i.i411.ph, %.lr.ph.i.i.i.i.i409.preheader3153 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11120)
  call void @llvm.experimental.noalias.scope.decl(metadata !11121)
  %.val.i.i.i.i.i.i.i.i.i.i412 = load i64, ptr %.092.i.i.i.i.i411, align 8, !tbaa !466, !alias.scope !11121
  store i64 %.val.i.i.i.i.i.i.i.i.i.i412, ptr %.03.i.i.i.i.i410, align 8, !tbaa !466, !alias.scope !11120
  store ptr null, ptr %.092.i.i.i.i.i411, align 8, !tbaa !466, !alias.scope !11121
  %i.asl = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i411, i64 8 ; 2 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i410, i64 8 ; 2 uses
  %.not.i.i.i.i.i413 = icmp eq ptr %i.asl, %i.arf
  br i1 %.not.i.i.i.i.i413, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i414, label %.lr.ph.i.i.i.i.i409, !llvm.loop !10895

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i414: ; preds = %.lr.ph.i.i.i.i.i409, %middle.block2824, %.noexc418
  %.0.lcssa.i.i.i.i.i415 = phi ptr [ %i.aru, %.noexc418 ], [ %i.asf, %middle.block2824 ], [ %i.asm, %.lr.ph.i.i.i.i.i409 ]
  %i.asn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i415, i64 8
  %.not.i28.i.i416 = icmp eq ptr %.val.i.i405, null
  br i1 %.not.i28.i.i416, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19PropertiesValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.iw

bb.iw:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i414
  %i.aso = load ptr, ptr %i.arg, align 8, !tbaa !8351
  %i.asp = ptrtoint ptr %i.aso to i64
  %i.asq = sub i64 %i.asp, %i.ark
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i405, i64 noundef %i.asq) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19PropertiesValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19PropertiesValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.iw, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i414
  store ptr %i.aru, ptr %i.aff, align 8, !tbaa !8354
  store ptr %i.asn, ptr %i.are, align 8, !tbaa !8350
  %i.asr = getelementptr inbounds nuw [8 x i8], ptr %i.aru, i64 %i.ars
  store ptr %i.asr, ptr %i.arg, align 8, !tbaa !8351
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_19PropertiesValidatorES5_ISB_EEEEERS7_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_19PropertiesValidatorES5_ISB_EEEEERS7_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19PropertiesValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.it
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.iy

bb.ix:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i406, %bb.iv
  %i.ass = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %common.resume

bb.iy:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorESt14default_deleteIS3_EED2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_19PropertiesValidatorES5_ISB_EEEEERS7_DpOT_.exit
  %i.ast = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.53, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.53, i64 13)) ; 3 uses
  %.not164 = icmp eq ptr %i.ast, null
  br i1 %.not164, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit440, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.asu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.asv = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #46, !noalias !11125 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEE, i64 16), ptr %i.asv, align 8, !tbaa !436, !noalias !11125
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 8 ; 2 uses
  store i64 -1, ptr %i.asw, align 8, !tbaa !8364, !noalias !11125
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asv, i64 16
  store i32 5, ptr %i.asx, align 8, !tbaa !8365, !noalias !11125
  %i.asy = load i32, ptr %i.ast, align 8, !tbaa !8338, !noalias !11125
  %.not.i.i.i.i.i419 = icmp eq i32 %i.asy, 4
  br i1 %.not.i.i.i.i.i419, label %bb.ja, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit420

bb.ja:                                            ; preds = %bb.iz
  %i.asz = getelementptr inbounds nuw i8, ptr %i.ast, i64 8
  %i.ata = load i64, ptr %i.asz, align 8, !tbaa !650, !noalias !11125
  store i64 %i.ata, ptr %i.asw, align 8, !tbaa !8364, !noalias !11125
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit420

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit420: ; preds = %bb.iz, %bb.ja
  %i.atb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !8350 ; 6 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ate = load ptr, ptr %i.atd, align 8, !tbaa !8351
  %.not.i421 = icmp eq ptr %i.atc, %i.ate
  br i1 %.not.i421, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit420
  store ptr %i.asv, ptr %i.atc, align 8, !tbaa !8353
  %i.atf = getelementptr inbounds nuw i8, ptr %i.atc, i64 8
  store ptr %i.atf, ptr %i.atb, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit440

bb.jc:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit420
  %.val.i.i422 = load ptr, ptr %i.asu, align 8, !tbaa !8354 ; 10 uses
  %i.atg = ptrtoint ptr %i.atc to i64             ; 2 uses
  %i.ath = ptrtoint ptr %.val.i.i422 to i64       ; 3 uses
  %i.ati = sub i64 %i.atg, %i.ath                 ; 3 uses
  %i.atj = icmp eq i64 %i.ati, 9223372036854775800
  br i1 %i.atj, label %bb.jd, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i423

bb.jd:                                            ; preds = %bb.jc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc435 unwind label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit443

.noexc435:                                        ; preds = %bb.jd
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i423: ; preds = %bb.jc
  %i.atk = ashr exact i64 %i.ati, 3               ; 3 uses
  %i.atl = icmp eq ptr %i.atc, %.val.i.i422       ; 2 uses
  %.sroa.speculated.i.i.i424 = select i1 %i.atl, i64 1, i64 %i.atk
  %i.atm = add nsw i64 %.sroa.speculated.i.i.i424, %i.atk ; 2 uses
  %i.atn = icmp ult i64 %i.atm, %i.atk
  %i.ato = call i64 @llvm.umin.i64(i64 %i.atm, i64 1152921504606846975)
  %i.atp = select i1 %i.atn, i64 1152921504606846975, i64 %i.ato ; 3 uses
  %.not.i.i.i425 = icmp ne i64 %i.atp, 0
  call void @llvm.assume(i1 %.not.i.i.i425)
  %i.atq = shl nuw nsw i64 %i.atp, 3
  %i.atr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.atq) #46
          to label %.noexc436 unwind label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit443 ; 10 uses

.noexc436:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i423
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atr, i64 %i.ati
  store ptr %i.asv, ptr %i.ats, align 8, !tbaa !8353
  br i1 %i.atl, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i431, label %.lr.ph.i.i.i.i.i426.preheader

.lr.ph.i.i.i.i.i426.preheader:                    ; preds = %.noexc436
  %i.att = add i64 %i.atg, -8
  %i.atu = sub i64 %i.att, %i.ath                 ; 3 uses
  %i.atv = lshr i64 %i.atu, 3
  %i.atw = add nuw nsw i64 %i.atv, 1              ; 2 uses
  %min.iters.check2834 = icmp ult i64 %i.atu, 136
  br i1 %min.iters.check2834, label %.lr.ph.i.i.i.i.i426.preheader3151, label %vector.memcheck2835

vector.memcheck2835:                              ; preds = %.lr.ph.i.i.i.i.i426.preheader
  %i.atx = and i64 %i.atu, -8
  %i.aty = add i64 %i.atx, 8                      ; 2 uses
  %i.atz = getelementptr i8, ptr %i.atr, i64 %i.aty
  %i.aua = getelementptr i8, ptr %.val.i.i422, i64 %i.aty
  %bound02836 = icmp ult ptr %i.atr, %i.aua
  %bound12837 = icmp ult ptr %.val.i.i422, %i.atz
  %found.conflict2838 = and i1 %bound02836, %bound12837
  br i1 %found.conflict2838, label %.lr.ph.i.i.i.i.i426.preheader3151, label %vector.ph2839

vector.ph2839:                                    ; preds = %vector.memcheck2835
  %n.vec2840 = and i64 %i.atw, 4611686018427387900 ; 3 uses
  %i.aub = shl i64 %n.vec2840, 3                  ; 2 uses
  %i.auc = getelementptr i8, ptr %i.atr, i64 %i.aub ; 2 uses
  %i.aud = getelementptr i8, ptr %.val.i.i422, i64 %i.aub
  br label %vector.body2841

vector.body2841:                                  ; preds = %vector.body2841, %vector.ph2839
  %index2842 = phi i64 [ 0, %vector.ph2839 ], [ %index.next2847, %vector.body2841 ] ; 2 uses
  %i.aue = shl i64 %index2842, 3                  ; 2 uses
  %next.gep2843 = getelementptr i8, ptr %i.atr, i64 %i.aue ; 2 uses
  %next.gep2844 = getelementptr i8, ptr %.val.i.i422, i64 %i.aue ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11126)
  call void @llvm.experimental.noalias.scope.decl(metadata !11127)
  %i.auf = getelementptr i8, ptr %next.gep2844, i64 16 ; 2 uses
  %wide.load2845 = load <2 x i64>, ptr %next.gep2844, align 8, !tbaa !466, !alias.scope !11128
  %wide.load2846 = load <2 x i64>, ptr %i.auf, align 8, !tbaa !466, !alias.scope !11128
  %i.aug = getelementptr i8, ptr %next.gep2843, i64 16
  store <2 x i64> %wide.load2845, ptr %next.gep2843, align 8, !tbaa !466, !alias.scope !11129, !noalias !11130
  store <2 x i64> %wide.load2846, ptr %i.aug, align 8, !tbaa !466, !alias.scope !11129, !noalias !11130
  store <2 x ptr> splat (ptr null), ptr %next.gep2844, align 8, !tbaa !466, !alias.scope !11128
  store <2 x ptr> splat (ptr null), ptr %i.auf, align 8, !tbaa !466, !alias.scope !11128
  %index.next2847 = add nuw i64 %index2842, 4     ; 2 uses
  %i.auh = icmp eq i64 %index.next2847, %n.vec2840
  br i1 %i.auh, label %middle.block2848, label %vector.body2841, !llvm.loop !10904

middle.block2848:                                 ; preds = %vector.body2841
  %cmp.n2849 = icmp eq i64 %i.atw, %n.vec2840
  br i1 %cmp.n2849, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i431, label %.lr.ph.i.i.i.i.i426.preheader3151

.lr.ph.i.i.i.i.i426.preheader3151:                ; preds = %vector.memcheck2835, %.lr.ph.i.i.i.i.i426.preheader, %middle.block2848
  %.03.i.i.i.i.i427.ph = phi ptr [ %i.atr, %vector.memcheck2835 ], [ %i.atr, %.lr.ph.i.i.i.i.i426.preheader ], [ %i.auc, %middle.block2848 ]
  %.092.i.i.i.i.i428.ph = phi ptr [ %.val.i.i422, %vector.memcheck2835 ], [ %.val.i.i422, %.lr.ph.i.i.i.i.i426.preheader ], [ %i.aud, %middle.block2848 ]
  br label %.lr.ph.i.i.i.i.i426

.lr.ph.i.i.i.i.i426:                              ; preds = %.lr.ph.i.i.i.i.i426.preheader3151, %.lr.ph.i.i.i.i.i426
  %.03.i.i.i.i.i427 = phi ptr [ %i.auj, %.lr.ph.i.i.i.i.i426 ], [ %.03.i.i.i.i.i427.ph, %.lr.ph.i.i.i.i.i426.preheader3151 ] ; 2 uses
  %.092.i.i.i.i.i428 = phi ptr [ %i.aui, %.lr.ph.i.i.i.i.i426 ], [ %.092.i.i.i.i.i428.ph, %.lr.ph.i.i.i.i.i426.preheader3151 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11126)
  call void @llvm.experimental.noalias.scope.decl(metadata !11127)
  %.val.i.i.i.i.i.i.i.i.i.i429 = load i64, ptr %.092.i.i.i.i.i428, align 8, !tbaa !466, !alias.scope !11127
  store i64 %.val.i.i.i.i.i.i.i.i.i.i429, ptr %.03.i.i.i.i.i427, align 8, !tbaa !466, !alias.scope !11126
  store ptr null, ptr %.092.i.i.i.i.i428, align 8, !tbaa !466, !alias.scope !11127
  %i.aui = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i428, i64 8 ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i427, i64 8 ; 2 uses
  %.not.i.i.i.i.i430 = icmp eq ptr %i.aui, %i.atc
  br i1 %.not.i.i.i.i.i430, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i431, label %.lr.ph.i.i.i.i.i426, !llvm.loop !10905

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i431: ; preds = %.lr.ph.i.i.i.i.i426, %middle.block2848, %.noexc436
  %.0.lcssa.i.i.i.i.i432 = phi ptr [ %i.atr, %.noexc436 ], [ %i.auc, %middle.block2848 ], [ %i.auj, %.lr.ph.i.i.i.i.i426 ]
  %i.auk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i432, i64 8
  %.not.i28.i.i433 = icmp eq ptr %.val.i.i422, null
  br i1 %.not.i28.i.i433, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt13greater_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i434, label %bb.je

bb.je:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i431
  %i.aul = load ptr, ptr %i.atd, align 8, !tbaa !8351
  %i.aum = ptrtoint ptr %i.aul to i64
  %i.aun = sub i64 %i.aum, %i.ath
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i422, i64 noundef %i.aun) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt13greater_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i434

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt13greater_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i434: ; preds = %bb.je, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i431
  store ptr %i.atr, ptr %i.asu, align 8, !tbaa !8354
  store ptr %i.auk, ptr %i.atb, align 8, !tbaa !8350
  %i.auo = getelementptr inbounds nuw [8 x i8], ptr %i.atr, i64 %i.atp
  store ptr %i.auo, ptr %i.atd, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit440

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit443: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i423, %bb.jd
  %i.aup = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.asv, i64 noundef 24) #47
  br label %common.resume

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit440: ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt13greater_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i434, %bb.jb, %bb.iy
  %i.auq = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.54, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 13)) ; 3 uses
  %.not165 = icmp eq ptr %i.auq, null
  br i1 %.not165, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit465, label %bb.jf

bb.jf:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit440
  %i.aur = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aus = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #46, !noalias !11131 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEE, i64 16), ptr %i.aus, align 8, !tbaa !436, !noalias !11131
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aus, i64 8 ; 2 uses
  store i64 -1, ptr %i.aut, align 8, !tbaa !8367, !noalias !11131
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aus, i64 16
  store i32 5, ptr %i.auu, align 8, !tbaa !8368, !noalias !11131
  %i.auv = load i32, ptr %i.auq, align 8, !tbaa !8338, !noalias !11131
  %.not.i.i.i.i.i444 = icmp eq i32 %i.auv, 4
  br i1 %.not.i.i.i.i.i444, label %bb.jg, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit445

bb.jg:                                            ; preds = %bb.jf
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auq, i64 8
  %i.aux = load i64, ptr %i.auw, align 8, !tbaa !650, !noalias !11131
  store i64 %i.aux, ptr %i.aut, align 8, !tbaa !8367, !noalias !11131
  br label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit445

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit445: ; preds = %bb.jf, %bb.jg
  %i.auy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.auz = load ptr, ptr %i.auy, align 8, !tbaa !8350 ; 6 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.avb = load ptr, ptr %i.ava, align 8, !tbaa !8351
  %.not.i446 = icmp eq ptr %i.auz, %i.avb
  br i1 %.not.i446, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit445
  store ptr %i.aus, ptr %i.auz, align 8, !tbaa !8353
  %i.avc = getelementptr inbounds nuw i8, ptr %i.auz, i64 8
  store ptr %i.avc, ptr %i.auy, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit465

bb.ji:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEEJRKNS0_7dynamicENS7_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit445
  %.val.i.i447 = load ptr, ptr %i.aur, align 8, !tbaa !8354 ; 10 uses
  %i.avd = ptrtoint ptr %i.auz to i64             ; 2 uses
  %i.ave = ptrtoint ptr %.val.i.i447 to i64       ; 3 uses
  %i.avf = sub i64 %i.avd, %i.ave                 ; 3 uses
  %i.avg = icmp eq i64 %i.avf, 9223372036854775800
  br i1 %i.avg, label %bb.jj, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i448

bb.jj:                                            ; preds = %bb.ji
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc460 unwind label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit468

.noexc460:                                        ; preds = %bb.jj
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i448: ; preds = %bb.ji
  %i.avh = ashr exact i64 %i.avf, 3               ; 3 uses
  %i.avi = icmp eq ptr %i.auz, %.val.i.i447       ; 2 uses
  %.sroa.speculated.i.i.i449 = select i1 %i.avi, i64 1, i64 %i.avh
  %i.avj = add nsw i64 %.sroa.speculated.i.i.i449, %i.avh ; 2 uses
  %i.avk = icmp ult i64 %i.avj, %i.avh
  %i.avl = call i64 @llvm.umin.i64(i64 %i.avj, i64 1152921504606846975)
  %i.avm = select i1 %i.avk, i64 1152921504606846975, i64 %i.avl ; 3 uses
  %.not.i.i.i450 = icmp ne i64 %i.avm, 0
  call void @llvm.assume(i1 %.not.i.i.i450)
  %i.avn = shl nuw nsw i64 %i.avm, 3
  %i.avo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.avn) #46
          to label %.noexc461 unwind label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit468 ; 10 uses

.noexc461:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i448
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 %i.avf
  store ptr %i.aus, ptr %i.avp, align 8, !tbaa !8353
  br i1 %i.avi, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i456, label %.lr.ph.i.i.i.i.i451.preheader

.lr.ph.i.i.i.i.i451.preheader:                    ; preds = %.noexc461
  %i.avq = add i64 %i.avd, -8
  %i.avr = sub i64 %i.avq, %i.ave                 ; 3 uses
  %i.avs = lshr i64 %i.avr, 3
  %i.avt = add nuw nsw i64 %i.avs, 1              ; 2 uses
  %min.iters.check2858 = icmp ult i64 %i.avr, 136
  br i1 %min.iters.check2858, label %.lr.ph.i.i.i.i.i451.preheader3149, label %vector.memcheck2859

vector.memcheck2859:                              ; preds = %.lr.ph.i.i.i.i.i451.preheader
  %i.avu = and i64 %i.avr, -8
  %i.avv = add i64 %i.avu, 8                      ; 2 uses
  %i.avw = getelementptr i8, ptr %i.avo, i64 %i.avv
  %i.avx = getelementptr i8, ptr %.val.i.i447, i64 %i.avv
  %bound02860 = icmp ult ptr %i.avo, %i.avx
  %bound12861 = icmp ult ptr %.val.i.i447, %i.avw
  %found.conflict2862 = and i1 %bound02860, %bound12861
  br i1 %found.conflict2862, label %.lr.ph.i.i.i.i.i451.preheader3149, label %vector.ph2863

vector.ph2863:                                    ; preds = %vector.memcheck2859
  %n.vec2864 = and i64 %i.avt, 4611686018427387900 ; 3 uses
  %i.avy = shl i64 %n.vec2864, 3                  ; 2 uses
  %i.avz = getelementptr i8, ptr %i.avo, i64 %i.avy ; 2 uses
  %i.awa = getelementptr i8, ptr %.val.i.i447, i64 %i.avy
  br label %vector.body2865

vector.body2865:                                  ; preds = %vector.body2865, %vector.ph2863
  %index2866 = phi i64 [ 0, %vector.ph2863 ], [ %index.next2871, %vector.body2865 ] ; 2 uses
  %i.awb = shl i64 %index2866, 3                  ; 2 uses
  %next.gep2867 = getelementptr i8, ptr %i.avo, i64 %i.awb ; 2 uses
  %next.gep2868 = getelementptr i8, ptr %.val.i.i447, i64 %i.awb ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11132)
  call void @llvm.experimental.noalias.scope.decl(metadata !11133)
  %i.awc = getelementptr i8, ptr %next.gep2868, i64 16 ; 2 uses
  %wide.load2869 = load <2 x i64>, ptr %next.gep2868, align 8, !tbaa !466, !alias.scope !11134
  %wide.load2870 = load <2 x i64>, ptr %i.awc, align 8, !tbaa !466, !alias.scope !11134
  %i.awd = getelementptr i8, ptr %next.gep2867, i64 16
  store <2 x i64> %wide.load2869, ptr %next.gep2867, align 8, !tbaa !466, !alias.scope !11135, !noalias !11136
  store <2 x i64> %wide.load2870, ptr %i.awd, align 8, !tbaa !466, !alias.scope !11135, !noalias !11136
  store <2 x ptr> splat (ptr null), ptr %next.gep2868, align 8, !tbaa !466, !alias.scope !11134
  store <2 x ptr> splat (ptr null), ptr %i.awc, align 8, !tbaa !466, !alias.scope !11134
  %index.next2871 = add nuw i64 %index2866, 4     ; 2 uses
  %i.awe = icmp eq i64 %index.next2871, %n.vec2864
  br i1 %i.awe, label %middle.block2872, label %vector.body2865, !llvm.loop !10914

middle.block2872:                                 ; preds = %vector.body2865
  %cmp.n2873 = icmp eq i64 %i.avt, %n.vec2864
  br i1 %cmp.n2873, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i456, label %.lr.ph.i.i.i.i.i451.preheader3149

.lr.ph.i.i.i.i.i451.preheader3149:                ; preds = %vector.memcheck2859, %.lr.ph.i.i.i.i.i451.preheader, %middle.block2872
  %.03.i.i.i.i.i452.ph = phi ptr [ %i.avo, %vector.memcheck2859 ], [ %i.avo, %.lr.ph.i.i.i.i.i451.preheader ], [ %i.avz, %middle.block2872 ]
  %.092.i.i.i.i.i453.ph = phi ptr [ %.val.i.i447, %vector.memcheck2859 ], [ %.val.i.i447, %.lr.ph.i.i.i.i.i451.preheader ], [ %i.awa, %middle.block2872 ]
  br label %.lr.ph.i.i.i.i.i451

.lr.ph.i.i.i.i.i451:                              ; preds = %.lr.ph.i.i.i.i.i451.preheader3149, %.lr.ph.i.i.i.i.i451
  %.03.i.i.i.i.i452 = phi ptr [ %i.awg, %.lr.ph.i.i.i.i.i451 ], [ %.03.i.i.i.i.i452.ph, %.lr.ph.i.i.i.i.i451.preheader3149 ] ; 2 uses
  %.092.i.i.i.i.i453 = phi ptr [ %i.awf, %.lr.ph.i.i.i.i.i451 ], [ %.092.i.i.i.i.i453.ph, %.lr.ph.i.i.i.i.i451.preheader3149 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11132)
  call void @llvm.experimental.noalias.scope.decl(metadata !11133)
  %.val.i.i.i.i.i.i.i.i.i.i454 = load i64, ptr %.092.i.i.i.i.i453, align 8, !tbaa !466, !alias.scope !11133
  store i64 %.val.i.i.i.i.i.i.i.i.i.i454, ptr %.03.i.i.i.i.i452, align 8, !tbaa !466, !alias.scope !11132
  store ptr null, ptr %.092.i.i.i.i.i453, align 8, !tbaa !466, !alias.scope !11133
  %i.awf = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i453, i64 8 ; 2 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i452, i64 8 ; 2 uses
  %.not.i.i.i.i.i455 = icmp eq ptr %i.awf, %i.auz
  br i1 %.not.i.i.i.i.i455, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i456, label %.lr.ph.i.i.i.i.i451, !llvm.loop !10915

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i456: ; preds = %.lr.ph.i.i.i.i.i451, %middle.block2872, %.noexc461
  %.0.lcssa.i.i.i.i.i457 = phi ptr [ %i.avo, %.noexc461 ], [ %i.avz, %middle.block2872 ], [ %i.awg, %.lr.ph.i.i.i.i.i451 ]
  %i.awh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i457, i64 8
  %.not.i28.i.i458 = icmp eq ptr %.val.i.i447, null
  br i1 %.not.i28.i.i458, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt10less_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i459, label %bb.jk

bb.jk:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i456
  %i.awi = load ptr, ptr %i.ava, align 8, !tbaa !8351
  %i.awj = ptrtoint ptr %i.awi to i64
  %i.awk = sub i64 %i.awj, %i.ave
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i447, i64 noundef %i.awk) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt10less_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i459

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt10less_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i459: ; preds = %bb.jk, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i456
  store ptr %i.avo, ptr %i.aur, align 8, !tbaa !8354
  store ptr %i.awh, ptr %i.auy, align 8, !tbaa !8350
  %i.awl = getelementptr inbounds nuw [8 x i8], ptr %i.avo, i64 %i.avm
  store ptr %i.awl, ptr %i.ava, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit465

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit468: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i448, %bb.jj
  %i.awm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aus, i64 noundef 24) #47
  br label %common.resume

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit465: ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13SizeValidatorISt10less_equalIlEEES5_ISE_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i459, %bb.jh, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt13greater_equalIlEEESt14default_deleteIS6_EED2Ev.exit440
  %i.awn = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.55, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.55, i64 8)) ; 4 uses
  %.not166 = icmp eq ptr %i.awn, null
  br i1 %.not166, label %bb.ju, label %bb.jl

bb.jl:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit465
  %i.awo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !11137)
  %i.awp = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #46, !noalias !11137 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorE, i64 16), ptr %i.awp, align 8, !tbaa !436, !noalias !11137
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awp, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.awq, i8 0, i64 24, i1 false), !noalias !11137
  %i.awr = load i32, ptr %i.awn, align 8, !tbaa !8338, !noalias !11137
  %.not.i.i.i.i.i469 = icmp eq i32 %i.awr, 1
  br i1 %.not.i.i.i.i.i469, label %bb.jm, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.jm:                                            ; preds = %bb.jl
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awn, i64 8
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !440, !noalias !11137 ; 2 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awn, i64 16
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !440, !noalias !11137 ; 2 uses
  %i.aww = icmp eq ptr %i.awt, %i.awv
  br i1 %i.aww, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph.i.i470

.lr.ph.i.i470:                                    ; preds = %bb.jm, %bb.jo
  %.sroa.017.020.i.i = phi ptr [ %i.axa, %bb.jo ], [ %i.awt, %bb.jm ] ; 3 uses
  %i.awx = load i32, ptr %.sroa.017.020.i.i, align 8, !tbaa !8338, !noalias !11137
  %.not.i.i.i14.i.i = icmp eq i32 %i.awx, 6
  br i1 %.not.i.i.i14.i.i, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %.lr.ph.i.i470
  %i.awy = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i.i, i64 8
  %i.awz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.awq, ptr noundef nonnull align 8 dereferenceable(32) %i.awy)
          to label %bb.jo unwind label %.body.i, !noalias !11137 ; 0 uses

bb.jo:                                            ; preds = %bb.jn, %.lr.ph.i.i470
  %i.axa = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i.i, i64 40 ; 2 uses
  %i.axb = icmp eq ptr %i.axa, %i.awv
  br i1 %i.axb, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph.i.i470

.body.i:                                          ; preds = %bb.jn
  %i.axc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.awq) #23, !noalias !11137
  call void @_ZdlPvm(ptr noundef nonnull %i.awp, i64 noundef 32) #47, !noalias !11137
  br label %common.resume

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.jo, %bb.jl, %bb.jm
  store ptr %i.awp, ptr %32, align 8, !tbaa !9891, !alias.scope !11137
  %i.axd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !8350 ; 6 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.axg = load ptr, ptr %i.axf, align 8, !tbaa !8351
  %.not.i471 = icmp eq ptr %i.axe, %i.axg
  br i1 %.not.i471, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.awp, ptr %i.axe, align 8, !tbaa !8353
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axe, i64 8
  store ptr %i.axh, ptr %i.axd, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorESt14default_deleteIS3_EED2Ev.exit

bb.jq:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i472 = load ptr, ptr %i.awo, align 8, !tbaa !8354 ; 10 uses
  %i.axi = ptrtoint ptr %i.axe to i64             ; 2 uses
  %i.axj = ptrtoint ptr %.val.i.i472 to i64       ; 3 uses
  %i.axk = sub i64 %i.axi, %i.axj                 ; 3 uses
  %i.axl = icmp eq i64 %i.axk, 9223372036854775800
  br i1 %i.axl, label %bb.jr, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i473

bb.jr:                                            ; preds = %bb.jq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc484 unwind label %bb.jt

.noexc484:                                        ; preds = %bb.jr
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i473: ; preds = %bb.jq
  %i.axm = ashr exact i64 %i.axk, 3               ; 3 uses
  %i.axn = icmp eq ptr %i.axe, %.val.i.i472       ; 2 uses
  %.sroa.speculated.i.i.i474 = select i1 %i.axn, i64 1, i64 %i.axm
  %i.axo = add nsw i64 %.sroa.speculated.i.i.i474, %i.axm ; 2 uses
  %i.axp = icmp ult i64 %i.axo, %i.axm
  %i.axq = call i64 @llvm.umin.i64(i64 %i.axo, i64 1152921504606846975)
  %i.axr = select i1 %i.axp, i64 1152921504606846975, i64 %i.axq ; 3 uses
  %.not.i.i.i475 = icmp ne i64 %i.axr, 0
  call void @llvm.assume(i1 %.not.i.i.i475)
  %i.axs = shl nuw nsw i64 %i.axr, 3
  %i.axt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.axs) #46
          to label %.noexc485 unwind label %bb.jt ; 10 uses

.noexc485:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i473
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 %i.axk
  store ptr %i.awp, ptr %i.axu, align 8, !tbaa !8353
  br i1 %i.axn, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i481, label %.lr.ph.i.i.i.i.i476.preheader

.lr.ph.i.i.i.i.i476.preheader:                    ; preds = %.noexc485
  %i.axv = add i64 %i.axi, -8
  %i.axw = sub i64 %i.axv, %i.axj                 ; 3 uses
  %i.axx = lshr i64 %i.axw, 3
  %i.axy = add nuw nsw i64 %i.axx, 1              ; 2 uses
  %min.iters.check2882 = icmp ult i64 %i.axw, 136
  br i1 %min.iters.check2882, label %.lr.ph.i.i.i.i.i476.preheader3147, label %vector.memcheck2883

vector.memcheck2883:                              ; preds = %.lr.ph.i.i.i.i.i476.preheader
  %i.axz = and i64 %i.axw, -8
  %i.aya = add i64 %i.axz, 8                      ; 2 uses
  %i.ayb = getelementptr i8, ptr %i.axt, i64 %i.aya
  %i.ayc = getelementptr i8, ptr %.val.i.i472, i64 %i.aya
  %bound02884 = icmp ult ptr %i.axt, %i.ayc
  %bound12885 = icmp ult ptr %.val.i.i472, %i.ayb
  %found.conflict2886 = and i1 %bound02884, %bound12885
  br i1 %found.conflict2886, label %.lr.ph.i.i.i.i.i476.preheader3147, label %vector.ph2887

vector.ph2887:                                    ; preds = %vector.memcheck2883
  %n.vec2888 = and i64 %i.axy, 4611686018427387900 ; 3 uses
  %i.ayd = shl i64 %n.vec2888, 3                  ; 2 uses
  %i.aye = getelementptr i8, ptr %i.axt, i64 %i.ayd ; 2 uses
  %i.ayf = getelementptr i8, ptr %.val.i.i472, i64 %i.ayd
  br label %vector.body2889

vector.body2889:                                  ; preds = %vector.body2889, %vector.ph2887
  %index2890 = phi i64 [ 0, %vector.ph2887 ], [ %index.next2895, %vector.body2889 ] ; 2 uses
  %i.ayg = shl i64 %index2890, 3                  ; 2 uses
  %next.gep2891 = getelementptr i8, ptr %i.axt, i64 %i.ayg ; 2 uses
  %next.gep2892 = getelementptr i8, ptr %.val.i.i472, i64 %i.ayg ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11138)
  call void @llvm.experimental.noalias.scope.decl(metadata !11139)
  %i.ayh = getelementptr i8, ptr %next.gep2892, i64 16 ; 2 uses
  %wide.load2893 = load <2 x i64>, ptr %next.gep2892, align 8, !tbaa !466, !alias.scope !11140
  %wide.load2894 = load <2 x i64>, ptr %i.ayh, align 8, !tbaa !466, !alias.scope !11140
  %i.ayi = getelementptr i8, ptr %next.gep2891, i64 16
  store <2 x i64> %wide.load2893, ptr %next.gep2891, align 8, !tbaa !466, !alias.scope !11141, !noalias !11142
  store <2 x i64> %wide.load2894, ptr %i.ayi, align 8, !tbaa !466, !alias.scope !11141, !noalias !11142
  store <2 x ptr> splat (ptr null), ptr %next.gep2892, align 8, !tbaa !466, !alias.scope !11140
  store <2 x ptr> splat (ptr null), ptr %i.ayh, align 8, !tbaa !466, !alias.scope !11140
  %index.next2895 = add nuw i64 %index2890, 4     ; 2 uses
  %i.ayj = icmp eq i64 %index.next2895, %n.vec2888
  br i1 %i.ayj, label %middle.block2896, label %vector.body2889, !llvm.loop !10924

middle.block2896:                                 ; preds = %vector.body2889
  %cmp.n2897 = icmp eq i64 %i.axy, %n.vec2888
  br i1 %cmp.n2897, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i481, label %.lr.ph.i.i.i.i.i476.preheader3147

.lr.ph.i.i.i.i.i476.preheader3147:                ; preds = %vector.memcheck2883, %.lr.ph.i.i.i.i.i476.preheader, %middle.block2896
  %.03.i.i.i.i.i477.ph = phi ptr [ %i.axt, %vector.memcheck2883 ], [ %i.axt, %.lr.ph.i.i.i.i.i476.preheader ], [ %i.aye, %middle.block2896 ]
  %.092.i.i.i.i.i478.ph = phi ptr [ %.val.i.i472, %vector.memcheck2883 ], [ %.val.i.i472, %.lr.ph.i.i.i.i.i476.preheader ], [ %i.ayf, %middle.block2896 ]
  br label %.lr.ph.i.i.i.i.i476

.lr.ph.i.i.i.i.i476:                              ; preds = %.lr.ph.i.i.i.i.i476.preheader3147, %.lr.ph.i.i.i.i.i476
  %.03.i.i.i.i.i477 = phi ptr [ %i.ayl, %.lr.ph.i.i.i.i.i476 ], [ %.03.i.i.i.i.i477.ph, %.lr.ph.i.i.i.i.i476.preheader3147 ] ; 2 uses
  %.092.i.i.i.i.i478 = phi ptr [ %i.ayk, %.lr.ph.i.i.i.i.i476 ], [ %.092.i.i.i.i.i478.ph, %.lr.ph.i.i.i.i.i476.preheader3147 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11138)
  call void @llvm.experimental.noalias.scope.decl(metadata !11139)
  %.val.i.i.i.i.i.i.i.i.i.i479 = load i64, ptr %.092.i.i.i.i.i478, align 8, !tbaa !466, !alias.scope !11139
  store i64 %.val.i.i.i.i.i.i.i.i.i.i479, ptr %.03.i.i.i.i.i477, align 8, !tbaa !466, !alias.scope !11138
  store ptr null, ptr %.092.i.i.i.i.i478, align 8, !tbaa !466, !alias.scope !11139
  %i.ayk = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i478, i64 8 ; 2 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i477, i64 8 ; 2 uses
  %.not.i.i.i.i.i480 = icmp eq ptr %i.ayk, %i.axe
  br i1 %.not.i.i.i.i.i480, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i481, label %.lr.ph.i.i.i.i.i476, !llvm.loop !10925

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i481: ; preds = %.lr.ph.i.i.i.i.i476, %middle.block2896, %.noexc485
  %.0.lcssa.i.i.i.i.i482 = phi ptr [ %i.axt, %.noexc485 ], [ %i.aye, %middle.block2896 ], [ %i.ayl, %.lr.ph.i.i.i.i.i476 ]
  %i.aym = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i482, i64 8
  %.not.i28.i.i483 = icmp eq ptr %.val.i.i472, null
  br i1 %.not.i28.i.i483, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_17RequiredValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.js

bb.js:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i481
  %i.ayn = load ptr, ptr %i.axf, align 8, !tbaa !8351
  %i.ayo = ptrtoint ptr %i.ayn to i64
  %i.ayp = sub i64 %i.ayo, %i.axj
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i472, i64 noundef %i.ayp) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_17RequiredValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_17RequiredValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.js, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i481
  store ptr %i.axt, ptr %i.awo, align 8, !tbaa !8354
  store ptr %i.aym, ptr %i.axd, align 8, !tbaa !8350
  %i.ayq = getelementptr inbounds nuw [8 x i8], ptr %i.axt, i64 %i.axr
  store ptr %i.ayq, ptr %i.axf, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.jp, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_17RequiredValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %bb.ju

bb.jt:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i473, %bb.jr
  %i.ayr = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %common.resume

bb.ju:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorESt14default_deleteIS3_EED2Ev.exit, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113SizeValidatorISt10less_equalIlEEESt14default_deleteIS6_EED2Ev.exit465
  %i.ays = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.56, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.56, i64 12)) ; 3 uses
  %.not167 = icmp eq ptr %i.ays, null
  br i1 %.not167, label %bb.lw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.ayt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  %i.ayu = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #46, !noalias !11143, !inline_history !10928 ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorE, i64 16), ptr %i.ayu, align 8, !tbaa !436, !noalias !11143
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 8 ; 3 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayu, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ayv, i8 0, i64 48, i1 false)
  %i.ayx = load i32, ptr %i.ays, align 8, !tbaa !8338, !noalias !11143
  %.not.i.i.i.i720 = icmp eq i32 %i.ayx, 5
  br i1 %.not.i.i.i.i720, label %_ZNK5folly7dynamic5itemsEv.exit.i723, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZNK5folly7dynamic5itemsEv.exit.i723:             ; preds = %bb.jv
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ays, i64 24
  %i.ayz = load i64, ptr %i.ayy, align 8, !tbaa !9880, !noalias !11143 ; 3 uses
  %i.aza = and i64 %i.ayz, -8                     ; 2 uses
  %.not10261220 = icmp eq i64 %i.aza, 0
  br i1 %.not10261220, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph1223

.lr.ph1223:                                       ; preds = %_ZNK5folly7dynamic5itemsEv.exit.i723
  %i.azb = inttoptr i64 %i.aza to ptr
  %i.azc = shl i64 %i.ayz, 1
  %i.azd = and i64 %i.azc, 14
  %i.aze = lshr i64 %i.ayz, 3
  %i.azf = and i64 %i.aze, 1
  %i.azg = or disjoint i64 %i.azd, %i.azf
  %i.azh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.azj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %i.ayu, i64 16 ; 3 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %i.ayu, i64 24
  %i.azo = getelementptr inbounds nuw i8, ptr %i.ayu, i64 40 ; 4 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %i.ayu, i64 48 ; 3 uses
  br label %bb.jw

bb.jw:                                            ; preds = %.lr.ph1223, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i730
  %.sroa.91012.01222 = phi i64 [ %i.azg, %.lr.ph1223 ], [ %.sroa.91012.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i730 ] ; 3 uses
  %.sroa.01009.01221 = phi ptr [ %i.azb, %.lr.ph1223 ], [ %.sroa.01009.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i730 ] ; 3 uses
  %i.azq = load ptr, ptr %.sroa.01009.01221, align 8, !tbaa !9882, !noalias !11143 ; 11 uses
  %i.azr = load i32, ptr %i.azq, align 8, !tbaa !8338, !noalias !11143
  %.not.i.i.i37.i726 = icmp eq i32 %i.azr, 6
  br i1 %.not.i.i.i37.i726, label %bb.jy, label %bb.ln

bb.jx:                                            ; preds = %bb.ku
  %i.azs = landingpad { ptr, i32 }
          cleanup
  br label %.body793

bb.jy:                                            ; preds = %bb.jw
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azq, i64 40 ; 4 uses
  %i.azu = load i32, ptr %i.azt, align 8, !tbaa !8338, !noalias !11143 ; 2 uses
  %.not.i.i.i38.i = icmp eq i32 %i.azu, 1
  br i1 %.not.i.i.i38.i, label %bb.jz, label %bb.ks

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !11143
  %i.azv = load i32, ptr %i.azq, align 8, !tbaa !8338, !noalias !11143 ; 2 uses
  %.not.i.not.i.i.i39.i773 = icmp eq i32 %i.azv, 6
  br i1 %.not.i.not.i.i.i39.i773, label %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit.i775, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.azw = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4nameE, align 8, !tbaa !8345, !noalias !11143
  invoke void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.azw, i32 noundef %i.azv) #20
          to label %.noexc40.i774 unwind label %bb.kj, !noalias !11143, !inline_history !10929

.noexc40.i774:                                    ; preds = %bb.ka
  unreachable

_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit.i775: ; preds = %bb.jz
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azq, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !11143
  call void @llvm.experimental.noalias.scope.decl(metadata !11144), !noalias !11143
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store ptr %i.azh, ptr %5, align 8, !tbaa !454, !alias.scope !11144, !noalias !11143
  %i.azy = load ptr, ptr %i.azx, align 8, !tbaa !462, !noalias !11145 ; 2 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azq, i64 16
  %i.baa = load i64, ptr %i.azz, align 8, !tbaa !456, !noalias !11145 ; 8 uses
  %i.bab = icmp ugt i64 %i.baa, 15
  br i1 %i.bab, label %bb.kb, label %._crit_edge.i.i.i.i.i

bb.kb:                                            ; preds = %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit.i775
  %i.bac = icmp slt i64 %i.baa, 0
  br i1 %i.bac, label %.noexc.i.i.i.i, label %bb.kc

.noexc.i.i.i.i:                                   ; preds = %bb.kb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #44
          to label %.noexc41.i unwind label %.loopexit.split-lp1037.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11143, !inline_history !10929

.noexc41.i:                                       ; preds = %.noexc.i.i.i.i
  unreachable

bb.kc:                                            ; preds = %bb.kb
  %i.bad = add nuw i64 %i.baa, 1                  ; 2 uses
  %i.bae = icmp slt i64 %i.bad, 0
  br i1 %i.bae, label %.noexc6.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !425

.noexc6.i.i.i.i:                                  ; preds = %bb.kc
  invoke void @_ZSt17__throw_bad_allocv() #44
          to label %.noexc42.i792 unwind label %.loopexit.split-lp1037.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11143, !inline_history !10929

.noexc42.i792:                                    ; preds = %.noexc6.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.kc
  %i.baf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bad) #46
          to label %.noexc43.i unwind label %.loopexit.split-lp1037.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11143, !inline_history !10929 ; 2 uses

.noexc43.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.baf, ptr %5, align 8, !tbaa !462, !alias.scope !11144, !noalias !11143
  store i64 %i.baa, ptr %i.azh, align 8, !tbaa !428, !alias.scope !11144, !noalias !11143
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc43.i, %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit.i775
  %i.bag = phi ptr [ %i.baf, %.noexc43.i ], [ %i.azh, %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit.i775 ] ; 3 uses
  switch i64 %i.baa, label %bb.ke [
    i64 1, label %bb.kd
    i64 0, label %_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSC_INSD_IT0_E4typeEE6__typeEEOSE_OSJ_.exit.i
  ]

bb.kd:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.bah = load i8, ptr %i.azy, align 1, !tbaa !428, !noalias !11143
  store i8 %i.bah, ptr %i.bag, align 1, !tbaa !428, !noalias !11143
  br label %_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSC_INSD_IT0_E4typeEE6__typeEEOSE_OSJ_.exit.i

bb.ke:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bag, ptr align 1 %i.azy, i64 %i.baa, i1 false), !noalias !11143
  br label %_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSC_INSD_IT0_E4typeEE6__typeEEOSE_OSJ_.exit.i

_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSC_INSD_IT0_E4typeEE6__typeEEOSE_OSJ_.exit.i: ; preds = %bb.ke, %bb.kd, %._crit_edge.i.i.i.i.i
  store i64 %i.baa, ptr %i.azi, align 8, !tbaa !456, !alias.scope !11144, !noalias !11143
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bag, i64 %i.baa
  store i8 0, ptr %i.bai, align 1, !tbaa !428, !noalias !11143
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.azj, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !11143
  %i.baj = load i32, ptr %i.azt, align 8, !tbaa !8338, !noalias !11143 ; 2 uses
  %.not.i.not.i.i.i45.i = icmp eq i32 %i.baj, 1
end_hunk_1
begin_hunk_2_@_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE:bb.a
  invoke void @__cxa_end_catch()
          to label %.body75.i unwind label %bb.lk, !noalias !11143, !inline_history !10929

.loopexit.split-lp1050.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i
  %lpad.loopexit.split-lp3108 = landingpad { ptr, i32 }
          catch ptr null
  %i.bfo = extractvalue { ptr, i32 } %lpad.loopexit.split-lp3108, 0
  %i.bfp = call ptr @__cxa_begin_catch(ptr %i.bfo) #23, !noalias !11143, !inline_history !10929 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.bed, i64 noundef %i.bec) #47, !noalias !11143, !inline_history !10929
  invoke void @__cxa_rethrow() #44
          to label %bb.ll unwind label %bb.lj, !noalias !11143, !inline_history !10929

bb.lk:                                            ; preds = %bb.lj
  %i.bfq = landingpad { ptr, i32 }
          catch ptr null
  %i.bfr = extractvalue { ptr, i32 } %i.bfq, 0
  call void @__clang_call_terminate(ptr %i.bfr) #45, !noalias !11143, !inline_history !10929
  unreachable

bb.ll:                                            ; preds = %.loopexit.split-lp1050.loopexit.split-lp.loopexit.split-lp
  unreachable

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISB_EEESaISF_EE17_M_realloc_insertIJRKS6_S7_INSA_15SchemaValidatorESC_ISL_EEEEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i: ; preds = %bb.li, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISB_EEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit44.i.i.i
  store ptr %i.bed, ptr %i.ayw, align 8, !tbaa !9901, !noalias !11143
  store ptr %i.bfj, ptr %i.azo, align 8, !tbaa !9899, !noalias !11143
  %i.bfs = getelementptr inbounds nuw [40 x i8], ptr %i.bed, i64 %i.beb
  store ptr %i.bfs, ptr %i.azp, align 8, !tbaa !9900, !noalias !11143
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i760

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i760: ; preds = %_ZSt12construct_atISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISB_EEEJRKS6_S7_INSA_15SchemaValidatorESC_ISI_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit.i.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISB_EEESaISF_EE17_M_realloc_insertIJRKS6_S7_INSA_15SchemaValidatorESC_ISL_EEEEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !11143
  br label %bb.ln

bb.lm:                                            ; preds = %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit66.i
  %i.bft = landingpad { ptr, i32 }
          cleanup
  br label %.body.i739

.loopexit.split-lp1045.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISB_EEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %.invoke, %.noexc6.i.i.i.i.i761
  %lpad.loopexit.split-lp3105 = landingpad { ptr, i32 }
          cleanup
  br label %.body75.i

.body75.i:                                        ; preds = %.loopexit.split-lp1045.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.lj
  %eh.lpad-body76.i = phi { ptr, i32 } [ %i.bfn, %bb.lj ], [ %lpad.loopexit.split-lp3105, %.loopexit.split-lp1045.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #23, !noalias !11143, !inline_history !10929
  br label %.body.i739

.body.i739:                                       ; preds = %bb.kv, %bb.lm, %.body75.i
  %.pn.i741 = phi { ptr, i32 } [ %eh.lpad-body76.i, %.body75.i ], [ %i.bft, %bb.lm ], [ %i.bcy, %bb.kv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !11143
  br label %.body793

bb.ln:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i760, %bb.ks, %bb.jw
  %i.bfu = getelementptr inbounds i8, ptr %.sroa.01009.01221, i64 -16
  %.neg.i.i.i.i.i.i727 = mul nsw i64 %.sroa.91012.01222, -8
  %i.bfv = getelementptr inbounds i8, ptr %i.bfu, i64 %.neg.i.i.i.i.i.i727 ; 2 uses
  %.not19.i5.i.i.i.i728 = icmp eq i64 %.sroa.91012.01222, 0
  br i1 %.not19.i5.i.i.i.i728, label %.critedge.i.i.i.i.i733.preheader, label %thread-pre-split.i.i.i.i729

.critedge.i.i.i.i.i733.preheader:                 ; preds = %bb.lo, %bb.ln
  br label %.critedge.i.i.i.i.i733

bb.lo:                                            ; preds = %thread-pre-split.i.i.i.i729
  %.not19.i.i.i.i.i731 = icmp eq i64 %i.bfy, 0
  br i1 %.not19.i.i.i.i.i731, label %.critedge.i.i.i.i.i733.preheader, label %thread-pre-split.i.i.i.i729

thread-pre-split.i.i.i.i729:                      ; preds = %bb.ln, %bb.lo
  %i.bfw = phi i64 [ %i.bfy, %bb.lo ], [ %.sroa.91012.01222, %bb.ln ]
  %i.bfx = phi ptr [ %i.bfz, %bb.lo ], [ %.sroa.01009.01221, %bb.ln ]
  %i.bfy = add nsw i64 %i.bfw, -1                 ; 4 uses
  %i.bfz = getelementptr inbounds i8, ptr %i.bfx, i64 -8 ; 2 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfv, i64 %i.bfy
  %i.bgb = load i8, ptr %i.bga, align 1, !tbaa !428, !noalias !11143
  %.not.i.i.i78.i = icmp eq i8 %i.bgb, 0
  br i1 %.not.i.i.i78.i, label %bb.lo, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i730, !prof !425, !llvm.loop !361

.critedge.i.i.i.i.i733:                           ; preds = %.critedge.i.i.i.i.i733.preheader, %bb.lp
  %.017.i.i.i.i.i734 = phi ptr [ %i.bgf, %bb.lp ], [ %i.bfv, %.critedge.i.i.i.i.i733.preheader ] ; 3 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i734, i64 14
  %i.bgd = load i8, ptr %i.bgc, align 1, !tbaa !428, !noalias !11143
  %i.bge = and i8 %i.bgd, 15
  %.not2.i.i.i.i735 = icmp eq i8 %i.bge, 0
  br i1 %.not2.i.i.i.i735, label %bb.lp, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, !prof !643

bb.lp:                                            ; preds = %.critedge.i.i.i.i.i733
  %i.bgf = getelementptr inbounds i8, ptr %.017.i.i.i.i.i734, i64 -128 ; 4 uses
  %i.bgg = load <16 x i8>, ptr %i.bgf, align 16, !tbaa !428, !noalias !11143
  %i.bgh = icmp eq <16 x i8> %i.bgg, zeroinitializer
  %i.bgi = bitcast <16 x i1> %i.bgh to i16
  %i.bgj = and i16 %i.bgi, 16383                  ; 2 uses
  %i.bgk = getelementptr inbounds i8, ptr %.017.i.i.i.i.i734, i64 -256
  call void @llvm.prefetch.p0(ptr nonnull %i.bgk, i32 0, i32 3, i32 1), !noalias !11143
  %.not3.i.i.i.i738 = icmp eq i16 %i.bgj, 16383
  br i1 %.not3.i.i.i.i738, label %.critedge.i.i.i.i.i733, label %bb.lq, !prof !425, !llvm.loop !362

bb.lq:                                            ; preds = %bb.lp
  %i.bgl = xor i16 %i.bgj, 16383
  %i.bgm = zext nneg i16 %i.bgl to i32
  %i.bgn = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bgm, i1 true)
  %i.bgo = xor i32 %i.bgn, 31
  %i.bgp = zext nneg i32 %i.bgo to i64            ; 2 uses
  %i.bgq = icmp ne ptr %i.bgf, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bgq), !noalias !11143
  %i.bgr = shl nuw nsw i64 %i.bgp, 3
  %i.bgs = getelementptr i8, ptr %i.bgf, i64 %i.bgr
  %i.bgt = getelementptr i8, ptr %i.bgs, i64 16
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i730

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i730: ; preds = %thread-pre-split.i.i.i.i729, %bb.lq
  %.sroa.01009.1 = phi ptr [ %i.bgt, %bb.lq ], [ %i.bfz, %thread-pre-split.i.i.i.i729 ] ; 2 uses
  %.sroa.91012.1 = phi i64 [ %i.bgp, %bb.lq ], [ %i.bfy, %thread-pre-split.i.i.i.i729 ]
  %.not1026 = icmp eq ptr %.sroa.01009.1, null
  br i1 %.not1026, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.jw

.body793:                                         ; preds = %bb.jx, %bb.kr, %.body.i739
  %.pn28.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.azs, %bb.jx ], [ %.pn28.pn.pn.pn.i, %bb.kr ], [ %.pn.i741, %.body.i739 ]
  call fastcc void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISB_EEESaISF_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ayw) #23, !noalias !11143, !inline_history !10929
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS6_SaIS6_EEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ayv) #23, !noalias !11143, !inline_history !10929
  call void @_ZdlPvm(ptr noundef nonnull %i.ayu, i64 noundef 56) #47, !noalias !11143, !inline_history !10928
  br label %common.resume

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i730, %.critedge.i.i.i.i.i733, %_ZNK5folly7dynamic5itemsEv.exit.i723, %bb.jv
  store ptr %i.ayu, ptr %33, align 8, !tbaa !9903
  %i.bgu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bgv = load ptr, ptr %i.bgu, align 8, !tbaa !8350 ; 6 uses
  %i.bgw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bgx = load ptr, ptr %i.bgw, align 8, !tbaa !8351
  %.not.i491 = icmp eq ptr %i.bgv, %i.bgx
  br i1 %.not.i491, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.ayu, ptr %i.bgv, align 8, !tbaa !8353
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgv, i64 8
  store ptr %i.bgy, ptr %i.bgu, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorESt14default_deleteIS3_EED2Ev.exit

bb.ls:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i492 = load ptr, ptr %i.ayt, align 8, !tbaa !8354 ; 10 uses
  %i.bgz = ptrtoint ptr %i.bgv to i64             ; 2 uses
  %i.bha = ptrtoint ptr %.val.i.i492 to i64       ; 3 uses
  %i.bhb = sub i64 %i.bgz, %i.bha                 ; 3 uses
  %i.bhc = icmp eq i64 %i.bhb, 9223372036854775800
  br i1 %i.bhc, label %bb.lt, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i493

bb.lt:                                            ; preds = %bb.ls
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc504 unwind label %bb.lv

.noexc504:                                        ; preds = %bb.lt
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i493: ; preds = %bb.ls
  %i.bhd = ashr exact i64 %i.bhb, 3               ; 3 uses
  %i.bhe = icmp eq ptr %i.bgv, %.val.i.i492       ; 2 uses
  %.sroa.speculated.i.i.i494 = select i1 %i.bhe, i64 1, i64 %i.bhd
  %i.bhf = add nsw i64 %.sroa.speculated.i.i.i494, %i.bhd ; 2 uses
  %i.bhg = icmp ult i64 %i.bhf, %i.bhd
  %i.bhh = call i64 @llvm.umin.i64(i64 %i.bhf, i64 1152921504606846975)
  %i.bhi = select i1 %i.bhg, i64 1152921504606846975, i64 %i.bhh ; 3 uses
  %.not.i.i.i495 = icmp ne i64 %i.bhi, 0
  call void @llvm.assume(i1 %.not.i.i.i495)
  %i.bhj = shl nuw nsw i64 %i.bhi, 3
  %i.bhk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bhj) #46
          to label %.noexc505 unwind label %bb.lv ; 10 uses

.noexc505:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i493
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhk, i64 %i.bhb
  store ptr %i.ayu, ptr %i.bhl, align 8, !tbaa !8353
  br i1 %i.bhe, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i501, label %.lr.ph.i.i.i.i.i496.preheader

.lr.ph.i.i.i.i.i496.preheader:                    ; preds = %.noexc505
  %i.bhm = add i64 %i.bgz, -8
  %i.bhn = sub i64 %i.bhm, %i.bha                 ; 3 uses
  %i.bho = lshr i64 %i.bhn, 3
  %i.bhp = add nuw nsw i64 %i.bho, 1              ; 2 uses
  %min.iters.check2906 = icmp ult i64 %i.bhn, 136
  br i1 %min.iters.check2906, label %.lr.ph.i.i.i.i.i496.preheader3093, label %vector.memcheck2907

vector.memcheck2907:                              ; preds = %.lr.ph.i.i.i.i.i496.preheader
  %i.bhq = and i64 %i.bhn, -8
  %i.bhr = add i64 %i.bhq, 8                      ; 2 uses
  %i.bhs = getelementptr i8, ptr %i.bhk, i64 %i.bhr
  %i.bht = getelementptr i8, ptr %.val.i.i492, i64 %i.bhr
  %bound02908 = icmp ult ptr %i.bhk, %i.bht
  %bound12909 = icmp ult ptr %.val.i.i492, %i.bhs
  %found.conflict2910 = and i1 %bound02908, %bound12909
  br i1 %found.conflict2910, label %.lr.ph.i.i.i.i.i496.preheader3093, label %vector.ph2911

vector.ph2911:                                    ; preds = %vector.memcheck2907
  %n.vec2912 = and i64 %i.bhp, 4611686018427387900 ; 3 uses
  %i.bhu = shl i64 %n.vec2912, 3                  ; 2 uses
  %i.bhv = getelementptr i8, ptr %i.bhk, i64 %i.bhu ; 2 uses
  %i.bhw = getelementptr i8, ptr %.val.i.i492, i64 %i.bhu
  br label %vector.body2913

vector.body2913:                                  ; preds = %vector.body2913, %vector.ph2911
  %index2914 = phi i64 [ 0, %vector.ph2911 ], [ %index.next2919, %vector.body2913 ] ; 2 uses
  %i.bhx = shl i64 %index2914, 3                  ; 2 uses
  %next.gep2915 = getelementptr i8, ptr %i.bhk, i64 %i.bhx ; 2 uses
  %next.gep2916 = getelementptr i8, ptr %.val.i.i492, i64 %i.bhx ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11152)
  call void @llvm.experimental.noalias.scope.decl(metadata !11153)
  %i.bhy = getelementptr i8, ptr %next.gep2916, i64 16 ; 2 uses
  %wide.load2917 = load <2 x i64>, ptr %next.gep2916, align 8, !tbaa !466, !alias.scope !11154
  %wide.load2918 = load <2 x i64>, ptr %i.bhy, align 8, !tbaa !466, !alias.scope !11154
  %i.bhz = getelementptr i8, ptr %next.gep2915, i64 16
  store <2 x i64> %wide.load2917, ptr %next.gep2915, align 8, !tbaa !466, !alias.scope !11155, !noalias !11156
  store <2 x i64> %wide.load2918, ptr %i.bhz, align 8, !tbaa !466, !alias.scope !11155, !noalias !11156
  store <2 x ptr> splat (ptr null), ptr %next.gep2916, align 8, !tbaa !466, !alias.scope !11154
  store <2 x ptr> splat (ptr null), ptr %i.bhy, align 8, !tbaa !466, !alias.scope !11154
  %index.next2919 = add nuw i64 %index2914, 4     ; 2 uses
  %i.bia = icmp eq i64 %index.next2919, %n.vec2912
  br i1 %i.bia, label %middle.block2920, label %vector.body2913, !llvm.loop !10947

middle.block2920:                                 ; preds = %vector.body2913
  %cmp.n2921 = icmp eq i64 %i.bhp, %n.vec2912
  br i1 %cmp.n2921, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i501, label %.lr.ph.i.i.i.i.i496.preheader3093

.lr.ph.i.i.i.i.i496.preheader3093:                ; preds = %vector.memcheck2907, %.lr.ph.i.i.i.i.i496.preheader, %middle.block2920
  %.03.i.i.i.i.i497.ph = phi ptr [ %i.bhk, %vector.memcheck2907 ], [ %i.bhk, %.lr.ph.i.i.i.i.i496.preheader ], [ %i.bhv, %middle.block2920 ]
  %.092.i.i.i.i.i498.ph = phi ptr [ %.val.i.i492, %vector.memcheck2907 ], [ %.val.i.i492, %.lr.ph.i.i.i.i.i496.preheader ], [ %i.bhw, %middle.block2920 ]
  br label %.lr.ph.i.i.i.i.i496

.lr.ph.i.i.i.i.i496:                              ; preds = %.lr.ph.i.i.i.i.i496.preheader3093, %.lr.ph.i.i.i.i.i496
  %.03.i.i.i.i.i497 = phi ptr [ %i.bic, %.lr.ph.i.i.i.i.i496 ], [ %.03.i.i.i.i.i497.ph, %.lr.ph.i.i.i.i.i496.preheader3093 ] ; 2 uses
  %.092.i.i.i.i.i498 = phi ptr [ %i.bib, %.lr.ph.i.i.i.i.i496 ], [ %.092.i.i.i.i.i498.ph, %.lr.ph.i.i.i.i.i496.preheader3093 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11152)
  call void @llvm.experimental.noalias.scope.decl(metadata !11153)
  %.val.i.i.i.i.i.i.i.i.i.i499 = load i64, ptr %.092.i.i.i.i.i498, align 8, !tbaa !466, !alias.scope !11153
  store i64 %.val.i.i.i.i.i.i.i.i.i.i499, ptr %.03.i.i.i.i.i497, align 8, !tbaa !466, !alias.scope !11152
  store ptr null, ptr %.092.i.i.i.i.i498, align 8, !tbaa !466, !alias.scope !11153
  %i.bib = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i498, i64 8 ; 2 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i497, i64 8 ; 2 uses
  %.not.i.i.i.i.i500 = icmp eq ptr %i.bib, %i.bgv
  br i1 %.not.i.i.i.i.i500, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i501, label %.lr.ph.i.i.i.i.i496, !llvm.loop !10948

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i501: ; preds = %.lr.ph.i.i.i.i.i496, %middle.block2920, %.noexc505
  %.0.lcssa.i.i.i.i.i502 = phi ptr [ %i.bhk, %.noexc505 ], [ %i.bhv, %middle.block2920 ], [ %i.bic, %.lr.ph.i.i.i.i.i496 ]
  %i.bid = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i502, i64 8
  %.not.i28.i.i503 = icmp eq ptr %.val.i.i492, null
  br i1 %.not.i28.i.i503, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19DependencyValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.lu

bb.lu:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i501
  %i.bie = load ptr, ptr %i.bgw, align 8, !tbaa !8351
  %i.bif = ptrtoint ptr %i.bie to i64
  %i.big = sub i64 %i.bif, %i.bha
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i492, i64 noundef %i.big) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19DependencyValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19DependencyValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.lu, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i501
  store ptr %i.bhk, ptr %i.ayt, align 8, !tbaa !8354
  store ptr %i.bid, ptr %i.bgu, align 8, !tbaa !8350
  %i.bih = getelementptr inbounds nuw [8 x i8], ptr %i.bhk, i64 %i.bhi
  store ptr %i.bih, ptr %i.bgw, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.lr, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_19DependencyValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %bb.lw

bb.lv:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i493, %bb.lt
  %i.bii = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %common.resume

bb.lw:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorESt14default_deleteIS3_EED2Ev.exit, %bb.ju
  %i.bij = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.57, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.57, i64 4)) ; 2 uses
  %.not168 = icmp eq ptr %i.bij, null
  br i1 %.not168, label %bb.me, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.bik = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !11157)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.bil = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #46, !noalias !11157 ; 6 uses
  invoke void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 8 dereferenceable(40) %i.bij)
          to label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113EnumValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.ly, !noalias !11157

bb.ly:                                            ; preds = %bb.lx
  %i.bim = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bil, i64 noundef 48) #47, !noalias !11157
  br label %common.resume

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113EnumValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.lx
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_113EnumValidatorE, i64 16), ptr %i.bil, align 8, !tbaa !436, !noalias !11157
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bil, i64 8
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.bin, ptr noundef nonnull align 8 dereferenceable(40) %17) #23, !noalias !11157
  store ptr %i.bil, ptr %34, align 8, !tbaa !9905, !alias.scope !11157
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %17) #23, !noalias !11157
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.bio = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !8350 ; 6 uses
  %i.biq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !8351
  %.not.i515 = icmp eq ptr %i.bip, %i.bir
  br i1 %.not.i515, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113EnumValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.bil, ptr %i.bip, align 8, !tbaa !8353
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bip, i64 8
  store ptr %i.bis, ptr %i.bio, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113EnumValidatorESt14default_deleteIS3_EED2Ev.exit

bb.ma:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113EnumValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i516 = load ptr, ptr %i.bik, align 8, !tbaa !8354 ; 10 uses
  %i.bit = ptrtoint ptr %i.bip to i64             ; 2 uses
  %i.biu = ptrtoint ptr %.val.i.i516 to i64       ; 3 uses
  %i.biv = sub i64 %i.bit, %i.biu                 ; 3 uses
  %i.biw = icmp eq i64 %i.biv, 9223372036854775800
  br i1 %i.biw, label %bb.mb, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i517

bb.mb:                                            ; preds = %bb.ma
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc528 unwind label %bb.md

.noexc528:                                        ; preds = %bb.mb
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i517: ; preds = %bb.ma
  %i.bix = ashr exact i64 %i.biv, 3               ; 3 uses
  %i.biy = icmp eq ptr %i.bip, %.val.i.i516       ; 2 uses
  %.sroa.speculated.i.i.i518 = select i1 %i.biy, i64 1, i64 %i.bix
  %i.biz = add nsw i64 %.sroa.speculated.i.i.i518, %i.bix ; 2 uses
  %i.bja = icmp ult i64 %i.biz, %i.bix
  %i.bjb = call i64 @llvm.umin.i64(i64 %i.biz, i64 1152921504606846975)
  %i.bjc = select i1 %i.bja, i64 1152921504606846975, i64 %i.bjb ; 3 uses
  %.not.i.i.i519 = icmp ne i64 %i.bjc, 0
  call void @llvm.assume(i1 %.not.i.i.i519)
  %i.bjd = shl nuw nsw i64 %i.bjc, 3
  %i.bje = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bjd) #46
          to label %.noexc529 unwind label %bb.md ; 10 uses

.noexc529:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i517
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 %i.biv
  store ptr %i.bil, ptr %i.bjf, align 8, !tbaa !8353
  br i1 %i.biy, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i525, label %.lr.ph.i.i.i.i.i520.preheader

.lr.ph.i.i.i.i.i520.preheader:                    ; preds = %.noexc529
  %i.bjg = add i64 %i.bit, -8
  %i.bjh = sub i64 %i.bjg, %i.biu                 ; 3 uses
  %i.bji = lshr i64 %i.bjh, 3
  %i.bjj = add nuw nsw i64 %i.bji, 1              ; 2 uses
  %min.iters.check2930 = icmp ult i64 %i.bjh, 136
  br i1 %min.iters.check2930, label %.lr.ph.i.i.i.i.i520.preheader3091, label %vector.memcheck2931

vector.memcheck2931:                              ; preds = %.lr.ph.i.i.i.i.i520.preheader
  %i.bjk = and i64 %i.bjh, -8
  %i.bjl = add i64 %i.bjk, 8                      ; 2 uses
  %i.bjm = getelementptr i8, ptr %i.bje, i64 %i.bjl
  %i.bjn = getelementptr i8, ptr %.val.i.i516, i64 %i.bjl
  %bound02932 = icmp ult ptr %i.bje, %i.bjn
  %bound12933 = icmp ult ptr %.val.i.i516, %i.bjm
  %found.conflict2934 = and i1 %bound02932, %bound12933
  br i1 %found.conflict2934, label %.lr.ph.i.i.i.i.i520.preheader3091, label %vector.ph2935

vector.ph2935:                                    ; preds = %vector.memcheck2931
  %n.vec2936 = and i64 %i.bjj, 4611686018427387900 ; 3 uses
  %i.bjo = shl i64 %n.vec2936, 3                  ; 2 uses
  %i.bjp = getelementptr i8, ptr %i.bje, i64 %i.bjo ; 2 uses
  %i.bjq = getelementptr i8, ptr %.val.i.i516, i64 %i.bjo
  br label %vector.body2937

vector.body2937:                                  ; preds = %vector.body2937, %vector.ph2935
  %index2938 = phi i64 [ 0, %vector.ph2935 ], [ %index.next2943, %vector.body2937 ] ; 2 uses
  %i.bjr = shl i64 %index2938, 3                  ; 2 uses
  %next.gep2939 = getelementptr i8, ptr %i.bje, i64 %i.bjr ; 2 uses
  %next.gep2940 = getelementptr i8, ptr %.val.i.i516, i64 %i.bjr ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11158)
  call void @llvm.experimental.noalias.scope.decl(metadata !11159)
  %i.bjs = getelementptr i8, ptr %next.gep2940, i64 16 ; 2 uses
  %wide.load2941 = load <2 x i64>, ptr %next.gep2940, align 8, !tbaa !466, !alias.scope !11160
  %wide.load2942 = load <2 x i64>, ptr %i.bjs, align 8, !tbaa !466, !alias.scope !11160
  %i.bjt = getelementptr i8, ptr %next.gep2939, i64 16
  store <2 x i64> %wide.load2941, ptr %next.gep2939, align 8, !tbaa !466, !alias.scope !11161, !noalias !11162
  store <2 x i64> %wide.load2942, ptr %i.bjt, align 8, !tbaa !466, !alias.scope !11161, !noalias !11162
  store <2 x ptr> splat (ptr null), ptr %next.gep2940, align 8, !tbaa !466, !alias.scope !11160
  store <2 x ptr> splat (ptr null), ptr %i.bjs, align 8, !tbaa !466, !alias.scope !11160
  %index.next2943 = add nuw i64 %index2938, 4     ; 2 uses
  %i.bju = icmp eq i64 %index.next2943, %n.vec2936
  br i1 %i.bju, label %middle.block2944, label %vector.body2937, !llvm.loop !10957

middle.block2944:                                 ; preds = %vector.body2937
  %cmp.n2945 = icmp eq i64 %i.bjj, %n.vec2936
  br i1 %cmp.n2945, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i525, label %.lr.ph.i.i.i.i.i520.preheader3091

.lr.ph.i.i.i.i.i520.preheader3091:                ; preds = %vector.memcheck2931, %.lr.ph.i.i.i.i.i520.preheader, %middle.block2944
  %.03.i.i.i.i.i521.ph = phi ptr [ %i.bje, %vector.memcheck2931 ], [ %i.bje, %.lr.ph.i.i.i.i.i520.preheader ], [ %i.bjp, %middle.block2944 ]
  %.092.i.i.i.i.i522.ph = phi ptr [ %.val.i.i516, %vector.memcheck2931 ], [ %.val.i.i516, %.lr.ph.i.i.i.i.i520.preheader ], [ %i.bjq, %middle.block2944 ]
  br label %.lr.ph.i.i.i.i.i520

.lr.ph.i.i.i.i.i520:                              ; preds = %.lr.ph.i.i.i.i.i520.preheader3091, %.lr.ph.i.i.i.i.i520
  %.03.i.i.i.i.i521 = phi ptr [ %i.bjw, %.lr.ph.i.i.i.i.i520 ], [ %.03.i.i.i.i.i521.ph, %.lr.ph.i.i.i.i.i520.preheader3091 ] ; 2 uses
  %.092.i.i.i.i.i522 = phi ptr [ %i.bjv, %.lr.ph.i.i.i.i.i520 ], [ %.092.i.i.i.i.i522.ph, %.lr.ph.i.i.i.i.i520.preheader3091 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11158)
  call void @llvm.experimental.noalias.scope.decl(metadata !11159)
  %.val.i.i.i.i.i.i.i.i.i.i523 = load i64, ptr %.092.i.i.i.i.i522, align 8, !tbaa !466, !alias.scope !11159
  store i64 %.val.i.i.i.i.i.i.i.i.i.i523, ptr %.03.i.i.i.i.i521, align 8, !tbaa !466, !alias.scope !11158
  store ptr null, ptr %.092.i.i.i.i.i522, align 8, !tbaa !466, !alias.scope !11159
  %i.bjv = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i522, i64 8 ; 2 uses
  %i.bjw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i521, i64 8 ; 2 uses
  %.not.i.i.i.i.i524 = icmp eq ptr %i.bjv, %i.bip
  br i1 %.not.i.i.i.i.i524, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i525, label %.lr.ph.i.i.i.i.i520, !llvm.loop !10958

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i525: ; preds = %.lr.ph.i.i.i.i.i520, %middle.block2944, %.noexc529
  %.0.lcssa.i.i.i.i.i526 = phi ptr [ %i.bje, %.noexc529 ], [ %i.bjp, %middle.block2944 ], [ %i.bjw, %.lr.ph.i.i.i.i.i520 ]
  %i.bjx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i526, i64 8
  %.not.i28.i.i527 = icmp eq ptr %.val.i.i516, null
  br i1 %.not.i28.i.i527, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13EnumValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.mc

bb.mc:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i525
  %i.bjy = load ptr, ptr %i.biq, align 8, !tbaa !8351
  %i.bjz = ptrtoint ptr %i.bjy to i64
  %i.bka = sub i64 %i.bjz, %i.biu
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i516, i64 noundef %i.bka) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13EnumValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13EnumValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.mc, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i525
  store ptr %i.bje, ptr %i.bik, align 8, !tbaa !8354
  store ptr %i.bjx, ptr %i.bio, align 8, !tbaa !8350
  %i.bkb = getelementptr inbounds nuw [8 x i8], ptr %i.bje, i64 %i.bjc
  store ptr %i.bkb, ptr %i.biq, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113EnumValidatorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113EnumValidatorESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.lz, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13EnumValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %bb.me

bb.md:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i517, %bb.mb
  %i.bkc = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113EnumValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %common.resume

bb.me:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113EnumValidatorESt14default_deleteIS3_EED2Ev.exit, %bb.lw
  %i.bkd = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.58, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.58, i64 4)) ; 6 uses
  %.not169 = icmp eq ptr %i.bkd, null
  br i1 %.not169, label %bb.mq, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bke = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !11163)
  %i.bkf = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #46, !noalias !11163 ; 12 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_113TypeValidatorE, i64 16), ptr %i.bkf, align 8, !tbaa !436, !noalias !11163
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bkf, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bkg, i8 0, i64 24, i1 false), !noalias !11163
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkf, i64 32 ; 2 uses
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bkf, i64 48 ; 4 uses
  store ptr %i.bki, ptr %i.bkh, align 8, !tbaa !454, !noalias !11163
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bkf, i64 40
  store i64 0, ptr %i.bkj, align 8, !tbaa !456, !noalias !11163
  store i8 0, ptr %i.bki, align 8, !tbaa !428, !noalias !11163
  %i.bkk = load i32, ptr %i.bkd, align 8, !tbaa !8338, !noalias !11163
  switch i32 %i.bkk, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113TypeValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit [
    i32 6, label %bb.mg
    i32 1, label %bb.mh
  ]

bb.mg:                                            ; preds = %bb.mf
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bkd, i64 8
  %i.bkm = load ptr, ptr %i.bkl, align 8, !tbaa !462, !noalias !11163 ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bkd, i64 16
  %i.bko = load i64, ptr %i.bkn, align 8, !tbaa !456, !noalias !11163
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bkm, i64 %i.bko
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_113TypeValidator7addTypeENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.bkf, ptr %i.bkm, ptr %i.bkp)
          to label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113TypeValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11163

bb.mh:                                            ; preds = %bb.mf
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkd, i64 8
  %i.bkr = load ptr, ptr %i.bkq, align 8, !tbaa !440, !noalias !11163 ; 2 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkd, i64 16
  %i.bkt = load ptr, ptr %i.bks, align 8, !tbaa !440, !noalias !11163 ; 2 uses
  %i.bku = icmp eq ptr %i.bkr, %i.bkt
  br i1 %i.bku, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113TypeValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph.i.i531

.lr.ph.i.i531:                                    ; preds = %bb.mh, %bb.mj
  %.sroa.031.035.i.i = phi ptr [ %i.blb, %bb.mj ], [ %i.bkr, %bb.mh ] ; 4 uses
  %i.bkv = load i32, ptr %.sroa.031.035.i.i, align 8, !tbaa !8338, !noalias !11163
  %.not.i.i.i24.i.i = icmp eq i32 %i.bkv, 6
  br i1 %.not.i.i.i24.i.i, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %.lr.ph.i.i531
  %i.bkw = getelementptr inbounds nuw i8, ptr %.sroa.031.035.i.i, i64 8
  %i.bkx = load ptr, ptr %i.bkw, align 8, !tbaa !462, !noalias !11163 ; 2 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %.sroa.031.035.i.i, i64 16
  %i.bkz = load i64, ptr %i.bky, align 8, !tbaa !456, !noalias !11163
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkx, i64 %i.bkz
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_113TypeValidator7addTypeENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.bkf, ptr %i.bkx, ptr %i.bla)
          to label %bb.mj unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11163

bb.mj:                                            ; preds = %bb.mi, %.lr.ph.i.i531
  %i.blb = getelementptr inbounds nuw i8, ptr %.sroa.031.035.i.i, i64 40 ; 2 uses
  %i.blc = icmp eq ptr %i.blb, %i.bkt
  br i1 %i.blc, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113TypeValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph.i.i531

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.mi, %bb.mg
  %lpad.loopexit.split-lp3089 = landingpad { ptr, i32 }
          cleanup
  %i.bld = load ptr, ptr %i.bkh, align 8, !tbaa !462, !noalias !11163 ; 2 uses
  %i.ble = icmp eq ptr %i.bld, %i.bki
  br i1 %i.ble, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.blf = load i64, ptr %i.bki, align 8, !tbaa !428, !noalias !11163
  %i.blg = add i64 %i.blf, 1
  call void @_ZdlPvm(ptr noundef %i.bld, i64 noundef %i.blg) #47, !noalias !11163
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.blh = load ptr, ptr %i.bkg, align 8, !tbaa !9907, !noalias !11163 ; 3 uses
  %.not.i.i.i30.i.i = icmp eq ptr %i.blh, null
  br i1 %.not.i.i.i30.i.i, label %.body.i532, label %bb.mk

bb.mk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bkf, i64 24
  %i.blj = load ptr, ptr %i.bli, align 8, !tbaa !9908, !noalias !11163
  %i.blk = ptrtoint ptr %i.blj to i64
  %i.bll = ptrtoint ptr %i.blh to i64
  %i.blm = sub i64 %i.blk, %i.bll
  call void @_ZdlPvm(ptr noundef nonnull %i.blh, i64 noundef %i.blm) #47, !noalias !11163
  br label %.body.i532

.body.i532:                                       ; preds = %bb.mk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bkf, i64 noundef 64) #47, !noalias !11163
  br label %common.resume

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113TypeValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.mj, %bb.mf, %bb.mg, %bb.mh
  store ptr %i.bkf, ptr %35, align 8, !tbaa !9910, !alias.scope !11163
  %i.bln = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !8350 ; 6 uses
  %i.blp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.blq = load ptr, ptr %i.blp, align 8, !tbaa !8351
  %.not.i533 = icmp eq ptr %i.blo, %i.blq
  br i1 %.not.i533, label %bb.mm, label %bb.ml

bb.ml:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113TypeValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.bkf, ptr %i.blo, align 8, !tbaa !8353
  %i.blr = getelementptr inbounds nuw i8, ptr %i.blo, i64 8
  store ptr %i.blr, ptr %i.bln, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113TypeValidatorESt14default_deleteIS3_EED2Ev.exit

bb.mm:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_113TypeValidatorEJRKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i534 = load ptr, ptr %i.bke, align 8, !tbaa !8354 ; 10 uses
  %i.bls = ptrtoint ptr %i.blo to i64             ; 2 uses
  %i.blt = ptrtoint ptr %.val.i.i534 to i64       ; 3 uses
  %i.blu = sub i64 %i.bls, %i.blt                 ; 3 uses
  %i.blv = icmp eq i64 %i.blu, 9223372036854775800
  br i1 %i.blv, label %bb.mn, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i535

bb.mn:                                            ; preds = %bb.mm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc546 unwind label %bb.mp

.noexc546:                                        ; preds = %bb.mn
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i535: ; preds = %bb.mm
  %i.blw = ashr exact i64 %i.blu, 3               ; 3 uses
  %i.blx = icmp eq ptr %i.blo, %.val.i.i534       ; 2 uses
  %.sroa.speculated.i.i.i536 = select i1 %i.blx, i64 1, i64 %i.blw
  %i.bly = add nsw i64 %.sroa.speculated.i.i.i536, %i.blw ; 2 uses
  %i.blz = icmp ult i64 %i.bly, %i.blw
  %i.bma = call i64 @llvm.umin.i64(i64 %i.bly, i64 1152921504606846975)
  %i.bmb = select i1 %i.blz, i64 1152921504606846975, i64 %i.bma ; 3 uses
  %.not.i.i.i537 = icmp ne i64 %i.bmb, 0
  call void @llvm.assume(i1 %.not.i.i.i537)
  %i.bmc = shl nuw nsw i64 %i.bmb, 3
  %i.bmd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bmc) #46
          to label %.noexc547 unwind label %bb.mp ; 10 uses

.noexc547:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i535
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bmd, i64 %i.blu
  store ptr %i.bkf, ptr %i.bme, align 8, !tbaa !8353
  br i1 %i.blx, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i543, label %.lr.ph.i.i.i.i.i538.preheader

.lr.ph.i.i.i.i.i538.preheader:                    ; preds = %.noexc547
  %i.bmf = add i64 %i.bls, -8
  %i.bmg = sub i64 %i.bmf, %i.blt                 ; 3 uses
  %i.bmh = lshr i64 %i.bmg, 3
  %i.bmi = add nuw nsw i64 %i.bmh, 1              ; 2 uses
  %min.iters.check2954 = icmp ult i64 %i.bmg, 136
  br i1 %min.iters.check2954, label %.lr.ph.i.i.i.i.i538.preheader3086, label %vector.memcheck2955

vector.memcheck2955:                              ; preds = %.lr.ph.i.i.i.i.i538.preheader
  %i.bmj = and i64 %i.bmg, -8
  %i.bmk = add i64 %i.bmj, 8                      ; 2 uses
  %i.bml = getelementptr i8, ptr %i.bmd, i64 %i.bmk
  %i.bmm = getelementptr i8, ptr %.val.i.i534, i64 %i.bmk
  %bound02956 = icmp ult ptr %i.bmd, %i.bmm
  %bound12957 = icmp ult ptr %.val.i.i534, %i.bml
  %found.conflict2958 = and i1 %bound02956, %bound12957
  br i1 %found.conflict2958, label %.lr.ph.i.i.i.i.i538.preheader3086, label %vector.ph2959

vector.ph2959:                                    ; preds = %vector.memcheck2955
  %n.vec2960 = and i64 %i.bmi, 4611686018427387900 ; 3 uses
  %i.bmn = shl i64 %n.vec2960, 3                  ; 2 uses
  %i.bmo = getelementptr i8, ptr %i.bmd, i64 %i.bmn ; 2 uses
  %i.bmp = getelementptr i8, ptr %.val.i.i534, i64 %i.bmn
  br label %vector.body2961

vector.body2961:                                  ; preds = %vector.body2961, %vector.ph2959
  %index2962 = phi i64 [ 0, %vector.ph2959 ], [ %index.next2967, %vector.body2961 ] ; 2 uses
  %i.bmq = shl i64 %index2962, 3                  ; 2 uses
  %next.gep2963 = getelementptr i8, ptr %i.bmd, i64 %i.bmq ; 2 uses
  %next.gep2964 = getelementptr i8, ptr %.val.i.i534, i64 %i.bmq ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11164)
  call void @llvm.experimental.noalias.scope.decl(metadata !11165)
  %i.bmr = getelementptr i8, ptr %next.gep2964, i64 16 ; 2 uses
  %wide.load2965 = load <2 x i64>, ptr %next.gep2964, align 8, !tbaa !466, !alias.scope !11166
  %wide.load2966 = load <2 x i64>, ptr %i.bmr, align 8, !tbaa !466, !alias.scope !11166
  %i.bms = getelementptr i8, ptr %next.gep2963, i64 16
  store <2 x i64> %wide.load2965, ptr %next.gep2963, align 8, !tbaa !466, !alias.scope !11167, !noalias !11168
  store <2 x i64> %wide.load2966, ptr %i.bms, align 8, !tbaa !466, !alias.scope !11167, !noalias !11168
  store <2 x ptr> splat (ptr null), ptr %next.gep2964, align 8, !tbaa !466, !alias.scope !11166
  store <2 x ptr> splat (ptr null), ptr %i.bmr, align 8, !tbaa !466, !alias.scope !11166
  %index.next2967 = add nuw i64 %index2962, 4     ; 2 uses
  %i.bmt = icmp eq i64 %index.next2967, %n.vec2960
  br i1 %i.bmt, label %middle.block2968, label %vector.body2961, !llvm.loop !10967

middle.block2968:                                 ; preds = %vector.body2961
  %cmp.n2969 = icmp eq i64 %i.bmi, %n.vec2960
  br i1 %cmp.n2969, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i543, label %.lr.ph.i.i.i.i.i538.preheader3086

.lr.ph.i.i.i.i.i538.preheader3086:                ; preds = %vector.memcheck2955, %.lr.ph.i.i.i.i.i538.preheader, %middle.block2968
  %.03.i.i.i.i.i539.ph = phi ptr [ %i.bmd, %vector.memcheck2955 ], [ %i.bmd, %.lr.ph.i.i.i.i.i538.preheader ], [ %i.bmo, %middle.block2968 ]
  %.092.i.i.i.i.i540.ph = phi ptr [ %.val.i.i534, %vector.memcheck2955 ], [ %.val.i.i534, %.lr.ph.i.i.i.i.i538.preheader ], [ %i.bmp, %middle.block2968 ]
  br label %.lr.ph.i.i.i.i.i538

.lr.ph.i.i.i.i.i538:                              ; preds = %.lr.ph.i.i.i.i.i538.preheader3086, %.lr.ph.i.i.i.i.i538
  %.03.i.i.i.i.i539 = phi ptr [ %i.bmv, %.lr.ph.i.i.i.i.i538 ], [ %.03.i.i.i.i.i539.ph, %.lr.ph.i.i.i.i.i538.preheader3086 ] ; 2 uses
  %.092.i.i.i.i.i540 = phi ptr [ %i.bmu, %.lr.ph.i.i.i.i.i538 ], [ %.092.i.i.i.i.i540.ph, %.lr.ph.i.i.i.i.i538.preheader3086 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11164)
  call void @llvm.experimental.noalias.scope.decl(metadata !11165)
  %.val.i.i.i.i.i.i.i.i.i.i541 = load i64, ptr %.092.i.i.i.i.i540, align 8, !tbaa !466, !alias.scope !11165
  store i64 %.val.i.i.i.i.i.i.i.i.i.i541, ptr %.03.i.i.i.i.i539, align 8, !tbaa !466, !alias.scope !11164
  store ptr null, ptr %.092.i.i.i.i.i540, align 8, !tbaa !466, !alias.scope !11165
  %i.bmu = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i540, i64 8 ; 2 uses
  %i.bmv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i539, i64 8 ; 2 uses
  %.not.i.i.i.i.i542 = icmp eq ptr %i.bmu, %i.blo
  br i1 %.not.i.i.i.i.i542, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i543, label %.lr.ph.i.i.i.i.i538, !llvm.loop !10968

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i543: ; preds = %.lr.ph.i.i.i.i.i538, %middle.block2968, %.noexc547
  %.0.lcssa.i.i.i.i.i544 = phi ptr [ %i.bmd, %.noexc547 ], [ %i.bmo, %middle.block2968 ], [ %i.bmv, %.lr.ph.i.i.i.i.i538 ]
  %i.bmw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i544, i64 8
  %.not.i28.i.i545 = icmp eq ptr %.val.i.i534, null
  br i1 %.not.i28.i.i545, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13TypeValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.mo

bb.mo:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i543
  %i.bmx = load ptr, ptr %i.blp, align 8, !tbaa !8351
  %i.bmy = ptrtoint ptr %i.bmx to i64
  %i.bmz = sub i64 %i.bmy, %i.blt
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i534, i64 noundef %i.bmz) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13TypeValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13TypeValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.mo, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i543
  store ptr %i.bmd, ptr %i.bke, align 8, !tbaa !8354
  store ptr %i.bmw, ptr %i.bln, align 8, !tbaa !8350
  %i.bna = getelementptr inbounds nuw [8 x i8], ptr %i.bmd, i64 %i.bmb
  store ptr %i.bna, ptr %i.blp, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113TypeValidatorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113TypeValidatorESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.ml, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_13TypeValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  br label %bb.mq

bb.mp:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i535, %bb.mn
  %i.bnb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113TypeValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  br label %common.resume

bb.mq:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_113TypeValidatorESt14default_deleteIS3_EED2Ev.exit, %bb.me
  %i.bnc = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.59, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.59, i64 5)) ; 4 uses
  %.not170 = icmp eq ptr %i.bnc, null
  br i1 %.not170, label %bb.ne, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.bnd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  %i.bne = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #46, !noalias !11169, !inline_history !10971 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorE, i64 16), ptr %i.bne, align 8, !tbaa !436, !noalias !11169
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bne, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bnf, i8 0, i64 24, i1 false), !noalias !11169
  %i.bng = load i32, ptr %i.bnc, align 8, !tbaa !8338, !noalias !11169
  %.not.i.i.i.i795 = icmp eq i32 %i.bng, 1
  br i1 %.not.i.i.i.i795, label %_ZNK5folly7dynamic3endEv.exit.i800, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZNK5folly7dynamic3endEv.exit.i800:               ; preds = %bb.mr
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bnc, i64 8
  %i.bni = load ptr, ptr %i.bnh, align 8, !tbaa !440, !noalias !11169 ; 2 uses
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bnc, i64 16
  %i.bnk = load ptr, ptr %i.bnj, align 8, !tbaa !440, !noalias !11169 ; 2 uses
  %i.bnl = icmp eq ptr %i.bni, %i.bnk
  br i1 %i.bnl, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph1225

.lr.ph1225:                                       ; preds = %_ZNK5folly7dynamic3endEv.exit.i800
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bne, i64 16 ; 3 uses
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bne, i64 24 ; 3 uses
  br label %bb.ms

bb.ms:                                            ; preds = %.lr.ph1225, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i823
  %.sroa.01015.01224 = phi ptr [ %i.bni, %.lr.ph1225 ], [ %i.bpd, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i823 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !11169
  call void @llvm.experimental.noalias.scope.decl(metadata !11170)
  %i.bno = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %.noexc16.i unwind label %bb.my ; 6 uses

.noexc16.i:                                       ; preds = %bb.ms
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 72)>, ptr %i.bno, align 8, !tbaa !436, !noalias !11171
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bno, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bnp, i8 0, i64 24, i1 false), !noalias !11171
  store ptr %i.bno, ptr %4, align 8, !tbaa !438, !alias.scope !11170, !noalias !11169
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.bno, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01015.01224)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i805 unwind label %bb.mt, !noalias !11172, !inline_history !10976

bb.mt:                                            ; preds = %.noexc16.i
  %i.bnq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23, !noalias !11169, !inline_history !10976
  br label %.body836

_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i805: ; preds = %.noexc16.i
  %i.bnr = load ptr, ptr %i.bnm, align 8, !tbaa !8350, !noalias !11169 ; 6 uses
  %i.bns = load ptr, ptr %i.bnn, align 8, !tbaa !8351, !noalias !11169
  %.not.i.i806 = icmp eq ptr %i.bnr, %i.bns
  br i1 %.not.i.i806, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i805
  store ptr %i.bno, ptr %i.bnr, align 8, !tbaa !8353, !noalias !11169
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bnr, i64 8
  store ptr %i.bnt, ptr %i.bnm, align 8, !tbaa !8350, !noalias !11169
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i823

bb.mv:                                            ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i805
  %.val.i.i.i824 = load ptr, ptr %i.bnf, align 8, !tbaa !8354, !noalias !11169 ; 10 uses
  %i.bnu = ptrtoint ptr %i.bnr to i64             ; 2 uses
  %i.bnv = ptrtoint ptr %.val.i.i.i824 to i64     ; 3 uses
  %i.bnw = sub i64 %i.bnu, %i.bnv                 ; 3 uses
  %i.bnx = icmp eq i64 %i.bnw, 9223372036854775800
  br i1 %i.bnx, label %bb.mw, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i825

bb.mw:                                            ; preds = %bb.mv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc18.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11169, !inline_history !10977

.noexc18.i:                                       ; preds = %bb.mw
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i825: ; preds = %bb.mv
  %i.bny = ashr exact i64 %i.bnw, 3               ; 3 uses
  %i.bnz = icmp eq ptr %i.bnr, %.val.i.i.i824     ; 2 uses
  %.sroa.speculated.i.i.i.i826 = select i1 %i.bnz, i64 1, i64 %i.bny
  %i.boa = add nsw i64 %.sroa.speculated.i.i.i.i826, %i.bny ; 2 uses
  %i.bob = icmp ult i64 %i.boa, %i.bny
  %i.boc = call i64 @llvm.umin.i64(i64 %i.boa, i64 1152921504606846975)
  %i.bod = select i1 %i.bob, i64 1152921504606846975, i64 %i.boc ; 3 uses
  %.not.i.i.i17.i = icmp ne i64 %i.bod, 0
  call void @llvm.assume(i1 %.not.i.i.i17.i), !noalias !11169
  %i.boe = shl nuw nsw i64 %i.bod, 3
  %i.bof = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.boe) #46
          to label %.noexc19.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11169, !inline_history !10977 ; 10 uses

.noexc19.i:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i825
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 %i.bnw
  store ptr %i.bno, ptr %i.bog, align 8, !tbaa !8353, !noalias !11169
  br i1 %i.bnz, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i832, label %.lr.ph.i.i.i.i.i.i827.preheader

.lr.ph.i.i.i.i.i.i827.preheader:                  ; preds = %.noexc19.i
  %i.boh = add i64 %i.bnu, -8
  %i.boi = sub i64 %i.boh, %i.bnv                 ; 3 uses
  %i.boj = lshr i64 %i.boi, 3
  %i.bok = add nuw nsw i64 %i.boj, 1              ; 2 uses
  %min.iters.check2980 = icmp ult i64 %i.boi, 56
  br i1 %min.iters.check2980, label %.lr.ph.i.i.i.i.i.i827.preheader3083, label %vector.memcheck2981

vector.memcheck2981:                              ; preds = %.lr.ph.i.i.i.i.i.i827.preheader
  %i.bol = and i64 %i.boi, -8
  %i.bom = add i64 %i.bol, 8                      ; 2 uses
  %i.bon = getelementptr i8, ptr %i.bof, i64 %i.bom
  %i.boo = getelementptr i8, ptr %.val.i.i.i824, i64 %i.bom
  %bound02982 = icmp ult ptr %i.bof, %i.boo
  %bound12983 = icmp ult ptr %.val.i.i.i824, %i.bon
  %found.conflict2984 = and i1 %bound02982, %bound12983
  br i1 %found.conflict2984, label %.lr.ph.i.i.i.i.i.i827.preheader3083, label %vector.ph2985

vector.ph2985:                                    ; preds = %vector.memcheck2981
  %n.vec2986 = and i64 %i.bok, 4611686018427387900 ; 3 uses
  %i.bop = shl i64 %n.vec2986, 3                  ; 2 uses
  %i.boq = getelementptr i8, ptr %i.bof, i64 %i.bop ; 2 uses
  %i.bor = getelementptr i8, ptr %.val.i.i.i824, i64 %i.bop
  br label %vector.body2987

vector.body2987:                                  ; preds = %vector.body2987, %vector.ph2985
  %index2988 = phi i64 [ 0, %vector.ph2985 ], [ %index.next2993, %vector.body2987 ] ; 2 uses
  %i.bos = shl i64 %index2988, 3                  ; 2 uses
  %next.gep2989 = getelementptr i8, ptr %i.bof, i64 %i.bos ; 2 uses
  %next.gep2990 = getelementptr i8, ptr %.val.i.i.i824, i64 %i.bos ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11173), !noalias !11169
  call void @llvm.experimental.noalias.scope.decl(metadata !11174), !noalias !11169
  %i.bot = getelementptr i8, ptr %next.gep2990, i64 16 ; 2 uses
  %wide.load2991 = load <2 x i64>, ptr %next.gep2990, align 8, !tbaa !466, !alias.scope !11175, !noalias !11169
  %wide.load2992 = load <2 x i64>, ptr %i.bot, align 8, !tbaa !466, !alias.scope !11175, !noalias !11169
  %i.bou = getelementptr i8, ptr %next.gep2989, i64 16
  store <2 x i64> %wide.load2991, ptr %next.gep2989, align 8, !tbaa !466, !alias.scope !11176, !noalias !11177
  store <2 x i64> %wide.load2992, ptr %i.bou, align 8, !tbaa !466, !alias.scope !11176, !noalias !11177
  store <2 x ptr> splat (ptr null), ptr %next.gep2990, align 8, !tbaa !466, !alias.scope !11175, !noalias !11169
  store <2 x ptr> splat (ptr null), ptr %i.bot, align 8, !tbaa !466, !alias.scope !11175, !noalias !11169
  %index.next2993 = add nuw i64 %index2988, 4     ; 2 uses
  %i.bov = icmp eq i64 %index.next2993, %n.vec2986
  br i1 %i.bov, label %middle.block2994, label %vector.body2987, !llvm.loop !10984

middle.block2994:                                 ; preds = %vector.body2987
  %cmp.n2995 = icmp eq i64 %i.bok, %n.vec2986
  br i1 %cmp.n2995, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i832, label %.lr.ph.i.i.i.i.i.i827.preheader3083

.lr.ph.i.i.i.i.i.i827.preheader3083:              ; preds = %vector.memcheck2981, %.lr.ph.i.i.i.i.i.i827.preheader, %middle.block2994
  %.03.i.i.i.i.i.i828.ph = phi ptr [ %i.bof, %vector.memcheck2981 ], [ %i.bof, %.lr.ph.i.i.i.i.i.i827.preheader ], [ %i.boq, %middle.block2994 ]
  %.092.i.i.i.i.i.i829.ph = phi ptr [ %.val.i.i.i824, %vector.memcheck2981 ], [ %.val.i.i.i824, %.lr.ph.i.i.i.i.i.i827.preheader ], [ %i.bor, %middle.block2994 ]
  br label %.lr.ph.i.i.i.i.i.i827

.lr.ph.i.i.i.i.i.i827:                            ; preds = %.lr.ph.i.i.i.i.i.i827.preheader3083, %.lr.ph.i.i.i.i.i.i827
  %.03.i.i.i.i.i.i828 = phi ptr [ %i.box, %.lr.ph.i.i.i.i.i.i827 ], [ %.03.i.i.i.i.i.i828.ph, %.lr.ph.i.i.i.i.i.i827.preheader3083 ] ; 2 uses
  %.092.i.i.i.i.i.i829 = phi ptr [ %i.bow, %.lr.ph.i.i.i.i.i.i827 ], [ %.092.i.i.i.i.i.i829.ph, %.lr.ph.i.i.i.i.i.i827.preheader3083 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11173), !noalias !11169
  call void @llvm.experimental.noalias.scope.decl(metadata !11174), !noalias !11169
  %.val.i.i.i.i.i.i.i.i.i.i.i830 = load i64, ptr %.092.i.i.i.i.i.i829, align 8, !tbaa !466, !alias.scope !11174, !noalias !11169
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i830, ptr %.03.i.i.i.i.i.i828, align 8, !tbaa !466, !alias.scope !11173, !noalias !11169
  store ptr null, ptr %.092.i.i.i.i.i.i829, align 8, !tbaa !466, !alias.scope !11174, !noalias !11169
  %i.bow = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i829, i64 8 ; 2 uses
  %i.box = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i828, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i831 = icmp eq ptr %i.bow, %i.bnr
  br i1 %.not.i.i.i.i.i.i831, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i832, label %.lr.ph.i.i.i.i.i.i827, !llvm.loop !10985

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i832: ; preds = %.lr.ph.i.i.i.i.i.i827, %middle.block2994, %.noexc19.i
  %.0.lcssa.i.i.i.i.i.i833 = phi ptr [ %i.bof, %.noexc19.i ], [ %i.boq, %middle.block2994 ], [ %i.box, %.lr.ph.i.i.i.i.i.i827 ]
  %i.boy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i833, i64 8
  %.not.i28.i.i.i834 = icmp eq ptr %.val.i.i.i824, null
  br i1 %.not.i28.i.i.i834, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i835, label %bb.mx

bb.mx:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i832
  %i.boz = load ptr, ptr %i.bnn, align 8, !tbaa !8351, !noalias !11169
  %i.bpa = ptrtoint ptr %i.boz to i64
  %i.bpb = sub i64 %i.bpa, %i.bnv
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i824, i64 noundef %i.bpb) #47, !noalias !11169, !inline_history !10977
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i835

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i835: ; preds = %bb.mx, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i.i832
  store ptr %i.bof, ptr %i.bnf, align 8, !tbaa !8354, !noalias !11169
  store ptr %i.boy, ptr %i.bnm, align 8, !tbaa !8350, !noalias !11169
  %i.bpc = getelementptr inbounds nuw [8 x i8], ptr %i.bof, i64 %i.bod
  store ptr %i.bpc, ptr %i.bnn, align 8, !tbaa !8351, !noalias !11169
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i823

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i823: ; preds = %bb.mu, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i835
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !11169
  %i.bpd = getelementptr inbounds nuw i8, ptr %.sroa.01015.01224, i64 40 ; 2 uses
  %i.bpe = icmp eq ptr %i.bpd, %i.bnk
  br i1 %i.bpe, label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.ms

bb.my:                                            ; preds = %bb.ms
  %i.bpf = landingpad { ptr, i32 }
          cleanup
  br label %.body836

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i825, %bb.mw
  %lpad.loopexit.split-lp3084 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23, !noalias !11169, !inline_history !10977
  br label %.body836

.body836:                                         ; preds = %bb.mt, %bb.my, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i803 = phi { ptr, i32 } [ %lpad.loopexit.split-lp3084, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bpf, %bb.my ], [ %i.bnq, %bb.mt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !11169
  call fastcc void @_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bnf) #23, !noalias !11169, !inline_history !10977
  call void @_ZdlPvm(ptr noundef nonnull %i.bne, i64 noundef 32) #47, !noalias !11169, !inline_history !10971
  br label %common.resume

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i823, %_ZNK5folly7dynamic3endEv.exit.i800, %bb.mr
  store ptr %i.bne, ptr %36, align 8, !tbaa !9912
  %i.bpg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bph = load ptr, ptr %i.bpg, align 8, !tbaa !8350 ; 6 uses
  %i.bpi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bpj = load ptr, ptr %i.bpi, align 8, !tbaa !8351
  %.not.i550 = icmp eq ptr %i.bph, %i.bpj
  br i1 %.not.i550, label %bb.na, label %bb.mz

bb.mz:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.bne, ptr %i.bph, align 8, !tbaa !8353
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bph, i64 8
  store ptr %i.bpk, ptr %i.bpg, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorESt14default_deleteIS3_EED2Ev.exit

bb.na:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i551 = load ptr, ptr %i.bnd, align 8, !tbaa !8354 ; 10 uses
  %i.bpl = ptrtoint ptr %i.bph to i64             ; 2 uses
  %i.bpm = ptrtoint ptr %.val.i.i551 to i64       ; 3 uses
  %i.bpn = sub i64 %i.bpl, %i.bpm                 ; 3 uses
  %i.bpo = icmp eq i64 %i.bpn, 9223372036854775800
  br i1 %i.bpo, label %bb.nb, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i552

bb.nb:                                            ; preds = %bb.na
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc563 unwind label %bb.nd

.noexc563:                                        ; preds = %bb.nb
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i552: ; preds = %bb.na
  %i.bpp = ashr exact i64 %i.bpn, 3               ; 3 uses
  %i.bpq = icmp eq ptr %i.bph, %.val.i.i551       ; 2 uses
  %.sroa.speculated.i.i.i553 = select i1 %i.bpq, i64 1, i64 %i.bpp
  %i.bpr = add nsw i64 %.sroa.speculated.i.i.i553, %i.bpp ; 2 uses
  %i.bps = icmp ult i64 %i.bpr, %i.bpp
  %i.bpt = call i64 @llvm.umin.i64(i64 %i.bpr, i64 1152921504606846975)
  %i.bpu = select i1 %i.bps, i64 1152921504606846975, i64 %i.bpt ; 3 uses
  %.not.i.i.i554 = icmp ne i64 %i.bpu, 0
  call void @llvm.assume(i1 %.not.i.i.i554)
  %i.bpv = shl nuw nsw i64 %i.bpu, 3
  %i.bpw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bpv) #46
          to label %.noexc564 unwind label %bb.nd ; 10 uses

.noexc564:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i552
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bpw, i64 %i.bpn
  store ptr %i.bne, ptr %i.bpx, align 8, !tbaa !8353
  br i1 %i.bpq, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i560, label %.lr.ph.i.i.i.i.i555.preheader

.lr.ph.i.i.i.i.i555.preheader:                    ; preds = %.noexc564
  %i.bpy = add i64 %i.bpl, -8
  %i.bpz = sub i64 %i.bpy, %i.bpm                 ; 3 uses
  %i.bqa = lshr i64 %i.bpz, 3
  %i.bqb = add nuw nsw i64 %i.bqa, 1              ; 2 uses
  %min.iters.check3004 = icmp ult i64 %i.bpz, 136
  br i1 %min.iters.check3004, label %.lr.ph.i.i.i.i.i555.preheader3081, label %vector.memcheck3005

vector.memcheck3005:                              ; preds = %.lr.ph.i.i.i.i.i555.preheader
  %i.bqc = and i64 %i.bpz, -8
  %i.bqd = add i64 %i.bqc, 8                      ; 2 uses
  %i.bqe = getelementptr i8, ptr %i.bpw, i64 %i.bqd
  %i.bqf = getelementptr i8, ptr %.val.i.i551, i64 %i.bqd
  %bound03006 = icmp ult ptr %i.bpw, %i.bqf
  %bound13007 = icmp ult ptr %.val.i.i551, %i.bqe
  %found.conflict3008 = and i1 %bound03006, %bound13007
  br i1 %found.conflict3008, label %.lr.ph.i.i.i.i.i555.preheader3081, label %vector.ph3009

vector.ph3009:                                    ; preds = %vector.memcheck3005
  %n.vec3010 = and i64 %i.bqb, 4611686018427387900 ; 3 uses
  %i.bqg = shl i64 %n.vec3010, 3                  ; 2 uses
  %i.bqh = getelementptr i8, ptr %i.bpw, i64 %i.bqg ; 2 uses
  %i.bqi = getelementptr i8, ptr %.val.i.i551, i64 %i.bqg
  br label %vector.body3011

vector.body3011:                                  ; preds = %vector.body3011, %vector.ph3009
  %index3012 = phi i64 [ 0, %vector.ph3009 ], [ %index.next3017, %vector.body3011 ] ; 2 uses
  %i.bqj = shl i64 %index3012, 3                  ; 2 uses
  %next.gep3013 = getelementptr i8, ptr %i.bpw, i64 %i.bqj ; 2 uses
  %next.gep3014 = getelementptr i8, ptr %.val.i.i551, i64 %i.bqj ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11178)
  call void @llvm.experimental.noalias.scope.decl(metadata !11179)
  %i.bqk = getelementptr i8, ptr %next.gep3014, i64 16 ; 2 uses
  %wide.load3015 = load <2 x i64>, ptr %next.gep3014, align 8, !tbaa !466, !alias.scope !11180
  %wide.load3016 = load <2 x i64>, ptr %i.bqk, align 8, !tbaa !466, !alias.scope !11180
  %i.bql = getelementptr i8, ptr %next.gep3013, i64 16
  store <2 x i64> %wide.load3015, ptr %next.gep3013, align 8, !tbaa !466, !alias.scope !11181, !noalias !11182
  store <2 x i64> %wide.load3016, ptr %i.bql, align 8, !tbaa !466, !alias.scope !11181, !noalias !11182
  store <2 x ptr> splat (ptr null), ptr %next.gep3014, align 8, !tbaa !466, !alias.scope !11180
  store <2 x ptr> splat (ptr null), ptr %i.bqk, align 8, !tbaa !466, !alias.scope !11180
  %index.next3017 = add nuw i64 %index3012, 4     ; 2 uses
  %i.bqm = icmp eq i64 %index.next3017, %n.vec3010
  br i1 %i.bqm, label %middle.block3018, label %vector.body3011, !llvm.loop !10992

middle.block3018:                                 ; preds = %vector.body3011
  %cmp.n3019 = icmp eq i64 %i.bqb, %n.vec3010
  br i1 %cmp.n3019, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i560, label %.lr.ph.i.i.i.i.i555.preheader3081

.lr.ph.i.i.i.i.i555.preheader3081:                ; preds = %vector.memcheck3005, %.lr.ph.i.i.i.i.i555.preheader, %middle.block3018
  %.03.i.i.i.i.i556.ph = phi ptr [ %i.bpw, %vector.memcheck3005 ], [ %i.bpw, %.lr.ph.i.i.i.i.i555.preheader ], [ %i.bqh, %middle.block3018 ]
  %.092.i.i.i.i.i557.ph = phi ptr [ %.val.i.i551, %vector.memcheck3005 ], [ %.val.i.i551, %.lr.ph.i.i.i.i.i555.preheader ], [ %i.bqi, %middle.block3018 ]
  br label %.lr.ph.i.i.i.i.i555

.lr.ph.i.i.i.i.i555:                              ; preds = %.lr.ph.i.i.i.i.i555.preheader3081, %.lr.ph.i.i.i.i.i555
  %.03.i.i.i.i.i556 = phi ptr [ %i.bqo, %.lr.ph.i.i.i.i.i555 ], [ %.03.i.i.i.i.i556.ph, %.lr.ph.i.i.i.i.i555.preheader3081 ] ; 2 uses
  %.092.i.i.i.i.i557 = phi ptr [ %i.bqn, %.lr.ph.i.i.i.i.i555 ], [ %.092.i.i.i.i.i557.ph, %.lr.ph.i.i.i.i.i555.preheader3081 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11178)
  call void @llvm.experimental.noalias.scope.decl(metadata !11179)
  %.val.i.i.i.i.i.i.i.i.i.i558 = load i64, ptr %.092.i.i.i.i.i557, align 8, !tbaa !466, !alias.scope !11179
  store i64 %.val.i.i.i.i.i.i.i.i.i.i558, ptr %.03.i.i.i.i.i556, align 8, !tbaa !466, !alias.scope !11178
  store ptr null, ptr %.092.i.i.i.i.i557, align 8, !tbaa !466, !alias.scope !11179
  %i.bqn = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i557, i64 8 ; 2 uses
  %i.bqo = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i556, i64 8 ; 2 uses
  %.not.i.i.i.i.i559 = icmp eq ptr %i.bqn, %i.bph
  br i1 %.not.i.i.i.i.i559, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i560, label %.lr.ph.i.i.i.i.i555, !llvm.loop !10993

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i560: ; preds = %.lr.ph.i.i.i.i.i555, %middle.block3018, %.noexc564
  %.0.lcssa.i.i.i.i.i561 = phi ptr [ %i.bpw, %.noexc564 ], [ %i.bqh, %middle.block3018 ], [ %i.bqo, %.lr.ph.i.i.i.i.i555 ]
  %i.bqp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i561, i64 8
  %.not.i28.i.i562 = icmp eq ptr %.val.i.i551, null
  br i1 %.not.i28.i.i562, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_14AllOfValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.nc

bb.nc:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i560
  %i.bqq = load ptr, ptr %i.bpi, align 8, !tbaa !8351
  %i.bqr = ptrtoint ptr %i.bqq to i64
  %i.bqs = sub i64 %i.bqr, %i.bpm
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i551, i64 noundef %i.bqs) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_14AllOfValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_14AllOfValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.nc, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i560
  store ptr %i.bpw, ptr %i.bnd, align 8, !tbaa !8354
  store ptr %i.bqp, ptr %i.bpg, align 8, !tbaa !8350
  %i.bqt = getelementptr inbounds nuw [8 x i8], ptr %i.bpw, i64 %i.bpu
  store ptr %i.bqt, ptr %i.bpi, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.mz, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_14AllOfValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  br label %bb.ne

bb.nd:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i552, %bb.nb
  %i.bqu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  br label %common.resume

bb.ne:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorESt14default_deleteIS3_EED2Ev.exit, %bb.mq
  %i.bqv = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.60, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 5)) ; 2 uses
  %.not171 = icmp eq ptr %i.bqv, null
  br i1 %.not171, label %bb.nm, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.bqw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  %i.bqx = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46, !noalias !11183, !inline_history !10996 ; 5 uses
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorC2ERNS1_22SchemaValidatorContextERKNS_7dynamicENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(40) %i.bqx, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.bqv, i32 noundef 1)
          to label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicENS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.ng, !noalias !11183, !inline_history !10996

bb.ng:                                            ; preds = %bb.nf
  %i.bqy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bqx, i64 noundef 40) #47, !noalias !11183, !inline_history !10996
  br label %common.resume

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicENS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.nf
  store ptr %i.bqx, ptr %37, align 8, !tbaa !9914
  %i.bqz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bra = load ptr, ptr %i.bqz, align 8, !tbaa !8350 ; 6 uses
  %i.brb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.brc = load ptr, ptr %i.brb, align 8, !tbaa !8351
  %.not.i580 = icmp eq ptr %i.bra, %i.brc
  br i1 %.not.i580, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicENS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.bqx, ptr %i.bra, align 8, !tbaa !8353
  %i.brd = getelementptr inbounds nuw i8, ptr %i.bra, i64 8
  store ptr %i.brd, ptr %i.bqz, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorESt14default_deleteIS3_EED2Ev.exit

bb.ni:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicENS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %.val.i.i581 = load ptr, ptr %i.bqw, align 8, !tbaa !8354 ; 10 uses
  %i.bre = ptrtoint ptr %i.bra to i64             ; 2 uses
  %i.brf = ptrtoint ptr %.val.i.i581 to i64       ; 3 uses
  %i.brg = sub i64 %i.bre, %i.brf                 ; 3 uses
  %i.brh = icmp eq i64 %i.brg, 9223372036854775800
  br i1 %i.brh, label %bb.nj, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i582

bb.nj:                                            ; preds = %bb.ni
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc593 unwind label %bb.nl

.noexc593:                                        ; preds = %bb.nj
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i582: ; preds = %bb.ni
  %i.bri = ashr exact i64 %i.brg, 3               ; 3 uses
  %i.brj = icmp eq ptr %i.bra, %.val.i.i581       ; 2 uses
  %.sroa.speculated.i.i.i583 = select i1 %i.brj, i64 1, i64 %i.bri
  %i.brk = add nsw i64 %.sroa.speculated.i.i.i583, %i.bri ; 2 uses
  %i.brl = icmp ult i64 %i.brk, %i.bri
  %i.brm = call i64 @llvm.umin.i64(i64 %i.brk, i64 1152921504606846975)
  %i.brn = select i1 %i.brl, i64 1152921504606846975, i64 %i.brm ; 3 uses
  %.not.i.i.i584 = icmp ne i64 %i.brn, 0
  call void @llvm.assume(i1 %.not.i.i.i584)
  %i.bro = shl nuw nsw i64 %i.brn, 3
  %i.brp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bro) #46
          to label %.noexc594 unwind label %bb.nl ; 10 uses

.noexc594:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i582
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brp, i64 %i.brg
  store ptr %i.bqx, ptr %i.brq, align 8, !tbaa !8353
  br i1 %i.brj, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i590, label %.lr.ph.i.i.i.i.i585.preheader

.lr.ph.i.i.i.i.i585.preheader:                    ; preds = %.noexc594
  %i.brr = add i64 %i.bre, -8
  %i.brs = sub i64 %i.brr, %i.brf                 ; 3 uses
  %i.brt = lshr i64 %i.brs, 3
  %i.bru = add nuw nsw i64 %i.brt, 1              ; 2 uses
  %min.iters.check3028 = icmp ult i64 %i.brs, 136
  br i1 %min.iters.check3028, label %.lr.ph.i.i.i.i.i585.preheader3079, label %vector.memcheck3029

vector.memcheck3029:                              ; preds = %.lr.ph.i.i.i.i.i585.preheader
  %i.brv = and i64 %i.brs, -8
  %i.brw = add i64 %i.brv, 8                      ; 2 uses
  %i.brx = getelementptr i8, ptr %i.brp, i64 %i.brw
  %i.bry = getelementptr i8, ptr %.val.i.i581, i64 %i.brw
  %bound03030 = icmp ult ptr %i.brp, %i.bry
  %bound13031 = icmp ult ptr %.val.i.i581, %i.brx
  %found.conflict3032 = and i1 %bound03030, %bound13031
  br i1 %found.conflict3032, label %.lr.ph.i.i.i.i.i585.preheader3079, label %vector.ph3033

vector.ph3033:                                    ; preds = %vector.memcheck3029
  %n.vec3034 = and i64 %i.bru, 4611686018427387900 ; 3 uses
  %i.brz = shl i64 %n.vec3034, 3                  ; 2 uses
  %i.bsa = getelementptr i8, ptr %i.brp, i64 %i.brz ; 2 uses
  %i.bsb = getelementptr i8, ptr %.val.i.i581, i64 %i.brz
  br label %vector.body3035

vector.body3035:                                  ; preds = %vector.body3035, %vector.ph3033
  %index3036 = phi i64 [ 0, %vector.ph3033 ], [ %index.next3041, %vector.body3035 ] ; 2 uses
  %i.bsc = shl i64 %index3036, 3                  ; 2 uses
  %next.gep3037 = getelementptr i8, ptr %i.brp, i64 %i.bsc ; 2 uses
  %next.gep3038 = getelementptr i8, ptr %.val.i.i581, i64 %i.bsc ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11184)
  call void @llvm.experimental.noalias.scope.decl(metadata !11185)
  %i.bsd = getelementptr i8, ptr %next.gep3038, i64 16 ; 2 uses
  %wide.load3039 = load <2 x i64>, ptr %next.gep3038, align 8, !tbaa !466, !alias.scope !11186
  %wide.load3040 = load <2 x i64>, ptr %i.bsd, align 8, !tbaa !466, !alias.scope !11186
  %i.bse = getelementptr i8, ptr %next.gep3037, i64 16
  store <2 x i64> %wide.load3039, ptr %next.gep3037, align 8, !tbaa !466, !alias.scope !11187, !noalias !11188
  store <2 x i64> %wide.load3040, ptr %i.bse, align 8, !tbaa !466, !alias.scope !11187, !noalias !11188
  store <2 x ptr> splat (ptr null), ptr %next.gep3038, align 8, !tbaa !466, !alias.scope !11186
  store <2 x ptr> splat (ptr null), ptr %i.bsd, align 8, !tbaa !466, !alias.scope !11186
  %index.next3041 = add nuw i64 %index3036, 4     ; 2 uses
  %i.bsf = icmp eq i64 %index.next3041, %n.vec3034
  br i1 %i.bsf, label %middle.block3042, label %vector.body3035, !llvm.loop !11003

middle.block3042:                                 ; preds = %vector.body3035
  %cmp.n3043 = icmp eq i64 %i.bru, %n.vec3034
  br i1 %cmp.n3043, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i590, label %.lr.ph.i.i.i.i.i585.preheader3079

.lr.ph.i.i.i.i.i585.preheader3079:                ; preds = %vector.memcheck3029, %.lr.ph.i.i.i.i.i585.preheader, %middle.block3042
  %.03.i.i.i.i.i586.ph = phi ptr [ %i.brp, %vector.memcheck3029 ], [ %i.brp, %.lr.ph.i.i.i.i.i585.preheader ], [ %i.bsa, %middle.block3042 ]
  %.092.i.i.i.i.i587.ph = phi ptr [ %.val.i.i581, %vector.memcheck3029 ], [ %.val.i.i581, %.lr.ph.i.i.i.i.i585.preheader ], [ %i.bsb, %middle.block3042 ]
  br label %.lr.ph.i.i.i.i.i585

.lr.ph.i.i.i.i.i585:                              ; preds = %.lr.ph.i.i.i.i.i585.preheader3079, %.lr.ph.i.i.i.i.i585
  %.03.i.i.i.i.i586 = phi ptr [ %i.bsh, %.lr.ph.i.i.i.i.i585 ], [ %.03.i.i.i.i.i586.ph, %.lr.ph.i.i.i.i.i585.preheader3079 ] ; 2 uses
  %.092.i.i.i.i.i587 = phi ptr [ %i.bsg, %.lr.ph.i.i.i.i.i585 ], [ %.092.i.i.i.i.i587.ph, %.lr.ph.i.i.i.i.i585.preheader3079 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11184)
  call void @llvm.experimental.noalias.scope.decl(metadata !11185)
  %.val.i.i.i.i.i.i.i.i.i.i588 = load i64, ptr %.092.i.i.i.i.i587, align 8, !tbaa !466, !alias.scope !11185
  store i64 %.val.i.i.i.i.i.i.i.i.i.i588, ptr %.03.i.i.i.i.i586, align 8, !tbaa !466, !alias.scope !11184
  store ptr null, ptr %.092.i.i.i.i.i587, align 8, !tbaa !466, !alias.scope !11185
  %i.bsg = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i587, i64 8 ; 2 uses
  %i.bsh = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i586, i64 8 ; 2 uses
  %.not.i.i.i.i.i589 = icmp eq ptr %i.bsg, %i.bra
  br i1 %.not.i.i.i.i.i589, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i590, label %.lr.ph.i.i.i.i.i585, !llvm.loop !11004

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i590: ; preds = %.lr.ph.i.i.i.i.i585, %middle.block3042, %.noexc594
  %.0.lcssa.i.i.i.i.i591 = phi ptr [ %i.brp, %.noexc594 ], [ %i.bsa, %middle.block3042 ], [ %i.bsh, %.lr.ph.i.i.i.i.i585 ]
  %i.bsi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i591, i64 8
  %.not.i28.i.i592 = icmp eq ptr %.val.i.i581, null
  br i1 %.not.i28.i.i592, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_14AnyOfValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.nk

bb.nk:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i590
  %i.bsj = load ptr, ptr %i.brb, align 8, !tbaa !8351
  %i.bsk = ptrtoint ptr %i.bsj to i64
  %i.bsl = sub i64 %i.bsk, %i.brf
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i581, i64 noundef %i.bsl) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_14AnyOfValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_14AnyOfValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.nk, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i590
  store ptr %i.brp, ptr %i.bqw, align 8, !tbaa !8354
  store ptr %i.bsi, ptr %i.bqz, align 8, !tbaa !8350
  %i.bsm = getelementptr inbounds nuw [8 x i8], ptr %i.brp, i64 %i.brn
  store ptr %i.bsm, ptr %i.brb, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.nh, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_14AnyOfValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  br label %bb.nm

bb.nl:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i582, %bb.nj
  %i.bsn = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  br label %common.resume

bb.nm:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorESt14default_deleteIS3_EED2Ev.exit, %bb.ne
  %i.bso = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.61, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.61, i64 5)) ; 2 uses
  %.not172 = icmp eq ptr %i.bso, null
  br i1 %.not172, label %bb.nu, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.bsp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  %i.bsq = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46, !noalias !11189, !inline_history !10996 ; 5 uses
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorC2ERNS1_22SchemaValidatorContextERKNS_7dynamicENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(40) %i.bsq, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.bso, i32 noundef 0)
          to label %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicENS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit610 unwind label %bb.no, !noalias !11189, !inline_history !10996

bb.no:                                            ; preds = %bb.nn
  %i.bsr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bsq, i64 noundef 40) #47, !noalias !11189, !inline_history !10996
  br label %common.resume

_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicENS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit610: ; preds = %bb.nn
  store ptr %i.bsq, ptr %38, align 8, !tbaa !9914
  %i.bss = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bst = load ptr, ptr %i.bss, align 8, !tbaa !8350 ; 6 uses
  %i.bsu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bsv = load ptr, ptr %i.bsu, align 8, !tbaa !8351
  %.not.i611 = icmp eq ptr %i.bst, %i.bsv
  br i1 %.not.i611, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicENS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit610
  store ptr %i.bsq, ptr %i.bst, align 8, !tbaa !8353
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bst, i64 8
  store ptr %i.bsw, ptr %i.bss, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorESt14default_deleteIS3_EED2Ev.exit644

bb.nq:                                            ; preds = %_ZSt11make_uniqueIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorEJRNS2_22SchemaValidatorContextERKNS0_7dynamicENS3_4TypeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit610
  %.val.i.i612 = load ptr, ptr %i.bsp, align 8, !tbaa !8354 ; 7 uses
  %i.bsx = ptrtoint ptr %i.bst to i64             ; 2 uses
  %i.bsy = ptrtoint ptr %.val.i.i612 to i64       ; 3 uses
  %i.bsz = sub i64 %i.bsx, %i.bsy                 ; 3 uses
  %i.bta = icmp eq i64 %i.bsz, 9223372036854775800
  br i1 %i.bta, label %bb.nr, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i613

bb.nr:                                            ; preds = %bb.nq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc625 unwind label %bb.nt

.noexc625:                                        ; preds = %bb.nr
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i613: ; preds = %bb.nq
  %i.btb = ashr exact i64 %i.bsz, 3               ; 3 uses
  %i.btc = icmp eq ptr %i.bst, %.val.i.i612       ; 2 uses
  %.sroa.speculated.i.i.i614 = select i1 %i.btc, i64 1, i64 %i.btb
  %i.btd = add nsw i64 %.sroa.speculated.i.i.i614, %i.btb ; 2 uses
  %i.bte = icmp ult i64 %i.btd, %i.btb
  %i.btf = call i64 @llvm.umin.i64(i64 %i.btd, i64 1152921504606846975)
  %i.btg = select i1 %i.bte, i64 1152921504606846975, i64 %i.btf ; 3 uses
  %.not.i.i.i615 = icmp ne i64 %i.btg, 0
  call void @llvm.assume(i1 %.not.i.i.i615)
  %i.bth = shl nuw nsw i64 %i.btg, 3
  %i.bti = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bth) #46
          to label %.noexc626 unwind label %bb.nt ; 7 uses

.noexc626:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i613
  %i.btj = getelementptr inbounds nuw i8, ptr %i.bti, i64 %i.bsz
  store ptr %i.bsq, ptr %i.btj, align 8, !tbaa !8353
  br i1 %i.btc, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i621, label %.lr.ph.i.i.i.i.i616.preheader

.lr.ph.i.i.i.i.i616.preheader:                    ; preds = %.noexc626
  %i.btk = add i64 %i.bsx, -8
  %i.btl = sub i64 %i.btk, %i.bsy                 ; 2 uses
  %i.btm = lshr i64 %i.btl, 3
  %i.btn = add nuw nsw i64 %i.btm, 1              ; 2 uses
  %min.iters.check3047 = icmp ult i64 %i.btl, 24
  br i1 %min.iters.check3047, label %.lr.ph.i.i.i.i.i616.preheader3077, label %vector.ph3048

vector.ph3048:                                    ; preds = %.lr.ph.i.i.i.i.i616.preheader
  %n.vec3049 = and i64 %i.btn, 4611686018427387900 ; 3 uses
  %i.bto = shl i64 %n.vec3049, 3                  ; 2 uses
  %i.btp = getelementptr i8, ptr %i.bti, i64 %i.bto ; 2 uses
  %i.btq = getelementptr i8, ptr %.val.i.i612, i64 %i.bto
  br label %vector.body3050

vector.body3050:                                  ; preds = %vector.body3050, %vector.ph3048
  %index3051 = phi i64 [ 0, %vector.ph3048 ], [ %index.next3056, %vector.body3050 ] ; 2 uses
  %i.btr = shl i64 %index3051, 3                  ; 2 uses
  %next.gep3052 = getelementptr i8, ptr %i.bti, i64 %i.btr ; 2 uses
  %next.gep3053 = getelementptr i8, ptr %.val.i.i612, i64 %i.btr ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11190)
  call void @llvm.experimental.noalias.scope.decl(metadata !11191)
  %i.bts = getelementptr i8, ptr %next.gep3053, i64 16 ; 2 uses
  %wide.load3054 = load <2 x i64>, ptr %next.gep3053, align 8, !tbaa !466, !alias.scope !11191
  %wide.load3055 = load <2 x i64>, ptr %i.bts, align 8, !tbaa !466, !alias.scope !11191
  %i.btt = getelementptr i8, ptr %next.gep3052, i64 16
  store <2 x i64> %wide.load3054, ptr %next.gep3052, align 8, !tbaa !466, !alias.scope !11190
  store <2 x i64> %wide.load3055, ptr %i.btt, align 8, !tbaa !466, !alias.scope !11190
  store <2 x ptr> splat (ptr null), ptr %next.gep3053, align 8, !tbaa !466, !alias.scope !11191
  store <2 x ptr> splat (ptr null), ptr %i.bts, align 8, !tbaa !466, !alias.scope !11191
  %index.next3056 = add nuw i64 %index3051, 4     ; 2 uses
  %i.btu = icmp eq i64 %index.next3056, %n.vec3049
  br i1 %i.btu, label %middle.block3057, label %vector.body3050, !llvm.loop !11010

middle.block3057:                                 ; preds = %vector.body3050
  %cmp.n3058 = icmp eq i64 %i.btn, %n.vec3049
  br i1 %cmp.n3058, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i621, label %.lr.ph.i.i.i.i.i616.preheader3077

.lr.ph.i.i.i.i.i616.preheader3077:                ; preds = %.lr.ph.i.i.i.i.i616.preheader, %middle.block3057
  %.03.i.i.i.i.i617.ph = phi ptr [ %i.bti, %.lr.ph.i.i.i.i.i616.preheader ], [ %i.btp, %middle.block3057 ]
  %.092.i.i.i.i.i618.ph = phi ptr [ %.val.i.i612, %.lr.ph.i.i.i.i.i616.preheader ], [ %i.btq, %middle.block3057 ]
  br label %.lr.ph.i.i.i.i.i616

.lr.ph.i.i.i.i.i616:                              ; preds = %.lr.ph.i.i.i.i.i616.preheader3077, %.lr.ph.i.i.i.i.i616
  %.03.i.i.i.i.i617 = phi ptr [ %i.btw, %.lr.ph.i.i.i.i.i616 ], [ %.03.i.i.i.i.i617.ph, %.lr.ph.i.i.i.i.i616.preheader3077 ] ; 2 uses
  %.092.i.i.i.i.i618 = phi ptr [ %i.btv, %.lr.ph.i.i.i.i.i616 ], [ %.092.i.i.i.i.i618.ph, %.lr.ph.i.i.i.i.i616.preheader3077 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11190)
  call void @llvm.experimental.noalias.scope.decl(metadata !11191)
  %.val.i.i.i.i.i.i.i.i.i.i619 = load i64, ptr %.092.i.i.i.i.i618, align 8, !tbaa !466, !alias.scope !11191
  store i64 %.val.i.i.i.i.i.i.i.i.i.i619, ptr %.03.i.i.i.i.i617, align 8, !tbaa !466, !alias.scope !11190
  store ptr null, ptr %.092.i.i.i.i.i618, align 8, !tbaa !466, !alias.scope !11191
  %i.btv = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i618, i64 8 ; 2 uses
  %i.btw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i617, i64 8 ; 2 uses
  %.not.i.i.i.i.i620 = icmp eq ptr %i.btv, %i.bst
  br i1 %.not.i.i.i.i.i620, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i621, label %.lr.ph.i.i.i.i.i616, !llvm.loop !11011

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i621: ; preds = %.lr.ph.i.i.i.i.i616, %middle.block3057, %.noexc626
  %.0.lcssa.i.i.i.i.i622 = phi ptr [ %i.bti, %.noexc626 ], [ %i.btp, %middle.block3057 ], [ %i.btw, %.lr.ph.i.i.i.i.i616 ]
  %i.btx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i622, i64 8
  %.not.i28.i.i623 = icmp eq ptr %.val.i.i612, null
  br i1 %.not.i28.i.i623, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_14AnyOfValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i624, label %bb.ns

bb.ns:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i621
  %i.bty = load ptr, ptr %i.bsu, align 8, !tbaa !8351
  %i.btz = ptrtoint ptr %i.bty to i64
  %i.bua = sub i64 %i.btz, %i.bsy
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i612, i64 noundef %i.bua) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_14AnyOfValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i624

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_14AnyOfValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i624: ; preds = %bb.ns, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i621
  store ptr %i.bti, ptr %i.bsp, align 8, !tbaa !8354
  store ptr %i.btx, ptr %i.bss, align 8, !tbaa !8350
  %i.bub = getelementptr inbounds nuw [8 x i8], ptr %i.bti, i64 %i.btg
  store ptr %i.bub, ptr %i.bsu, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorESt14default_deleteIS3_EED2Ev.exit644

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorESt14default_deleteIS3_EED2Ev.exit644: ; preds = %bb.np, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_14AnyOfValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i624
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  br label %bb.nu

bb.nt:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i613, %bb.nr
  %i.buc = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  br label %common.resume

bb.nu:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorESt14default_deleteIS3_EED2Ev.exit644, %bb.nm
  %i.bud = call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.62, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.62, i64 3)) ; 2 uses
  %.not173 = icmp eq ptr %i.bud, null
  br i1 %.not173, label %.critedge, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.bue = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  %i.buf = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #46, !noalias !11192, !inline_history !11014 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_112NotValidatorE, i64 16), ptr %i.buf, align 8, !tbaa !436, !noalias !11192
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !11192
  call void @llvm.experimental.noalias.scope.decl(metadata !11193)
  %i.bug = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %.noexc.i840 unwind label %bb.nx ; 6 uses

.noexc.i840:                                      ; preds = %bb.nv
  %i.buh = getelementptr inbounds nuw i8, ptr %i.bug, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 16), ptr %i.bug, align 8, !tbaa !436, !noalias !11194
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 72), ptr %i.buh, align 8, !tbaa !436, !noalias !11194
  %i.bui = getelementptr inbounds nuw i8, ptr %i.bug, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bui, i8 0, i64 24, i1 false), !noalias !11194
  store ptr %i.bug, ptr %3, align 8, !tbaa !438, !alias.scope !11193, !noalias !11192
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.bug, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.bud)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i842 unwind label %bb.nw, !noalias !11195, !inline_history !11019

bb.nw:                                            ; preds = %.noexc.i840
  %i.buj = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23, !noalias !11192, !inline_history !11019
  br label %.body.i838

_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i842: ; preds = %.noexc.i840
  %i.buk = getelementptr inbounds nuw i8, ptr %i.buf, i64 8
  store ptr %i.bug, ptr %i.buk, align 8, !tbaa !8353, !noalias !11192
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !11192
  store ptr %i.buf, ptr %39, align 8, !tbaa !9916
  %i.bul = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bum = load ptr, ptr %i.bul, align 8, !tbaa !8350 ; 6 uses
  %i.bun = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.buo = load ptr, ptr %i.bun, align 8, !tbaa !8351
  %.not.i645 = icmp eq ptr %i.bum, %i.buo
  br i1 %.not.i645, label %bb.nz, label %bb.ny

bb.nx:                                            ; preds = %bb.nv
  %i.bup = landingpad { ptr, i32 }
          cleanup
  br label %.body.i838

.body.i838:                                       ; preds = %bb.nx, %bb.nw
  %eh.lpad-body.i839 = phi { ptr, i32 } [ %i.bup, %bb.nx ], [ %i.buj, %bb.nw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !11192
  call void @_ZdlPvm(ptr noundef nonnull %i.buf, i64 noundef 16) #47, !noalias !11192, !inline_history !11014
  br label %common.resume

bb.ny:                                            ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i842
  store ptr %i.buf, ptr %i.bum, align 8, !tbaa !8353
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bum, i64 8
  store ptr %i.buq, ptr %i.bul, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_112NotValidatorESt14default_deleteIS3_EED2Ev.exit

bb.nz:                                            ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit.i842
  %.val.i.i646 = load ptr, ptr %i.bue, align 8, !tbaa !8354 ; 7 uses
  %i.bur = ptrtoint ptr %i.bum to i64             ; 2 uses
  %i.bus = ptrtoint ptr %.val.i.i646 to i64       ; 3 uses
  %i.but = sub i64 %i.bur, %i.bus                 ; 3 uses
  %i.buu = icmp eq i64 %i.but, 9223372036854775800
  br i1 %i.buu, label %bb.oa, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i647

bb.oa:                                            ; preds = %bb.nz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc658 unwind label %bb.oc

.noexc658:                                        ; preds = %bb.oa
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i647: ; preds = %bb.nz
  %i.buv = ashr exact i64 %i.but, 3               ; 3 uses
  %i.buw = icmp eq ptr %i.bum, %.val.i.i646       ; 2 uses
  %.sroa.speculated.i.i.i648 = select i1 %i.buw, i64 1, i64 %i.buv
  %i.bux = add nsw i64 %.sroa.speculated.i.i.i648, %i.buv ; 2 uses
  %i.buy = icmp ult i64 %i.bux, %i.buv
  %i.buz = call i64 @llvm.umin.i64(i64 %i.bux, i64 1152921504606846975)
  %i.bva = select i1 %i.buy, i64 1152921504606846975, i64 %i.buz ; 3 uses
  %.not.i.i.i649 = icmp ne i64 %i.bva, 0
  call void @llvm.assume(i1 %.not.i.i.i649)
  %i.bvb = shl nuw nsw i64 %i.bva, 3
  %i.bvc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bvb) #46
          to label %.noexc659 unwind label %bb.oc ; 7 uses

.noexc659:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i647
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bvc, i64 %i.but
  store ptr %i.buf, ptr %i.bvd, align 8, !tbaa !8353
  br i1 %i.buw, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i655, label %.lr.ph.i.i.i.i.i650.preheader

.lr.ph.i.i.i.i.i650.preheader:                    ; preds = %.noexc659
  %i.bve = add i64 %i.bur, -8
  %i.bvf = sub i64 %i.bve, %i.bus                 ; 2 uses
  %i.bvg = lshr i64 %i.bvf, 3
  %i.bvh = add nuw nsw i64 %i.bvg, 1              ; 2 uses
  %min.iters.check3062 = icmp ult i64 %i.bvf, 24
  br i1 %min.iters.check3062, label %.lr.ph.i.i.i.i.i650.preheader3076, label %vector.ph3063

vector.ph3063:                                    ; preds = %.lr.ph.i.i.i.i.i650.preheader
  %n.vec3064 = and i64 %i.bvh, 4611686018427387900 ; 3 uses
  %i.bvi = shl i64 %n.vec3064, 3                  ; 2 uses
  %i.bvj = getelementptr i8, ptr %i.bvc, i64 %i.bvi ; 2 uses
  %i.bvk = getelementptr i8, ptr %.val.i.i646, i64 %i.bvi
  br label %vector.body3065

vector.body3065:                                  ; preds = %vector.body3065, %vector.ph3063
  %index3066 = phi i64 [ 0, %vector.ph3063 ], [ %index.next3071, %vector.body3065 ] ; 2 uses
  %i.bvl = shl i64 %index3066, 3                  ; 2 uses
  %next.gep3067 = getelementptr i8, ptr %i.bvc, i64 %i.bvl ; 2 uses
  %next.gep3068 = getelementptr i8, ptr %.val.i.i646, i64 %i.bvl ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11196)
  call void @llvm.experimental.noalias.scope.decl(metadata !11197)
  %i.bvm = getelementptr i8, ptr %next.gep3068, i64 16 ; 2 uses
  %wide.load3069 = load <2 x i64>, ptr %next.gep3068, align 8, !tbaa !466, !alias.scope !11197
  %wide.load3070 = load <2 x i64>, ptr %i.bvm, align 8, !tbaa !466, !alias.scope !11197
  %i.bvn = getelementptr i8, ptr %next.gep3067, i64 16
  store <2 x i64> %wide.load3069, ptr %next.gep3067, align 8, !tbaa !466, !alias.scope !11196
  store <2 x i64> %wide.load3070, ptr %i.bvn, align 8, !tbaa !466, !alias.scope !11196
  store <2 x ptr> splat (ptr null), ptr %next.gep3068, align 8, !tbaa !466, !alias.scope !11197
  store <2 x ptr> splat (ptr null), ptr %i.bvm, align 8, !tbaa !466, !alias.scope !11197
  %index.next3071 = add nuw i64 %index3066, 4     ; 2 uses
  %i.bvo = icmp eq i64 %index.next3071, %n.vec3064
  br i1 %i.bvo, label %middle.block3072, label %vector.body3065, !llvm.loop !11023

middle.block3072:                                 ; preds = %vector.body3065
  %cmp.n3073 = icmp eq i64 %i.bvh, %n.vec3064
  br i1 %cmp.n3073, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i655, label %.lr.ph.i.i.i.i.i650.preheader3076

.lr.ph.i.i.i.i.i650.preheader3076:                ; preds = %.lr.ph.i.i.i.i.i650.preheader, %middle.block3072
  %.03.i.i.i.i.i651.ph = phi ptr [ %i.bvc, %.lr.ph.i.i.i.i.i650.preheader ], [ %i.bvj, %middle.block3072 ]
  %.092.i.i.i.i.i652.ph = phi ptr [ %.val.i.i646, %.lr.ph.i.i.i.i.i650.preheader ], [ %i.bvk, %middle.block3072 ]
  br label %.lr.ph.i.i.i.i.i650

.lr.ph.i.i.i.i.i650:                              ; preds = %.lr.ph.i.i.i.i.i650.preheader3076, %.lr.ph.i.i.i.i.i650
  %.03.i.i.i.i.i651 = phi ptr [ %i.bvq, %.lr.ph.i.i.i.i.i650 ], [ %.03.i.i.i.i.i651.ph, %.lr.ph.i.i.i.i.i650.preheader3076 ] ; 2 uses
  %.092.i.i.i.i.i652 = phi ptr [ %i.bvp, %.lr.ph.i.i.i.i.i650 ], [ %.092.i.i.i.i.i652.ph, %.lr.ph.i.i.i.i.i650.preheader3076 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11196)
  call void @llvm.experimental.noalias.scope.decl(metadata !11197)
  %.val.i.i.i.i.i.i.i.i.i.i653 = load i64, ptr %.092.i.i.i.i.i652, align 8, !tbaa !466, !alias.scope !11197
  store i64 %.val.i.i.i.i.i.i.i.i.i.i653, ptr %.03.i.i.i.i.i651, align 8, !tbaa !466, !alias.scope !11196
  store ptr null, ptr %.092.i.i.i.i.i652, align 8, !tbaa !466, !alias.scope !11197
  %i.bvp = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i652, i64 8 ; 2 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i651, i64 8 ; 2 uses
  %.not.i.i.i.i.i654 = icmp eq ptr %i.bvp, %i.bum
  br i1 %.not.i.i.i.i.i654, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i655, label %.lr.ph.i.i.i.i.i650, !llvm.loop !11024

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i655: ; preds = %.lr.ph.i.i.i.i.i650, %middle.block3072, %.noexc659
  %.0.lcssa.i.i.i.i.i656 = phi ptr [ %i.bvc, %.noexc659 ], [ %i.bvj, %middle.block3072 ], [ %i.bvq, %.lr.ph.i.i.i.i.i650 ]
  %i.bvr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i656, i64 8
  %.not.i28.i.i657 = icmp eq ptr %.val.i.i646, null
  br i1 %.not.i28.i.i657, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_12NotValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.ob

bb.ob:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i655
  %i.bvs = load ptr, ptr %i.bun, align 8, !tbaa !8351
  %i.bvt = ptrtoint ptr %i.bvs to i64
  %i.bvu = sub i64 %i.bvt, %i.bus
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i646, i64 noundef %i.bvu) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_12NotValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_12NotValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.ob, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i655
  store ptr %i.bvc, ptr %i.bue, align 8, !tbaa !8354
  store ptr %i.bvr, ptr %i.bul, align 8, !tbaa !8350
  %i.bvv = getelementptr inbounds nuw [8 x i8], ptr %i.bvc, i64 %i.bva
  store ptr %i.bvv, ptr %i.bun, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_112NotValidatorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_112NotValidatorESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.ny, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_12NotValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  br label %.critedge

bb.oc:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i647, %bb.oa
  %i.bvw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_112NotValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  br label %common.resume

.critedge:                                        ; preds = %bb.nu, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_112NotValidatorESt14default_deleteIS3_EED2Ev.exit, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_112RefValidatorESt14default_deleteIS3_EED2Ev.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.a, %_ZNK5folly7dynamic5emptyEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_122SchemaValidatorContextD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(64) dereferenceable(64) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !467 ; 2 uses
  %.not1.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not1.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i
  %.02.i.i.i.i = phi ptr [ %.0.val.i.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i ], [ %.val.i.i.i, %bb.a ] ; 4 uses
  %.0.val.i.i.i.i = load ptr, ptr %.02.i.i.i.i, align 8, !tbaa !458 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !462  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !428
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #47
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i.i.i, i64 noundef 56) #47
  %.not.i.i.i.i = icmp eq ptr %.0.val.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i, %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !449
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !450
  %i.l = shl i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !449  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.p = load i64, ptr %i.j, align 8, !tbaa !450
  %i.q = shl i64 %i.p, 3
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #47
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !438    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8354 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8350 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %.0.val.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !466 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.f = load ptr, ptr %.0.val.i.i.i.i.i, align 8, !tbaa !436
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %.0.val.i.i.i.i.i) #23, !call_target !8388, !inline_history !11198
  br label %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !364

_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i.i
  %.val.pr.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !8354
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %.val.i.i.i = phi ptr [ %.val.pr.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i2.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i2.i.i.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorEEclEPS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !8351
  %i.k = ptrtoint ptr %.val1.i.i.i to i64
  %i.l = ptrtoint ptr %.val.i.i.i to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.m) #47
  br label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorEEclEPS3_.exit

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorEEclEPS3_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #47
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8354 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8350 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %.0.val.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !466 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.e = load ptr, ptr %.0.val.i.i.i, align 8, !tbaa !436
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %.0.val.i.i.i) #23, !call_target !8388, !inline_history !365
  br label %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !364

_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSF_10_Hash_nodeISD_Lb1EEEm:bb.a

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.1.i.i = phi i64 [ %.032.i.i, %bb.j ], [ %i.t, %bb.i ], [ %i.t, %bb.h ]
  %.not.i.i = icmp eq ptr %.025.val.i.i, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !11230

._crit_edge.i.i:                                  ; preds = %bb.k, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !449   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !450
  %i.af = shl i64 %i.ae, 3
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #47
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit

bb.m:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i, %bb.g, %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = tail call ptr @__cxa_begin_catch(ptr %i.ah) #23 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !1721
  invoke void @__cxa_rethrow() #44
          to label %bb.q unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  resume { ptr, i32 } %i.aj

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #45
  unreachable

bb.q:                                             ; preds = %bb.m
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %._crit_edge.i.i, %bb.l
  store i64 %i.k, ptr %i.d, align 8, !tbaa !450
  store ptr %.0.i.i.i, ptr %0, align 8, !tbaa !449
  %i.am = urem i64 %2, %i.k
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit
  %i.an = phi ptr [ %.0.i.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %.pre, %._crit_edge ] ; 2 uses
  %.0 = phi i64 [ %i.am, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %._crit_edge ]
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %2, ptr %i.ao, align 8, !tbaa !460
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !457 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !458
  store ptr %i.ar, ptr %3, align 8, !tbaa !458
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !457
  store ptr %3, ptr %i.as, align 8, !tbaa !458
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSF_10_Hash_nodeISD_Lb1EEE.exit

bb.t:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !467
  store ptr %i.au, ptr %3, align 8, !tbaa !458
  store ptr %3, ptr %i.at, align 8, !tbaa !467
  %i.av = load ptr, ptr %3, align 8, !tbaa !458   ; 2 uses
  %.not11.i = icmp eq ptr %i.av, null
  br i1 %.not11.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val12.i = load i64, ptr %i.d, align 8, !tbaa !450
  %i.aw = getelementptr i8, ptr %i.av, i64 48
  %.val13.i = load i64, ptr %i.aw, align 8, !tbaa !460
  %i.ax = urem i64 %.val13.i, %.val12.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ax
  store ptr %3, ptr %i.ay, align 8, !tbaa !457
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !457
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSF_10_Hash_nodeISD_Lb1EEE.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSF_10_Hash_nodeISD_Lb1EEE.exit: ; preds = %bb.s, %bb.v
  %i.az = load i64, ptr %i.f, align 8, !tbaa !8339
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.f, align 8, !tbaa !8339
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr %.8.val) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %.8.val, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !462  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorEELb1EEEEE18_M_deallocate_nodeEPSG_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !428
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #47
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorEELb1EEEEE18_M_deallocate_nodeEPSG_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorEELb1EEEEE18_M_deallocate_nodeEPSG_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.8.val, i64 noundef 56) #47
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorEELb1EEEEE18_M_deallocate_nodeEPSG_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40), ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS0_INS3_12RefValidatorES5_ISB_EEEEERS7_DpOT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8350 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8351
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !8344
  store ptr null, ptr %1, align 8, !tbaa !8344
  store ptr %i.e, ptr %i.b, align 8, !tbaa !8353
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !8350
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %0, align 8, !tbaa !8354 ; 7 uses
  %i.g = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.h = ptrtoint ptr %.val.i to i64              ; 3 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775800
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 3                   ; 3 uses
  %i.l = icmp eq ptr %i.b, %.val.i                ; 2 uses
  %.sroa.speculated.i.i = select i1 %i.l, i64 1, i64 %i.k
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.k  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #46 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.i
  %i.t = load ptr, ptr %1, align 8, !tbaa !8344
  store ptr null, ptr %1, align 8, !tbaa !8344
  store ptr %i.t, ptr %i.s, align 8, !tbaa !8353
  br i1 %i.l, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.u = add i64 %i.g, -8
  %i.v = sub i64 %i.u, %i.h                       ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.r, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %.val.i, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ab ; 2 uses
  %next.gep1 = getelementptr i8, ptr %.val.i, i64 %i.ab ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11238)
  %i.ac = getelementptr i8, ptr %next.gep1, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep1, align 8, !tbaa !466, !alias.scope !11238
  %wide.load2 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !466, !alias.scope !11238
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !466, !alias.scope !11237
  store <2 x i64> %wide.load2, ptr %i.ad, align 8, !tbaa !466, !alias.scope !11237
  store <2 x ptr> splat (ptr null), ptr %next.gep1, align 8, !tbaa !466, !alias.scope !11238
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !466, !alias.scope !11238
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !11235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i, label %.lr.ph.i.i.i.i.preheader4

.lr.ph.i.i.i.i.preheader4:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.092.i.i.i.i.ph = phi ptr [ %.val.i, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader4, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.03.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader4 ] ; 2 uses
  %.092.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader4 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11238)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i, align 8, !tbaa !466, !alias.scope !11238
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i, align 8, !tbaa !466, !alias.scope !11237
  store ptr null, ptr %.092.i.i.i.i, align 8, !tbaa !466, !alias.scope !11238
  %i.af = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i, label %.lr.ph.i.i.i.i, !llvm.loop !11236

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i ], [ %i.z, %middle.block ], [ %i.ag, %.lr.ph.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i28.i = icmp eq ptr %.val.i, null
  br i1 %.not.i28.i, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_12RefValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !8351
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.ak) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_12RefValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_12RefValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i, %bb.e
  store ptr %i.r, ptr %0, align 8, !tbaa !8354
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !8350
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.al, ptr %i.c, align 8, !tbaa !8351
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_12RefValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_110replaceAllERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5RangeIPKcEESC_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr %3, ptr %4) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = icmp eq ptr %2, %1
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !456  ; 3 uses
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit.us, label %.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit.us: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.us
  %i.j = phi i64 [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.us ], [ %i.i, %bb.a ] ; 3 uses
  %.0.us25 = phi i64 [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.us ], [ 0, %bb.a ] ; 6 uses
  %.not.us = icmp eq i64 %.0.us25, -1
  br i1 %.not.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit.us
  %i.k = icmp ugt i64 %.0.us25, %i.j
  br i1 %i.k, label %.split20.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.us: ; preds = %bb.b
  %i.l = sub nuw i64 %i.j, %.0.us25
  %spec.select.i.i.us = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %i.l)
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0.us25, i64 noundef %spec.select.i.i.us, ptr noundef %3, i64 noundef %i.h) ; 0 uses
  %i.n = add i64 %.0.us25, %i.h                   ; 2 uses
  %i.o = load i64, ptr %i.d, align 8, !tbaa !456  ; 2 uses
  %.not35.i.us = icmp ugt i64 %i.n, %i.o
  br i1 %.not35.i.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit.us, !llvm.loop !11239

.split:                                           ; preds = %bb.a
  %.not.i22.not = icmp eq i64 %i.i, 0
  br i1 %.not.i22.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.split
  %invariant.op = sub i64 1, %i.c
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit
  %i.p = phi i64 [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit ], [ %i.i, %.lr.ph.preheader ] ; 5 uses
  %.023 = phi i64 [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !462    ; 3 uses
  %i.r = sub nuw i64 %i.p, %.023                  ; 2 uses
  %.not3339.i = icmp ult i64 %i.r, %i.c
  br i1 %.not3339.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.023
  %i.u = load i8, ptr %1, align 1, !tbaa !428
  %i.v = sext i8 %i.u to i32
  %i.w = ptrtoint ptr %i.s to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.041.i = phi i64 [ %i.r, %.lr.ph.i ], [ %i.af, %bb.d ]
  %.02740.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.ad, %bb.d ]
  %.reass.reass.i.reass.reass.reass = add i64 %.041.i, %invariant.op ; 2 uses
  %i.x = icmp eq i64 %.reass.reass.i.reass.reass.reass, 0
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.c
  %i.y = tail call ptr @memchr(ptr noundef %.02740.i, i32 noundef %i.v, i64 noundef %.reass.reass.i.reass.reass.reass) #23 ; 4 uses
  %.not34.i = icmp eq ptr %i.y, null
  br i1 %.not34.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.y, ptr nonnull %1, i64 %i.c)
  %i.z = icmp eq i32 %bcmp.i, 0
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit, label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.q to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 6 uses
  %.not = icmp eq i64 %i.ac, -1
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit.thread, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.w, %i.ae                     ; 2 uses
  %.not33.i = icmp ult i64 %i.af, %i.c
  br i1 %.not33.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit.thread, label %bb.c, !llvm.loop !11240

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit
  %i.ag = icmp ugt i64 %i.ac, %i.p
  br i1 %i.ag, label %.split20.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit

.split20.us:                                      ; preds = %bb.e, %bb.b
  %.us-phi = phi i64 [ %.0.us25, %bb.b ], [ %i.ac, %bb.e ]
  %.us-phi21 = phi i64 [ %i.j, %bb.b ], [ %i.p, %bb.e ]
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, i64 noundef %.us-phi, i64 noundef %.us-phi21) #44
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit: ; preds = %bb.e
  %i.ah = sub nuw i64 %i.p, %i.ac
  %spec.select.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %i.ah)
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ac, i64 noundef %spec.select.i.i, ptr noundef %3, i64 noundef %i.h) ; 0 uses
  %i.aj = add i64 %i.ac, %i.h                     ; 2 uses
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !456 ; 2 uses
  %.not.i = icmp ult i64 %i.aj, %i.ak
  br i1 %.not.i, label %.lr.ph, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit.thread, !llvm.loop !11239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit.thread: ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit, %bb.d, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm.exit.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm.exit.us, %.split
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly2toImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #26 comdat {
bb.a:
  %1 = alloca %"class.folly::Range", align 8      ; 7 uses
  %2 = alloca %"class.folly::Range", align 8      ; 5 uses
  %3 = alloca %"class.folly::Expected", align 8   ; 6 uses
  %4 = alloca %class.anon.527, align 8            ; 5 uses
  %5 = alloca %class.anon.530, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !462    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !456
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.a, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.d, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11250)
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !11249
  store ptr %i.a, ptr %1, align 8, !noalias !11251
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.f, align 8, !noalias !11251
  %i.g = call { i64, i64 } @_ZN5folly6detail15str_to_integralImEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %1) #23, !noalias !11251 ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11252)
  call void @llvm.experimental.noalias.scope.decl(metadata !11253)
  %i.i = and i64 %i.h, 255
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.d, !prof !643

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !8345, !noalias !11254 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !8345, !noalias !11254 ; 3 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %3, align 8, !alias.scope !11254
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !11254
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.k, align 8, !alias.scope !11254
end_hunk_3
begin_hunk_4_@_ZN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorD0Ev:bb.a

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %.0.val.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !466 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.e = load ptr, ptr %.0.val.i.i.i.i, align 8, !tbaa !436
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %.0.val.i.i.i.i) #23, !call_target !8388, !inline_history !12237
  br label %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !364

_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.val.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !8354
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %.val.i.i = phi ptr [ %.val.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i2.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i2.i.i, label %_ZN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.i, align 8, !tbaa !8351
  %i.j = ptrtoint ptr %.val1.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.l) #47
  br label %_ZN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorD2Ev.exit

_ZN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #47
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK5folly10jsonschema12_GLOBAL__N_114AllOfValidator8validateERNS1_17ValidationContextERKNS_7dynamicE(ptr dead_on_unwind noalias writable sret(%"class.folly::Optional") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !9917 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11 = load ptr, ptr %i.b, align 8, !tbaa !9917 ; 2 uses
  %i.c = icmp eq ptr %.val, %.val11
  br i1 %i.c, label %._crit_edge, label %_ZN5folly6detail15OptionalStorageINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit.lr.ph

_ZN5folly6detail15OptionalStorageINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit.lr.ph: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN5folly6detail15OptionalStorageINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit

bb.b:                                             ; preds = %_ZN5folly6detail15OptionalStorageINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.017.019, i64 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, %.val11
  br i1 %i.f, label %._crit_edge, label %_ZN5folly6detail15OptionalStorageINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit

_ZN5folly6detail15OptionalStorageINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit: ; preds = %_ZN5folly6detail15OptionalStorageINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit.lr.ph, %bb.b
  %.sroa.017.019 = phi ptr [ %.val, %_ZN5folly6detail15OptionalStorageINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %.val15 = load ptr, ptr %.sroa.017.019, align 8, !tbaa !466
  tail call fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_117ValidationContext8validateEPNS1_10IValidatorERKNS_7dynamicE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %.val15, ptr noundef nonnull align 8 dereferenceable(40) %3)
  %.val16 = load i8, ptr %i.d, align 8, !tbaa !9920, !range !629, !noundef !530
  %i.g = trunc nuw i8 %.val16 to i1
  br i1 %i.g, label %.critedge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.h, align 8, !tbaa !9921
  br label %.critedge

.critedge:                                        ; preds = %_ZN5folly6detail15OptionalStorageINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorC2ERNS1_22SchemaValidatorContextERKNS_7dynamicENS2_4TypeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 12), (16, 40)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, i32 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.288", align 8 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorE, i64 16), ptr %0, align 8, !tbaa !436
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.a, align 8, !tbaa !10425
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = load i32, ptr %2, align 8, !tbaa !8338
  %.not.i.i.i = icmp eq i32 %i.c, 1
  br i1 %.not.i.i.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !440  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !440  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit
  %.sroa.023.027 = phi ptr [ %i.e, %.lr.ph ], [ %i.az, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12251)
  %i.k = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %.noexc17 unwind label %bb.i   ; 6 uses

.noexc17:                                         ; preds = %bb.c
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 72)>, ptr %i.k, align 8, !tbaa !436, !noalias !12251
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false), !noalias !12251
  store ptr %i.k, ptr %4, align 8, !tbaa !438, !alias.scope !12251
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.023.027)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit unwind label %bb.d, !noalias !12252, !inline_history !12242

bb.d:                                             ; preds = %.noexc17
  %i.m = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23, !inline_history !12242
  br label %bb.j

_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit: ; preds = %.noexc17
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !8350 ; 6 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !8351
  %.not.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit
  store ptr %i.k, ptr %i.n, align 8, !tbaa !8353
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.p, ptr %i.i, align 8, !tbaa !8350
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit

bb.f:                                             ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit
  %.val.i.i = load ptr, ptr %i.b, align 8, !tbaa !8354 ; 10 uses
  %i.q = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.r = ptrtoint ptr %.val.i.i to i64            ; 3 uses
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #44
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %i.v = icmp eq ptr %i.n, %.val.i.i              ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.v, i64 1, i64 %i.u
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.u
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i18 = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i18)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #46
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.s
  store ptr %i.k, ptr %i.ac, align 8, !tbaa !8353
  br i1 %i.v, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc20
  %i.ad = add i64 %i.q, -8
  %i.ae = sub i64 %i.ad, %i.r                     ; 3 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader39, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ah = and i64 %i.ae, -8
  %i.ai = add i64 %i.ah, 8                        ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ab, i64 %i.ai
  %i.ak = getelementptr i8, ptr %.val.i.i, i64 %i.ai
  %bound0 = icmp ult ptr %i.ab, %i.ak
  %bound1 = icmp ult ptr %.val.i.i, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.ab, i64 %i.al  ; 2 uses
  %i.an = getelementptr i8, ptr %.val.i.i, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ao ; 2 uses
  %next.gep36 = getelementptr i8, ptr %.val.i.i, i64 %i.ao ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12254)
  %i.ap = getelementptr i8, ptr %next.gep36, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !466, !alias.scope !12255
  %wide.load37 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !466, !alias.scope !12255
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !466, !alias.scope !12256, !noalias !12257
  store <2 x i64> %wide.load37, ptr %i.aq, align 8, !tbaa !466, !alias.scope !12256, !noalias !12257
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !466, !alias.scope !12255
  store <2 x ptr> splat (ptr null), ptr %i.ap, align 8, !tbaa !466, !alias.scope !12255
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !12249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i, label %.lr.ph.i.i.i.i.i.preheader39

.lr.ph.i.i.i.i.i.preheader39:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.ph = phi ptr [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.092.i.i.i.i.i.ph = phi ptr [ %.val.i.i, %vector.memcheck ], [ %.val.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader39, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.03.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader39 ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader39 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12254)
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i, align 8, !tbaa !466, !alias.scope !12254
  store i64 %.val.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i, align 8, !tbaa !466, !alias.scope !12253
  store ptr null, ptr %.092.i.i.i.i.i, align 8, !tbaa !466, !alias.scope !12254
  %i.as = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !12250

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc20
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ab, %.noexc20 ], [ %i.am, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i28.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i28.i.i, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !8351
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.ax) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit27.i.i
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !8354
  store ptr %i.au, ptr %i.i, align 8, !tbaa !8350
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.ay, ptr %i.j, align 8, !tbaa !8351
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS0_INS3_15SchemaValidatorES5_ISB_EEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.023.027, i64 40 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.g
  br i1 %i.ba, label %.loopexit, label %bb.c

bb.i:                                             ; preds = %bb.c
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i, %bb.g
  %lpad.loopexit.split-lp40 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp40, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bb, %bb.i ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  tail call fastcc void @_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #23
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8354 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8350 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %.0.val.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !466 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.e = load ptr, ptr %.0.val.i.i.i, align 8, !tbaa !436
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %.0.val.i.i.i) #23, !call_target !8388, !inline_history !365
  br label %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !364

_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.val.pr.i = load ptr, ptr %i.a, align 8, !tbaa !8354
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %.val.i = phi ptr [ %.val.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i2.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.i, align 8, !tbaa !8351
  %i.j = ptrtoint ptr %.val1.i to i64
  %i.k = ptrtoint ptr %.val.i to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.l) #47
  br label %_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8354 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8350 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %.0.val.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !466 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.e = load ptr, ptr %.0.val.i.i.i.i, align 8, !tbaa !436
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %.0.val.i.i.i.i) #23, !call_target !8388, !inline_history !12258
  br label %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !364

_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.val.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !8354
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %.val.i.i = phi ptr [ %.val.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i2.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i2.i.i, label %_ZN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i = load ptr, ptr %i.i, align 8, !tbaa !8351
  %i.j = ptrtoint ptr %.val1.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.l) #47
  br label %_ZN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorD2Ev.exit

_ZN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #47
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK5folly10jsonschema12_GLOBAL__N_114AnyOfValidator8validateERNS1_17ValidationContextERKNS_7dynamicE(ptr dead_on_unwind noalias writable sret(%"class.folly::Optional") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.folly::jsonschema::(anonymous namespace)::SchemaError", align 8 ; 5 uses
  %5 = alloca %"struct.folly::jsonschema::(anonymous namespace)::SchemaError", align 8 ; 5 uses
  %6 = alloca %"class.std::vector.858", align 8   ; 12 uses
  %7 = alloca %"class.folly::Optional", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !9917 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val16 = load ptr, ptr %i.b, align 8, !tbaa !9917 ; 2 uses
  %i.c = icmp eq ptr %.val, %.val16
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZN5folly6detail15OptionalStorageINS_10jsonschema12_GLOBAL__N_111SchemaErrorEED2Ev.exit29
  %.val22.pre = load ptr, ptr %i.a, align 8, !tbaa !8354
  %.val23.pre = load ptr, ptr %i.b, align 8, !tbaa !8350
  br label %._crit_edge
end_hunk_4
