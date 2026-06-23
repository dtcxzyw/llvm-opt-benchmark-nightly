inline.NumInlined: 3368
inline.NumDeleted: 1576
begin_hunk_0_@_ZN5folly14ThreadLocalPtrINS_10TLRefCount13LocalRefCountES1_vE8Accessor7releaseEv:bb.a
  %i.v = and i32 %i.u, -401
  store i32 %i.v, ptr %i.a, align 4, !tbaa !7
  %i.w = and i32 %i.u, 15
  %.not.i.i.i1 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i1, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, label %bb.j, !prof !55

bb.j:                                             ; preds = %bb.i
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
  br label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  store i8 0, ptr %i.d, align 8, !tbaa !3099
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit: ; preds = %bb.h, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load i16, ptr %i.x, align 8, !tbaa !157
  %.not.i2 = icmp eq i16 %i.y, 0
  br i1 %.not.i2, label %bb.k, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, !prof !21

bb.k:                                             ; preds = %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit
  call void @_ZN5folly19shared_mutex_detail26throwOperationNotPermittedEv() #42
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit: ; preds = %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !3153
  call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 2 dereferenceable(4) %i.x)
  store i32 0, ptr %i.x, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ab, align 8, !tbaa !3155
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !163  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !67     ; 11 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775792
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #42
  unreachable

_ZNKSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 576460752303423487)
  %i.m = select i1 %i.k, i64 576460752303423487, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 4
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #43 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  %i.s = load <2 x i64>, ptr %2, align 8, !tbaa !2914
  store <2 x i64> %i.s, ptr %i.r, align 8, !tbaa !2914
  %.not13.i.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE12_M_check_lenEmPKc.exit
  %i.t = add i64 %i.a, -16
  %i.u = sub i64 %i.t, %i.f                       ; 2 uses
  %i.v = lshr i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 240
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader90, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.x = add i64 %i.a, -16
  %i.y = sub i64 %i.x, %i.f
  %i.z = and i64 %i.y, -16
  %i.aa = add i64 %i.z, 16                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.aa
  %scevgep49 = getelementptr i8, ptr %i.d, i64 %i.aa
  %bound0 = icmp ult ptr %i.q, %scevgep49
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader90, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 2305843009213693944      ; 3 uses
  %i.ab = shl i64 %n.vec, 4                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.q, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.d, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 4                       ; 3 uses
  %i.af = or disjoint i64 %i.ae, 64               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ae
  %next.gep50 = getelementptr i8, ptr %i.q, i64 %i.af
  %next.gep51 = getelementptr i8, ptr %i.d, i64 %i.ae
  %next.gep52 = getelementptr i8, ptr %i.d, i64 %i.af
  %wide.vec = load <8 x i64>, ptr %next.gep51, align 8, !tbaa !2914, !alias.scope !3277
  %wide.vec54 = load <8 x i64>, ptr %next.gep52, align 8, !tbaa !2914, !alias.scope !3277
  store <8 x i64> %wide.vec, ptr %next.gep, align 8, !tbaa !2914, !alias.scope !3280, !noalias !3277
  store <8 x i64> %wide.vec54, ptr %next.gep50, align 8, !tbaa !2914, !alias.scope !3280, !noalias !3277
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !3282

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader90

.lr.ph.i.i.i.i.i.preheader90:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader90, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader90 ] ; 3 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader90 ] ; 3 uses
  %i.ah = load i64, ptr %.01214.i.i.i.i.i, align 8, !tbaa !2914
  store i64 %i.ah, ptr %.015.i.i.i.i.i, align 8, !tbaa !2914
  %i.ai = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !2914
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !2914
  %i.al = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3283

_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorIN5folly6detail14TypeDescriptorESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ac, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.an = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 7 uses
  %.not13.i.i.i.i.i28 = icmp eq ptr %1, %i.c
  br i1 %.not13.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29.preheader

.lr.ph.i.i.i.i.i29.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.ao = add i64 %i.e, -16
  %i.ap = sub i64 %i.ao, %i.a                     ; 2 uses
  %i.aq = lshr i64 %i.ap, 4
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check66 = icmp ult i64 %i.ap, 304
  br i1 %min.iters.check66, label %.lr.ph.i.i.i.i.i29.preheader89, label %vector.memcheck59

vector.memcheck59:                                ; preds = %.lr.ph.i.i.i.i.i29.preheader
  %i.as = add i64 %i.e, -16
  %i.at = sub i64 %i.as, %i.a
  %i.au = and i64 %i.at, -16                      ; 2 uses
  %i.av = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.au
  %scevgep60 = getelementptr i8, ptr %i.av, i64 32
  %i.aw = getelementptr i8, ptr %1, i64 %i.au
  %scevgep61 = getelementptr i8, ptr %i.aw, i64 16
  %bound062 = icmp ult ptr %i.an, %scevgep61
  %bound163 = icmp ult ptr %1, %scevgep60
  %found.conflict64 = and i1 %bound062, %bound163
  br i1 %found.conflict64, label %.lr.ph.i.i.i.i.i29.preheader89, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck59
  %n.vec69 = and i64 %i.ar, 2305843009213693944   ; 3 uses
  %i.ax = shl i64 %n.vec69, 4                     ; 2 uses
  %i.ay = getelementptr i8, ptr %i.an, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %1, i64 %i.ax
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next84, %vector.body70 ] ; 2 uses
  %i.ba = shl i64 %index71, 4                     ; 3 uses
  %i.bb = or disjoint i64 %i.ba, 64               ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.an, i64 %i.ba
  %next.gep73 = getelementptr i8, ptr %i.an, i64 %i.bb
  %next.gep74 = getelementptr i8, ptr %1, i64 %i.ba
  %next.gep75 = getelementptr i8, ptr %1, i64 %i.bb
  %wide.vec76 = load <8 x i64>, ptr %next.gep74, align 8, !tbaa !2914, !alias.scope !3284
  %wide.vec79 = load <8 x i64>, ptr %next.gep75, align 8, !tbaa !2914, !alias.scope !3284
  store <8 x i64> %wide.vec76, ptr %next.gep72, align 8, !tbaa !2914, !alias.scope !3287, !noalias !3284
  store <8 x i64> %wide.vec79, ptr %next.gep73, align 8, !tbaa !2914, !alias.scope !3287, !noalias !3284
  %index.next84 = add nuw i64 %index71, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next84, %n.vec69
  br i1 %i.bc, label %middle.block85, label %vector.body70, !llvm.loop !3289

middle.block85:                                   ; preds = %vector.body70
  %cmp.n86 = icmp eq i64 %i.ar, %n.vec69
  br i1 %cmp.n86, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29.preheader89

.lr.ph.i.i.i.i.i29.preheader89:                   ; preds = %vector.memcheck59, %.lr.ph.i.i.i.i.i29.preheader, %middle.block85
  %.015.i.i.i.i.i30.ph = phi ptr [ %i.an, %vector.memcheck59 ], [ %i.an, %.lr.ph.i.i.i.i.i29.preheader ], [ %i.ay, %middle.block85 ]
  %.01214.i.i.i.i.i31.ph = phi ptr [ %1, %vector.memcheck59 ], [ %1, %.lr.ph.i.i.i.i.i29.preheader ], [ %i.az, %middle.block85 ]
  br label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %.lr.ph.i.i.i.i.i29.preheader89, %.lr.ph.i.i.i.i.i29
  %.015.i.i.i.i.i30 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i29 ], [ %.015.i.i.i.i.i30.ph, %.lr.ph.i.i.i.i.i29.preheader89 ] ; 2 uses
  %.01214.i.i.i.i.i31 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i29 ], [ %.01214.i.i.i.i.i31.ph, %.lr.ph.i.i.i.i.i29.preheader89 ] ; 2 uses
  %3 = load <2 x i64>, ptr %.01214.i.i.i.i.i31, align 8, !tbaa !2914
  store <2 x i64> %3, ptr %.015.i.i.i.i.i30, align 8, !tbaa !2914
  %i.bd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 16 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.bd, %i.c
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i29, !llvm.loop !3290

_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i29, %middle.block85, %_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.an, %_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ay, %middle.block85 ], [ %i.be, %.lr.ph.i.i.i.i.i29 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.d, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN5folly6detail14TypeDescriptorESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit34
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !69
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bi) #49
  br label %_ZNSt12_Vector_baseIN5folly6detail14TypeDescriptorESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5folly6detail14TypeDescriptorESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5folly6detail14TypeDescriptorES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, %bb.c
  store ptr %i.q, ptr %0, align 8, !tbaa !67
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.b, align 8, !tbaa !163
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14SingletonVault17reenableInstancesEv(ptr noundef nonnull align 8 dereferenceable(425) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %2 = alloca %"class.folly::LockedPtr.151", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<true>::WaitForever", align 1 ; 3 uses
  %4 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %5 = alloca %"class.folly::LockedPtr.139", align 8 ; 7 uses
  %6 = alloca %"class.std::unordered_set", align 8 ; 10 uses
  %7 = alloca %"class.std::unordered_set.58", align 8 ; 11 uses
  %8 = alloca %"class.folly::detail::TypeDescriptor", align 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.f = load atomic i8, ptr %i.e monotonic, align 8, !range !34, !noundef !35
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %.critedge, !prof !21

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str.15, i32 noundef 421)
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.74, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.75, i64 noundef 56)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %4) #46
  unreachable

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %4) #46
  unreachable

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3291)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !230, !alias.scope !3291
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i8 0, ptr %i.m, align 8, !tbaa !233, !alias.scope !3291
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !3291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28, !noalias !3291
  %i.n = load atomic i32, ptr %i.l acquire, align 8, !noalias !3291 ; 4 uses
  store i32 %i.n, ptr %i.d, align 4, !tbaa !7, !noalias !3291
  %i.o = and i32 %i.n, -1312
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %.critedge.i.i.i.i.i.i, !prof !55

bb.e:                                             ; preds = %.critedge
  %i.q = or disjoint i32 %i.n, 128
  %i.r = cmpxchg ptr %i.l, i32 %i.n, i32 %i.q seq_cst seq_cst, align 4, !noalias !3291 ; 2 uses
  %i.s = extractvalue { i32, i1 } %i.r, 1
  br i1 %i.s, label %bb.f, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, !prof !226

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.t = extractvalue { i32, i1 } %i.r, 0
  store i32 %i.t, ptr %i.d, align 4, !noalias !3291
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %.critedge
  %i.u = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %3), !noalias !3291 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i.i.i.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28, !noalias !3291
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3291
  store i8 1, ptr %i.m, align 8, !tbaa !233, !alias.scope !3291
  %i.v = load ptr, ptr %5, align 8, !tbaa !230    ; 4 uses
  %.not.i.i = icmp eq ptr %i.v, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -8
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %.neg.i.i ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !234
  %.not.i = icmp eq i32 %i.x, 1
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5folly6detail16throw_exception_ISt11logic_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.60) #14
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  store i32 0, ptr %i.w, align 4, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.y = atomicrmw and ptr %i.v, i32 -401 seq_cst, align 4 ; 2 uses
  %i.z = and i32 %i.y, -401
  store i32 %i.z, ptr %i.c, align 4, !tbaa !7
  %i.aa = and i32 %i.y, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE1ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.i, !prof !55

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 15)
          to label %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE1ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #46
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE1ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !3294)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  store ptr %i.ad, ptr %2, align 8, !tbaa !3102, !alias.scope !3294
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i8 0, ptr %i.ae, align 8, !tbaa !3099, !alias.scope !3294
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28, !noalias !3294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !3294
  %i.af = load atomic i32, ptr %i.ad acquire, align 8, !noalias !3294 ; 4 uses
  store i32 %i.af, ptr %i.b, align 4, !tbaa !7, !noalias !3294
  %i.ag = and i32 %i.af, -1312
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %.critedge.i.i.i.i.i.i.i, !prof !55

bb.k:                                             ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE1ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.ai = or disjoint i32 %i.af, 128
  %i.aj = cmpxchg ptr %i.ad, i32 %i.af, i32 %i.ai seq_cst seq_cst, align 4, !noalias !3294 ; 2 uses
  %i.ak = extractvalue { i32, i1 } %i.aj, 1
  br i1 %i.ak, label %_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18CancellationSourceENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !226

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.al = extractvalue { i32, i1 } %i.aj, 0
  store i32 %i.al, ptr %i.b, align 4, !noalias !3294
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %_ZN5folly9LockedPtrINS_12SynchronizedINS_6detail19SingletonVaultStateENS_15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS2_22SynchronizedLockPolicyILNS2_22SynchronizedMutexLevelE1ELNS2_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %i.am = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %1), !noalias !3294 ; 0 uses
  br label %_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18CancellationSourceENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i

_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18CancellationSourceENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i: ; preds = %.critedge.i.i.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !3294
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !3294
  store i8 1, ptr %i.ae, align 8, !tbaa !3099, !alias.scope !3294
  %i.an = load ptr, ptr %2, align 8, !tbaa !3102  ; 2 uses
  %i.ao = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #43
          to label %.noexc.i unwind label %bb.r   ; 4 uses

.noexc.i:                                         ; preds = %_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_18CancellationSourceENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5wlockEv.exit.i
  %.not.i.i.i21 = icmp eq ptr %i.an, null
  %.neg.i.i.i = select i1 %.not.i.i.i21, i64 0, i64 -8
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %.neg.i.i.i ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly6detail17CancellationStateE, i64 16), ptr %i.ao, align 8, !tbaa !36, !noalias !3297
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 17179869184, ptr %i.aq, align 8, !tbaa !98, !noalias !3297
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false), !noalias !3297
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !100 ; 4 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !100
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZZN5folly14SingletonVault17reenableInstancesEvENK3$_0clINS_18CancellationSourceEEEDaRT_.exit.i", label %bb.l

bb.l:                                             ; preds = %.noexc.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = atomicrmw sub ptr %i.at, i64 17179869184 acq_rel, align 8
  %i.av = icmp ugt i64 %i.au, 17179869191
  br i1 %i.av, label %"_ZZN5folly14SingletonVault17reenableInstancesEvENK3$_0clINS_18CancellationSourceEEEDaRT_.exit.i", label %bb.m

end_hunk_0
