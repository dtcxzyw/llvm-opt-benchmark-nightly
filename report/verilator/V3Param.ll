Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Param?download=true
inline.NumInlined: 11479
inline.NumDeleted: 3874
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb0EEEm:bb.a
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !294
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !293    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !705  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !126
  store ptr %i.w, ptr %3, align 8, !tbaa !126
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !705
  store ptr %3, ptr %i.x, align 8, !tbaa !126
  br label %_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !314
  store ptr %i.z, ptr %3, align 8, !tbaa !126
  store ptr %3, ptr %i.y, align 8, !tbaa !314
  %i.aa = load ptr, ptr %3, align 8, !tbaa !126   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !294
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !1452
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !705
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !705
  br label %_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit

_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS6_10_Hash_nodeIS4_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !1463
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !1463
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1493
  br label %_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKP17AstParamTypeDTypeiELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKP17AstParamTypeDTypeiELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKP17AstParamTypeDTypeiELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKP17AstParamTypeDTypeiELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !314  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !314
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !126 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1452
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !705  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !314
  store ptr %i.p, ptr %.02530, align 8, !tbaa !126
  store ptr %.02530, ptr %i.g, align 8, !tbaa !314
  store ptr %i.g, ptr %i.n, align 8, !tbaa !705
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !126
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !705
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !126
  store ptr %i.s, ptr %.02530, align 8, !tbaa !126
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !705
  store ptr %.02530, ptr %i.t, align 8, !tbaa !126
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1494

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !293    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !294
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #24
  br label %_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIP17AstParamTypeDTypeSt4pairIKS1_iESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !294
  store ptr %.0.i, ptr %0, align 8, !tbaa !293
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP6AstPinSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPP6AstPinS1_EvT_S3_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1473
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1472 ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %3, align 8, !tbaa !946    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !225

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !1472
  br label %_ZSt22__uninitialized_move_aIPP6AstPinS2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPP6AstPinS2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !946
  store ptr %i.s, ptr %i.d, align 8, !tbaa !946
  br label %_ZSt22__uninitialized_move_aIPP6AstPinS2_SaIS1_EET0_T_S5_S4_RT1_.exit

_ZSt22__uninitialized_move_aIPP6AstPinS2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !1472
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !225

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPP6AstPinS2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPP6AstPinS2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load ptr, ptr %1, align 8, !tbaa !946
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !946
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec128, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat130 = shufflevector <2 x ptr> %broadcast.splatinsert129, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 3
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <2 x ptr> %broadcast.splat130, ptr %next.gep133, align 8, !tbaa !946
  store <2 x ptr> %broadcast.splat130, ptr %i.ak, align 8, !tbaa !946
  %index.next134 = add nuw i64 %index132, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !1495

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPP6AstPinS1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.07.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store ptr %i.i, ptr %.07.i.i.i, align 8, !tbaa !946
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPP6AstPinS1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1496

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPP6AstPinmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %i.ar = add i64 %i.aq, -8
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !946
  store <2 x ptr> %broadcast.splat, ptr %i.ay, align 8, !tbaa !946
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1497

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPP6AstPinmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store ptr %i.i, ptr %.07.i.i.i.i.i.i.i, align 8, !tbaa !946
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPP6AstPinmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1498

_ZSt24__uninitialized_fill_n_aIPP6AstPinmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !1472
  %i.bb = icmp sgt i64 %i.k, 8
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !225

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPP6AstPinmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1472
  br label %_ZSt22__uninitialized_move_aIPP6AstPinS2_SaIS1_EET0_T_S5_S4_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPP6AstPinmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 8
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPP6AstPinS2_SaIS1_EET0_T_S5_S4_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr %1, align 8, !tbaa !946
  store ptr %i.bd, ptr %.0.i.i.i.i.i, align 8, !tbaa !946
  br label %_ZSt22__uninitialized_move_aIPP6AstPinS2_SaIS1_EET0_T_S5_S4_RT1_.exit69

_ZSt22__uninitialized_move_aIPP6AstPinS2_SaIS1_EET0_T_S5_S4_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !1472
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPP6AstPinS1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPP6AstPinS2_SaIS1_EET0_T_S5_S4_RT1_.exit69
  %i.bg = add i64 %i.f, -8
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 4611686018427387900  ; 3 uses
  %i.bk = shl i64 %n.vec115, 3
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %broadcast.splat117 = shufflevector <2 x ptr> %broadcast.splatinsert116, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 3
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x ptr> %broadcast.splat117, ptr %next.gep120, align 8, !tbaa !946
  store <2 x ptr> %broadcast.splat117, ptr %i.bn, align 8, !tbaa !946
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !1499

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPP6AstPinS1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.07.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store ptr %i.i, ptr %.07.i.i.i72, align 8, !tbaa !946
  %i.bp = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPP6AstPinS1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !1500

end_hunk_0
begin_hunk_1_@_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEEvT_SI_SI_T0_SJ_T1_:bb.a
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.016.i = phi i64 [ %i.r, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.tr7684, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.w = lshr i64 %.016.i, 1                      ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !237
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 284
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !396
  %i.ab = icmp slt i32 %i.aa, %i.v                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = xor i64 %i.w, -1
  %i.ae = add nsw i64 %.016.i, %i.ad
  %.sroa.011.1.i = select i1 %i.ab, ptr %i.ac, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.ab, i64 %i.ae, i64 %i.w    ; 2 uses
  %i.af = icmp sgt i64 %.1.i, 0
  br i1 %i.af, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit.loopexit, !llvm.loop !1690

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit.loopexit ], [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit.loopexit ], [ %.tr7684, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ag = sub i64 %.pre-phi, %i.n
  %i.ah = ashr exact i64 %i.ag, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53: ; preds = %bb.e
  %i.ai = sdiv i64 %.tr7987, 2                    ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %.tr7684, i64 %i.ai ; 2 uses
  %i.ak = ptrtoint ptr %.tr83 to i64              ; 3 uses
  %i.al = sub i64 %i.n, %i.ak
  %i.am = ashr exact i64 %i.al, 3                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i55, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i55: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !237
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 284
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !396
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i55
  %.016.i57 = phi i64 [ %i.am, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i55 ], [ %.1.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56 ] ; 2 uses
  %.sroa.011.015.i58 = phi ptr [ %.tr83, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i55 ], [ %.sroa.011.1.i61, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56 ] ; 2 uses
  %i.ar = lshr i64 %.016.i57, 1                   ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i58, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !237
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 284
  %i.av = load i32, ptr %i.au, align 4, !tbaa !396
  %i.aw = icmp slt i32 %i.aq, %i.av               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ay = xor i64 %i.ar, -1
  %i.az = add nsw i64 %.016.i57, %i.ay
  %.sroa.011.1.i61 = select i1 %i.aw, ptr %.sroa.011.015.i58, ptr %i.ax ; 3 uses
  %.1.i62 = select i1 %i.aw, i64 %i.ar, i64 %i.az ; 2 uses
  %i.ba = icmp sgt i64 %.1.i62, 0
  br i1 %i.ba, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit.loopexit, !llvm.loop !1691

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i56
  %.pre90 = ptrtoint ptr %.sroa.011.1.i61 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53
  %.pre-phi91 = phi i64 [ %.pre90, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit.loopexit ], [ %i.ak, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ]
  %.sroa.011.0.lcssa.i54 = phi ptr [ %.sroa.011.1.i61, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit.loopexit ], [ %.tr83, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53 ]
  %i.bb = sub i64 %.pre-phi91, %i.ak
  %i.bc = ashr exact i64 %i.bb, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit
  %.sroa.065.0 = phi ptr [ %i.p, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i54, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit ], [ %i.aj, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit ] ; 2 uses
  %.047 = phi i64 [ %i.ah, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit ], [ %i.ai, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.o, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit ], [ %i.bc, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit ] ; 2 uses
  %i.bd = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %.sroa.065.0, ptr %.tr7684, ptr %.sroa.0.0) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEEvT_SI_SI_T0_SJ_T1_(ptr %.tr83, ptr %.sroa.065.0, ptr %i.bd, i64 noundef %.0, i64 noundef %.047)
  %i.be = sub nsw i64 %.tr7886, %.0               ; 2 uses
  %i.bf = sub nsw i64 %.tr7987, %.047             ; 2 uses
  %i.bg = icmp eq i64 %i.be, 0
  %i.bh = icmp eq i64 %i.bf, 0
  %or.cond = or i1 %i.bg, %i.bh
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check164 = icmp ult i64 %i.m, 104
  br i1 %min.iters.check164, label %.lr.ph.i.preheader180, label %vector.memcheck157

vector.memcheck157:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep158 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep159 = getelementptr i8, ptr %1, i64 %i.s
  %bound0160 = icmp ult ptr %0, %scevgep159
  %bound1161 = icmp ult ptr %1, %scevgep158
  %found.conflict162 = and i1 %bound0160, %bound1161
  br i1 %found.conflict162, label %.lr.ph.i.preheader180, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck157
  %n.vec166 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec166, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next175, %vector.body167 ] ; 2 uses
  %i.w = shl i64 %index168, 3                     ; 2 uses
  %next.gep169 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep170 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep170, i64 16 ; 2 uses
  %wide.load171 = load <2 x ptr>, ptr %next.gep170, align 8, !tbaa !237, !alias.scope !1692, !noalias !1695
  %wide.load172 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !237, !alias.scope !1692, !noalias !1695
  %i.y = getelementptr i8, ptr %next.gep169, i64 16 ; 2 uses
  %wide.load173 = load <2 x ptr>, ptr %next.gep169, align 8, !tbaa !237, !alias.scope !1695
  %wide.load174 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !237, !alias.scope !1695
  store <2 x ptr> %wide.load173, ptr %next.gep170, align 8, !tbaa !237, !alias.scope !1692, !noalias !1695
  store <2 x ptr> %wide.load174, ptr %i.x, align 8, !tbaa !237, !alias.scope !1692, !noalias !1695
  store <2 x ptr> %wide.load171, ptr %next.gep169, align 8, !tbaa !237, !alias.scope !1695
  store <2 x ptr> %wide.load172, ptr %i.y, align 8, !tbaa !237, !alias.scope !1695
  %index.next175 = add nuw i64 %index168, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next175, %n.vec166
  br i1 %i.z, label %middle.block176, label %vector.body167, !llvm.loop !1697

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %i.o, %n.vec166
  br i1 %cmp.n177, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.preheader180

.lr.ph.i.preheader180:                            ; preds = %vector.memcheck157, %.lr.ph.i.preheader, %middle.block176
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck157 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block176 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck157 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block176 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader180, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %i.aa = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !237
  %i.ab = load ptr, ptr %.sroa.0.08.i, align 8, !tbaa !237
  store ptr %i.ab, ptr %.sroa.04.07.i, align 8, !tbaa !237
  store ptr %i.aa, ptr %.sroa.0.08.i, align 8, !tbaa !237
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i, !llvm.loop !1698

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.041.0 = phi ptr [ %0, %bb.d ], [ %.sroa.041.0.be, %.backedge ] ; 22 uses
  %.084 = phi i64 [ %i.i, %bb.d ], [ %.084.be, %.backedge ] ; 18 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %i.ag = sub nsw i64 %.0, %.084                  ; 10 uses
  %i.ah = icmp slt i64 %.084, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.084, 1
  br i1 %i.ai, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %bb.f
  %i.aj = load ptr, ptr %.sroa.041.0, align 8, !tbaa !237
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 8
  %.idx86 = shl nuw nsw i64 %.0, 3                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 %.idx86
  %gepdiff = add nsw i64 %.idx86, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.041.0, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !237
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph99.preheader, label %._crit_edge100

.lr.ph99.preheader:                               ; preds = %bb.g
  %i.ao = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.084 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 6
  br i1 %min.iters.check, label %.lr.ph99.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph99.preheader
  %i.ap = shl i64 %.0, 3
  %i.aq = sub i64 %.0, %.084
  %i.ar = shl i64 %i.aq, 3
  %scevgep = getelementptr i8, ptr %.sroa.041.0, i64 %i.ar
  %scevgep127 = getelementptr i8, ptr %.sroa.041.0, i64 %i.ap
  %bound0 = icmp ult ptr %.sroa.041.0, %scevgep127
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775804     ; 4 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 %i.as
  %i.au = getelementptr i8, ptr %.sroa.041.0, i64 %i.as ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %next.gep128 = getelementptr i8, ptr %.sroa.041.0, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep128, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep128, align 8, !tbaa !237, !alias.scope !1699, !noalias !1702
  %wide.load129 = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !237, !alias.scope !1699, !noalias !1702
  %i.ax = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load130 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !237, !alias.scope !1702
  %wide.load131 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !237, !alias.scope !1702
  store <2 x ptr> %wide.load130, ptr %next.gep128, align 8, !tbaa !237, !alias.scope !1699, !noalias !1702
  store <2 x ptr> %wide.load131, ptr %i.aw, align 8, !tbaa !237, !alias.scope !1699, !noalias !1702
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !237, !alias.scope !1702
  store <2 x ptr> %wide.load129, ptr %i.ax, align 8, !tbaa !237, !alias.scope !1702
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1704

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge100, label %.lr.ph99.preheader181

.lr.ph99.preheader181:                            ; preds = %vector.memcheck, %.lr.ph99.preheader, %middle.block
  %.02897.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph99.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.038.096.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph99.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.sroa.041.195.ph = phi ptr [ %.sroa.041.0, %vector.memcheck ], [ %.sroa.041.0, %.lr.ph99.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %i.az = sub i64 %.0, %.084
  %xtraiter189 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol

.lr.ph99.prol:                                    ; preds = %.lr.ph99.preheader181, %.lr.ph99.prol
  %.02897.prol = phi i64 [ %i.be, %.lr.ph99.prol ], [ %.02897.ph, %.lr.ph99.preheader181 ]
  %.sroa.038.096.prol = phi ptr [ %i.bd, %.lr.ph99.prol ], [ %.sroa.038.096.ph, %.lr.ph99.preheader181 ] ; 3 uses
  %.sroa.041.195.prol = phi ptr [ %i.bc, %.lr.ph99.prol ], [ %.sroa.041.195.ph, %.lr.ph99.preheader181 ] ; 3 uses
  %prol.iter191 = phi i64 [ %prol.iter191.next, %.lr.ph99.prol ], [ 0, %.lr.ph99.preheader181 ]
  %i.ba = load ptr, ptr %.sroa.041.195.prol, align 8, !tbaa !237
  %i.bb = load ptr, ptr %.sroa.038.096.prol, align 8, !tbaa !237
  store ptr %i.bb, ptr %.sroa.041.195.prol, align 8, !tbaa !237
  store ptr %i.ba, ptr %.sroa.038.096.prol, align 8, !tbaa !237
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.041.195.prol, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.038.096.prol, i64 8 ; 2 uses
  %i.be = add nuw nsw i64 %.02897.prol, 1         ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !1705

.lr.ph99.prol.loopexit:                           ; preds = %.lr.ph99.prol, %.lr.ph99.preheader181
  %.lcssa.unr = phi ptr [ poison, %.lr.ph99.preheader181 ], [ %i.bc, %.lr.ph99.prol ]
  %.02897.unr = phi i64 [ %.02897.ph, %.lr.ph99.preheader181 ], [ %i.be, %.lr.ph99.prol ]
  %.sroa.038.096.unr = phi ptr [ %.sroa.038.096.ph, %.lr.ph99.preheader181 ], [ %i.bd, %.lr.ph99.prol ]
  %.sroa.041.195.unr = phi ptr [ %.sroa.041.195.ph, %.lr.ph99.preheader181 ], [ %i.bc, %.lr.ph99.prol ]
  %i.bf = sub i64 %.02897.ph, %.0
  %i.bg = add i64 %i.bf, %.084
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge100, label %.lr.ph99

._crit_edge100:                                   ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99, %middle.block, %bb.g
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.0, %bb.g ], [ %i.au, %middle.block ], [ %.lcssa.unr, %.lr.ph99.prol.loopexit ], [ %i.bx, %.lr.ph99 ]
  %i.bi = srem i64 %.0, %.084                     ; 2 uses
  %.not31 = icmp eq i64 %i.bi, 0
  br i1 %.not31, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.h

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %.02897 = phi i64 [ %i.bz, %.lr.ph99 ], [ %.02897.unr, %.lr.ph99.prol.loopexit ]
  %.sroa.038.096 = phi ptr [ %i.by, %.lr.ph99 ], [ %.sroa.038.096.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %.sroa.041.195 = phi ptr [ %i.bx, %.lr.ph99 ], [ %.sroa.041.195.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %i.bj = load ptr, ptr %.sroa.041.195, align 8, !tbaa !237
  %i.bk = load ptr, ptr %.sroa.038.096, align 8, !tbaa !237
  store ptr %i.bk, ptr %.sroa.041.195, align 8, !tbaa !237
  store ptr %i.bj, ptr %.sroa.038.096, align 8, !tbaa !237
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !237
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !237
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !237
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !237
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !237
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !237
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !237
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !237
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !237
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !237
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !237
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !237
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 32
  %i.bz = add nuw nsw i64 %.02897, 4              ; 2 uses
  %exitcond108.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond108.not.3, label %._crit_edge100, label %.lr.ph99, !llvm.loop !1707

bb.h:                                             ; preds = %._crit_edge100
  %i.ca = sub nsw i64 %.084, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.0 ; 8 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !237
  %.idx = shl nuw nsw i64 %.0, 3
  %i.cf = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !225

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %.sroa.041.0, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 8
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %.sroa.041.0, align 8, !tbaa !237
  store ptr %i.cl, ptr %i.cd, align 8, !tbaa !237
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store ptr %i.ce, ptr %.sroa.041.0, align 8, !tbaa !237
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.n:                                             ; preds = %bb.i
  %i.cm = sub i64 0, %i.ag
  %i.cn = getelementptr [8 x i8], ptr %i.cc, i64 %i.cm ; 6 uses
  %i.co = icmp sgt i64 %.084, 0
  br i1 %i.co, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check140 = icmp ult i64 %.084, 6
  br i1 %min.iters.check140, label %.lr.ph.preheader182, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph.preheader
  %i.cp = sub i64 %.0, %.084
  %i.cq = shl i64 %i.cp, 3
  %scevgep135 = getelementptr i8, ptr %.sroa.041.0, i64 %i.cq
  %bound0136 = icmp ult ptr %.sroa.041.0, %i.cc
  %bound1137 = icmp ult ptr %scevgep135, %i.cn
  %found.conflict138 = and i1 %bound0136, %bound1137
  br i1 %found.conflict138, label %.lr.ph.preheader182, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck134
  %n.vec142 = and i64 %.084, 9223372036854775804  ; 4 uses
  %i.cr = mul i64 %n.vec142, -8                   ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cc, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cn, i64 %i.cr
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next151, %vector.body143 ] ; 2 uses
  %i.cu = mul i64 %index144, -8                   ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.cc, i64 %i.cu ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.cn, i64 %i.cu ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %next.gep146, i64 -16 ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep146, i64 -32 ; 2 uses
  %wide.load147 = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !237, !alias.scope !1708, !noalias !1711
  %wide.load148 = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !237, !alias.scope !1708, !noalias !1711
  %i.cx = getelementptr inbounds i8, ptr %next.gep145, i64 -16 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep145, i64 -32 ; 2 uses
  %wide.load149 = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !237, !alias.scope !1711
  %wide.load150 = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !237, !alias.scope !1711
  store <2 x ptr> %wide.load149, ptr %i.cv, align 8, !tbaa !237, !alias.scope !1708, !noalias !1711
  store <2 x ptr> %wide.load150, ptr %i.cw, align 8, !tbaa !237, !alias.scope !1708, !noalias !1711
  store <2 x ptr> %wide.load147, ptr %i.cx, align 8, !tbaa !237, !alias.scope !1711
  store <2 x ptr> %wide.load148, ptr %i.cy, align 8, !tbaa !237, !alias.scope !1711
  %index.next151 = add nuw i64 %index144, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.cz, label %middle.block152, label %vector.body143, !llvm.loop !1713

middle.block152:                                  ; preds = %vector.body143
  %cmp.n153 = icmp eq i64 %.084, %n.vec142
  br i1 %cmp.n153, label %._crit_edge, label %.lr.ph.preheader182

.lr.ph.preheader182:                              ; preds = %vector.memcheck134, %.lr.ph.preheader, %middle.block152
  %.02794.ph = phi i64 [ 0, %vector.memcheck134 ], [ 0, %.lr.ph.preheader ], [ %n.vec142, %middle.block152 ] ; 3 uses
  %.sroa.0.093.ph = phi ptr [ %i.cc, %vector.memcheck134 ], [ %i.cc, %.lr.ph.preheader ], [ %i.cs, %middle.block152 ] ; 2 uses
  %.sroa.041.292.ph = phi ptr [ %i.cn, %vector.memcheck134 ], [ %i.cn, %.lr.ph.preheader ], [ %i.ct, %middle.block152 ] ; 2 uses
  %xtraiter = and i64 %.084, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader182, %.lr.ph.prol
  %.02794.prol = phi i64 [ %i.de, %.lr.ph.prol ], [ %.02794.ph, %.lr.ph.preheader182 ]
  %.sroa.0.093.prol = phi ptr [ %i.db, %.lr.ph.prol ], [ %.sroa.0.093.ph, %.lr.ph.preheader182 ]
  %.sroa.041.292.prol = phi ptr [ %i.da, %.lr.ph.prol ], [ %.sroa.041.292.ph, %.lr.ph.preheader182 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader182 ]
  %i.da = getelementptr inbounds i8, ptr %.sroa.041.292.prol, i64 -8 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.093.prol, i64 -8 ; 4 uses
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !237
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !237
  store ptr %i.dd, ptr %i.da, align 8, !tbaa !237
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !237
  %i.de = add nuw nsw i64 %.02794.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1714

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader182
  %.02794.unr = phi i64 [ %.02794.ph, %.lr.ph.preheader182 ], [ %i.de, %.lr.ph.prol ]
  %.sroa.0.093.unr = phi ptr [ %.sroa.0.093.ph, %.lr.ph.preheader182 ], [ %i.db, %.lr.ph.prol ]
  %.sroa.041.292.unr = phi ptr [ %.sroa.041.292.ph, %.lr.ph.preheader182 ], [ %i.da, %.lr.ph.prol ]
  %i.df = sub nsw i64 %.02794.ph, %.084
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block152, %bb.n
  %.sroa.041.2.lcssa = phi ptr [ %i.cn, %bb.n ], [ %.sroa.041.0, %middle.block152 ], [ %.sroa.041.0, %.lr.ph ], [ %.sroa.041.0, %.lr.ph.prol.loopexit ]
  %i.dh = srem i64 %.0, %i.ag                     ; 2 uses
  %.not = icmp eq i64 %i.dh, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.041.0.be = phi ptr [ %.sroa.041.1.lcssa, %bb.h ], [ %.sroa.041.2.lcssa, %._crit_edge ]
  %.084.be = phi i64 [ %i.ca, %bb.h ], [ %i.dh, %._crit_edge ]
  %.0.be = phi i64 [ %.084, %bb.h ], [ %i.ag, %._crit_edge ]
  br label %bb.e, !llvm.loop !1715

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02794 = phi i64 [ %i.dy, %.lr.ph ], [ %.02794.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.093 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.0.093.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.041.292 = phi ptr [ %i.du, %.lr.ph ], [ %.sroa.041.292.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -8 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -8 ; 2 uses
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !237
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !237
  store ptr %i.dl, ptr %i.di, align 8, !tbaa !237
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !237
  %i.dm = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -16 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -16 ; 2 uses
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !237
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !237
  store ptr %i.dp, ptr %i.dm, align 8, !tbaa !237
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !237
  %i.dq = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -24 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -24 ; 2 uses
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !237
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !237
  store ptr %i.dt, ptr %i.dq, align 8, !tbaa !237
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !237
  %i.du = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -32 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -32 ; 3 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !237
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !237
  store ptr %i.dx, ptr %i.du, align 8, !tbaa !237
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !237
  %i.dy = add nuw nsw i64 %.02794, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dy, %.084
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1716

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %._crit_edge, %._crit_edge100, %.lr.ph.i, %middle.block176, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %bb.b, %bb.a
  %.sroa.024.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ], [ %i.af, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ], [ %1, %middle.block176 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge100 ], [ %i.af, %._crit_edge ]
  ret ptr %.sroa.024.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEEvT_SI_SI_T0_SJ_T1_SJ_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %.not99 = icmp sgt i64 %3, %6
  %.not66100 = icmp sgt i64 %4, %6
  %or.cond101 = and i1 %.not99, %.not66100
  br i1 %or.cond101, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.at, %tailrecurse ]
  %.tr93.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr95.lcssa = phi i64 [ %3, %bb.a ], [ %i.as, %tailrecurse ]
  %.tr96.lcssa = phi i64 [ %4, %bb.a ], [ %i.au, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEEvT_SI_SI_T0_SJ_T1_T2_(ptr %.tr.lcssa, ptr %.tr93.lcssa, ptr %2, i64 noundef %.tr95.lcssa, i64 noundef %.tr96.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr96105 = phi i64 [ %4, %.lr.ph ], [ %i.au, %tailrecurse ] ; 3 uses
  %.tr95104 = phi i64 [ %3, %.lr.ph ], [ %i.as, %tailrecurse ] ; 3 uses
  %.tr93103 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr102 = phi ptr [ %0, %.lr.ph ], [ %i.at, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr95104, %.tr96105
  %i.c = ptrtoint ptr %.tr93103 to i64            ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit70

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr95104, 2                    ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %.tr102, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZN8ParamTop20resortNetlistModulesEP10AstNetlistEUlPKS2_SF_E_EEET_SI_SI_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !237
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 284
  %i.k = load i32, ptr %i.j, align 4, !tbaa !396
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
end_hunk_1
