Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/symbol_table?download=true
inline.NumInlined: 2078
inline.NumDeleted: 925
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS7_:bb.a
_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread15.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISL_Lb1EEE.exit.i, %.preheader.split.i
  %i.v = load ptr, ptr %.017.i, align 8, !tbaa !55 ; 2 uses
  %.not14.i = icmp eq ptr %i.v, null
  br i1 %.not14.i, label %.critedge, label %.preheader.split.i, !llvm.loop !300

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISL_Lb1EEE.exit.i, %bb.c, %.preheader.split.us.i
  %i.w = phi ptr [ %i.o, %bb.c ], [ %i.d, %.preheader.split.us.i ], [ %.017.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISL_Lb1EEE.exit.i ] ; 2 uses
  %.1.i = phi ptr [ %.017.us19.i, %bb.c ], [ %i.c, %.preheader.split.us.i ], [ %.01116.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISL_Lb1EEE.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !121  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !61
  %i.ab = urem i64 %i.aa, %i.y                    ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !120   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ab
  %.pre49 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !59
  br label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit

bb.d:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %1, align 8, !tbaa !98
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !99
  %i.af = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.ac, i64 noundef %i.ae, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.e ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #28
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !121 ; 5 uses
  %i.ak = urem i64 %i.af, %i.aj                   ; 5 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !120   ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !59 ; 6 uses
  %.not.i24 = icmp eq ptr %i.an, null
  br i1 %.not.i24, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !55 ; 3 uses
  %i.ap = load i64, ptr %i.ad, align 8
  %.fr22.i = freeze i64 %i.ap                     ; 3 uses
  %i.aq = icmp eq i64 %.fr22.i, 0
  %i.ar = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %.pre26.i = load i64, ptr %.phi.trans.insert25.i, align 8, !tbaa !61 ; 2 uses
  br i1 %i.aq, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.f, %bb.h
  %i.as = phi i64 [ %i.az, %bb.h ], [ %.pre26.i, %bb.f ]
  %.015.us.i = phi ptr [ %.0.us.i, %bb.h ], [ %i.an, %bb.f ]
  %.0.us.i = phi ptr [ %i.ax, %bb.h ], [ %i.ao, %bb.f ] ; 4 uses
  %i.at = icmp eq i64 %i.af, %i.as
  br i1 %i.at, label %bb.g, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread.us.i

bb.g:                                             ; preds = %.split.us.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0.us.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !99
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread.us.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread.us.i: ; preds = %bb.g, %.split.us.i
  %i.ax = load ptr, ptr %.0.us.i, align 8, !tbaa !55 ; 3 uses
  %.not18.us.i = icmp eq ptr %i.ax, null
  br i1 %.not18.us.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread.us.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !61 ; 2 uses
  %i.ba = urem i64 %i.az, %i.aj
  %.not19.us.i = icmp eq i64 %i.ba, %i.ak
  br i1 %.not19.us.i, label %.split.us.i, label %.critedge, !llvm.loop !16

.split.i:                                         ; preds = %bb.f, %bb.j
  %i.bb = phi i64 [ %i.bl, %bb.j ], [ %.pre26.i, %bb.f ]
  %.015.i = phi ptr [ %.0.i, %bb.j ], [ %i.an, %bb.f ]
  %.0.i = phi ptr [ %i.bj, %bb.j ], [ %i.ao, %bb.f ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bd = icmp eq i64 %i.af, %i.bb
  br i1 %i.bd, label %bb.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread.i

bb.i:                                             ; preds = %.split.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !99
  %i.bg = icmp eq i64 %.fr22.i, %i.bf
  br i1 %i.bg, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.i: ; preds = %bb.i
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !98
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ar, ptr %i.bh, i64 %.fr22.i)
  %i.bi = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.bi, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.i, %bb.i, %.split.i
  %i.bj = load ptr, ptr %.0.i, align 8, !tbaa !55 ; 3 uses
  %.not18.i = icmp eq ptr %i.bj, null
  br i1 %.not18.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !61 ; 2 uses
  %i.bm = urem i64 %i.bl, %i.aj
  %.not19.i = icmp eq i64 %i.bm, %i.ak
  br i1 %.not19.i, label %.split.i, label %.critedge, !llvm.loop !16

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.i, %bb.g, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit
  %i.bn = phi i64 [ %i.y, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %i.aj, %bb.g ], [ %i.aj, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.i ] ; 2 uses
  %i.bo = phi ptr [ %.pre49, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %i.an, %bb.g ], [ %i.an, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.i ] ; 3 uses
  %i.bp = phi ptr [ %.pre, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %i.al, %bb.g ], [ %i.al, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.i ] ; 3 uses
  %.020 = phi ptr [ %.1.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %.015.us.i, %bb.g ], [ %.015.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.i ] ; 3 uses
  %.119 = phi ptr [ %i.w, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %.0.us.i, %bb.g ], [ %.0.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.i ] ; 5 uses
  %.017 = phi i64 [ %i.ab, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit ], [ %i.ak, %bb.g ], [ %i.ak, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.017
  %i.br = icmp eq ptr %.020, %i.bo
  %i.bs = load ptr, ptr %.119, align 8, !tbaa !55 ; 4 uses
  %.not18.i26 = icmp eq ptr %i.bs, null           ; 2 uses
  br i1 %i.br, label %bb.k, label %bb.p

bb.k:                                             ; preds = %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit
  br i1 %.not18.i26, label %._crit_edge.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !61
  %i.bv = urem i64 %i.bu, %i.bn                   ; 2 uses
  %.not9.i.i = icmp eq i64 %i.bv, %.017
  br i1 %.not9.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSM_10_Hash_nodeISK_Lb1EEEm.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bv
  store ptr %i.bo, ptr %i.bw, align 8, !tbaa !59
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bo
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  store ptr %i.bs, ptr %i.bx, align 8, !tbaa !128
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i
  store ptr null, ptr %i.bq, align 8, !tbaa !59
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSM_10_Hash_nodeISK_Lb1EEEm.exit.i

bb.p:                                             ; preds = %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit
  br i1 %.not18.i26, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSM_10_Hash_nodeISK_Lb1EEEm.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !61
  %i.cb = urem i64 %i.ca, %i.bn                   ; 2 uses
  %.not17.i = icmp eq i64 %i.cb, %.017
  br i1 %.not17.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSM_10_Hash_nodeISK_Lb1EEEm.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cb
  store ptr %.020, ptr %i.cc, align 8, !tbaa !59
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSM_10_Hash_nodeISK_Lb1EEEm.exit.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSM_10_Hash_nodeISK_Lb1EEEm.exit.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.l
  %i.cd = load ptr, ptr %.119, align 8, !tbaa !55
  store ptr %i.cd, ptr %.020, align 8, !tbaa !55
  %i.ce = getelementptr inbounds nuw i8, ptr %.119, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !98 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.119, i64 24 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSM_15_Hash_node_baseEPNSM_10_Hash_nodeISK_Lb1EEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSM_10_Hash_nodeISK_Lb1EEEm.exit.i
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !71
  %i.cj = add i64 %i.ci, 1
  tail call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #24
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSM_15_Hash_node_baseEPNSM_10_Hash_nodeISK_Lb1EEE.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSM_15_Hash_node_baseEPNSM_10_Hash_nodeISK_Lb1EEE.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSM_10_Hash_nodeISK_Lb1EEEm.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.119, i64 noundef 56) #24
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !207
  %i.cl = add i64 %i.ck, -1
  store i64 %i.cl, ptr %i.a, align 8, !tbaa !207
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread15.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread15.us.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread.i, %bb.j, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread.us.i, %bb.h, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSM_15_Hash_node_baseEPNSM_10_Hash_nodeISK_Lb1EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4cvc57context11CDOhash_mapIS5_S6_ISt6vectorINS8_4SortESaISC_EESC_ESt4hashIS5_EEEESaISK_ENSt8__detail10_Select1stESt8equal_toIS5_ESH_NSM_18_Mod_range_hashingENSM_20_Default_ranged_hashENSM_20_Prime_rehash_policyENSM_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSM_15_Hash_node_baseEPNSM_10_Hash_nodeISK_Lb1EEE.exit ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread.i ], [ 0, %bb.b ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread.us.i ], [ 0, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread15.us.i ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4cvc57context11CDOhash_mapIS6_S7_ISt6vectorINS9_4SortESaISD_EESD_ESt4hashIS6_EEEENS_10_Select1stESt8equal_toIS6_ESI_NS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISL_Lb1EEE.exit.thread15.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4cvc54SortESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !77     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.i = load ptr, ptr %0, align 8, !tbaa !77     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN4cvc54SortESaIS1_EE11_M_allocateEm.exit.i, !prof !84

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt12_Vector_baseIN4cvc54SortESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4cvc54SortESaIS1_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN4cvc54SortEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructIN4cvc54SortEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN4cvc54SortESaIS1_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN4cvc54SortEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN4cvc54SortESaIS1_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.q = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !73
  store <2 x ptr> %i.q, ptr %.09.i.i.i.i.i, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !70   ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4cvc54SortEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.u, align 4, !tbaa !72
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !72
  br label %_ZSt10_ConstructIN4cvc54SortEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN4cvc54SortEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN4cvc54SortEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4cvc54SortESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZNSt6vectorIN4cvc54SortESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZSt10_ConstructIN4cvc54SortEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !77    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4cvc54SortEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN4cvc54SortESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.ab, %_ZNSt6vectorIN4cvc54SortESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit ] ; 2 uses
  tail call void @_ZN4cvc54SortD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN4cvc54SortEEvT_S3_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4cvc54SortEEvT_S3_.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPN4cvc54SortEEvT_S3_.exit

_ZSt8_DestroyIPN4cvc54SortEEvT_S3_.exit:          ; preds = %_ZSt8_DestroyIPN4cvc54SortEEvT_S3_.exitthread-pre-split, %_ZNSt6vectorIN4cvc54SortESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.af = phi ptr [ %.pr, %_ZSt8_DestroyIPN4cvc54SortEEvT_S3_.exitthread-pre-split ], [ %i.ab, %_ZNSt6vectorIN4cvc54SortESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4cvc54SortESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN4cvc54SortEEvT_S3_.exit
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt12_Vector_baseIN4cvc54SortESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4cvc54SortESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN4cvc54SortEEvT_S3_.exit, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !77
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ak, ptr %i.g, align 8, !tbaa !85
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4cvc54SortESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

bb.i:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !76 ; 3 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ao, %i.f
  br i1 %.not24, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp sgt i64 %i.f, 0
  br i1 %i.ap, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc54SortESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.j
  %i.aq = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %_ZN4cvc54SortaSERKS0_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bt, %_ZN4cvc54SortaSERKS0_.exit.i.i.i.i.i ], [ %i.aq, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bs, %_ZN4cvc54SortaSERKS0_.exit.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.br, %_ZN4cvc54SortaSERKS0_.exit.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.ar = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !73
  store <2 x ptr> %i.ar, ptr %.0811.i.i.i.i.i, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !70 ; 4 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4cvc54SortaSERKS0_.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i27, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !72
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !72
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ba = atomicrmw volatile add ptr %i.aw, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !70
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.k
  %i.bb = phi ptr [ %i.av, %bb.k ], [ %i.av, %bb.m ], [ %.pr.pre.i.i.i.i.i.i.i.i.i, %bb.n ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bc, align 8, !tbaa !80
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.bg, align 4, !tbaa !81
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !83
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #22, !inline_history !301
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !83
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #22, !inline_history !301
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i9.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 8, !tbaa !72
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bf, %bb.r ], [ %i.bp, %bb.s ]
  %i.bq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bq, label %bb.t, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, !prof !84

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.p, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.au, ptr %i.as, align 8, !tbaa !70
  br label %_ZN4cvc54SortaSERKS0_.exit.i.i.i.i.i

_ZN4cvc54SortaSERKS0_.exit.i.i.i.i.i:             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i26
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 3 uses
  %i.bt = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bu = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc54SortESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit, !llvm.loop !302

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc54SortESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit: ; preds = %_ZN4cvc54SortaSERKS0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.al, align 8, !tbaa !86
  %.pre61 = ptrtoint ptr %i.bs to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc54SortESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc54SortESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc54SortESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit, %bb.j
  %.pre-phi62 = phi i64 [ %.pre61, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc54SortESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit ], [ %i.k, %bb.j ]
  %i.bv = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc54SortESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit ], [ %i.am, %bb.j ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.bs, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc54SortESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit ], [ %i.i, %bb.j ]
  %.not4.i.i28 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.bv
  br i1 %.not4.i.i28, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4cvc54SortESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc54SortESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit
  %i.bw = sub i64 %.pre-phi62, %i.k
  %i.bx = getelementptr inbounds i8, ptr %i.i, i64 %i.bw
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.preheader, %.lr.ph.i.i29
  %.sroa.01.05.i.i = phi ptr [ %i.by, %.lr.ph.i.i29 ], [ %i.bx, %.lr.ph.i.i29.preheader ] ; 2 uses
  tail call void @_ZN4cvc54SortD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.sroa.01.05.i.i) #22
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 24 ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.by, %i.bv
  br i1 %.not.i.i30, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4cvc54SortESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i29, !llvm.loop !303

bb.u:                                             ; preds = %bb.i
  %i.bz = icmp sgt i64 %i.ao, 0
  br i1 %i.bz, label %.lr.ph.preheader.i.i.i.i.i32, label %_ZSt4copyIPN4cvc54SortES2_ET0_T_S4_S3_.exit

.lr.ph.preheader.i.i.i.i.i32:                     ; preds = %bb.u
  %i.ca = udiv exact i64 %i.ao, 24
  br label %.lr.ph.i.i.i.i.i33

.lr.ph.i.i.i.i.i33:                               ; preds = %_ZN4cvc54SortaSERKS0_.exit.i.i.i.i.i46, %.lr.ph.preheader.i.i.i.i.i32
  %.012.i.i.i.i.i34 = phi i64 [ %i.dd, %_ZN4cvc54SortaSERKS0_.exit.i.i.i.i.i46 ], [ %i.ca, %.lr.ph.preheader.i.i.i.i.i32 ] ; 2 uses
  %.0811.i.i.i.i.i35 = phi ptr [ %i.dc, %_ZN4cvc54SortaSERKS0_.exit.i.i.i.i.i46 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i32 ] ; 3 uses
  %.0910.i.i.i.i.i36 = phi ptr [ %i.db, %_ZN4cvc54SortaSERKS0_.exit.i.i.i.i.i46 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i32 ] ; 3 uses
  %i.cb = load <2 x ptr>, ptr %.0910.i.i.i.i.i36, align 8, !tbaa !73
  store <2 x ptr> %i.cb, ptr %.0811.i.i.i.i.i35, align 8, !tbaa !73
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i35, i64 16 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i36, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !70 ; 4 uses
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i37 = icmp eq ptr %i.ce, %i.cf
  br i1 %.not.i.i.i.i.i.i.i.i.i37, label %_ZN4cvc54SortaSERKS0_.exit.i.i.i.i.i46, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i33
  %.not7.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.ce, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i38, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i40, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i.i.i.i.i.i.i39 = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i39, label %bb.y, label %bb.x
end_hunk_0
