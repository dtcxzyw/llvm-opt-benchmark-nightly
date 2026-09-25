Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/StripedEDFThreadPoolExecutor?download=true
inline.NumInlined: 1775
inline.NumDeleted: 1030
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5folly6detail8function5call_IKZNS_31StripedThrottledLifoSemBalancer9subscribeINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEEvRNS_23StripedThrottledLifoSemIT_EEEUlvE_Lb1ELb0ElJEEET2_DpT3_RNS1_4DataE:bb.a
_ZN5folly16ThrottledLifoSem8try_waitEv.exit.i.i:  ; preds = %.lr.ph.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 128 ; 3 uses
  %i.dg = load atomic i64, ptr %i.df monotonic, align 8 ; 5 uses
  %i.dh = and i64 %i.dg, 4294967295               ; 2 uses
  %i.di = lshr i64 %i.dg, 33
  %.not.i.i = icmp samesign ult i64 %i.dh, %i.di
  br i1 %.not.i.i, label %.lr.ph.i.preheader.i.i.i, label %_ZN5folly16ThrottledLifoSem8try_postEj.exit.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZN5folly16ThrottledLifoSem8try_waitEv.exit.i.i
  %i.dj = add nuw nsw i64 %i.dh, 1
  %i.dk = and i64 %i.dg, -4294967296
  %i.dl = add nuw nsw i64 %i.dj, %i.dk
  %i.dm = cmpxchg weak ptr %i.df, i64 %i.dg, i64 %i.dl seq_cst monotonic, align 8 ; 2 uses
  %i.dn = extractvalue { i64, i1 } %i.dm, 1
  br i1 %i.dn, label %.lr.ph.i._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i48.i.i:                                 ; preds = %.lr.ph.i.i.i
  %i.do = add nuw nsw i64 %i.dv, 1
  %i.dp = and i64 %i.du, -4294967296
  %i.dq = add nuw nsw i64 %i.do, %i.dp
  %i.dr = cmpxchg weak ptr %i.df, i64 %i.du, i64 %i.dq seq_cst monotonic, align 8 ; 2 uses
  %i.ds = extractvalue { i64, i1 } %i.dr, 1
  br i1 %i.ds, label %.lr.ph.i._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.preheader.i.i.i, %.lr.ph.i.i48.i.i
  %i.dt = phi { i64, i1 } [ %i.dr, %.lr.ph.i.i48.i.i ], [ %i.dm, %.lr.ph.i.preheader.i.i.i ]
  %i.du = extractvalue { i64, i1 } %i.dt, 0       ; 5 uses
  %i.dv = and i64 %i.du, 4294967295               ; 2 uses
  %i.dw = lshr i64 %i.du, 33
  %.not61.i.i = icmp samesign ult i64 %i.dv, %i.dw
  br i1 %.not61.i.i, label %.lr.ph.i.i48.i.i, label %_ZN5folly16ThrottledLifoSem8try_postEj.exit.i.i

.lr.ph.i._crit_edge.i.i.i:                        ; preds = %.lr.ph.i.i48.i.i, %.lr.ph.i.preheader.i.i.i
  %.02131.i.lcssa.i.i.i = phi i64 [ %i.dg, %.lr.ph.i.preheader.i.i.i ], [ %i.du, %.lr.ph.i.i48.i.i ]
  %i.dx = and i64 %.02131.i.lcssa.i.i.i, 4294967296
  %.not14.i.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not14.i.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i._crit_edge.i.i.i
  invoke void @_ZN5folly16ThrottledLifoSem21maybeStartWakingChainEv(ptr noundef nonnull align 64 dereferenceable(200) %i.cy)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i._crit_edge.i.i.i
  %i.dy = add i64 %.01169.i.i, 1
  br label %_ZN5folly16ThrottledLifoSem4postEj.exit.i.i

bb.ab:                                            ; preds = %bb.ac, %bb.z
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_ZN5folly16ThrottledLifoSem8try_postEj.exit.i.i:  ; preds = %.lr.ph.i.i.i, %_ZN5folly16ThrottledLifoSem8try_waitEv.exit.i.i
  %i.ea = load atomic i64, ptr %i.cz monotonic, align 8 ; 4 uses
  %i.eb = and i64 %i.ea, 4294967295
  %i.ec = call i64 @llvm.umin.i64(i64 %i.eb, i64 4294967294)
  %i.ed = and i64 %i.ea, -4294967296
  %.sroa.speculated20.i.i.i.i = or disjoint i64 %i.ed, 1
  %i.ee = add nuw nsw i64 %.sroa.speculated20.i.i.i.i, %i.ec
  %i.ef = cmpxchg weak ptr %i.cz, i64 %i.ea, i64 %i.ee seq_cst monotonic, align 8 ; 2 uses
  %i.eg = extractvalue { i64, i1 } %i.ef, 1
  br i1 %i.eg, label %._crit_edge.i.i.i.i, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i52.i.i

_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i52.i.i: ; preds = %_ZN5folly16ThrottledLifoSem8try_postEj.exit.i.i, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i52.i.i
  %i.eh = phi { i64, i1 } [ %i.en, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i52.i.i ], [ %i.ef, %_ZN5folly16ThrottledLifoSem8try_postEj.exit.i.i ]
  %i.ei = extractvalue { i64, i1 } %i.eh, 0       ; 4 uses
  %i.ej = and i64 %i.ei, 4294967295
  %i.ek = call i64 @llvm.umin.i64(i64 %i.ej, i64 4294967294)
  %i.el = and i64 %i.ei, -4294967296
  %.sroa.speculated.i.i.i.i = or disjoint i64 %i.el, 1
  %i.em = add nuw nsw i64 %.sroa.speculated.i.i.i.i, %i.ek
  %i.en = cmpxchg weak ptr %i.cz, i64 %i.ei, i64 %i.em seq_cst monotonic, align 8 ; 2 uses
  %i.eo = extractvalue { i64, i1 } %i.en, 1
  br i1 %i.eo, label %._crit_edge.i.i.i.i, label %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i52.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i52.i.i, %_ZN5folly16ThrottledLifoSem8try_postEj.exit.i.i
  %.0.lcssa19.i.i.i.i = phi i64 [ %i.ea, %_ZN5folly16ThrottledLifoSem8try_postEj.exit.i.i ], [ %i.ei, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i52.i.i ] ; 2 uses
  %.not.i.i53.i.i = icmp ugt i64 %.0.lcssa19.i.i.i.i, 8589934591
  %i.ep = and i64 %.0.lcssa19.i.i.i.i, 4294967296
  %.not10.i.i.i.i = icmp eq i64 %i.ep, 0
  %or.cond.i.i54.i.i = and i1 %.not.i.i53.i.i, %.not10.i.i.i.i
  br i1 %or.cond.i.i54.i.i, label %bb.ac, label %_ZN5folly16ThrottledLifoSem4postEj.exit.i.i

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN5folly16ThrottledLifoSem21maybeStartWakingChainEv(ptr noundef nonnull align 64 dereferenceable(200) %i.cr)
          to label %_ZN5folly16ThrottledLifoSem4postEj.exit.i.i unwind label %bb.ab

_ZN5folly16ThrottledLifoSem4postEj.exit.i.i:      ; preds = %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i, %bb.ac, %._crit_edge.i.i.i.i, %bb.aa, %bb.y
  %.1.i.i = phi i64 [ %i.dy, %bb.aa ], [ %.01169.i.i, %._crit_edge.i.i.i.i ], [ %.01169.i.i, %bb.ac ], [ %.01169.i.i, %bb.y ], [ %.01169.i.i, %_ZN5folly16ThrottledLifoSem8casStateERmm.exit.i.i.i.i ] ; 2 uses
  %i.eq = add nuw nsw i64 %.070.i.i, 1            ; 2 uses
  %i.er = load i64, ptr %3, align 8, !tbaa !1724  ; 2 uses
  %i.es = and i64 %i.er, 9223372036854775807
  %i.et = load i64, ptr %4, align 8, !tbaa !1724  ; 3 uses
  %i.eu = and i64 %i.et, 9223372036854775807
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.eu, i64 %i.es)
  %i.ev = icmp samesign ult i64 %i.eq, %.sroa.speculated.i.i
  br i1 %i.ev, label %bb.y, label %._crit_edge72.i.i, !llvm.loop !3641

bb.ad:                                            ; preds = %bb.ab, %bb.x, %bb.h
  %.pn22.i.i = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.ch, %bb.x ], [ %i.dz, %bb.ab ]
  call void @_ZN5folly12small_vectorISt4pairIlmELm64EvED2Ev(ptr noundef nonnull align 8 dead_on_return(1032) dereferenceable(1032) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @_ZN5folly12small_vectorISt4pairIlmELm64EvED2Ev(ptr noundef nonnull align 8 dead_on_return(1032) dereferenceable(1032) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn22.i.i

_ZZN5folly31StripedThrottledLifoSemBalancer9subscribeINS_12_GLOBAL__N_116EDFPriorityQueueINS_21CPUThreadPoolExecutor7CPUTaskEEEEEvRNS_23StripedThrottledLifoSemIT_EEENKUlvE_clEv.exit: ; preds = %_ZN5folly12small_vectorISt4pairIlmELm64EvED2Ev.exit.i.i, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret i64 %.011.lcssa.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @abort() #41
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.a
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly12small_vectorISt4pairIlmELm64EvED2Ev(ptr noundef nonnull align 8 dead_on_return(1032) dereferenceable(1032) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !1724
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i = icmp sgt i64 %i.a, -1
  %.not5.i.i = icmp eq ptr %i.c, null
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %or.cond.i, label %_ZN5folly12small_vectorISt4pairIlmELm64EvE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1730
  %i.f = shl i64 %i.e, 4
  %i.g = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly11canSdallocxEv.exit.i.i.i, label %.split.i.i.i, !prof !198

.split.i.i.i:                                     ; preds = %bb.b
  %i.h = icmp sgt i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

_ZN5folly11canSdallocxEv.exit.i.i.i:              ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #48
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i.i, %.split.i.i.i
  tail call void @sdallocx(ptr noundef nonnull %i.c, i64 noundef %i.f, i32 noundef 0) #34
  br label %_ZN5folly12small_vectorISt4pairIlmELm64EvE7destroyEv.exit

bb.d:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i.i, %.split.i.i.i
  tail call void @free(ptr noundef nonnull %i.c) #34
  br label %_ZN5folly12small_vectorISt4pairIlmELm64EvE7destroyEv.exit

_ZN5folly12small_vectorISt4pairIlmELm64EvE7destroyEv.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly12small_vectorISt4pairIlmELm64EvE16makeSizeInternalILb1ELb0EZNS3_12emplace_backIJRlRmEEERS2_DpOT_EUlPvE_EEvmOT1_m(ptr noundef nonnull align 8 dereferenceable(1032) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.14) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !1724
  %.not.i.i = icmp slt i64 %i.b, 0                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 3) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = select i1 %.not.i.i, i1 %i.f, i1 false
  br i1 %i.g, label %_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit.i, label %_ZNK5folly12small_vectorISt4pairIlmELm64EvE14computeNewSizeEv.exit, !prof !198

_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit.i: ; preds = %bb.c
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.15) #18
  unreachable

_ZNK5folly12small_vectorISt4pairIlmELm64EvE14computeNewSizeEv.exit: ; preds = %bb.c
  %i.h = extractvalue { i64, i1 } %i.e, 0
  %i.i = lshr i64 %i.h, 1
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 9223372036854775806)
  %i.k = add nuw nsw i64 %i.j, 1
  %.sroa.speculated.i = select i1 %.not.i.i, i64 %i.k, i64 97
  %.sroa.speculated27 = tail call i64 @llvm.umax.i64(i64 %1, i64 %.sroa.speculated.i) ; 5 uses
  %i.l = icmp samesign ugt i64 %.sroa.speculated27, 1152921504606846975
  br i1 %i.l, label %_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit, label %bb.d, !prof !198

_ZN5folly11checked_mulImQsr3stdE13is_unsigned_vIT_EEEbPS1_S1_S1_.exit: ; preds = %_ZNK5folly12small_vectorISt4pairIlmELm64EvE14computeNewSizeEv.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.15) #18
  unreachable

bb.d:                                             ; preds = %_ZNK5folly12small_vectorISt4pairIlmELm64EvE14computeNewSizeEv.exit
  %i.m = shl nuw i64 %.sroa.speculated27, 4       ; 3 uses
  %i.n = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %.split.i, !prof !198

.split.i:                                         ; preds = %bb.d
  %i.o = icmp sgt i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.d
  %i.p = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #48
  br i1 %i.p, label %bb.e, label %_ZN5folly14goodMallocSizeEm.exit

bb.e:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %.split.i
  %i.q = tail call i64 @nallocx(i64 noundef %i.m, i32 noundef 0) #34 ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  %4 = lshr i64 %i.q, 4
  %i.r = select i1 %.not.i, i64 %.sroa.speculated27, i64 %4 ; 2 uses
  %.pre = shl nuw i64 %i.r, 4
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %.split.i, %_ZN5folly10canNallocxEv.exit.i, %bb.e
  %.pre-phi = phi i64 [ %i.m, %.split.i ], [ %i.m, %_ZN5folly10canNallocxEv.exit.i ], [ %.pre, %bb.e ]
  %.0.i12 = phi i64 [ %.sroa.speculated27, %.split.i ], [ %.sroa.speculated27, %_ZN5folly10canNallocxEv.exit.i ], [ %i.r, %bb.e ]
  %i.s = tail call noalias ptr @malloc(i64 noundef %.pre-phi) #49 ; 8 uses
  %.not.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i14, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #18
  unreachable

bb.g:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  %i.t = load i64, ptr %0, align 8, !tbaa !1724   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 4 uses
  %.not1.i.i = icmp slt i64 %i.t, 0
  %i.w = select i1 %.not1.i.i, ptr %i.v, ptr %i.u ; 5 uses
  %i.x = and i64 %i.t, 9223372036854775807        ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %3 ; 3 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !3647, !nonnull !184, !align !1722
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3648, !nonnull !184, !align !1722
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !1669
  store i64 %i.ad, ptr %i.z, align 8, !tbaa !1726
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !1669
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !1727
  %.not.i16 = icmp eq ptr %i.w, null
  %.not8.i.i = icmp eq i64 %3, 0
  %or.cond46 = or i1 %.not.i16, %.not8.i.i
  br i1 %or.cond46, label %_ZN5folly6detail18IntegralSizePolicyImLb1ELb0EE19moveToUninitializedISt4pairIlmEQntsr6detail19small_vector_detailE21should_trivially_copyITL0__EEEvPT_S8_S8_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ag = add i64 %3, 1152921504606846975
  %i.ah = and i64 %i.ag, 1152921504606846975      ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %xtraiter = and i64 %i.ai, 3                    ; 3 uses
  %i.aj = icmp samesign ult i64 %i.ah, 3
  br i1 %i.aj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.ai, 2305843009213693948
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.010.i.i = phi ptr [ %i.w, %.lr.ph.i.i.preheader.new ], [ %i.au, %.lr.ph.i.i ] ; 5 uses
  %.079.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.av, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.079.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %.010.i.i, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.079.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 32
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.079.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 48
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.079.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 64 ; 2 uses
  %i.av = add nuw nsw i64 %.079.i.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5folly6detail18IntegralSizePolicyImLb1ELb0EE19moveToUninitializedISt4pairIlmEQntsr6detail19small_vector_detailE21should_trivially_copyITL0__EEEvPT_S8_S8_.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !3644

_ZN5folly6detail18IntegralSizePolicyImLb1ELb0EE19moveToUninitializedISt4pairIlmEQntsr6detail19small_vector_detailE21should_trivially_copyITL0__EEEvPT_S8_S8_.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly6detail18IntegralSizePolicyImLb1ELb0EE19moveToUninitializedISt4pairIlmEQntsr6detail19small_vector_detailE21should_trivially_copyITL0__EEEvPT_S8_S8_.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN5folly6detail18IntegralSizePolicyImLb1ELb0EE19moveToUninitializedISt4pairIlmEQntsr6detail19small_vector_detailE21should_trivially_copyITL0__EEEvPT_S8_S8_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.010.i.i.epil.init = phi ptr [ %i.w, %.lr.ph.i.i.preheader ], [ %i.au, %_ZN5folly6detail18IntegralSizePolicyImLb1ELb0EE19moveToUninitializedISt4pairIlmEQntsr6detail19small_vector_detailE21should_trivially_copyITL0__EEEvPT_S8_S8_.exit.i.loopexit.unr-lcssa ]
  %.079.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.av, %_ZN5folly6detail18IntegralSizePolicyImLb1ELb0EE19moveToUninitializedISt4pairIlmEQntsr6detail19small_vector_detailE21should_trivially_copyITL0__EEEvPT_S8_S8_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod44 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.010.i.i.epil = phi ptr [ %i.ax, %.lr.ph.i.i.epil ], [ %.010.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.079.i.i.epil = phi i64 [ %i.ay, %.lr.ph.i.i.epil ], [ %.079.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.079.i.i.epil
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %.010.i.i.epil, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.epil, i64 16
  %i.ay = add nuw nsw i64 %.079.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5folly6detail18IntegralSizePolicyImLb1ELb0EE19moveToUninitializedISt4pairIlmEQntsr6detail19small_vector_detailE21should_trivially_copyITL0__EEEvPT_S8_S8_.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !3645

_ZN5folly6detail18IntegralSizePolicyImLb1ELb0EE19moveToUninitializedISt4pairIlmEQntsr6detail19small_vector_detailE21should_trivially_copyITL0__EEEvPT_S8_S8_.exit.i: ; preds = %_ZN5folly6detail18IntegralSizePolicyImLb1ELb0EE19moveToUninitializedISt4pairIlmEQntsr6detail19small_vector_detailE21should_trivially_copyITL0__EEEvPT_S8_S8_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g
  %i.az = icmp samesign ult i64 %3, %i.x
  br i1 %i.az, label %bb.h, label %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt4pairIlmELm64EvE16makeSizeInternalILb1ELb0EZNS5_12emplace_backIJRlRmEEERS4_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit

bb.h:                                             ; preds = %_ZN5folly6detail18IntegralSizePolicyImLb1ELb0EE19moveToUninitializedISt4pairIlmEQntsr6detail19small_vector_detailE21should_trivially_copyITL0__EEEvPT_S8_S8_.exit.i
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %.lr.ph.i12.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %bb.h
  %.010.i13.i = phi ptr [ %i.bd, %.lr.ph.i12.i ], [ %i.ba, %bb.h ] ; 2 uses
  %.079.i14.i = phi i64 [ %i.be, %.lr.ph.i12.i ], [ 0, %bb.h ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.079.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %.010.i13.i, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.010.i13.i, i64 16 ; 2 uses
  %i.be = add nuw nsw i64 %.079.i14.i, 1
  %.not.i15.i = icmp eq ptr %i.bd, %i.y
  br i1 %.not.i15.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt4pairIlmELm64EvE16makeSizeInternalILb1ELb0EZNS5_12emplace_backIJRlRmEEERS4_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit, label %.lr.ph.i12.i, !llvm.loop !3644

_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt4pairIlmELm64EvE16makeSizeInternalILb1ELb0EZNS5_12emplace_backIJRlRmEEERS4_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit: ; preds = %.lr.ph.i12.i, %_ZN5folly6detail18IntegralSizePolicyImLb1ELb0EE19moveToUninitializedISt4pairIlmEQntsr6detail19small_vector_detailE21should_trivially_copyITL0__EEEvPT_S8_S8_.exit.i
  %.not.i20 = icmp sgt i64 %i.t, -1
  %.not5.i = icmp eq ptr %i.v, null
  %or.cond = select i1 %.not.i20, i1 true, i1 %.not5.i
  br i1 %or.cond, label %_ZN5folly12small_vectorISt4pairIlmELm64EvE8freeHeapEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt4pairIlmELm64EvE16makeSizeInternalILb1ELb0EZNS5_12emplace_backIJRlRmEEERS4_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !1730
  %i.bg = shl i64 %i.bf, 4
  %i.bh = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly11canSdallocxEv.exit.i.i, label %.split.i.i, !prof !198

.split.i.i:                                       ; preds = %bb.i
  %i.bi = icmp sgt i8 %i.bh, 0
  br i1 %i.bi, label %bb.j, label %bb.k

_ZN5folly11canSdallocxEv.exit.i.i:                ; preds = %bb.i
  %i.bj = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #48
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i, %.split.i.i
  tail call void @sdallocx(ptr noundef nonnull %i.v, i64 noundef %i.bg, i32 noundef 0) #34
  br label %_ZN5folly12small_vectorISt4pairIlmELm64EvE8freeHeapEv.exit

bb.k:                                             ; preds = %_ZN5folly11canSdallocxEv.exit.i.i, %.split.i.i
  tail call void @free(ptr noundef nonnull %i.v) #34
  br label %_ZN5folly12small_vectorISt4pairIlmELm64EvE8freeHeapEv.exit

_ZN5folly12small_vectorISt4pairIlmELm64EvE8freeHeapEv.exit: ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_12small_vectorISt4pairIlmELm64EvE16makeSizeInternalILb1ELb0EZNS5_12emplace_backIJRlRmEEERS4_DpOT_EUlPvE_EEvmOT1_mEUlvE_Lb1EED2Ev.exit, %bb.j, %bb.k
  store ptr %i.s, ptr %i.u, align 8, !tbaa !196
  %i.bk = load i64, ptr %0, align 8
  %storemerge.i21 = or i64 %i.bk, -9223372036854775808
  store i64 %storemerge.i21, ptr %0, align 8, !tbaa !1724
  store i64 %.0.i12, ptr %i.c, align 8, !tbaa !1730
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef %0) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::length_error", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #18
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 2 uses
  tail call void @_ZNSt12length_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #34
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #45
  unreachable
}

declare void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12length_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #34
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !119
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nounwind
declare extern_weak i64 @nallocx(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.anon.132, align 1            ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !1731

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv) #34
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #34
  %i.d = invoke noundef zeroext i1 @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvENKUlvE_clEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv, align 1, !tbaa !1710
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load i8, ptr @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv, align 1, !tbaa !1710, !range !1665, !noundef !184
  %i.g = trunc nuw i8 %i.f to i1
  ret i1 %i.g

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #41
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #31

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvENKUlvE_clEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #24 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.a, 0
  br i1 %.not.i.i.i, label %_ZN5folly13usingJEMallocEv.exit.i, label %.split.i, !prof !198

.split.i:                                         ; preds = %bb.a
  %i.b = icmp sgt i8 %i.a, 0
  br i1 %i.b, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.b

_ZN5folly13usingJEMallocEv.exit.i:                ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() #48
  br i1 %i.c, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN5folly13usingJEMallocEv.exit.i, %.split.i
  %i.d = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i1.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i1.i, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit, label %.split, !prof !198

.split:                                           ; preds = %bb.b
  %i.e = icmp sgt i8 %i.d, 0
  br i1 %i.e, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.c

_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit: ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() #48
  br i1 %i.f, label %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread, label %bb.c

_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread: ; preds = %.split.i, %_ZN5folly13usingJEMallocEv.exit.i, %.split, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit
  br label %bb.c

bb.c:                                             ; preds = %.split, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread
  %i.g = phi i1 [ true, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread ], [ false, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit ], [ false, %.split ]
  %i.h = phi i8 [ 1, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit.thread ], [ -1, %_ZZN5folly6detail23usingJEMallocOrTCMallocEvENK11InitializerclEv.exit ], [ -1, %.split ]
  store atomic i8 %i.h, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E release, align 1
  ret i1 %i.g
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #31

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEv() local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingJEMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !1731

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #34
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #34
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !1710
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !1710, !range !1665, !noundef !184
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingJEMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEv() local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.folly::detail::UsingTCMallocInitializer", align 1 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !1731

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #34
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #34
  %i.d = call noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  %i.e = select i1 %i.d, i8 1, i8 -1
  store atomic i8 %i.e, ptr @_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E release, align 1
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !1710
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv, align 1, !tbaa !1710, !range !1665, !noundef !184
  %i.h = trunc nuw i8 %i.g to i1
  ret i1 %i.h
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly6detail24UsingTCMallocInitializerclEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
end_hunk_0
