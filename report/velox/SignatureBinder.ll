inline.NumInlined: 2565
inline.NumDeleted: 1249
begin_hunk_0_@_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_:bb.a
  br i1 %i.d, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !92
  %.fr22 = freeze i64 %i.f                        ; 3 uses
  %i.g = icmp eq i64 %.fr22, 0
  %i.h = load ptr, ptr %1, align 8
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread10.us
  %.sroa.06.016.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread10.us ], [ %.sroa.06.015, %.lr.ph ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.016.us, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !92
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.016.us, align 8, !tbaa !131 ; 2 uses
  %i.l = icmp eq ptr %.sroa.06.0.us, null
  br i1 %i.l, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !440

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread10
  %.sroa.06.016 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread10 ], [ %.sroa.06.015, %.lr.ph ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.016, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !92
  %i.o = icmp eq i64 %.fr22, %i.n
  br i1 %i.o, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.016, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !109
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.h, ptr %i.q, i64 %.fr22)
  %i.r = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.r, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.016, align 8, !tbaa !131 ; 2 uses
  %i.s = icmp eq ptr %.sroa.06.0, null
  br i1 %i.s, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !440

bb.c:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %1, align 8, !tbaa !109
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !92
  %i.w = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.t, i64 noundef %i.v, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #32
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !253 ; 3 uses
  %i.ab = urem i64 %i.w, %i.aa                    ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !252
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !137 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !131 ; 3 uses
  %i.ag = load i64, ptr %i.u, align 8
  %.fr22.i.i = freeze i64 %i.ag                   ; 3 uses
  %i.ah = icmp eq i64 %.fr22.i.i, 0
  %i.ai = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !135 ; 2 uses
  br i1 %i.ah, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.aj = phi i64 [ %i.aq, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.ao, %bb.g ], [ %i.af, %bb.e ] ; 3 uses
  %i.ak = icmp eq i64 %i.w, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !92
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.ao = load ptr, ptr %.0.us.i.i, align 8, !tbaa !131 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.ao, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread.us.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !135 ; 2 uses
  %i.ar = urem i64 %i.aq, %i.aa
  %.not19.us.i.i = icmp eq i64 %i.ar, %i.ab
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !427

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.as = phi i64 [ %i.bc, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ba, %bb.i ], [ %i.af, %bb.e ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.au = icmp eq i64 %i.w, %i.as
  br i1 %i.au, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !92
  %i.ax = icmp eq i64 %.fr22.i.i, %i.aw
  br i1 %i.ax, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !109
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ai, ptr %i.ay, i64 %.fr22.i.i)
  %i.az = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.az, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ba = load ptr, ptr %.0.i.i, align 8, !tbaa !131 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ba, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !135 ; 2 uses
  %i.bd = urem i64 %i.bc, %i.aa
  %.not19.i.i = icmp eq i64 %i.bd, %i.ab
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !427

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN8facebook5velox4TypeEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISF_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.016.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIKN8facebook5velox4TypeEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISF_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #20

declare noundef i64 @_ZN8facebook5velox8Coercion11overallCostERKSt6vectorIS1_SaIS1_EE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SV_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph25

.lr.ph:                                           ; preds = %.lr.ph25
  %i.f = icmp eq i64 %i.g, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph25, !llvm.loop !441

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %storemerge18.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_RSV_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_RSV_(ptr %0, ptr %storemerge18.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph25:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %storemerge1824 = phi ptr [ %i.h, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.01923 = phi i64 [ %i.g, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.g = add nsw i64 %.01923, -1                  ; 3 uses
  %i.h = tail call ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEESN_SN_SN_SV_(ptr %0, ptr %storemerge1824) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SV_T1_(ptr %i.h, ptr %storemerge1824, i64 noundef %i.g)
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.a
  %i.k = icmp sgt i64 %i.j, 256
  br i1 %i.k, label %.lr.ph, label %.loopexit, !llvm.loop !441

.loopexit:                                        ; preds = %.lr.ph25, %bb.a, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SV_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.08.019.i.idx = phi i64 [ %.sroa.08.019.i.add, %bb.d ], [ 16, %.lr.ph.i ] ; 3 uses
  %.pn18.i = phi ptr [ %i.f, %bb.d ], [ %0, %.lr.ph.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.08.019.i.idx ; 6 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !290
  %2 = load <2 x i64>, ptr %i.f, align 8          ; 3 uses
  %3 = extractelement <2 x i64> %2, i64 1         ; 3 uses
  %4 = icmp slt i64 %3, %i.g
  br i1 %4, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %i.h = add i64 %indvar, 1
  %i.i = lshr exact i64 %.sroa.08.019.i.idx, 4    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.f, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.k = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.m = load i64, ptr %i.k, align 8, !tbaa !164
  store i64 %i.m, ptr %i.l, align 8, !tbaa !288
  %i.n = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !164
  %i.p = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !290
  %i.q = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !442

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.k, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.r = icmp ult i64 %indvar, 3
  br i1 %i.r, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.s = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.t = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.u = load i64, ptr %i.s, align 8, !tbaa !164
  store i64 %i.u, ptr %i.t, align 8, !tbaa !288
  %i.v = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !164
  %i.x = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !290
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !164
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !288
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !164
  %i.ad = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !290
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !164
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !288
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !164
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !290
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !164
  store i64 %i.am, ptr %i.al, align 8, !tbaa !288
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !164
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !290
  %i.aq = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.ar = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, !llvm.loop !444

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store <2 x i64> %2, ptr %0, align 8, !tbaa !164
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !290 ; 2 uses
  %i.au = icmp slt i64 %3, %i.at
  br i1 %i.au, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SV_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.av = phi i64 [ %i.az, %.lr.ph.i.i ], [ %i.at, %bb.c ]
  %.sroa.05.08.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %i.f, %bb.c ] ; 4 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -16 ; 3 uses
  %i.aw = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !164
  store i64 %i.aw, ptr %.sroa.05.08.i.i, align 8, !tbaa !288
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 8
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !290
  %i.ay = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !290 ; 2 uses
  %i.ba = icmp slt i64 %3, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SV_.exit.i, !llvm.loop !445

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SV_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.05.0.lcssa.i.i = phi ptr [ %i.f, %bb.c ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ]
  store <2 x i64> %2, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !164
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SV_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.08.019.i.add = add nuw nsw i64 %.sroa.08.019.i.idx, 16 ; 2 uses
  %i.bb = icmp eq i64 %.sroa.08.019.i.add, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bb, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SV_.exit, label %bb.b, !llvm.loop !446

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SV_.exit: ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %1
  br i1 %i.bd, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SV_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SV_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SV_.exit.i13
  %.sroa.0.06.i = phi ptr [ %i.bo, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SV_.exit.i13 ], [ %i.bc, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SV_.exit ] ; 6 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.be = load <2 x i64>, ptr %.sroa.0.06.i, align 8
  %i.bf = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !290 ; 2 uses
  %i.bh = icmp slt i64 %.sroa.4.0.copyload.i.i, %i.bg
  br i1 %i.bh, label %.lr.ph.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SV_.exit.i13

.lr.ph.i.i15:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i15
  %i.bi = phi i64 [ %i.bm, %.lr.ph.i.i15 ], [ %i.bg, %.lr.ph.i12 ]
  %.sroa.05.08.i.i16 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i15 ], [ %.sroa.0.06.i, %.lr.ph.i12 ] ; 4 uses
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.05.08.i.i16, i64 -16 ; 3 uses
  %i.bj = load i64, ptr %.sroa.0.0.i.i17, align 8, !tbaa !164
  store i64 %i.bj, ptr %.sroa.05.08.i.i16, align 8, !tbaa !288
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i16, i64 8
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !290
  %i.bl = getelementptr inbounds i8, ptr %.sroa.05.08.i.i16, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !290 ; 2 uses
  %i.bn = icmp slt i64 %.sroa.4.0.copyload.i.i, %i.bm
  br i1 %i.bn, label %.lr.ph.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SV_.exit.i13, !llvm.loop !445

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SV_.exit.i13: ; preds = %.lr.ph.i.i15, %.lr.ph.i12
  %.sroa.05.0.lcssa.i.i14 = phi ptr [ %.sroa.0.06.i, %.lr.ph.i12 ], [ %.sroa.0.0.i.i17, %.lr.ph.i.i15 ]
  store <2 x i64> %i.be, ptr %.sroa.05.0.lcssa.i.i14, align 8, !tbaa !164
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %1
  br i1 %i.bp, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SV_.exit, label %.lr.ph.i12, !llvm.loop !447

bb.e:                                             ; preds = %bb.a
  %i.bq = icmp eq ptr %0, %1
  br i1 %i.bq, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SV_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.e
  %.sroa.08.017.i19 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.br = icmp eq ptr %.sroa.08.017.i19, %1
  br i1 %i.br, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SV_.exit, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.preheader.i18
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i20
  %.sroa.08.019.i21 = phi ptr [ %.sroa.08.017.i19, %.lr.ph.i20 ], [ %.sroa.08.0.i26, %bb.i ] ; 9 uses
  %.pn18.i22 = phi ptr [ %0, %.lr.ph.i20 ], [ %.sroa.08.019.i21, %bb.i ] ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !290
  %5 = load <2 x i64>, ptr %.sroa.08.019.i21, align 8 ; 3 uses
  %6 = extractelement <2 x i64> %5, i64 1         ; 3 uses
  %7 = icmp slt i64 %6, %i.bt
  br i1 %7, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bu = ptrtoint ptr %.sroa.08.019.i21 to i64
  %i.bv = sub i64 %i.bu, %i.b
  %i.bw = ashr exact i64 %i.bv, 4                 ; 6 uses
  %i.bx = icmp sgt i64 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.preheader.i31, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30

.lr.ph.i.i.i.i.i.preheader.i31:                   ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %.pn18.i22, i64 32 ; 3 uses
  %min.iters.check = icmp ult i64 %i.bw, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i31
  %n.vec = and i64 %i.bw, 9223372036854775800     ; 3 uses
  %i.bz = and i64 %i.bw, 7
  %i.ca = mul i64 %n.vec, -16                     ; 2 uses
  %i.cb = getelementptr i8, ptr %i.by, i64 %i.ca
  %i.cc = getelementptr i8, ptr %.sroa.08.019.i21, i64 %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = mul i64 %index, -16                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.cd ; 2 uses
  %next.gep55 = getelementptr i8, ptr %.sroa.08.019.i21, i64 %i.cd ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %next.gep55, i64 -64
  %i.cf = getelementptr inbounds i8, ptr %next.gep55, i64 -128
  %interleaved.vec = load <8 x i64>, ptr %i.ce, align 8, !tbaa !164
  %interleaved.vec67 = load <8 x i64>, ptr %i.cf, align 8, !tbaa !164
  %i.cg = getelementptr inbounds i8, ptr %next.gep, i64 -64
  %i.ch = getelementptr inbounds i8, ptr %next.gep, i64 -128
  store <8 x i64> %interleaved.vec, ptr %i.cg, align 8, !tbaa !164
  store <8 x i64> %interleaved.vec67, ptr %i.ch, align 8, !tbaa !164
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !448

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30, label %.lr.ph.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i32:                             ; preds = %middle.block, %.lr.ph.i.i.i.i.i.preheader.i31
  %.010.i.i.i.i.i.i33.ph = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i31 ], [ %i.bz, %middle.block ] ; 6 uses
  %.069.i.i.i.i.i.i34.ph = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.preheader.i31 ], [ %i.cb, %middle.block ] ; 14 uses
  %.078.i.i.i.i.i.i35.ph = phi ptr [ %.sroa.08.019.i21, %.lr.ph.i.i.i.i.i.preheader.i31 ], [ %i.cc, %middle.block ] ; 14 uses
  %i.cj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35.ph, i64 -16
  %i.ck = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34.ph, i64 -16
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !164
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !288
  %i.cm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35.ph, i64 -8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !164
  %i.co = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34.ph, i64 -8
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !290
  %i.cp = icmp samesign ugt i64 %.010.i.i.i.i.i.i33.ph, 1
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.i32.1, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30

.lr.ph.i.i.i.i.i.i32.1:                           ; preds = %.lr.ph.i.i.i.i.i.i32
  %i.cq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35.ph, i64 -32
  %i.cr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34.ph, i64 -32
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !164
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !288
  %i.ct = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35.ph, i64 -24
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !164
  %i.cv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34.ph, i64 -24
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !290
  %.not = icmp eq i64 %.010.i.i.i.i.i.i33.ph, 2
  br i1 %.not, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30, label %.lr.ph.i.i.i.i.i.i32.2

.lr.ph.i.i.i.i.i.i32.2:                           ; preds = %.lr.ph.i.i.i.i.i.i32.1
  %i.cw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35.ph, i64 -48
  %i.cx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34.ph, i64 -48
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !164
  store i64 %i.cy, ptr %i.cx, align 8, !tbaa !288
  %i.cz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35.ph, i64 -40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !164
  %i.db = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34.ph, i64 -40
  store i64 %i.da, ptr %i.db, align 8, !tbaa !290
  %i.dc = icmp samesign ugt i64 %.010.i.i.i.i.i.i33.ph, 3
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i.i32.3, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30

.lr.ph.i.i.i.i.i.i32.3:                           ; preds = %.lr.ph.i.i.i.i.i.i32.2
  %i.dd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35.ph, i64 -64
  %i.de = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34.ph, i64 -64
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !164
  store i64 %i.df, ptr %i.de, align 8, !tbaa !288
  %i.dg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35.ph, i64 -56
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !164
  %i.di = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34.ph, i64 -56
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !290
  %.not71 = icmp eq i64 %.010.i.i.i.i.i.i33.ph, 4
  br i1 %.not71, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30, label %.lr.ph.i.i.i.i.i.i32.4

.lr.ph.i.i.i.i.i.i32.4:                           ; preds = %.lr.ph.i.i.i.i.i.i32.3
  %i.dj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35.ph, i64 -80
  %i.dk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34.ph, i64 -80
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !164
  store i64 %i.dl, ptr %i.dk, align 8, !tbaa !288
  %i.dm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35.ph, i64 -72
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !164
  %i.do = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34.ph, i64 -72
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !290
  %i.dp = icmp samesign ugt i64 %.010.i.i.i.i.i.i33.ph, 5
  br i1 %i.dp, label %.lr.ph.i.i.i.i.i.i32.5, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30

.lr.ph.i.i.i.i.i.i32.5:                           ; preds = %.lr.ph.i.i.i.i.i.i32.4
  %i.dq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35.ph, i64 -96
  %i.dr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34.ph, i64 -96
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !164
  store i64 %i.ds, ptr %i.dr, align 8, !tbaa !288
  %i.dt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35.ph, i64 -88
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !164
  %i.dv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34.ph, i64 -88
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !290
  %i.dw = icmp eq i64 %.010.i.i.i.i.i.i33.ph, 7
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i.i32.6, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30

.lr.ph.i.i.i.i.i.i32.6:                           ; preds = %.lr.ph.i.i.i.i.i.i32.5
  %i.dx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35.ph, i64 -112
  %i.dy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34.ph, i64 -112
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !164
  store i64 %i.dz, ptr %i.dy, align 8, !tbaa !288
  %i.ea = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i35.ph, i64 -104
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !164
  %i.ec = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i34.ph, i64 -104
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !290
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30: ; preds = %.lr.ph.i.i.i.i.i.i32, %.lr.ph.i.i.i.i.i.i32.1, %.lr.ph.i.i.i.i.i.i32.2, %.lr.ph.i.i.i.i.i.i32.3, %.lr.ph.i.i.i.i.i.i32.4, %.lr.ph.i.i.i.i.i.i32.5, %.lr.ph.i.i.i.i.i.i32.6, %middle.block, %bb.g
  store <2 x i64> %5, ptr %0, align 8, !tbaa !164
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ed = getelementptr inbounds nuw i8, ptr %.pn18.i22, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !290 ; 2 uses
  %i.ef = icmp slt i64 %6, %i.ee
  br i1 %i.ef, label %.lr.ph.i.i27, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SV_.exit.i24

.lr.ph.i.i27:                                     ; preds = %bb.h, %.lr.ph.i.i27
  %i.eg = phi i64 [ %i.ek, %.lr.ph.i.i27 ], [ %i.ee, %bb.h ]
  %.sroa.05.08.i.i28 = phi ptr [ %.sroa.0.0.i.i29, %.lr.ph.i.i27 ], [ %.sroa.08.019.i21, %bb.h ] ; 4 uses
  %.sroa.0.0.i.i29 = getelementptr inbounds i8, ptr %.sroa.05.08.i.i28, i64 -16 ; 3 uses
  %i.eh = load i64, ptr %.sroa.0.0.i.i29, align 8, !tbaa !164
  store i64 %i.eh, ptr %.sroa.05.08.i.i28, align 8, !tbaa !288
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i28, i64 8
  store i64 %i.eg, ptr %i.ei, align 8, !tbaa !290
  %i.ej = getelementptr inbounds i8, ptr %.sroa.05.08.i.i28, i64 -24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !290 ; 2 uses
  %i.el = icmp slt i64 %6, %i.ek
  br i1 %i.el, label %.lr.ph.i.i27, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SV_.exit.i24, !llvm.loop !445

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SV_.exit.i24: ; preds = %.lr.ph.i.i27, %bb.h
  %.sroa.05.0.lcssa.i.i25 = phi ptr [ %.sroa.08.019.i21, %bb.h ], [ %.sroa.0.0.i.i29, %.lr.ph.i.i27 ]
  store <2 x i64> %5, ptr %.sroa.05.0.lcssa.i.i25, align 8, !tbaa !164
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SV_.exit.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i30
  %.sroa.08.0.i26 = getelementptr inbounds nuw i8, ptr %.sroa.08.019.i21, i64 16 ; 2 uses
  %i.em = icmp eq ptr %.sroa.08.0.i26, %1
  br i1 %i.em, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SV_.exit, label %bb.f, !llvm.loop !446

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SV_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SV_.exit.i13, %.preheader.i18, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SV_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEESN_SN_SN_SV_(ptr %0, ptr %1) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %i.e = sdiv i64 %i.d, 2
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !290  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !290  ; 5 uses
  %i.m = icmp slt i64 %i.j, %i.l
  %i.n = getelementptr inbounds i8, ptr %1, i64 -8 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !290  ; 4 uses
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.p = icmp slt i64 %i.l, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.f, align 8, !tbaa !164
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load <2 x i64>, ptr %0, align 8, !tbaa !164
  store i64 %i.q, ptr %0, align 8, !tbaa !164
  store i64 %i.l, ptr %i.r, align 8, !tbaa !164
  store <2 x i64> %i.s, ptr %i.f, align 8, !tbaa !164
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SV_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = icmp slt i64 %i.j, %i.o
  %i.u = load i64, ptr %0, align 8, !tbaa !164    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.h, align 8, !tbaa !164
  store i64 %i.w, ptr %0, align 8, !tbaa !164
  store i64 %i.u, ptr %i.h, align 8, !tbaa !164
  %i.x = load i64, ptr %i.v, align 8, !tbaa !164
  %i.y = load i64, ptr %i.n, align 8, !tbaa !164
  store i64 %i.y, ptr %i.v, align 8, !tbaa !164
  store i64 %i.x, ptr %i.n, align 8, !tbaa !164
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SV_.exit

bb.f:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.g, align 8, !tbaa !164
  store i64 %i.z, ptr %0, align 8, !tbaa !164
  store i64 %i.u, ptr %i.g, align 8, !tbaa !164
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !164
  store i64 %i.j, ptr %i.v, align 8, !tbaa !164
  store i64 %i.aa, ptr %i.i, align 8, !tbaa !164
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SV_.exit

bb.g:                                             ; preds = %bb.a
  %i.ab = icmp slt i64 %i.j, %i.o
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !164
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load <2 x i64>, ptr %0, align 8, !tbaa !164
  store i64 %i.ac, ptr %0, align 8, !tbaa !164
  store i64 %i.j, ptr %i.ad, align 8, !tbaa !164
  store <2 x i64> %i.ae, ptr %i.g, align 8, !tbaa !164
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SV_.exit

bb.i:                                             ; preds = %bb.g
  %i.af = icmp slt i64 %i.l, %i.o
  %i.ag = load i64, ptr %0, align 8, !tbaa !164   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !164
  store i64 %i.ai, ptr %0, align 8, !tbaa !164
  store i64 %i.ag, ptr %i.h, align 8, !tbaa !164
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !164
  %i.ak = load i64, ptr %i.n, align 8, !tbaa !164
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !164
  store i64 %i.aj, ptr %i.n, align 8, !tbaa !164
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SV_.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load i64, ptr %i.f, align 8, !tbaa !164
  store i64 %i.al, ptr %0, align 8, !tbaa !164
  store i64 %i.ag, ptr %i.f, align 8, !tbaa !164
  %i.am = load i64, ptr %i.ah, align 8, !tbaa !164
  store i64 %i.l, ptr %i.ah, align 8, !tbaa !164
  store i64 %i.am, ptr %i.k, align 8, !tbaa !164
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SV_.exit

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SV_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.h, %bb.j, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SV_.exit
  %.sroa.012.0.i = phi ptr [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SV_.exit ], [ %i.as, %bb.o ]
  %.sroa.0.0.i = phi ptr [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SN_SN_SV_.exit ], [ %.sroa.0.1.i, %bb.o ]
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !290 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.012.1.i = phi ptr [ %.sroa.012.0.i, %bb.l ], [ %i.as, %bb.m ] ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !290
  %i.ar = icmp slt i64 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i, i64 16 ; 2 uses
  br i1 %i.ar, label %bb.m, label %.preheader.i.preheader, !llvm.loop !449

.preheader.i.preheader:                           ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i, i64 8 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.pn.i = phi ptr [ %.sroa.0.1.i, %.preheader.i ], [ %.sroa.0.0.i, %.preheader.i.preheader ] ; 3 uses
  %.sroa.0.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -16 ; 5 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !290
  %i.aw = icmp slt i64 %i.ao, %i.av
  br i1 %i.aw, label %.preheader.i, label %bb.n, !llvm.loop !450

bb.n:                                             ; preds = %.preheader.i
  %.not.i = icmp ult ptr %.sroa.012.1.i, %.sroa.0.1.i
  br i1 %.not.i, label %bb.o, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEESN_SN_SN_SN_SV_.exit

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8 ; 2 uses
  %i.ay = load i64, ptr %.sroa.012.1.i, align 8, !tbaa !164
  %i.az = load i64, ptr %.sroa.0.1.i, align 8, !tbaa !164
  store i64 %i.az, ptr %.sroa.012.1.i, align 8, !tbaa !164
  store i64 %i.ay, ptr %.sroa.0.1.i, align 8, !tbaa !164
  %i.ba = load i64, ptr %i.at, align 8, !tbaa !164
  %i.bb = load i64, ptr %i.ax, align 8, !tbaa !164
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !164
  store i64 %i.ba, ptr %i.ax, align 8, !tbaa !164
  br label %bb.l, !llvm.loop !451

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEESN_SN_SN_SN_SV_.exit: ; preds = %bb.n
  ret ptr %.sroa.012.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_RSV_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SN_RSV_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairImlESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox8Coercion14pickLowestCostISt10shared_ptrIKNSC_4TypeEEEESt8optionalImERKS5_IS2_IS5_ISD_SaISD_EET_ESaISO_EEEUlRKSN_RKT0_E_EEEvSN_SN_SN_RSV_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.g = load <2 x i64>, ptr %i.f, align 8
  %i.h = load i64, ptr %0, align 8, !tbaa !164
  store i64 %i.h, ptr %i.f, align 8, !tbaa !288
  %i.i = load i64, ptr %i.e, align 8, !tbaa !164
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !290
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.j, %i.a                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 4                   ; 3 uses
  %i.m = add nsw i64 %i.l, -1
  %i.n = sdiv i64 %i.m, 2
  %i.o = icmp sgt i64 %i.l, 2
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.037.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.p = shl i64 %.037.i.i, 1                     ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %i.q
  %i.s = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !290
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !290
  %i.y = icmp slt i64 %i.v, %i.x
end_hunk_0
