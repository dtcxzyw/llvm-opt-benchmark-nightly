inline.NumInlined: 1440
inline.NumDeleted: 708
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm:bb.a
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !82
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !81     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !181  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78
  store ptr %i.w, ptr %3, align 8, !tbaa !78
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !181
  store ptr %3, ptr %i.x, align 8, !tbaa !78
  br label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !70
  store ptr %i.z, ptr %3, align 8, !tbaa !78
  store ptr %3, ptr %i.y, align 8, !tbaa !70
  %i.aa = load ptr, ptr %3, align 8, !tbaa !78    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !82
  %i.ad = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ae = zext i16 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !181
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !181
  br label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit

_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !179
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !179
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !286

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !287
  br label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !286

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !70
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !78 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !107
  %i.l = zext i16 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !181  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !70
  store ptr %i.p, ptr %.02530, align 8, !tbaa !78
  store ptr %.02530, ptr %i.g, align 8, !tbaa !70
  store ptr %i.g, ptr %i.n, align 8, !tbaa !181
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !78
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !181
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !78
  store ptr %i.s, ptr %.02530, align 8, !tbaa !78
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !181
  store ptr %.02530, ptr %i.t, align 8, !tbaa !78
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !288

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !81     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !82
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #27
  br label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !82
  store ptr %.0.i, ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8k_d_tree12SortedPointsILh3EfEC2ERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !150
  %i.b = load i64, ptr %2, align 8, !tbaa !150
  %i.c = add i64 %i.b, %i.a                       ; 6 uses
  store i64 %i.c, ptr %0, align 8, !tbaa !150
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.e = mul i64 %i.c, 3                          ; 2 uses
  %i.f = icmp ugt i64 %i.e, 4611686018427387903
  %i.g = mul i64 %i.c, 12
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #29 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !148
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = mul i64 %i.c, 6
  %.inv.i.i = icmp sgt i64 %i.e, -1
  %i.l = select i1 %.inv.i.i, i64 %i.k, i64 -1
  %i.m = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #29
          to label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit unwind label %_ZN8k_d_tree6PointsILh3EfED2Ev.exit

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit:       ; preds = %bb.a
  store i64 %i.c, ptr %i.j, align 8, !tbaa !158
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit, %._crit_edge
  %i.u = phi i64 [ %i.c, %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit ], [ %i.ci, %._crit_edge ] ; 2 uses
  %i.v = phi ptr [ %i.i, %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit ], [ %i.cj, %._crit_edge ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit ], [ %indvars.iv.next, %._crit_edge ] ; 6 uses
  %i.w = shl nuw nsw i64 %indvars.iv, 1
  %i.x = add nuw i64 %i.w, 2                      ; 2 uses
  %i.y = load i64, ptr %1, align 8, !tbaa !150    ; 3 uses
  %i.z = icmp ugt i64 %i.y, 1
  br i1 %i.z, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.i, label %.split.us.i, !prof !268

.split.us.i:                                      ; preds = %bb.c
  %i.aa = icmp eq i64 %i.y, 1
  br i1 %i.aa, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i, label %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i:  ; preds = %.split.us.i
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !148 ; 3 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !140
  store float %i.ac, ptr %i.v, align 4, !tbaa !140
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %gep.1.i = getelementptr [4 x i8], ptr %i.v, i64 %i.u
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !140
  store float %i.ae, ptr %gep.1.i, align 4, !tbaa !140
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %gep.2.idx.i = shl i64 %i.u, 3
  %gep.2.i = getelementptr i8, ptr %i.v, i64 %gep.2.idx.i
  %i.ag = load float, ptr %i.af, align 4, !tbaa !140
  store float %i.ag, ptr %gep.2.i, align 4, !tbaa !140
  br label %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.i:               ; preds = %bb.c
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !148
  %.idx.i = shl nuw nsw i64 %i.y, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.v, ptr align 4 %i.ah, i64 %.idx.i, i1 false)
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !148 ; 2 uses
  %.pre14.i = load i64, ptr %1, align 8, !tbaa !150 ; 5 uses
  %.pre15.i = load ptr, ptr %i.d, align 8, !tbaa !148 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.pre14.i ; 2 uses
  %i.aj = load i64, ptr %0, align 8, !tbaa !150   ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.pre15.i, i64 %i.aj ; 2 uses
  %i.al = icmp ugt i64 %.pre14.i, 1
  br i1 %i.al, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i, label %bb.d, !prof !268

bb.d:                                             ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.i
  %i.am = icmp eq i64 %.pre14.i, 1
  br i1 %i.am, label %bb.e, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i

bb.e:                                             ; preds = %bb.d
  %i.an = load float, ptr %i.ai, align 4, !tbaa !140
  store float %i.an, ptr %i.ak, align 4, !tbaa !140
  br label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i:      ; preds = %bb.e, %bb.d
  %.ph.i = phi i64 [ 0, %bb.d ], [ 1, %bb.e ]     ; 2 uses
  %.idx2325.i = shl nuw nsw i64 %.ph.i, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2325.i
  %.idx2426.i = shl i64 %i.aj, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre15.i, i64 %.idx2426.i
  br label %bb.f

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i:             ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.i
  %.idx.1.i = shl nuw nsw i64 %.pre14.i, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ak, ptr nonnull align 4 %i.ai, i64 %.idx.1.i, i1 false)
  %.pre16.i = load ptr, ptr %i.o, align 8, !tbaa !148
  %.pre17.i = load i64, ptr %1, align 8, !tbaa !150 ; 5 uses
  %.pre18.i = load ptr, ptr %i.d, align 8, !tbaa !148
  %.pre19.i = load i64, ptr %0, align 8, !tbaa !150
  %.idx23.i = shl i64 %.pre17.i, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre16.i, i64 %.idx23.i ; 2 uses
  %.idx24.i = shl i64 %.pre19.i, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre18.i, i64 %.idx24.i ; 2 uses
  %i.as = icmp ugt i64 %.pre17.i, 1
  br i1 %i.as, label %bb.h, label %bb.f, !prof !289

bb.f:                                             ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i
  %i.at = phi i64 [ %.pre14.i, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i ], [ %.pre17.i, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i ] ; 2 uses
  %i.au = phi ptr [ %i.ap, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i ], [ %i.ar, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i ]
  %i.av = phi ptr [ %i.ao, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i ], [ %i.aq, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i ]
  %i.aw = phi i64 [ %.ph.i, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i ], [ %.pre17.i, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i ]
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.g, label %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit

bb.g:                                             ; preds = %bb.f
  %i.ay = load float, ptr %i.av, align 4, !tbaa !140
  store float %i.ay, ptr %i.au, align 4, !tbaa !140
  br label %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit

bb.h:                                             ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i
  %.idx.2.i = shl nuw nsw i64 %.pre17.i, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ar, ptr align 4 %i.aq, i64 %.idx.2.i, i1 false)
  %.pre = load i64, ptr %1, align 8, !tbaa !150
  br label %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit

_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit:    ; preds = %bb.h, %bb.g, %bb.f, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i, %.split.us.i
  %i.az = phi i64 [ %.pre, %bb.h ], [ %i.at, %bb.g ], [ %i.at, %bb.f ], [ 1, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i ], [ 0, %.split.us.i ]
  %i.ba = and i64 %i.az, 65535                    ; 5 uses
  %i.bb = load i64, ptr %2, align 8, !tbaa !150   ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, 1
  br i1 %i.bc, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.i77, label %.split.us.i72, !prof !268

.split.us.i72:                                    ; preds = %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit
  %i.bd = icmp eq i64 %i.bb, 1
  %.pre123 = load ptr, ptr %i.d, align 8, !tbaa !148 ; 3 uses
  %.pre125 = load i64, ptr %0, align 8, !tbaa !150 ; 4 uses
  br i1 %i.bd, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i73, label %bb.n

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i73: ; preds = %.split.us.i72
  %invariant.gep.i = getelementptr [4 x i8], ptr %.pre123, i64 %i.ba ; 3 uses
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !148 ; 3 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !140
  store float %i.bf, ptr %invariant.gep.i, align 4, !tbaa !140
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %gep.1.i74 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.pre125
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !140
  store float %i.bh, ptr %gep.1.i74, align 4, !tbaa !140
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %gep.2.idx.i75 = shl i64 %.pre125, 3
  %gep.2.i76 = getelementptr i8, ptr %invariant.gep.i, i64 %gep.2.idx.i75
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !140
  store float %i.bj, ptr %gep.2.i76, align 4, !tbaa !140
  br label %bb.n

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.i77:             ; preds = %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !148
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ba
  %i.bm = load ptr, ptr %i.p, align 8, !tbaa !148
  %.idx.i78 = shl nuw nsw i64 %i.bb, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bl, ptr align 4 %i.bm, i64 %.idx.i78, i1 false)
  %.pre.i79 = load ptr, ptr %i.p, align 8, !tbaa !148 ; 2 uses
  %.pre14.i80 = load i64, ptr %2, align 8, !tbaa !150 ; 4 uses
  %.pre15.i81 = load ptr, ptr %i.d, align 8, !tbaa !148 ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i79, i64 %.pre14.i80 ; 2 uses
  %i.bo = load i64, ptr %0, align 8, !tbaa !150   ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre15.i81, i64 %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ba ; 2 uses
  %i.br = icmp ugt i64 %.pre14.i80, 1
  br i1 %i.br, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i86, label %bb.i, !prof !268

bb.i:                                             ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.i77
  %i.bs = icmp eq i64 %.pre14.i80, 1
  br i1 %i.bs, label %bb.j, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i82

bb.j:                                             ; preds = %bb.i
  %i.bt = load float, ptr %i.bn, align 4, !tbaa !140
  store float %i.bt, ptr %i.bq, align 4, !tbaa !140
  br label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i82

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i82:    ; preds = %bb.j, %bb.i
  %.ph.i83 = phi i64 [ 0, %bb.i ], [ 1, %bb.j ]   ; 2 uses
  %.idx2325.i84 = shl nuw nsw i64 %.ph.i83, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre.i79, i64 %.idx2325.i84
  %.idx2426.i85 = shl i64 %i.bo, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre15.i81, i64 %.idx2426.i85
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ba
  br label %bb.k

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i86:           ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.i77
  %.idx.1.i87 = shl nuw nsw i64 %.pre14.i80, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bq, ptr nonnull align 4 %i.bn, i64 %.idx.1.i87, i1 false)
  %.pre16.i88 = load ptr, ptr %i.p, align 8, !tbaa !148
  %.pre17.i89 = load i64, ptr %2, align 8, !tbaa !150 ; 4 uses
  %.pre18.i90 = load ptr, ptr %i.d, align 8, !tbaa !148 ; 2 uses
  %.pre19.i91 = load i64, ptr %0, align 8, !tbaa !150 ; 2 uses
  %.idx23.i92 = shl i64 %.pre17.i89, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre16.i88, i64 %.idx23.i92 ; 2 uses
  %.idx24.i93 = shl i64 %.pre19.i91, 3
  %i.by = getelementptr inbounds nuw i8, ptr %.pre18.i90, i64 %.idx24.i93
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ba ; 2 uses
  %i.ca = icmp ugt i64 %.pre17.i89, 1
  br i1 %i.ca, label %bb.m, label %bb.k, !prof !289

bb.k:                                             ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i86, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i82
  %i.cb = phi i64 [ %i.bo, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i82 ], [ %.pre19.i91, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i86 ] ; 2 uses
  %i.cc = phi ptr [ %.pre15.i81, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i82 ], [ %.pre18.i90, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i86 ] ; 2 uses
  %i.cd = phi ptr [ %i.bw, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i82 ], [ %i.bz, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i86 ]
  %i.ce = phi ptr [ %i.bu, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i82 ], [ %i.bx, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i86 ]
  %i.cf = phi i64 [ %.ph.i83, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i82 ], [ %.pre17.i89, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i86 ]
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ch = load float, ptr %i.ce, align 4, !tbaa !140
  store float %i.ch, ptr %i.cd, align 4, !tbaa !140
  br label %bb.n

bb.m:                                             ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i86
  %.idx.2.i94 = shl nuw nsw i64 %.pre17.i89, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bz, ptr align 4 %i.bx, i64 %.idx.2.i94, i1 false)
  %.pre122 = load ptr, ptr %i.d, align 8, !tbaa !148
  %.pre124 = load i64, ptr %0, align 8, !tbaa !150
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i73, %.split.us.i72
  %i.ci = phi i64 [ %.pre124, %bb.m ], [ %i.cb, %bb.l ], [ %i.cb, %bb.k ], [ %.pre125, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i73 ], [ %.pre125, %.split.us.i72 ] ; 2 uses
  %i.cj = phi ptr [ %.pre122, %bb.m ], [ %i.cc, %bb.l ], [ %i.cc, %bb.k ], [ %.pre123, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i73 ], [ %.pre123, %.split.us.i72 ] ; 2 uses
  %i.ck = mul i64 %i.ci, %indvars.iv
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !147 ; 2 uses
  %i.cn = ptrtoaddr ptr %i.cm to i64
  %i.co = load i64, ptr %i.q, align 8, !tbaa !158 ; 4 uses
  %i.cp = mul i64 %i.co, %indvars.iv
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.cp ; 3 uses
  %i.cr = load ptr, ptr %i.t, align 8, !tbaa !147 ; 2 uses
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = load i64, ptr %i.s, align 8, !tbaa !158 ; 5 uses
  %i.cu = mul i64 %i.ct, %indvars.iv
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.cu ; 4 uses
  %i.cw = load ptr, ptr %i.n, align 8, !tbaa !147
  %i.cx = load i64, ptr %i.j, align 8, !tbaa !158
  %i.cy = mul i64 %i.cx, %indvars.iv
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.cy ; 2 uses
  %.idx = shl nuw nsw i64 %i.co, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx ; 3 uses
  %.idx119 = shl nuw nsw i64 %i.ct, 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx119
  %.not100 = icmp eq i64 %i.co, 0
  %.not63101 = icmp eq i64 %i.ct, 0
  %or.cond102 = select i1 %.not100, i1 true, i1 %.not63101
  br i1 %or.cond102, label %.critedge.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.dc = load i64, ptr %1, align 8, !tbaa !150
  br label %bb.o

.critedge.preheader:                              ; preds = %bb.o, %bb.n
  %.049.lcssa = phi ptr [ %i.cq, %bb.n ], [ %.150, %bb.o ] ; 7 uses
  %.046.lcssa = phi ptr [ %i.cv, %bb.n ], [ %.147, %bb.o ] ; 7 uses
  %.0.lcssa = phi ptr [ %i.cz, %bb.n ], [ %.1, %bb.o ] ; 7 uses
  %.046.lcssa133 = ptrtoaddr ptr %.046.lcssa to i64 ; 2 uses
  %.not64109 = icmp eq ptr %.049.lcssa, %i.da
  br i1 %.not64109, label %.preheader, label %iter.check169

iter.check169:                                    ; preds = %.critedge.preheader
  %.049.lcssa151 = ptrtoaddr ptr %.049.lcssa to i64 ; 2 uses
  %.0.lcssa150 = ptrtoaddr ptr %.0.lcssa to i64
  %i.dd = add i64 %i.cn, -2
  %i.de = mul i64 %i.co, %i.x
  %i.df = add i64 %i.dd, %i.de
  %i.dg = sub i64 %i.df, %.049.lcssa151           ; 3 uses
  %i.dh = lshr i64 %i.dg, 1
  %i.di = add nuw i64 %i.dh, 1                    ; 5 uses
  %min.iters.check153 = icmp ult i64 %i.dg, 6
  %i.dj = sub i64 %.049.lcssa151, %.0.lcssa150
  %diff.check152 = icmp ugt i64 %i.dj, -32
  %or.cond185 = select i1 %min.iters.check153, i1 true, i1 %diff.check152
  br i1 %or.cond185, label %.critedge.preheader187, label %vector.main.loop.iter.check154

vector.main.loop.iter.check154:                   ; preds = %iter.check169
  %min.iters.check155 = icmp ult i64 %i.dg, 30
  br i1 %min.iters.check155, label %vec.epilog.ph173, label %vector.ph156

vector.ph156:                                     ; preds = %vector.main.loop.iter.check154
  %i.dk = and i64 %i.di, 12
  %n.vec157 = and i64 %i.di, -16                  ; 4 uses
  %i.dl = shl i64 %n.vec157, 1                    ; 2 uses
  %i.dm = getelementptr i8, ptr %.0.lcssa, i64 %i.dl ; 2 uses
  %i.dn = getelementptr i8, ptr %.049.lcssa, i64 %i.dl
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body158 ] ; 2 uses
  %i.do = shl i64 %index159, 1                    ; 2 uses
  %next.gep160 = getelementptr i8, ptr %.0.lcssa, i64 %i.do ; 2 uses
  %next.gep161 = getelementptr i8, ptr %.049.lcssa, i64 %i.do ; 2 uses
  %i.dp = getelementptr i8, ptr %next.gep161, i64 16
  %wide.load162 = load <8 x i16>, ptr %next.gep161, align 2, !tbaa !107
  %wide.load163 = load <8 x i16>, ptr %i.dp, align 2, !tbaa !107
  %i.dq = getelementptr i8, ptr %next.gep160, i64 16
  store <8 x i16> %wide.load162, ptr %next.gep160, align 2, !tbaa !107
  store <8 x i16> %wide.load163, ptr %i.dq, align 2, !tbaa !107
  %index.next164 = add nuw i64 %index159, 16      ; 2 uses
  %i.dr = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.dr, label %middle.block165, label %vector.body158, !llvm.loop !290

middle.block165:                                  ; preds = %vector.body158
  %cmp.n166 = icmp eq i64 %i.di, %n.vec157
  br i1 %cmp.n166, label %.preheader, label %vec.epilog.iter.check171

vec.epilog.iter.check171:                         ; preds = %middle.block165
  %min.epilog.iters.check172 = icmp eq i64 %i.dk, 0
  br i1 %min.epilog.iters.check172, label %.critedge.preheader187, label %vec.epilog.ph173, !prof !293

vec.epilog.ph173:                                 ; preds = %vector.main.loop.iter.check154, %vec.epilog.iter.check171
  %vec.epilog.resume.val167 = phi i64 [ %n.vec157, %vec.epilog.iter.check171 ], [ 0, %vector.main.loop.iter.check154 ]
  %n.vec174 = and i64 %i.di, -4                   ; 3 uses
  %i.ds = shl i64 %n.vec174, 1                    ; 2 uses
  %i.dt = getelementptr i8, ptr %.0.lcssa, i64 %i.ds ; 2 uses
  %i.du = getelementptr i8, ptr %.049.lcssa, i64 %i.ds
  br label %vec.epilog.vector.body175

vec.epilog.vector.body175:                        ; preds = %vec.epilog.vector.body175, %vec.epilog.ph173
  %index176 = phi i64 [ %vec.epilog.resume.val167, %vec.epilog.ph173 ], [ %index.next180, %vec.epilog.vector.body175 ] ; 2 uses
  %i.dv = shl i64 %index176, 1                    ; 2 uses
  %next.gep177 = getelementptr i8, ptr %.0.lcssa, i64 %i.dv
  %next.gep178 = getelementptr i8, ptr %.049.lcssa, i64 %i.dv
  %wide.load179 = load <4 x i16>, ptr %next.gep178, align 2, !tbaa !107
  store <4 x i16> %wide.load179, ptr %next.gep177, align 2, !tbaa !107
  %index.next180 = add nuw i64 %index176, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next180, %n.vec174
  br i1 %i.dw, label %vec.epilog.middle.block181, label %vec.epilog.vector.body175, !llvm.loop !294

vec.epilog.middle.block181:                       ; preds = %vec.epilog.vector.body175
  %cmp.n182 = icmp eq i64 %i.di, %n.vec174
  br i1 %cmp.n182, label %.preheader, label %.critedge.preheader187

.critedge.preheader187:                           ; preds = %iter.check169, %vec.epilog.iter.check171, %vec.epilog.middle.block181
  %.2111.ph = phi ptr [ %.0.lcssa, %iter.check169 ], [ %i.dm, %vec.epilog.iter.check171 ], [ %i.dt, %vec.epilog.middle.block181 ]
  %.251110.ph = phi ptr [ %.049.lcssa, %iter.check169 ], [ %i.dn, %vec.epilog.iter.check171 ], [ %i.du, %vec.epilog.middle.block181 ]
  br label %.critedge

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %.0105 = phi ptr [ %i.cz, %.lr.ph ], [ %.1, %bb.o ] ; 2 uses
  %.046104 = phi ptr [ %i.cv, %.lr.ph ], [ %.147, %bb.o ] ; 2 uses
  %.049103 = phi ptr [ %i.cq, %.lr.ph ], [ %.150, %bb.o ] ; 2 uses
  %i.dx = load i16, ptr %.049103, align 2, !tbaa !107 ; 2 uses
  %i.dy = load i16, ptr %.046104, align 2, !tbaa !107
  %i.dz = zext i16 %i.dy to i64
  %i.ea = add i64 %i.dc, %i.dz                    ; 2 uses
  %i.eb = zext i16 %i.dx to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !140
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ea
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !140
  %i.eg = fcmp nsz ugt float %i.ed, %i.ef         ; 3 uses
  %i.eh = trunc i64 %i.ea to i16
  %.sink = select i1 %i.eg, i16 %i.eh, i16 %i.dx
  %.150.idx = select i1 %i.eg, i64 0, i64 2
  %.150 = getelementptr inbounds nuw i8, ptr %.049103, i64 %.150.idx ; 3 uses
  %.147.idx = select i1 %i.eg, i64 2, i64 0
  %.147 = getelementptr inbounds nuw i8, ptr %.046104, i64 %.147.idx ; 3 uses
  store i16 %.sink, ptr %.0105, align 2, !tbaa !107
  %.1 = getelementptr inbounds nuw i8, ptr %.0105, i64 2 ; 2 uses
  %.not = icmp eq ptr %.150, %i.da
  %.not63 = icmp eq ptr %.147, %i.db
  %or.cond = select i1 %.not, i1 true, i1 %.not63
  br i1 %or.cond, label %.critedge.preheader, label %bb.o, !llvm.loop !295

.preheader:                                       ; preds = %.critedge, %middle.block165, %vec.epilog.middle.block181, %.critedge.preheader
  %.2.lcssa = phi ptr [ %.0.lcssa, %.critedge.preheader ], [ %i.dt, %vec.epilog.middle.block181 ], [ %i.dm, %middle.block165 ], [ %i.fk, %.critedge ] ; 6 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.ct ; 2 uses
  %.not65114 = icmp eq ptr %.046.lcssa, %i.ei
  br i1 %.not65114, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %.2.lcssa132 = ptrtoaddr ptr %.2.lcssa to i64
  %i.ej = load i64, ptr %1, align 8, !tbaa !150
  %i.ek = trunc i64 %i.ej to i16                  ; 3 uses
  %i.el = add i64 %i.cs, -2
  %i.em = mul i64 %i.ct, %i.x
  %i.en = add i64 %i.el, %i.em
  %i.eo = sub i64 %i.en, %.046.lcssa133           ; 3 uses
  %i.ep = lshr i64 %i.eo, 1
  %i.eq = add nuw i64 %i.ep, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.eo, 6
  %i.er = sub i64 %.046.lcssa133, %.2.lcssa132
  %diff.check = icmp ugt i64 %i.er, -32
  %or.cond186 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond186, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check134 = icmp ult i64 %i.eo, 30
  br i1 %min.iters.check134, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.es = and i64 %i.eq, 12
  %n.vec = and i64 %i.eq, -16                     ; 4 uses
  %i.et = shl i64 %n.vec, 1                       ; 2 uses
  %i.eu = getelementptr i8, ptr %.2.lcssa, i64 %i.et
  %i.ev = getelementptr i8, ptr %.046.lcssa, i64 %i.et
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ek, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ew = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.2.lcssa, i64 %i.ew ; 2 uses
  %next.gep135 = getelementptr i8, ptr %.046.lcssa, i64 %i.ew ; 2 uses
  %i.ex = getelementptr i8, ptr %next.gep135, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep135, align 2, !tbaa !107
  %wide.load136 = load <8 x i16>, ptr %i.ex, align 2, !tbaa !107
  %i.ey = add <8 x i16> %wide.load, %broadcast.splat
  %i.ez = add <8 x i16> %wide.load136, %broadcast.splat
  %i.fa = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.ey, ptr %next.gep, align 2, !tbaa !107
  store <8 x i16> %i.ez, ptr %i.fa, align 2, !tbaa !107
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !296

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.es, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !293

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec138 = and i64 %i.eq, -4                   ; 3 uses
  %i.fc = shl i64 %n.vec138, 1                    ; 2 uses
  %i.fd = getelementptr i8, ptr %.2.lcssa, i64 %i.fc
  %i.fe = getelementptr i8, ptr %.046.lcssa, i64 %i.fc
  %broadcast.splatinsert139 = insertelement <4 x i16> poison, i16 %i.ek, i64 0
  %broadcast.splat140 = shufflevector <4 x i16> %broadcast.splatinsert139, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index141 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next145, %vec.epilog.vector.body ] ; 2 uses
  %i.ff = shl i64 %index141, 1                    ; 2 uses
  %next.gep142 = getelementptr i8, ptr %.2.lcssa, i64 %i.ff
  %next.gep143 = getelementptr i8, ptr %.046.lcssa, i64 %i.ff
  %wide.load144 = load <4 x i16>, ptr %next.gep143, align 2, !tbaa !107
  %i.fg = add <4 x i16> %wide.load144, %broadcast.splat140
  store <4 x i16> %i.fg, ptr %next.gep142, align 2, !tbaa !107
  %index.next145 = add nuw i64 %index141, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.fh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !297

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n146 = icmp eq i64 %i.eq, %n.vec138
  br i1 %cmp.n146, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3116.ph = phi ptr [ %.2.lcssa, %iter.check ], [ %i.eu, %vec.epilog.iter.check ], [ %i.fd, %vec.epilog.middle.block ]
  %.248115.ph = phi ptr [ %.046.lcssa, %iter.check ], [ %i.ev, %vec.epilog.iter.check ], [ %i.fe, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.critedge:                                        ; preds = %.critedge.preheader187, %.critedge
  %.2111 = phi ptr [ %i.fk, %.critedge ], [ %.2111.ph, %.critedge.preheader187 ] ; 2 uses
  %.251110 = phi ptr [ %i.fi, %.critedge ], [ %.251110.ph, %.critedge.preheader187 ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.251110, i64 2 ; 2 uses
  %i.fj = load i16, ptr %.251110, align 2, !tbaa !107
  %i.fk = getelementptr inbounds nuw i8, ptr %.2111, i64 2 ; 2 uses
  store i16 %i.fj, ptr %.2111, align 2, !tbaa !107
  %.not64 = icmp eq ptr %i.fi, %i.da
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN8k_d_tree6KdTreeILh3EftEESaIS2_EE8pop_backEv:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 7 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -88
  store ptr %i.c, ptr %i.a, align 8, !tbaa !86
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !169  ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.l
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.j) #27
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.b, i64 -48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !147  ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #27
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 -56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !147  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #27
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !147  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #27
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i:   ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i
  %i.t = getelementptr inbounds i8, ptr %i.b, i64 -80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !148  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #27
  br label %_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit

_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit:             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8k_d_tree12SortedPointsILh3EfEC2EmSt5arrayIPKfLm3EE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef byval(%"struct.std::array.149") align 8 %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 19 uses
  store i64 %1, ptr %0, align 8, !tbaa !150
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = mul i64 %1, 3                            ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4611686018427387903
  %i.e = mul i64 %1, 12
  %i.f = select i1 %i.d, i64 -1, i64 %i.e
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #29 ; 8 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !148
  %i.h = icmp ugt i64 %1, 1
  br i1 %i.h, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i, label %.split.i, !prof !268

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i:  ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %1, 2                 ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !148
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.g, ptr align 4 %i.i, i64 %.idx.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !148
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.l, ptr align 4 %i.k, i64 %.idx.i, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !148
  %.idx17.i = shl i64 %1, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx17.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.n, i64 %.idx.i, i1 false)
  br label %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit

.split.i:                                         ; preds = %bb.a
  %i.p = icmp eq i64 %1, 1
  br i1 %i.p, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.preheader.i, label %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.preheader.i:     ; preds = %.split.i
  %i.q = load ptr, ptr %2, align 8, !tbaa !148
  %i.r = load float, ptr %i.q, align 4, !tbaa !140
  store float %i.r, ptr %i.g, align 4, !tbaa !140
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !148
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.v = load float, ptr %i.t, align 4, !tbaa !140
  store float %i.v, ptr %i.u, align 4, !tbaa !140
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !148
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.z = load float, ptr %i.x, align 4, !tbaa !140
  store float %i.z, ptr %i.y, align 4, !tbaa !140
  br label %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit

_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit: ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i, %.split.i, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.preheader.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 %1, ptr %i.aa, align 8, !tbaa !158
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ac = mul i64 %1, 6
  %.inv.i.i = icmp sgt i64 %i.c, -1
  %i.ad = select i1 %.inv.i.i, i64 %i.ac, i64 -1
  %i.ae = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #29
          to label %.noexc unwind label %bb.b     ; 9 uses

.noexc:                                           ; preds = %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !147
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit.split.us, label %iter.check

iter.check:                                       ; preds = %.noexc
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.preheader.preheader.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.af = add i64 %1, -1                          ; 2 uses
  %i.ag = and i64 %i.af, 65535
  %i.ah = icmp eq i64 %i.ag, 65535
  %i.ai = icmp ugt i64 %i.af, 65535
  %i.aj = or i1 %i.ah, %i.ai
  br i1 %i.aj, label %.preheader.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check38 = icmp ult i64 %1, 16
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %1, 12
  %n.vec = and i64 %1, 131056                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <8 x i16> %vec.ind, ptr %i.al, align 2, !tbaa !107
  store <8 x i16> %step.add, ptr %i.am, align 2, !tbaa !107
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !340

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %iter.check61, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader.i.preheader, label %vec.epilog.ph, !prof !293

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec39 = and i64 %1, 131068                   ; 3 uses
  %i.ao = trunc i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.ao, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind41 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next43, %vec.epilog.vector.body ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %index40
  store <4 x i16> %vec.ind41, ptr %i.ap, align 2, !tbaa !107
  %index.next42 = add nuw i64 %index40, 4         ; 2 uses
  %vec.ind.next43 = add <4 x i16> %vec.ind41, splat (i16 4)
  %i.aq = icmp eq i64 %index.next42, %n.vec39
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !341

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n44 = icmp eq i64 %1, %n.vec39
  br i1 %cmp.n44, label %iter.check61, label %.preheader.preheader.i.preheader

.preheader.preheader.i.preheader:                 ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec39, %vec.epilog.middle.block ]
  br label %.preheader.preheader.i

iter.check61:                                     ; preds = %.preheader.preheader.i, %vec.epilog.middle.block, %middle.block
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %1 ; 3 uses
  %umax46 = tail call i64 @llvm.umax.i64(i64 %1, i64 1) ; 6 uses
  %min.iters.check47 = icmp ult i64 %1, 4
  br i1 %min.iters.check47, label %vec.epilog.scalar.ph62.preheader, label %vector.scevcheck45

vector.scevcheck45:                               ; preds = %iter.check61
  %i.as = add i64 %1, -1                          ; 2 uses
  %i.at = and i64 %i.as, 65535
  %i.au = icmp eq i64 %i.at, 65535
  %i.av = icmp ugt i64 %i.as, 65535
  %i.aw = or i1 %i.au, %i.av
  br i1 %i.aw, label %vec.epilog.scalar.ph62.preheader, label %vector.main.loop.iter.check48

vector.main.loop.iter.check48:                    ; preds = %vector.scevcheck45
  %min.iters.check49 = icmp ult i64 %1, 16
  br i1 %min.iters.check49, label %vec.epilog.ph65, label %vector.ph50

vector.ph50:                                      ; preds = %vector.main.loop.iter.check48
  %i.ax = and i64 %umax46, 12
  %n.vec51 = and i64 %umax46, 131056              ; 4 uses
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph50
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next56, %vector.body52 ] ; 2 uses
  %vec.ind54 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph50 ], [ %vec.ind.next57, %vector.body52 ] ; 3 uses
  %step.add55 = add <8 x i16> %vec.ind54, splat (i16 8)
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %index53 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <8 x i16> %vec.ind54, ptr %i.ay, align 2, !tbaa !107
  store <8 x i16> %step.add55, ptr %i.az, align 2, !tbaa !107
  %index.next56 = add nuw i64 %index53, 16        ; 2 uses
  %vec.ind.next57 = add <8 x i16> %vec.ind54, splat (i16 16)
  %i.ba = icmp eq i64 %index.next56, %n.vec51
  br i1 %i.ba, label %middle.block58, label %vector.body52, !llvm.loop !342

middle.block58:                                   ; preds = %vector.body52
  %cmp.n59 = icmp eq i64 %1, %n.vec51
  br i1 %cmp.n59, label %iter.check93, label %vec.epilog.iter.check63

vec.epilog.iter.check63:                          ; preds = %middle.block58
  %min.epilog.iters.check64 = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check64, label %vec.epilog.scalar.ph62.preheader, label %vec.epilog.ph65, !prof !293

vec.epilog.ph65:                                  ; preds = %vector.main.loop.iter.check48, %vec.epilog.iter.check63
  %vec.epilog.resume.val60 = phi i64 [ %n.vec51, %vec.epilog.iter.check63 ], [ 0, %vector.main.loop.iter.check48 ] ; 2 uses
  %n.vec66 = and i64 %umax46, 131068              ; 3 uses
  %i.bb = trunc i64 %vec.epilog.resume.val60 to i16
  %broadcast.splatinsert67 = insertelement <4 x i16> poison, i16 %i.bb, i64 0
  %broadcast.splat68 = shufflevector <4 x i16> %broadcast.splatinsert67, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction69 = or disjoint <4 x i16> %broadcast.splat68, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body70

vec.epilog.vector.body70:                         ; preds = %vec.epilog.vector.body70, %vec.epilog.ph65
  %index71 = phi i64 [ %vec.epilog.resume.val60, %vec.epilog.ph65 ], [ %index.next73, %vec.epilog.vector.body70 ] ; 2 uses
  %vec.ind72 = phi <4 x i16> [ %induction69, %vec.epilog.ph65 ], [ %vec.ind.next74, %vec.epilog.vector.body70 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %index71
  store <4 x i16> %vec.ind72, ptr %i.bc, align 2, !tbaa !107
  %index.next73 = add nuw i64 %index71, 4         ; 2 uses
  %vec.ind.next74 = add <4 x i16> %vec.ind72, splat (i16 4)
  %i.bd = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.bd, label %vec.epilog.middle.block75, label %vec.epilog.vector.body70, !llvm.loop !343

vec.epilog.middle.block75:                        ; preds = %vec.epilog.vector.body70
  %cmp.n76 = icmp eq i64 %1, %n.vec66
  br i1 %cmp.n76, label %iter.check93, label %vec.epilog.scalar.ph62.preheader

vec.epilog.scalar.ph62.preheader:                 ; preds = %vector.scevcheck45, %iter.check61, %vec.epilog.iter.check63, %vec.epilog.middle.block75
  %indvars.iv.1.i.ph = phi i64 [ 0, %iter.check61 ], [ 0, %vector.scevcheck45 ], [ %n.vec51, %vec.epilog.iter.check63 ], [ %n.vec66, %vec.epilog.middle.block75 ]
  br label %vec.epilog.scalar.ph62

vec.epilog.scalar.ph62:                           ; preds = %vec.epilog.scalar.ph62.preheader, %vec.epilog.scalar.ph62
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %vec.epilog.scalar.ph62 ], [ %indvars.iv.1.i.ph, %vec.epilog.scalar.ph62.preheader ] ; 3 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.1.i
  %i.bf = trunc nuw i64 %indvars.iv.1.i to i16
  store i16 %i.bf, ptr %i.be, align 2, !tbaa !107
  %indvars.iv.next.1.i = add i64 %indvars.iv.1.i, 1 ; 2 uses
  %i.bg = and i64 %indvars.iv.next.1.i, 65535
  %i.bh = icmp samesign ugt i64 %1, %i.bg
  br i1 %i.bh, label %vec.epilog.scalar.ph62, label %iter.check93, !llvm.loop !344

iter.check93:                                     ; preds = %vec.epilog.scalar.ph62, %vec.epilog.middle.block75, %middle.block58
  %.idx.i12 = shl nuw nsw i64 %1, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i12 ; 3 uses
  %min.iters.check79 = icmp ult i64 %1, 4
  br i1 %min.iters.check79, label %vec.epilog.scalar.ph94.preheader, label %vector.scevcheck78

vector.scevcheck78:                               ; preds = %iter.check93
  %i.bj = add i64 %1, -1                          ; 2 uses
  %i.bk = and i64 %i.bj, 65535
  %i.bl = icmp eq i64 %i.bk, 65535
  %i.bm = icmp ugt i64 %i.bj, 65535
  %i.bn = or i1 %i.bl, %i.bm
  br i1 %i.bn, label %vec.epilog.scalar.ph94.preheader, label %vector.main.loop.iter.check80

vector.main.loop.iter.check80:                    ; preds = %vector.scevcheck78
  %min.iters.check81 = icmp ult i64 %1, 16
  br i1 %min.iters.check81, label %vec.epilog.ph97, label %vector.ph82

vector.ph82:                                      ; preds = %vector.main.loop.iter.check80
  %i.bo = and i64 %umax46, 12
  %n.vec83 = and i64 %umax46, 131056              ; 4 uses
  br label %vector.body84

vector.body84:                                    ; preds = %vector.body84, %vector.ph82
  %index85 = phi i64 [ 0, %vector.ph82 ], [ %index.next88, %vector.body84 ] ; 2 uses
  %vec.ind86 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph82 ], [ %vec.ind.next89, %vector.body84 ] ; 3 uses
  %step.add87 = add <8 x i16> %vec.ind86, splat (i16 8)
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %index85 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <8 x i16> %vec.ind86, ptr %i.bp, align 2, !tbaa !107
  store <8 x i16> %step.add87, ptr %i.bq, align 2, !tbaa !107
  %index.next88 = add nuw i64 %index85, 16        ; 2 uses
  %vec.ind.next89 = add <8 x i16> %vec.ind86, splat (i16 16)
  %i.br = icmp eq i64 %index.next88, %n.vec83
  br i1 %i.br, label %middle.block90, label %vector.body84, !llvm.loop !345

middle.block90:                                   ; preds = %vector.body84
  %cmp.n91 = icmp eq i64 %1, %n.vec83
  br i1 %cmp.n91, label %.loopexit, label %vec.epilog.iter.check95

vec.epilog.iter.check95:                          ; preds = %middle.block90
  %min.epilog.iters.check96 = icmp eq i64 %i.bo, 0
  br i1 %min.epilog.iters.check96, label %vec.epilog.scalar.ph94.preheader, label %vec.epilog.ph97, !prof !293

vec.epilog.ph97:                                  ; preds = %vector.main.loop.iter.check80, %vec.epilog.iter.check95
  %vec.epilog.resume.val92 = phi i64 [ %n.vec83, %vec.epilog.iter.check95 ], [ 0, %vector.main.loop.iter.check80 ] ; 2 uses
  %n.vec98 = and i64 %umax46, 131068              ; 3 uses
  %i.bs = trunc i64 %vec.epilog.resume.val92 to i16
  %broadcast.splatinsert99 = insertelement <4 x i16> poison, i16 %i.bs, i64 0
  %broadcast.splat100 = shufflevector <4 x i16> %broadcast.splatinsert99, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction101 = or disjoint <4 x i16> %broadcast.splat100, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body102

vec.epilog.vector.body102:                        ; preds = %vec.epilog.vector.body102, %vec.epilog.ph97
  %index103 = phi i64 [ %vec.epilog.resume.val92, %vec.epilog.ph97 ], [ %index.next105, %vec.epilog.vector.body102 ] ; 2 uses
  %vec.ind104 = phi <4 x i16> [ %induction101, %vec.epilog.ph97 ], [ %vec.ind.next106, %vec.epilog.vector.body102 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %index103
  store <4 x i16> %vec.ind104, ptr %i.bt, align 2, !tbaa !107
  %index.next105 = add nuw i64 %index103, 4       ; 2 uses
  %vec.ind.next106 = add <4 x i16> %vec.ind104, splat (i16 4)
  %i.bu = icmp eq i64 %index.next105, %n.vec98
  br i1 %i.bu, label %vec.epilog.middle.block107, label %vec.epilog.vector.body102, !llvm.loop !346

vec.epilog.middle.block107:                       ; preds = %vec.epilog.vector.body102
  %cmp.n108 = icmp eq i64 %1, %n.vec98
  br i1 %cmp.n108, label %.loopexit, label %vec.epilog.scalar.ph94.preheader

vec.epilog.scalar.ph94.preheader:                 ; preds = %vector.scevcheck78, %iter.check93, %vec.epilog.iter.check95, %vec.epilog.middle.block107
  %indvars.iv.2.i.ph = phi i64 [ 0, %iter.check93 ], [ 0, %vector.scevcheck78 ], [ %n.vec83, %vec.epilog.iter.check95 ], [ %n.vec98, %vec.epilog.middle.block107 ]
  br label %vec.epilog.scalar.ph94

vec.epilog.scalar.ph94:                           ; preds = %vec.epilog.scalar.ph94.preheader, %vec.epilog.scalar.ph94
  %indvars.iv.2.i = phi i64 [ %indvars.iv.next.2.i, %vec.epilog.scalar.ph94 ], [ %indvars.iv.2.i.ph, %vec.epilog.scalar.ph94.preheader ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.2.i
  %i.bw = trunc nuw i64 %indvars.iv.2.i to i16
  store i16 %i.bw, ptr %i.bv, align 2, !tbaa !107
  %indvars.iv.next.2.i = add i64 %indvars.iv.2.i, 1 ; 2 uses
  %i.bx = and i64 %indvars.iv.next.2.i, 65535
  %i.by = icmp samesign ugt i64 %1, %i.bx
  br i1 %i.by, label %vec.epilog.scalar.ph94, label %.loopexit, !llvm.loop !347

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i.preheader, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.preheader.i ], [ %indvars.iv.i.ph, %.preheader.preheader.i.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.ca = trunc nuw i64 %indvars.iv.i to i16
  store i16 %i.ca, ptr %i.bz, align 2, !tbaa !107
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.cb = and i64 %indvars.iv.next.i, 65535
  %i.cc = icmp ugt i64 %1, %i.cb
  br i1 %i.cc, label %.preheader.preheader.i, label %iter.check61, !llvm.loop !348

_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit.split.us: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br label %.split.us.sink.split

.split.us.sink.split:                             ; preds = %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit, %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br label %.split.us

.split.us:                                        ; preds = %.split.us.sink.split, %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1, %.noexc13.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void

bb.b:                                             ; preds = %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit

.loopexit:                                        ; preds = %vec.epilog.scalar.ph94, %vec.epilog.middle.block107, %middle.block90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr %i.g, ptr %i.a, align 8, !tbaa !148
  %.idx = shl nuw nsw i64 %1, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx ; 2 uses
  %i.cf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %i.cg = shl nuw nsw i64 %i.cf, 1
  %i.ch = xor i64 %i.cg, 126
  invoke void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ce, i64 noundef %i.ch, ptr nonnull %i.a)
          to label %.noexc13 unwind label %bb.e

.noexc13:                                         ; preds = %.loopexit
  invoke void @_ZSt22__final_insertion_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SC_(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ce, ptr nonnull %i.a)
          to label %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit unwind label %bb.e

_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit: ; preds = %.noexc13
  %.pre22 = load i64, ptr %i.aa, align 8, !tbaa !158 ; 4 uses
  %.pre27 = shl nuw nsw i64 %.pre22, 1
  %.pre21 = load ptr, ptr %i.ab, align 8, !tbaa !147
  %.pre20 = load i64, ptr %0, align 8, !tbaa !150
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.pre20
  store ptr %i.ci, ptr %i.a, align 8, !tbaa !148
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.pre21, i64 %.pre22 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.pre27 ; 2 uses
  %.not.i.i.1 = icmp eq i64 %.pre22, 0
  br i1 %.not.i.i.1, label %.split.us.sink.split, label %bb.c

bb.c:                                             ; preds = %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit
  %i.cl = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre22, i1 true)
  %i.cm = shl nuw nsw i64 %i.cl, 1
  %i.cn = xor i64 %i.cm, 126
  invoke void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ck, i64 noundef %i.cn, ptr nonnull %i.a)
          to label %.noexc13.1 unwind label %bb.e

.noexc13.1:                                       ; preds = %bb.c
  invoke void @_ZSt22__final_insertion_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SC_(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ck, ptr nonnull %i.a)
          to label %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1 unwind label %bb.e

_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1: ; preds = %.noexc13.1
  %.pre23 = load ptr, ptr %i.b, align 8, !tbaa !148
  %.pre24 = load i64, ptr %0, align 8, !tbaa !150
  %.pre25 = load ptr, ptr %i.ab, align 8, !tbaa !147
  %.pre26 = load i64, ptr %i.aa, align 8, !tbaa !158 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %.idx32 = shl i64 %.pre24, 3
  %i.co = getelementptr inbounds nuw i8, ptr %.pre23, i64 %.idx32
  store ptr %i.co, ptr %i.a, align 8, !tbaa !148
  %.idx33 = shl i64 %.pre26, 2
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre25, i64 %.idx33 ; 3 uses
  %.idx.2 = shl nuw nsw i64 %.pre26, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx.2 ; 2 uses
  %.not.i.i.2 = icmp eq i64 %.pre26, 0
  br i1 %.not.i.i.2, label %.split.us, label %bb.d

bb.d:                                             ; preds = %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1
  %i.cr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre26, i1 true)
  %i.cs = shl nuw nsw i64 %i.cr, 1
  %i.ct = xor i64 %i.cs, 126
  invoke void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cq, i64 noundef %i.ct, ptr nonnull %i.a)
          to label %.noexc13.2 unwind label %bb.e

.noexc13.2:                                       ; preds = %bb.d
  invoke void @_ZSt22__final_insertion_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SC_(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cq, ptr nonnull %i.a)
          to label %.split.us unwind label %bb.e

bb.e:                                             ; preds = %.noexc13.2, %bb.d, %.noexc13.1, %bb.c, %.noexc13, %.loopexit
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.cv = load ptr, ptr %i.ab, align 8, !tbaa !147 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.cv) #27
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit:       ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.b ], [ %i.cu, %bb.e ], [ %i.cu, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i ]
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !148 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i15, label %_ZN8k_d_tree6PointsILh3EfED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cw) #27
  br label %_ZN8k_d_tree6PointsILh3EfED2Ev.exit

_ZN8k_d_tree6PointsILh3EfED2Ev.exit:              ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
end_hunk_1
