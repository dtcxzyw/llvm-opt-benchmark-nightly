inline.NumInlined: 3092
inline.NumDeleted: 1557
begin_hunk_0_@_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE18_M_assign_elementsIRKSF_EEvOT_:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_assignIRKSF_NS4_17_ReuseOrAllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !80
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !81   ; 4 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !69

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !206
  br label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.f, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !69

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.h = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEE19_M_allocate_bucketsEm.exit.i ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !80
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtmESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !84   ; 3 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %2, align 8, !tbaa !724    ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  store ptr %i.n, ptr %2, align 8, !tbaa !724
  br label %_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEEclIJRKS4_EEEPS5_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.o = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
  br label %_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEEclIJRKS4_EEEPS5_DpOT_.exit

_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEEclIJRKS4_EEEPS5_DpOT_.exit: ; preds = %bb.j, %bb.k
  %.sink.i = phi ptr [ %i.o, %bb.k ], [ %i.m, %bb.j ] ; 4 uses
  store ptr null, ptr %.sink.i, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.q, align 8, !tbaa !84
  %i.r = load ptr, ptr %0, align 8, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !81
  %i.u = load i16, ptr %i.p, align 8, !tbaa !110
  %i.v = zext i16 %i.u to i64
  %i.w = urem i64 %i.v, %i.t
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.w
  store ptr %i.q, ptr %i.x, align 8, !tbaa !203
  %.02229 = load ptr, ptr %i.k, align 8, !tbaa !49 ; 2 uses
  %.not2430 = icmp eq ptr %.02229, null
  br i1 %.not2430, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEEclIJRKS4_EEEPS5_DpOT_.exit, %bb.o
  %.02232 = phi ptr [ %.022, %bb.o ], [ %.02229, %_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEEclIJRKS4_EEEPS5_DpOT_.exit ] ; 2 uses
  %.031 = phi ptr [ %.sink.i27, %bb.o ], [ %.sink.i, %_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEEclIJRKS4_EEEPS5_DpOT_.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02232, i64 8
  %i.z = load ptr, ptr %2, align 8, !tbaa !724    ; 3 uses
  %.not.i26 = icmp eq ptr %i.z, null
  br i1 %.not.i26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49
  store ptr %i.aa, ptr %2, align 8, !tbaa !724
  br label %_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEEclIJRKS4_EEEPS5_DpOT_.exit28

bb.m:                                             ; preds = %.lr.ph
  %i.ab = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
  br label %_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEEclIJRKS4_EEEPS5_DpOT_.exit28

_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEEclIJRKS4_EEEPS5_DpOT_.exit28: ; preds = %bb.l, %bb.m
  %.sink.i27 = phi ptr [ %i.ab, %bb.m ], [ %i.z, %bb.l ] ; 4 uses
  store ptr null, ptr %.sink.i27, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink.i27, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  store ptr %.sink.i27, ptr %.031, align 8, !tbaa !49
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !81
  %i.ae = load i16, ptr %i.ac, align 8, !tbaa !110
  %i.af = zext i16 %i.ae to i64
  %i.ag = urem i64 %i.af, %i.ad
  %i.ah = load ptr, ptr %0, align 8, !tbaa !80
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !203
  %.not25 = icmp eq ptr %i.aj, null
  br i1 %.not25, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEEclIJRKS4_EEEPS5_DpOT_.exit28
  store ptr %.031, ptr %i.ai, align 8, !tbaa !203
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEEclIJRKS4_EEEPS5_DpOT_.exit28
  %.022 = load ptr, ptr %.02232, align 8, !tbaa !49 ; 2 uses
  %.not24 = icmp eq ptr %.022, null
  br i1 %.not24, label %.loopexit, label %.lr.ph, !llvm.loop !727

.loopexit:                                        ; preds = %bb.o, %_ZNKSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKtmELb0EEEEEclIJRKS4_EEEPS5_DpOT_.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !48
  %.not = icmp ugt i64 %i.c, 20
  br i1 %.not, label %..thread_crit_edge, label %bb.b

..thread_crit_edge:                               ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !50
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.025.040 = load ptr, ptr %i.d, align 8, !tbaa !49 ; 3 uses
  %.not3341 = icmp eq ptr %.sroa.025.040, null
  %.pre54 = load ptr, ptr %1, align 8             ; 4 uses
  br i1 %.not3341, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %.fr44 = freeze i64 %i.f                        ; 3 uses
  %i.g = icmp eq i64 %.fr44, 0
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread29.us
  %.sroa.025.042.us = phi ptr [ %.sroa.025.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread29.us ], [ %.sroa.025.040, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.025.042.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !54
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread29.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread29.us: ; preds = %.lr.ph.split.us
  %.sroa.025.0.us = load ptr, ptr %.sroa.025.042.us, align 8, !tbaa !49 ; 2 uses
  %.not33.us = icmp eq ptr %.sroa.025.0.us, null
  br i1 %.not33.us, label %.thread, label %.lr.ph.split.us, !llvm.loop !728

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread29
  %.sroa.025.042 = phi ptr [ %.sroa.025.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread29 ], [ %.sroa.025.040, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.025.042, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !54
  %i.m = icmp eq i64 %.fr44, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread29

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.025.042, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.pre54, ptr %i.o, i64 %.fr44)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread29

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread29: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit
  %.sroa.025.0 = load ptr, ptr %.sroa.025.042, align 8, !tbaa !49 ; 2 uses
  %.not33 = icmp eq ptr %.sroa.025.0, null
  br i1 %.not33, label %.thread, label %.lr.ph.split, !llvm.loop !728

.thread:                                          ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread29, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread29.us, %..thread_crit_edge, %bb.b
  %i.q = phi ptr [ %.pre, %..thread_crit_edge ], [ %.pre54, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread29.us ], [ %.pre54, %bb.b ], [ %.pre54, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread29 ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !54
  %i.t = tail call noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911) #21 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !729  ; 3 uses
  %i.w = urem i64 %i.t, %i.v                      ; 4 uses
  %i.x = load i64, ptr %i.b, align 8, !tbaa !48
  %i.y = icmp ugt i64 %i.x, 20
  br i1 %i.y, label %bb.c, label %.thread..critedge_crit_edge

.thread..critedge_crit_edge:                      ; preds = %.thread
  %.pre55 = load ptr, ptr %1, align 8, !tbaa !50
  %.pre57 = load i64, ptr %i.r, align 8, !tbaa !54
  br label %.critedge

bb.c:                                             ; preds = %.thread
  %i.z = load ptr, ptr %0, align 8, !tbaa !730
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.w
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !203 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  %.pre56 = load ptr, ptr %1, align 8             ; 6 uses
  %.pre58 = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %.pre58                 ; 8 uses
  br i1 %.not.i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49 ; 3 uses
  %i.ad = icmp eq i64 %.fr22.i.i, 0
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !731 ; 2 uses
  br i1 %i.ad, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.d, %bb.f
  %i.ae = phi i64 [ %i.al, %bb.f ], [ %.pre26.i.i, %bb.d ]
  %.0.us.i.i = phi ptr [ %i.aj, %bb.f ], [ %i.ac, %bb.d ] ; 3 uses
  %i.af = icmp eq i64 %i.t, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i

bb.e:                                             ; preds = %.split.us.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !54
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.e, %.split.us.i.i
  %i.aj = load ptr, ptr %.0.us.i.i, align 8, !tbaa !49 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.aj, null
  br i1 %.not18.us.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !731 ; 2 uses
  %i.am = urem i64 %i.al, %i.v
  %.not19.us.i.i = icmp eq i64 %i.am, %i.w
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.critedge, !llvm.loop !733

.split.i.i:                                       ; preds = %bb.d, %bb.h
  %i.an = phi i64 [ %i.ax, %bb.h ], [ %.pre26.i.i, %bb.d ]
  %.0.i.i = phi ptr [ %i.av, %bb.h ], [ %i.ac, %bb.d ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ap = icmp eq i64 %i.t, %i.an
  br i1 %i.ap, label %bb.g, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

bb.g:                                             ; preds = %.split.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !54
  %i.as = icmp eq i64 %.fr22.i.i, %i.ar
  br i1 %i.as, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i: ; preds = %bb.g
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !50
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.pre56, ptr %i.at, i64 %.fr22.i.i)
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, %bb.g, %.split.i.i
  %i.av = load ptr, ptr %.0.i.i, align 8, !tbaa !49 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.av, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !731 ; 2 uses
  %i.ay = urem i64 %i.ax, %i.v
  %.not19.i.i = icmp eq i64 %i.ay, %i.w
  br i1 %.not19.i.i, label %.split.i.i, label %.critedge, !llvm.loop !733

.critedge:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i, %bb.h, %bb.f, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i, %.thread..critedge_crit_edge, %bb.c
  %4 = phi i64 [ %.pre57, %.thread..critedge_crit_edge ], [ %.fr22.i.i, %bb.f ], [ %.fr22.i.i, %bb.c ], [ %.fr22.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i ], [ %.fr22.i.i, %bb.h ], [ %.fr22.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i ] ; 4 uses
  %5 = phi ptr [ %.pre55, %.thread..critedge_crit_edge ], [ %.pre56, %bb.f ], [ %.pre56, %bb.c ], [ %.pre56, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.us.i.i ], [ %.pre56, %bb.h ], [ %.pre56, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i ] ; 2 uses
  %i.az = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24 ; 11 uses
  store ptr null, ptr %i.az, align 8, !tbaa !49
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 3 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %4, ptr %i.a, align 8, !tbaa !109
  %i.bc = icmp ugt i64 %4, 15
  br i1 %i.bc, label %bb.i, label %._crit_edge.i.i.i.i.i

bb.i:                                             ; preds = %.critedge
  %i.bd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 2 uses
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !50
  %i.be = load i64, ptr %i.a, align 8, !tbaa !109
  store i64 %i.be, ptr %i.bb, align 8, !tbaa !60
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i, %.critedge
  %i.bf = phi ptr [ %i.bd, %bb.i ], [ %i.bb, %.critedge ] ; 2 uses
  switch i64 %4, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_NS_10_AllocNodeISaINS_10_Hash_nodeIS9_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKSH_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bg = load i8, ptr %5, align 1, !tbaa !60
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !60
  br label %_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_NS_10_AllocNodeISaINS_10_Hash_nodeIS9_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKSH_.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %5, i64 %4, i1 false)
  br label %_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_NS_10_AllocNodeISaINS_10_Hash_nodeIS9_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKSH_.exit

_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_NS_10_AllocNodeISaINS_10_Hash_nodeIS9_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKSH_.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.j, %bb.k
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !54
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !50
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bm = load i64, ptr %i.u, align 8, !tbaa !729
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !48
  %i.bo = call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 noundef %i.bm, i64 noundef %i.bn, i64 noundef 1) #21 ; 2 uses
  %i.bp = extractvalue { i8, i64 } %i.bo, 0
  %i.bq = trunc i8 %i.bp to i1
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_NS_10_AllocNodeISaINS_10_Hash_nodeIS9_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKSH_.exit
  %i.br = extractvalue { i8, i64 } %i.bo, 1
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.br)
  %i.bs = load i64, ptr %i.u, align 8, !tbaa !729
  %i.bt = urem i64 %i.t, %i.bs
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_NS_10_AllocNodeISaINS_10_Hash_nodeIS9_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKSH_.exit
  %.0.i17 = phi i64 [ %i.bt, %bb.l ], [ %i.w, %_ZNSt8__detail12_NodeBuilderINS_9_IdentityEE8_S_buildIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_NS_10_AllocNodeISaINS_10_Hash_nodeIS9_Lb1EEEEEEEEPNT1_11__node_typeEOT_OT0_RKSH_.exit ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store i64 %i.t, ptr %i.bu, align 8, !tbaa !731
  %i.bv = load ptr, ptr %0, align 8, !tbaa !730   ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.0.i17 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !203 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i18, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !49
  store ptr %i.by, ptr %i.az, align 8, !tbaa !49
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !203
  store ptr %i.az, ptr %i.bz, align 8, !tbaa !49
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !734 ; 3 uses
  store ptr %i.cb, ptr %i.az, align 8, !tbaa !49
  store ptr %i.az, ptr %i.ca, align 8, !tbaa !734
  %.not11.i.i = icmp eq ptr %i.cb, null
  br i1 %.not11.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load i64, ptr %i.u, align 8, !tbaa !729
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !731
  %i.cf = urem i64 %i.ce, %i.cc
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cf
  store ptr %i.az, ptr %i.cg, align 8, !tbaa !203
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !203
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.q, %bb.n
  %i.ch = load i64, ptr %i.b, align 8, !tbaa !48
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %i.b, align 8, !tbaa !48
  br label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, %.lr.ph.split.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, %bb.e, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.028.1 = phi ptr [ %i.az, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.sroa.025.042.us, %.lr.ph.split.us ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i ], [ %.0.us.i.i, %bb.e ], [ %.sroa.025.042, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %.lr.ph.split.us ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS6_EEbRKT_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i ], [ 0, %bb.e ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.028.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !735
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !69

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !734  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !734
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !49  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !731
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !203  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !734
  store ptr %i.o, ptr %.031, align 8, !tbaa !49
  store ptr %.031, ptr %i.g, align 8, !tbaa !734
  store ptr %i.g, ptr %i.m, align 8, !tbaa !203
  %i.p = load ptr, ptr %.031, align 8, !tbaa !49
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !203
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !49
  store ptr %i.r, ptr %.031, align 8, !tbaa !49
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !203
  store ptr %.031, ptr %i.s, align 8, !tbaa !49
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !736

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !730    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !729
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #22
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !729
  store ptr %.0.i, ptr %0, align 8, !tbaa !730
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_mapItmSt4hashItESt8equal_toItESaIS7_IKtmEEEESaISI_ENS_10_Select1stESC_IS6_ESA_IS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !54
  %i.d = tail call noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.a, i64 noundef %i.c, i64 noundef 3339675911) #21 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !169  ; 3 uses
  %i.g = urem i64 %i.d, %i.f                      ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !167
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !203  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  %.pre = load ptr, ptr %1, align 8               ; 3 uses
  br i1 %.not.i.i, label %.loopexit31, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 3 uses
  %i.l = load i64, ptr %i.b, align 8
  %.fr22.i.i = freeze i64 %i.l                    ; 3 uses
  %i.m = icmp eq i64 %.fr22.i.i, 0
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !731 ; 2 uses
  br i1 %i.m, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.b, %bb.d
  %i.n = phi i64 [ %i.u, %bb.d ], [ %.pre26.i.i, %bb.b ]
  %.0.us.i.i = phi ptr [ %i.s, %bb.d ], [ %i.k, %bb.b ] ; 3 uses
  %i.o = icmp eq i64 %i.d, %i.n
  br i1 %i.o, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_mapItmSt4hashItESt8equal_toItESaIS7_IKtmEEEENS_10_Select1stESC_IS6_ESA_IS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISI_Lb1EEE.exit.thread.us.i.i

bb.c:                                             ; preds = %.split.us.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !54
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_mapItmSt4hashItESt8equal_toItESaIS7_IKtmEEEENS_10_Select1stESC_IS6_ESA_IS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISI_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_mapItmSt4hashItESt8equal_toItESaIS7_IKtmEEEENS_10_Select1stESC_IS6_ESA_IS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISI_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.c, %.split.us.i.i
  %i.s = load ptr, ptr %.0.us.i.i, align 8, !tbaa !49 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.s, null
  br i1 %.not18.us.i.i, label %.loopexit31, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_mapItmSt4hashItESt8equal_toItESaIS7_IKtmEEEENS_10_Select1stESC_IS6_ESA_IS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISI_Lb1EEE.exit.thread.us.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load i64, ptr %i.t, align 8, !tbaa !731  ; 2 uses
  %i.v = urem i64 %i.u, %i.f
  %.not19.us.i.i = icmp eq i64 %i.v, %i.g
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.loopexit31, !llvm.loop !737

.split.i.i:                                       ; preds = %bb.b, %bb.f
  %i.w = phi i64 [ %i.ag, %bb.f ], [ %.pre26.i.i, %bb.b ]
  %.0.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.k, %bb.b ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.y = icmp eq i64 %i.d, %i.w
  br i1 %i.y, label %bb.e, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_mapItmSt4hashItESt8equal_toItESaIS7_IKtmEEEENS_10_Select1stESC_IS6_ESA_IS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISI_Lb1EEE.exit.thread.i.i

bb.e:                                             ; preds = %.split.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !54
  %i.ab = icmp eq i64 %.fr22.i.i, %i.aa
  br i1 %i.ab, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_mapItmSt4hashItESt8equal_toItESaIS7_IKtmEEEENS_10_Select1stESC_IS6_ESA_IS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISI_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_mapItmSt4hashItESt8equal_toItESaIS7_IKtmEEEENS_10_Select1stESC_IS6_ESA_IS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISI_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_mapItmSt4hashItESt8equal_toItESaIS7_IKtmEEEENS_10_Select1stESC_IS6_ESA_IS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISI_Lb1EEE.exit.i.i: ; preds = %bb.e
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !50
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.pre, ptr %i.ac, i64 %.fr22.i.i)
  %i.ad = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ad, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_mapItmSt4hashItESt8equal_toItESaIS7_IKtmEEEENS_10_Select1stESC_IS6_ESA_IS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISI_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_mapItmSt4hashItESt8equal_toItESaIS7_IKtmEEEENS_10_Select1stESC_IS6_ESA_IS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISI_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_mapItmSt4hashItESt8equal_toItESaIS7_IKtmEEEENS_10_Select1stESC_IS6_ESA_IS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISI_Lb1EEE.exit.i.i, %bb.e, %.split.i.i
  %i.ae = load ptr, ptr %.0.i.i, align 8, !tbaa !49 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i.i, label %.loopexit31, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_mapItmSt4hashItESt8equal_toItESaIS7_IKtmEEEENS_10_Select1stESC_IS6_ESA_IS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISI_Lb1EEE.exit.thread.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !731 ; 2 uses
  %i.ah = urem i64 %i.ag, %i.f
  %.not19.i.i = icmp eq i64 %i.ah, %i.g
  br i1 %.not19.i.i, label %.split.i.i, label %.loopexit31, !llvm.loop !737

.loopexit31:                                      ; preds = %bb.f, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_mapItmSt4hashItESt8equal_toItESaIS7_IKtmEEEENS_10_Select1stESC_IS6_ESA_IS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISI_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_mapItmSt4hashItESt8equal_toItESaIS7_IKtmEEEENS_10_Select1stESC_IS6_ESA_IS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISI_Lb1EEE.exit.thread.us.i.i, %bb.d, %bb.a
  %i.ai = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #24 ; 17 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !107
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.am = icmp eq ptr %.pre, %i.al
  br i1 %i.am, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %.loopexit31
  %i.an = load i64, ptr %i.b, align 8, !tbaa !54  ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.ap, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESY_IJEEEEEPNSJ_16_Hashtable_allocISaINSJ_10_Hash_nodeISH_Lb1EEEEEEDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.loopexit31
  store ptr %.pre, ptr %i.aj, align 8, !tbaa !50
  %i.aq = load i64, ptr %i.al, align 8, !tbaa !60
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !60
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !54
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESY_IJEEEEEPNSJ_16_Hashtable_allocISaINSJ_10_Hash_nodeISH_Lb1EEEEEEDpOT_.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESY_IJEEEEEPNSJ_16_Hashtable_allocISaINSJ_10_Hash_nodeISH_Lb1EEEEEEDpOT_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ar = phi i64 [ %i.an, %bb.g ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !54
  store ptr %i.al, ptr %1, align 8, !tbaa !50
  store i64 0, ptr %i.b, align 8, !tbaa !54
  store i8 0, ptr %i.al, align 8, !tbaa !60
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 72 ; 2 uses
  store i64 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store ptr %i.av, ptr %i.at, align 8, !tbaa !80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store i64 1, ptr %i.aw, align 8, !tbaa !81
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.au, align 8, !tbaa !82
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !169
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !568
  %i.bd = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 noundef %i.ba, i64 noundef %i.bc, i64 noundef 1) #21 ; 2 uses
  %i.be = extractvalue { i8, i64 } %i.bd, 0
  %i.bf = trunc i8 %i.be to i1
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESY_IJEEEEEPNSJ_16_Hashtable_allocISaINSJ_10_Hash_nodeISH_Lb1EEEEEEDpOT_.exit
  %i.bg = extractvalue { i8, i64 } %i.bd, 1
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.bg)
  %i.bh = load i64, ptr %i.e, align 8, !tbaa !169
  %i.bi = urem i64 %i.d, %i.bh
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESY_IJEEEEEPNSJ_16_Hashtable_allocISaINSJ_10_Hash_nodeISH_Lb1EEEEEEDpOT_.exit
  %.0.i19 = phi i64 [ %i.bi, %bb.h ], [ %i.g, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESY_IJEEEEEPNSJ_16_Hashtable_allocISaINSJ_10_Hash_nodeISH_Lb1EEEEEEDpOT_.exit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  store i64 %i.d, ptr %i.bj, align 8, !tbaa !731
  %i.bk = load ptr, ptr %0, align 8, !tbaa !167   ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.0.i19 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !203 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !49
  store ptr %i.bn, ptr %i.ai, align 8, !tbaa !49
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !203
  store ptr %i.ai, ptr %i.bo, align 8, !tbaa !49
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !738 ; 3 uses
  store ptr %i.bq, ptr %i.ai, align 8, !tbaa !49
  store ptr %i.ai, ptr %i.bp, align 8, !tbaa !738
  %.not11.i.i = icmp eq ptr %i.bq, null
  br i1 %.not11.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = load i64, ptr %i.e, align 8, !tbaa !169
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !731
  %i.bu = urem i64 %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bu
  store ptr %i.ai, ptr %i.bv, align 8, !tbaa !203
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !203
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.m, %bb.j
  %i.bw = load i64, ptr %i.bb, align 8, !tbaa !568
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.bb, align 8, !tbaa !568
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_mapItmSt4hashItESt8equal_toItESaIS7_IKtmEEEENS_10_Select1stESC_IS6_ESA_IS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISI_Lb1EEE.exit.i.i, %bb.c, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.ai, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.0.us.i.i, %bb.c ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St13unordered_mapItmSt4hashItESt8equal_toItESaIS7_IKtmEEEENS_10_Select1stESC_IS6_ESA_IS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISI_Lb1EEE.exit.i.i ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 40
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !739
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13unordered_mapItmSt4hashItESt8equal_toItESaIS2_IKtmEEEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !69

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13unordered_mapItmSt4hashItESt8equal_toItESaIS2_IKtmEEEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13unordered_mapItmSt4hashItESt8equal_toItESaIS2_IKtmEEEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13unordered_mapItmSt4hashItESt8equal_toItESaIS2_IKtmEEEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !738  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !738
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !49  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 96
  %i.k = load i64, ptr %i.j, align 8, !tbaa !731
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !203  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !738
  store ptr %i.o, ptr %.031, align 8, !tbaa !49
  store ptr %.031, ptr %i.g, align 8, !tbaa !738
  store ptr %i.g, ptr %i.m, align 8, !tbaa !203
  %i.p = load ptr, ptr %.031, align 8, !tbaa !49
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !203
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !49
  store ptr %i.r, ptr %.031, align 8, !tbaa !49
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !203
  store ptr %.031, ptr %i.s, align 8, !tbaa !49
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !740

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !167    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !169
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #22
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St13unordered_mapItmSt4hashItESt8equal_toItESaIS6_IKtmEEEESaISH_ENSt8__detail10_Select1stESB_IS5_ES9_IS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !169
  store ptr %.0.i, ptr %0, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseItSt4pairIKtmESaIS3_ENS_10_Select1stESt8equal_toItESt4hashItENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOt(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !110    ; 4 uses
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !81   ; 3 uses
  %i.e = urem i64 %i.b, %i.d                      ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !203  ; 2 uses
end_hunk_0
