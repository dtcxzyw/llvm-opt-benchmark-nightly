inline.NumInlined: 1376
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5vcpkg22CiFeatureBaselineEntryEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_:bb.a
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.av, i64 %.fr22.i.i)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5vcpkg22CiFeatureBaselineEntryEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !101 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5vcpkg22CiFeatureBaselineEntryEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 368
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !277 ; 2 uses
  %i.ba = urem i64 %i.az, %i.x
  %.not19.i.i = icmp eq i64 %i.ba, %i.y
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5vcpkg22CiFeatureBaselineEntryEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !279

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5vcpkg22CiFeatureBaselineEntryEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISB_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N5vcpkg22CiFeatureBaselineEntryEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISB_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSt16__is_permutationIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESD_NS0_5__ops19_Iter_equal_to_iterEEbT_SG_T0_SH_T1_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ptrtoint ptr %3 to i64
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.d, %i.e
  %.not = icmp eq i64 %i.c, %i.f
  br i1 %.not, label %.preheader67, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread

.preheader67:                                     ; preds = %bb.a
  %i.g = icmp ne ptr %0, %1
  %i.h = icmp ne ptr %2, %3
  %or.cond69 = and i1 %i.g, %i.h
  br i1 %or.cond69, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader67, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread
  %.sroa.054.071 = phi ptr [ %i.r, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread ], [ %0, %.preheader67 ] ; 5 uses
  %.sroa.049.070 = phi ptr [ %i.s, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread ], [ %2, %.preheader67 ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.054.071, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !85   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.049.070, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !85
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit: ; preds = %bb.b
  %i.o = load ptr, ptr %.sroa.049.070, align 8, !tbaa !36
  %i.p = load ptr, ptr %.sroa.054.071, align 8, !tbaa !36
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.j)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread, label %.critedge

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread: ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.054.071, i64 32 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.049.070, i64 32 ; 3 uses
  %i.t = icmp ne ptr %i.r, %1
  %i.u = icmp ne ptr %i.s, %3
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !336

.critedge:                                        ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread, %.lr.ph, %.preheader67
  %.sroa.049.0.lcssa = phi ptr [ %2, %.preheader67 ], [ %.sroa.049.070, %.lr.ph ], [ %i.s, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread ], [ %.sroa.049.070, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit ] ; 3 uses
  %.sroa.054.0.lcssa = phi ptr [ %0, %.preheader67 ], [ %.sroa.054.071, %.lr.ph ], [ %i.r, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit.thread ], [ %.sroa.054.071, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESF_EEbT_T0_.exit ] ; 9 uses
  %i.v = icmp eq ptr %.sroa.054.0.lcssa, %1
  br i1 %i.v, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread, label %.preheader

.preheader:                                       ; preds = %.critedge
  %.not8.i = icmp eq ptr %.sroa.049.0.lcssa, %3
  %.not8.i.fr = freeze i1 %.not8.i
  br i1 %.not8.i.fr, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.w = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %.sroa.054.0.lcssa, ptr %.sroa.054.0.lcssa, ptr %.sroa.054.0.lcssa)
  %.not66.us85 = icmp eq ptr %.sroa.054.0.lcssa, %i.w
  br i1 %.not66.us85, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread, label %.critedge31.us

bb.c:                                             ; preds = %.critedge31.us
  %i.x = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %.sroa.054.0.lcssa, ptr nonnull %i.y, ptr nonnull %i.y)
  %.not66.us = icmp eq ptr %i.y, %i.x
  br i1 %.not66.us, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread, label %.critedge31.us, !llvm.loop !337

.critedge31.us:                                   ; preds = %.preheader.split.us, %bb.c
  %.sroa.045.080.us86 = phi ptr [ %i.y, %bb.c ], [ %.sroa.054.0.lcssa, %.preheader.split.us ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.045.080.us86, i64 32 ; 5 uses
  %.not65.us = icmp eq ptr %i.y, %1               ; 3 uses
  br i1 %.not65.us, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread, label %bb.c, !llvm.loop !337

.preheader.split:                                 ; preds = %.preheader, %.critedge31
  %.sroa.045.080 = phi ptr [ %i.bh, %.critedge31 ], [ %.sroa.054.0.lcssa, %.preheader ] ; 9 uses
  %i.z = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %.sroa.054.0.lcssa, ptr %.sroa.045.080, ptr %.sroa.045.080)
  %.not66 = icmp eq ptr %.sroa.045.080, %i.z
  br i1 %.not66, label %.lr.ph.i, label %.critedge31

.lr.ph.i:                                         ; preds = %.preheader.split
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.045.080, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !85
  %.fr89 = freeze i64 %i.ab                       ; 5 uses
  %i.ac = icmp eq i64 %.fr89, 0
  br i1 %i.ac, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.lr.ph.i.split.us
  %.010.i.us = phi i64 [ %spec.select, %.lr.ph.i.split.us ], [ 0, %.lr.ph.i ]
  %.sroa.03.09.i.us = phi ptr [ %i.ah, %.lr.ph.i.split.us ], [ %.sroa.049.0.lcssa, %.lr.ph.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.us, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !85
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = zext i1 %i.af to i64
  %spec.select = add nuw nsw i64 %.010.i.us, %i.ag ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.us, i64 32 ; 2 uses
  %.not.i.us = icmp eq ptr %i.ah, %3
  br i1 %.not.i.us, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread105, label %.lr.ph.i.split.us, !llvm.loop !338

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i
  %.010.i = phi i64 [ %i.ap, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.03.09.i = phi ptr [ %i.aq, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i ], [ %.sroa.049.0.lcssa, %.lr.ph.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !85
  %i.ak = icmp eq i64 %i.aj, %.fr89
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i: ; preds = %.lr.ph.i.split
  %i.al = load ptr, ptr %.sroa.045.080, align 8, !tbaa !36
  %i.am = load ptr, ptr %.sroa.03.09.i, align 8, !tbaa !36
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.am, ptr %i.al, i64 %.fr89)
  %bcmp.i.i.fr.i = freeze i32 %bcmp.i.i.i
  %i.an = icmp eq i32 %bcmp.i.i.fr.i, 0
  %i.ao = zext i1 %i.an to i64
  %spec.select.i = add nsw i64 %.010.i, %i.ao
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i, %.lr.ph.i.split
  %i.ap = phi i64 [ %.010.i, %.lr.ph.i.split ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %3
  br i1 %.not.i, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit, label %.lr.ph.i.split, !llvm.loop !338

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i
  %i.ar = icmp eq i64 %i.ap, 0
  br i1 %i.ar, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread, label %.lr.ph.i33.split

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread105: ; preds = %.lr.ph.i.split.us
  %i.as = icmp eq i64 %spec.select, 0
  br i1 %i.as, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread, label %.lr.ph.i33.split.us

.lr.ph.i33.split.us:                              ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread105, %.lr.ph.i33.split.us
  %.010.i34.us = phi i64 [ %spec.select88, %.lr.ph.i33.split.us ], [ 0, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread105 ]
  %.sroa.03.09.i35.us = phi ptr [ %i.ax, %.lr.ph.i33.split.us ], [ %.sroa.045.080, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread105 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i35.us, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !85
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = zext i1 %i.av to i64
  %spec.select88 = add nuw nsw i64 %.010.i34.us, %i.aw ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i35.us, i64 32 ; 2 uses
  %.not.i37.us = icmp eq ptr %i.ax, %1
  br i1 %.not.i37.us, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit44, label %.lr.ph.i33.split.us, !llvm.loop !338

.lr.ph.i33.split:                                 ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36
  %.010.i34 = phi i64 [ %i.bf, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36 ], [ 0, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit ] ; 2 uses
  %.sroa.03.09.i35 = phi ptr [ %i.bg, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36 ], [ %.sroa.045.080, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i35, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !85
  %i.ba = icmp eq i64 %i.az, %.fr89
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i39, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i39: ; preds = %.lr.ph.i33.split
  %i.bb = load ptr, ptr %.sroa.045.080, align 8, !tbaa !36
  %i.bc = load ptr, ptr %.sroa.03.09.i35, align 8, !tbaa !36
  %bcmp.i.i.i40 = tail call i32 @bcmp(ptr %i.bc, ptr %i.bb, i64 %.fr89)
  %bcmp.i.i.fr.i41 = freeze i32 %bcmp.i.i.i40
  %i.bd = icmp eq i32 %bcmp.i.i.fr.i41, 0
  %i.be = zext i1 %i.bd to i64
  %spec.select.i42 = add nsw i64 %.010.i34, %i.be
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i39, %.lr.ph.i33.split
  %i.bf = phi i64 [ %.010.i34, %.lr.ph.i33.split ], [ %spec.select.i42, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.i39 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i35, i64 32 ; 2 uses
  %.not.i37 = icmp eq ptr %i.bg, %1
  br i1 %.not.i37, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit44, label %.lr.ph.i33.split, !llvm.loop !338

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit44: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36, %.lr.ph.i33.split.us
  %.us-phi107109 = phi i64 [ %spec.select, %.lr.ph.i33.split.us ], [ %i.ap, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36 ]
  %.us-phi78 = phi i64 [ %spec.select88, %.lr.ph.i33.split.us ], [ %i.bf, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread6.i36 ]
  %.not29 = icmp eq i64 %.us-phi78, %.us-phi107109
  br i1 %.not29, label %.critedge31, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread

.critedge31:                                      ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit44, %.preheader.split
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.045.080, i64 32 ; 2 uses
  %.not65 = icmp eq ptr %i.bh, %1
  br i1 %.not65, label %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread, label %.preheader.split, !llvm.loop !337

_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread: ; preds = %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit44, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit, %.critedge31, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread105, %.critedge31.us, %bb.c, %.preheader.split.us, %.critedge, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ true, %.critedge ], [ false, %.preheader.split.us ], [ %.not65.us, %.critedge31.us ], [ %.not65.us, %bb.c ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit ], [ true, %.critedge31 ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit.thread105 ], [ false, %_ZSt10__count_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEENSt15iterator_traitsIT_E15difference_typeESI_SI_T0_.exit44 ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops17_Iter_equals_iterISD_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 7                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !85   ; 12 uses
  %i.h = and i64 %i.c, -128
  %scevgep = getelementptr i8, ptr %0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %i.g, 0
  %i.j = icmp eq i64 %i.g, 0
  %i.k = icmp eq i64 %i.g, 0
  %i.l = icmp eq i64 %i.g, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21.thread49
  %.055 = phi i64 [ %i.d, %.lr.ph ], [ %i.ao, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21.thread49 ] ; 2 uses
  %.sroa.037.054 = phi ptr [ %0, %.lr.ph ], [ %i.an, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21.thread49 ] ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !85
  %i.o = icmp eq i64 %i.n, %i.g
  br i1 %i.o, label %bb.c, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread46

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit: ; preds = %bb.c
  %i.p = load ptr, ptr %2, align 8, !tbaa !36
  %i.q = load ptr, ptr %.sroa.037.054, align 8, !tbaa !36
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.p, i64 %i.g)
  %i.r = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread46

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread46: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !85
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %bb.d, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17.thread47

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread46
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17: ; preds = %bb.d
  %i.w = load ptr, ptr %2, align 8, !tbaa !36
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !36
  %bcmp.i.i16 = tail call i32 @bcmp(ptr %i.x, ptr %i.w, i64 %i.g)
  %i.y = icmp eq i32 %bcmp.i.i16, 0
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17.thread47

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17.thread47: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread46, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 64 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 72
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !85
  %i.ac = icmp eq i64 %i.ab, %i.g
  br i1 %i.ac, label %bb.e, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19.thread48

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17.thread47
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19: ; preds = %bb.e
  %i.ad = load ptr, ptr %2, align 8, !tbaa !36
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !36
  %bcmp.i.i18 = tail call i32 @bcmp(ptr %i.ae, ptr %i.ad, i64 %i.g)
  %i.af = icmp eq i32 %bcmp.i.i18, 0
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19.thread48

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19.thread48: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17.thread47, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 104
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !85
  %i.aj = icmp eq i64 %i.ai, %i.g
  br i1 %i.aj, label %bb.f, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21.thread49

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19.thread48
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21: ; preds = %bb.f
  %i.ak = load ptr, ptr %2, align 8, !tbaa !36
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !36
  %bcmp.i.i20 = tail call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %i.g)
  %i.am = icmp eq i32 %bcmp.i.i20, 0
  br i1 %i.am, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21.thread49

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21.thread49: ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19.thread48, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 128
  %i.ao = add nsw i64 %.055, -1
  %i.ap = icmp sgt i64 %.055, 1
  br i1 %i.ap, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !339

._crit_edge.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21.thread49
  %.pre59 = ptrtoint ptr %scevgep to i64
  %.pre60 = sub i64 %i.a, %.pre59
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi61 = phi i64 [ %.pre60, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.037.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 7 uses
  %i.aq = ashr exact i64 %.pre-phi61, 5
  switch i64 %i.aq, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge56
  ]

._crit_edge._crit_edge56:                         ; preds = %._crit_edge
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre58 = load i64, ptr %.phi.trans.insert57, align 8, !tbaa !85
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !85
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !85 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !85 ; 2 uses
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.h, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23.thread50

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp eq i64 %i.as, 0
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23: ; preds = %bb.h
  %i.ax = load ptr, ptr %2, align 8, !tbaa !36
  %i.ay = load ptr, ptr %.sroa.037.0.lcssa, align 8, !tbaa !36
  %bcmp.i.i22 = tail call i32 @bcmp(ptr %i.ay, ptr %i.ax, i64 %i.as)
  %i.az = icmp eq i32 %bcmp.i.i22, 0
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23.thread50

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23.thread50: ; preds = %bb.g, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 32
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23.thread50
  %i.bb = phi i64 [ %i.au, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23.thread50 ], [ %.pre, %._crit_edge._crit_edge ] ; 4 uses
  %.sroa.037.1 = phi ptr [ %i.ba, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23.thread50 ], [ %.sroa.037.0.lcssa, %._crit_edge._crit_edge ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !85
  %i.be = icmp eq i64 %i.bd, %i.bb
  br i1 %i.be, label %bb.j, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25.thread51

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25: ; preds = %bb.j
  %i.bg = load ptr, ptr %2, align 8, !tbaa !36
  %i.bh = load ptr, ptr %.sroa.037.1, align 8, !tbaa !36
  %bcmp.i.i24 = tail call i32 @bcmp(ptr %i.bh, ptr %i.bg, i64 %i.bb)
  %i.bi = icmp eq i32 %bcmp.i.i24, 0
  br i1 %i.bi, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25.thread51

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25.thread51: ; preds = %bb.i, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 32
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge56, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25.thread51
  %i.bk = phi i64 [ %i.bb, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25.thread51 ], [ %.pre58, %._crit_edge._crit_edge56 ] ; 3 uses
  %.sroa.037.2 = phi ptr [ %i.bj, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25.thread51 ], [ %.sroa.037.0.lcssa, %._crit_edge._crit_edge56 ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.037.2, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !85
  %i.bn = icmp eq i64 %i.bm, %i.bk
  br i1 %i.bn, label %bb.l, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27.thread52

bb.l:                                             ; preds = %bb.k
  %i.bo = icmp eq i64 %i.bk, 0
  br i1 %i.bo, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27: ; preds = %bb.l
  %i.bp = load ptr, ptr %2, align 8, !tbaa !36
  %i.bq = load ptr, ptr %.sroa.037.2, align 8, !tbaa !36
  %bcmp.i.i26 = tail call i32 @bcmp(ptr %i.bq, ptr %i.bp, i64 %i.bk)
  %i.br = icmp eq i32 %bcmp.i.i26, 0
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27.thread52

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27.thread52: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread

_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit.thread: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit, %bb.l, %bb.j, %bb.h, %._crit_edge, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27.thread52, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.037.1, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit25 ], [ %1, %._crit_edge ], [ %.sroa.037.1, %bb.j ], [ %.sroa.037.0.lcssa, %bb.h ], [ %.sroa.037.2, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27 ], [ %.sroa.037.2, %bb.l ], [ %.sroa.037.0.lcssa, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit23 ], [ %1, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit27.thread52 ], [ %i.ag, %bb.f ], [ %i.z, %bb.e ], [ %i.s, %bb.d ], [ %.sroa.037.054, %bb.c ], [ %i.ag, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit21 ], [ %i.z, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit19 ], [ %i.s, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit17 ], [ %.sroa.037.054, %_ZN9__gnu_cxx5__ops17_Iter_equals_iterINS_17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEclISE_EEbT_.exit ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

end_hunk_0
