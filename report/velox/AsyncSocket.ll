Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/AsyncSocket?download=true
inline.NumInlined: 4672
inline.NumDeleted: 1879
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5folly6detail19small_vector_detail25moveObjectsRightAndCreateISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISC_Lm2EvE6insertEPKSC_OSC_EUlvE_EENSt9enable_ifIXnt21should_trivially_copyIT_EEvE4typeEPSK_SN_SN_OT0_:bb.a
  br label %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit17

bb.j:                                             ; preds = %bb.h
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14157
  %.not.i.i.i.i.i14 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i14, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !13961
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15

bb.l:                                             ; preds = %bb.j
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i16 = phi i32 [ %i.az, %bb.k ], [ %i.bj, %bb.l ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i.i16, 1
  br i1 %i.bk, label %bb.m, label %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit17, !prof !14158

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #41
  br label %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit17

_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit17: ; preds = %.lr.ph50, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15, %bb.m
  %.not12 = icmp eq ptr %i.ar, %0
  br i1 %.not12, label %_ZN5folly6detail14ScopeGuardImplIZNS0_19small_vector_detail25moveObjectsRightAndCreateISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS6_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISD_Lm2EvE6insertEPKSD_OSD_EUlvE_EENSt9enable_ifIXnt21should_trivially_copyIT_EEvE4typeEPSL_SO_SO_OT0_EUlvE_Lb1EED2Ev.exit, label %.lr.ph50, !llvm.loop !15333

_ZN5folly6detail14ScopeGuardImplIZNS0_19small_vector_detail25moveObjectsRightAndCreateISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS6_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISD_Lm2EvE6insertEPKSD_OSD_EUlvE_EENSt9enable_ifIXnt21should_trivially_copyIT_EEvE4typeEPSL_SO_SO_OT0_EUlvE_Lb1EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit17, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSB_12emplace_backIJSA_EEERSA_DpOT_EUlPvE_EEvmOT1_m(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.25) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !14209
  %.not.i.i = icmp slt i64 %i.b, 0                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 3) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = select i1 %.not.i.i, i1 %i.f, i1 false
  br i1 %i.g, label %_ZN5folly11checked_mulImvEEbPT_S1_S1_.exit.i, label %_ZNK5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE14computeNewSizeEv.exit, !prof !14158

_ZN5folly11checked_mulImvEEbPT_S1_S1_.exit.i:     ; preds = %bb.c
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.26) #21
  unreachable

_ZNK5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE14computeNewSizeEv.exit: ; preds = %bb.c
  %i.h = extractvalue { i64, i1 } %i.e, 0
  %i.i = lshr i64 %i.h, 1
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 4611686018427387902)
  %i.k = add nuw nsw i64 %i.j, 1
  %.sroa.speculated.i = select i1 %.not.i.i, i64 %i.k, i64 4
  %.sroa.speculated29 = tail call i64 @llvm.umax.i64(i64 %1, i64 %.sroa.speculated.i) ; 5 uses
  %i.l = icmp samesign ugt i64 %.sroa.speculated29, 1152921504606846975
  br i1 %i.l, label %_ZN5folly11checked_mulImvEEbPT_S1_S1_.exit, label %bb.d, !prof !14158

_ZN5folly11checked_mulImvEEbPT_S1_S1_.exit:       ; preds = %_ZNK5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE14computeNewSizeEv.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.26) #21
  unreachable

bb.d:                                             ; preds = %_ZNK5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE14computeNewSizeEv.exit
  %i.m = shl nuw i64 %.sroa.speculated29, 4       ; 3 uses
  %i.n = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %.split.i, !prof !14158

.split.i:                                         ; preds = %bb.d
  %i.o = icmp sgt i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.d
  %i.p = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #46
  br i1 %i.p, label %bb.e, label %_ZN5folly14goodMallocSizeEm.exit

bb.e:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %.split.i
  %i.q = tail call i64 @nallocx(i64 noundef %i.m, i32 noundef 0) #41 ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  %i.r = lshr i64 %i.q, 4
  %i.s = select i1 %.not.i, i64 %.sroa.speculated29, i64 %i.r ; 2 uses
  %.pre40 = shl nuw i64 %i.s, 4
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %.split.i, %_ZN5folly10canNallocxEv.exit.i, %bb.e
  %.pre-phi = phi i64 [ %i.m, %.split.i ], [ %i.m, %_ZN5folly10canNallocxEv.exit.i ], [ %.pre40, %bb.e ]
  %.0.i12 = phi i64 [ %.sroa.speculated29, %.split.i ], [ %.sroa.speculated29, %_ZN5folly10canNallocxEv.exit.i ], [ %i.s, %bb.e ]
  %i.t = tail call noalias ptr @malloc(i64 noundef %.pre-phi) #48 ; 12 uses
  %.not.i14 = icmp eq ptr %i.t, null
  br i1 %.not.i14, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #21
  unreachable

bb.g:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  %i.u = load i64, ptr %0, align 8, !tbaa !14209  ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8
  %.not1.i.i = icmp slt i64 %i.u, 0               ; 2 uses
  %i.x = select i1 %.not1.i.i, ptr %i.w, ptr %i.v ; 13 uses
  %i.y = and i64 %i.u, 4611686018427387903        ; 2 uses
  %i.z = getelementptr [16 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %3 ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !15334, !nonnull !150, !align !15329 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !14316
  store ptr null, ptr %i.ac, align 8, !tbaa !14147
  store <2 x ptr> %i.ad, ptr %i.aa, align 8, !tbaa !14316
  store ptr null, ptr %i.ab, align 8, !tbaa !14379
  %.not.i16 = icmp eq ptr %i.x, null
  br i1 %.not.i16, label %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i = shl i64 %3, 4                         ; 4 uses
  %i.ae = getelementptr i8, ptr %i.x, i64 %.idx.i ; 2 uses
  %.not10.i.i = icmp eq i64 %3, 0
  br i1 %.not10.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %i.af = add i64 %.idx.i, -16                    ; 2 uses
  %i.ag = lshr exact i64 %i.af, 4
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 176
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader87, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ai = add i64 %.idx.i, -8                     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ai
  %scevgep49 = getelementptr i8, ptr %i.x, i64 %i.ai
  %scevgep50 = getelementptr i8, ptr %i.x, i64 8
  %scevgep51 = getelementptr i8, ptr %i.t, i64 8
  %scevgep52 = getelementptr i8, ptr %i.t, i64 %.idx.i
  %bound0 = icmp ult ptr %i.t, %scevgep49
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound053 = icmp ult ptr %scevgep50, %scevgep52
  %bound154 = icmp ult ptr %scevgep51, %i.ae
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx = or i1 %found.conflict, %found.conflict55
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader87, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 2305843009213693948     ; 4 uses
  %i.aj = shl i64 %n.vec, 4
  %i.ak = getelementptr i8, ptr %i.x, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.al ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %index
  %wide.vec = load <8 x ptr>, ptr %next.gep, align 8, !tbaa !14316
  store <8 x ptr> %wide.vec, ptr %i.am, align 8, !tbaa !14316
  store <8 x ptr> splat (ptr null), ptr %next.gep, align 8, !tbaa !14316
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !15336

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i, label %.lr.ph.i.i.preheader87

.lr.ph.i.i.preheader87:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.012.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.preheader ], [ %i.ak, %middle.block ]
  %.0911.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader87, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader87 ] ; 4 uses
  %.0911.i.i = phi i64 [ %i.as, %.lr.ph.i.i ], [ %.0911.i.i.ph, %.lr.ph.i.i.preheader87 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.0911.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8
  %i.aq = load <2 x ptr>, ptr %.012.i.i, align 8, !tbaa !14316
  store ptr null, ptr %i.ap, align 8, !tbaa !14147
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !14316
  store ptr null, ptr %.012.i.i, align 8, !tbaa !14379
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16 ; 2 uses
  %i.as = add nuw nsw i64 %.0911.i.i, 1
  %.not.i.i17 = icmp eq ptr %i.ar, %i.ae
  br i1 %.not.i.i17, label %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i, label %.lr.ph.i.i, !llvm.loop !15337

_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.h, %bb.g
  %i.at = icmp samesign ult i64 %3, %i.y
  br i1 %i.at, label %bb.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_12emplace_backIJSC_EEERSC_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit

bb.i:                                             ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i
  %i.au = getelementptr [16 x i8], ptr %i.x, i64 %3 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %i.aw = shl i64 %i.u, 4
  %4 = shl i64 %3, 4
  %5 = add i64 %i.aw, -16
  %i.ax = sub i64 %5, %4                          ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 4
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check72 = icmp ult i64 %i.ax, 304
  br i1 %min.iters.check72, label %.lr.ph.i12.i.preheader, label %vector.memcheck58

vector.memcheck58:                                ; preds = %bb.i
  %i.ba = shl i64 %i.u, 4                         ; 3 uses
  %i.bb = getelementptr i8, ptr %i.t, i64 %i.ba
  %scevgep59 = getelementptr i8, ptr %i.bb, i64 8
  %i.bc = getelementptr i8, ptr %i.x, i64 %i.ba
  %scevgep60 = getelementptr i8, ptr %i.bc, i64 -8
  %i.bd = shl i64 %3, 4                           ; 2 uses
  %i.be = getelementptr i8, ptr %i.x, i64 %i.bd
  %scevgep61 = getelementptr i8, ptr %i.be, i64 8
  %i.bf = getelementptr i8, ptr %i.t, i64 %i.bd
  %scevgep62 = getelementptr i8, ptr %i.bf, i64 24
  %i.bg = getelementptr i8, ptr %i.t, i64 %i.ba
  %scevgep63 = getelementptr i8, ptr %i.bg, i64 16
  %bound064 = icmp ult ptr %i.av, %scevgep60
  %bound165 = icmp ult ptr %i.au, %scevgep59
  %found.conflict66 = and i1 %bound064, %bound165
  %bound067 = icmp ult ptr %scevgep61, %scevgep63
  %bound168 = icmp ult ptr %scevgep62, %i.z
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx70 = or i1 %found.conflict66, %found.conflict69
  br i1 %conflict.rdx70, label %.lr.ph.i12.i.preheader, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck58
  %n.vec74 = and i64 %i.az, 2305843009213693948   ; 4 uses
  %i.bh = shl i64 %n.vec74, 4
  %i.bi = getelementptr i8, ptr %i.au, i64 %i.bh
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next82, %vector.body75 ] ; 3 uses
  %i.bj = shl i64 %index76, 4
  %next.gep77 = getelementptr i8, ptr %i.au, i64 %i.bj ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %index76
  %wide.vec78 = load <8 x ptr>, ptr %next.gep77, align 8, !tbaa !14316
  store <8 x ptr> %wide.vec78, ptr %i.bk, align 8, !tbaa !14316
  store <8 x ptr> splat (ptr null), ptr %next.gep77, align 8, !tbaa !14316
  %index.next82 = add nuw i64 %index76, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next82, %n.vec74
  br i1 %i.bl, label %middle.block83, label %vector.body75, !llvm.loop !15338

middle.block83:                                   ; preds = %vector.body75
  %cmp.n84 = icmp eq i64 %i.az, %n.vec74
  br i1 %cmp.n84, label %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_12emplace_backIJSC_EEERSC_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %vector.memcheck58, %bb.i, %middle.block83
  %.012.i13.i.ph = phi ptr [ %i.au, %vector.memcheck58 ], [ %i.au, %bb.i ], [ %i.bi, %middle.block83 ]
  %.0911.i14.i.ph = phi i64 [ 0, %vector.memcheck58 ], [ 0, %bb.i ], [ %n.vec74, %middle.block83 ]
  br label %.lr.ph.i12.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i.preheader, %.lr.ph.i12.i
  %.012.i13.i = phi ptr [ %i.bp, %.lr.ph.i12.i ], [ %.012.i13.i.ph, %.lr.ph.i12.i.preheader ] ; 4 uses
  %.0911.i14.i = phi i64 [ %i.bq, %.lr.ph.i12.i ], [ %.0911.i14.i.ph, %.lr.ph.i12.i.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.0911.i14.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i13.i, i64 8
  %i.bo = load <2 x ptr>, ptr %.012.i13.i, align 8, !tbaa !14316
  store ptr null, ptr %i.bn, align 8, !tbaa !14147
  store <2 x ptr> %i.bo, ptr %i.bm, align 8, !tbaa !14316
  store ptr null, ptr %.012.i13.i, align 8, !tbaa !14379
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i13.i, i64 16 ; 2 uses
  %i.bq = add nuw nsw i64 %.0911.i14.i, 1
  %.not.i15.i = icmp eq ptr %i.bp, %i.z
  br i1 %.not.i15.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_12emplace_backIJSC_EEERSC_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit, label %.lr.ph.i12.i, !llvm.loop !15339

_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_12emplace_backIJSC_EEERSC_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit: ; preds = %.lr.ph.i12.i, %middle.block83, %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i
  %i.br = load ptr, ptr %i.v, align 8
  %i.bs = select i1 %.not1.i.i, ptr %i.br, ptr %i.v ; 2 uses
  %i.bt = shl i64 %i.u, 4                         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  %.not4.i.i.i = icmp samesign eq i64 %i.bt, 0
  br i1 %.not4.i.i.i, label %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_12emplace_backIJSC_EEERSC_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cm, %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i ], [ %i.bs, %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_12emplace_backIJSC_EEERSC_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !14147 ; 8 uses
  %.not.i.i.i.i.i.i.i20 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i.i20, label %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %i.by = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 4294967297
  %i.ca = trunc i64 %i.by to i32                  ; 2 uses
  br i1 %i.bz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.bx, align 8, !tbaa !14148
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.cb, align 4, !tbaa !14150
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #41, !call_target !14151, !inline_history !15320
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #41, !call_target !14156, !inline_history !15320
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14157
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = add nsw i32 %i.ca, -1
  store i32 %i.cj, ptr %i.bx, align 8, !tbaa !13961
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ck = atomicrmw volatile add ptr %i.bx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ca, %bb.m ], [ %i.ck, %bb.n ]
  %i.cl = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cl, label %bb.o, label %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i, !prof !14158

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #41
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.k, %.lr.ph.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cm, %i.bu
  br i1 %.not.i.i.i, label %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !15321

_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit.loopexit: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i
  %.pre = load i64, ptr %0, align 8, !tbaa !14209
  br label %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit

_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit: ; preds = %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit.loopexit, %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_12emplace_backIJSC_EEERSC_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit
  %i.cn = phi i64 [ %.pre, %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit.loopexit ], [ %i.u, %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_12emplace_backIJSC_EEERSC_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit ]
  %.not.i21 = icmp sgt i64 %i.cn, -1
  br i1 %.not.i21, label %_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit
  %i.co = load ptr, ptr %i.v, align 8, !tbaa !14157 ; 3 uses
  %.not6.i = icmp eq ptr %i.co, null
  br i1 %.not6.i, label %_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = load i64, ptr %i.c, align 8, !tbaa !15322
  %i.cq = shl i64 %i.cp, 4
  %i.cr = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly11canSdallocxEv.exit.i.i, label %.split.i.i, !prof !14158

.split.i.i:                                       ; preds = %bb.q
  %i.cs = icmp sgt i8 %i.cr, 0
  br i1 %i.cs, label %bb.r, label %bb.s

_ZN5folly11canSdallocxEv.exit.i.i:                ; preds = %bb.q
  %i.ct = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #46
  br i1 %i.ct, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i, %.split.i.i
  tail call void @sdallocx(ptr noundef nonnull %i.co, i64 noundef %i.cq, i32 noundef 0) #41
  br label %_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit

bb.s:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i, %.split.i.i
  tail call void @free(ptr noundef nonnull %i.co) #41
  br label %_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit

_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit: ; preds = %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit, %bb.p, %bb.r, %bb.s
  store ptr %i.t, ptr %i.v, align 8, !tbaa !14157
  %i.cu = load i64, ptr %0, align 8
  %i.cv = and i64 %i.cu, 4611686018427387903
  %storemerge.i23 = or disjoint i64 %i.cv, -9223372036854775808
  store i64 %storemerge.i23, ptr %0, align 8, !tbaa !14209
  store i64 %.0.i12, ptr %i.c, align 8, !tbaa !15322
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSB_6insertEPKSA_OSA_EUlPvE_EEvmOT1_m(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.25) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !14209
  %.not.i.i = icmp slt i64 %i.b, 0                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 3) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = select i1 %.not.i.i, i1 %i.f, i1 false
  br i1 %i.g, label %_ZN5folly11checked_mulImvEEbPT_S1_S1_.exit.i, label %_ZNK5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE14computeNewSizeEv.exit, !prof !14158

_ZN5folly11checked_mulImvEEbPT_S1_S1_.exit.i:     ; preds = %bb.c
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.26) #21
  unreachable

_ZNK5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE14computeNewSizeEv.exit: ; preds = %bb.c
  %i.h = extractvalue { i64, i1 } %i.e, 0
  %i.i = lshr i64 %i.h, 1
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 4611686018427387902)
  %i.k = add nuw nsw i64 %i.j, 1
  %.sroa.speculated.i = select i1 %.not.i.i, i64 %i.k, i64 4
  %.sroa.speculated29 = tail call i64 @llvm.umax.i64(i64 %1, i64 %.sroa.speculated.i) ; 5 uses
  %i.l = icmp samesign ugt i64 %.sroa.speculated29, 1152921504606846975
  br i1 %i.l, label %_ZN5folly11checked_mulImvEEbPT_S1_S1_.exit, label %bb.d, !prof !14158

_ZN5folly11checked_mulImvEEbPT_S1_S1_.exit:       ; preds = %_ZNK5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE14computeNewSizeEv.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.26) #21
  unreachable

bb.d:                                             ; preds = %_ZNK5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE14computeNewSizeEv.exit
  %i.m = shl nuw i64 %.sroa.speculated29, 4       ; 3 uses
  %i.n = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %.split.i, !prof !14158

.split.i:                                         ; preds = %bb.d
  %i.o = icmp sgt i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.d
  %i.p = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #46
  br i1 %i.p, label %bb.e, label %_ZN5folly14goodMallocSizeEm.exit

bb.e:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %.split.i
  %i.q = tail call i64 @nallocx(i64 noundef %i.m, i32 noundef 0) #41 ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  %i.r = lshr i64 %i.q, 4
  %i.s = select i1 %.not.i, i64 %.sroa.speculated29, i64 %i.r ; 2 uses
  %.pre40 = shl nuw i64 %i.s, 4
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %.split.i, %_ZN5folly10canNallocxEv.exit.i, %bb.e
  %.pre-phi = phi i64 [ %i.m, %.split.i ], [ %i.m, %_ZN5folly10canNallocxEv.exit.i ], [ %.pre40, %bb.e ]
  %.0.i12 = phi i64 [ %.sroa.speculated29, %.split.i ], [ %.sroa.speculated29, %_ZN5folly10canNallocxEv.exit.i ], [ %i.s, %bb.e ]
  %i.t = tail call noalias ptr @malloc(i64 noundef %.pre-phi) #48 ; 12 uses
  %.not.i14 = icmp eq ptr %i.t, null
  br i1 %.not.i14, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #21
  unreachable

bb.g:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  %i.u = load i64, ptr %0, align 8, !tbaa !14209  ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8
  %.not1.i.i = icmp slt i64 %i.u, 0               ; 2 uses
  %i.x = select i1 %.not1.i.i, ptr %i.w, ptr %i.v ; 13 uses
  %i.y = and i64 %i.u, 4611686018427387903        ; 2 uses
  %i.z = getelementptr [16 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %3 ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !15340, !nonnull !150, !align !15329 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !14316
  store ptr null, ptr %i.ac, align 8, !tbaa !14147
  store <2 x ptr> %i.ad, ptr %i.aa, align 8, !tbaa !14316
  store ptr null, ptr %i.ab, align 8, !tbaa !14379
  %.not.i16 = icmp eq ptr %i.x, null
  br i1 %.not.i16, label %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i = shl i64 %3, 4                         ; 4 uses
  %i.ae = getelementptr i8, ptr %i.x, i64 %.idx.i ; 2 uses
  %.not10.i.i = icmp eq i64 %3, 0
  br i1 %.not10.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %i.af = add i64 %.idx.i, -16                    ; 2 uses
  %i.ag = lshr exact i64 %i.af, 4
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 176
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader87, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ai = add i64 %.idx.i, -8                     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ai
  %scevgep49 = getelementptr i8, ptr %i.x, i64 %i.ai
  %scevgep50 = getelementptr i8, ptr %i.x, i64 8
  %scevgep51 = getelementptr i8, ptr %i.t, i64 8
  %scevgep52 = getelementptr i8, ptr %i.t, i64 %.idx.i
  %bound0 = icmp ult ptr %i.t, %scevgep49
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound053 = icmp ult ptr %scevgep50, %scevgep52
  %bound154 = icmp ult ptr %scevgep51, %i.ae
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx = or i1 %found.conflict, %found.conflict55
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader87, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 2305843009213693948     ; 4 uses
  %i.aj = shl i64 %n.vec, 4
  %i.ak = getelementptr i8, ptr %i.x, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.al ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %index
  %wide.vec = load <8 x ptr>, ptr %next.gep, align 8, !tbaa !14316
  store <8 x ptr> %wide.vec, ptr %i.am, align 8, !tbaa !14316
  store <8 x ptr> splat (ptr null), ptr %next.gep, align 8, !tbaa !14316
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !15342

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i, label %.lr.ph.i.i.preheader87

.lr.ph.i.i.preheader87:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.012.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.preheader ], [ %i.ak, %middle.block ]
  %.0911.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader87, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader87 ] ; 4 uses
  %.0911.i.i = phi i64 [ %i.as, %.lr.ph.i.i ], [ %.0911.i.i.ph, %.lr.ph.i.i.preheader87 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.0911.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8
  %i.aq = load <2 x ptr>, ptr %.012.i.i, align 8, !tbaa !14316
  store ptr null, ptr %i.ap, align 8, !tbaa !14147
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !14316
  store ptr null, ptr %.012.i.i, align 8, !tbaa !14379
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16 ; 2 uses
  %i.as = add nuw nsw i64 %.0911.i.i, 1
  %.not.i.i17 = icmp eq ptr %i.ar, %i.ae
  br i1 %.not.i.i17, label %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i, label %.lr.ph.i.i, !llvm.loop !15343

_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.h, %bb.g
  %i.at = icmp samesign ult i64 %3, %i.y
  br i1 %i.at, label %bb.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_6insertEPKSC_OSC_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit

bb.i:                                             ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i
  %i.au = getelementptr [16 x i8], ptr %i.x, i64 %3 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %i.aw = shl i64 %i.u, 4
  %4 = shl i64 %3, 4
  %5 = add i64 %i.aw, -16
  %i.ax = sub i64 %5, %4                          ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 4
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check72 = icmp ult i64 %i.ax, 304
  br i1 %min.iters.check72, label %.lr.ph.i12.i.preheader, label %vector.memcheck58

vector.memcheck58:                                ; preds = %bb.i
  %i.ba = shl i64 %i.u, 4                         ; 3 uses
  %i.bb = getelementptr i8, ptr %i.t, i64 %i.ba
  %scevgep59 = getelementptr i8, ptr %i.bb, i64 8
  %i.bc = getelementptr i8, ptr %i.x, i64 %i.ba
  %scevgep60 = getelementptr i8, ptr %i.bc, i64 -8
  %i.bd = shl i64 %3, 4                           ; 2 uses
  %i.be = getelementptr i8, ptr %i.x, i64 %i.bd
  %scevgep61 = getelementptr i8, ptr %i.be, i64 8
  %i.bf = getelementptr i8, ptr %i.t, i64 %i.bd
  %scevgep62 = getelementptr i8, ptr %i.bf, i64 24
  %i.bg = getelementptr i8, ptr %i.t, i64 %i.ba
  %scevgep63 = getelementptr i8, ptr %i.bg, i64 16
  %bound064 = icmp ult ptr %i.av, %scevgep60
  %bound165 = icmp ult ptr %i.au, %scevgep59
  %found.conflict66 = and i1 %bound064, %bound165
  %bound067 = icmp ult ptr %scevgep61, %scevgep63
  %bound168 = icmp ult ptr %scevgep62, %i.z
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx70 = or i1 %found.conflict66, %found.conflict69
  br i1 %conflict.rdx70, label %.lr.ph.i12.i.preheader, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck58
  %n.vec74 = and i64 %i.az, 2305843009213693948   ; 4 uses
  %i.bh = shl i64 %n.vec74, 4
  %i.bi = getelementptr i8, ptr %i.au, i64 %i.bh
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next82, %vector.body75 ] ; 3 uses
  %i.bj = shl i64 %index76, 4
  %next.gep77 = getelementptr i8, ptr %i.au, i64 %i.bj ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %index76
  %wide.vec78 = load <8 x ptr>, ptr %next.gep77, align 8, !tbaa !14316
  store <8 x ptr> %wide.vec78, ptr %i.bk, align 8, !tbaa !14316
  store <8 x ptr> splat (ptr null), ptr %next.gep77, align 8, !tbaa !14316
  %index.next82 = add nuw i64 %index76, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next82, %n.vec74
  br i1 %i.bl, label %middle.block83, label %vector.body75, !llvm.loop !15344

middle.block83:                                   ; preds = %vector.body75
  %cmp.n84 = icmp eq i64 %i.az, %n.vec74
  br i1 %cmp.n84, label %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_6insertEPKSC_OSC_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %vector.memcheck58, %bb.i, %middle.block83
  %.012.i13.i.ph = phi ptr [ %i.au, %vector.memcheck58 ], [ %i.au, %bb.i ], [ %i.bi, %middle.block83 ]
  %.0911.i14.i.ph = phi i64 [ 0, %vector.memcheck58 ], [ 0, %bb.i ], [ %n.vec74, %middle.block83 ]
  br label %.lr.ph.i12.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i.preheader, %.lr.ph.i12.i
  %.012.i13.i = phi ptr [ %i.bp, %.lr.ph.i12.i ], [ %.012.i13.i.ph, %.lr.ph.i12.i.preheader ] ; 4 uses
  %.0911.i14.i = phi i64 [ %i.bq, %.lr.ph.i12.i ], [ %.0911.i14.i.ph, %.lr.ph.i12.i.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %.0911.i14.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i13.i, i64 8
  %i.bo = load <2 x ptr>, ptr %.012.i13.i, align 8, !tbaa !14316
  store ptr null, ptr %i.bn, align 8, !tbaa !14147
  store <2 x ptr> %i.bo, ptr %i.bm, align 8, !tbaa !14316
  store ptr null, ptr %.012.i13.i, align 8, !tbaa !14379
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i13.i, i64 16 ; 2 uses
  %i.bq = add nuw nsw i64 %.0911.i14.i, 1
  %.not.i15.i = icmp eq ptr %i.bp, %i.z
  br i1 %.not.i15.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_6insertEPKSC_OSC_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit, label %.lr.ph.i12.i, !llvm.loop !15345

_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_6insertEPKSC_OSC_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit: ; preds = %.lr.ph.i12.i, %middle.block83, %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i
  %i.br = load ptr, ptr %i.v, align 8
  %i.bs = select i1 %.not1.i.i, ptr %i.br, ptr %i.v ; 2 uses
  %i.bt = shl i64 %i.u, 4                         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  %.not4.i.i.i = icmp samesign eq i64 %i.bt, 0
  br i1 %.not4.i.i.i, label %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_6insertEPKSC_OSC_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cm, %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i ], [ %i.bs, %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_6insertEPKSC_OSC_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !14147 ; 8 uses
  %.not.i.i.i.i.i.i.i20 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i.i20, label %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %i.by = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 4294967297
  %i.ca = trunc i64 %i.by to i32                  ; 2 uses
  br i1 %i.bz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.bx, align 8, !tbaa !14148
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.cb, align 4, !tbaa !14150
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #41, !call_target !14151, !inline_history !15320
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #41, !call_target !14156, !inline_history !15320
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14157
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = add nsw i32 %i.ca, -1
  store i32 %i.cj, ptr %i.bx, align 8, !tbaa !13961
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ck = atomicrmw volatile add ptr %i.bx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ca, %bb.m ], [ %i.ck, %bb.n ]
  %i.cl = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cl, label %bb.o, label %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i, !prof !14158

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #41
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.k, %.lr.ph.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cm, %i.bu
  br i1 %.not.i.i.i, label %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !15321

_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit.loopexit: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i
  %.pre = load i64, ptr %0, align 8, !tbaa !14209
  br label %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit

_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit: ; preds = %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit.loopexit, %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_6insertEPKSC_OSC_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit
  %i.cn = phi i64 [ %.pre, %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit.loopexit ], [ %i.u, %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_6insertEPKSC_OSC_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit ]
  %.not.i21 = icmp sgt i64 %i.cn, -1
  br i1 %.not.i21, label %_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit
  %i.co = load ptr, ptr %i.v, align 8, !tbaa !14157 ; 3 uses
  %.not6.i = icmp eq ptr %i.co, null
  br i1 %.not6.i, label %_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = load i64, ptr %i.c, align 8, !tbaa !15322
  %i.cq = shl i64 %i.cp, 4
  %i.cr = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly11canSdallocxEv.exit.i.i, label %.split.i.i, !prof !14158

.split.i.i:                                       ; preds = %bb.q
  %i.cs = icmp sgt i8 %i.cr, 0
  br i1 %i.cs, label %bb.r, label %bb.s

_ZN5folly11canSdallocxEv.exit.i.i:                ; preds = %bb.q
  %i.ct = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #46
  br i1 %i.ct, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i, %.split.i.i
  tail call void @sdallocx(ptr noundef nonnull %i.co, i64 noundef %i.cq, i32 noundef 0) #41
  br label %_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit

bb.s:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i, %.split.i.i
  tail call void @free(ptr noundef nonnull %i.co) #41
  br label %_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit

_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit: ; preds = %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit, %bb.p, %bb.r, %bb.s
  store ptr %i.t, ptr %i.v, align 8, !tbaa !14157
  %i.cu = load i64, ptr %0, align 8
  %i.cv = and i64 %i.cu, 4611686018427387903
  %storemerge.i23 = or disjoint i64 %i.cv, -9223372036854775808
  store i64 %storemerge.i23, ptr %0, align 8, !tbaa !14209
  store i64 %.0.i12, ptr %i.c, align 8, !tbaa !15322
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14147 ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !14148
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !14150
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
end_hunk_0
