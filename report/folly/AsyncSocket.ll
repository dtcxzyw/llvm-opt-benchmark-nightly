Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/AsyncSocket?download=true
inline.NumInlined: 5680
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5folly6detail19small_vector_detail25moveObjectsRightAndCreateISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISC_Lm2EvE6insertEPKSC_OSC_EUlvE_Qnt21should_trivially_copyIT_EEEvPSJ_SK_SK_OT0_:bb.a
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.y, align 8, !tbaa !16124
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !16125
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !814
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #42, !call_target !16129, !inline_history !777
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !814
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #42, !call_target !16130, !inline_history !777
  br label %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit

bb.d:                                             ; preds = %bb.b
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16131
  %.not.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !15894
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.e ], [ %i.al, %bb.f ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.g, label %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit, !prof !16132

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #42
  br label %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit

_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit: ; preds = %.lr.ph43, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %.not = icmp eq ptr %i.u, %0
  br i1 %.not, label %.preheader34, label %.lr.ph43, !llvm.loop !17509

.preheader:                                       ; preds = %.lr.ph46, %.lr.ph46.peel.newph, %.preheader34
  %.2.lcssa = phi ptr [ %.133.lcssa, %.preheader34 ], [ %i.p, %.lr.ph46 ], [ %i.an, %.lr.ph46.peel.newph ] ; 2 uses
  %.not1248 = icmp eq ptr %.2.lcssa, %0
  br i1 %.not1248, label %_ZN5folly6detail14ScopeGuardImplIZNS0_19small_vector_detail25moveObjectsRightAndCreateISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS6_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISD_Lm2EvE6insertEPKSD_OSD_EUlvE_Qnt21should_trivially_copyIT_EEEvPSK_SL_SL_OT0_EUlvE_Lb1EED2Ev.exit, label %.lr.ph50

.lr.ph46.peel.newph:                              ; preds = %.lr.ph46, %.lr.ph46.peel.newph
  %.245 = phi ptr [ %i.an, %.lr.ph46.peel.newph ], [ %i.p, %.lr.ph46 ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.245, i64 -16 ; 4 uses
  store ptr null, ptr %i.an, align 8, !tbaa !16311
  %i.ao = getelementptr inbounds i8, ptr %.245, i64 -8 ; 2 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !16122
  %i.ap = load ptr, ptr %i.o, align 8, !tbaa !16122
  store ptr null, ptr %i.o, align 8, !tbaa !16122
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !16122
  store ptr null, ptr %i.n, align 8, !tbaa !16311
  %i.aq = icmp ugt ptr %i.an, %1
  br i1 %i.aq, label %.lr.ph46.peel.newph, label %.preheader, !llvm.loop !17510

.lr.ph50:                                         ; preds = %.preheader, %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit17
  %.349 = phi ptr [ %i.ar, %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit17 ], [ %.2.lcssa, %.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.349, i64 -16 ; 3 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !17513, !nonnull !1501, !align !16578 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.349, i64 -8
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !tbaa !16259
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !16122 ; 8 uses
  store <2 x ptr> %i.au, ptr %i.ar, align 8, !tbaa !16259
  %.not.i.i.i.i13 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i13, label %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit17, label %bb.h

bb.h:                                             ; preds = %.lr.ph50
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.aw, align 8, !tbaa !16124
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !16125
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !814
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #42, !call_target !16129, !inline_history !777
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !814
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #42, !call_target !16130, !inline_history !777
  br label %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit17

bb.j:                                             ; preds = %bb.h
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16131
  %.not.i.i.i.i.i14 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i14, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !15894
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15

bb.l:                                             ; preds = %bb.j
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i16 = phi i32 [ %i.az, %bb.k ], [ %i.bj, %bb.l ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i.i16, 1
  br i1 %i.bk, label %bb.m, label %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit17, !prof !16132

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #42
  br label %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit17

_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit17: ; preds = %.lr.ph50, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i15, %bb.m
  %.not12 = icmp eq ptr %i.ar, %0
  br i1 %.not12, label %_ZN5folly6detail14ScopeGuardImplIZNS0_19small_vector_detail25moveObjectsRightAndCreateISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS6_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISD_Lm2EvE6insertEPKSD_OSD_EUlvE_Qnt21should_trivially_copyIT_EEEvPSK_SL_SL_OT0_EUlvE_Lb1EED2Ev.exit, label %.lr.ph50, !llvm.loop !17511

_ZN5folly6detail14ScopeGuardImplIZNS0_19small_vector_detail25moveObjectsRightAndCreateISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS6_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISD_Lm2EvE6insertEPKSD_OSD_EUlvE_Qnt21should_trivially_copyIT_EEEvPSK_SL_SL_OT0_EUlvE_Lb1EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit17, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSB_12emplace_backIJSA_EEERSA_DpOT_EUlPvE_EEvmOT1_m(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.25) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !16184
  %.not.i.i = icmp slt i64 %i.b, 0                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 3) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = select i1 %.not.i.i, i1 %i.f, i1 false
  br i1 %i.g, label %_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit.i, label %_ZNK5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE14computeNewSizeEv.exit, !prof !16132

_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit.i: ; preds = %bb.c
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.26) #21
  unreachable

_ZNK5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE14computeNewSizeEv.exit: ; preds = %bb.c
  %i.h = extractvalue { i64, i1 } %i.e, 0
  %i.i = lshr i64 %i.h, 1
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 9223372036854775806)
  %i.k = add nuw nsw i64 %i.j, 1
  %.sroa.speculated.i = select i1 %.not.i.i, i64 %i.k, i64 4
  %.sroa.speculated28 = tail call i64 @llvm.umax.i64(i64 %1, i64 %.sroa.speculated.i) ; 5 uses
  %i.l = icmp samesign ugt i64 %.sroa.speculated28, 1152921504606846975
  br i1 %i.l, label %_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit, label %bb.d, !prof !16132

_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit: ; preds = %_ZNK5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE14computeNewSizeEv.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.26) #21
  unreachable

bb.d:                                             ; preds = %_ZNK5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE14computeNewSizeEv.exit
  %i.m = shl nuw i64 %.sroa.speculated28, 4       ; 3 uses
  %i.n = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %.split.i, !prof !16132

.split.i:                                         ; preds = %bb.d
  %i.o = icmp sgt i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.d
  %i.p = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #47
  br i1 %i.p, label %bb.e, label %_ZN5folly14goodMallocSizeEm.exit

bb.e:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %.split.i
  %i.q = tail call i64 @nallocx(i64 noundef %i.m, i32 noundef 0) #42 ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  %i.r = lshr i64 %i.q, 4
  %i.s = select i1 %.not.i, i64 %.sroa.speculated28, i64 %i.r ; 2 uses
  %.pre39 = shl nuw i64 %i.s, 4
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %.split.i, %_ZN5folly10canNallocxEv.exit.i, %bb.e
  %.pre-phi = phi i64 [ %i.m, %.split.i ], [ %i.m, %_ZN5folly10canNallocxEv.exit.i ], [ %.pre39, %bb.e ]
  %.0.i12 = phi i64 [ %.sroa.speculated28, %.split.i ], [ %.sroa.speculated28, %_ZN5folly10canNallocxEv.exit.i ], [ %i.s, %bb.e ]
  %i.t = tail call noalias ptr @malloc(i64 noundef %.pre-phi) #49 ; 6 uses
  %.not.i14 = icmp eq ptr %i.t, null
  br i1 %.not.i14, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #21
  unreachable

bb.g:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  %i.u = load i64, ptr %0, align 8, !tbaa !16184  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8
  %.not1.i.i = icmp slt i64 %i.u, 0               ; 2 uses
  %i.x = select i1 %.not1.i.i, ptr %i.w, ptr %i.v ; 5 uses
  %i.y = and i64 %i.u, 9223372036854775807        ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %3 ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !17516, !nonnull !1501, !align !16578 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !16259
  store ptr null, ptr %i.ac, align 8, !tbaa !16122
  store <2 x ptr> %i.ad, ptr %i.aa, align 8, !tbaa !16259
  store ptr null, ptr %i.ab, align 8, !tbaa !16311
  %.not.i16 = icmp eq ptr %i.x, null
  %.not10.i.i = icmp eq i64 %3, 0
  %or.cond = or i1 %.not.i16, %.not10.i.i
  br i1 %or.cond, label %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ae = add i64 %3, 1152921504606846975         ; 2 uses
  %i.af = and i64 %i.ae, 1152921504606846975      ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.ag, 2305843009213693950
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.012.i.i = phi ptr [ %i.x, %.lr.ph.i.i.preheader.new ], [ %i.aq, %.lr.ph.i.i ] ; 6 uses
  %.0911.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ar, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.0911.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8
  %i.ak = load <2 x ptr>, ptr %.012.i.i, align 8, !tbaa !16259
  store ptr null, ptr %i.aj, align 8, !tbaa !16122
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !tbaa !16259
  store ptr null, ptr %.012.i.i, align 8, !tbaa !16311
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.0911.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 24
  %i.ap = load <2 x ptr>, ptr %i.al, align 8, !tbaa !16259
  store ptr null, ptr %i.ao, align 8, !tbaa !16122
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !16259
  store ptr null, ptr %i.al, align 8, !tbaa !16311
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32 ; 2 uses
  %i.ar = add nuw nsw i64 %.0911.i.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !782

_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %i.as = and i64 %i.ae, 1
  %lcmp.mod.not.not = icmp eq i64 %i.as, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.epil.preheader, label %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.012.i.i.epil.init = phi ptr [ %i.x, %.lr.ph.i.i.preheader ], [ %i.aq, %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %.0911.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ar, %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod48 = trunc i64 %i.ag to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.0911.i.i.epil.init
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.epil.init, i64 8
  %i.av = load <2 x ptr>, ptr %.012.i.i.epil.init, align 8, !tbaa !16259
  store ptr null, ptr %i.au, align 8, !tbaa !16122
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !16259
  store ptr null, ptr %.012.i.i.epil.init, align 8, !tbaa !16311
  br label %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i

_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i: ; preds = %.lr.ph.i.i.epil.preheader, %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i.loopexit.unr-lcssa, %bb.g
  %i.aw = icmp samesign ult i64 %3, %i.y
  br i1 %i.aw, label %bb.h, label %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_12emplace_backIJSC_EEERSC_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit

bb.h:                                             ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  br label %.lr.ph.i12.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %bb.h
  %.012.i13.i = phi ptr [ %i.bc, %.lr.ph.i12.i ], [ %i.ax, %bb.h ] ; 4 uses
  %.0911.i14.i = phi i64 [ %i.bd, %.lr.ph.i12.i ], [ 0, %bb.h ] ; 2 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.0911.i14.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i13.i, i64 8
  %i.bb = load <2 x ptr>, ptr %.012.i13.i, align 8, !tbaa !16259
  store ptr null, ptr %i.ba, align 8, !tbaa !16122
  store <2 x ptr> %i.bb, ptr %i.az, align 8, !tbaa !16259
  store ptr null, ptr %.012.i13.i, align 8, !tbaa !16311
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i13.i, i64 16 ; 2 uses
  %i.bd = add nuw nsw i64 %.0911.i14.i, 1
  %.not.i15.i = icmp eq ptr %i.bc, %i.z
  br i1 %.not.i15.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_12emplace_backIJSC_EEERSC_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit, label %.lr.ph.i12.i, !llvm.loop !782

_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_12emplace_backIJSC_EEERSC_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit: ; preds = %.lr.ph.i12.i, %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE12emplace_backIJSE_EEERSE_DpOT_EUlPvE_EEvPT_SP_SP_mOT0_EUlvE_Lb1EED2Ev.exit.i
  %i.be = load ptr, ptr %i.v, align 8
  %i.bf = select i1 %.not1.i.i, ptr %i.be, ptr %i.v ; 2 uses
  %i.bg = shl i64 %i.u, 4                         ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  %.not4.i.i.i = icmp samesign eq i64 %i.bg, 0
  br i1 %.not4.i.i.i, label %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_12emplace_backIJSC_EEERSC_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bz, %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i ], [ %i.bf, %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_12emplace_backIJSC_EEERSC_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !16122 ; 8 uses
  %.not.i.i.i.i.i.i.i20 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i20, label %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bk, align 8, !tbaa !16124
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !16125
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !814
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #42, !call_target !16129, !inline_history !780
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !814
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #42, !call_target !16130, !inline_history !780
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16131
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !15894
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.l ], [ %i.bx, %bb.m ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.n, label %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i, !prof !16132

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #42
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.j, %.lr.ph.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bz, %i.bh
  br i1 %.not.i.i.i, label %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !781

_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit.loopexit: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i
  %.pre = load i64, ptr %0, align 8, !tbaa !16184
  br label %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit

_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit: ; preds = %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit.loopexit, %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_12emplace_backIJSC_EEERSC_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit
  %i.ca = phi i64 [ %.pre, %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit.loopexit ], [ %i.u, %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_12emplace_backIJSC_EEERSC_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit ]
  %.not.i21 = icmp sgt i64 %i.ca, -1
  br i1 %.not.i21, label %_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit
  %i.cb = load ptr, ptr %i.v, align 8, !tbaa !16131 ; 3 uses
  %.not5.i = icmp eq ptr %i.cb, null
  br i1 %.not5.i, label %_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load i64, ptr %i.c, align 8, !tbaa !16577
  %i.cd = shl i64 %i.cc, 4
  %i.ce = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly11canSdallocxEv.exit.i.i, label %.split.i.i, !prof !16132

.split.i.i:                                       ; preds = %bb.p
  %i.cf = icmp sgt i8 %i.ce, 0
  br i1 %i.cf, label %bb.q, label %bb.r

_ZN5folly11canSdallocxEv.exit.i.i:                ; preds = %bb.p
  %i.cg = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #47
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i, %.split.i.i
  tail call void @sdallocx(ptr noundef nonnull %i.cb, i64 noundef %i.cd, i32 noundef 0) #42
  br label %_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit

bb.r:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i, %.split.i.i
  tail call void @free(ptr noundef nonnull %i.cb) #42
  br label %_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit

_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit: ; preds = %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit, %bb.o, %bb.q, %bb.r
  store ptr %i.t, ptr %i.v, align 8, !tbaa !16131
  %i.ch = load i64, ptr %0, align 8
  %storemerge.i22 = or i64 %i.ch, -9223372036854775808
  store i64 %storemerge.i22, ptr %0, align 8, !tbaa !16184
  store i64 %.0.i12, ptr %i.c, align 8, !tbaa !16577
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSB_6insertEPKSA_OSA_EUlPvE_EEvmOT1_m(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.25) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !16184
  %.not.i.i = icmp slt i64 %i.b, 0                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 3) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = select i1 %.not.i.i, i1 %i.f, i1 false
  br i1 %i.g, label %_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit.i, label %_ZNK5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE14computeNewSizeEv.exit, !prof !16132

_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit.i: ; preds = %bb.c
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.26) #21
  unreachable

_ZNK5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE14computeNewSizeEv.exit: ; preds = %bb.c
  %i.h = extractvalue { i64, i1 } %i.e, 0
  %i.i = lshr i64 %i.h, 1
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 9223372036854775806)
  %i.k = add nuw nsw i64 %i.j, 1
  %.sroa.speculated.i = select i1 %.not.i.i, i64 %i.k, i64 4
  %.sroa.speculated28 = tail call i64 @llvm.umax.i64(i64 %1, i64 %.sroa.speculated.i) ; 5 uses
  %i.l = icmp samesign ugt i64 %.sroa.speculated28, 1152921504606846975
  br i1 %i.l, label %_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit, label %bb.d, !prof !16132

_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit: ; preds = %_ZNK5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE14computeNewSizeEv.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.26) #21
  unreachable

bb.d:                                             ; preds = %_ZNK5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE14computeNewSizeEv.exit
  %i.m = shl nuw i64 %.sroa.speculated28, 4       ; 3 uses
  %i.n = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %.split.i, !prof !16132

.split.i:                                         ; preds = %bb.d
  %i.o = icmp sgt i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.d
  %i.p = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #47
  br i1 %i.p, label %bb.e, label %_ZN5folly14goodMallocSizeEm.exit

bb.e:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %.split.i
  %i.q = tail call i64 @nallocx(i64 noundef %i.m, i32 noundef 0) #42 ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  %i.r = lshr i64 %i.q, 4
  %i.s = select i1 %.not.i, i64 %.sroa.speculated28, i64 %i.r ; 2 uses
  %.pre39 = shl nuw i64 %i.s, 4
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %.split.i, %_ZN5folly10canNallocxEv.exit.i, %bb.e
  %.pre-phi = phi i64 [ %i.m, %.split.i ], [ %i.m, %_ZN5folly10canNallocxEv.exit.i ], [ %.pre39, %bb.e ]
  %.0.i12 = phi i64 [ %.sroa.speculated28, %.split.i ], [ %.sroa.speculated28, %_ZN5folly10canNallocxEv.exit.i ], [ %i.s, %bb.e ]
  %i.t = tail call noalias ptr @malloc(i64 noundef %.pre-phi) #49 ; 6 uses
  %.not.i14 = icmp eq ptr %i.t, null
  br i1 %.not.i14, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #21
  unreachable

bb.g:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  %i.u = load i64, ptr %0, align 8, !tbaa !16184  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8
  %.not1.i.i = icmp slt i64 %i.u, 0               ; 2 uses
  %i.x = select i1 %.not1.i.i, ptr %i.w, ptr %i.v ; 5 uses
  %i.y = and i64 %i.u, 9223372036854775807        ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %3 ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !17518, !nonnull !1501, !align !16578 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !16259
  store ptr null, ptr %i.ac, align 8, !tbaa !16122
  store <2 x ptr> %i.ad, ptr %i.aa, align 8, !tbaa !16259
  store ptr null, ptr %i.ab, align 8, !tbaa !16311
  %.not.i16 = icmp eq ptr %i.x, null
  %.not10.i.i = icmp eq i64 %3, 0
  %or.cond = or i1 %.not.i16, %.not10.i.i
  br i1 %or.cond, label %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ae = add i64 %3, 1152921504606846975         ; 2 uses
  %i.af = and i64 %i.ae, 1152921504606846975      ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.ag, 2305843009213693950
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.012.i.i = phi ptr [ %i.x, %.lr.ph.i.i.preheader.new ], [ %i.aq, %.lr.ph.i.i ] ; 6 uses
  %.0911.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ar, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.0911.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8
  %i.ak = load <2 x ptr>, ptr %.012.i.i, align 8, !tbaa !16259
  store ptr null, ptr %i.aj, align 8, !tbaa !16122
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !tbaa !16259
  store ptr null, ptr %.012.i.i, align 8, !tbaa !16311
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.0911.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 24
  %i.ap = load <2 x ptr>, ptr %i.al, align 8, !tbaa !16259
  store ptr null, ptr %i.ao, align 8, !tbaa !16122
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !16259
  store ptr null, ptr %i.al, align 8, !tbaa !16311
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32 ; 2 uses
  %i.ar = add nuw nsw i64 %.0911.i.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !782

_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %i.as = and i64 %i.ae, 1
  %lcmp.mod.not.not = icmp eq i64 %i.as, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.epil.preheader, label %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.012.i.i.epil.init = phi ptr [ %i.x, %.lr.ph.i.i.preheader ], [ %i.aq, %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %.0911.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ar, %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod48 = trunc i64 %i.ag to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.0911.i.i.epil.init
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.epil.init, i64 8
  %i.av = load <2 x ptr>, ptr %.012.i.i.epil.init, align 8, !tbaa !16259
  store ptr null, ptr %i.au, align 8, !tbaa !16122
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !16259
  store ptr null, ptr %.012.i.i.epil.init, align 8, !tbaa !16311
  br label %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i

_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i: ; preds = %.lr.ph.i.i.epil.preheader, %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i.loopexit.unr-lcssa, %bb.g
  %i.aw = icmp samesign ult i64 %3, %i.y
  br i1 %i.aw, label %bb.h, label %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_6insertEPKSC_OSC_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit

bb.h:                                             ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  br label %.lr.ph.i12.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %bb.h
  %.012.i13.i = phi ptr [ %i.bc, %.lr.ph.i12.i ], [ %i.ax, %bb.h ] ; 4 uses
  %.0911.i14.i = phi i64 [ %i.bd, %.lr.ph.i12.i ], [ 0, %bb.h ] ; 2 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.0911.i14.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i13.i, i64 8
  %i.bb = load <2 x ptr>, ptr %.012.i13.i, align 8, !tbaa !16259
  store ptr null, ptr %i.ba, align 8, !tbaa !16122
  store <2 x ptr> %i.bb, ptr %i.az, align 8, !tbaa !16259
  store ptr null, ptr %.012.i13.i, align 8, !tbaa !16311
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i13.i, i64 16 ; 2 uses
  %i.bd = add nuw nsw i64 %.0911.i14.i, 1
  %.not.i15.i = icmp eq ptr %i.bc, %i.z
  br i1 %.not.i15.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_6insertEPKSC_OSC_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit, label %.lr.ph.i12.i, !llvm.loop !782

_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_6insertEPKSC_OSC_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit: ; preds = %.lr.ph.i12.i, %_ZN5folly6detail14ScopeGuardImplIZNS0_18IntegralSizePolicyImLb1ELb0EE26moveToUninitializedEmplaceISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS7_6EventsELm32EEEE8ObserverEEZNS_12small_vectorISE_Lm2EvE6insertEPKSE_OSE_EUlPvE_EEvPT_SN_SN_mOT0_EUlvE_Lb1EED2Ev.exit.i
  %i.be = load ptr, ptr %i.v, align 8
  %i.bf = select i1 %.not1.i.i, ptr %i.be, ptr %i.v ; 2 uses
  %i.bg = shl i64 %i.u, 4                         ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  %.not4.i.i.i = icmp samesign eq i64 %i.bg, 0
  br i1 %.not4.i.i.i, label %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_6insertEPKSC_OSC_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bz, %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i ], [ %i.bf, %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_6insertEPKSC_OSC_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !16122 ; 8 uses
  %.not.i.i.i.i.i.i.i20 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i20, label %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bk, align 8, !tbaa !16124
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !16125
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !814
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #42, !call_target !16129, !inline_history !780
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !814
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #42, !call_target !16130, !inline_history !780
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16131
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !15894
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.l ], [ %i.bx, %bb.m ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.n, label %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i, !prof !16132

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #42
  br label %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.j, %.lr.ph.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bz, %i.bh
  br i1 %.not.i.i.i, label %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !781

_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit.loopexit: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvPT_.exit.i.i.i
  %.pre = load i64, ptr %0, align 8, !tbaa !16184
  br label %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit

_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit: ; preds = %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit.loopexit, %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_6insertEPKSC_OSC_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit
  %i.ca = phi i64 [ %.pre, %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit.loopexit ], [ %i.u, %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS5_6EventsELm32EEEE8ObserverEELm2EvE16makeSizeInternalILb1ELb0EZNSD_6insertEPKSC_OSC_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit ]
  %.not.i21 = icmp sgt i64 %i.ca, -1
  br i1 %.not.i21, label %_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit
  %i.cb = load ptr, ptr %i.v, align 8, !tbaa !16131 ; 3 uses
  %.not5.i = icmp eq ptr %i.cb, null
  br i1 %.not5.i, label %_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load i64, ptr %i.c, align 8, !tbaa !16577
  %i.cd = shl i64 %i.cc, 4
  %i.ce = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly11canSdallocxEv.exit.i.i, label %.split.i.i, !prof !16132

.split.i.i:                                       ; preds = %bb.p
  %i.cf = icmp sgt i8 %i.ce, 0
  br i1 %i.cf, label %bb.q, label %bb.r

_ZN5folly11canSdallocxEv.exit.i.i:                ; preds = %bb.p
  %i.cg = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #47
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i, %.split.i.i
  tail call void @sdallocx(ptr noundef nonnull %i.cb, i64 noundef %i.cd, i32 noundef 0) #42
  br label %_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit

bb.r:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i, %.split.i.i
  tail call void @free(ptr noundef nonnull %i.cb) #42
  br label %_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit

_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE8freeHeapEv.exit: ; preds = %_ZSt7destroyIPSt10shared_ptrIN5folly21ObserverContainerBaseINS1_28AsyncSocketObserverInterfaceENS1_11AsyncSocketENS1_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEEEvT_SC_.exit, %bb.o, %bb.q, %bb.r
  store ptr %i.t, ptr %i.v, align 8, !tbaa !16131
  %i.ch = load i64, ptr %0, align 8
  %storemerge.i22 = or i64 %i.ch, -9223372036854775808
  store i64 %storemerge.i22, ptr %0, align 8, !tbaa !16184
  store i64 %.0.i12, ptr %i.c, align 8, !tbaa !16577
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16122 ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !16124
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !16125
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !814
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #42, !call_target !16129, !inline_history !783
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !814
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #42, !call_target !16130, !inline_history !783
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16131
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !15894
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !16132

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #42
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly12small_vectorISt10shared_ptrINS_21ObserverContainerBaseINS_28AsyncSocketObserverInterfaceENS_11AsyncSocketENS_34ObserverContainerBasePolicyDefaultINS3_6EventsELm32EEEE8ObserverEELm2EvE5eraseEPKSA_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !16184  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not1.i.i = icmp slt i64 %i.b, 0
  %i.e = select i1 %.not1.i.i, ptr %i.d, ptr %i.c
  %i.f = and i64 %i.b, 9223372036854775807        ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ag, %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit.i.i.i.i.i ], [ %i.k, %bb.a ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.af, %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit.i.i.i.i.i ], [ %1, %bb.a ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ae, %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit.i.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.n = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !16259
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0910.i.i.i.i.i, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !16122 ; 8 uses
  store <2 x ptr> %i.n, ptr %.0811.i.i.i.i.i, align 8, !tbaa !16259
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.p, align 8, !tbaa !16124
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !16125
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !814
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #42, !call_target !16129, !inline_history !784
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !814
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #42, !call_target !16130, !inline_history !784
  br label %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16131
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !15894
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.s, %bb.e ], [ %i.ac, %bb.f ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.g, label %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit.i.i.i.i.i, !prof !16132

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #42
  br label %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ag = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ah = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.i.i.preheader.i.loopexit, !llvm.loop !785

.lr.ph.i.i.i.preheader.i.loopexit:                ; preds = %_ZNSt10shared_ptrIN5folly21ObserverContainerBaseINS0_28AsyncSocketObserverInterfaceENS0_11AsyncSocketENS0_34ObserverContainerBasePolicyDefaultINS2_6EventsELm32EEEE8ObserverEEaSEOS9_.exit.i.i.i.i.i
  %.pre = load i64, ptr %0, align 8, !tbaa !16184 ; 2 uses
  %.pre5 = load ptr, ptr %i.c, align 8
  %.pre6 = and i64 %.pre, 9223372036854775807
  br label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %.lr.ph.i.i.i.preheader.i.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre6, %.lr.ph.i.i.i.preheader.i.loopexit ], [ %i.f, %bb.a ]
  %i.ai = phi ptr [ %.pre5, %.lr.ph.i.i.i.preheader.i.loopexit ], [ %i.d, %bb.a ]
  %i.aj = phi i64 [ %.pre, %.lr.ph.i.i.i.preheader.i.loopexit ], [ %i.b, %bb.a ]
  %i.ak = add nsw i64 %.pre-phi, -1               ; 2 uses
  %.not1.i.i.i = icmp slt i64 %i.aj, 0
  %i.al = select i1 %.not1.i.i.i, ptr %i.ai, ptr %i.c
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
end_hunk_0
begin_hunk_1_@_ZN3fmt2v96detail15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_:bb.a
  switch i32 %i.bb, label %_ZN3fmt2v96detail13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEE13end_precisionEv.exit [
    i32 14, label %bb.r
    i32 8, label %bb.r
    i32 7, label %bb.r
    i32 6, label %bb.r
    i32 5, label %bb.r
    i32 4, label %bb.r
    i32 3, label %bb.r
    i32 2, label %bb.r
    i32 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.311) #46
  unreachable

_ZN3fmt2v96detail13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEE13end_precisionEv.exit: ; preds = %bb.q
  ret ptr %.1
}

; Function Attrs: noreturn
declare void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3fmt2v96detail15do_parse_arg_idIcRZNS1_11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SE_SE_OT0_E13width_adapterEESE_SE_SE_SG_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !16131   ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not30 = icmp eq i8 %i.c, 48
  br i1 %.not30, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep34.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not31.i52 = icmp eq ptr %i.j, %1
  br i1 %.not31.i52, label %.critedge.i, label %.lr.ph55

bb.d:                                             ; preds = %.lr.ph55
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not31.i = icmp eq ptr %i.o, %1
  br i1 %.not31.i, label %.critedge.i, label %.lr.ph55, !llvm.loop !793

.lr.ph55:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i54 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.024.i53 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !16131 ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !793

..critedge.i_crit_edge:                           ; preds = %.lr.ph55
  br label %.critedge.i, !llvm.loop !793

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.024.i.lcssa = phi i32 [ %.024.i53, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i54, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep34.i, %bb.c ], [ %scevgep34.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.024.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !16131
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.043 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.024 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ah = icmp eq ptr %.043, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.043, align 1, !tbaa !16131
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.307) #46
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = load ptr, ptr %2, align 8, !tbaa !18157, !nonnull !1501, !align !16578 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !16715, !noalias !18158, !nonnull !1501, !align !16578
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !16717, !noalias !18158
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %_ZZN3fmt2v96detail11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_EN13width_adapterclEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.308) #46, !noalias !18158
  unreachable

_ZZN3fmt2v96detail11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_EN13width_adapterclEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.am, align 8, !tbaa !16717, !noalias !18158
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !16718, !nonnull !1501, !align !16578 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i32 1, ptr %i.ar, align 8, !tbaa !16719
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i32 %.024, ptr %.sroa.41.0..sroa_idx.i.i, align 8
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.as = and i8 %i.c, -33
  %i.at = add i8 %i.as, -65
  %or.cond10.i = icmp ult i8 %i.at, 26
  %i.au = icmp eq i8 %i.c, 95
  %i.av = or i1 %i.au, %or.cond10.i
  br i1 %i.av, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.aw = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.aw  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not50 = icmp eq ptr %i.ax, %1
  br i1 %.not50, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.307) #46
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ay, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !18155

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.az = phi ptr [ %i.ay, %.critedge4 ], [ %i.ax, %.critedge4.preheader ] ; 3 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16131 ; 3 uses
  %i.bb = and i8 %i.ba, -33
  %i.bc = add i8 %i.bb, -65
  %or.cond10.i36 = icmp ult i8 %i.bc, 26
  %i.bd = icmp eq i8 %i.ba, 95
  %i.be = or i1 %i.bd, %or.cond10.i36
  %i.bf = add i8 %i.ba, -48
  %i.bg = icmp ult i8 %i.bf, 10
  %or.cond34 = or i1 %i.bg, %i.be
  br i1 %or.cond34, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !18155

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !18155

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa45 = phi ptr [ %i.az, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bh = ptrtoint ptr %.lcssa45 to i64
  %i.bi = ptrtoint ptr %0 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = load ptr, ptr %2, align 8, !tbaa !18157, !nonnull !1501, !align !16578
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !16718, !nonnull !1501, !align !16578 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 2, ptr %i.bn, align 8, !tbaa !16719
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %0, ptr %.sroa.43.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store i64 %i.bj, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !16131
  br label %bb.o

bb.o:                                             ; preds = %_ZZN3fmt2v96detail11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_EN13width_adapterclEi.exit, %.critedge
  %.025 = phi ptr [ %.043, %_ZZN3fmt2v96detail11parse_widthIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_EN13width_adapterclEi.exit ], [ %.lcssa45, %.critedge ]
  ret ptr %.025
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3fmt2v96detail15do_parse_arg_idIcRZNS1_15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SE_SE_OT0_E17precision_adapterEESE_SE_SE_SG_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !16131   ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not30 = icmp eq i8 %i.c, 48
  br i1 %.not30, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep34.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not31.i52 = icmp eq ptr %i.j, %1
  br i1 %.not31.i52, label %.critedge.i, label %.lr.ph55

bb.d:                                             ; preds = %.lr.ph55
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not31.i = icmp eq ptr %i.o, %1
  br i1 %.not31.i, label %.critedge.i, label %.lr.ph55, !llvm.loop !793

.lr.ph55:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i54 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.024.i53 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !16131 ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !793

..critedge.i_crit_edge:                           ; preds = %.lr.ph55
  br label %.critedge.i, !llvm.loop !793

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.024.i.lcssa = phi i32 [ %.024.i53, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i54, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep34.i, %bb.c ], [ %scevgep34.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.024.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !16131
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.043 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.024 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ah = icmp eq ptr %.043, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.043, align 1, !tbaa !16131
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt2v96detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.307) #46
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = load ptr, ptr %2, align 8, !tbaa !18163, !nonnull !1501, !align !16578 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !16715, !noalias !18164, !nonnull !1501, !align !16578
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !16717, !noalias !18164
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %_ZZN3fmt2v96detail15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_EN17precision_adapterclEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.308) #46, !noalias !18164
  unreachable

_ZZN3fmt2v96detail15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_EN17precision_adapterclEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.am, align 8, !tbaa !16717, !noalias !18164
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !16718, !nonnull !1501, !align !16578 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i32 1, ptr %i.ar, align 8, !tbaa !16719
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store i32 %.024, ptr %.sroa.41.0..sroa_idx.i.i, align 8
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.as = and i8 %i.c, -33
  %i.at = add i8 %i.as, -65
  %or.cond10.i = icmp ult i8 %i.at, 26
  %i.au = icmp eq i8 %i.c, 95
  %i.av = or i1 %i.au, %or.cond10.i
  br i1 %i.av, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.aw = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.aw  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not50 = icmp eq ptr %i.ax, %1
  br i1 %.not50, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.307) #46
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ay, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !18161

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.az = phi ptr [ %i.ay, %.critedge4 ], [ %i.ax, %.critedge4.preheader ] ; 3 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16131 ; 3 uses
  %i.bb = and i8 %i.ba, -33
  %i.bc = add i8 %i.bb, -65
  %or.cond10.i36 = icmp ult i8 %i.bc, 26
  %i.bd = icmp eq i8 %i.ba, 95
  %i.be = or i1 %i.bd, %or.cond10.i36
  %i.bf = add i8 %i.ba, -48
  %i.bg = icmp ult i8 %i.bf, 10
  %or.cond34 = or i1 %i.bg, %i.be
  br i1 %or.cond34, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !18161

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !18161

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa45 = phi ptr [ %i.az, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bh = ptrtoint ptr %.lcssa45 to i64
  %i.bi = ptrtoint ptr %0 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = load ptr, ptr %2, align 8, !tbaa !18163, !nonnull !1501, !align !16578
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !16718, !nonnull !1501, !align !16578 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i32 2, ptr %i.bn, align 8, !tbaa !16719
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store ptr %0, ptr %.sroa.43.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  store i64 %i.bj, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !16131
  br label %bb.o

bb.o:                                             ; preds = %_ZZN3fmt2v96detail15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_EN17precision_adapterclEi.exit, %.critedge
  %.025 = phi ptr [ %.043, %_ZZN3fmt2v96detail15parse_precisionIcRNS1_13specs_checkerINS1_21dynamic_specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEEEEEEEEPKT_SD_SD_OT0_EN17precision_adapterclEi.exit ], [ %.lcssa45, %.critedge ]
  ret ptr %.025
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail19handle_dynamic_specINS1_13width_checkerENS0_20basic_format_contextINS0_8appenderEcEEEEvRiNS1_7arg_refINT0_9char_typeEEERS9_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef byval(%"struct.fmt::v9::detail::arg_ref") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.fmt::v9::basic_format_arg", align 16 ; 8 uses
  %4 = alloca %"class.fmt::v9::basic_format_arg", align 16 ; 10 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !16720
  switch i32 %i.a, label %bb.q [
    i32 2, label %bb.h
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16131 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18173)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18174)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 0, ptr %i.e, align 16, !tbaa !16723, !alias.scope !18175
  %i.f = load i64, ptr %i.d, align 8, !tbaa !16725, !noalias !18175 ; 3 uses
  %i.g = icmp sgt i64 %i.f, -1
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = trunc i64 %i.f to i32
  %i.i = icmp slt i32 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16131, !noalias !18175
  %i.l = sext i32 %i.c to i64
  %i.m = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %3, ptr noundef nonnull align 16 dereferenceable(20) %i.m, i64 20, i1 false), !tbaa.struct !16727
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.n = icmp sgt i32 %i.c, 14
  br i1 %i.n, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = shl nsw i32 %i.c, 2
  %i.p = zext nneg i32 %i.o to i64
  %i.q = lshr i64 %i.f, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 15                         ; 2 uses
  store i32 %i.s, ptr %i.e, align 16, !tbaa !16723, !alias.scope !18175
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16131, !noalias !18175
  %i.w = sext i32 %i.c to i64
  %i.x = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !16269
  br label %.sink.split

bb.h:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.y, align 8, !tbaa !16698
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !15893 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18176)
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !16725, !noalias !18176 ; 5 uses
  %i.ab = and i64 %i.aa, 4611686018427387904
  %.not14.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not14.i.i, label %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !18176 ; 3 uses
  %i.ae = icmp slt i64 %i.aa, 0
  %.v.i.i = select i1 %i.ae, i64 -32, i64 -16
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %.v.i.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !16730, !noalias !18176 ; 2 uses
  %.not15.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not15.not.i.i, label %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !16731, !noalias !18176
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.thread.i.i, %.lr.ph.i.i
  %.01216.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ap, %_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.thread.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.01216.i.i ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16733, !noalias !18176 ; 2 uses
  %i.al = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #51, !noalias !18176 ; 3 uses
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %.sroa.2.0.copyload) ; 2 uses
  %i.am = icmp eq i64 %..i.i.i.i, 0
  br i1 %i.am, label %_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.j
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr %.sroa.0.0.copyload, i64 %..i.i.i.i), !noalias !18176
  %i.an = icmp eq i32 %bcmp.i.i.i, 0
  %i.ao = icmp eq i64 %i.al, %.sroa.2.0.copyload
  %or.cond.i.i = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond.i.i, label %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i, label %_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.thread.i.i

_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.i.i: ; preds = %bb.j
  %.old.i.i = icmp eq i64 %i.al, %.sroa.2.0.copyload
  br i1 %.old.i.i, label %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i, label %_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.thread.i.i

_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.thread.i.i: ; preds = %_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.ap = add nuw i64 %.01216.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ap, %i.ah
  br i1 %exitcond.not.i.i, label %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.thread.i, label %bb.j, !llvm.loop !794

_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i: ; preds = %_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !16734, !noalias !18176 ; 6 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.k, label %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.thread.i

bb.k:                                             ; preds = %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 0, ptr %i.at, align 16, !tbaa !16723, !alias.scope !18177
  %i.au = icmp sgt i64 %i.aa, -1
  br i1 %i.au, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = trunc i64 %i.aa to i32
  %i.aw = icmp slt i32 %i.ar, %i.av
  br i1 %i.aw, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.ax = zext nneg i32 %i.ar to i64
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %4, ptr noundef nonnull align 16 dereferenceable(20) %i.ay, i64 20, i1 false), !tbaa.struct !16727
  br label %.sink.split

bb.n:                                             ; preds = %bb.k
  %i.az = icmp samesign ugt i32 %i.ar, 14
  br i1 %i.az, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = shl nuw nsw i32 %i.ar, 2
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = lshr i64 %i.aa, %i.bb
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 15                       ; 2 uses
  store i32 %i.be, ptr %i.at, align 16, !tbaa !16723, !alias.scope !18177
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = zext nneg i32 %i.ar to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %i.bh, i64 16, i1 false), !tbaa.struct !16269
  br label %.sink.split

_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.thread.i: ; preds = %_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.thread.i.i, %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i, %bb.i, %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.bi, align 16, !tbaa !16723, !alias.scope !18176
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.thread.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink16 = phi ptr [ %3, %bb.g ], [ %3, %bb.c ], [ %3, %bb.d ], [ %3, %bb.e ], [ %3, %bb.f ], [ %4, %bb.l ], [ %4, %bb.m ], [ %4, %bb.n ], [ %4, %bb.o ], [ %4, %bb.p ], [ %4, %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.thread.i ]
  %i.bj = tail call noundef i32 @_ZN3fmt2v96detail16get_dynamic_specINS1_13width_checkerENS0_16basic_format_argINS0_20basic_format_contextINS0_8appenderEcEEEENS1_13error_handlerEEEiT0_T1_(ptr noundef nonnull byval(%"class.fmt::v9::basic_format_arg") align 16 %.sink16)
  store i32 %i.bj, ptr %0, align 4, !tbaa !15894
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail19handle_dynamic_specINS1_17precision_checkerENS0_20basic_format_contextINS0_8appenderEcEEEEvRiNS1_7arg_refINT0_9char_typeEEERS9_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef byval(%"struct.fmt::v9::detail::arg_ref") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.fmt::v9::basic_format_arg", align 16 ; 8 uses
  %4 = alloca %"class.fmt::v9::basic_format_arg", align 16 ; 10 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !16720
  switch i32 %i.a, label %bb.q [
    i32 2, label %bb.h
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16131 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18186)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18187)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 0, ptr %i.e, align 16, !tbaa !16723, !alias.scope !18188
  %i.f = load i64, ptr %i.d, align 8, !tbaa !16725, !noalias !18188 ; 3 uses
  %i.g = icmp sgt i64 %i.f, -1
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = trunc i64 %i.f to i32
  %i.i = icmp slt i32 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %.sink.split

end_hunk_1
begin_hunk_2_@_ZN3fmt2v96detail19handle_dynamic_specINS1_17precision_checkerENS0_20basic_format_contextINS0_8appenderEcEEEEvRiNS1_7arg_refINT0_9char_typeEEERS9_:bb.a
.lr.ph.i.i:                                       ; preds = %bb.i
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !16731, !noalias !18189
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.thread.i.i, %.lr.ph.i.i
  %.01216.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ap, %_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.thread.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.01216.i.i ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16733, !noalias !18189 ; 2 uses
  %i.al = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #51, !noalias !18189 ; 3 uses
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %.sroa.2.0.copyload) ; 2 uses
  %i.am = icmp eq i64 %..i.i.i.i, 0
  br i1 %i.am, label %_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.j
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr %.sroa.0.0.copyload, i64 %..i.i.i.i), !noalias !18189
  %i.an = icmp eq i32 %bcmp.i.i.i, 0
  %i.ao = icmp eq i64 %i.al, %.sroa.2.0.copyload
  %or.cond.i.i = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond.i.i, label %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i, label %_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.thread.i.i

_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.i.i: ; preds = %bb.j
  %.old.i.i = icmp eq i64 %i.al, %.sroa.2.0.copyload
  br i1 %.old.i.i, label %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i, label %_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.thread.i.i

_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.thread.i.i: ; preds = %_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.ap = add nuw i64 %.01216.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ap, %i.ah
  br i1 %exitcond.not.i.i, label %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.thread.i, label %bb.j, !llvm.loop !794

_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i: ; preds = %_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !16734, !noalias !18189 ; 6 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.k, label %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.thread.i

bb.k:                                             ; preds = %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 0, ptr %i.at, align 16, !tbaa !16723, !alias.scope !18190
  %i.au = icmp sgt i64 %i.aa, -1
  br i1 %i.au, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = trunc i64 %i.aa to i32
  %i.aw = icmp slt i32 %i.ar, %i.av
  br i1 %i.aw, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.ax = zext nneg i32 %i.ar to i64
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %4, ptr noundef nonnull align 16 dereferenceable(20) %i.ay, i64 20, i1 false), !tbaa.struct !16727
  br label %.sink.split

bb.n:                                             ; preds = %bb.k
  %i.az = icmp samesign ugt i32 %i.ar, 14
  br i1 %i.az, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = shl nuw nsw i32 %i.ar, 2
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = lshr i64 %i.aa, %i.bb
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 15                       ; 2 uses
  store i32 %i.be, ptr %i.at, align 16, !tbaa !16723, !alias.scope !18190
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = zext nneg i32 %i.ar to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %i.bh, i64 16, i1 false), !tbaa.struct !16269
  br label %.sink.split

_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.thread.i: ; preds = %_ZN3fmt2v9eqENS0_17basic_string_viewIcEES2_.exit.thread.i.i, %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i, %bb.i, %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.bi, align 16, !tbaa !16723, !alias.scope !18189
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.thread.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink16 = phi ptr [ %3, %bb.g ], [ %3, %bb.c ], [ %3, %bb.d ], [ %3, %bb.e ], [ %3, %bb.f ], [ %4, %bb.l ], [ %4, %bb.m ], [ %4, %bb.n ], [ %4, %bb.o ], [ %4, %bb.p ], [ %4, %_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.thread.i ]
  %i.bj = tail call noundef i32 @_ZN3fmt2v96detail16get_dynamic_specINS1_17precision_checkerENS0_16basic_format_argINS0_20basic_format_contextINS0_8appenderEcEEEENS1_13error_handlerEEEiT0_T1_(ptr noundef nonnull byval(%"class.fmt::v9::basic_format_arg") align 16 %.sink16)
  store i32 %i.bj, ptr %0, align 4, !tbaa !15894
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN3fmt2v96detail16get_dynamic_specINS1_13width_checkerENS0_16basic_format_argINS0_20basic_format_contextINS0_8appenderEcEEEENS1_13error_handlerEEEiT0_T1_(ptr noundef byval(%"class.fmt::v9::basic_format_arg") align 16 %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !16723
  switch i32 %i.b, label %bb.t [
    i32 15, label %bb.s
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
    i32 14, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 16, !tbaa !16131 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.313) #46
  unreachable

_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread: ; preds = %bb.b
  %i.e = zext nneg i32 %i.c to i64
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 16, !tbaa !16131
  %i.g = zext i32 %i.f to i64
  br label %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.e:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 16, !tbaa !16131 ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.313) #46
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.j = load i64, ptr %0, align 16, !tbaa !16131
  br label %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.h:                                             ; preds = %bb.a
  %i.k = load i128, ptr %0, align 16, !tbaa !16131 ; 2 uses
  %i.l = icmp slt i128 %i.k, 0
  br i1 %i.l, label %bb.i, label %_ZN3fmt2v96detail13width_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.313) #46
  unreachable

_ZN3fmt2v96detail13width_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit: ; preds = %bb.h
  %i.m = trunc i128 %i.k to i64
  br label %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.j:                                             ; preds = %bb.a
  %i.n = load i128, ptr %0, align 16, !tbaa !16131
  %i.o = trunc i128 %i.n to i64
  br label %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.314) #46
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.314) #46
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.314) #46
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.314) #46
  unreachable

bb.o:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.314) #46
  unreachable

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.314) #46
  unreachable

bb.q:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.314) #46
  unreachable

bb.r:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.314) #46
  unreachable

bb.s:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.314) #46
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.314) #46
  unreachable

_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit: ; preds = %bb.e, %bb.d, %bb.g, %_ZN3fmt2v96detail13width_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit, %bb.j
  %.0.i = phi i64 [ %i.j, %bb.g ], [ %i.m, %_ZN3fmt2v96detail13width_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit ], [ %i.h, %bb.e ], [ %i.g, %bb.d ], [ %i.o, %bb.j ] ; 2 uses
  %i.p = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.p, label %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread9, label %bb.u

_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread9: ; preds = %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.306) #46
  unreachable

bb.u:                                             ; preds = %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread, %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  %.0.i8 = phi i64 [ %i.e, %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread ], [ %.0.i, %_ZN3fmt2v916visit_format_argINS0_6detail13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit ]
  %i.q = trunc nuw nsw i64 %.0.i8 to i32
  ret i32 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN3fmt2v96detail16get_dynamic_specINS1_17precision_checkerENS0_16basic_format_argINS0_20basic_format_contextINS0_8appenderEcEEEENS1_13error_handlerEEEiT0_T1_(ptr noundef byval(%"class.fmt::v9::basic_format_arg") align 16 %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !16723
  switch i32 %i.b, label %bb.t [
    i32 15, label %bb.s
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
    i32 14, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 16, !tbaa !16131 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.315) #46
  unreachable

_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread: ; preds = %bb.b
  %i.e = zext nneg i32 %i.c to i64
  br label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 16, !tbaa !16131
  %i.g = zext i32 %i.f to i64
  br label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.e:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 16, !tbaa !16131 ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.315) #46
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.j = load i64, ptr %0, align 16, !tbaa !16131
  br label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.h:                                             ; preds = %bb.a
  %i.k = load i128, ptr %0, align 16, !tbaa !16131 ; 2 uses
  %i.l = icmp slt i128 %i.k, 0
  br i1 %i.l, label %bb.i, label %_ZN3fmt2v96detail17precision_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.315) #46
  unreachable

_ZN3fmt2v96detail17precision_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit: ; preds = %bb.h
  %i.m = trunc i128 %i.k to i64
  br label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.j:                                             ; preds = %bb.a
  %i.n = load i128, ptr %0, align 16, !tbaa !16131
  %i.o = trunc i128 %i.n to i64
  br label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.316) #46
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.316) #46
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.316) #46
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.316) #46
  unreachable

bb.o:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.316) #46
  unreachable

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.316) #46
  unreachable

bb.q:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.316) #46
  unreachable

bb.r:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.316) #46
  unreachable

bb.s:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.316) #46
  unreachable

bb.t:                                             ; preds = %bb.a
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.316) #46
  unreachable

_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit: ; preds = %bb.e, %bb.d, %bb.g, %_ZN3fmt2v96detail17precision_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit, %bb.j
  %.0.i = phi i64 [ %i.j, %bb.g ], [ %i.m, %_ZN3fmt2v96detail17precision_checkerINS1_13error_handlerEEclInTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEyS7_.exit ], [ %i.h, %bb.e ], [ %i.g, %bb.d ], [ %i.o, %bb.j ] ; 2 uses
  %i.p = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.p, label %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread9, label %bb.u

_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread9: ; preds = %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.306) #46
  unreachable

bb.u:                                             ; preds = %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread, %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit
  %.0.i8 = phi i64 [ %i.e, %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit.thread ], [ %.0.i, %_ZN3fmt2v916visit_format_argINS0_6detail17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit ]
  %i.q = trunc nuw nsw i64 %.0.i8 to i32
  ret i32 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail5writeIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIS6_EE(ptr %0, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #2 comdat {
bb.a:
  %4 = alloca %class.anon.688, align 8            ; 5 uses
  %i.a = alloca [7 x i8], align 1                 ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.fmt::v9::detail::find_escape_result", align 8 ; 9 uses
  %6 = alloca %class.anon.685, align 8            ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16693 ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %_ZN3fmt2v96detail16code_point_indexENS0_17basic_string_viewIcEEm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64                ; 2 uses
  %i.g = icmp ugt i64 %2, %i.f
  br i1 %i.g, label %.lr.ph.i, label %_ZN3fmt2v96detail16code_point_indexENS0_17basic_string_viewIcEEm.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.0918.i = phi i64 [ %i.l, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %.01017.i = phi i64 [ %.1.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.0918.i
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16131
  %.not14.i = icmp slt i8 %i.i, -64
  br i1 %.not14.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = add i64 %.01017.i, 1                     ; 2 uses
  %i.k = icmp ugt i64 %i.j, %i.f
  br i1 %i.k, label %_ZN3fmt2v96detail16code_point_indexENS0_17basic_string_viewIcEEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.1.i = phi i64 [ %i.j, %bb.c ], [ %.01017.i, %.lr.ph.i ]
  %i.l = add nuw i64 %.0918.i, 1                  ; 2 uses
  %.not.i = icmp eq i64 %i.l, %2
  br i1 %.not.i, label %_ZN3fmt2v96detail16code_point_indexENS0_17basic_string_viewIcEEm.exit, label %.lr.ph.i, !llvm.loop !18191

_ZN3fmt2v96detail16code_point_indexENS0_17basic_string_viewIcEEm.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ %2, %bb.a ], [ %2, %bb.b ], [ %2, %bb.d ], [ %.0918.i, %bb.c ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i8, ptr %i.m, align 4, !tbaa !16709
  %i.o = icmp eq i8 %i.n, 18                      ; 2 uses
  %i.p = load i32, ptr %3, align 4, !tbaa !16712
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.p, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt2v96detail16code_point_indexENS0_17basic_string_viewIcEEm.exit
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = ptrtoint ptr %i.q to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.019.0.i = phi i64 [ 1, %bb.f ], [ %i.ab, %bb.h ] ; 2 uses
  %.0.i = phi ptr [ %1, %bb.f ], [ %i.aa, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #42
  store ptr %i.q, ptr %5, align 8, !tbaa !16736, !alias.scope !18197
  store ptr null, ptr %i.r, align 8, !tbaa !16737, !alias.scope !18197
  store i32 0, ptr %i.s, align 8, !tbaa !16738, !alias.scope !18197
  %i.u = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.v = sub i64 %i.t, %i.u
  call void @_ZN3fmt2v96detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %.0.i, i64 %i.v, ptr nonnull align 8 %5)
  %i.w = load ptr, ptr %5, align 8, !tbaa !16736  ; 2 uses
  %.not6.i.i = icmp eq ptr %.0.i, %i.w
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = sub i64 %.sroa.019.0.i, %i.u
  %i.z = add i64 %i.y, %i.x
  %.sroa.04.0.lcssa.i.i = select i1 %.not6.i.i, i64 %.sroa.019.0.i, i64 %i.z ; 2 uses
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !16737 ; 3 uses
  %.not.i22 = icmp eq ptr %i.aa, null
  br i1 %.not.i22, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  br label %_ZN3fmt2v96detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = call i64 @_ZN3fmt2v96detail16write_escaped_cpINS1_17counting_iteratorEcEET_S4_RKNS1_18find_escape_resultIT0_EE(i64 %.sroa.04.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(24) %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42
  %.not12.i = icmp eq ptr %i.aa, %i.q
  br i1 %.not12.i, label %_ZN3fmt2v96detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit, label %bb.g, !llvm.loop !18194

_ZN3fmt2v96detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit: ; preds = %bb.h, %.thread.i
  %.sroa.019.127.i = phi i64 [ %.sroa.04.0.lcssa.i.i, %.thread.i ], [ %i.ab, %bb.h ]
  %i.ac = add i64 %.sroa.019.127.i, 1
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #42
  store i64 0, ptr %i.b, align 8, !tbaa !15893
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #42
  store ptr %i.b, ptr %4, align 8, !tbaa !18198
  %i.ad = icmp ugt i64 %.0, 3
  br i1 %i.ad, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -3
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.028.i.i = phi ptr [ %1, %bb.j ], [ %i.ag, %bb.l ] ; 4 uses
  %.not36.i.i = icmp ult ptr %.028.i.i, %i.af
  br i1 %.not36.i.i, label %bb.l, label %.loopexit.i.i

bb.l:                                             ; preds = %bb.k
  %i.ag = call noundef ptr @_ZZN3fmt2v96detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.028.i.i, ptr noundef %.028.i.i) ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZN3fmt2v96detail13compute_widthENS0_17basic_string_viewIcEE.exit, label %bb.k, !llvm.loop !18195

.loopexit.i.i:                                    ; preds = %bb.k, %bb.i
  %.230.i.i = phi ptr [ %1, %bb.i ], [ %.028.i.i, %bb.k ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.0 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %.230.i.i to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %.not37.i.i = icmp eq ptr %i.ah, %.230.i.i
  br i1 %.not37.i.i, label %_ZN3fmt2v96detail13compute_widthENS0_17basic_string_viewIcEE.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.a, i8 0, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %.230.i.i, i64 %i.ak, i1 false)
  %i.al = ptrtoint ptr %i.a to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.331.i.i = phi ptr [ %.230.i.i, %bb.m ], [ %i.aq, %bb.o ] ; 2 uses
  %.0.i.i = phi ptr [ %i.a, %bb.m ], [ %i.am, %bb.o ] ; 2 uses
  %i.am = call noundef ptr @_ZZN3fmt2v96detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.0.i.i, ptr noundef %.331.i.i) ; 3 uses
  %.not38.not.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not38.not.not.i.i, label %.thread.sink.split.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = ptrtoint ptr %.0.i.i to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %.331.i.i, i64 %i.ap
  %i.ar = sub i64 %i.an, %i.al
  %i.as = icmp slt i64 %i.ar, %i.ak
  br i1 %i.as, label %bb.n, label %.thread.sink.split.i.i, !llvm.loop !18196

.thread.sink.split.i.i:                           ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  br label %_ZN3fmt2v96detail13compute_widthENS0_17basic_string_viewIcEE.exit

_ZN3fmt2v96detail13compute_widthENS0_17basic_string_viewIcEE.exit: ; preds = %bb.l, %.loopexit.i.i, %.thread.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42
  %i.at = load i64, ptr %i.b, align 8, !tbaa !15893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt2v96detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit, %_ZN3fmt2v96detail13compute_widthENS0_17basic_string_viewIcEE.exit, %_ZN3fmt2v96detail16code_point_indexENS0_17basic_string_viewIcEEm.exit
  %.019 = phi i64 [ %i.ac, %_ZN3fmt2v96detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit ], [ %i.at, %_ZN3fmt2v96detail13compute_widthENS0_17basic_string_viewIcEE.exit ], [ 0, %_ZN3fmt2v96detail16code_point_indexENS0_17basic_string_viewIcEEm.exit ]
  %i.au = zext i1 %i.o to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #42
  store i8 %i.au, ptr %6, align 8, !tbaa !16741
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.av, align 8, !tbaa !16698
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15893
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %i.aw, align 8, !tbaa !16742
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %.0, ptr %i.ax, align 8, !tbaa !16743
  %i.ay = call ptr @_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE1ENS0_8appenderEcZNS1_5writeIcS5_EET0_S7_NS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIS9_EEEUlS5_E_EES7_S7_RKNSB_IT1_EEmmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %.0, i64 noundef %.019, ptr noundef nonnull align 8 dereferenceable(40) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  ret ptr %i.ay
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE1ENS0_8appenderEcZNS1_5writeIcS5_EET0_S7_NS0_17basic_string_viewIT_EERKNS0_18basic_format_specsIS9_EEEUlS5_E_EES7_S7_RKNSB_IT1_EEmmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !16712
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %3) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.e = load i16, ptr %i.d, align 1
  %i.f = and i16 %i.e, 15
  %i.g = zext nneg i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @.str.319, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16131
  %i.j = sext i8 %i.i to i64
end_hunk_2
