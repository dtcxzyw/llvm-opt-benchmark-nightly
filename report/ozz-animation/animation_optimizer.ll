Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/animation_optimizer?download=true
inline.NumInlined: 1140
inline.NumDeleted: 646
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK3ozz9animation7offline18AnimationOptimizerclERKNS1_12RawAnimationERKNS0_8SkeletonEPS3_:bb.a
  %i.ku = and i64 %i.kf, -9223372036854775745
  %i.kv = icmp ugt i64 %i.ku, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.kv, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.kt, i64 %storemerge.idx.i.i.i.i.i.i
  %i.kw = trunc i64 %i.kf to i32
  %i.kx = and i32 %i.kw, 63
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.gn, align 8, !noalias !132
  store i32 %i.kx, ptr %i.go, align 8, !noalias !132
  %.not.i5.i.i = icmp eq ptr %i.kn, null
  br i1 %.not.i5.i.i, label %_ZNSt6vectorIbN3ozz12StdAllocatorIbEEEC2EmRKbRKS2_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIbN3ozz12StdAllocatorIbEEE13_M_initializeEm.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %i.kq, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.kn, i8 0, i64 %.idx.i.i, i1 false), !noalias !132
  br label %_ZNSt6vectorIbN3ozz12StdAllocatorIbEEEC2EmRKbRKS2_.exit.i

_ZNSt6vectorIbN3ozz12StdAllocatorIbEEEC2EmRKbRKS2_.exit.i: ; preds = %bb.ai, %_ZNSt6vectorIbN3ozz12StdAllocatorIbEEE13_M_initializeEm.exit.i.i, %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_allocate_nodeEv.exit.i.i.i
  %i.ky = phi ptr [ %i.kn, %bb.ai ], [ null, %_ZNSt6vectorIbN3ozz12StdAllocatorIbEEE13_M_initializeEm.exit.i.i ], [ null, %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_allocate_nodeEv.exit.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14, !noalias !132
  %i.kz = load ptr, ptr %i.ix, align 8, !tbaa !32, !noalias !132
  %i.la = load ptr, ptr %i.ii, align 8, !tbaa !33, !noalias !132
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = sub i64 %i.lb, %i.lc
  %i.le = ashr exact i64 %i.ld, 4
  %i.lf = add nsw i64 %i.le, -1
  store i64 0, ptr %18, align 8, !tbaa !136, !noalias !132
  store i64 %i.lf, ptr %i.gq, align 8, !tbaa !137, !noalias !132
  %i.lg = load ptr, ptr %i.gi, align 8, !tbaa !50, !noalias !132 ; 2 uses
  %i.lh = load ptr, ptr %i.gl, align 8, !tbaa !138, !noalias !132
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 -16
  %.not.i.i.i.i75 = icmp eq ptr %i.lg, %i.li
  br i1 %.not.i.i.i.i75, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIbN3ozz12StdAllocatorIbEEEC2EmRKbRKS2_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !noalias !132
  %i.lj = load ptr, ptr %i.gi, align 8, !tbaa !50, !noalias !132
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16 ; 2 uses
  store ptr %i.lk, ptr %i.gi, align 8, !tbaa !50, !noalias !132
  br label %bb.al

bb.ak:                                            ; preds = %_ZNSt6vectorIbN3ozz12StdAllocatorIbEEEC2EmRKbRKS2_.exit.i
  invoke void @_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %._crit_edge51.i unwind label %bb.aq, !noalias !132

._crit_edge51.i:                                  ; preds = %bb.ak
  %.pre.i = load ptr, ptr %i.gi, align 8, !tbaa !57, !noalias !132
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge51.i, %bb.aj
  %i.ll = phi ptr [ %.pre.i, %._crit_edge51.i ], [ %i.lk, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14, !noalias !132
  %i.lm = load i64, ptr %i.ky, align 8, !tbaa !139, !noalias !132
  %i.ln = or i64 %i.lm, 1
  store i64 %i.ln, ptr %i.ky, align 8, !tbaa !139, !noalias !132
  %i.lo = load ptr, ptr %i.ix, align 8, !tbaa !32, !noalias !132 ; 2 uses
  %i.lp = load ptr, ptr %i.ii, align 8, !tbaa !33, !noalias !132 ; 2 uses
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = sub i64 %i.lq, %i.lr
  %i.lt = ashr exact i64 %i.ls, 4
  %i.lu = add nsw i64 %i.lt, -1                   ; 3 uses
  %i.lv = sdiv i64 %i.lu, 64
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.lv
  %i.lx = and i64 %i.lu, -9223372036854775745
  %i.ly = icmp ugt i64 %i.lx, -9223372036854775808
  %storemerge.idx.i.i.i.i.i73.i = select i1 %i.ly, i64 -8, i64 0
  %storemerge.i.i.i.i.i74.i = getelementptr inbounds i8, ptr %i.lw, i64 %storemerge.idx.i.i.i.i.i73.i ; 2 uses
  %i.lz = and i64 %i.lu, 63
  %i.ma = shl nuw i64 1, %i.lz
  %i.mb = load i64, ptr %storemerge.i.i.i.i.i74.i, align 8, !tbaa !139, !noalias !132
  %i.mc = or i64 %i.ma, %i.mb
  store i64 %i.mc, ptr %storemerge.i.i.i.i.i74.i, align 8, !tbaa !139, !noalias !132
  %i.md = load ptr, ptr %i.gd, align 8, !tbaa !57, !noalias !132
  %i.me = icmp eq ptr %i.ll, %i.md
  br i1 %i.me, label %.preheader.i, label %.lr.ph42.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.thread.i
  %.pre52.i = load ptr, ptr %i.ix, align 8, !tbaa !32, !noalias !132
  %.pre53.i = load ptr, ptr %i.ii, align 8, !tbaa !33, !noalias !132
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.al
  %i.mf = phi ptr [ %.pre53.i, %.preheader.loopexit.i ], [ %i.lp, %bb.al ] ; 2 uses
  %i.mg = phi ptr [ %.pre52.i, %.preheader.loopexit.i ], [ %i.lo, %bb.al ]
  %.not49.i = icmp eq ptr %i.mg, %i.mf
  br i1 %.not49.i, label %._crit_edge45.i, label %.lr.ph44.i

.lr.ph42.i:                                       ; preds = %bb.al, %._crit_edge.thread.i
  %i.mh = phi ptr [ %i.pd, %._crit_edge.thread.i ], [ %i.ll, %bb.al ] ; 3 uses
  %i.mi = load ptr, ptr %i.gk, align 8, !tbaa !48, !noalias !140 ; 2 uses
  %i.mj = icmp eq ptr %i.mh, %i.mi
  br i1 %i.mj, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph42.i
  %i.mk = getelementptr inbounds i8, ptr %i.mh, i64 -16 ; 2 uses
  %.sroa.011.0.copyload.i = load i64, ptr %i.mk, align 8, !noalias !132
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.mh, i64 -8
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !132
  br label %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE3popEv.exit.i

bb.an:                                            ; preds = %.lr.ph42.i
  %i.ml = load ptr, ptr %i.gj, align 8, !tbaa !47, !noalias !140
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 -8
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !46, !noalias !132 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 496
  %.sroa.011.0.copyload27.i = load i64, ptr %i.mo, align 8, !noalias !132
  %.sroa.9.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.mn, i64 504
  %.sroa.9.0.copyload29.i = load i64, ptr %.sroa.9.0..sroa_idx28.i, align 8, !noalias !132
  %i.mp = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ao unwind label %bb.ap, !noalias !132 ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !18, !noalias !132
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.ms = load ptr, ptr %i.mr, align 8, !noalias !132
  invoke void %i.ms(ptr noundef nonnull align 8 dereferenceable(8) %i.mp, ptr noundef %i.mi)
          to label %_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE15_M_pop_back_auxEv.exit.i.i.i unwind label %bb.ap, !noalias !132

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.mt = landingpad { ptr, i32 }
          catch ptr null
  %i.mu = extractvalue { ptr, i32 } %i.mt, 0
  call void @__clang_call_terminate(ptr %i.mu) #15, !noalias !132
  unreachable

_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE15_M_pop_back_auxEv.exit.i.i.i: ; preds = %bb.ao
  %i.mv = load ptr, ptr %i.gj, align 8, !tbaa !58, !noalias !132
  %i.mw = getelementptr inbounds i8, ptr %i.mv, i64 -8 ; 2 uses
  store ptr %i.mw, ptr %i.gj, align 8, !tbaa !47, !noalias !132
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !46, !noalias !132 ; 3 uses
  store ptr %i.mx, ptr %i.gk, align 8, !tbaa !48, !noalias !132
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 512
  store ptr %i.my, ptr %i.gl, align 8, !tbaa !49, !noalias !132
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 496
  br label %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE3popEv.exit.i

_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE3popEv.exit.i: ; preds = %_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE15_M_pop_back_auxEv.exit.i.i.i, %bb.am
  %.sroa.9.0.copyload32.i = phi i64 [ %.sroa.9.0.copyload.i, %bb.am ], [ %.sroa.9.0.copyload29.i, %_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE15_M_pop_back_auxEv.exit.i.i.i ] ; 5 uses
  %.sroa.011.0.copyload30.i = phi i64 [ %.sroa.011.0.copyload.i, %bb.am ], [ %.sroa.011.0.copyload27.i, %_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE15_M_pop_back_auxEv.exit.i.i.i ] ; 6 uses
  %storemerge.i.i.i = phi ptr [ %i.mk, %bb.am ], [ %i.mz, %_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE15_M_pop_back_auxEv.exit.i.i.i ]
  store ptr %storemerge.i.i.i, ptr %i.gi, align 8, !tbaa !50, !noalias !132
  %i.na = load ptr, ptr %i.ii, align 8, !tbaa !33, !noalias !132 ; 2 uses
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %i.na, i64 %.sroa.011.0.copyload30.i ; 2 uses
  %i.nc = getelementptr inbounds nuw [16 x i8], ptr %i.na, i64 %.sroa.9.0.copyload32.i ; 2 uses
  %.04937.i = add i64 %.sroa.011.0.copyload30.i, 1 ; 2 uses
  %i.nd = icmp ult i64 %.04937.i, %.sroa.9.0.copyload32.i
  br i1 %i.nd, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE3popEv.exit.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ak
  %i.ng = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14, !noalias !132
  br label %.loopexit.split-lp.i

bb.ar:                                            ; preds = %bb.as, %.lr.ph.i
  %.04940.i = phi i64 [ %.04937.i, %.lr.ph.i ], [ %.049.i, %bb.as ] ; 3 uses
  %.05039.i = phi float [ -1.000000e+00, %.lr.ph.i ], [ %.151.i, %bb.as ] ; 2 uses
  %.038.i = phi i64 [ %.sroa.011.0.copyload30.i, %.lr.ph.i ], [ %.1.i, %bb.as ]
  %i.nh = load ptr, ptr %i.ii, align 8, !tbaa !33, !noalias !132
  %i.ni = getelementptr inbounds nuw [16 x i8], ptr %i.nh, i64 %.04940.i ; 4 uses
  %.val.i = load float, ptr %i.ni, align 4, !tbaa !142, !noalias !132 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.nj = load float, ptr %i.nb, align 4, !tbaa !142, !noalias !132 ; 2 uses
  %i.nk = fsub float %.val.i, %i.nj
  %i.nl = load float, ptr %i.nc, align 4, !tbaa !142, !noalias !132
  %i.nm = fsub float %i.nl, %i.nj
  %i.nn = fdiv float %i.nk, %i.nm
  store float %.val.i, ptr %15, align 8, !tbaa !142, !noalias !132
  %i.no = invoke { <2 x float>, float } @_ZN3ozz9animation7offline15LerpTranslationERKNS_4math6Float3ES5_f(ptr noundef nonnull align 4 dereferenceable(12) %i.ne, ptr noundef nonnull align 4 dereferenceable(12) %i.nf, float noundef %i.nn)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !132 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %.fca.0.extract.i.i = extractvalue { <2 x float>, float } %i.no, 0
  %.fca.1.extract.i.i = extractvalue { <2 x float>, float } %i.no, 1
  store <2 x float> %.fca.0.extract.i.i, ptr %.4..4..4..4..4..4..4..4..sroa_idx, align 4, !noalias !132
  store float %.fca.1.extract.i.i, ptr %.12..12..12..12..12..12..12..12..sroa_idx, align 4, !noalias !132
  %.0..0..0..0..0..0..0..0..fca.0.load.i.i = load <2 x float>, ptr %15, align 8, !noalias !132
  %.8..8..8..8..8..8..8..8..fca.1.load.i.i = load <2 x float>, ptr %.8..8..8..8..8..8..8..8..fca.1.gep.sroa_idx, align 8, !noalias !132 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.np = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %.sroa.04.4.vec.extract.i = extractelement <2 x float> %.0..0..0..0..0..0..0..0..fca.0.load.i.i, i64 1
  %i.nq = load float, ptr %i.np, align 4, !tbaa !130, !noalias !132
  %i.nr = fsub float %.sroa.04.4.vec.extract.i, %i.nq ; 2 uses
  %.sroa.55.8.vec.extract.i = extractelement <2 x float> %.8..8..8..8..8..8..8..8..fca.1.load.i.i, i64 0
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !131, !noalias !132
  %i.nu = fsub float %.sroa.55.8.vec.extract.i, %i.nt ; 2 uses
  %.sroa.55.12.vec.extract.i = extractelement <2 x float> %.8..8..8..8..8..8..8..8..fca.1.load.i.i, i64 1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ni, i64 12
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !120, !noalias !132
  %i.nx = fsub float %.sroa.55.12.vec.extract.i, %i.nw ; 2 uses
  %i.ny = fmul float %i.nu, %i.nu
  %i.nz = call float @llvm.fmuladd.f32(float %i.nr, float %i.nr, float %i.ny)
  %i.oa = call float @llvm.fmuladd.f32(float %i.nx, float %i.nx, float %i.nz)
  %i.ob = call float @llvm.sqrt.f32(float %i.oa)
  %i.oc = fmul float %i.iu, %i.ob                 ; 3 uses
  %i.od = fcmp ogt float %i.oc, %i.iw
  %i.oe = fcmp ogt float %i.oc, %.05039.i
  %or.cond.i = select i1 %i.od, i1 %i.oe, i1 false ; 2 uses
  %.1.i = select i1 %or.cond.i, i64 %.04940.i, i64 %.038.i ; 9 uses
  %.151.i = select i1 %or.cond.i, float %i.oc, float %.05039.i
  %.049.i = add nuw i64 %.04940.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %.049.i, %.sroa.9.0.copyload32.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ar, !llvm.loop !89

._crit_edge.i:                                    ; preds = %bb.as
  %.not.i = icmp eq i64 %.1.i, %.sroa.011.0.copyload30.i
  br i1 %.not.i, label %._crit_edge.thread.i, label %bb.at

bb.at:                                            ; preds = %._crit_edge.i
  %i.of = sdiv i64 %.1.i, 64
  %i.og = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.of
  %i.oh = and i64 %.1.i, -9223372036854775745
  %i.oi = icmp ugt i64 %i.oh, -9223372036854775808
  %storemerge.idx.i.i.i.i.i79.i = select i1 %i.oi, i64 -8, i64 0
  %storemerge.i.i.i.i.i80.i = getelementptr inbounds i8, ptr %i.og, i64 %storemerge.idx.i.i.i.i.i79.i ; 2 uses
  %i.oj = and i64 %.1.i, 63
  %i.ok = shl nuw i64 1, %i.oj
  %i.ol = load i64, ptr %storemerge.i.i.i.i.i80.i, align 8, !tbaa !139, !noalias !132
  %i.om = or i64 %i.ol, %i.ok
  store i64 %i.om, ptr %storemerge.i.i.i.i.i80.i, align 8, !tbaa !139, !noalias !132
  %i.on = sub i64 %.1.i, %.sroa.011.0.copyload30.i
  %i.oo = icmp ugt i64 %i.on, 1
  br i1 %i.oo, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14, !noalias !132
  store i64 %.sroa.011.0.copyload30.i, ptr %19, align 8, !tbaa !136, !noalias !132
  store i64 %.1.i, ptr %i.gr, align 8, !tbaa !137, !noalias !132
  %i.op = load ptr, ptr %i.gi, align 8, !tbaa !50, !noalias !132 ; 2 uses
  %i.oq = load ptr, ptr %i.gl, align 8, !tbaa !138, !noalias !132
  %i.or = getelementptr inbounds i8, ptr %i.oq, i64 -16
  %.not.i.i.i83.i = icmp eq ptr %i.op, %i.or
  br i1 %.not.i.i.i83.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.op, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !noalias !132
  %i.os = load ptr, ptr %i.gi, align 8, !tbaa !50, !noalias !132
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  store ptr %i.ot, ptr %i.gi, align 8, !tbaa !50, !noalias !132
  br label %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE4pushEOS1_.exit85.i

bb.aw:                                            ; preds = %bb.au
  invoke void @_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE4pushEOS1_.exit85.i unwind label %bb.ax, !noalias !132

_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE4pushEOS1_.exit85.i: ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14, !noalias !132
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ou = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14, !noalias !132
  br label %.loopexit.split-lp.i

bb.ay:                                            ; preds = %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE4pushEOS1_.exit85.i, %bb.at
  %i.ov = sub i64 %.sroa.9.0.copyload32.i, %.1.i
  %i.ow = icmp ugt i64 %i.ov, 1
  br i1 %i.ow, label %bb.az, label %._crit_edge.thread.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14, !noalias !132
  store i64 %.1.i, ptr %20, align 8, !tbaa !136, !noalias !132
  store i64 %.sroa.9.0.copyload32.i, ptr %i.gs, align 8, !tbaa !137, !noalias !132
  %i.ox = load ptr, ptr %i.gi, align 8, !tbaa !50, !noalias !132 ; 2 uses
  %i.oy = load ptr, ptr %i.gl, align 8, !tbaa !138, !noalias !132
  %i.oz = getelementptr inbounds i8, ptr %i.oy, i64 -16
  %.not.i.i.i86.i = icmp eq ptr %i.ox, %i.oz
  br i1 %.not.i.i.i86.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ox, ptr noundef nonnull align 8 dereferenceable(16) %20, i64 16, i1 false), !noalias !132
  %i.pa = load ptr, ptr %i.gi, align 8, !tbaa !50, !noalias !132
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  store ptr %i.pb, ptr %i.gi, align 8, !tbaa !50, !noalias !132
  br label %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE4pushEOS1_.exit88.i

bb.bb:                                            ; preds = %bb.az
  invoke void @_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE4pushEOS1_.exit88.i unwind label %bb.bc, !noalias !132

_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE4pushEOS1_.exit88.i: ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14, !noalias !132
  br label %._crit_edge.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.pc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14, !noalias !132
  br label %.loopexit.split-lp.i

._crit_edge.thread.i:                             ; preds = %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE4pushEOS1_.exit88.i, %bb.ay, %._crit_edge.i, %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE3popEv.exit.i
  %i.pd = load ptr, ptr %i.gi, align 8, !tbaa !57, !noalias !132 ; 2 uses
  %i.pe = load ptr, ptr %i.gd, align 8, !tbaa !57, !noalias !132
  %i.pf = icmp eq ptr %i.pd, %i.pe
  br i1 %i.pf, label %.preheader.loopexit.i, label %.lr.ph42.i, !llvm.loop !90

._crit_edge45.loopexit.i:                         ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i
  %.pre54.i = load ptr, ptr %17, align 8, !tbaa !53, !noalias !132
  br label %._crit_edge45.i

._crit_edge45.i:                                  ; preds = %._crit_edge45.loopexit.i, %.preheader.i
  %i.pg = phi ptr [ %.pre54.i, %._crit_edge45.loopexit.i ], [ %i.ky, %.preheader.i ] ; 2 uses
  %.not.i.i89.i = icmp eq ptr %i.pg, null
  br i1 %.not.i.i89.i, label %_ZNSt13_Bvector_baseIN3ozz12StdAllocatorIbEEED2Ev.exit.i, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge45.i
  %i.ph = load ptr, ptr %i.gp, align 8, !tbaa !56, !noalias !132 ; 2 uses
  %i.pi = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.be unwind label %bb.bf     ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = ptrtoint ptr %i.pg to i64
  %i.pl = sub i64 %i.pj, %i.pk
  %i.pm = ashr exact i64 %i.pl, 3
  %i.pn = sub nsw i64 0, %i.pm
  %i.po = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %i.pn
  %i.pp = load ptr, ptr %i.pi, align 8, !tbaa !18
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 24
  %i.pr = load ptr, ptr %i.pq, align 8
  invoke void %i.pr(ptr noundef nonnull align 8 dereferenceable(8) %i.pi, ptr noundef %i.po)
          to label %_ZNSt13_Bvector_baseIN3ozz12StdAllocatorIbEEED2Ev.exit.i unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ps = landingpad { ptr, i32 }
          catch ptr null
  %i.pt = extractvalue { ptr, i32 } %i.ps, 0
  call void @__clang_call_terminate(ptr %i.pt) #15
  unreachable

_ZNSt13_Bvector_baseIN3ozz12StdAllocatorIbEEED2Ev.exit.i: ; preds = %bb.be, %._crit_edge45.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14, !noalias !132
  %i.pu = load ptr, ptr %16, align 8, !tbaa !45, !noalias !132 ; 2 uses
  %.not.i.i.i90.i = icmp eq ptr %i.pu, null
  br i1 %.not.i.i.i90.i, label %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEED2Ev.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt13_Bvector_baseIN3ozz12StdAllocatorIbEEED2Ev.exit.i
  %i.pv = load ptr, ptr %i.gf, align 8, !tbaa !59, !noalias !132 ; 2 uses
  %i.pw = load ptr, ptr %i.gj, align 8, !tbaa !58, !noalias !132 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.py = icmp ult ptr %i.pv, %i.px
  br i1 %i.py, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bg, %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE18_M_deallocate_nodeEPS1_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.qg, %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE18_M_deallocate_nodeEPS1_.exit.i.i.i.i.i ], [ %i.pv, %bb.bg ] ; 3 uses
  %i.pz = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !46
  %i.qa = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.bh unwind label %bb.bi     ; 2 uses

bb.bh:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !18
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  %i.qd = load ptr, ptr %i.qc, align 8
  invoke void %i.qd(ptr noundef nonnull align 8 dereferenceable(8) %i.qa, ptr noundef %i.pz)
          to label %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE18_M_deallocate_nodeEPS1_.exit.i.i.i.i.i unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.lr.ph.i.i.i.i.i
  %i.qe = landingpad { ptr, i32 }
          catch ptr null
  %i.qf = extractvalue { ptr, i32 } %i.qe, 0
  call void @__clang_call_terminate(ptr %i.qf) #15
  unreachable

_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE18_M_deallocate_nodeEPS1_.exit.i.i.i.i.i: ; preds = %bb.bh
  %i.qg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.qh = icmp ult ptr %.06.i.i.i.i.i, %i.pw
  br i1 %i.qh, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.loopexit.i.i.i.i, !llvm.loop !1

_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.loopexit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE18_M_deallocate_nodeEPS1_.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %16, align 8, !tbaa !45, !noalias !132
  br label %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.i.i.i.i

_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.loopexit.i.i.i.i, %bb.bg
  %i.qi = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.loopexit.i.i.i.i ], [ %i.pu, %bb.bg ]
  %i.qj = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.bj unwind label %bb.bk     ; 2 uses

bb.bj:                                            ; preds = %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.i.i.i.i
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !18
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 24
  %i.qm = load ptr, ptr %i.ql, align 8
  invoke void %i.qm(ptr noundef nonnull align 8 dereferenceable(8) %i.qj, ptr noundef %i.qi)
          to label %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEED2Ev.exit.i unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.i.i.i.i
  %i.qn = landingpad { ptr, i32 }
          catch ptr null
  %i.qo = extractvalue { ptr, i32 } %i.qn, 0
  call void @__clang_call_terminate(ptr %i.qo) #15
  unreachable

_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEED2Ev.exit.i: ; preds = %bb.bj, %_ZNSt13_Bvector_baseIN3ozz12StdAllocatorIbEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14, !noalias !132
  br label %bb.bo

.lr.ph44.i:                                       ; preds = %.preheader.i, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i
  %i.qp = phi ptr [ %i.rg, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ], [ %i.mf, %.preheader.i ]
  %.04543.i = phi i64 [ %i.re, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ], [ 0, %.preheader.i ] ; 5 uses
  %i.qq = load ptr, ptr %17, align 8, !tbaa !53, !noalias !132
  %i.qr = sdiv i64 %.04543.i, 64
  %i.qs = getelementptr inbounds [8 x i8], ptr %i.qq, i64 %i.qr
  %i.qt = and i64 %.04543.i, -9223372036854775745
  %i.qu = icmp ugt i64 %i.qt, -9223372036854775808
  %storemerge.idx.i.i.i.i.i91.i = select i1 %i.qu, i64 -8, i64 0
  %storemerge.i.i.i.i.i92.i = getelementptr inbounds i8, ptr %i.qs, i64 %storemerge.idx.i.i.i.i.i91.i
  %i.qv = and i64 %.04543.i, 63
  %i.qw = shl nuw i64 1, %i.qv
  %i.qx = load i64, ptr %storemerge.i.i.i.i.i92.i, align 8, !tbaa !139
  %i.qy = and i64 %i.qx, %i.qw
  %.not35.i = icmp eq i64 %i.qy, 0
  br i1 %.not35.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph44.i
  %i.qz = getelementptr inbounds nuw [16 x i8], ptr %i.qp, i64 %.04543.i ; 2 uses
  %i.ra = load ptr, ptr %i.gt, align 8, !tbaa !32, !alias.scope !132 ; 3 uses
  %i.rb = load ptr, ptr %i.gu, align 8, !tbaa !60, !alias.scope !132
  %.not.i.i76 = icmp eq ptr %i.ra, %i.rb
  br i1 %.not.i.i76, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ra, ptr noundef nonnull align 4 dereferenceable(16) %i.qz, i64 16, i1 false), !tbaa.struct !61
  %i.rc = load ptr, ptr %i.gt, align 8, !tbaa !32, !alias.scope !132
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  store ptr %i.rd, ptr %i.gt, align 8, !tbaa !32, !alias.scope !132
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i

bb.bn:                                            ; preds = %bb.bl
  invoke void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr %i.ra, ptr noundef nonnull align 4 dereferenceable(16) %i.qz)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %bb.bn
  %lpad.loopexit.split-lp374 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i: ; preds = %bb.bn, %bb.bm, %.lr.ph44.i
  %i.re = add nuw i64 %.04543.i, 1                ; 2 uses
  %i.rf = load ptr, ptr %i.ix, align 8, !tbaa !32, !noalias !132
  %i.rg = load ptr, ptr %i.ii, align 8, !tbaa !33, !noalias !132 ; 2 uses
  %i.rh = ptrtoint ptr %i.rf to i64
  %i.ri = ptrtoint ptr %i.rg to i64
  %i.rj = sub i64 %i.rh, %i.ri
  %i.rk = ashr exact i64 %i.rj, 4
  %i.rl = icmp ult i64 %i.re, %i.rk
  br i1 %i.rl, label %.lr.ph44.i, label %._crit_edge45.loopexit.i, !llvm.loop !91

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bc, %bb.ax, %bb.aq
  %.pn62.pn.i = phi { ptr, i32 } [ %i.pc, %bb.bc ], [ %i.ng, %bb.aq ], [ %i.ou, %bb.ax ], [ %lpad.loopexit.split-lp374, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt13_Bvector_baseIN3ozz12StdAllocatorIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14, !noalias !132
  call void @_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14, !noalias !132
  br label %.body

bb.bo:                                            ; preds = %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEED2Ev.exit.i, %bb.z
  %i.rm = load ptr, ptr %22, align 8, !tbaa !62, !alias.scope !132 ; 5 uses
  %.promoted.i = load ptr, ptr %i.gt, align 8, !tbaa !62, !alias.scope !132 ; 3 uses
  %i.rn = icmp eq ptr %i.rm, %.promoted.i
  br i1 %i.rn, label %_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_115PositionAdapterEEET_RKSB_RKT0_f.exit, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.bo
  %i.ro = ptrtoint ptr %i.rm to i64
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bt, %.lr.ph47.i
  %i.rp = phi ptr [ %.promoted.i, %.lr.ph47.i ], [ %i.rt, %bb.bt ] ; 6 uses
  %i.rq = ptrtoint ptr %i.rp to i64
  %i.rr = sub i64 %i.rq, %i.ro                    ; 2 uses
  %i.rs = icmp eq i64 %i.rr, 16
  %i.rt = getelementptr inbounds i8, ptr %i.rp, i64 -16 ; 4 uses
  br i1 %i.rs, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ru = getelementptr i8, ptr %i.rm, i64 %i.rr  ; 2 uses
  %i.rv = getelementptr i8, ptr %i.ru, i64 -28
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.rv, align 4, !tbaa !29
  %.sroa.8.0..sroa_idx.i = getelementptr i8, ptr %i.ru, i64 -20
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !29
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.sroa.8.0.i = phi float [ %.sroa.8.0.copyload.i, %bb.bq ], [ 0.000000e+00, %bb.bp ]
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.0.copyload.i, %bb.bq ], [ zeroinitializer, %bb.bp ] ; 2 uses
  %i.rw = getelementptr inbounds i8, ptr %i.rp, i64 -12
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !130
  %i.ry = fsub float %.sroa.0.0.vec.extract.i, %i.rx ; 2 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.i, i64 1
  %i.rz = getelementptr inbounds i8, ptr %i.rp, i64 -8
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !131
  %i.sb = fsub float %.sroa.0.4.vec.extract.i, %i.sa ; 2 uses
  %i.sc = getelementptr inbounds i8, ptr %i.rp, i64 -4
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !120
  %i.se = fsub float %.sroa.8.0.i, %i.sd          ; 2 uses
  %i.sf = fmul float %i.sb, %i.sb
  %i.sg = call float @llvm.fmuladd.f32(float %i.ry, float %i.ry, float %i.sf)
  %i.sh = call float @llvm.fmuladd.f32(float %i.se, float %i.se, float %i.sg)
  %i.si = call float @llvm.sqrt.f32(float %i.sh)
  %i.sj = fmul float %i.iu, %i.si
  %i.sk = fcmp ogt float %i.sj, %i.iw
  br i1 %i.sk, label %_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_115PositionAdapterEEET_RKSB_RKT0_f.exit, label %bb.bt

bb.bs:                                            ; preds = %bb.z
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bt:                                            ; preds = %bb.br
  store ptr %i.rt, ptr %i.gt, align 8, !tbaa !32, !alias.scope !132
  %i.sm = icmp eq ptr %i.rm, %i.rt
  br i1 %i.sm, label %_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_115PositionAdapterEEET_RKSB_RKT0_f.exit, label %bb.bp

.body:                                            ; preds = %bb.bs, %.loopexit.split-lp.i
  %.pn67.pn.i = phi { ptr, i32 } [ %.pn62.pn.i, %.loopexit.split-lp.i ], [ %i.sl, %bb.bs ]
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  br label %bb.gg

_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_115PositionAdapterEEET_RKSB_RKT0_f.exit: ; preds = %bb.bt, %bb.br, %bb.bo
  %i.sn = phi ptr [ %.promoted.i, %bb.bo ], [ %i.rt, %bb.bt ], [ %i.rp, %bb.br ]
  %i.so = load ptr, ptr %i.ik, align 8, !tbaa !33 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store ptr %i.rm, ptr %i.ik, align 8, !tbaa !33
  store ptr %i.sn, ptr %i.sp, align 8, !tbaa !32
  %i.sr = load ptr, ptr %i.gu, align 8, !tbaa !60
  store ptr %i.sr, ptr %i.sq, align 8, !tbaa !60
  %.not.i.i.i.i.i77 = icmp eq ptr %i.so, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i77, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_115PositionAdapterEEET_RKSB_RKT0_f.exit
  %i.ss = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.bv unwind label %bb.bw     ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !18
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  %i.sv = load ptr, ptr %i.su, align 8
  invoke void %i.sv(ptr noundef nonnull align 8 dereferenceable(8) %i.ss, ptr noundef nonnull %i.so)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEEaSEOS7_.exit unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.sw = landingpad { ptr, i32 }
          catch ptr null
  %i.sx = extractvalue { ptr, i32 } %i.sw, 0
  call void @__clang_call_terminate(ptr %i.sx) #15
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEEaSEOS7_.exit: ; preds = %bb.bv
  %.pr = load ptr, ptr %22, align 8, !tbaa !33    ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEEaSEOS7_.exit
  %i.sy = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.by unwind label %bb.bz     ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !18
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 24
  %i.tb = load ptr, ptr %i.ta, align 8
  invoke void %i.tb(ptr noundef nonnull align 8 dereferenceable(8) %i.sy, ptr noundef nonnull %.pr)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.tc = landingpad { ptr, i32 }
          catch ptr null
  %i.td = extractvalue { ptr, i32 } %i.tc, 0
  call void @__clang_call_terminate(ptr %i.td) #15
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit: ; preds = %_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_115PositionAdapterEEET_RKSB_RKT0_f.exit, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEEaSEOS7_.exit, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #14
  %i.te = getelementptr inbounds nuw i8, ptr %i.ii, i64 24 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false), !alias.scope !143
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ii, i64 32 ; 6 uses
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !65, !noalias !143
  %i.th = load ptr, ptr %i.te, align 8, !tbaa !66, !noalias !143
  %i.ti = ptrtoint ptr %i.tg to i64
  %i.tj = ptrtoint ptr %i.th to i64
  %i.tk = sub i64 %i.ti, %i.tj
  %i.tl = sdiv exact i64 %i.tk, 20
  %i.tm = icmp ult i64 %i.tl, 2
  br i1 %i.tm, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit
  %i.tn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %i.te)
          to label %bb.dp unwind label %bb.dt     ; 0 uses

bb.cb:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14, !noalias !143
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gv, i8 0, i64 64, i1 false), !noalias !143
  store i64 8, ptr %i.gw, align 8, !tbaa !44, !noalias !143
  %i.to = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.cc unwind label %bb.cd, !noalias !143 ; 2 uses

bb.cc:                                            ; preds = %bb.cb
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !18, !noalias !143
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %i.tr = load ptr, ptr %i.tq, align 8, !noalias !143
  %i.ts = invoke noundef ptr %i.tr(ptr noundef nonnull align 8 dereferenceable(8) %i.to, i64 noundef 64, i64 noundef 8)
          to label %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE15_M_allocate_mapEm.exit.i.i79 unwind label %bb.cd, !noalias !143 ; 2 uses

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.tt = landingpad { ptr, i32 }
          catch ptr null
  %i.tu = extractvalue { ptr, i32 } %i.tt, 0
  call void @__clang_call_terminate(ptr %i.tu) #15, !noalias !143
  unreachable

_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE15_M_allocate_mapEm.exit.i.i79: ; preds = %bb.cc
  store ptr %i.ts, ptr %10, align 8, !tbaa !45, !noalias !143
  %i.tv = load i64, ptr %i.gw, align 8, !tbaa !44, !noalias !143
  %i.tw = add i64 %i.tv, -1
  %i.tx = lshr i64 %i.tw, 1
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.tx ; 4 uses
  %i.tz = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ce unwind label %bb.cf, !noalias !143 ; 2 uses

bb.ce:                                            ; preds = %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE15_M_allocate_mapEm.exit.i.i79
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !18, !noalias !143
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  %i.uc = load ptr, ptr %i.ub, align 8, !noalias !143
  %i.ud = invoke noundef ptr %i.uc(ptr noundef nonnull align 8 dereferenceable(8) %i.tz, i64 noundef 512, i64 noundef 8)
          to label %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_allocate_nodeEv.exit.i.i.i80 unwind label %bb.cf, !noalias !143 ; 4 uses

bb.cf:                                            ; preds = %bb.ce, %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE15_M_allocate_mapEm.exit.i.i79
  %i.ue = landingpad { ptr, i32 }
          catch ptr null
  %i.uf = extractvalue { ptr, i32 } %i.ue, 0
  call void @__clang_call_terminate(ptr %i.uf) #15, !noalias !143
  unreachable

_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_allocate_nodeEv.exit.i.i.i80: ; preds = %bb.ce
  store ptr %i.ud, ptr %i.ty, align 8, !tbaa !46, !noalias !143
  store ptr %i.ty, ptr %i.gx, align 8, !tbaa !47, !noalias !143
  store ptr %i.ud, ptr %i.gy, align 8, !tbaa !48, !noalias !143
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 512
  store ptr %i.ug, ptr %i.gz, align 8, !tbaa !49, !noalias !143
  store ptr %i.ty, ptr %i.hb, align 8, !tbaa !47, !noalias !143
  %i.uh = load ptr, ptr %i.ty, align 8, !tbaa !46, !noalias !143 ; 3 uses
  store ptr %i.uh, ptr %i.hc, align 8, !tbaa !48, !noalias !143
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 512
  store ptr %i.ui, ptr %i.hd, align 8, !tbaa !49, !noalias !143
  store ptr %i.ud, ptr %i.gv, align 8, !tbaa !133, !noalias !143
  store ptr %i.uh, ptr %i.ha, align 8, !tbaa !50, !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14, !noalias !143
  %i.uj = load ptr, ptr %i.tf, align 8, !tbaa !65, !noalias !143 ; 2 uses
  %i.uk = load ptr, ptr %i.te, align 8, !tbaa !66, !noalias !143 ; 2 uses
  %i.ul = ptrtoint ptr %i.uj to i64
  %i.um = ptrtoint ptr %i.uk to i64
  %i.un = sub i64 %i.ul, %i.um                    ; 2 uses
  %i.uo = sdiv exact i64 %i.un, 20                ; 3 uses
  store ptr null, ptr %11, align 8, !tbaa !53, !noalias !143
  store i32 0, ptr %i.he, align 8, !tbaa !134, !noalias !143
  store ptr null, ptr %i.hf, align 8, !tbaa !53, !noalias !143
  store i32 0, ptr %i.hg, align 8, !tbaa !134, !noalias !143
  store ptr null, ptr %i.hh, align 8, !tbaa !56, !noalias !143
  %.not.i.i.i81 = icmp eq ptr %i.uj, %i.uk
  br i1 %.not.i.i.i81, label %_ZNSt6vectorIbN3ozz12StdAllocatorIbEEEC2EmRKbRKS2_.exit.i87, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_allocate_nodeEv.exit.i.i.i80
  %i.up = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ch unwind label %bb.ci, !noalias !143 ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %i.uq = add nsw i64 %i.uo, 63                   ; 2 uses
  %i.ur = lshr i64 %i.uq, 3
  %i.us = and i64 %i.ur, 2305843009213693944
  %i.ut = load ptr, ptr %i.up, align 8, !tbaa !18, !noalias !143
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.uv = load ptr, ptr %i.uu, align 8, !noalias !143
  %i.uw = invoke noundef ptr %i.uv(ptr noundef nonnull align 8 dereferenceable(8) %i.up, i64 noundef %i.us, i64 noundef 8)
          to label %_ZNSt6vectorIbN3ozz12StdAllocatorIbEEE13_M_initializeEm.exit.i.i82 unwind label %bb.ci, !noalias !143 ; 6 uses

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ux = landingpad { ptr, i32 }
          catch ptr null
  %i.uy = extractvalue { ptr, i32 } %i.ux, 0
  call void @__clang_call_terminate(ptr %i.uy) #15, !noalias !143
  unreachable

_ZNSt6vectorIbN3ozz12StdAllocatorIbEEE13_M_initializeEm.exit.i.i82: ; preds = %bb.ch
  %i.uz = lshr i64 %i.uq, 6                       ; 2 uses
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %i.uz
  store ptr %i.va, ptr %i.hh, align 8, !tbaa !56, !noalias !143
  store ptr %i.uw, ptr %11, align 8, !noalias !143
  store i32 0, ptr %i.he, align 8, !noalias !143
  %i.vb = sdiv i64 %i.un, 1280
  %i.vc = getelementptr inbounds [8 x i8], ptr %i.uw, i64 %i.vb
  %i.vd = and i64 %i.uo, -9223372036854775745
  %i.ve = icmp ugt i64 %i.vd, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i83 = select i1 %i.ve, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i84 = getelementptr inbounds i8, ptr %i.vc, i64 %storemerge.idx.i.i.i.i.i.i83
  %i.vf = trunc i64 %i.uo to i32
end_hunk_0
begin_hunk_1_@_ZNK3ozz9animation7offline18AnimationOptimizerclERKNS1_12RawAnimationERKNS0_8SkeletonEPS3_:bb.a
  %i.afy = and i64 %i.afj, -9223372036854775745
  %i.afz = icmp ugt i64 %i.afy, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i147 = select i1 %i.afz, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i148 = getelementptr inbounds i8, ptr %i.afx, i64 %storemerge.idx.i.i.i.i.i.i147
  %i.aga = trunc i64 %i.afj to i32
  %i.agb = and i32 %i.aga, 63
  store ptr %storemerge.i.i.i.i.i.i148, ptr %i.hx, align 8, !noalias !153
  store i32 %i.agb, ptr %i.hy, align 8, !noalias !153
  %.not.i5.i.i149 = icmp eq ptr %i.afr, null
  br i1 %.not.i5.i.i149, label %_ZNSt6vectorIbN3ozz12StdAllocatorIbEEEC2EmRKbRKS2_.exit.i151, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt6vectorIbN3ozz12StdAllocatorIbEEE13_M_initializeEm.exit.i.i146
  %.idx.i.i150 = shl nuw nsw i64 %i.afu, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.afr, i8 0, i64 %.idx.i.i150, i1 false), !noalias !153
  br label %_ZNSt6vectorIbN3ozz12StdAllocatorIbEEEC2EmRKbRKS2_.exit.i151

_ZNSt6vectorIbN3ozz12StdAllocatorIbEEEC2EmRKbRKS2_.exit.i151: ; preds = %bb.ek, %_ZNSt6vectorIbN3ozz12StdAllocatorIbEEE13_M_initializeEm.exit.i.i146, %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_allocate_nodeEv.exit.i.i.i144
  %i.agc = phi ptr [ %i.afr, %bb.ek ], [ null, %_ZNSt6vectorIbN3ozz12StdAllocatorIbEEE13_M_initializeEm.exit.i.i146 ], [ null, %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_allocate_nodeEv.exit.i.i.i144 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14, !noalias !153
  %i.agd = load ptr, ptr %i.aeb, align 8, !tbaa !26, !noalias !153
  %i.age = load ptr, ptr %i.aea, align 8, !tbaa !27, !noalias !153
  %i.agf = ptrtoint ptr %i.agd to i64
  %i.agg = ptrtoint ptr %i.age to i64
  %i.agh = sub i64 %i.agf, %i.agg
  %i.agi = ashr exact i64 %i.agh, 4
  %i.agj = add nsw i64 %i.agi, -1
  store i64 0, ptr %7, align 8, !tbaa !136, !noalias !153
  store i64 %i.agj, ptr %i.ia, align 8, !tbaa !137, !noalias !153
  %i.agk = load ptr, ptr %i.hs, align 8, !tbaa !50, !noalias !153 ; 2 uses
  %i.agl = load ptr, ptr %i.hv, align 8, !tbaa !138, !noalias !153
  %i.agm = getelementptr inbounds i8, ptr %i.agl, i64 -16
  %.not.i.i.i.i152 = icmp eq ptr %i.agk, %i.agm
  br i1 %.not.i.i.i.i152, label %bb.em, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorIbN3ozz12StdAllocatorIbEEEC2EmRKbRKS2_.exit.i151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agk, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !noalias !153
  %i.agn = load ptr, ptr %i.hs, align 8, !tbaa !50, !noalias !153
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 16 ; 2 uses
  store ptr %i.ago, ptr %i.hs, align 8, !tbaa !50, !noalias !153
  br label %bb.en

bb.em:                                            ; preds = %_ZNSt6vectorIbN3ozz12StdAllocatorIbEEEC2EmRKbRKS2_.exit.i151
  invoke void @_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %._crit_edge51.i235 unwind label %bb.es, !noalias !153

._crit_edge51.i235:                               ; preds = %bb.em
  %.pre.i236 = load ptr, ptr %i.hs, align 8, !tbaa !57, !noalias !153
  br label %bb.en

bb.en:                                            ; preds = %._crit_edge51.i235, %bb.el
  %i.agp = phi ptr [ %.pre.i236, %._crit_edge51.i235 ], [ %i.ago, %bb.el ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14, !noalias !153
  %i.agq = load i64, ptr %i.agc, align 8, !tbaa !139, !noalias !153
  %i.agr = or i64 %i.agq, 1
  store i64 %i.agr, ptr %i.agc, align 8, !tbaa !139, !noalias !153
  %i.ags = load ptr, ptr %i.aeb, align 8, !tbaa !26, !noalias !153 ; 2 uses
  %i.agt = load ptr, ptr %i.aea, align 8, !tbaa !27, !noalias !153 ; 2 uses
  %i.agu = ptrtoint ptr %i.ags to i64
  %i.agv = ptrtoint ptr %i.agt to i64
  %i.agw = sub i64 %i.agu, %i.agv
  %i.agx = ashr exact i64 %i.agw, 4
  %i.agy = add nsw i64 %i.agx, -1                 ; 3 uses
  %i.agz = sdiv i64 %i.agy, 64
  %i.aha = getelementptr inbounds [8 x i8], ptr %i.agc, i64 %i.agz
  %i.ahb = and i64 %i.agy, -9223372036854775745
  %i.ahc = icmp ugt i64 %i.ahb, -9223372036854775808
  %storemerge.idx.i.i.i.i.i73.i153 = select i1 %i.ahc, i64 -8, i64 0
  %storemerge.i.i.i.i.i74.i154 = getelementptr inbounds i8, ptr %i.aha, i64 %storemerge.idx.i.i.i.i.i73.i153 ; 2 uses
  %i.ahd = and i64 %i.agy, 63
  %i.ahe = shl nuw i64 1, %i.ahd
  %i.ahf = load i64, ptr %storemerge.i.i.i.i.i74.i154, align 8, !tbaa !139, !noalias !153
  %i.ahg = or i64 %i.ahe, %i.ahf
  store i64 %i.ahg, ptr %storemerge.i.i.i.i.i74.i154, align 8, !tbaa !139, !noalias !153
  %i.ahh = load ptr, ptr %i.hn, align 8, !tbaa !57, !noalias !153
  %i.ahi = icmp eq ptr %i.agp, %i.ahh
  br i1 %i.ahi, label %.preheader.i171, label %.lr.ph42.i155

.preheader.loopexit.i168:                         ; preds = %._crit_edge.thread.i167
  %.pre52.i169 = load ptr, ptr %i.aeb, align 8, !tbaa !26, !noalias !153
  %.pre53.i170 = load ptr, ptr %i.aea, align 8, !tbaa !27, !noalias !153
  br label %.preheader.i171

.preheader.i171:                                  ; preds = %.preheader.loopexit.i168, %bb.en
  %i.ahj = phi ptr [ %.pre53.i170, %.preheader.loopexit.i168 ], [ %i.agt, %bb.en ] ; 2 uses
  %i.ahk = phi ptr [ %.pre52.i169, %.preheader.loopexit.i168 ], [ %i.ags, %bb.en ]
  %.not49.i172 = icmp eq ptr %i.ahk, %i.ahj
  br i1 %.not49.i172, label %._crit_edge45.i181, label %.lr.ph44.i173

.lr.ph42.i155:                                    ; preds = %bb.en, %._crit_edge.thread.i167
  %i.ahl = phi ptr [ %i.akh, %._crit_edge.thread.i167 ], [ %i.agp, %bb.en ] ; 3 uses
  %i.ahm = load ptr, ptr %i.hu, align 8, !tbaa !48, !noalias !154 ; 2 uses
  %i.ahn = icmp eq ptr %i.ahl, %i.ahm
  br i1 %i.ahn, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %.lr.ph42.i155
  %i.aho = getelementptr inbounds i8, ptr %i.ahl, i64 -16 ; 2 uses
  %.sroa.011.0.copyload.i159 = load i64, ptr %i.aho, align 8, !noalias !153
  %.sroa.9.0..sroa_idx.i160 = getelementptr inbounds i8, ptr %i.ahl, i64 -8
  %.sroa.9.0.copyload.i161 = load i64, ptr %.sroa.9.0..sroa_idx.i160, align 8, !noalias !153
  br label %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE3popEv.exit.i162

bb.ep:                                            ; preds = %.lr.ph42.i155
  %i.ahp = load ptr, ptr %i.ht, align 8, !tbaa !47, !noalias !154
  %i.ahq = getelementptr inbounds i8, ptr %i.ahp, i64 -8
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !46, !noalias !153 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 496
  %.sroa.011.0.copyload27.i231 = load i64, ptr %i.ahs, align 8, !noalias !153
  %.sroa.9.0..sroa_idx28.i232 = getelementptr inbounds nuw i8, ptr %i.ahr, i64 504
  %.sroa.9.0.copyload29.i233 = load i64, ptr %.sroa.9.0..sroa_idx28.i232, align 8, !noalias !153
  %i.aht = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.eq unwind label %bb.er, !noalias !153 ; 2 uses

bb.eq:                                            ; preds = %bb.ep
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !18, !noalias !153
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 24
  %i.ahw = load ptr, ptr %i.ahv, align 8, !noalias !153
  invoke void %i.ahw(ptr noundef nonnull align 8 dereferenceable(8) %i.aht, ptr noundef %i.ahm)
          to label %_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE15_M_pop_back_auxEv.exit.i.i.i234 unwind label %bb.er, !noalias !153

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.ahx = landingpad { ptr, i32 }
          catch ptr null
  %i.ahy = extractvalue { ptr, i32 } %i.ahx, 0
  call void @__clang_call_terminate(ptr %i.ahy) #15, !noalias !153
  unreachable

_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE15_M_pop_back_auxEv.exit.i.i.i234: ; preds = %bb.eq
  %i.ahz = load ptr, ptr %i.ht, align 8, !tbaa !58, !noalias !153
  %i.aia = getelementptr inbounds i8, ptr %i.ahz, i64 -8 ; 2 uses
  store ptr %i.aia, ptr %i.ht, align 8, !tbaa !47, !noalias !153
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !46, !noalias !153 ; 3 uses
  store ptr %i.aib, ptr %i.hu, align 8, !tbaa !48, !noalias !153
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 512
  store ptr %i.aic, ptr %i.hv, align 8, !tbaa !49, !noalias !153
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aib, i64 496
  br label %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE3popEv.exit.i162

_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE3popEv.exit.i162: ; preds = %_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE15_M_pop_back_auxEv.exit.i.i.i234, %bb.eo
  %.sroa.9.0.copyload32.i163 = phi i64 [ %.sroa.9.0.copyload.i161, %bb.eo ], [ %.sroa.9.0.copyload29.i233, %_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE15_M_pop_back_auxEv.exit.i.i.i234 ] ; 5 uses
  %.sroa.011.0.copyload30.i164 = phi i64 [ %.sroa.011.0.copyload.i159, %bb.eo ], [ %.sroa.011.0.copyload27.i231, %_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE15_M_pop_back_auxEv.exit.i.i.i234 ] ; 6 uses
  %storemerge.i.i.i165 = phi ptr [ %i.aho, %bb.eo ], [ %i.aid, %_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE15_M_pop_back_auxEv.exit.i.i.i234 ]
  store ptr %storemerge.i.i.i165, ptr %i.hs, align 8, !tbaa !50, !noalias !153
  %i.aie = load ptr, ptr %i.aea, align 8, !tbaa !27, !noalias !153 ; 2 uses
  %i.aif = getelementptr inbounds nuw [16 x i8], ptr %i.aie, i64 %.sroa.011.0.copyload30.i164 ; 2 uses
  %i.aig = getelementptr inbounds nuw [16 x i8], ptr %i.aie, i64 %.sroa.9.0.copyload32.i163 ; 2 uses
  %.04937.i166 = add i64 %.sroa.011.0.copyload30.i164, 1 ; 2 uses
  %i.aih = icmp ult i64 %.04937.i166, %.sroa.9.0.copyload32.i163
  br i1 %i.aih, label %.lr.ph.i206, label %._crit_edge.thread.i167

.lr.ph.i206:                                      ; preds = %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE3popEv.exit.i162
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aif, i64 4
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aig, i64 4
  br label %bb.et

bb.es:                                            ; preds = %bb.em
  %i.aik = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14, !noalias !153
  br label %.loopexit.split-lp.i203

bb.et:                                            ; preds = %bb.eu, %.lr.ph.i206
  %.04940.i207 = phi i64 [ %.04937.i166, %.lr.ph.i206 ], [ %.049.i221, %bb.eu ] ; 3 uses
  %.05039.i208 = phi float [ -1.000000e+00, %.lr.ph.i206 ], [ %.151.i220, %bb.eu ] ; 2 uses
  %.038.i209 = phi i64 [ %.sroa.011.0.copyload30.i164, %.lr.ph.i206 ], [ %.1.i219, %bb.eu ]
  %i.ail = load ptr, ptr %i.aea, align 8, !tbaa !27, !noalias !153
  %i.aim = getelementptr inbounds nuw [16 x i8], ptr %i.ail, i64 %.04940.i207 ; 4 uses
  %.val.i210 = load float, ptr %i.aim, align 4, !tbaa !156, !noalias !153 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ain = load float, ptr %i.aif, align 4, !tbaa !156, !noalias !153 ; 2 uses
  %i.aio = fsub float %.val.i210, %i.ain
  %i.aip = load float, ptr %i.aig, align 4, !tbaa !156, !noalias !153
  %i.aiq = fsub float %i.aip, %i.ain
  %i.air = fdiv float %i.aio, %i.aiq
  store float %.val.i210, ptr %4, align 8, !tbaa !156, !noalias !153
  %i.ais = invoke { <2 x float>, float } @_ZN3ozz9animation7offline9LerpScaleERKNS_4math6Float3ES5_f(ptr noundef nonnull align 4 dereferenceable(12) %i.aii, ptr noundef nonnull align 4 dereferenceable(12) %i.aij, float noundef %i.air)
          to label %bb.eu unwind label %.loopexit.split-lp.loopexit.split-lp.i201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !153 ; 2 uses

bb.eu:                                            ; preds = %bb.et
  %.fca.0.extract.i.i211 = extractvalue { <2 x float>, float } %i.ais, 0
  %.fca.1.extract.i.i212 = extractvalue { <2 x float>, float } %i.ais, 1
  store <2 x float> %.fca.0.extract.i.i211, ptr %.4..4..4..4..4..4..4..4..sroa_idx381, align 4, !noalias !153
  store float %.fca.1.extract.i.i212, ptr %.12..12..12..12..12..12..12..12..sroa_idx383, align 4, !noalias !153
  %.0..0..0..0..0..0..0..0..fca.0.load.i.i213 = load <2 x float>, ptr %4, align 8, !noalias !153
  %.8..8..8..8..8..8..8..8..fca.1.load.i.i214 = load <2 x float>, ptr %.8..8..8..8..8..8..8..8..fca.1.gep.sroa_idx382, align 8, !noalias !153 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aim, i64 4
  %.sroa.04.4.vec.extract.i215 = extractelement <2 x float> %.0..0..0..0..0..0..0..0..fca.0.load.i.i213, i64 1
  %i.aiu = load float, ptr %i.ait, align 4, !tbaa !130, !noalias !153
  %i.aiv = fsub float %.sroa.04.4.vec.extract.i215, %i.aiu ; 2 uses
  %.sroa.55.8.vec.extract.i216 = extractelement <2 x float> %.8..8..8..8..8..8..8..8..fca.1.load.i.i214, i64 0
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aim, i64 8
  %i.aix = load float, ptr %i.aiw, align 4, !tbaa !131, !noalias !153
  %i.aiy = fsub float %.sroa.55.8.vec.extract.i216, %i.aix ; 2 uses
  %.sroa.55.12.vec.extract.i217 = extractelement <2 x float> %.8..8..8..8..8..8..8..8..fca.1.load.i.i214, i64 1
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aim, i64 12
  %i.aja = load float, ptr %i.aiz, align 4, !tbaa !120, !noalias !153
  %i.ajb = fsub float %.sroa.55.12.vec.extract.i217, %i.aja ; 2 uses
  %i.ajc = fmul float %i.aiy, %i.aiy
  %i.ajd = call float @llvm.fmuladd.f32(float %i.aiv, float %i.aiv, float %i.ajc)
  %i.aje = call float @llvm.fmuladd.f32(float %i.ajb, float %i.ajb, float %i.ajd)
  %i.ajf = call float @llvm.sqrt.f32(float %i.aje)
  %i.ajg = fmul float %i.im, %i.ajf               ; 3 uses
  %i.ajh = fcmp ogt float %i.ajg, %i.iw
  %i.aji = fcmp ogt float %i.ajg, %.05039.i208
  %or.cond.i218 = select i1 %i.ajh, i1 %i.aji, i1 false ; 2 uses
  %.1.i219 = select i1 %or.cond.i218, i64 %.04940.i207, i64 %.038.i209 ; 9 uses
  %.151.i220 = select i1 %or.cond.i218, float %i.ajg, float %.05039.i208
  %.049.i221 = add nuw i64 %.04940.i207, 1        ; 2 uses
  %exitcond.not.i222 = icmp eq i64 %.049.i221, %.sroa.9.0.copyload32.i163
  br i1 %exitcond.not.i222, label %._crit_edge.i223, label %bb.et, !llvm.loop !105

._crit_edge.i223:                                 ; preds = %bb.eu
  %.not.i224 = icmp eq i64 %.1.i219, %.sroa.011.0.copyload30.i164
  br i1 %.not.i224, label %._crit_edge.thread.i167, label %bb.ev

bb.ev:                                            ; preds = %._crit_edge.i223
  %i.ajj = sdiv i64 %.1.i219, 64
  %i.ajk = getelementptr inbounds [8 x i8], ptr %i.agc, i64 %i.ajj
  %i.ajl = and i64 %.1.i219, -9223372036854775745
  %i.ajm = icmp ugt i64 %i.ajl, -9223372036854775808
  %storemerge.idx.i.i.i.i.i79.i225 = select i1 %i.ajm, i64 -8, i64 0
  %storemerge.i.i.i.i.i80.i226 = getelementptr inbounds i8, ptr %i.ajk, i64 %storemerge.idx.i.i.i.i.i79.i225 ; 2 uses
  %i.ajn = and i64 %.1.i219, 63
  %i.ajo = shl nuw i64 1, %i.ajn
  %i.ajp = load i64, ptr %storemerge.i.i.i.i.i80.i226, align 8, !tbaa !139, !noalias !153
  %i.ajq = or i64 %i.ajp, %i.ajo
  store i64 %i.ajq, ptr %storemerge.i.i.i.i.i80.i226, align 8, !tbaa !139, !noalias !153
  %i.ajr = sub i64 %.1.i219, %.sroa.011.0.copyload30.i164
  %i.ajs = icmp ugt i64 %i.ajr, 1
  br i1 %i.ajs, label %bb.ew, label %bb.fa

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14, !noalias !153
  store i64 %.sroa.011.0.copyload30.i164, ptr %8, align 8, !tbaa !136, !noalias !153
  store i64 %.1.i219, ptr %i.ib, align 8, !tbaa !137, !noalias !153
  %i.ajt = load ptr, ptr %i.hs, align 8, !tbaa !50, !noalias !153 ; 2 uses
  %i.aju = load ptr, ptr %i.hv, align 8, !tbaa !138, !noalias !153
  %i.ajv = getelementptr inbounds i8, ptr %i.aju, i64 -16
  %.not.i.i.i83.i229 = icmp eq ptr %i.ajt, %i.ajv
  br i1 %.not.i.i.i83.i229, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ajt, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !noalias !153
  %i.ajw = load ptr, ptr %i.hs, align 8, !tbaa !50, !noalias !153
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 16
  store ptr %i.ajx, ptr %i.hs, align 8, !tbaa !50, !noalias !153
  br label %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE4pushEOS1_.exit85.i230

bb.ey:                                            ; preds = %bb.ew
  invoke void @_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE4pushEOS1_.exit85.i230 unwind label %bb.ez, !noalias !153

_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE4pushEOS1_.exit85.i230: ; preds = %bb.ey, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14, !noalias !153
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.ajy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14, !noalias !153
  br label %.loopexit.split-lp.i203

bb.fa:                                            ; preds = %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE4pushEOS1_.exit85.i230, %bb.ev
  %i.ajz = sub i64 %.sroa.9.0.copyload32.i163, %.1.i219
  %i.aka = icmp ugt i64 %i.ajz, 1
  br i1 %i.aka, label %bb.fb, label %._crit_edge.thread.i167

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14, !noalias !153
  store i64 %.1.i219, ptr %9, align 8, !tbaa !136, !noalias !153
  store i64 %.sroa.9.0.copyload32.i163, ptr %i.ic, align 8, !tbaa !137, !noalias !153
  %i.akb = load ptr, ptr %i.hs, align 8, !tbaa !50, !noalias !153 ; 2 uses
  %i.akc = load ptr, ptr %i.hv, align 8, !tbaa !138, !noalias !153
  %i.akd = getelementptr inbounds i8, ptr %i.akc, i64 -16
  %.not.i.i.i86.i227 = icmp eq ptr %i.akb, %i.akd
  br i1 %.not.i.i.i86.i227, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.akb, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !noalias !153
  %i.ake = load ptr, ptr %i.hs, align 8, !tbaa !50, !noalias !153
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 16
  store ptr %i.akf, ptr %i.hs, align 8, !tbaa !50, !noalias !153
  br label %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE4pushEOS1_.exit88.i228

bb.fd:                                            ; preds = %bb.fb
  invoke void @_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE4pushEOS1_.exit88.i228 unwind label %bb.fe, !noalias !153

_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE4pushEOS1_.exit88.i228: ; preds = %bb.fd, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14, !noalias !153
  br label %._crit_edge.thread.i167

bb.fe:                                            ; preds = %bb.fd
  %i.akg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14, !noalias !153
  br label %.loopexit.split-lp.i203

._crit_edge.thread.i167:                          ; preds = %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE4pushEOS1_.exit88.i228, %bb.fa, %._crit_edge.i223, %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEE3popEv.exit.i162
  %i.akh = load ptr, ptr %i.hs, align 8, !tbaa !57, !noalias !153 ; 2 uses
  %i.aki = load ptr, ptr %i.hn, align 8, !tbaa !57, !noalias !153
  %i.akj = icmp eq ptr %i.akh, %i.aki
  br i1 %i.akj, label %.preheader.loopexit.i168, label %.lr.ph42.i155, !llvm.loop !106

._crit_edge45.loopexit.i179:                      ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i
  %.pre54.i180 = load ptr, ptr %6, align 8, !tbaa !53, !noalias !153
  br label %._crit_edge45.i181

._crit_edge45.i181:                               ; preds = %._crit_edge45.loopexit.i179, %.preheader.i171
  %i.akk = phi ptr [ %.pre54.i180, %._crit_edge45.loopexit.i179 ], [ %i.agc, %.preheader.i171 ] ; 2 uses
  %.not.i.i89.i182 = icmp eq ptr %i.akk, null
  br i1 %.not.i.i89.i182, label %_ZNSt13_Bvector_baseIN3ozz12StdAllocatorIbEEED2Ev.exit.i183, label %bb.ff

bb.ff:                                            ; preds = %._crit_edge45.i181
  %i.akl = load ptr, ptr %i.hz, align 8, !tbaa !56, !noalias !153 ; 2 uses
  %i.akm = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.fg unwind label %bb.fh     ; 2 uses

bb.fg:                                            ; preds = %bb.ff
  %i.akn = ptrtoint ptr %i.akl to i64
  %i.ako = ptrtoint ptr %i.akk to i64
  %i.akp = sub i64 %i.akn, %i.ako
  %i.akq = ashr exact i64 %i.akp, 3
  %i.akr = sub nsw i64 0, %i.akq
  %i.aks = getelementptr inbounds [8 x i8], ptr %i.akl, i64 %i.akr
  %i.akt = load ptr, ptr %i.akm, align 8, !tbaa !18
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 24
  %i.akv = load ptr, ptr %i.aku, align 8
  invoke void %i.akv(ptr noundef nonnull align 8 dereferenceable(8) %i.akm, ptr noundef %i.aks)
          to label %_ZNSt13_Bvector_baseIN3ozz12StdAllocatorIbEEED2Ev.exit.i183 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.akw = landingpad { ptr, i32 }
          catch ptr null
  %i.akx = extractvalue { ptr, i32 } %i.akw, 0
  call void @__clang_call_terminate(ptr %i.akx) #15
  unreachable

_ZNSt13_Bvector_baseIN3ozz12StdAllocatorIbEEED2Ev.exit.i183: ; preds = %bb.fg, %._crit_edge45.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14, !noalias !153
  %i.aky = load ptr, ptr %5, align 8, !tbaa !45, !noalias !153 ; 2 uses
  %.not.i.i.i90.i184 = icmp eq ptr %i.aky, null
  br i1 %.not.i.i.i90.i184, label %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEED2Ev.exit.i186, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt13_Bvector_baseIN3ozz12StdAllocatorIbEEED2Ev.exit.i183
  %i.akz = load ptr, ptr %i.hp, align 8, !tbaa !59, !noalias !153 ; 2 uses
  %i.ala = load ptr, ptr %i.ht, align 8, !tbaa !58, !noalias !153 ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 8
  %i.alc = icmp ult ptr %i.akz, %i.alb
  br i1 %i.alc, label %.lr.ph.i.i.i.i.i196, label %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.i.i.i.i185

.lr.ph.i.i.i.i.i196:                              ; preds = %bb.fi, %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE18_M_deallocate_nodeEPS1_.exit.i.i.i.i.i198
  %.06.i.i.i.i.i197 = phi ptr [ %i.alk, %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE18_M_deallocate_nodeEPS1_.exit.i.i.i.i.i198 ], [ %i.akz, %bb.fi ] ; 3 uses
  %i.ald = load ptr, ptr %.06.i.i.i.i.i197, align 8, !tbaa !46
  %i.ale = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.fj unwind label %bb.fk     ; 2 uses

bb.fj:                                            ; preds = %.lr.ph.i.i.i.i.i196
  %i.alf = load ptr, ptr %i.ale, align 8, !tbaa !18
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 24
  %i.alh = load ptr, ptr %i.alg, align 8
  invoke void %i.alh(ptr noundef nonnull align 8 dereferenceable(8) %i.ale, ptr noundef %i.ald)
          to label %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE18_M_deallocate_nodeEPS1_.exit.i.i.i.i.i198 unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %.lr.ph.i.i.i.i.i196
  %i.ali = landingpad { ptr, i32 }
          catch ptr null
  %i.alj = extractvalue { ptr, i32 } %i.ali, 0
  call void @__clang_call_terminate(ptr %i.alj) #15
  unreachable

_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE18_M_deallocate_nodeEPS1_.exit.i.i.i.i.i198: ; preds = %bb.fj
  %i.alk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i197, i64 8
  %i.all = icmp ult ptr %.06.i.i.i.i.i197, %i.ala
  br i1 %i.all, label %.lr.ph.i.i.i.i.i196, label %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.loopexit.i.i.i.i199, !llvm.loop !1

_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.loopexit.i.i.i.i199: ; preds = %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE18_M_deallocate_nodeEPS1_.exit.i.i.i.i.i198
  %.pre.i.i.i.i200 = load ptr, ptr %5, align 8, !tbaa !45, !noalias !153
  br label %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.i.i.i.i185

_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.i.i.i.i185: ; preds = %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.loopexit.i.i.i.i199, %bb.fi
  %i.alm = phi ptr [ %.pre.i.i.i.i200, %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.loopexit.i.i.i.i199 ], [ %i.aky, %bb.fi ]
  %i.aln = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.fl unwind label %bb.fm     ; 2 uses

bb.fl:                                            ; preds = %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.i.i.i.i185
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !18
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 24
  %i.alq = load ptr, ptr %i.alp, align 8
  invoke void %i.alq(ptr noundef nonnull align 8 dereferenceable(8) %i.aln, ptr noundef %i.alm)
          to label %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEED2Ev.exit.i186 unwind label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %_ZNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_M_destroy_nodesEPPS1_S7_.exit.i.i.i.i185
  %i.alr = landingpad { ptr, i32 }
          catch ptr null
  %i.als = extractvalue { ptr, i32 } %i.alr, 0
  call void @__clang_call_terminate(ptr %i.als) #15
  unreachable

_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEED2Ev.exit.i186: ; preds = %bb.fl, %_ZNSt13_Bvector_baseIN3ozz12StdAllocatorIbEEED2Ev.exit.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !153
  br label %bb.fq

.lr.ph44.i173:                                    ; preds = %.preheader.i171, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i
  %i.alt = phi ptr [ %i.amk, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ], [ %i.ahj, %.preheader.i171 ]
  %.04543.i174 = phi i64 [ %i.ami, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i ], [ 0, %.preheader.i171 ] ; 5 uses
  %i.alu = load ptr, ptr %6, align 8, !tbaa !53, !noalias !153
  %i.alv = sdiv i64 %.04543.i174, 64
  %i.alw = getelementptr inbounds [8 x i8], ptr %i.alu, i64 %i.alv
  %i.alx = and i64 %.04543.i174, -9223372036854775745
  %i.aly = icmp ugt i64 %i.alx, -9223372036854775808
  %storemerge.idx.i.i.i.i.i91.i175 = select i1 %i.aly, i64 -8, i64 0
  %storemerge.i.i.i.i.i92.i176 = getelementptr inbounds i8, ptr %i.alw, i64 %storemerge.idx.i.i.i.i.i91.i175
  %i.alz = and i64 %.04543.i174, 63
  %i.ama = shl nuw i64 1, %i.alz
  %i.amb = load i64, ptr %storemerge.i.i.i.i.i92.i176, align 8, !tbaa !139
  %i.amc = and i64 %i.amb, %i.ama
  %.not35.i177 = icmp eq i64 %i.amc, 0
  br i1 %.not35.i177, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i, label %bb.fn

bb.fn:                                            ; preds = %.lr.ph44.i173
  %i.amd = getelementptr inbounds nuw [16 x i8], ptr %i.alt, i64 %.04543.i174 ; 2 uses
  %i.ame = load ptr, ptr %i.id, align 8, !tbaa !26, !alias.scope !153 ; 3 uses
  %i.amf = load ptr, ptr %i.ie, align 8, !tbaa !70, !alias.scope !153
  %.not.i.i178 = icmp eq ptr %i.ame, %i.amf
  br i1 %.not.i.i178, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ame, ptr noundef nonnull align 4 dereferenceable(16) %i.amd, i64 16, i1 false), !tbaa.struct !61
  %i.amg = load ptr, ptr %i.id, align 8, !tbaa !26, !alias.scope !153
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 16
  store ptr %i.amh, ptr %i.id, align 8, !tbaa !26, !alias.scope !153
  br label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i

bb.fp:                                            ; preds = %bb.fn
  invoke void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr %i.ame, ptr noundef nonnull align 4 dereferenceable(16) %i.amd)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.et, %bb.fp
  %lpad.loopexit.split-lp369 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i203

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE9push_backERKS4_.exit.i: ; preds = %bb.fp, %bb.fo, %.lr.ph44.i173
  %i.ami = add nuw i64 %.04543.i174, 1            ; 2 uses
  %i.amj = load ptr, ptr %i.aeb, align 8, !tbaa !26, !noalias !153
  %i.amk = load ptr, ptr %i.aea, align 8, !tbaa !27, !noalias !153 ; 2 uses
  %i.aml = ptrtoint ptr %i.amj to i64
  %i.amm = ptrtoint ptr %i.amk to i64
  %i.amn = sub i64 %i.aml, %i.amm
  %i.amo = ashr exact i64 %i.amn, 4
  %i.amp = icmp ult i64 %i.ami, %i.amo
  br i1 %i.amp, label %.lr.ph44.i173, label %._crit_edge45.loopexit.i179, !llvm.loop !107

.loopexit.split-lp.i203:                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fe, %bb.ez, %bb.es
  %.pn62.pn.i204 = phi { ptr, i32 } [ %i.akg, %bb.fe ], [ %i.aik, %bb.es ], [ %i.ajy, %bb.ez ], [ %lpad.loopexit.split-lp369, %.loopexit.split-lp.loopexit.split-lp.i201.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt13_Bvector_baseIN3ozz12StdAllocatorIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14, !noalias !153
  call void @_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !153
  br label %.body237

bb.fq:                                            ; preds = %_ZNSt5stackISt4pairImmESt5dequeIS1_N3ozz12StdAllocatorIS1_EEEED2Ev.exit.i186, %bb.eb
  %i.amq = load ptr, ptr %24, align 8, !tbaa !71, !alias.scope !153 ; 5 uses
  %.promoted.i187 = load ptr, ptr %i.id, align 8, !tbaa !71, !alias.scope !153 ; 3 uses
  %i.amr = icmp eq ptr %i.amq, %.promoted.i187
  br i1 %i.amr, label %_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_112ScaleAdapterEEET_RKSB_RKT0_f.exit, label %.lr.ph47.i188

.lr.ph47.i188:                                    ; preds = %bb.fq
  %i.ams = ptrtoint ptr %i.amq to i64
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fv, %.lr.ph47.i188
  %i.amt = phi ptr [ %.promoted.i187, %.lr.ph47.i188 ], [ %i.amx, %bb.fv ] ; 6 uses
  %i.amu = ptrtoint ptr %i.amt to i64
  %i.amv = sub i64 %i.amu, %i.ams                 ; 2 uses
  %i.amw = icmp eq i64 %i.amv, 16
  %i.amx = getelementptr inbounds i8, ptr %i.amt, i64 -16 ; 4 uses
  br i1 %i.amw, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.amy = getelementptr i8, ptr %i.amq, i64 %i.amv ; 2 uses
  %i.amz = getelementptr i8, ptr %i.amy, i64 -28
  %.sroa.0.0.copyload.i189 = load <2 x float>, ptr %i.amz, align 4, !tbaa !29
  %.sroa.8.0..sroa_idx.i190 = getelementptr i8, ptr %i.amy, i64 -20
  %.sroa.8.0.copyload.i191 = load float, ptr %.sroa.8.0..sroa_idx.i190, align 4, !tbaa !29
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.sroa.8.0.i192 = phi float [ %.sroa.8.0.copyload.i191, %bb.fs ], [ 1.000000e+00, %bb.fr ]
  %.sroa.0.0.i193 = phi <2 x float> [ %.sroa.0.0.copyload.i189, %bb.fs ], [ splat (float 1.000000e+00), %bb.fr ] ; 2 uses
  %i.ana = getelementptr inbounds i8, ptr %i.amt, i64 -12
  %.sroa.0.0.vec.extract.i194 = extractelement <2 x float> %.sroa.0.0.i193, i64 0
  %i.anb = load float, ptr %i.ana, align 4, !tbaa !130
  %i.anc = fsub float %.sroa.0.0.vec.extract.i194, %i.anb ; 2 uses
  %.sroa.0.4.vec.extract.i195 = extractelement <2 x float> %.sroa.0.0.i193, i64 1
  %i.and = getelementptr inbounds i8, ptr %i.amt, i64 -8
  %i.ane = load float, ptr %i.and, align 4, !tbaa !131
  %i.anf = fsub float %.sroa.0.4.vec.extract.i195, %i.ane ; 2 uses
  %i.ang = getelementptr inbounds i8, ptr %i.amt, i64 -4
  %i.anh = load float, ptr %i.ang, align 4, !tbaa !120
  %i.ani = fsub float %.sroa.8.0.i192, %i.anh     ; 2 uses
  %i.anj = fmul float %i.anf, %i.anf
  %i.ank = call float @llvm.fmuladd.f32(float %i.anc, float %i.anc, float %i.anj)
  %i.anl = call float @llvm.fmuladd.f32(float %i.ani, float %i.ani, float %i.ank)
  %i.anm = call float @llvm.sqrt.f32(float %i.anl)
  %i.ann = fmul float %i.im, %i.anm
  %i.ano = fcmp ogt float %i.ann, %i.iw
  br i1 %i.ano, label %_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_112ScaleAdapterEEET_RKSB_RKT0_f.exit, label %bb.fv

bb.fu:                                            ; preds = %bb.eb
  %i.anp = landingpad { ptr, i32 }
          cleanup
  br label %.body237

bb.fv:                                            ; preds = %bb.ft
  store ptr %i.amx, ptr %i.id, align 8, !tbaa !26, !alias.scope !153
  %i.anq = icmp eq ptr %i.amq, %i.amx
  br i1 %i.anq, label %_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_112ScaleAdapterEEET_RKSB_RKT0_f.exit, label %bb.fr

.body237:                                         ; preds = %bb.fu, %.loopexit.split-lp.i203
  %.pn67.pn.i205 = phi { ptr, i32 } [ %.pn62.pn.i204, %.loopexit.split-lp.i203 ], [ %i.anp, %bb.fu ]
  call void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  br label %bb.gg

_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_112ScaleAdapterEEET_RKSB_RKT0_f.exit: ; preds = %bb.fv, %bb.ft, %bb.fq
  %i.anr = phi ptr [ %.promoted.i187, %bb.fq ], [ %i.amx, %bb.fv ], [ %i.amt, %bb.ft ]
  %i.ans = getelementptr inbounds nuw i8, ptr %i.ik, i64 48 ; 2 uses
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !27 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ik, i64 64
  store ptr %i.amq, ptr %i.ans, align 8, !tbaa !27
  store ptr %i.anr, ptr %i.anu, align 8, !tbaa !26
  %i.anw = load ptr, ptr %i.ie, align 8, !tbaa !70
  store ptr %i.anw, ptr %i.anv, align 8, !tbaa !70
  %.not.i.i.i.i.i239 = icmp eq ptr %i.ant, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i239, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit, label %bb.fw

bb.fw:                                            ; preds = %_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_112ScaleAdapterEEET_RKSB_RKT0_f.exit
  %i.anx = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.fx unwind label %bb.fy     ; 2 uses

bb.fx:                                            ; preds = %bb.fw
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !18
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 24
  %i.aoa = load ptr, ptr %i.anz, align 8
  invoke void %i.aoa(ptr noundef nonnull align 8 dereferenceable(8) %i.anx, ptr noundef nonnull %i.ant)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEEaSEOS7_.exit unwind label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.aob = landingpad { ptr, i32 }
          catch ptr null
  %i.aoc = extractvalue { ptr, i32 } %i.aob, 0
  call void @__clang_call_terminate(ptr %i.aoc) #15
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEEaSEOS7_.exit: ; preds = %bb.fx
  %.pr250 = load ptr, ptr %24, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i240 = icmp eq ptr %.pr250, null
  br i1 %.not.i.i.i240, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit, label %bb.fz

bb.fz:                                            ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEEaSEOS7_.exit
  %i.aod = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ga unwind label %bb.gb     ; 2 uses

bb.ga:                                            ; preds = %bb.fz
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !18
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 24
  %i.aog = load ptr, ptr %i.aof, align 8
  invoke void %i.aog(ptr noundef nonnull align 8 dereferenceable(8) %i.aod, ptr noundef nonnull %.pr250)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit unwind label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.aoh = landingpad { ptr, i32 }
          catch ptr null
  %i.aoi = extractvalue { ptr, i32 } %i.aoh, 0
  call void @__clang_call_terminate(ptr %i.aoi) #15
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEED2Ev.exit: ; preds = %_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_112ScaleAdapterEEET_RKSB_RKT0_f.exit, %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEEaSEOS7_.exit, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.w, !llvm.loop !108

bb.gc:                                            ; preds = %._crit_edge
  %.not.i.i.i.i241 = icmp eq ptr %.sroa.0245.0, null
  br i1 %.not.i.i.i.i241, label %_ZN3ozz9animation7offline12_GLOBAL__N_116HierarchyBuilderD2Ev.exit, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.aoj = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.ge unwind label %bb.gf     ; 2 uses

bb.ge:                                            ; preds = %bb.gd
  %i.aok = load ptr, ptr %i.aoj, align 8, !tbaa !18
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 24
  %i.aom = load ptr, ptr %i.aol, align 8
  invoke void %i.aom(ptr noundef nonnull align 8 dereferenceable(8) %i.aoj, ptr noundef nonnull %.sroa.0245.0)
          to label %_ZN3ozz9animation7offline12_GLOBAL__N_116HierarchyBuilderD2Ev.exit unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %i.aon = landingpad { ptr, i32 }
          catch ptr null
  %i.aoo = extractvalue { ptr, i32 } %i.aon, 0
  call void @__clang_call_terminate(ptr %i.aoo) #15
  unreachable

bb.gg:                                            ; preds = %.body, %.body237, %.body139, %bb.v
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ig, %bb.v ], [ %.pn67.pn.i124, %.body139 ], [ %.pn67.pn.i, %.body ], [ %.pn67.pn.i205, %.body237 ]
  call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_116HierarchyBuilderD2Ev(ptr %.sroa.0245.0) #14
  resume { ptr, i32 } %.pn.pn.pn.pn

_ZN3ozz9animation7offline12_GLOBAL__N_116HierarchyBuilderD2Ev.exit: ; preds = %bb.ge, %bb.gc, %bb.h, %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit, %bb.a
  %.151 = phi i1 [ false, %bb.a ], [ false, %_ZN3ozz9animation7offline12RawAnimationD2Ev.exit ], [ false, %bb.h ], [ %i.if, %bb.gc ], [ %i.if, %bb.ge ]
  ret i1 %.151
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN3ozz9animation7offline12RawAnimationC1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN3ozz9animation7offline12RawAnimationaSEOS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !157
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %2, align 8, !tbaa !21
  %i.g = load <2 x ptr>, ptr %i.b, align 8, !tbaa !157
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !157
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !72
  store ptr %i.i, ptr %i.c, align 8, !tbaa !72
  store <2 x ptr> %i.g, ptr %i.f, align 8, !tbaa !157
  %.not5.i.i.i.i = icmp eq ptr %i.a, %i.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not5.i.i.i.i, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  call void @_ZN3ozz12StdAllocatorINS_9animation7offline12RawAnimation10JointTrackEE7destroyIS4_EEvPT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %.06.i.i.i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %2, align 8, !tbaa !21
  br label %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i

_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exitthread-pre-split.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i
  %i.l = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.k)
          to label %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #15
  unreachable

_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load float, ptr %i.r, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.s, ptr %i.t, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !16   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.y = icmp eq ptr %i.w, %i.x
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !16   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.ab = icmp eq ptr %i.z, %i.aa                 ; 2 uses
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread25.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit
  br i1 %i.ab, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread25.i: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEEaSEOS7_.exit
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit23.thread26.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread25.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !73 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEEaSERKS7_:bb.a
_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S7_EEEEPS4_mT_SF_.exit, %bb.g
  store ptr %i.r, ptr %0, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !70
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit

bb.i:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ah, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp sgt i64 %i.f, 16
  br i1 %i.ai, label %bb.k, label %bb.l, !prof !75

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = icmp eq i64 %i.f, 16
  br i1 %i.aj, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !61
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit

bb.n:                                             ; preds = %bb.i
  %i.ak = icmp sgt i64 %i.ah, 16
  br i1 %i.ak, label %bb.o, label %bb.p, !prof !75

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ah, i1 false)
  br label %_ZSt4copyIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_ET0_T_S7_S6_.exit

bb.p:                                             ; preds = %bb.n
  %i.al = icmp eq i64 %i.ah, 16
  br i1 %i.al, label %bb.q, label %_ZSt4copyIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_ET0_T_S7_S6_.exit

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !61
  br label %_ZSt4copyIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_ET0_T_S7_S6_.exit

_ZSt4copyIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_ET0_T_S7_S6_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.am = load ptr, ptr %1, align 8, !tbaa !27
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !26 ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !27
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %.not15.i = icmp eq ptr %i.as, %i.at
  br i1 %.not15.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4copyIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_ET0_T_S7_S6_.exit, %.lr.ph.i
  %.017.i = phi ptr [ %i.av, %.lr.ph.i ], [ %i.an, %_ZSt4copyIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_ET0_T_S7_S6_.exit ] ; 2 uses
  %.01416.i = phi ptr [ %i.au, %.lr.ph.i ], [ %i.as, %_ZSt4copyIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_ET0_T_S7_S6_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.017.i, ptr noundef nonnull align 4 dereferenceable(16) %.01416.i, i64 16, i1 false), !tbaa.struct !61
  %i.au = getelementptr inbounds nuw i8, ptr %.01416.i, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.017.i, i64 16
  %.not.i25 = icmp eq ptr %i.au, %i.at
  br i1 %.not.i25, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit, label %.lr.ph.i, !llvm.loop !167

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit: ; preds = %.lr.ph.i, %_ZSt4copyIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_ET0_T_S7_S6_.exit, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !26
  br label %bb.r

bb.r:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ozz9animation7offline12RawAnimation8ScaleKeyESt6vectorIS6_NS2_12StdAllocatorIS6_EEEEENS1_IPS6_SC_EEET0_T_SH_SG_.exit, %bb.a
  ret ptr %0
}

declare { <2 x float>, float } @_ZN3ozz9animation7offline9LerpScaleERKNS_4math6Float3ES5_f(ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(12), float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #16
  unreachable

_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.p = shl nuw nsw i64 %i.l, 4
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.p, i64 noundef 4)
          to label %bb.e unwind label %bb.d       ; 5 uses

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE12_M_check_lenEmPKc.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !61
  %.not13.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %i.c, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i, i64 16, i1 false), !tbaa.struct !61
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !168

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit: ; preds = %.lr.ph.i.i, %bb.e
  %.0.lcssa.i.i = phi ptr [ %i.t, %bb.e ], [ %i.y, %.lr.ph.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
  %.not13.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit, %.lr.ph.i.i29
  %.015.i.i30 = phi ptr [ %i.ab, %.lr.ph.i.i29 ], [ %i.z, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.sroa.010.014.i.i31 = phi ptr [ %i.aa, %.lr.ph.i.i29 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.015.i.i30, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.010.014.i.i31, i64 16, i1 false), !tbaa.struct !61
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i31, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i.i30, i64 16 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, label %.lr.ph.i.i29, !llvm.loop !168

_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34: ; preds = %.lr.ph.i.i29, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit
  %.0.lcssa.i.i33 = phi ptr [ %i.z, %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit ], [ %i.ab, %.lr.ph.i.i29 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34
  %i.ac = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %i.c)
          to label %_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #15
  unreachable

_ZNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3ozz9animation7offline12RawAnimation8ScaleKeyES5_NS0_12StdAllocatorIS4_EEET0_T_S9_S8_RT1_.exit34, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %0, align 8, !tbaa !27
  store ptr %.0.lcssa.i.i33, ptr %i.a, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.l
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !70
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !23}
!1 = distinct !{!1, !23}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEE", !13, i64 0, !14, i64 8, !7, i64 16}
!16 = !{!15, !12, i64 0}
!17 = !{!"vtable pointer", !6, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 _ZTSN3ozz9animation7offline12RawAnimation10JointTrackE", !11, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 0}
!22 = !{!20, !19, i64 8}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"p1 _ZTSN3ozz9animation7offline12RawAnimation8ScaleKeyE", !11, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation8ScaleKeyENS0_12StdAllocatorIS4_EEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!25, !24, i64 8}
!27 = !{!25, !24, i64 0}
!28 = !{!"float", !7, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"p1 _ZTSN3ozz9animation7offline12RawAnimation14TranslationKeyE", !11, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation14TranslationKeyENS0_12StdAllocatorIS4_EEE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!31, !30, i64 8}
!33 = !{!31, !30, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE12_Vector_implE", !20, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorIN3ozz9animation7offline12RawAnimation10JointTrackENS0_12StdAllocatorIS4_EEE", !35, i64 0}
!37 = !{!"_ZTSN3ozz9animation7offline12RawAnimationE", !36, i64 0, !28, i64 24, !15, i64 32}
!38 = !{!37, !28, i64 24}
!39 = !{!"any p2 pointer", !11, i64 0}
!40 = !{!"p2 _ZTSSt4pairImmE", !39, i64 0}
!41 = !{!"p1 _ZTSSt4pairImmE", !11, i64 0}
!42 = !{!"_ZTSSt15_Deque_iteratorISt4pairImmERS1_PS1_E", !41, i64 0, !41, i64 8, !41, i64 16, !40, i64 24}
!43 = !{!"_ZTSNSt11_Deque_baseISt4pairImmEN3ozz12StdAllocatorIS1_EEE16_Deque_impl_dataE", !40, i64 0, !14, i64 8, !42, i64 16, !42, i64 48}
!44 = !{!43, !14, i64 8}
!45 = !{!43, !40, i64 0}
!46 = !{!41, !41, i64 0}
!47 = !{!42, !40, i64 24}
!48 = !{!42, !41, i64 8}
!49 = !{!42, !41, i64 16}
!50 = !{!43, !41, i64 48}
!51 = !{!"p1 long", !11, i64 0}
!52 = !{!"_ZTSSt18_Bit_iterator_base", !51, i64 0, !8, i64 8}
!53 = !{!52, !51, i64 0}
!54 = !{!"_ZTSSt13_Bit_iterator", !52, i64 0}
!55 = !{!"_ZTSNSt13_Bvector_baseIN3ozz12StdAllocatorIbEEE18_Bvector_impl_dataE", !54, i64 0, !54, i64 16, !51, i64 32}
!56 = !{!55, !51, i64 32}
!57 = !{!42, !41, i64 0}
!58 = !{!43, !40, i64 72}
!59 = !{!43, !40, i64 40}
!60 = !{!31, !30, i64 16}
!61 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !29, i64 12, i64 4, !29}
!62 = !{!30, !30, i64 0}
!63 = !{!"p1 _ZTSN3ozz9animation7offline12RawAnimation11RotationKeyE", !11, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN3ozz9animation7offline12RawAnimation11RotationKeyENS0_12StdAllocatorIS4_EEE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!64, !63, i64 8}
!66 = !{!64, !63, i64 0}
!67 = !{!64, !63, i64 16}
!68 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !29, i64 12, i64 4, !29, i64 16, i64 4, !29}
!69 = !{!63, !63, i64 0}
!70 = !{!25, !24, i64 16}
!71 = !{!24, !24, i64 0}
!72 = !{!20, !19, i64 16}
!73 = !{!15, !14, i64 8}
!74 = !{!7, !7, i64 0}
!75 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!76 = distinct !{!76, i1 true, !"_ZN3ozz9animation15IterateJointsDFISt5_BindIFMNS0_7offline12_GLOBAL__N_116HierarchyBuilderEFviiEPS5_St12_PlaceholderILi1EES9_ILi2EEEEEET_RKNS0_8SkeletonESE_i"}
!77 = distinct !{!77, !76, !"_ZN3ozz9animation15IterateJointsDFISt5_BindIFMNS0_7offline12_GLOBAL__N_116HierarchyBuilderEFviiEPS5_St12_PlaceholderILi1EES9_ILi2EEEEEET_RKNS0_8SkeletonESE_i: argument 0"}
!78 = distinct !{!78, !23}
!79 = distinct !{!79, !23}
!80 = distinct !{!80, !23}
!81 = distinct !{!81, i1 true, !"_ZN3ozz9animation22IterateJointsDFReverseISt5_BindIFMNS0_7offline12_GLOBAL__N_116HierarchyBuilderEFviiEPS5_St12_PlaceholderILi1EES9_ILi2EEEEEET_RKNS0_8SkeletonESE_"}
!82 = distinct !{!82, !81, !"_ZN3ozz9animation22IterateJointsDFReverseISt5_BindIFMNS0_7offline12_GLOBAL__N_116HierarchyBuilderEFviiEPS5_St12_PlaceholderILi1EES9_ILi2EEEEEET_RKNS0_8SkeletonESE_: argument 0"}
!83 = distinct !{!83, !23}
!84 = distinct !{!84, !23}
!85 = distinct !{!85, i1 true, !"_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_115PositionAdapterEEET_RKSB_RKT0_f"}
!86 = distinct !{!86, !85, !"_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation14TranslationKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_115PositionAdapterEEET_RKSB_RKT0_f: argument 0"}
!87 = distinct !{!87, i1 true, !"_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE3endEv"}
!88 = distinct !{!88, !87, !"_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE3endEv: argument 0"}
!89 = distinct !{!89, !23}
!90 = distinct !{!90, !23}
!91 = distinct !{!91, !23}
!92 = distinct !{!92, i1 true, !"_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_115RotationAdapterEEET_RKSB_RKT0_f"}
!93 = distinct !{!93, !92, !"_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_115RotationAdapterEEET_RKSB_RKT0_f: argument 0"}
!94 = distinct !{!94, i1 true, !"_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE3endEv"}
!95 = distinct !{!95, !94, !"_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE3endEv: argument 0"}
!96 = distinct !{!96, i1 true, !"_ZNK3ozz9animation7offline12_GLOBAL__N_115RotationAdapter4LerpERKNS1_12RawAnimation11RotationKeyES7_S7_"}
!97 = distinct !{!97, !96, !"_ZNK3ozz9animation7offline12_GLOBAL__N_115RotationAdapter4LerpERKNS1_12RawAnimation11RotationKeyES7_S7_: argument 0"}
!98 = distinct !{!98, !23}
!99 = distinct !{!99, !23}
!100 = distinct !{!100, !23}
!101 = distinct !{!101, i1 true, !"_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_112ScaleAdapterEEET_RKSB_RKT0_f"}
!102 = distinct !{!102, !101, !"_ZN3ozz9animation7offline8DecimateISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS5_EEENS1_12_GLOBAL__N_112ScaleAdapterEEET_RKSB_RKT0_f: argument 0"}
!103 = distinct !{!103, i1 true, !"_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE3endEv"}
!104 = distinct !{!104, !103, !"_ZNSt5dequeISt4pairImmEN3ozz12StdAllocatorIS1_EEE3endEv: argument 0"}
!105 = distinct !{!105, !23}
!106 = distinct !{!106, !23}
!107 = distinct !{!107, !23}
!108 = distinct !{!108, !23}
!109 = !{!"p1 short", !11, i64 0}
!110 = !{!"_ZTSN3ozz4spanIsEE", !109, i64 0, !14, i64 8}
!111 = !{!110, !14, i64 8}
!112 = !{!110, !109, i64 0}
!113 = !{!77}
!114 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!115 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!116 = !{!"_ZTSSt18_Rb_tree_node_base", !114, i64 0, !115, i64 8, !115, i64 16, !115, i64 24}
!117 = !{!"_ZTSSt15_Rb_tree_header", !116, i64 0, !14, i64 32}
!118 = !{!117, !115, i64 8}
!119 = !{!"_ZTSN3ozz4math6Float3E", !28, i64 0, !28, i64 4, !28, i64 8}
!120 = !{!119, !28, i64 8}
!121 = !{!"_ZTSN3ozz9animation7offline12_GLOBAL__N_116HierarchyBuilder4SpecE", !28, i64 0, !28, i64 4, !28, i64 8}
!122 = !{!121, !28, i64 4}
!123 = !{!8, !8, i64 0}
!124 = !{!115, !115, i64 0}
!125 = !{!121, !28, i64 0}
!126 = !{!121, !28, i64 8}
!127 = !{!"short", !7, i64 0}
!128 = !{!127, !127, i64 0}
!129 = !{!82}
!130 = !{!119, !28, i64 0}
!131 = !{!119, !28, i64 4}
!132 = !{!86}
!133 = !{!43, !41, i64 16}
!134 = !{!52, !8, i64 8}
!135 = !{!"_ZTSSt4pairImmE", !14, i64 0, !14, i64 8}
!136 = !{!135, !14, i64 0}
!137 = !{!135, !14, i64 8}
!138 = !{!43, !41, i64 64}
!139 = !{!14, !14, i64 0}
!140 = !{!88, !86}
!141 = !{!"_ZTSN3ozz9animation7offline12RawAnimation14TranslationKeyE", !28, i64 0, !119, i64 4}
!142 = !{!141, !28, i64 0}
!143 = !{!93}
!144 = !{!95, !93}
!145 = !{!"_ZTSN3ozz4math10QuaternionE", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12}
!146 = !{!"_ZTSN3ozz9animation7offline12RawAnimation11RotationKeyE", !28, i64 0, !145, i64 4}
!147 = !{!146, !28, i64 0}
!148 = !{!97, !93}
!149 = !{!145, !28, i64 0}
!150 = !{!145, !28, i64 4}
!151 = !{!145, !28, i64 8}
!152 = !{!145, !28, i64 12}
!153 = !{!102}
!154 = !{!104, !102}
!155 = !{!"_ZTSN3ozz9animation7offline12RawAnimation8ScaleKeyE", !28, i64 0, !119, i64 4}
!156 = !{!155, !28, i64 0}
!157 = !{!19, !19, i64 0}
!158 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!159 = distinct !{!159, !23}
!160 = distinct !{!160, !23}
!161 = distinct !{!161, !23}
!162 = distinct !{!162, !23}
!163 = distinct !{!163, !23}
!164 = distinct !{!164, !23}
!165 = distinct !{!165, !23}
!166 = distinct !{!166, !23}
!167 = distinct !{!167, !23}
!168 = distinct !{!168, !23}
end_hunk_2
