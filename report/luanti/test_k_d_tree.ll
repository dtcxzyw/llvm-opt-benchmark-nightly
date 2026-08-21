inline.NumInlined: 1717
inline.NumDeleted: 814
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm:bb.a
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #21
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !23
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !124  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  store ptr %i.w, ptr %3, align 8, !tbaa !27
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !124
  store ptr %3, ptr %i.x, align 8, !tbaa !27
  br label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35
  store ptr %i.z, ptr %3, align 8, !tbaa !27
  store ptr %3, ptr %i.y, align 8, !tbaa !35
  %i.aa = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !23
  %i.ad = load i16, ptr %i.ab, align 2, !tbaa !25
  %i.ae = zext i16 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !124
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !124
  br label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit

_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !204
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !204
  ret ptr %3
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !205

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !206
  br label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !205

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #23 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !35
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !27 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !25
  %i.l = zext i16 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !124  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !35
  store ptr %i.p, ptr %.02530, align 8, !tbaa !27
  store ptr %.02530, ptr %i.g, align 8, !tbaa !35
  store ptr %i.g, ptr %i.n, align 8, !tbaa !124
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !27
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !124
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !27
  store ptr %i.s, ptr %.02530, align 8, !tbaa !27
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !124
  store ptr %.02530, ptr %i.t, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !207

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !23
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #20
  br label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EttE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !23
  store ptr %.0.i, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8k_d_tree12SortedPointsILh3EtEC2ERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !74
  %i.b = load i64, ptr %2, align 8, !tbaa !74
  %i.c = add i64 %i.b, %i.a                       ; 5 uses
  store i64 %i.c, ptr %0, align 8, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.e = mul i64 %i.c, 3
  %i.f = mul i64 %i.c, 6
  %.inv.i = icmp sgt i64 %i.e, -1
  %i.g = select i1 %.inv.i, i64 %i.f, i64 -1      ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #23 ; 3 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #23
          to label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit unwind label %_ZN8k_d_tree6PointsILh3EtED2Ev.exit

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit:       ; preds = %bb.a
  store i64 %i.c, ptr %i.i, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit, %._crit_edge
  %i.r = phi i64 [ %i.c, %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit ], [ %i.cf, %._crit_edge ] ; 2 uses
  %i.s = phi ptr [ %i.h, %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit ], [ %i.cg, %._crit_edge ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit ], [ %indvars.iv.next, %._crit_edge ] ; 7 uses
  %3 = shl nuw nsw i64 %indvars.iv, 1
  %4 = add nuw i64 %3, 2
  %i.t = shl nuw nsw i64 %indvars.iv, 1
  %i.u = add nuw i64 %i.t, 2
  %i.v = load i64, ptr %1, align 8, !tbaa !74     ; 3 uses
  %i.w = icmp ugt i64 %i.v, 1
  br i1 %i.w, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.i, label %.split.us.i, !prof !59

.split.us.i:                                      ; preds = %bb.c
  %i.x = icmp eq i64 %i.v, 1
  br i1 %i.x, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.us.preheader.i, label %_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit

_ZSt4copyIPKtPtET0_T_S4_S3_.exit.us.preheader.i:  ; preds = %.split.us.i
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !72   ; 3 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !25
  store i16 %i.z, ptr %i.s, align 2, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %gep.1.i = getelementptr [2 x i8], ptr %i.s, i64 %i.r
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !25
  store i16 %i.ab, ptr %gep.1.i, align 2, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %gep.2.idx.i = shl i64 %i.r, 2
  %gep.2.i = getelementptr i8, ptr %i.s, i64 %gep.2.idx.i
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !25
  store i16 %i.ad, ptr %gep.2.i, align 2, !tbaa !25
  br label %_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit

_ZSt4copyIPKtPtET0_T_S4_S3_.exit.i:               ; preds = %bb.c
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !72
  %.idx.i = shl nuw nsw i64 %i.v, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.s, ptr align 2 %i.ae, i64 %.idx.i, i1 false)
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !72 ; 2 uses
  %.pre14.i = load i64, ptr %1, align 8, !tbaa !74 ; 5 uses
  %.pre15.i = load ptr, ptr %i.d, align 8, !tbaa !72 ; 2 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.pre14.i ; 2 uses
  %i.ag = load i64, ptr %0, align 8, !tbaa !74    ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.pre15.i, i64 %i.ag ; 2 uses
  %i.ai = icmp ugt i64 %.pre14.i, 1
  br i1 %i.ai, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.i, label %bb.d, !prof !59

bb.d:                                             ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.i
  %i.aj = icmp eq i64 %.pre14.i, 1
  br i1 %i.aj, label %bb.e, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.thread.i

bb.e:                                             ; preds = %bb.d
  %i.ak = load i16, ptr %i.af, align 2, !tbaa !25
  store i16 %i.ak, ptr %i.ah, align 2, !tbaa !25
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.thread.i

_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.thread.i:      ; preds = %bb.e, %bb.d
  %.ph.i = phi i64 [ 0, %bb.d ], [ 1, %bb.e ]     ; 2 uses
  %.idx2325.i = shl nuw nsw i64 %.ph.i, 2
  %i.al = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2325.i
  %.idx2426.i = shl i64 %i.ag, 2
  %i.am = getelementptr inbounds nuw i8, ptr %.pre15.i, i64 %.idx2426.i
  br label %bb.f

_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.i:             ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.i
  %.idx.1.i = shl nuw nsw i64 %.pre14.i, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.ah, ptr nonnull align 2 %i.af, i64 %.idx.1.i, i1 false)
  %.pre16.i = load ptr, ptr %i.l, align 8, !tbaa !72
  %.pre17.i = load i64, ptr %1, align 8, !tbaa !74 ; 5 uses
  %.pre18.i = load ptr, ptr %i.d, align 8, !tbaa !72
  %.pre19.i = load i64, ptr %0, align 8, !tbaa !74
  %.idx23.i = shl i64 %.pre17.i, 2
  %i.an = getelementptr inbounds nuw i8, ptr %.pre16.i, i64 %.idx23.i ; 2 uses
  %.idx24.i = shl i64 %.pre19.i, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre18.i, i64 %.idx24.i ; 2 uses
  %i.ap = icmp ugt i64 %.pre17.i, 1
  br i1 %i.ap, label %bb.h, label %bb.f, !prof !208

bb.f:                                             ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.i, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.thread.i
  %i.aq = phi i64 [ %.pre14.i, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.thread.i ], [ %.pre17.i, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.i ] ; 2 uses
  %i.ar = phi ptr [ %i.am, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.thread.i ], [ %i.ao, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.i ]
  %i.as = phi ptr [ %i.al, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.thread.i ], [ %i.an, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.i ]
  %i.at = phi i64 [ %.ph.i, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.thread.i ], [ %.pre17.i, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.i ]
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.g, label %_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit

bb.g:                                             ; preds = %bb.f
  %i.av = load i16, ptr %i.as, align 2, !tbaa !25
  store i16 %i.av, ptr %i.ar, align 2, !tbaa !25
  br label %_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit

bb.h:                                             ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.i
  %.idx.2.i = shl nuw nsw i64 %.pre17.i, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.ao, ptr align 2 %i.an, i64 %.idx.2.i, i1 false)
  %.pre = load i64, ptr %1, align 8, !tbaa !74
  br label %_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit

_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit:    ; preds = %bb.h, %bb.g, %bb.f, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.us.preheader.i, %.split.us.i
  %i.aw = phi i64 [ %.pre, %bb.h ], [ %i.aq, %bb.g ], [ %i.aq, %bb.f ], [ 1, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.us.preheader.i ], [ 0, %.split.us.i ]
  %i.ax = and i64 %i.aw, 65535                    ; 5 uses
  %i.ay = load i64, ptr %2, align 8, !tbaa !74    ; 3 uses
  %i.az = icmp ugt i64 %i.ay, 1
  br i1 %i.az, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.i74, label %.split.us.i69, !prof !59

.split.us.i69:                                    ; preds = %_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit
  %i.ba = icmp eq i64 %i.ay, 1
  %.pre120 = load ptr, ptr %i.d, align 8, !tbaa !72 ; 3 uses
  %.pre122 = load i64, ptr %0, align 8, !tbaa !74 ; 4 uses
  br i1 %i.ba, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.us.preheader.i70, label %_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit92

_ZSt4copyIPKtPtET0_T_S4_S3_.exit.us.preheader.i70: ; preds = %.split.us.i69
  %invariant.gep.i = getelementptr [2 x i8], ptr %.pre120, i64 %i.ax ; 3 uses
  %i.bb = load ptr, ptr %i.m, align 8, !tbaa !72  ; 3 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !25
  store i16 %i.bc, ptr %invariant.gep.i, align 2, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %gep.1.i71 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %.pre122
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !25
  store i16 %i.be, ptr %gep.1.i71, align 2, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %gep.2.idx.i72 = shl i64 %.pre122, 2
  %gep.2.i73 = getelementptr i8, ptr %invariant.gep.i, i64 %gep.2.idx.i72
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !25
  store i16 %i.bg, ptr %gep.2.i73, align 2, !tbaa !25
  br label %_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit92

_ZSt4copyIPKtPtET0_T_S4_S3_.exit.i74:             ; preds = %_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !72
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.ax
  %i.bj = load ptr, ptr %i.m, align 8, !tbaa !72
  %.idx.i75 = shl nuw nsw i64 %i.ay, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.bi, ptr align 2 %i.bj, i64 %.idx.i75, i1 false)
  %.pre.i76 = load ptr, ptr %i.m, align 8, !tbaa !72 ; 2 uses
  %.pre14.i77 = load i64, ptr %2, align 8, !tbaa !74 ; 4 uses
  %.pre15.i78 = load ptr, ptr %i.d, align 8, !tbaa !72 ; 3 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.pre.i76, i64 %.pre14.i77 ; 2 uses
  %i.bl = load i64, ptr %0, align 8, !tbaa !74    ; 3 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.pre15.i78, i64 %i.bl
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.ax ; 2 uses
  %i.bo = icmp ugt i64 %.pre14.i77, 1
  br i1 %i.bo, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.i83, label %bb.i, !prof !59

bb.i:                                             ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.i74
  %i.bp = icmp eq i64 %.pre14.i77, 1
  br i1 %i.bp, label %bb.j, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.thread.i79

bb.j:                                             ; preds = %bb.i
  %i.bq = load i16, ptr %i.bk, align 2, !tbaa !25
  store i16 %i.bq, ptr %i.bn, align 2, !tbaa !25
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.thread.i79

_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.thread.i79:    ; preds = %bb.j, %bb.i
  %.ph.i80 = phi i64 [ 0, %bb.i ], [ 1, %bb.j ]   ; 2 uses
  %.idx2325.i81 = shl nuw nsw i64 %.ph.i80, 2
  %i.br = getelementptr inbounds nuw i8, ptr %.pre.i76, i64 %.idx2325.i81
  %.idx2426.i82 = shl i64 %i.bl, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre15.i78, i64 %.idx2426.i82
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.ax
  br label %bb.k

_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.i83:           ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.i74
  %.idx.1.i84 = shl nuw nsw i64 %.pre14.i77, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.bn, ptr nonnull align 2 %i.bk, i64 %.idx.1.i84, i1 false)
  %.pre16.i85 = load ptr, ptr %i.m, align 8, !tbaa !72
  %.pre17.i86 = load i64, ptr %2, align 8, !tbaa !74 ; 4 uses
  %.pre18.i87 = load ptr, ptr %i.d, align 8, !tbaa !72 ; 2 uses
  %.pre19.i88 = load i64, ptr %0, align 8, !tbaa !74 ; 2 uses
  %.idx23.i89 = shl i64 %.pre17.i86, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre16.i85, i64 %.idx23.i89 ; 2 uses
  %.idx24.i90 = shl i64 %.pre19.i88, 2
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre18.i87, i64 %.idx24.i90
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.ax ; 2 uses
  %i.bx = icmp ugt i64 %.pre17.i86, 1
  br i1 %i.bx, label %bb.m, label %bb.k, !prof !208

bb.k:                                             ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.i83, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.thread.i79
  %i.by = phi i64 [ %i.bl, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.thread.i79 ], [ %.pre19.i88, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.i83 ] ; 2 uses
  %i.bz = phi ptr [ %.pre15.i78, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.thread.i79 ], [ %.pre18.i87, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.i83 ] ; 2 uses
  %i.ca = phi ptr [ %i.bt, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.thread.i79 ], [ %i.bw, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.i83 ]
  %i.cb = phi ptr [ %i.br, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.thread.i79 ], [ %i.bu, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.i83 ]
  %i.cc = phi i64 [ %.ph.i80, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.thread.i79 ], [ %.pre17.i86, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.i83 ]
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.l, label %_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit92

bb.l:                                             ; preds = %bb.k
  %i.ce = load i16, ptr %i.cb, align 2, !tbaa !25
  store i16 %i.ce, ptr %i.ca, align 2, !tbaa !25
  br label %_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit92

bb.m:                                             ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.1.i83
  %.idx.2.i91 = shl nuw nsw i64 %.pre17.i86, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.bw, ptr align 2 %i.bu, i64 %.idx.2.i91, i1 false)
  %.pre119 = load ptr, ptr %i.d, align 8, !tbaa !72
  %.pre121 = load i64, ptr %0, align 8, !tbaa !74
  br label %_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit92

_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit92:  ; preds = %bb.m, %bb.l, %bb.k, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.us.preheader.i70, %.split.us.i69
  %i.cf = phi i64 [ %.pre121, %bb.m ], [ %i.by, %bb.l ], [ %i.by, %bb.k ], [ %.pre122, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.us.preheader.i70 ], [ %.pre122, %.split.us.i69 ] ; 2 uses
  %i.cg = phi ptr [ %.pre119, %bb.m ], [ %i.bz, %bb.l ], [ %i.bz, %bb.k ], [ %.pre120, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.us.preheader.i70 ], [ %.pre120, %.split.us.i69 ] ; 2 uses
  %i.ch = mul i64 %i.cf, %indvars.iv
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.ch ; 2 uses
  %i.cj = load ptr, ptr %i.o, align 8, !tbaa !72  ; 2 uses
  %i.ck = ptrtoaddr ptr %i.cj to i64
  %i.cl = load i64, ptr %i.n, align 8, !tbaa !74  ; 4 uses
  %i.cm = mul i64 %i.cl, %indvars.iv
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.cm ; 3 uses
  %i.co = load ptr, ptr %i.q, align 8, !tbaa !72  ; 2 uses
  %i.cp = ptrtoaddr ptr %i.co to i64
  %i.cq = load i64, ptr %i.p, align 8, !tbaa !74  ; 5 uses
  %i.cr = mul i64 %i.cq, %indvars.iv
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cr ; 4 uses
  %i.ct = load ptr, ptr %i.k, align 8, !tbaa !72
  %i.cu = load i64, ptr %i.i, align 8, !tbaa !74
  %i.cv = mul i64 %i.cu, %indvars.iv
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.cv ; 2 uses
  %.idx = shl nuw nsw i64 %i.cl, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx ; 3 uses
  %.idx116 = shl nuw nsw i64 %i.cq, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx116
  %.not97 = icmp eq i64 %i.cl, 0
  %.not6198 = icmp eq i64 %i.cq, 0
  %or.cond99 = select i1 %.not97, i1 true, i1 %.not6198
  br i1 %or.cond99, label %.critedge.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit92
  %i.cz = load i64, ptr %1, align 8, !tbaa !74
  br label %bb.n

.critedge.preheader:                              ; preds = %bb.n, %_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit92
  %.049.lcssa = phi ptr [ %i.cn, %_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit92 ], [ %.150, %bb.n ] ; 7 uses
  %.046.lcssa = phi ptr [ %i.cs, %_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit92 ], [ %.147, %bb.n ] ; 7 uses
  %.0.lcssa = phi ptr [ %i.cw, %_ZN8k_d_tree6PointsILh3EtE6assignEtRKS1_.exit92 ], [ %.1, %bb.n ] ; 7 uses
  %.046.lcssa130 = ptrtoaddr ptr %.046.lcssa to i64 ; 2 uses
  %.not62106 = icmp eq ptr %.049.lcssa, %i.cx
  br i1 %.not62106, label %.preheader, label %iter.check166

iter.check166:                                    ; preds = %.critedge.preheader
  %.049.lcssa148 = ptrtoaddr ptr %.049.lcssa to i64 ; 2 uses
  %.0.lcssa147 = ptrtoaddr ptr %.0.lcssa to i64
  %i.da = add i64 %i.ck, -2
  %i.db = mul i64 %i.cl, %4
  %i.dc = add i64 %i.da, %i.db
  %i.dd = sub i64 %i.dc, %.049.lcssa148           ; 3 uses
  %i.de = lshr i64 %i.dd, 1
  %i.df = add nuw i64 %i.de, 1                    ; 5 uses
  %min.iters.check150 = icmp ult i64 %i.dd, 6
  %i.dg = sub i64 %.049.lcssa148, %.0.lcssa147
  %diff.check149 = icmp ugt i64 %i.dg, -32
  %or.cond182 = select i1 %min.iters.check150, i1 true, i1 %diff.check149
  br i1 %or.cond182, label %.critedge.preheader184, label %vector.main.loop.iter.check151

vector.main.loop.iter.check151:                   ; preds = %iter.check166
  %min.iters.check152 = icmp ult i64 %i.dd, 30
  br i1 %min.iters.check152, label %vec.epilog.ph170, label %vector.ph153

vector.ph153:                                     ; preds = %vector.main.loop.iter.check151
  %i.dh = and i64 %i.df, 12
  %n.vec154 = and i64 %i.df, -16                  ; 4 uses
  %i.di = shl i64 %n.vec154, 1                    ; 2 uses
  %i.dj = getelementptr i8, ptr %.0.lcssa, i64 %i.di ; 2 uses
  %i.dk = getelementptr i8, ptr %.049.lcssa, i64 %i.di
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph153
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next161, %vector.body155 ] ; 2 uses
  %i.dl = shl i64 %index156, 1                    ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.0.lcssa, i64 %i.dl ; 2 uses
  %next.gep158 = getelementptr i8, ptr %.049.lcssa, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load159 = load <8 x i16>, ptr %next.gep158, align 2, !tbaa !25
  %wide.load160 = load <8 x i16>, ptr %i.dm, align 2, !tbaa !25
  %i.dn = getelementptr i8, ptr %next.gep157, i64 16
  store <8 x i16> %wide.load159, ptr %next.gep157, align 2, !tbaa !25
  store <8 x i16> %wide.load160, ptr %i.dn, align 2, !tbaa !25
  %index.next161 = add nuw i64 %index156, 16      ; 2 uses
  %i.do = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.do, label %middle.block162, label %vector.body155, !llvm.loop !209

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %i.df, %n.vec154
  br i1 %cmp.n163, label %.preheader, label %vec.epilog.iter.check168

vec.epilog.iter.check168:                         ; preds = %middle.block162
  %min.epilog.iters.check169 = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check169, label %.critedge.preheader184, label %vec.epilog.ph170, !prof !212

vec.epilog.ph170:                                 ; preds = %vector.main.loop.iter.check151, %vec.epilog.iter.check168
  %vec.epilog.resume.val164 = phi i64 [ %n.vec154, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check151 ]
  %n.vec171 = and i64 %i.df, -4                   ; 3 uses
  %i.dp = shl i64 %n.vec171, 1                    ; 2 uses
  %i.dq = getelementptr i8, ptr %.0.lcssa, i64 %i.dp ; 2 uses
  %i.dr = getelementptr i8, ptr %.049.lcssa, i64 %i.dp
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph170
  %index173 = phi i64 [ %vec.epilog.resume.val164, %vec.epilog.ph170 ], [ %index.next177, %vec.epilog.vector.body172 ] ; 2 uses
  %i.ds = shl i64 %index173, 1                    ; 2 uses
  %next.gep174 = getelementptr i8, ptr %.0.lcssa, i64 %i.ds
  %next.gep175 = getelementptr i8, ptr %.049.lcssa, i64 %i.ds
  %wide.load176 = load <4 x i16>, ptr %next.gep175, align 2, !tbaa !25
  store <4 x i16> %wide.load176, ptr %next.gep174, align 2, !tbaa !25
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.dt, label %vec.epilog.middle.block178, label %vec.epilog.vector.body172, !llvm.loop !213

vec.epilog.middle.block178:                       ; preds = %vec.epilog.vector.body172
  %cmp.n179 = icmp eq i64 %i.df, %n.vec171
  br i1 %cmp.n179, label %.preheader, label %.critedge.preheader184

.critedge.preheader184:                           ; preds = %iter.check166, %vec.epilog.iter.check168, %vec.epilog.middle.block178
  %.2108.ph = phi ptr [ %.0.lcssa, %iter.check166 ], [ %i.dj, %vec.epilog.iter.check168 ], [ %i.dq, %vec.epilog.middle.block178 ]
  %.251107.ph = phi ptr [ %.049.lcssa, %iter.check166 ], [ %i.dk, %vec.epilog.iter.check168 ], [ %i.dr, %vec.epilog.middle.block178 ]
  br label %.critedge

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %.0102 = phi ptr [ %i.cw, %.lr.ph ], [ %.1, %bb.n ] ; 2 uses
  %.046101 = phi ptr [ %i.cs, %.lr.ph ], [ %.147, %bb.n ] ; 2 uses
  %.049100 = phi ptr [ %i.cn, %.lr.ph ], [ %.150, %bb.n ] ; 2 uses
  %i.du = load i16, ptr %.049100, align 2, !tbaa !25 ; 2 uses
  %i.dv = load i16, ptr %.046101, align 2, !tbaa !25
  %i.dw = zext i16 %i.dv to i64
  %i.dx = add i64 %i.cz, %i.dw                    ; 2 uses
  %i.dy = zext i16 %i.du to i64
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !25
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.dx
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !25
  %.not68 = icmp ugt i16 %i.ea, %i.ec             ; 3 uses
  %i.ed = trunc i64 %i.dx to i16
  %.sink = select i1 %.not68, i16 %i.ed, i16 %i.du
  %.150.idx = select i1 %.not68, i64 0, i64 2
  %.150 = getelementptr inbounds nuw i8, ptr %.049100, i64 %.150.idx ; 3 uses
  %.147.idx = select i1 %.not68, i64 2, i64 0
  %.147 = getelementptr inbounds nuw i8, ptr %.046101, i64 %.147.idx ; 3 uses
  store i16 %.sink, ptr %.0102, align 2, !tbaa !25
  %.1 = getelementptr inbounds nuw i8, ptr %.0102, i64 2 ; 2 uses
  %.not = icmp eq ptr %.150, %i.cx
  %.not61 = icmp eq ptr %.147, %i.cy
  %or.cond = select i1 %.not, i1 true, i1 %.not61
  br i1 %or.cond, label %.critedge.preheader, label %bb.n, !llvm.loop !214

.preheader:                                       ; preds = %.critedge, %middle.block162, %vec.epilog.middle.block178, %.critedge.preheader
  %.2.lcssa = phi ptr [ %.0.lcssa, %.critedge.preheader ], [ %i.dq, %vec.epilog.middle.block178 ], [ %i.dj, %middle.block162 ], [ %i.fg, %.critedge ] ; 6 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.cq ; 2 uses
  %.not63111 = icmp eq ptr %.046.lcssa, %i.ee
  br i1 %.not63111, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %.2.lcssa129 = ptrtoaddr ptr %.2.lcssa to i64
  %i.ef = load i64, ptr %1, align 8, !tbaa !74
  %i.eg = trunc i64 %i.ef to i16                  ; 3 uses
  %i.eh = add i64 %i.cp, -2
  %i.ei = mul i64 %i.cq, %i.u
  %i.ej = add i64 %i.eh, %i.ei
  %i.ek = sub i64 %i.ej, %.046.lcssa130           ; 3 uses
  %i.el = lshr i64 %i.ek, 1
  %i.em = add nuw i64 %i.el, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ek, 6
  %i.en = sub i64 %.046.lcssa130, %.2.lcssa129
  %diff.check = icmp ugt i64 %i.en, -32
  %or.cond183 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond183, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check131 = icmp ult i64 %i.ek, 30
  br i1 %min.iters.check131, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.eo = and i64 %i.em, 12
  %n.vec = and i64 %i.em, -16                     ; 4 uses
  %i.ep = shl i64 %n.vec, 1                       ; 2 uses
  %i.eq = getelementptr i8, ptr %.2.lcssa, i64 %i.ep
  %i.er = getelementptr i8, ptr %.046.lcssa, i64 %i.ep
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.eg, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.es = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.2.lcssa, i64 %i.es ; 2 uses
  %next.gep132 = getelementptr i8, ptr %.046.lcssa, i64 %i.es ; 2 uses
  %i.et = getelementptr i8, ptr %next.gep132, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep132, align 2, !tbaa !25
  %wide.load133 = load <8 x i16>, ptr %i.et, align 2, !tbaa !25
  %i.eu = add <8 x i16> %wide.load, %broadcast.splat
  %i.ev = add <8 x i16> %wide.load133, %broadcast.splat
  %i.ew = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.eu, ptr %next.gep, align 2, !tbaa !25
  store <8 x i16> %i.ev, ptr %i.ew, align 2, !tbaa !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.em, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.eo, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !212

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec135 = and i64 %i.em, -4                   ; 3 uses
  %i.ey = shl i64 %n.vec135, 1                    ; 2 uses
  %i.ez = getelementptr i8, ptr %.2.lcssa, i64 %i.ey
  %i.fa = getelementptr i8, ptr %.046.lcssa, i64 %i.ey
  %broadcast.splatinsert136 = insertelement <4 x i16> poison, i16 %i.eg, i64 0
  %broadcast.splat137 = shufflevector <4 x i16> %broadcast.splatinsert136, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next142, %vec.epilog.vector.body ] ; 2 uses
  %i.fb = shl i64 %index138, 1                    ; 2 uses
  %next.gep139 = getelementptr i8, ptr %.2.lcssa, i64 %i.fb
  %next.gep140 = getelementptr i8, ptr %.046.lcssa, i64 %i.fb
  %wide.load141 = load <4 x i16>, ptr %next.gep140, align 2, !tbaa !25
  %i.fc = add <4 x i16> %wide.load141, %broadcast.splat137
  store <4 x i16> %i.fc, ptr %next.gep139, align 2, !tbaa !25
  %index.next142 = add nuw i64 %index138, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next142, %n.vec135
  br i1 %i.fd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !216

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n143 = icmp eq i64 %i.em, %n.vec135
  br i1 %cmp.n143, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3113.ph = phi ptr [ %.2.lcssa, %iter.check ], [ %i.eq, %vec.epilog.iter.check ], [ %i.ez, %vec.epilog.middle.block ]
  %.248112.ph = phi ptr [ %.046.lcssa, %iter.check ], [ %i.er, %vec.epilog.iter.check ], [ %i.fa, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.critedge:                                        ; preds = %.critedge.preheader184, %.critedge
  %.2108 = phi ptr [ %i.fg, %.critedge ], [ %.2108.ph, %.critedge.preheader184 ] ; 2 uses
  %.251107 = phi ptr [ %i.fe, %.critedge ], [ %.251107.ph, %.critedge.preheader184 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.251107, i64 2 ; 2 uses
  %i.ff = load i16, ptr %.251107, align 2, !tbaa !25
  %i.fg = getelementptr inbounds nuw i8, ptr %.2108, i64 2 ; 2 uses
  store i16 %i.ff, ptr %.2108, align 2, !tbaa !25
  %.not62 = icmp eq ptr %i.fe, %i.cx
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN8k_d_tree6KdTreeILh3EttEESaIS2_EE8pop_backEv
define linkonce_odr dso_local void @_ZNSt6vectorIN8k_d_tree6KdTreeILh3EttEESaIS2_EE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 7 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -88
  store ptr %i.c, ptr %i.a, align 8, !tbaa !33
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85   ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.l
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.j) #20
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.b, i64 -48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72   ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #20
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 -56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72   ; 2 uses
  %.not.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #20
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #20
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i:   ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i
  %i.t = getelementptr inbounds i8, ptr %i.b, i64 -80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN8k_d_tree6KdTreeILh3EttED2Ev.exit, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #20
  br label %_ZN8k_d_tree6KdTreeILh3EttED2Ev.exit

_ZN8k_d_tree6KdTreeILh3EttED2Ev.exit:             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8k_d_tree12SortedPointsILh3EtEC2EmSt5arrayIPKtLm3EE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef byval(%"struct.std::array.57") align 8 %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 19 uses
  store i64 %1, ptr %0, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = mul i64 %1, 3
  %i.d = mul i64 %1, 6
  %.inv.i.i = icmp sgt i64 %i.c, -1
  %i.e = select i1 %.inv.i.i, i64 %i.d, i64 -1    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #23 ; 8 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !72
  %i.g = icmp ugt i64 %1, 1
  br i1 %i.g, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.us.preheader.i, label %.split.i, !prof !59

_ZSt4copyIPKtPtET0_T_S4_S3_.exit.us.preheader.i:  ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %1, 1                 ; 3 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !72
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.f, ptr align 2 %i.h, i64 %.idx.i, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.k, ptr align 2 %i.j, i64 %.idx.i, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72
  %.idx17.i = shl i64 %1, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx17.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.n, ptr align 2 %i.m, i64 %.idx.i, i1 false)
  br label %_ZN8k_d_tree6PointsILh3EtEC2EmRKSt5arrayIPKtLm3EE.exit

.split.i:                                         ; preds = %bb.a
  %i.o = icmp eq i64 %1, 1
  br i1 %i.o, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.preheader.i, label %_ZN8k_d_tree6PointsILh3EtEC2EmRKSt5arrayIPKtLm3EE.exit

_ZSt4copyIPKtPtET0_T_S4_S3_.exit.preheader.i:     ; preds = %.split.i
  %i.p = load ptr, ptr %2, align 8, !tbaa !72
  %i.q = load i16, ptr %i.p, align 2, !tbaa !25
  store i16 %i.q, ptr %i.f, align 2, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.u = load i16, ptr %i.s, align 2, !tbaa !25
  store i16 %i.u, ptr %i.t, align 2, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.y = load i16, ptr %i.w, align 2, !tbaa !25
  store i16 %i.y, ptr %i.x, align 2, !tbaa !25
  br label %_ZN8k_d_tree6PointsILh3EtEC2EmRKSt5arrayIPKtLm3EE.exit

_ZN8k_d_tree6PointsILh3EtEC2EmRKSt5arrayIPKtLm3EE.exit: ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.us.preheader.i, %.split.i, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit.preheader.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 %1, ptr %i.z, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ab = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #23
          to label %.noexc unwind label %bb.b     ; 9 uses

.noexc:                                           ; preds = %_ZN8k_d_tree6PointsILh3EtEC2EmRKSt5arrayIPKtLm3EE.exit
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !72
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit.split.us, label %iter.check

iter.check:                                       ; preds = %.noexc
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.preheader.preheader.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ac = add i64 %1, -1                          ; 2 uses
  %i.ad = and i64 %i.ac, 65535
  %i.ae = icmp eq i64 %i.ad, 65535
  %i.af = icmp ugt i64 %i.ac, 65535
  %i.ag = or i1 %i.ae, %i.af
  br i1 %i.ag, label %.preheader.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check39 = icmp ult i64 %1, 16
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ah = and i64 %1, 12
  %n.vec = and i64 %1, 131056                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <8 x i16> %vec.ind, ptr %i.ai, align 2, !tbaa !25
  store <8 x i16> %step.add, ptr %i.aj, align 2, !tbaa !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !263

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %iter.check62, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader.i.preheader, label %vec.epilog.ph, !prof !212

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec40 = and i64 %1, 131068                   ; 3 uses
  %i.al = trunc i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.al, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind42 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next44, %vec.epilog.vector.body ] ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index41
  store <4 x i16> %vec.ind42, ptr %i.am, align 2, !tbaa !25
  %index.next43 = add nuw i64 %index41, 4         ; 2 uses
  %vec.ind.next44 = add <4 x i16> %vec.ind42, splat (i16 4)
  %i.an = icmp eq i64 %index.next43, %n.vec40
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !264

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %1, %n.vec40
  br i1 %cmp.n45, label %iter.check62, label %.preheader.preheader.i.preheader

.preheader.preheader.i.preheader:                 ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec40, %vec.epilog.middle.block ]
  br label %.preheader.preheader.i

iter.check62:                                     ; preds = %.preheader.preheader.i, %vec.epilog.middle.block, %middle.block
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %1 ; 3 uses
  %umax47 = tail call i64 @llvm.umax.i64(i64 %1, i64 1) ; 7 uses
  %min.iters.check48 = icmp ult i64 %1, 4
  br i1 %min.iters.check48, label %vec.epilog.scalar.ph63.preheader, label %vector.scevcheck46

vector.scevcheck46:                               ; preds = %iter.check62
  %i.ap = add i64 %1, -1                          ; 2 uses
  %i.aq = and i64 %i.ap, 65535
  %i.ar = icmp eq i64 %i.aq, 65535
  %i.as = icmp ugt i64 %i.ap, 65535
  %i.at = or i1 %i.ar, %i.as
  br i1 %i.at, label %vec.epilog.scalar.ph63.preheader, label %vector.main.loop.iter.check49

vector.main.loop.iter.check49:                    ; preds = %vector.scevcheck46
  %min.iters.check50 = icmp ult i64 %1, 16
  br i1 %min.iters.check50, label %vec.epilog.ph66, label %vector.ph51

vector.ph51:                                      ; preds = %vector.main.loop.iter.check49
  %i.au = and i64 %umax47, 12
  %n.vec52 = and i64 %umax47, 131056              ; 4 uses
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph51
  %index54 = phi i64 [ 0, %vector.ph51 ], [ %index.next57, %vector.body53 ] ; 2 uses
  %vec.ind55 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph51 ], [ %vec.ind.next58, %vector.body53 ] ; 3 uses
  %step.add56 = add <8 x i16> %vec.ind55, splat (i16 8)
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %index54 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <8 x i16> %vec.ind55, ptr %i.av, align 2, !tbaa !25
  store <8 x i16> %step.add56, ptr %i.aw, align 2, !tbaa !25
  %index.next57 = add nuw i64 %index54, 16        ; 2 uses
  %vec.ind.next58 = add <8 x i16> %vec.ind55, splat (i16 16)
  %i.ax = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.ax, label %middle.block59, label %vector.body53, !llvm.loop !265

middle.block59:                                   ; preds = %vector.body53
  %cmp.n60 = icmp eq i64 %1, %n.vec52
  br i1 %cmp.n60, label %iter.check94, label %vec.epilog.iter.check64

vec.epilog.iter.check64:                          ; preds = %middle.block59
  %min.epilog.iters.check65 = icmp eq i64 %i.au, 0
  br i1 %min.epilog.iters.check65, label %vec.epilog.scalar.ph63.preheader, label %vec.epilog.ph66, !prof !212

vec.epilog.ph66:                                  ; preds = %vector.main.loop.iter.check49, %vec.epilog.iter.check64
  %vec.epilog.resume.val61 = phi i64 [ %n.vec52, %vec.epilog.iter.check64 ], [ 0, %vector.main.loop.iter.check49 ] ; 2 uses
  %n.vec67 = and i64 %umax47, 131068              ; 3 uses
  %i.ay = trunc i64 %vec.epilog.resume.val61 to i16
  %broadcast.splatinsert68 = insertelement <4 x i16> poison, i16 %i.ay, i64 0
  %broadcast.splat69 = shufflevector <4 x i16> %broadcast.splatinsert68, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction70 = or disjoint <4 x i16> %broadcast.splat69, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body71

vec.epilog.vector.body71:                         ; preds = %vec.epilog.vector.body71, %vec.epilog.ph66
  %index72 = phi i64 [ %vec.epilog.resume.val61, %vec.epilog.ph66 ], [ %index.next74, %vec.epilog.vector.body71 ] ; 2 uses
  %vec.ind73 = phi <4 x i16> [ %induction70, %vec.epilog.ph66 ], [ %vec.ind.next75, %vec.epilog.vector.body71 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %index72
  store <4 x i16> %vec.ind73, ptr %i.az, align 2, !tbaa !25
  %index.next74 = add nuw i64 %index72, 4         ; 2 uses
  %vec.ind.next75 = add <4 x i16> %vec.ind73, splat (i16 4)
  %i.ba = icmp eq i64 %index.next74, %n.vec67
  br i1 %i.ba, label %vec.epilog.middle.block76, label %vec.epilog.vector.body71, !llvm.loop !266

vec.epilog.middle.block76:                        ; preds = %vec.epilog.vector.body71
  %cmp.n77 = icmp eq i64 %1, %n.vec67
  br i1 %cmp.n77, label %iter.check94, label %vec.epilog.scalar.ph63.preheader

vec.epilog.scalar.ph63.preheader:                 ; preds = %vector.scevcheck46, %iter.check62, %vec.epilog.iter.check64, %vec.epilog.middle.block76
  %indvars.iv.1.i.ph = phi i64 [ 0, %iter.check62 ], [ 0, %vector.scevcheck46 ], [ %n.vec52, %vec.epilog.iter.check64 ], [ %n.vec67, %vec.epilog.middle.block76 ]
  br label %vec.epilog.scalar.ph63

vec.epilog.scalar.ph63:                           ; preds = %vec.epilog.scalar.ph63.preheader, %vec.epilog.scalar.ph63
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %vec.epilog.scalar.ph63 ], [ %indvars.iv.1.i.ph, %vec.epilog.scalar.ph63.preheader ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %indvars.iv.1.i
  %i.bc = trunc nuw i64 %indvars.iv.1.i to i16
  store i16 %i.bc, ptr %i.bb, align 2, !tbaa !25
  %indvars.iv.next.1.i = add i64 %indvars.iv.1.i, 1 ; 2 uses
  %i.bd = and i64 %indvars.iv.next.1.i, 65535
  %i.be = icmp samesign ugt i64 %1, %i.bd
  br i1 %i.be, label %vec.epilog.scalar.ph63, label %iter.check94, !llvm.loop !267

iter.check94:                                     ; preds = %vec.epilog.scalar.ph63, %vec.epilog.middle.block76, %middle.block59
  %.idx.i13 = shl nuw nsw i64 %1, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i13 ; 3 uses
  %min.iters.check80 = icmp ult i64 %1, 4
  br i1 %min.iters.check80, label %vec.epilog.scalar.ph95.preheader, label %vector.scevcheck79

vector.scevcheck79:                               ; preds = %iter.check94
  %i.bg = add i64 %umax47, -1                     ; 2 uses
  %i.bh = and i64 %i.bg, 65535
  %i.bi = icmp eq i64 %i.bh, 65535
  %i.bj = icmp ugt i64 %i.bg, 65535
  %i.bk = or i1 %i.bi, %i.bj
  br i1 %i.bk, label %vec.epilog.scalar.ph95.preheader, label %vector.main.loop.iter.check81

vector.main.loop.iter.check81:                    ; preds = %vector.scevcheck79
  %min.iters.check82 = icmp ult i64 %1, 16
  br i1 %min.iters.check82, label %vec.epilog.ph98, label %vector.ph83

vector.ph83:                                      ; preds = %vector.main.loop.iter.check81
  %i.bl = and i64 %umax47, 12
  %n.vec84 = and i64 %umax47, 131056              ; 4 uses
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph83
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next89, %vector.body85 ] ; 2 uses
  %vec.ind87 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph83 ], [ %vec.ind.next90, %vector.body85 ] ; 3 uses
  %step.add88 = add <8 x i16> %vec.ind87, splat (i16 8)
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %index86 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <8 x i16> %vec.ind87, ptr %i.bm, align 2, !tbaa !25
  store <8 x i16> %step.add88, ptr %i.bn, align 2, !tbaa !25
  %index.next89 = add nuw i64 %index86, 16        ; 2 uses
  %vec.ind.next90 = add <8 x i16> %vec.ind87, splat (i16 16)
  %i.bo = icmp eq i64 %index.next89, %n.vec84
  br i1 %i.bo, label %middle.block91, label %vector.body85, !llvm.loop !268

middle.block91:                                   ; preds = %vector.body85
  %cmp.n92 = icmp eq i64 %1, %n.vec84
  br i1 %cmp.n92, label %.loopexit, label %vec.epilog.iter.check96

vec.epilog.iter.check96:                          ; preds = %middle.block91
  %min.epilog.iters.check97 = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check97, label %vec.epilog.scalar.ph95.preheader, label %vec.epilog.ph98, !prof !212

vec.epilog.ph98:                                  ; preds = %vector.main.loop.iter.check81, %vec.epilog.iter.check96
  %vec.epilog.resume.val93 = phi i64 [ %n.vec84, %vec.epilog.iter.check96 ], [ 0, %vector.main.loop.iter.check81 ] ; 2 uses
  %n.vec99 = and i64 %umax47, 131068              ; 3 uses
  %i.bp = trunc i64 %vec.epilog.resume.val93 to i16
  %broadcast.splatinsert100 = insertelement <4 x i16> poison, i16 %i.bp, i64 0
  %broadcast.splat101 = shufflevector <4 x i16> %broadcast.splatinsert100, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction102 = or disjoint <4 x i16> %broadcast.splat101, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body103

vec.epilog.vector.body103:                        ; preds = %vec.epilog.vector.body103, %vec.epilog.ph98
  %index104 = phi i64 [ %vec.epilog.resume.val93, %vec.epilog.ph98 ], [ %index.next106, %vec.epilog.vector.body103 ] ; 2 uses
  %vec.ind105 = phi <4 x i16> [ %induction102, %vec.epilog.ph98 ], [ %vec.ind.next107, %vec.epilog.vector.body103 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %index104
  store <4 x i16> %vec.ind105, ptr %i.bq, align 2, !tbaa !25
  %index.next106 = add nuw i64 %index104, 4       ; 2 uses
  %vec.ind.next107 = add <4 x i16> %vec.ind105, splat (i16 4)
  %i.br = icmp eq i64 %index.next106, %n.vec99
  br i1 %i.br, label %vec.epilog.middle.block108, label %vec.epilog.vector.body103, !llvm.loop !269

vec.epilog.middle.block108:                       ; preds = %vec.epilog.vector.body103
  %cmp.n109 = icmp eq i64 %1, %n.vec99
  br i1 %cmp.n109, label %.loopexit, label %vec.epilog.scalar.ph95.preheader

vec.epilog.scalar.ph95.preheader:                 ; preds = %vector.scevcheck79, %iter.check94, %vec.epilog.iter.check96, %vec.epilog.middle.block108
  %indvars.iv.2.i.ph = phi i64 [ 0, %iter.check94 ], [ 0, %vector.scevcheck79 ], [ %n.vec84, %vec.epilog.iter.check96 ], [ %n.vec99, %vec.epilog.middle.block108 ]
  br label %vec.epilog.scalar.ph95

vec.epilog.scalar.ph95:                           ; preds = %vec.epilog.scalar.ph95.preheader, %vec.epilog.scalar.ph95
  %indvars.iv.2.i = phi i64 [ %indvars.iv.next.2.i, %vec.epilog.scalar.ph95 ], [ %indvars.iv.2.i.ph, %vec.epilog.scalar.ph95.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv.2.i
  %i.bt = trunc nuw i64 %indvars.iv.2.i to i16
  store i16 %i.bt, ptr %i.bs, align 2, !tbaa !25
  %indvars.iv.next.2.i = add i64 %indvars.iv.2.i, 1 ; 2 uses
  %i.bu = and i64 %indvars.iv.next.2.i, 65535
  %i.bv = icmp samesign ugt i64 %1, %i.bu
  br i1 %i.bv, label %vec.epilog.scalar.ph95, label %.loopexit, !llvm.loop !270

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i.preheader, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.preheader.i ], [ %indvars.iv.i.ph, %.preheader.preheader.i.preheader ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.bx = trunc nuw i64 %indvars.iv.i to i16
  store i16 %i.bx, ptr %i.bw, align 2, !tbaa !25
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.by = and i64 %indvars.iv.next.i, 65535
  %i.bz = icmp ugt i64 %1, %i.by
  br i1 %i.bz, label %.preheader.preheader.i, label %iter.check62, !llvm.loop !271

_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit.split.us: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %.split.us.sink.split

.split.us.sink.split:                             ; preds = %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EvS8_S8_S9_.exit, %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %.split.us

.split.us:                                        ; preds = %.split.us.sink.split, %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1, %.noexc14.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.b:                                             ; preds = %_ZN8k_d_tree6PointsILh3EtEC2EmRKSt5arrayIPKtLm3EE.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit

.loopexit:                                        ; preds = %vec.epilog.scalar.ph95, %vec.epilog.middle.block108, %middle.block91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr %i.f, ptr %i.a, align 8, !tbaa !72
  %.idx = shl nuw nsw i64 %1, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx ; 2 uses
  %i.cc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %i.cd = shl nuw nsw i64 %i.cc, 1
  %i.ce = xor i64 %i.cd, 126
  invoke void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.cb, i64 noundef %i.ce, ptr nonnull %i.a)
          to label %.noexc14 unwind label %bb.e

.noexc14:                                         ; preds = %.loopexit
  invoke void @_ZSt22__final_insertion_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_SC_(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.cb, ptr nonnull %i.a)
          to label %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EvS8_S8_S9_.exit unwind label %bb.e

_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EvS8_S8_S9_.exit: ; preds = %.noexc14
  %.pre23 = load i64, ptr %i.z, align 8, !tbaa !74 ; 4 uses
  %.pre28 = shl nuw nsw i64 %.pre23, 1
  %.pre22 = load ptr, ptr %i.aa, align 8, !tbaa !72
  %.pre21 = load i64, ptr %0, align 8, !tbaa !74
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %.pre21
  store ptr %i.cf, ptr %i.a, align 8, !tbaa !72
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.pre22, i64 %.pre23 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.pre28 ; 2 uses
  %.not.i.i.1 = icmp eq i64 %.pre23, 0
  br i1 %.not.i.i.1, label %.split.us.sink.split, label %bb.c

bb.c:                                             ; preds = %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EvS8_S8_S9_.exit
  %i.ci = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre23, i1 true)
  %i.cj = shl nuw nsw i64 %i.ci, 1
  %i.ck = xor i64 %i.cj, 126
  invoke void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ch, i64 noundef %i.ck, ptr nonnull %i.a)
          to label %.noexc14.1 unwind label %bb.e

.noexc14.1:                                       ; preds = %bb.c
  invoke void @_ZSt22__final_insertion_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_SC_(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ch, ptr nonnull %i.a)
          to label %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1 unwind label %bb.e

_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1: ; preds = %.noexc14.1
  %.pre24 = load ptr, ptr %i.b, align 8, !tbaa !72
  %.pre25 = load i64, ptr %0, align 8, !tbaa !74
  %.pre26 = load ptr, ptr %i.aa, align 8, !tbaa !72
  %.pre27 = load i64, ptr %i.z, align 8, !tbaa !74 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.idx33 = shl i64 %.pre25, 2
  %i.cl = getelementptr inbounds nuw i8, ptr %.pre24, i64 %.idx33
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !72
  %.idx34 = shl i64 %.pre27, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre26, i64 %.idx34 ; 3 uses
  %.idx.2 = shl nuw nsw i64 %.pre27, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.2 ; 2 uses
  %.not.i.i.2 = icmp eq i64 %.pre27, 0
  br i1 %.not.i.i.2, label %.split.us, label %bb.d

bb.d:                                             ; preds = %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1
  %i.co = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre27, i1 true)
  %i.cp = shl nuw nsw i64 %i.co, 1
  %i.cq = xor i64 %i.cp, 126
  invoke void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn, i64 noundef %i.cq, ptr nonnull %i.a)
          to label %.noexc14.2 unwind label %bb.e

.noexc14.2:                                       ; preds = %bb.d
  invoke void @_ZSt22__final_insertion_sortIPtN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_SC_(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn, ptr nonnull %i.a)
          to label %.split.us unwind label %bb.e

bb.e:                                             ; preds = %.noexc14.2, %bb.d, %.noexc14.1, %bb.c, %.noexc14, %.loopexit
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cs = load ptr, ptr %i.aa, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.cs) #20
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit:       ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.b ], [ %i.cr, %bb.e ], [ %i.cr, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i ]
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i16, label %_ZN8k_d_tree6PointsILh3EtED2Ev.exit, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ct) #20
  br label %_ZN8k_d_tree6PointsILh3EtED2Ev.exit

_ZN8k_d_tree6PointsILh3EtED2Ev.exit:              ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EtEC1EmSt5arrayIPKtLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #5 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm:bb.a
bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #21
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !40
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !124  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  store ptr %i.w, ptr %3, align 8, !tbaa !27
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !124
  store ptr %3, ptr %i.x, align 8, !tbaa !27
  br label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  store ptr %i.z, ptr %3, align 8, !tbaa !27
  store ptr %3, ptr %i.y, align 8, !tbaa !64
  %i.aa = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !40
  %i.ad = load i16, ptr %i.ab, align 2, !tbaa !25
  %i.ae = zext i16 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !124
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !124
  br label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit

_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !162
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !162
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !205

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !313
  br label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !205

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #23 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !64
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !27 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !25
  %i.l = zext i16 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !124  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !64
  store ptr %i.p, ptr %.02530, align 8, !tbaa !27
  store ptr %.02530, ptr %i.g, align 8, !tbaa !64
  store ptr %i.g, ptr %i.n, align 8, !tbaa !124
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !27
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !124
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !27
  store ptr %i.s, ptr %.02530, align 8, !tbaa !27
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !124
  store ptr %.02530, ptr %i.t, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !314

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !40
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #20
  br label %_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !40
  store ptr %.0.i, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8k_d_tree12SortedPointsILh3EfEC2ERKS1_S3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !97
  %i.b = load i64, ptr %2, align 8, !tbaa !97
  %i.c = add i64 %i.b, %i.a                       ; 6 uses
  store i64 %i.c, ptr %0, align 8, !tbaa !97
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.e = mul i64 %i.c, 3                          ; 2 uses
  %i.f = icmp ugt i64 %i.e, 4611686018427387903
  %i.g = mul i64 %i.c, 12
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #23 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !95
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = mul i64 %i.c, 6
  %.inv.i.i = icmp sgt i64 %i.e, -1
  %i.l = select i1 %.inv.i.i, i64 %i.k, i64 -1
  %i.m = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #23
          to label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit unwind label %_ZN8k_d_tree6PointsILh3EfED2Ev.exit

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit:       ; preds = %bb.a
  store i64 %i.c, ptr %i.j, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !72
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
  %indvars.iv = phi i64 [ 0, %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit ], [ %indvars.iv.next, %._crit_edge ] ; 7 uses
  %3 = shl nuw nsw i64 %indvars.iv, 1
  %4 = add nuw i64 %3, 2
  %i.w = shl nuw nsw i64 %indvars.iv, 1
  %i.x = add nuw i64 %i.w, 2
  %i.y = load i64, ptr %1, align 8, !tbaa !97     ; 3 uses
  %i.z = icmp ugt i64 %i.y, 1
  br i1 %i.z, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.i, label %.split.us.i, !prof !59

.split.us.i:                                      ; preds = %bb.c
  %i.aa = icmp eq i64 %i.y, 1
  br i1 %i.aa, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i, label %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i:  ; preds = %.split.us.i
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !95  ; 3 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !116
  store float %i.ac, ptr %i.v, align 4, !tbaa !116
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %gep.1.i = getelementptr [4 x i8], ptr %i.v, i64 %i.u
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !116
  store float %i.ae, ptr %gep.1.i, align 4, !tbaa !116
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %gep.2.idx.i = shl i64 %i.u, 3
  %gep.2.i = getelementptr i8, ptr %i.v, i64 %gep.2.idx.i
  %i.ag = load float, ptr %i.af, align 4, !tbaa !116
  store float %i.ag, ptr %gep.2.i, align 4, !tbaa !116
  br label %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.i:               ; preds = %bb.c
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !95
  %.idx.i = shl nuw nsw i64 %i.y, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.v, ptr align 4 %i.ah, i64 %.idx.i, i1 false)
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !95 ; 2 uses
  %.pre14.i = load i64, ptr %1, align 8, !tbaa !97 ; 5 uses
  %.pre15.i = load ptr, ptr %i.d, align 8, !tbaa !95 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.pre14.i ; 2 uses
  %i.aj = load i64, ptr %0, align 8, !tbaa !97    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.pre15.i, i64 %i.aj ; 2 uses
  %i.al = icmp ugt i64 %.pre14.i, 1
  br i1 %i.al, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i, label %bb.d, !prof !59

bb.d:                                             ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.i
  %i.am = icmp eq i64 %.pre14.i, 1
  br i1 %i.am, label %bb.e, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i

bb.e:                                             ; preds = %bb.d
  %i.an = load float, ptr %i.ai, align 4, !tbaa !116
  store float %i.an, ptr %i.ak, align 4, !tbaa !116
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
  %.pre16.i = load ptr, ptr %i.o, align 8, !tbaa !95
  %.pre17.i = load i64, ptr %1, align 8, !tbaa !97 ; 5 uses
  %.pre18.i = load ptr, ptr %i.d, align 8, !tbaa !95
  %.pre19.i = load i64, ptr %0, align 8, !tbaa !97
  %.idx23.i = shl i64 %.pre17.i, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre16.i, i64 %.idx23.i ; 2 uses
  %.idx24.i = shl i64 %.pre19.i, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre18.i, i64 %.idx24.i ; 2 uses
  %i.as = icmp ugt i64 %.pre17.i, 1
  br i1 %i.as, label %bb.h, label %bb.f, !prof !208

bb.f:                                             ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i
  %i.at = phi i64 [ %.pre14.i, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i ], [ %.pre17.i, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i ] ; 2 uses
  %i.au = phi ptr [ %i.ap, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i ], [ %i.ar, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i ]
  %i.av = phi ptr [ %i.ao, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i ], [ %i.aq, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i ]
  %i.aw = phi i64 [ %.ph.i, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i ], [ %.pre17.i, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i ]
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.g, label %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit

bb.g:                                             ; preds = %bb.f
  %i.ay = load float, ptr %i.av, align 4, !tbaa !116
  store float %i.ay, ptr %i.au, align 4, !tbaa !116
  br label %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit

bb.h:                                             ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i
  %.idx.2.i = shl nuw nsw i64 %.pre17.i, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ar, ptr align 4 %i.aq, i64 %.idx.2.i, i1 false)
  %.pre = load i64, ptr %1, align 8, !tbaa !97
  br label %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit

_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit:    ; preds = %bb.h, %bb.g, %bb.f, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i, %.split.us.i
  %i.az = phi i64 [ %.pre, %bb.h ], [ %i.at, %bb.g ], [ %i.at, %bb.f ], [ 1, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i ], [ 0, %.split.us.i ]
  %i.ba = and i64 %i.az, 65535                    ; 5 uses
  %i.bb = load i64, ptr %2, align 8, !tbaa !97    ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, 1
  br i1 %i.bc, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.i73, label %.split.us.i68, !prof !59

.split.us.i68:                                    ; preds = %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit
  %i.bd = icmp eq i64 %i.bb, 1
  %.pre119 = load ptr, ptr %i.d, align 8, !tbaa !95 ; 3 uses
  %.pre121 = load i64, ptr %0, align 8, !tbaa !97 ; 4 uses
  br i1 %i.bd, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i69, label %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit91

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i69: ; preds = %.split.us.i68
  %invariant.gep.i = getelementptr [4 x i8], ptr %.pre119, i64 %i.ba ; 3 uses
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !95  ; 3 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !116
  store float %i.bf, ptr %invariant.gep.i, align 4, !tbaa !116
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %gep.1.i70 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.pre121
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !116
  store float %i.bh, ptr %gep.1.i70, align 4, !tbaa !116
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %gep.2.idx.i71 = shl i64 %.pre121, 3
  %gep.2.i72 = getelementptr i8, ptr %invariant.gep.i, i64 %gep.2.idx.i71
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !116
  store float %i.bj, ptr %gep.2.i72, align 4, !tbaa !116
  br label %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit91

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.i73:             ; preds = %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ba
  %i.bm = load ptr, ptr %i.p, align 8, !tbaa !95
  %.idx.i74 = shl nuw nsw i64 %i.bb, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bl, ptr align 4 %i.bm, i64 %.idx.i74, i1 false)
  %.pre.i75 = load ptr, ptr %i.p, align 8, !tbaa !95 ; 2 uses
  %.pre14.i76 = load i64, ptr %2, align 8, !tbaa !97 ; 4 uses
  %.pre15.i77 = load ptr, ptr %i.d, align 8, !tbaa !95 ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i75, i64 %.pre14.i76 ; 2 uses
  %i.bo = load i64, ptr %0, align 8, !tbaa !97    ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre15.i77, i64 %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ba ; 2 uses
  %i.br = icmp ugt i64 %.pre14.i76, 1
  br i1 %i.br, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i82, label %bb.i, !prof !59

bb.i:                                             ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.i73
  %i.bs = icmp eq i64 %.pre14.i76, 1
  br i1 %i.bs, label %bb.j, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i78

bb.j:                                             ; preds = %bb.i
  %i.bt = load float, ptr %i.bn, align 4, !tbaa !116
  store float %i.bt, ptr %i.bq, align 4, !tbaa !116
  br label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i78

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i78:    ; preds = %bb.j, %bb.i
  %.ph.i79 = phi i64 [ 0, %bb.i ], [ 1, %bb.j ]   ; 2 uses
  %.idx2325.i80 = shl nuw nsw i64 %.ph.i79, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre.i75, i64 %.idx2325.i80
  %.idx2426.i81 = shl i64 %i.bo, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre15.i77, i64 %.idx2426.i81
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ba
  br label %bb.k

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i82:           ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.i73
  %.idx.1.i83 = shl nuw nsw i64 %.pre14.i76, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bq, ptr nonnull align 4 %i.bn, i64 %.idx.1.i83, i1 false)
  %.pre16.i84 = load ptr, ptr %i.p, align 8, !tbaa !95
  %.pre17.i85 = load i64, ptr %2, align 8, !tbaa !97 ; 4 uses
  %.pre18.i86 = load ptr, ptr %i.d, align 8, !tbaa !95 ; 2 uses
  %.pre19.i87 = load i64, ptr %0, align 8, !tbaa !97 ; 2 uses
  %.idx23.i88 = shl i64 %.pre17.i85, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre16.i84, i64 %.idx23.i88 ; 2 uses
  %.idx24.i89 = shl i64 %.pre19.i87, 3
  %i.by = getelementptr inbounds nuw i8, ptr %.pre18.i86, i64 %.idx24.i89
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ba ; 2 uses
  %i.ca = icmp ugt i64 %.pre17.i85, 1
  br i1 %i.ca, label %bb.m, label %bb.k, !prof !208

bb.k:                                             ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i82, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i78
  %i.cb = phi i64 [ %i.bo, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i78 ], [ %.pre19.i87, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i82 ] ; 2 uses
  %i.cc = phi ptr [ %.pre15.i77, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i78 ], [ %.pre18.i86, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i82 ] ; 2 uses
  %i.cd = phi ptr [ %i.bw, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i78 ], [ %i.bz, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i82 ]
  %i.ce = phi ptr [ %i.bu, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i78 ], [ %i.bx, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i82 ]
  %i.cf = phi i64 [ %.ph.i79, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.thread.i78 ], [ %.pre17.i85, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i82 ]
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.l, label %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit91

bb.l:                                             ; preds = %bb.k
  %i.ch = load float, ptr %i.ce, align 4, !tbaa !116
  store float %i.ch, ptr %i.cd, align 4, !tbaa !116
  br label %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit91

bb.m:                                             ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.1.i82
  %.idx.2.i90 = shl nuw nsw i64 %.pre17.i85, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bz, ptr align 4 %i.bx, i64 %.idx.2.i90, i1 false)
  %.pre118 = load ptr, ptr %i.d, align 8, !tbaa !95
  %.pre120 = load i64, ptr %0, align 8, !tbaa !97
  br label %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit91

_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit91:  ; preds = %bb.m, %bb.l, %bb.k, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i69, %.split.us.i68
  %i.ci = phi i64 [ %.pre120, %bb.m ], [ %i.cb, %bb.l ], [ %i.cb, %bb.k ], [ %.pre121, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i69 ], [ %.pre121, %.split.us.i68 ] ; 2 uses
  %i.cj = phi ptr [ %.pre118, %bb.m ], [ %i.cc, %bb.l ], [ %i.cc, %bb.k ], [ %.pre119, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i69 ], [ %.pre119, %.split.us.i68 ] ; 2 uses
  %i.ck = mul i64 %i.ci, %indvars.iv
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !72  ; 2 uses
  %i.cn = ptrtoaddr ptr %i.cm to i64
  %i.co = load i64, ptr %i.q, align 8, !tbaa !74  ; 4 uses
  %i.cp = mul i64 %i.co, %indvars.iv
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.cp ; 3 uses
  %i.cr = load ptr, ptr %i.t, align 8, !tbaa !72  ; 2 uses
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = load i64, ptr %i.s, align 8, !tbaa !74  ; 5 uses
  %i.cu = mul i64 %i.ct, %indvars.iv
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.cu ; 4 uses
  %i.cw = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.cx = load i64, ptr %i.j, align 8, !tbaa !74
  %i.cy = mul i64 %i.cx, %indvars.iv
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.cy ; 2 uses
  %.idx = shl nuw nsw i64 %i.co, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx ; 3 uses
  %.idx115 = shl nuw nsw i64 %i.ct, 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx115
  %.not96 = icmp eq i64 %i.co, 0
  %.not6197 = icmp eq i64 %i.ct, 0
  %or.cond98 = select i1 %.not96, i1 true, i1 %.not6197
  br i1 %or.cond98, label %.critedge.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit91
  %i.dc = load i64, ptr %1, align 8, !tbaa !97
  br label %bb.n

.critedge.preheader:                              ; preds = %bb.n, %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit91
  %.049.lcssa = phi ptr [ %i.cq, %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit91 ], [ %.150, %bb.n ] ; 7 uses
  %.046.lcssa = phi ptr [ %i.cv, %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit91 ], [ %.147, %bb.n ] ; 7 uses
  %.0.lcssa = phi ptr [ %i.cz, %_ZN8k_d_tree6PointsILh3EfE6assignEtRKS1_.exit91 ], [ %.1, %bb.n ] ; 7 uses
  %.046.lcssa129 = ptrtoaddr ptr %.046.lcssa to i64 ; 2 uses
  %.not62105 = icmp eq ptr %.049.lcssa, %i.da
  br i1 %.not62105, label %.preheader, label %iter.check165

iter.check165:                                    ; preds = %.critedge.preheader
  %.049.lcssa147 = ptrtoaddr ptr %.049.lcssa to i64 ; 2 uses
  %.0.lcssa146 = ptrtoaddr ptr %.0.lcssa to i64
  %i.dd = add i64 %i.cn, -2
  %i.de = mul i64 %i.co, %4
  %i.df = add i64 %i.dd, %i.de
  %i.dg = sub i64 %i.df, %.049.lcssa147           ; 3 uses
  %i.dh = lshr i64 %i.dg, 1
  %i.di = add nuw i64 %i.dh, 1                    ; 5 uses
  %min.iters.check149 = icmp ult i64 %i.dg, 6
  %i.dj = sub i64 %.049.lcssa147, %.0.lcssa146
  %diff.check148 = icmp ugt i64 %i.dj, -32
  %or.cond181 = select i1 %min.iters.check149, i1 true, i1 %diff.check148
  br i1 %or.cond181, label %.critedge.preheader183, label %vector.main.loop.iter.check150

vector.main.loop.iter.check150:                   ; preds = %iter.check165
  %min.iters.check151 = icmp ult i64 %i.dg, 30
  br i1 %min.iters.check151, label %vec.epilog.ph169, label %vector.ph152

vector.ph152:                                     ; preds = %vector.main.loop.iter.check150
  %i.dk = and i64 %i.di, 12
  %n.vec153 = and i64 %i.di, -16                  ; 4 uses
  %i.dl = shl i64 %n.vec153, 1                    ; 2 uses
  %i.dm = getelementptr i8, ptr %.0.lcssa, i64 %i.dl ; 2 uses
  %i.dn = getelementptr i8, ptr %.049.lcssa, i64 %i.dl
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next160, %vector.body154 ] ; 2 uses
  %i.do = shl i64 %index155, 1                    ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.0.lcssa, i64 %i.do ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.049.lcssa, i64 %i.do ; 2 uses
  %i.dp = getelementptr i8, ptr %next.gep157, i64 16
  %wide.load158 = load <8 x i16>, ptr %next.gep157, align 2, !tbaa !25
  %wide.load159 = load <8 x i16>, ptr %i.dp, align 2, !tbaa !25
  %i.dq = getelementptr i8, ptr %next.gep156, i64 16
  store <8 x i16> %wide.load158, ptr %next.gep156, align 2, !tbaa !25
  store <8 x i16> %wide.load159, ptr %i.dq, align 2, !tbaa !25
  %index.next160 = add nuw i64 %index155, 16      ; 2 uses
  %i.dr = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.dr, label %middle.block161, label %vector.body154, !llvm.loop !315

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.di, %n.vec153
  br i1 %cmp.n162, label %.preheader, label %vec.epilog.iter.check167

vec.epilog.iter.check167:                         ; preds = %middle.block161
  %min.epilog.iters.check168 = icmp eq i64 %i.dk, 0
  br i1 %min.epilog.iters.check168, label %.critedge.preheader183, label %vec.epilog.ph169, !prof !212

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check150, %vec.epilog.iter.check167
  %vec.epilog.resume.val163 = phi i64 [ %n.vec153, %vec.epilog.iter.check167 ], [ 0, %vector.main.loop.iter.check150 ]
  %n.vec170 = and i64 %i.di, -4                   ; 3 uses
  %i.ds = shl i64 %n.vec170, 1                    ; 2 uses
  %i.dt = getelementptr i8, ptr %.0.lcssa, i64 %i.ds ; 2 uses
  %i.du = getelementptr i8, ptr %.049.lcssa, i64 %i.ds
  br label %vec.epilog.vector.body171

vec.epilog.vector.body171:                        ; preds = %vec.epilog.vector.body171, %vec.epilog.ph169
  %index172 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph169 ], [ %index.next176, %vec.epilog.vector.body171 ] ; 2 uses
  %i.dv = shl i64 %index172, 1                    ; 2 uses
  %next.gep173 = getelementptr i8, ptr %.0.lcssa, i64 %i.dv
  %next.gep174 = getelementptr i8, ptr %.049.lcssa, i64 %i.dv
  %wide.load175 = load <4 x i16>, ptr %next.gep174, align 2, !tbaa !25
  store <4 x i16> %wide.load175, ptr %next.gep173, align 2, !tbaa !25
  %index.next176 = add nuw i64 %index172, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next176, %n.vec170
  br i1 %i.dw, label %vec.epilog.middle.block177, label %vec.epilog.vector.body171, !llvm.loop !316

vec.epilog.middle.block177:                       ; preds = %vec.epilog.vector.body171
  %cmp.n178 = icmp eq i64 %i.di, %n.vec170
  br i1 %cmp.n178, label %.preheader, label %.critedge.preheader183

.critedge.preheader183:                           ; preds = %iter.check165, %vec.epilog.iter.check167, %vec.epilog.middle.block177
  %.2107.ph = phi ptr [ %.0.lcssa, %iter.check165 ], [ %i.dm, %vec.epilog.iter.check167 ], [ %i.dt, %vec.epilog.middle.block177 ]
  %.251106.ph = phi ptr [ %.049.lcssa, %iter.check165 ], [ %i.dn, %vec.epilog.iter.check167 ], [ %i.du, %vec.epilog.middle.block177 ]
  br label %.critedge

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %.0101 = phi ptr [ %i.cz, %.lr.ph ], [ %.1, %bb.n ] ; 2 uses
  %.046100 = phi ptr [ %i.cv, %.lr.ph ], [ %.147, %bb.n ] ; 2 uses
  %.04999 = phi ptr [ %i.cq, %.lr.ph ], [ %.150, %bb.n ] ; 2 uses
  %i.dx = load i16, ptr %.04999, align 2, !tbaa !25 ; 2 uses
  %i.dy = load i16, ptr %.046100, align 2, !tbaa !25
  %i.dz = zext i16 %i.dy to i64
  %i.ea = add i64 %i.dc, %i.dz                    ; 2 uses
  %i.eb = zext i16 %i.dx to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !116
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ea
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !116
  %i.eg = fcmp nsz ugt float %i.ed, %i.ef         ; 3 uses
  %i.eh = trunc i64 %i.ea to i16
  %.sink = select i1 %i.eg, i16 %i.eh, i16 %i.dx
  %.150.idx = select i1 %i.eg, i64 0, i64 2
  %.150 = getelementptr inbounds nuw i8, ptr %.04999, i64 %.150.idx ; 3 uses
  %.147.idx = select i1 %i.eg, i64 2, i64 0
  %.147 = getelementptr inbounds nuw i8, ptr %.046100, i64 %.147.idx ; 3 uses
  store i16 %.sink, ptr %.0101, align 2, !tbaa !25
  %.1 = getelementptr inbounds nuw i8, ptr %.0101, i64 2 ; 2 uses
  %.not = icmp eq ptr %.150, %i.da
  %.not61 = icmp eq ptr %.147, %i.db
  %or.cond = select i1 %.not, i1 true, i1 %.not61
  br i1 %or.cond, label %.critedge.preheader, label %bb.n, !llvm.loop !317

.preheader:                                       ; preds = %.critedge, %middle.block161, %vec.epilog.middle.block177, %.critedge.preheader
  %.2.lcssa = phi ptr [ %.0.lcssa, %.critedge.preheader ], [ %i.dt, %vec.epilog.middle.block177 ], [ %i.dm, %middle.block161 ], [ %i.fk, %.critedge ] ; 6 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.ct ; 2 uses
  %.not63110 = icmp eq ptr %.046.lcssa, %i.ei
  br i1 %.not63110, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %.2.lcssa128 = ptrtoaddr ptr %.2.lcssa to i64
  %i.ej = load i64, ptr %1, align 8, !tbaa !97
  %i.ek = trunc i64 %i.ej to i16                  ; 3 uses
  %i.el = add i64 %i.cs, -2
  %i.em = mul i64 %i.ct, %i.x
  %i.en = add i64 %i.el, %i.em
  %i.eo = sub i64 %i.en, %.046.lcssa129           ; 3 uses
  %i.ep = lshr i64 %i.eo, 1
  %i.eq = add nuw i64 %i.ep, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.eo, 6
  %i.er = sub i64 %.046.lcssa129, %.2.lcssa128
  %diff.check = icmp ugt i64 %i.er, -32
  %or.cond182 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond182, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check130 = icmp ult i64 %i.eo, 30
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

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
  %next.gep131 = getelementptr i8, ptr %.046.lcssa, i64 %i.ew ; 2 uses
  %i.ex = getelementptr i8, ptr %next.gep131, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep131, align 2, !tbaa !25
  %wide.load132 = load <8 x i16>, ptr %i.ex, align 2, !tbaa !25
  %i.ey = add <8 x i16> %wide.load, %broadcast.splat
  %i.ez = add <8 x i16> %wide.load132, %broadcast.splat
  %i.fa = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.ey, ptr %next.gep, align 2, !tbaa !25
  store <8 x i16> %i.ez, ptr %i.fa, align 2, !tbaa !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !318

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.es, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !212

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec134 = and i64 %i.eq, -4                   ; 3 uses
  %i.fc = shl i64 %n.vec134, 1                    ; 2 uses
  %i.fd = getelementptr i8, ptr %.2.lcssa, i64 %i.fc
  %i.fe = getelementptr i8, ptr %.046.lcssa, i64 %i.fc
  %broadcast.splatinsert135 = insertelement <4 x i16> poison, i16 %i.ek, i64 0
  %broadcast.splat136 = shufflevector <4 x i16> %broadcast.splatinsert135, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 2 uses
  %i.ff = shl i64 %index137, 1                    ; 2 uses
  %next.gep138 = getelementptr i8, ptr %.2.lcssa, i64 %i.ff
  %next.gep139 = getelementptr i8, ptr %.046.lcssa, i64 %i.ff
  %wide.load140 = load <4 x i16>, ptr %next.gep139, align 2, !tbaa !25
  %i.fg = add <4 x i16> %wide.load140, %broadcast.splat136
  store <4 x i16> %i.fg, ptr %next.gep138, align 2, !tbaa !25
  %index.next141 = add nuw i64 %index137, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next141, %n.vec134
  br i1 %i.fh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !319

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n142 = icmp eq i64 %i.eq, %n.vec134
  br i1 %cmp.n142, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3112.ph = phi ptr [ %.2.lcssa, %iter.check ], [ %i.eu, %vec.epilog.iter.check ], [ %i.fd, %vec.epilog.middle.block ]
  %.248111.ph = phi ptr [ %.046.lcssa, %iter.check ], [ %i.ev, %vec.epilog.iter.check ], [ %i.fe, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.critedge:                                        ; preds = %.critedge.preheader183, %.critedge
  %.2107 = phi ptr [ %i.fk, %.critedge ], [ %.2107.ph, %.critedge.preheader183 ] ; 2 uses
  %.251106 = phi ptr [ %i.fi, %.critedge ], [ %.251106.ph, %.critedge.preheader183 ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.251106, i64 2 ; 2 uses
  %i.fj = load i16, ptr %.251106, align 2, !tbaa !25
  %i.fk = getelementptr inbounds nuw i8, ptr %.2107, i64 2 ; 2 uses
  store i16 %i.fj, ptr %.2107, align 2, !tbaa !25
  %.not62 = icmp eq ptr %i.fi, %i.da
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN8k_d_tree6KdTreeILh3EftEESaIS2_EE8pop_backEv:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 7 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -88
  store ptr %i.c, ptr %i.a, align 8, !tbaa !69
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85   ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.l
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.j) #20
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.b, i64 -48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72   ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #20
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 -56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72   ; 2 uses
  %.not.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #20
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #20
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i:   ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit3.i
  %i.t = getelementptr inbounds i8, ptr %i.b, i64 -80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #20
  br label %_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit

_ZN8k_d_tree6KdTreeILh3EftED2Ev.exit:             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i.i, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8k_d_tree12SortedPointsILh3EfEC2EmSt5arrayIPKfLm3EE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef byval(%"struct.std::array.118") align 8 %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 19 uses
  store i64 %1, ptr %0, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = mul i64 %1, 3                            ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4611686018427387903
  %i.e = mul i64 %1, 12
  %i.f = select i1 %i.d, i64 -1, i64 %i.e
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #23 ; 8 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !95
  %i.h = icmp ugt i64 %1, 1
  br i1 %i.h, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i, label %.split.i, !prof !59

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i:  ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %1, 2                 ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !95
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.g, ptr align 4 %i.i, i64 %.idx.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.l, ptr align 4 %i.k, i64 %.idx.i, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !95
  %.idx17.i = shl i64 %1, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx17.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.n, i64 %.idx.i, i1 false)
  br label %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit

.split.i:                                         ; preds = %bb.a
  %i.p = icmp eq i64 %1, 1
  br i1 %i.p, label %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.preheader.i, label %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit

_ZSt4copyIPKfPfET0_T_S4_S3_.exit.preheader.i:     ; preds = %.split.i
  %i.q = load ptr, ptr %2, align 8, !tbaa !95
  %i.r = load float, ptr %i.q, align 4, !tbaa !116
  store float %i.r, ptr %i.g, align 4, !tbaa !116
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !95
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.v = load float, ptr %i.t, align 4, !tbaa !116
  store float %i.v, ptr %i.u, align 4, !tbaa !116
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.z = load float, ptr %i.x, align 4, !tbaa !116
  store float %i.z, ptr %i.y, align 4, !tbaa !116
  br label %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit

_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit: ; preds = %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.us.preheader.i, %.split.i, %_ZSt4copyIPKfPfET0_T_S4_S3_.exit.preheader.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 %1, ptr %i.aa, align 8, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ac = mul i64 %1, 6
  %.inv.i.i = icmp sgt i64 %i.c, -1
  %i.ad = select i1 %.inv.i.i, i64 %i.ac, i64 -1
  %i.ae = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #23
          to label %.noexc unwind label %bb.b     ; 9 uses

.noexc:                                           ; preds = %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !72
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
  store <8 x i16> %vec.ind, ptr %i.al, align 2, !tbaa !25
  store <8 x i16> %step.add, ptr %i.am, align 2, !tbaa !25
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !363

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %iter.check61, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader.i.preheader, label %vec.epilog.ph, !prof !212

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
  store <4 x i16> %vec.ind41, ptr %i.ap, align 2, !tbaa !25
  %index.next42 = add nuw i64 %index40, 4         ; 2 uses
  %vec.ind.next43 = add <4 x i16> %vec.ind41, splat (i16 4)
  %i.aq = icmp eq i64 %index.next42, %n.vec39
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !364

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n44 = icmp eq i64 %1, %n.vec39
  br i1 %cmp.n44, label %iter.check61, label %.preheader.preheader.i.preheader

.preheader.preheader.i.preheader:                 ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec39, %vec.epilog.middle.block ]
  br label %.preheader.preheader.i

iter.check61:                                     ; preds = %.preheader.preheader.i, %vec.epilog.middle.block, %middle.block
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %1 ; 3 uses
  %umax46 = tail call i64 @llvm.umax.i64(i64 %1, i64 1) ; 7 uses
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
  store <8 x i16> %vec.ind54, ptr %i.ay, align 2, !tbaa !25
  store <8 x i16> %step.add55, ptr %i.az, align 2, !tbaa !25
  %index.next56 = add nuw i64 %index53, 16        ; 2 uses
  %vec.ind.next57 = add <8 x i16> %vec.ind54, splat (i16 16)
  %i.ba = icmp eq i64 %index.next56, %n.vec51
  br i1 %i.ba, label %middle.block58, label %vector.body52, !llvm.loop !365

middle.block58:                                   ; preds = %vector.body52
  %cmp.n59 = icmp eq i64 %1, %n.vec51
  br i1 %cmp.n59, label %iter.check93, label %vec.epilog.iter.check63

vec.epilog.iter.check63:                          ; preds = %middle.block58
  %min.epilog.iters.check64 = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check64, label %vec.epilog.scalar.ph62.preheader, label %vec.epilog.ph65, !prof !212

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
  store <4 x i16> %vec.ind72, ptr %i.bc, align 2, !tbaa !25
  %index.next73 = add nuw i64 %index71, 4         ; 2 uses
  %vec.ind.next74 = add <4 x i16> %vec.ind72, splat (i16 4)
  %i.bd = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.bd, label %vec.epilog.middle.block75, label %vec.epilog.vector.body70, !llvm.loop !366

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
  store i16 %i.bf, ptr %i.be, align 2, !tbaa !25
  %indvars.iv.next.1.i = add i64 %indvars.iv.1.i, 1 ; 2 uses
  %i.bg = and i64 %indvars.iv.next.1.i, 65535
  %i.bh = icmp samesign ugt i64 %1, %i.bg
  br i1 %i.bh, label %vec.epilog.scalar.ph62, label %iter.check93, !llvm.loop !367

iter.check93:                                     ; preds = %vec.epilog.scalar.ph62, %vec.epilog.middle.block75, %middle.block58
  %.idx.i12 = shl nuw nsw i64 %1, 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i12 ; 3 uses
  %min.iters.check79 = icmp ult i64 %1, 4
  br i1 %min.iters.check79, label %vec.epilog.scalar.ph94.preheader, label %vector.scevcheck78

vector.scevcheck78:                               ; preds = %iter.check93
  %i.bj = add i64 %umax46, -1                     ; 2 uses
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
  store <8 x i16> %vec.ind86, ptr %i.bp, align 2, !tbaa !25
  store <8 x i16> %step.add87, ptr %i.bq, align 2, !tbaa !25
  %index.next88 = add nuw i64 %index85, 16        ; 2 uses
  %vec.ind.next89 = add <8 x i16> %vec.ind86, splat (i16 16)
  %i.br = icmp eq i64 %index.next88, %n.vec83
  br i1 %i.br, label %middle.block90, label %vector.body84, !llvm.loop !368

middle.block90:                                   ; preds = %vector.body84
  %cmp.n91 = icmp eq i64 %1, %n.vec83
  br i1 %cmp.n91, label %.loopexit, label %vec.epilog.iter.check95

vec.epilog.iter.check95:                          ; preds = %middle.block90
  %min.epilog.iters.check96 = icmp eq i64 %i.bo, 0
  br i1 %min.epilog.iters.check96, label %vec.epilog.scalar.ph94.preheader, label %vec.epilog.ph97, !prof !212

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
  store <4 x i16> %vec.ind104, ptr %i.bt, align 2, !tbaa !25
  %index.next105 = add nuw i64 %index103, 4       ; 2 uses
  %vec.ind.next106 = add <4 x i16> %vec.ind104, splat (i16 4)
  %i.bu = icmp eq i64 %index.next105, %n.vec98
  br i1 %i.bu, label %vec.epilog.middle.block107, label %vec.epilog.vector.body102, !llvm.loop !369

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
  store i16 %i.bw, ptr %i.bv, align 2, !tbaa !25
  %indvars.iv.next.2.i = add i64 %indvars.iv.2.i, 1 ; 2 uses
  %i.bx = and i64 %indvars.iv.next.2.i, 65535
  %i.by = icmp samesign ugt i64 %1, %i.bx
  br i1 %i.by, label %vec.epilog.scalar.ph94, label %.loopexit, !llvm.loop !370

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i.preheader, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.preheader.i ], [ %indvars.iv.i.ph, %.preheader.preheader.i.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.ca = trunc nuw i64 %indvars.iv.i to i16
  store i16 %i.ca, ptr %i.bz, align 2, !tbaa !25
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.cb = and i64 %indvars.iv.next.i, 65535
  %i.cc = icmp ugt i64 %1, %i.cb
  br i1 %i.cc, label %.preheader.preheader.i, label %iter.check61, !llvm.loop !371

_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit.split.us: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %.split.us.sink.split

.split.us.sink.split:                             ; preds = %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit, %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  br label %.split.us

.split.us:                                        ; preds = %.split.us.sink.split, %_ZSt4sortIPtZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EvS8_S8_S9_.exit.1, %.noexc13.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.b:                                             ; preds = %_ZN8k_d_tree6PointsILh3EfEC2EmRKSt5arrayIPKfLm3EE.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit

.loopexit:                                        ; preds = %vec.epilog.scalar.ph94, %vec.epilog.middle.block107, %middle.block90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr %i.g, ptr %i.a, align 8, !tbaa !95
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
  %.pre22 = load i64, ptr %i.aa, align 8, !tbaa !74 ; 4 uses
  %.pre27 = shl nuw nsw i64 %.pre22, 1
  %.pre21 = load ptr, ptr %i.ab, align 8, !tbaa !72
  %.pre20 = load i64, ptr %0, align 8, !tbaa !97
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.pre20
  store ptr %i.ci, ptr %i.a, align 8, !tbaa !95
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
  %.pre23 = load ptr, ptr %i.b, align 8, !tbaa !95
  %.pre24 = load i64, ptr %0, align 8, !tbaa !97
  %.pre25 = load ptr, ptr %i.ab, align 8, !tbaa !72
  %.pre26 = load i64, ptr %i.aa, align 8, !tbaa !74 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.idx32 = shl i64 %.pre24, 3
  %i.co = getelementptr inbounds nuw i8, ptr %.pre23, i64 %.idx32
  store ptr %i.co, ptr %i.a, align 8, !tbaa !95
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cv = load ptr, ptr %i.ab, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.cv) #20
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit:       ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.b ], [ %i.cu, %bb.e ], [ %i.cu, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i ]
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !95  ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i15, label %_ZN8k_d_tree6PointsILh3EfED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cw) #20
  br label %_ZN8k_d_tree6PointsILh3EfED2Ev.exit

_ZN8k_d_tree6PointsILh3EfED2Ev.exit:              ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPtlN9__gnu_cxx5__ops15_Iter_comp_iterIZN8k_d_tree12SortedPointsILh3EfEC1EmSt5arrayIPKfLm3EEEUlT_T0_E_EEEvSB_SB_SC_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #5 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.120", align 8 ; 4 uses
end_hunk_3
