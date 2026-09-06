Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/gbdt?download=true
inline.NumInlined: 3485
inline.NumDeleted: 1590
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm:bb.a

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #37
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !375
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !376    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !377  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !317
  store ptr %i.w, ptr %3, align 8, !tbaa !317
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !377
  store ptr %3, ptr %i.x, align 8, !tbaa !317
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !378
  store ptr %i.z, ptr %3, align 8, !tbaa !317
  store ptr %3, ptr %i.y, align 8, !tbaa !378
  %i.aa = load ptr, ptr %3, align 8, !tbaa !317   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !375
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !190
  %i.ae = sext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !377
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !377
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !819
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !819
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !203

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !821
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKidELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !203

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #36
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKidELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #35 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKidELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKidELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !378  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !378
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !317 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !190
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !377  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !378
  store ptr %i.p, ptr %.02530, align 8, !tbaa !317
  store ptr %.02530, ptr %i.g, align 8, !tbaa !378
  store ptr %i.g, ptr %i.n, align 8, !tbaa !377
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !317
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !377
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !317
  store ptr %i.s, ptr %.02530, align 8, !tbaa !317
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !377
  store ptr %.02530, ptr %i.t, align 8, !tbaa !317
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !820

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !376    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !375
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #34
  br label %_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiSt4pairIKidESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !375
  store ptr %.0.i, ptr %0, align 8, !tbaa !376
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM4GBDT12GetPredictAtEiPdPl.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #23 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !190    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 %i.g, ptr %i.b, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 1, ptr %i.c, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !tbaa !190
  %i.h = load i32, ptr %0, align 4, !tbaa !190    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !190
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !190
  %i.k = load i32, ptr %i.a, align 4, !tbaa !190  ; 2 uses
  %.not50 = icmp sgt i32 %i.k, %i.j
  br i1 %.not50, label %._crit_edge54, label %.lr.ph53

.lr.ph53:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 408 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 412 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.o = sext i32 %i.k to i64                     ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph53, %_ZNSt6vectorIdSaIdEED2Ev.exit36
  %indvar = phi i64 [ 0, %.lr.ph53 ], [ %indvar.next, %_ZNSt6vectorIdSaIdEED2Ev.exit36 ] ; 3 uses
  %indvars.iv61 = phi i64 [ %i.o, %.lr.ph53 ], [ %indvars.iv.next62, %_ZNSt6vectorIdSaIdEED2Ev.exit36 ] ; 4 uses
  %6 = add i64 %indvar, %i.o
  %i.p = add i64 %indvar, %i.o
  %i.q = shl i64 %i.p, 3
  %i.r = load i32, ptr %i.l, align 8, !tbaa !207  ; 3 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %i.t = icmp slt i32 %i.r, 0
  br i1 %i.t, label %.invoke, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.invoke:                                          ; preds = %._crit_edge, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #36
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.u = shl nuw nsw i64 %i.s, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #35
          to label %.noexc25 unwind label %.loopexit ; 14 uses

.noexc25:                                         ; preds = %bb.d
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 4 uses
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !273
  %i.y = add nsw i64 %i.s, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc25
  %i.aa = getelementptr i8, ptr %i.v, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.y, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !273
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc25
  %.pr = load i32, ptr %i.l, align 8, !tbaa !207  ; 3 uses
  %i.ab = icmp sgt i32 %.pr, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.ac = load ptr, ptr %4, align 8, !tbaa !170   ; 2 uses
  %i.ad = load i32, ptr %2, align 4, !tbaa !190   ; 2 uses
  %i.ae = sext i32 %i.ad to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %.pr to i64    ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv61 ; 6 uses
  %min.iters.check85 = icmp ugt i32 %.pr, 7
  %ident.check81.not = icmp eq i32 %i.ad, 1
  %or.cond = select i1 %min.iters.check85, i1 %ident.check81.not, i1 false
  br i1 %or.cond, label %vector.memcheck82, label %scalar.ph84.preheader

vector.memcheck82:                                ; preds = %.lr.ph
  %i.af = ptrtoaddr ptr %i.ac to i64
  %i.ag = shl i64 %6, 3
  %i.ah = add i64 %i.ag, %i.af
  %i.ai = sub i64 %i.ah, %i.w
  %diff.check83 = icmp ugt i64 %i.ai, -32
  br i1 %diff.check83, label %scalar.ph84.preheader, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck82
  %n.vec87 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next92, %vector.body88 ] ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %invariant.gep, i64 %index89 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %wide.load90 = load <2 x double>, ptr %i.aj, align 8, !tbaa !273
  %wide.load91 = load <2 x double>, ptr %i.ak, align 8, !tbaa !273
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index89 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x double> %wide.load90, ptr %i.al, align 8, !tbaa !273
  store <2 x double> %wide.load91, ptr %i.am, align 8, !tbaa !273
  %index.next92 = add nuw i64 %index89, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.an, label %middle.block93, label %vector.body88, !llvm.loop !822

middle.block93:                                   ; preds = %vector.body88
  %cmp.n94 = icmp eq i64 %n.vec87, %wide.trip.count
  br i1 %cmp.n94, label %._crit_edge, label %scalar.ph84.preheader

scalar.ph84.preheader:                            ; preds = %vector.memcheck82, %.lr.ph, %middle.block93
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck82 ], [ 0, %.lr.ph ], [ %n.vec87, %middle.block93 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph84.prol.loopexit, label %scalar.ph84.prol

scalar.ph84.prol:                                 ; preds = %scalar.ph84.preheader, %scalar.ph84.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph84.prol ], [ %indvars.iv.ph, %scalar.ph84.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph84.prol ], [ 0, %scalar.ph84.preheader ]
  %i.ao = mul nsw i64 %indvars.iv.prol, %i.ae
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ao
  %i.ap = load double, ptr %gep.prol, align 8, !tbaa !273
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.prol
  store double %i.ap, ptr %i.aq, align 8, !tbaa !273
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph84.prol.loopexit, label %scalar.ph84.prol, !llvm.loop !823

scalar.ph84.prol.loopexit:                        ; preds = %scalar.ph84.prol, %scalar.ph84.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph84.preheader ], [ %indvars.iv.next.prol, %scalar.ph84.prol ]
  %i.ar = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %._crit_edge, label %scalar.ph84

._crit_edge:                                      ; preds = %scalar.ph84.prol.loopexit, %scalar.ph84, %middle.block93, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %.sroa.041.074 = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.v, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit ], [ %i.v, %middle.block93 ], [ %i.v, %scalar.ph84 ], [ %i.v, %scalar.ph84.prol.loopexit ] ; 4 uses
  %.sroa.945.073 = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.x, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit ], [ %i.x, %middle.block93 ], [ %i.x, %scalar.ph84 ], [ %i.x, %scalar.ph84.prol.loopexit ]
  %i.at = load i32, ptr %i.m, align 4, !tbaa !176 ; 3 uses
  %i.au = sext i32 %i.at to i64                   ; 3 uses
  %i.av = icmp slt i32 %i.at, 0
  br i1 %i.av, label %.invoke, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i26

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i26: ; preds = %._crit_edge
  %.not.i.i.i.i27 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i.i27, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit34, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i26
  %i.aw = shl nuw nsw i64 %i.au, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #35
          to label %.noexc33 unwind label %.loopexit ; 5 uses

.noexc33:                                         ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.au ; 2 uses
  store double 0.000000e+00, ptr %i.ax, align 8, !tbaa !273
  %i.az = add nsw i64 %i.au, -1                   ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit34, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i28

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i28: ; preds = %.noexc33
  %i.bb = getelementptr i8, ptr %i.ax, i64 8
  %.idx.i.i.i.i.i.i.i29 = shl nuw nsw i64 %i.az, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bb, i8 0, i64 %.idx.i.i.i.i.i.i.i29, i1 false), !tbaa !273
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit34

scalar.ph84:                                      ; preds = %scalar.ph84.prol.loopexit, %scalar.ph84
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph84 ], [ %indvars.iv.unr, %scalar.ph84.prol.loopexit ] ; 6 uses
  %i.bc = mul nsw i64 %indvars.iv, %i.ae
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bc
  %i.bd = load double, ptr %gep, align 8, !tbaa !273
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  store double %i.bd, ptr %i.be, align 8, !tbaa !273
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = mul nsw i64 %indvars.iv.next, %i.ae
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bf
  %i.bg = load double, ptr %gep.1, align 8, !tbaa !273
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next
  store double %i.bg, ptr %i.bh, align 8, !tbaa !273
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bi = mul nsw i64 %indvars.iv.next.1, %i.ae
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bi
  %i.bj = load double, ptr %gep.2, align 8, !tbaa !273
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.1
  store double %i.bj, ptr %i.bk, align 8, !tbaa !273
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bl = mul nsw i64 %indvars.iv.next.2, %i.ae
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bl
  %i.bm = load double, ptr %gep.3, align 8, !tbaa !273
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.2
  store double %i.bm, ptr %i.bn, align 8, !tbaa !273
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph84, !llvm.loop !824

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit34:             ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i28, %.noexc33, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i26
  %.sroa.037.0 = phi ptr [ %i.ax, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i28 ], [ %i.ax, %.noexc33 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i26 ] ; 11 uses
  %.sroa.9.0 = phi ptr [ %i.ay, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i28 ], [ %i.ay, %.noexc33 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i26 ]
  %.sroa.037.078 = ptrtoaddr ptr %.sroa.037.0 to i64
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !206 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !202
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  %i.br = load ptr, ptr %i.bq, align 8
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %.sroa.041.074, ptr noundef %.sroa.037.0)
          to label %.preheader unwind label %.loopexit

.preheader:                                       ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit34
  %i.bs = load i32, ptr %i.m, align 4, !tbaa !176 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph48, label %._crit_edge49

.lr.ph48:                                         ; preds = %.preheader
  %i.bu = load ptr, ptr %5, align 8, !tbaa !170   ; 2 uses
  %i.bv = load i32, ptr %2, align 4, !tbaa !190   ; 2 uses
  %i.bw = sext i32 %i.bv to i64                   ; 5 uses
  %wide.trip.count59 = zext nneg i32 %i.bs to i64 ; 5 uses
  %invariant.gep76 = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv61 ; 6 uses
  %min.iters.check = icmp ugt i32 %i.bs, 7
  %ident.check.not = icmp eq i32 %i.bv, 1
  %or.cond96 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond96, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph48
  %i.bx = ptrtoaddr ptr %i.bu to i64
  %i.by = add i64 %i.q, %i.bx
  %i.bz = sub i64 %.sroa.037.078, %i.by
  %diff.check = icmp ugt i64 %i.bz, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count59, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.037.0, i64 %index ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %wide.load = load <2 x double>, ptr %i.ca, align 8, !tbaa !273
  %wide.load79 = load <2 x double>, ptr %i.cb, align 8, !tbaa !273
  %i.cc = getelementptr [8 x i8], ptr %invariant.gep76, i64 %index ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  store <2 x double> %wide.load, ptr %i.cc, align 8, !tbaa !273
  store <2 x double> %wide.load79, ptr %i.cd, align 8, !tbaa !273
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !825

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count59
  br i1 %cmp.n, label %._crit_edge49.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph48, %middle.block
  %indvars.iv56.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph48 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter97 = and i64 %wide.trip.count59, 3     ; 2 uses
  %lcmp.mod98.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod98.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv56.prol = phi i64 [ %indvars.iv.next57.prol, %scalar.ph.prol ], [ %indvars.iv56.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter99 = phi i64 [ %prol.iter99.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.037.0, i64 %indvars.iv56.prol
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !273
  %i.ch = mul nsw i64 %indvars.iv56.prol, %i.bw
  %gep77.prol = getelementptr [8 x i8], ptr %invariant.gep76, i64 %i.ch
  store double %i.cg, ptr %gep77.prol, align 8, !tbaa !273
  %indvars.iv.next57.prol = add nuw nsw i64 %indvars.iv56.prol, 1 ; 2 uses
  %prol.iter99.next = add i64 %prol.iter99, 1     ; 2 uses
  %prol.iter99.cmp.not = icmp eq i64 %prol.iter99.next, %xtraiter97
  br i1 %prol.iter99.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !826

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv56.unr = phi i64 [ %indvars.iv56.ph, %scalar.ph.preheader ], [ %indvars.iv.next57.prol, %scalar.ph.prol ]
  %i.ci = sub nsw i64 %indvars.iv56.ph, %wide.trip.count59
  %i.cj = icmp ugt i64 %i.ci, -4
  br i1 %i.cj, label %._crit_edge49.thread, label %scalar.ph

._crit_edge49:                                    ; preds = %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.037.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %._crit_edge49.thread

._crit_edge49.thread:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge49
  %i.ck = ptrtoint ptr %.sroa.9.0 to i64
  %i.cl = ptrtoint ptr %.sroa.037.0 to i64
  %i.cm = sub i64 %i.ck, %i.cl
end_hunk_0
