Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_adaptive_quantization?download=true
inline.NumInlined: 2912
inline.NumDeleted: 1466
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN3jxl17FindBestQuantizerERKNS_11FrameHeaderEPKNS_6Image3IfEERS5_RNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEd:bb.a
  %i.tn = icmp eq i32 %i.tm, 0
  br i1 %i.tn, label %bb.bk, label %bb.cy

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %16, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.to = load i32, ptr %3, align 8, !tbaa !25
  %i.tp = load i32, ptr %i.ti, align 4, !tbaa !26
  call void @llvm.experimental.noalias.scope.decl(metadata !439)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28, !noalias !439
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %12, i32 noundef %i.to, i32 noundef %i.tp, i64 noundef 4) #27, !noalias !439
  %i.tq = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef %i.sd, i64 noundef 0) #27, !noalias !439 ; 2 uses
  %i.tr = icmp eq i32 %i.tq, 0
  %i.ts = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 4 uses
  br i1 %i.tr, label %.critedge.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store i32 %i.tq, ptr %i.ts, align 8, !tbaa !196, !alias.scope !439
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i

.critedge.i.i:                                    ; preds = %bb.bk
  store i32 0, ptr %i.ts, align 8, !tbaa !196, !alias.scope !439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %17, ptr noundef nonnull align 8 dereferenceable(56) %12, i64 24, i1 false)
  %i.tt = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.tu = getelementptr inbounds nuw i8, ptr %12, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.tt, ptr noundef nonnull align 8 dereferenceable(24) %i.tu) #27
  %i.tv = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.tw = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !197, !noalias !439
  store i64 %i.tx, ptr %i.tv, align 8, !tbaa !197, !alias.scope !439
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i: ; preds = %.critedge.i.i, %bb.bl
  %i.ty = getelementptr inbounds nuw i8, ptr %12, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ty) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28, !noalias !439
  %i.tz = load i32, ptr %i.ts, align 8, !tbaa !196 ; 2 uses
  %i.ua = icmp eq i32 %i.tz, 0
  br i1 %i.ua, label %bb.bm, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit237.i

bb.bm:                                            ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 8 dereferenceable(60) %17, i64 24, i1 false)
  %i.ub = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ub, ptr noundef nonnull align 8 dereferenceable(24) %i.uc) #27
  %i.ud = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.ue = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !197, !noalias !440
  store i64 %i.uf, ptr %i.ud, align 8, !tbaa !197, !alias.scope !440
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.ug = load i32, ptr %3, align 8, !tbaa !25, !noalias !441 ; 2 uses
  %i.uh = load i32, ptr %18, align 8, !tbaa !25, !alias.scope !441
  %i.ui = icmp eq i32 %i.ug, %i.uh
  %i.uj = load i32, ptr %i.ti, align 4, !noalias !441 ; 3 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 4, !alias.scope !441
  %i.um = icmp eq i32 %i.uj, %i.ul
  %i.un = select i1 %i.ui, i1 %i.um, i1 false
  br i1 %i.un, label %bb.bn, label %.thread284.i

bb.bn:                                            ; preds = %bb.bm
  %i.uo = icmp ne i32 %i.uj, 0
  %i.up = icmp ne i32 %i.ug, 0
  %or.cond.not20.i.i = and i1 %i.up, %i.uo
  br i1 %or.cond.not20.i.i, label %.lr.ph.i.i, label %.loopexit302.i

.lr.ph.i.i:                                       ; preds = %bb.bn
  %i.uq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ur = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.us = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !22, !alias.scope !441
  %i.uu = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !17, !alias.scope !441
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.lr.ph.i.i
  %.015.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.vf, %bb.bo ] ; 3 uses
  %i.uw = load ptr, ptr %i.uq, align 8, !tbaa !22, !noalias !441
  %i.ux = load i64, ptr %i.ur, align 8, !tbaa !17, !noalias !441
  %i.uy = mul i64 %i.ux, %.015.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.uy ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.uz, i64 64) ]
  %i.va = mul i64 %.015.i.i, %i.uv
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ut, i64 %i.va ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.vb, i64 64) ]
  %i.vc = load i32, ptr %3, align 8, !tbaa !25, !noalias !441
  %i.vd = zext i32 %i.vc to i64
  %i.ve = shl nuw nsw i64 %i.vd, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %i.vb, ptr align 64 %i.uz, i64 %i.ve, i1 false), !noalias !441
  %i.vf = add nuw nsw i64 %.015.i.i, 1            ; 2 uses
  %i.vg = load i32, ptr %i.ti, align 4, !tbaa !26, !noalias !441
  %i.vh = zext i32 %i.vg to i64
  %i.vi = icmp samesign ult i64 %i.vf, %i.vh
  br i1 %i.vi, label %bb.bo, label %.loopexit302.loopexit.i, !llvm.loop !368

.loopexit302.loopexit.i:                          ; preds = %bb.bo
  %.pre340.i = load i32, ptr %i.uk, align 4, !tbaa !26, !noalias !442
  br label %.loopexit302.i

.loopexit302.i:                                   ; preds = %.loopexit302.loopexit.i, %bb.bn
  %i.vj = phi i32 [ %.pre340.i, %.loopexit302.loopexit.i ], [ %i.uj, %bb.bn ] ; 2 uses
  %i.vk = zext i32 %i.vj to i64
  %.not.i.i = icmp eq i32 %i.vj, 0
  br i1 %.not.i.i, label %_ZN3jxl11ImageMinMaxIfEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i, label %.lr.ph25.i.i

.lr.ph25.i.i:                                     ; preds = %.loopexit302.i
  %i.vl = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !22, !noalias !442
  %i.vn = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !17, !noalias !442
  %i.vp = load i32, ptr %18, align 8, !tbaa !25, !noalias !442 ; 4 uses
  %i.vq = zext i32 %i.vp to i64                   ; 2 uses
  %.not30.i.i = icmp eq i32 %i.vp, 0
  br i1 %.not30.i.i, label %_ZN3jxl11ImageMinMaxIfEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i, label %.lr.ph.us.i.i.preheader

.lr.ph.us.i.i.preheader:                          ; preds = %.lr.ph25.i.i
  %xtraiter = and i64 %i.vq, 1
  %i.vr = icmp eq i32 %i.vp, 1
  %unroll_iter = and i64 %i.vq, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod344 = trunc i32 %i.vp to i1
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %.lr.ph.us.i.i.preheader, %._crit_edge.us.i.i
  %.lcssa22.us29.i.i = phi float [ %.lcssa338, %._crit_edge.us.i.i ], [ f0xFF7FFFFF, %.lr.ph.us.i.i.preheader ] ; 2 uses
  %.lcssa.us27.i.i = phi float [ %.lcssa339, %._crit_edge.us.i.i ], [ f0x7F7FFFFF, %.lr.ph.us.i.i.preheader ] ; 2 uses
  %.01723.us.i.i = phi i64 [ %i.wq, %._crit_edge.us.i.i ], [ 0, %.lr.ph.us.i.i.preheader ] ; 2 uses
  %i.vs = mul i64 %.01723.us.i.i, %i.vo
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vm, i64 %i.vs ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.vt, i64 64) ]
  br i1 %i.vr, label %.epil.preheader, label %.lr.ph.us.i.i.new

.lr.ph.us.i.i.new:                                ; preds = %.lr.ph.us.i.i, %.lr.ph.us.i.i.new
  %i.vu = phi float [ %i.wi, %.lr.ph.us.i.i.new ], [ %.lcssa22.us29.i.i, %.lr.ph.us.i.i ] ; 2 uses
  %i.vv = phi float [ %i.wg, %.lr.ph.us.i.i.new ], [ %.lcssa.us27.i.i, %.lr.ph.us.i.i ] ; 2 uses
  %.020.us.i.i = phi i64 [ %i.wj, %.lr.ph.us.i.i.new ], [ 0, %.lr.ph.us.i.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.i.i.new ], [ 0, %.lr.ph.us.i.i ]
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %.020.us.i.i
  %i.vx = load float, ptr %i.vw, align 8, !tbaa !28, !noalias !442 ; 4 uses
  %i.vy = fcmp olt float %i.vx, %i.vv
  %i.vz = select i1 %i.vy, float %i.vx, float %i.vv ; 2 uses
  %i.wa = fcmp olt float %i.vu, %i.vx
  %i.wb = select i1 %i.wa, float %i.vx, float %i.vu ; 2 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %.020.us.i.i
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 4
  %i.we = load float, ptr %i.wd, align 4, !tbaa !28, !noalias !442 ; 4 uses
  %i.wf = fcmp olt float %i.we, %i.vz
  %i.wg = select i1 %i.wf, float %i.we, float %i.vz ; 3 uses
  %i.wh = fcmp olt float %i.wb, %i.we
  %i.wi = select i1 %i.wh, float %i.we, float %i.wb ; 3 uses
  %i.wj = add nuw nsw i64 %.020.us.i.i, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.i.unr-lcssa, label %.lr.ph.us.i.i.new, !llvm.loop !372

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %.lr.ph.us.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.unr-lcssa, %.lr.ph.us.i.i
  %.epil.init = phi float [ %.lcssa22.us29.i.i, %.lr.ph.us.i.i ], [ %i.wi, %._crit_edge.us.i.i.unr-lcssa ] ; 2 uses
  %.epil.init341 = phi float [ %.lcssa.us27.i.i, %.lr.ph.us.i.i ], [ %i.wg, %._crit_edge.us.i.i.unr-lcssa ] ; 2 uses
  %.020.us.i.i.epil.init = phi i64 [ 0, %.lr.ph.us.i.i ], [ %i.wj, %._crit_edge.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod344)
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %.020.us.i.i.epil.init
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !28, !noalias !442 ; 4 uses
  %i.wm = fcmp olt float %i.wl, %.epil.init341
  %i.wn = select i1 %i.wm, float %i.wl, float %.epil.init341
  %i.wo = fcmp olt float %.epil.init, %i.wl
  %i.wp = select i1 %i.wo, float %i.wl, float %.epil.init
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %._crit_edge.us.i.i.unr-lcssa, %.epil.preheader
  %.lcssa339 = phi float [ %i.wg, %._crit_edge.us.i.i.unr-lcssa ], [ %i.wn, %.epil.preheader ] ; 2 uses
  %.lcssa338 = phi float [ %i.wi, %._crit_edge.us.i.i.unr-lcssa ], [ %i.wp, %.epil.preheader ] ; 2 uses
  %i.wq = add nuw nsw i64 %.01723.us.i.i, 1       ; 2 uses
  %exitcond32.not.i.i = icmp eq i64 %i.wq, %i.vk
  br i1 %exitcond32.not.i.i, label %_ZN3jxl11ImageMinMaxIfEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i, label %.lr.ph.us.i.i, !llvm.loop !373

_ZN3jxl11ImageMinMaxIfEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i: ; preds = %._crit_edge.us.i.i, %.lr.ph25.i.i, %.loopexit302.i
  %.0270.i = phi float [ f0x7F7FFFFF, %.loopexit302.i ], [ f0x7F7FFFFF, %.lr.ph25.i.i ], [ %.lcssa339, %._crit_edge.us.i.i ] ; 2 uses
  %.0269.i = phi float [ f0xFF7FFFFF, %.loopexit302.i ], [ f0xFF7FFFFF, %.lr.ph25.i.i ], [ %.lcssa338, %._crit_edge.us.i.i ] ; 2 uses
  %i.wr = fdiv float %.0269.i, %.0270.i
  %i.ws = fdiv float 2.500000e+02, %i.wr
  %i.wt = call noundef float @sqrtf(float noundef %i.ws) #27 ; 4 uses
  %i.wu = fcmp olt float %i.wt, 2.000000e+00
  %.0214.i = select i1 %i.wu, float %i.wt, float 2.000000e+00 ; 2 uses
  %i.wv = fmul float %i.wt, %.0214.i
  %i.ww = fdiv float %.0270.i, %i.wv              ; 15 uses
  %i.wx = fdiv float %i.wt, %.0214.i
  %i.wy = fmul float %.0269.i, %i.wx              ; 8 uses
  %i.wz = fdiv float %i.wy, %i.ww
  %i.xa = fcmp olt float %i.wz, 2.530000e+02
  br i1 %i.xa, label %bb.bp, label %.thread284.i

bb.bp:                                            ; preds = %_ZN3jxl11ImageMinMaxIfEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i
  %i.xb = load i32, ptr %i.rq, align 4, !tbaa !432
  %i.xc = icmp slt i32 %i.xb, 2
  %spec.store.select.i = select i1 %i.xc, i64 4, i64 2 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %19, i64 504 ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.xi = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 4 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.xn = getelementptr inbounds nuw i8, ptr %22, i64 56 ; 3 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.xr = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.xs = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.xt = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.xu = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 3 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.xz = getelementptr inbounds nuw i8, ptr %16, i64 48
  %.not228.i = icmp eq ptr %7, null
  %i.ya = getelementptr inbounds nuw i8, ptr %7, i64 696 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.ye = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.yf = fpext float %i.ry to double
  %i.yg = fadd double %i.yf, -1.000000e+00
  %i.yh = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %4, i64 1016 ; 4 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %4, i64 1020 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.wy, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.i24, %bb.bp
  %indvars.iv.i = phi i64 [ 0, %bb.bp ], [ %indvars.iv.next.i, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.i24 ] ; 6 uses
  %i.yn = call i32 @_ZN3jxl9Quantizer13SetQuantFieldEfRKNS_5PlaneIfEEPNS1_IiEE(ptr noundef nonnull align 8 dereferenceable(72) %i.se, float noundef %.sroa.speculated.i.i, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %i.sf) #27 ; 2 uses
  %i.yo = icmp eq i32 %i.yn, 0
  br i1 %i.yo, label %bb.br, label %.thread284.i

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  call fastcc void @_ZN3jxl12_GLOBAL__N_114RoundtripImageERKNS_11FrameHeaderERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolE(ptr dead_on_unwind noalias writable align 8 %19, ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %6) #29
  %i.yp = load i32, ptr %i.xd, align 8, !tbaa !83 ; 2 uses
  %i.yq = icmp eq i32 %i.yp, 0
  br i1 %i.yq, label %bb.bs, label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.thread.i22

_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.thread.i22: ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %.thread284.i

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @_ZN3jxl11ImageBundleC2EOS0_(ptr noundef nonnull align 8 dereferenceable(504) %20, ptr noundef nonnull align 8 dereferenceable(508) %19) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %21, i8 0, i64 56, i1 false)
  %i.yr = call i32 @_ZN3jxl24JxlButteraugliComparator11CompareWithERKNS_11ImageBundleEPNS_5PlaneIfEEPf(ptr noundef nonnull align 8 dereferenceable(116) %14, ptr noundef nonnull align 8 dereferenceable(504) %20, ptr noundef nonnull %21, ptr noundef nonnull %i.a) #27 ; 2 uses
  %i.ys = icmp eq i32 %i.yr, 0
  br i1 %i.ys, label %bb.bt, label %.loopexit383.i

bb.bt:                                            ; preds = %bb.bs
  %.pre342.i = load i32, ptr %i.xe, align 4, !tbaa !26 ; 5 uses
  br i1 %i.sy, label %_ZN3jxl10ScaleImageIfEEvT_PNS_5PlaneIS1_EE.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.yt = load float, ptr %i.a, align 4, !tbaa !28
  %i.yu = fneg float %i.yt
  store float %i.yu, ptr %i.a, align 4, !tbaa !28
  %i.yv = zext i32 %.pre342.i to i64
  %.not.i231.i = icmp eq i32 %.pre342.i, 0
  br i1 %.not.i231.i, label %_ZN3jxl10ScaleImageIfEEvT_PNS_5PlaneIS1_EE.exit.i, label %.lr.ph16.i.i

.lr.ph16.i.i:                                     ; preds = %bb.bu
  %i.yw = load ptr, ptr %i.xf, align 8, !tbaa !22
  %i.yx = load i64, ptr %i.xg, align 8, !tbaa !17
  %i.yy = load i32, ptr %21, align 8, !tbaa !25   ; 3 uses
  %i.yz = zext i32 %i.yy to i64                   ; 3 uses
  %.not18.i.i = icmp eq i32 %i.yy, 0
  br i1 %.not18.i.i, label %_ZN3jxl10ScaleImageIfEEvT_PNS_5PlaneIS1_EE.exit.i, label %.lr.ph.us.i232.i.preheader

.lr.ph.us.i232.i.preheader:                       ; preds = %.lr.ph16.i.i
  %min.iters.check280 = icmp ult i32 %i.yy, 8
  %n.vec282 = and i64 %i.yz, 4294967288           ; 3 uses
  %cmp.n289 = icmp eq i64 %n.vec282, %i.yz
  br label %.lr.ph.us.i232.i

.lr.ph.us.i232.i:                                 ; preds = %.lr.ph.us.i232.i.preheader, %._crit_edge.us.i234.i
  %.01214.us.i.i = phi i64 [ %i.zl, %._crit_edge.us.i234.i ], [ 0, %.lr.ph.us.i232.i.preheader ] ; 2 uses
  %i.za = mul i64 %.01214.us.i.i, %i.yx
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.za ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.zb, i64 64) ]
  br i1 %min.iters.check280, label %scalar.ph279.preheader, label %vector.body283

vector.body283:                                   ; preds = %.lr.ph.us.i232.i, %vector.body283
  %index284 = phi i64 [ %index.next287, %vector.body283 ], [ 0, %.lr.ph.us.i232.i ] ; 2 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %index284 ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16 ; 2 uses
  %wide.load285 = load <4 x float>, ptr %i.zc, align 32, !tbaa !28
  %wide.load286 = load <4 x float>, ptr %i.zd, align 16, !tbaa !28
  %i.ze = fneg <4 x float> %wide.load285
  %i.zf = fneg <4 x float> %wide.load286
  store <4 x float> %i.ze, ptr %i.zc, align 32, !tbaa !28
  store <4 x float> %i.zf, ptr %i.zd, align 16, !tbaa !28
  %index.next287 = add nuw i64 %index284, 8       ; 2 uses
  %i.zg = icmp eq i64 %index.next287, %n.vec282
  br i1 %i.zg, label %middle.block288, label %vector.body283, !llvm.loop !374

middle.block288:                                  ; preds = %vector.body283
  br i1 %cmp.n289, label %._crit_edge.us.i234.i, label %scalar.ph279.preheader

scalar.ph279.preheader:                           ; preds = %.lr.ph.us.i232.i, %middle.block288
  %.013.us.i.i.ph = phi i64 [ 0, %.lr.ph.us.i232.i ], [ %n.vec282, %middle.block288 ]
  br label %scalar.ph279

scalar.ph279:                                     ; preds = %scalar.ph279.preheader, %scalar.ph279
  %.013.us.i.i = phi i64 [ %i.zk, %scalar.ph279 ], [ %.013.us.i.i.ph, %scalar.ph279.preheader ] ; 2 uses
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %.013.us.i.i ; 2 uses
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !28
  %i.zj = fneg float %i.zi
  store float %i.zj, ptr %i.zh, align 4, !tbaa !28
  %i.zk = add nuw nsw i64 %.013.us.i.i, 1         ; 2 uses
  %exitcond.not.i233.i = icmp eq i64 %i.zk, %i.yz
  br i1 %exitcond.not.i233.i, label %._crit_edge.us.i234.i, label %scalar.ph279, !llvm.loop !375

._crit_edge.us.i234.i:                            ; preds = %scalar.ph279, %middle.block288
  %i.zl = add nuw nsw i64 %.01214.us.i.i, 1       ; 2 uses
  %exitcond20.not.i.i = icmp eq i64 %i.zl, %i.yv
  br i1 %exitcond20.not.i.i, label %_ZN3jxl10ScaleImageIfEEvT_PNS_5PlaneIS1_EE.exit.i, label %.lr.ph.us.i232.i, !llvm.loop !376

_ZN3jxl10ScaleImageIfEEvT_PNS_5PlaneIS1_EE.exit.i: ; preds = %._crit_edge.us.i234.i, %.lr.ph16.i.i, %bb.bu, %bb.bt
  %i.zm = phi i32 [ %.pre342.i, %bb.bt ], [ %.pre342.i, %.lr.ph16.i.i ], [ 0, %bb.bu ], [ %.pre342.i, %._crit_edge.us.i234.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.zn = load i32, ptr %i.ru, align 4, !tbaa !433
  %i.zo = shl nsw i32 %i.zn, 3                    ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.zp = load i32, ptr %21, align 8, !tbaa !25, !noalias !443
  %i.zq = zext i32 %i.zp to i64
  %i.zr = sext i32 %i.zo to i64                   ; 3 uses
  %i.zs = add nsw i64 %i.zr, -1                   ; 2 uses
  %i.zt = add nsw i64 %i.zs, %i.zq
  %i.zu = udiv i64 %i.zt, %i.zr                   ; 3 uses
  %i.zv = trunc i64 %i.zu to i32                  ; 2 uses
  %i.zw = zext i32 %i.zm to i64
  %i.zx = add nsw i64 %i.zs, %i.zw
  %i.zy = udiv i64 %i.zx, %i.zr                   ; 3 uses
  %i.zz = trunc i64 %i.zy to i32                  ; 2 uses
  %i.aaa = load ptr, ptr %i.xh, align 8, !tbaa !198, !noalias !443
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !443
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %sext.mask.i.i = and i64 %i.zu, 2147483648
  %i.aab = icmp eq i64 %sext.mask.i.i, 0
  %sext106.mask.i.i = and i64 %i.zy, 2147483648
  %i.aac = icmp eq i64 %sext106.mask.i.i, 0
  %or.cond.i.i = select i1 %i.aab, i1 %i.aac, i1 false
  br i1 %or.cond.i.i, label %bb.bv, label %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.thread.i

bb.bv:                                            ; preds = %_ZN3jxl10ScaleImageIfEEvT_PNS_5PlaneIS1_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !445
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %9, i32 noundef %i.zv, i32 noundef %i.zz, i64 noundef 4) #27, !noalias !445
  %i.aad = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef %i.aaa, i64 noundef 0) #27, !noalias !445 ; 2 uses
  %i.aae = icmp eq i32 %i.aad, 0
  br i1 %i.aae, label %.critedge.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i32 %i.aad, ptr %i.xi, align 8, !tbaa !196, !alias.scope !444, !noalias !443
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i.i

.critedge.i.i.i:                                  ; preds = %bb.bv
  store i32 0, ptr %i.xi, align 8, !tbaa !196, !alias.scope !444, !noalias !443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %10, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 24, i1 false), !noalias !443
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.xj, ptr noundef nonnull align 8 dereferenceable(24) %i.xk) #27, !noalias !443
  %i.aaf = load i64, ptr %i.xm, align 8, !tbaa !197, !noalias !445
  store i64 %i.aaf, ptr %i.xl, align 8, !tbaa !197, !alias.scope !444, !noalias !443
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i.i

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i.i: ; preds = %.critedge.i.i.i, %bb.bw
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.xk) #27, !noalias !443
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !445
  %.pre.i.i = load i32, ptr %i.xi, align 8, !tbaa !196, !noalias !443 ; 2 uses
  %i.aag = icmp eq i32 %.pre.i.i, 0
  br i1 %i.aag, label %.critedge.i235.i, label %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.thread.i

_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.thread.i: ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i.i, %_ZN3jxl10ScaleImageIfEEvT_PNS_5PlaneIS1_EE.exit.i
  %i.aah = phi i32 [ %.pre.i.i, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i.i ], [ 1, %_ZN3jxl10ScaleImageIfEEvT_PNS_5PlaneIS1_EE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !443
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.jt1.i

.critedge.i235.i:                                 ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28, !noalias !443
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(60) %10, i64 24, i1 false), !noalias !443
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.xo, ptr noundef nonnull align 8 dereferenceable(24) %i.xj) #27, !noalias !443
  %i.aai = load i64, ptr %i.xl, align 8, !tbaa !197, !noalias !447
  store i64 %i.aai, ptr %i.xp, align 8, !tbaa !197, !alias.scope !446, !noalias !443
  %i.aaj = load i64, ptr %i.xq, align 8, !tbaa !17, !noalias !443 ; 2 uses
  %i.aak = lshr i64 %i.aaj, 2
  %i.aal = icmp sgt i32 %i.zz, 0
  br i1 %i.aal, label %.lr.ph156.i.i, label %._crit_edge157.i.i

.lr.ph156.i.i:                                    ; preds = %.critedge.i235.i
  %i.aam = load ptr, ptr %i.xr, align 8, !tbaa !22, !noalias !443
  %i.aan = load i64, ptr %i.xs, align 8, !tbaa !17, !noalias !443
  %i.aao = load ptr, ptr %i.xt, align 8, !tbaa !22, !noalias !443
  %i.aap = icmp sgt i32 %i.zv, 0
  br i1 %i.aap, label %.lr.ph.us162.preheader.i.i, label %._crit_edge157.i.i

.lr.ph.us162.preheader.i.i:                       ; preds = %.lr.ph156.i.i
  %i.aaq = and i64 %i.zu, 2147483647
  %i.aar = and i64 %i.zy, 2147483647
  br label %.lr.ph.us162.i.i

.lr.ph.us162.i.i:                                 ; preds = %._crit_edge154.us.i.i, %.lr.ph.us162.preheader.i.i
  %indvars.iv187.i.i = phi i64 [ 0, %.lr.ph.us162.preheader.i.i ], [ %indvars.iv.next188.i.i, %._crit_edge154.us.i.i ] ; 4 uses
  %indvars.iv.i.i = phi i32 [ 0, %.lr.ph.us162.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge154.us.i.i ] ; 2 uses
  %smax177.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv.i.i, i32 0)
  %i.aas = zext nneg i32 %smax177.i.i to i64
  %i.aat = mul i64 %indvars.iv187.i.i, %i.aan
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aam, i64 %i.aat ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aau, i64 64) ]
  %i.aav = mul i64 %indvars.iv187.i.i, %i.aaj
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.aav ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aaw, i64 64) ]
  %i.aax = trunc i64 %indvars.iv187.i.i to i32    ; 2 uses
  %i.aay = mul i32 %i.zo, %i.aax
  %.sroa.speculated120.us.i.i = call i32 @llvm.smax.i32(i32 %i.aay, i32 0)
  %i.aaz = load i32, ptr %i.xe, align 4
  %i.aba = load i32, ptr %21, align 8
  %i.abb = load ptr, ptr %i.xf, align 8
  %i.abc = load i64, ptr %i.xg, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit.us.i.i, %.lr.ph.us162.i.i
  %indvars.iv184.i.i = phi i64 [ 0, %.lr.ph.us162.i.i ], [ %indvars.iv.next185.i.i, %.loopexit.us.i.i ] ; 4 uses
  %indvars.iv170.i.i = phi i32 [ 0, %.lr.ph.us162.i.i ], [ %indvars.iv.next171.i.i, %.loopexit.us.i.i ] ; 2 uses
  %smax172.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv170.i.i, i32 0)
  %i.abd = zext nneg i32 %smax172.i.i to i64
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aau, i64 %indvars.iv184.i.i
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !24, !noalias !443 ; 2 uses
  %i.abg = trunc i8 %i.abf to i1
  br i1 %i.abg, label %bb.by, label %.loopexit.us.i.i

bb.by:                                            ; preds = %bb.bx
  %i.abh = lshr i8 %i.abf, 1
  %i.abi = zext nneg i8 %i.abh to i64             ; 3 uses
  %i.abj = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.abi
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !24, !noalias !443 ; 2 uses
  %i.abl = zext i8 %i.abk to i32
  %i.abm = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.abi
  %i.abn = load i8, ptr %i.abm, align 1, !tbaa !24, !noalias !443 ; 2 uses
  %i.abo = zext i8 %i.abn to i32
  %i.abp = add nuw i32 %i.abo, %i.aax
  %i.abq = mul i32 %i.abp, %i.zo
  %.sroa.speculated115.us.i.i = call i32 @llvm.smin.i32(i32 %i.abq, i32 %i.aaz) ; 2 uses
  %i.abr = trunc i64 %indvars.iv184.i.i to i32    ; 2 uses
  %i.abs = add nuw i32 %i.abl, %i.abr
  %i.abt = mul i32 %i.abs, %i.zo
  %.sroa.speculated.us.i.i = call i32 @llvm.smin.i32(i32 %i.abt, i32 %i.aba) ; 2 uses
  %i.abu = icmp slt i32 %.sroa.speculated120.us.i.i, %.sroa.speculated115.us.i.i
  br i1 %i.abu, label %.lr.ph145.us.i.i, label %.preheader.us.preheader.i.i

.lr.ph145.us.i.i:                                 ; preds = %bb.by
  %i.abv = mul i32 %i.zo, %i.abr
  %.sroa.speculated110.us.i.i = call i32 @llvm.smax.i32(i32 %i.abv, i32 0)
  %i.abw = icmp slt i32 %.sroa.speculated110.us.i.i, %.sroa.speculated.us.i.i
  br i1 %i.abw, label %.lr.ph.us.us.preheader.i.i, label %.preheader.us.preheader.i.i

.lr.ph.us.us.preheader.i.i:                       ; preds = %.lr.ph145.us.i.i
  %sext180.i.i = zext nneg i32 %.sroa.speculated115.us.i.i to i64
  %sext175.i.i = zext nneg i32 %.sroa.speculated.us.i.i to i64
  br label %.lr.ph.us.us.i.i

.lr.ph.us.us.i.i:                                 ; preds = %._crit_edge.us.us.i.i, %.lr.ph.us.us.preheader.i.i
  %indvars.iv178.i.i = phi i64 [ %i.aas, %.lr.ph.us.us.preheader.i.i ], [ %indvars.iv.next179.i.i, %._crit_edge.us.us.i.i ] ; 2 uses
  %.098142.us.us.i.i = phi double [ 0.000000e+00, %.lr.ph.us.us.preheader.i.i ], [ %i.acg, %._crit_edge.us.us.i.i ]
  %.099141.us.us.i.i = phi float [ 0.000000e+00, %.lr.ph.us.us.preheader.i.i ], [ %i.acf, %._crit_edge.us.us.i.i ]
  %i.abx = mul i64 %indvars.iv178.i.i, %i.abc
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.abx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aby, i64 64) ]
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.lr.ph.us.us.i.i
  %indvars.iv173.i.i = phi i64 [ %indvars.iv.next174.i.i, %bb.bz ], [ %i.abd, %.lr.ph.us.us.i.i ] ; 2 uses
  %.1138.us.us.i.i = phi double [ %i.acg, %bb.bz ], [ %.098142.us.us.i.i, %.lr.ph.us.us.i.i ]
  %.1100137.us.us.i.i = phi float [ %i.acf, %bb.bz ], [ %.099141.us.us.i.i, %.lr.ph.us.us.i.i ]
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.aby, i64 %indvars.iv173.i.i
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !28, !noalias !443 ; 2 uses
  %i.acb = fmul float %i.aca, %i.aca              ; 2 uses
  %i.acc = fmul float %i.acb, %i.acb              ; 2 uses
  %i.acd = fmul float %i.acc, %i.acc              ; 2 uses
  %i.ace = fmul float %i.acd, %i.acd
  %i.acf = fadd float %.1100137.us.us.i.i, %i.ace ; 3 uses
  %i.acg = fadd double %.1138.us.us.i.i, 1.000000e+00 ; 3 uses
  %indvars.iv.next174.i.i = add nuw nsw i64 %indvars.iv173.i.i, 1 ; 2 uses
  %i.ach = icmp samesign ult i64 %indvars.iv.next174.i.i, %sext175.i.i
  br i1 %i.ach, label %bb.bz, label %._crit_edge.us.us.i.i, !llvm.loop !383

._crit_edge.us.us.i.i:                            ; preds = %bb.bz
  %indvars.iv.next179.i.i = add nuw nsw i64 %indvars.iv178.i.i, 1 ; 2 uses
  %i.aci = icmp samesign ult i64 %indvars.iv.next179.i.i, %sext180.i.i
  br i1 %i.aci, label %.lr.ph.us.us.i.i, label %._crit_edge146.us.loopexit.i.i, !llvm.loop !384

._crit_edge146.us.loopexit.i.i:                   ; preds = %._crit_edge.us.us.i.i
  %i.acj = fpext float %i.acf to double
  br label %.preheader.us.preheader.i.i

.preheader.us.i.i:                                ; preds = %.preheader.us.preheader.i.i, %._crit_edge.us161.i.i
  %.093151.us.i.i = phi i64 [ %i.acr, %._crit_edge.us161.i.i ], [ 0, %.preheader.us.preheader.i.i ] ; 2 uses
  %i.ack = mul i64 %.093151.us.i.i, %i.aak
  %gep.us.i.i = getelementptr [4 x i8], ptr %i.acx, i64 %i.ack ; 2 uses
  br i1 %min.iters.check268.not, label %vector.body273, label %scalar.ph267.preheader

vector.body273:                                   ; preds = %.preheader.us.i.i, %vector.body273
  %index274 = phi i64 [ %index.next275, %vector.body273 ], [ 0, %.preheader.us.i.i ] ; 2 uses
  %i.acl = getelementptr [4 x i8], ptr %gep.us.i.i, i64 %index274 ; 2 uses
  %i.acm = getelementptr i8, ptr %i.acl, i64 16
  store <4 x float> %broadcast.splat272, ptr %i.acl, align 4, !tbaa !28, !noalias !443
  store <4 x float> %broadcast.splat272, ptr %i.acm, align 4, !tbaa !28, !noalias !443
  %index.next275 = add nuw i64 %index274, 8       ; 2 uses
  %i.acn = icmp eq i64 %index.next275, %n.vec270
  br i1 %i.acn, label %middle.block276, label %vector.body273, !llvm.loop !385

middle.block276:                                  ; preds = %vector.body273
  br i1 %cmp.n277, label %._crit_edge.us161.i.i, label %scalar.ph267.preheader

scalar.ph267.preheader:                           ; preds = %.preheader.us.i.i, %middle.block276
  %.0150.us.i.i.ph = phi i64 [ 0, %.preheader.us.i.i ], [ %n.vec270, %middle.block276 ]
  br label %scalar.ph267

scalar.ph267:                                     ; preds = %scalar.ph267.preheader, %scalar.ph267
  %.0150.us.i.i = phi i64 [ %i.acp, %scalar.ph267 ], [ %.0150.us.i.i.ph, %scalar.ph267.preheader ] ; 2 uses
  %i.aco = getelementptr [4 x i8], ptr %gep.us.i.i, i64 %.0150.us.i.i
  store float %i.acw, ptr %i.aco, align 4, !tbaa !28, !noalias !443
  %i.acp = add nuw nsw i64 %.0150.us.i.i, 1       ; 2 uses
  %exitcond.not.i236.i = icmp eq i64 %i.acp, %umax.i.i
  br i1 %exitcond.not.i236.i, label %._crit_edge.us161.i.i, label %scalar.ph267, !llvm.loop !386

.loopexit.us.i.i:                                 ; preds = %._crit_edge.us161.i.i, %bb.bx
  %indvars.iv.next185.i.i = add nuw nsw i64 %indvars.iv184.i.i, 1 ; 2 uses
  %i.acq = icmp samesign ult i64 %indvars.iv.next185.i.i, %i.aaq
  %indvars.iv.next171.i.i = add i32 %indvars.iv170.i.i, %i.zo
  br i1 %i.acq, label %bb.bx, label %._crit_edge154.us.i.i, !llvm.loop !387

._crit_edge.us161.i.i:                            ; preds = %scalar.ph267, %middle.block276
  %i.acr = add nuw nsw i64 %.093151.us.i.i, 1     ; 2 uses
  %exitcond183.not.i.i = icmp eq i64 %i.acr, %umax182.i.i
  br i1 %exitcond183.not.i.i, label %.loopexit.us.i.i, label %.preheader.us.i.i, !llvm.loop !388

.preheader.us.preheader.i.i:                      ; preds = %._crit_edge146.us.loopexit.i.i, %.lr.ph145.us.i.i, %bb.by
  %.099.lcssa.us.i.i = phi double [ 0.000000e+00, %bb.by ], [ %i.acj, %._crit_edge146.us.loopexit.i.i ], [ 0.000000e+00, %.lr.ph145.us.i.i ]
  %.098.lcssa.us.i.i = phi double [ 0.000000e+00, %bb.by ], [ %i.acg, %._crit_edge146.us.loopexit.i.i ], [ 0.000000e+00, %.lr.ph145.us.i.i ] ; 2 uses
  %i.acs = fcmp oeq double %.098.lcssa.us.i.i, 0.000000e+00
  %spec.store.select.us.i.i = select i1 %i.acs, double 1.000000e+00, double %.098.lcssa.us.i.i
  %i.act = fdiv double %.099.lcssa.us.i.i, %spec.store.select.us.i.i
  %i.acu = call noundef double @pow(double noundef %i.act, double noundef 6.250000e-02) #27, !noalias !443
  %i.acv = fmul double %i.acu, f0x3FF3333340000000
  %i.acw = fptrunc double %i.acv to float         ; 3 uses
  %i.acx = getelementptr [4 x i8], ptr %i.aaw, i64 %indvars.iv184.i.i ; 2 uses
  store float %i.acw, ptr %i.acx, align 4, !tbaa !28, !noalias !443
  %i.acy = call i8 @llvm.umax.i8(i8 %i.abk, i8 1)
  %umax.i.i = zext i8 %i.acy to i64               ; 3 uses
  %i.acz = call i8 @llvm.umax.i8(i8 %i.abn, i8 1)
  %umax182.i.i = zext i8 %i.acz to i64
  %i.ada = shl nuw i64 1, %i.abi
  %i.adb = and i64 %i.ada, 786431
  %min.iters.check268.not = icmp eq i64 %i.adb, 0
  %n.vec270 = and i64 %umax.i.i, 248              ; 3 uses
  %broadcast.splatinsert271 = insertelement <4 x float> poison, float %i.acw, i64 0
  %broadcast.splat272 = shufflevector <4 x float> %broadcast.splatinsert271, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n277 = icmp eq i64 %n.vec270, %umax.i.i
  br label %.preheader.us.i.i

._crit_edge154.us.i.i:                            ; preds = %.loopexit.us.i.i
  %indvars.iv.next188.i.i = add nuw nsw i64 %indvars.iv187.i.i, 1 ; 2 uses
  %i.adc = icmp samesign ult i64 %indvars.iv.next188.i.i, %i.aar
  %indvars.iv.next.i.i = add i32 %indvars.iv.i.i, %i.zo
  br i1 %i.adc, label %.lr.ph.us162.i.i, label %._crit_edge157.i.i, !llvm.loop !389

._crit_edge157.i.i:                               ; preds = %._crit_edge154.us.i.i, %.lr.ph156.i.i, %.critedge.i235.i
  store i32 0, ptr %i.xn, align 8, !tbaa !196, !alias.scope !443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %22, ptr noundef nonnull align 8 dereferenceable(56) %11, i64 24, i1 false)
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.xu, ptr noundef nonnull align 8 dereferenceable(24) %i.xo) #27
  %i.add = load i64, ptr %i.xp, align 8, !tbaa !197, !noalias !443
  store i64 %i.add, ptr %i.xv, align 8, !tbaa !197, !alias.scope !443
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.xo) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !443
  %.pr.i.i = load i32, ptr %i.xi, align 8, !tbaa !196, !noalias !443
  %i.ade = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ade, label %bb.ca, label %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.i

bb.ca:                                            ; preds = %._crit_edge157.i.i
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.xj) #27
  br label %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.i

_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.i: ; preds = %bb.ca, %._crit_edge157.i.i
  %.pr381.i = load i32, ptr %i.xn, align 8, !tbaa !196 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !443
  %i.adf = icmp eq i32 %.pr381.i, 0
  br i1 %i.adf, label %bb.cb, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.jt1.i

bb.cb:                                            ; preds = %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %23, ptr noundef nonnull align 8 dereferenceable(60) %22, i64 24, i1 false)
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.xw, ptr noundef nonnull align 8 dereferenceable(24) %i.xu) #27
  %i.adg = load i64, ptr %i.xv, align 8, !tbaa !197, !noalias !448
  store i64 %i.adg, ptr %i.xx, align 8, !tbaa !197, !alias.scope !448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %23, i64 24, i1 false)
  %i.adh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.xy, ptr noundef nonnull align 8 dereferenceable(24) %i.xw) #27 ; 0 uses
  %i.adi = load i64, ptr %i.xx, align 8, !tbaa !197
  store i64 %i.adi, ptr %i.xz, align 8, !tbaa !197
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.xw) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br i1 %.not228.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.adj = load i32, ptr %i.ya, align 8, !tbaa !451
  %i.adk = add nsw i32 %i.adj, 1
  store i32 %i.adk, ptr %i.ya, align 8, !tbaa !451
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.adl = icmp eq i64 %indvars.iv.i, %spec.store.select.i
  br i1 %i.adl, label %bb.cs, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ym, i8 0, i64 48, i1 false)
  store <2 x double> splat (double 2.000000e-01), ptr %i.b, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.adm = icmp eq i64 %indvars.iv.i, 1
  %.pre = load i32, ptr %i.ti, align 4, !tbaa !26 ; 5 uses
  br i1 %i.adm, label %.preheader300.i, label %.loopexit301.i

.preheader300.i:                                  ; preds = %bb.ce
  %i.adn = zext i32 %.pre to i64                  ; 2 uses
  %.not322.i = icmp eq i32 %.pre, 0
  br i1 %.not322.i, label %.loopexit301.i, label %.lr.ph309.i

.lr.ph309.i:                                      ; preds = %.preheader300.i
  %i.ado = load ptr, ptr %i.yb, align 8, !tbaa !22 ; 3 uses
  %i.adp = load i64, ptr %i.yc, align 8, !tbaa !17 ; 3 uses
  %i.adq = load ptr, ptr %i.yd, align 8, !tbaa !22 ; 3 uses
  %i.adr = load i64, ptr %i.ye, align 8, !tbaa !17 ; 3 uses
  %i.ads = load i32, ptr %3, align 8, !tbaa !25   ; 3 uses
  %i.adt = zext i32 %i.ads to i64                 ; 4 uses
  %.not323.i = icmp eq i32 %i.ads, 0
  br i1 %.not323.i, label %.loopexit301.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph309.i
  %i.adu = add nsw i64 %i.adn, -1                 ; 2 uses
  %i.adv = mul i64 %i.adp, %i.adu
  %i.adw = shl nuw nsw i64 %i.adt, 2              ; 2 uses
  %i.adx = getelementptr i8, ptr %i.ado, i64 %i.adv
  %scevgep = getelementptr i8, ptr %i.adx, i64 %i.adw
  %i.ady = mul i64 %i.adr, %i.adu
  %i.adz = getelementptr i8, ptr %i.adq, i64 %i.ady
  %scevgep258 = getelementptr i8, ptr %i.adz, i64 %i.adw
  %min.iters.check = icmp ult i32 %i.ads, 4
  %bound0 = icmp ult ptr %i.ado, %scevgep258
  %bound1 = icmp ult ptr %i.adq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.aea = or i64 %i.adr, %i.adp
  %i.aeb = icmp slt i64 %i.aea, 0
  %i.aec = or i1 %found.conflict, %i.aeb
  %n.vec = and i64 %i.adt, 4294967292             ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.adt
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.0212308.us.i = phi i64 [ %i.agb, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %i.aed = mul i64 %.0212308.us.i, %i.adp
  %i.aee = getelementptr inbounds nuw i8, ptr %i.ado, i64 %i.aed ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aee, i64 64) ]
  %i.aef = mul i64 %.0212308.us.i, %i.adr
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.aef ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aeg, i64 64) ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.aec
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.i, %pred.store.continue266
  %index = phi i64 [ %index.next, %pred.store.continue266 ], [ 0, %.lr.ph.us.i ] ; 6 uses
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.aee, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.aeh, align 16, !tbaa !28, !alias.scope !452, !noalias !453
  %i.aei = fpext <4 x float> %wide.load to <4 x double> ; 2 uses
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %index
  %wide.load260 = load <4 x float>, ptr %i.aej, align 16, !tbaa !28, !alias.scope !453
  %i.aek = fpext <4 x float> %wide.load260 to <4 x double>
  %i.ael = fmul <4 x double> %i.aek, splat (double 6.000000e-01)
  %i.aem = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aei, <4 x double> splat (double 4.000000e-01), <4 x double> %i.ael) ; 2 uses
  %i.aen = fcmp ogt <4 x double> %i.aem, %i.aei   ; 4 uses
  %i.aeo = fptrunc <4 x double> %i.aem to <4 x float> ; 2 uses
  %i.aep = fcmp olt <4 x float> %broadcast.splat, %i.aeo
  %i.aeq = select <4 x i1> %i.aep, <4 x float> %broadcast.splat, <4 x float> %i.aeo ; 4 uses
  %i.aer = extractelement <4 x i1> %i.aen, i64 0
  br i1 %i.aer, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.aes = extractelement <4 x float> %i.aeq, i64 0 ; 2 uses
  %i.aet = fcmp olt float %i.aes, %i.ww
  %i.aeu = select i1 %i.aet, float %i.ww, float %i.aes
  store float %i.aeu, ptr %i.aeh, align 16, !tbaa !28, !alias.scope !452, !noalias !453
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.aev = extractelement <4 x i1> %i.aen, i64 1
  br i1 %i.aev, label %pred.store.if261, label %pred.store.continue262

pred.store.if261:                                 ; preds = %pred.store.continue
  %i.aew = extractelement <4 x float> %i.aeq, i64 1 ; 2 uses
  %i.aex = fcmp olt float %i.aew, %i.ww
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.aee, i64 %index
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 4
  %i.afa = select i1 %i.aex, float %i.ww, float %i.aew
  store float %i.afa, ptr %i.aez, align 4, !tbaa !28, !alias.scope !452, !noalias !453
  br label %pred.store.continue262

pred.store.continue262:                           ; preds = %pred.store.if261, %pred.store.continue
  %i.afb = extractelement <4 x i1> %i.aen, i64 2
  br i1 %i.afb, label %pred.store.if263, label %pred.store.continue264

pred.store.if263:                                 ; preds = %pred.store.continue262
  %i.afc = extractelement <4 x float> %i.aeq, i64 2 ; 2 uses
  %i.afd = fcmp olt float %i.afc, %i.ww
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.aee, i64 %index
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 8
  %i.afg = select i1 %i.afd, float %i.ww, float %i.afc
  store float %i.afg, ptr %i.aff, align 8, !tbaa !28, !alias.scope !452, !noalias !453
  br label %pred.store.continue264

pred.store.continue264:                           ; preds = %pred.store.if263, %pred.store.continue262
  %i.afh = extractelement <4 x i1> %i.aen, i64 3
  br i1 %i.afh, label %pred.store.if265, label %pred.store.continue266

pred.store.if265:                                 ; preds = %pred.store.continue264
  %i.afi = extractelement <4 x float> %i.aeq, i64 3 ; 2 uses
  %i.afj = fcmp olt float %i.afi, %i.ww
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.aee, i64 %index
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 12
  %i.afm = select i1 %i.afj, float %i.ww, float %i.afi
  store float %i.afm, ptr %i.afl, align 4, !tbaa !28, !alias.scope !452, !noalias !453
  br label %pred.store.continue266

pred.store.continue266:                           ; preds = %pred.store.if265, %pred.store.continue264
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.afn = icmp eq i64 %index.next, %n.vec
  br i1 %i.afn, label %middle.block, label %vector.body, !llvm.loop !395

middle.block:                                     ; preds = %pred.store.continue266
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.i, %middle.block
  %.0211307.us.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.i ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.cg
  %.0211307.us.i = phi i64 [ %i.aga, %bb.cg ], [ %.0211307.us.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.aee, i64 %.0211307.us.i ; 2 uses
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !28
  %i.afq = fpext float %i.afp to double           ; 2 uses
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %.0211307.us.i
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !28
  %i.aft = fpext float %i.afs to double
  %i.afu = fmul double %i.aft, 6.000000e-01
  %i.afv = call double @llvm.fmuladd.f64(double %i.afq, double 4.000000e-01, double %i.afu) ; 2 uses
  %i.afw = fcmp ogt double %i.afv, %i.afq
  br i1 %i.afw, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %scalar.ph
  %i.afx = fptrunc double %i.afv to float         ; 2 uses
  %i.afy = fcmp olt float %i.wy, %i.afx
  %storemerge.us.i = select i1 %i.afy, float %i.wy, float %i.afx ; 2 uses
  %i.afz = fcmp olt float %storemerge.us.i, %i.ww
  %spec.store.select229.us.i = select i1 %i.afz, float %i.ww, float %storemerge.us.i
  store float %spec.store.select229.us.i, ptr %i.afo, align 4, !tbaa !28
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %scalar.ph
  %i.aga = add nuw nsw i64 %.0211307.us.i, 1      ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %i.aga, %i.adt
  br i1 %exitcond.not.i25, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !396

._crit_edge.us.i:                                 ; preds = %bb.cg, %middle.block
  %i.agb = add nuw nsw i64 %.0212308.us.i, 1      ; 2 uses
  %exitcond335.not.i = icmp eq i64 %i.agb, %i.adn
  br i1 %exitcond335.not.i, label %.loopexit301.i, label %.lr.ph.us.i, !llvm.loop !397

.loopexit301.i:                                   ; preds = %._crit_edge.us.i, %.lr.ph309.i, %.preheader300.i, %bb.ce
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.agd = load double, ptr %i.agc, align 8, !tbaa !455
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.agf = load double, ptr %i.age, align 8, !tbaa !455
  %i.agg = call double @llvm.fmuladd.f64(double %i.yg, double %i.agf, double %i.agd) ; 2 uses
  %i.agh = fcmp olt double %i.agg, 0.000000e+00
  %spec.store.select2.i = select i1 %i.agh, double 0.000000e+00, double %i.agg ; 2 uses
  %i.agi = fcmp oeq double %spec.store.select2.i, 0.000000e+00
  %.not326.i = icmp eq i32 %.pre, 0               ; 2 uses
  br i1 %i.agi, label %.preheader.i, label %.preheader298.i

.preheader298.i:                                  ; preds = %.loopexit301.i
  br i1 %.not326.i, label %.loopexit.i, label %.lr.ph312.preheader.i

.lr.ph312.preheader.i:                            ; preds = %.preheader298.i
  %.pre343.i = load i32, ptr %3, align 8, !tbaa !25
  br label %.lr.ph312.i

.preheader.i:                                     ; preds = %.loopexit301.i
  br i1 %.not326.i, label %.loopexit.i, label %.lr.ph318.preheader.i

.lr.ph318.preheader.i:                            ; preds = %.preheader.i
  %.pre348.i = load i32, ptr %3, align 8, !tbaa !25
  br label %.lr.ph318.i

.lr.ph318.i:                                      ; preds = %._crit_edge316.i, %.lr.ph318.preheader.i
  %i.agj = phi i32 [ %i.agt, %._crit_edge316.i ], [ %.pre, %.lr.ph318.preheader.i ]
  %i.agk = phi i32 [ %i.agu, %._crit_edge316.i ], [ %.pre348.i, %.lr.ph318.preheader.i ]
  %.0209317.i = phi i64 [ %i.agv, %._crit_edge316.i ], [ 0, %.lr.ph318.preheader.i ] ; 3 uses
  %i.agl = load ptr, ptr %i.yh, align 8, !tbaa !22
  %i.agm = load i64, ptr %i.yi, align 8, !tbaa !17
  %i.agn = mul i64 %i.agm, %.0209317.i
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agl, i64 %i.agn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ago, i64 64) ]
end_hunk_0
begin_hunk_1_@_ZN3jxl17FindBestQuantizerERKNS_11FrameHeaderEPKNS_6Image3IfEERS5_RNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEd:bb.a
.lr.ph315.i:                                      ; preds = %.lr.ph318.i, %bb.cl
  %.0208313.i = phi i64 [ %i.ahx, %bb.cl ], [ 0, %.lr.ph318.i ] ; 4 uses
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.ago, i64 %.0208313.i
  %i.agz = load float, ptr %i.agy, align 4, !tbaa !28
  %i.aha = fdiv float %i.agz, %i.ry               ; 2 uses
  %i.ahb = fcmp ogt float %i.aha, 1.000000e+00
  br i1 %i.ahb, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %.lr.ph315.i
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %.0208313.i ; 4 uses
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !28 ; 3 uses
  %i.ahe = fmul float %i.aha, %i.ahd
  store float %i.ahe, ptr %i.ahc, align 4, !tbaa !28
  %i.ahf = load float, ptr %i.yj, align 8, !tbaa !456
  %i.ahg = fmul float %i.ahd, %i.ahf
  %i.ahh = call noundef i64 @lroundf(float noundef %i.ahg) #27
  %i.ahi = trunc i64 %i.ahh to i32
  %i.ahj = load float, ptr %i.ahc, align 4, !tbaa !28
  %i.ahk = load float, ptr %i.yj, align 8, !tbaa !456
  %i.ahl = fmul float %i.ahj, %i.ahk
  %i.ahm = call noundef i64 @lroundf(float noundef %i.ahl) #27
  %i.ahn = trunc i64 %i.ahm to i32
  %i.aho = icmp eq i32 %i.ahi, %i.ahn
  br i1 %i.aho, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ahp = load float, ptr %i.yk, align 4, !tbaa !457
  %i.ahq = fadd float %i.ahd, %i.ahp
  store float %i.ahq, ptr %i.ahc, align 4, !tbaa !28
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %.lr.ph315.i
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %.0208313.i ; 2 uses
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !28 ; 2 uses
  %i.aht = fcmp ogt float %i.ahs, %i.wy           ; 2 uses
  %i.ahu = select i1 %i.aht, float %i.wy, float %i.ahs ; 2 uses
  %i.ahv = fcmp olt float %i.ahu, %i.ww           ; 2 uses
  %i.ahw = or i1 %i.aht, %i.ahv
  br i1 %i.ahw, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %simplifycfg.merge.i = select i1 %i.ahv, float %i.ww, float %i.ahu
  store float %simplifycfg.merge.i, ptr %i.ahr, align 4, !tbaa !28
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.ahx = add nuw nsw i64 %.0208313.i, 1         ; 2 uses
  %i.ahy = load i32, ptr %3, align 8, !tbaa !25   ; 2 uses
  %i.ahz = zext i32 %i.ahy to i64
  %i.aia = icmp samesign ult i64 %i.ahx, %i.ahz
  br i1 %i.aia, label %.lr.ph315.i, label %._crit_edge316.loopexit.i, !llvm.loop !399

.lr.ph312.i:                                      ; preds = %._crit_edge.i, %.lr.ph312.preheader.i
  %i.aib = phi i32 [ %i.ail, %._crit_edge.i ], [ %.pre, %.lr.ph312.preheader.i ]
  %i.aic = phi i32 [ %i.aim, %._crit_edge.i ], [ %.pre343.i, %.lr.ph312.preheader.i ]
  %.0207311.i = phi i64 [ %i.ain, %._crit_edge.i ], [ 0, %.lr.ph312.preheader.i ] ; 3 uses
  %i.aid = load ptr, ptr %i.yh, align 8, !tbaa !22
  %i.aie = load i64, ptr %i.yi, align 8, !tbaa !17
  %i.aif = mul i64 %i.aie, %.0207311.i
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aid, i64 %i.aif ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aig, i64 64) ]
  %i.aih = load ptr, ptr %i.yb, align 8, !tbaa !22
  %i.aii = load i64, ptr %i.yc, align 8, !tbaa !17
  %i.aij = mul i64 %i.aii, %.0207311.i
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aih, i64 %i.aij ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aik, i64 64) ]
  %.not325.i = icmp eq i32 %i.aic, 0
  br i1 %.not325.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %bb.cr
  %.pre347.i = load i32, ptr %i.ti, align 4, !tbaa !26
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph312.i
  %i.ail = phi i32 [ %.pre347.i, %._crit_edge.loopexit.i ], [ %i.aib, %.lr.ph312.i ] ; 2 uses
  %i.aim = phi i32 [ %i.ajx, %._crit_edge.loopexit.i ], [ 0, %.lr.ph312.i ]
  %i.ain = add nuw nsw i64 %.0207311.i, 1         ; 2 uses
  %i.aio = zext i32 %i.ail to i64
  %i.aip = icmp samesign ult i64 %i.ain, %i.aio
  br i1 %i.aip, label %.lr.ph312.i, label %.loopexit.i, !llvm.loop !400

.lr.ph.i:                                         ; preds = %.lr.ph312.i, %bb.cr
  %.0206310.i = phi i64 [ %i.ajw, %bb.cr ], [ 0, %.lr.ph312.i ] ; 5 uses
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %.0206310.i
  %i.air = load float, ptr %i.aiq, align 4, !tbaa !28
  %i.ais = fdiv float %i.air, %i.ry               ; 3 uses
  %i.ait = fcmp ugt float %i.ais, 1.000000e+00
  br i1 %i.ait, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i
  %i.aiu = fpext float %i.ais to double
  %i.aiv = call noundef double @pow(double noundef %i.aiu, double noundef %spec.store.select2.i) #27
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %i.aik, i64 %.0206310.i ; 2 uses
  %i.aix = load float, ptr %i.aiw, align 4, !tbaa !28
  %i.aiy = fpext float %i.aix to double
  %i.aiz = fmul double %i.aiv, %i.aiy
  %i.aja = fptrunc double %i.aiz to float         ; 2 uses
  store float %i.aja, ptr %i.aiw, align 4, !tbaa !28
  br label %bb.cp

bb.cn:                                            ; preds = %.lr.ph.i
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.aik, i64 %.0206310.i ; 5 uses
  %i.ajc = load float, ptr %i.ajb, align 4, !tbaa !28 ; 3 uses
  %i.ajd = fmul float %i.ais, %i.ajc
  store float %i.ajd, ptr %i.ajb, align 4, !tbaa !28
  %i.aje = load float, ptr %i.yj, align 8, !tbaa !456
  %i.ajf = fmul float %i.ajc, %i.aje
  %i.ajg = call noundef i64 @lroundf(float noundef %i.ajf) #27
  %i.ajh = trunc i64 %i.ajg to i32
  %i.aji = load float, ptr %i.ajb, align 4, !tbaa !28
  %i.ajj = load float, ptr %i.yj, align 8, !tbaa !456
  %i.ajk = fmul float %i.aji, %i.ajj
  %i.ajl = call noundef i64 @lroundf(float noundef %i.ajk) #27
  %i.ajm = trunc i64 %i.ajl to i32
  %i.ajn = icmp eq i32 %i.ajh, %i.ajm
  br i1 %i.ajn, label %bb.co, label %._crit_edge344.i

._crit_edge344.i:                                 ; preds = %bb.cn
  %.pre346.i = load float, ptr %i.ajb, align 4, !tbaa !28
  br label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.ajo = load float, ptr %i.yk, align 4, !tbaa !457
  %i.ajp = fadd float %i.ajc, %i.ajo              ; 2 uses
  store float %i.ajp, ptr %i.ajb, align 4, !tbaa !28
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %._crit_edge344.i, %bb.cm
  %i.ajq = phi float [ %.pre346.i, %._crit_edge344.i ], [ %i.ajp, %bb.co ], [ %i.aja, %bb.cm ] ; 2 uses
  %i.ajr = fcmp ogt float %i.ajq, %i.wy           ; 2 uses
  %i.ajs = select i1 %i.ajr, float %i.wy, float %i.ajq ; 2 uses
  %i.ajt = fcmp olt float %i.ajs, %i.ww           ; 2 uses
  %i.aju = or i1 %i.ajr, %i.ajt
  br i1 %i.aju, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %simplifycfg.merge399.i = select i1 %i.ajt, float %i.ww, float %i.ajs
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.aik, i64 %.0206310.i
  store float %simplifycfg.merge399.i, ptr %i.ajv, align 4, !tbaa !28
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.ajw = add nuw nsw i64 %.0206310.i, 1         ; 2 uses
  %i.ajx = load i32, ptr %3, align 8, !tbaa !25   ; 2 uses
  %i.ajy = zext i32 %i.ajx to i64
  %i.ajz = icmp samesign ult i64 %i.ajw, %i.ajy
  br i1 %i.ajz, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !401

.loopexit.i:                                      ; preds = %._crit_edge.i, %._crit_edge316.i, %.preheader.i, %.preheader298.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit.i, %bb.cd
  %.pr.i23 = load i32, ptr %i.xn, align 8, !tbaa !196
  %i.aka = icmp eq i32 %.pr.i23, 0
  br i1 %i.aka, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.xu) #27
  br label %bb.cu

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.jt1.i:   ; preds = %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.i, %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.thread.i
  %i.akb = phi i32 [ %i.aah, %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.thread.i ], [ %.pr381.i, %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %.loopexit383.i

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.yl) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %.pr275.i = load i32, ptr %i.xd, align 8, !tbaa !83
  %i.akc = icmp eq i32 %.pr275.i, 0
  br i1 %i.akc, label %bb.cv, label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.i24

.loopexit383.i:                                   ; preds = %bb.bs, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.jt1.i
  %.sroa.0241.1.jt1.i = phi i32 [ %i.akb, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.jt1.i ], [ %i.yr, %bb.bs ]
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.yl) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %.pr275.jt1.i = load i32, ptr %i.xd, align 8, !tbaa !83
  %i.akd = icmp eq i32 %.pr275.jt1.i, 0
  br i1 %i.akd, label %bb.cw, label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.jt1.i

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(508) %19) #27
  br label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.i24

bb.cw:                                            ; preds = %.loopexit383.i
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(508) %19) #27
  br label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.jt1.i

_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.i24: ; preds = %bb.cv, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond = icmp eq i64 %indvars.iv.i, %spec.store.select.i
  br i1 %exitcond, label %.thread288.i, label %bb.bq, !llvm.loop !402

_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.jt1.i: ; preds = %bb.cw, %.loopexit383.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %.thread284.i

.thread288.i:                                     ; preds = %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.i24
  %i.ake = call i32 @_ZN3jxl9Quantizer13SetQuantFieldEfRKNS_5PlaneIfEEPNS1_IiEE(ptr noundef nonnull align 8 dereferenceable(72) %i.se, float noundef %.sroa.speculated.i.i, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %i.sf) #27
  br label %.thread284.i

.thread284.i:                                     ; preds = %bb.bq, %.thread288.i, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.jt1.i, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.thread.i22, %_ZN3jxl11ImageMinMaxIfEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i, %bb.bm
  %.sroa.0241.5.i = phi i32 [ 1, %bb.bm ], [ 1, %_ZN3jxl11ImageMinMaxIfEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i ], [ %i.ake, %.thread288.i ], [ %i.yp, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.thread.i22 ], [ %.sroa.0241.1.jt1.i, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.jt1.i ], [ %i.yn, %bb.bq ] ; 2 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ub) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %.pr292.i = load i32, ptr %i.ts, align 8, !tbaa !196
  %i.akf = icmp eq i32 %.pr292.i, 0
  br i1 %i.akf, label %bb.cx, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit237.i

bb.cx:                                            ; preds = %.thread284.i
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.uc) #27
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit237.i

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit237.i:    ; preds = %bb.cx, %.thread284.i, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i
  %.sroa.0241.6295.i = phi i32 [ %.sroa.0241.5.i, %bb.cx ], [ %.sroa.0241.5.i, %.thread284.i ], [ %i.tz, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.akg = getelementptr inbounds nuw i8, ptr %16, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.akg) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit237.i, %bb.bj, %bb.bi
  %.sroa.0241.7.i = phi i32 [ %.sroa.0241.6295.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit237.i ], [ %i.su, %bb.bi ], [ 1, %bb.bj ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3jxl24JxlButteraugliComparatorE, i64 16), ptr %14, align 8, !tbaa !200
  %i.akh = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 2 uses
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !459 ; 3 uses
  store ptr null, ptr %i.akh, align 8, !tbaa !459
  %.not.i.i.i.i = icmp eq ptr %i.aki, null
  br i1 %.not.i.i.i.i, label %_ZN3jxl12_GLOBAL__N_120FindBestQuantizationERKNS_11FrameHeaderERKNS_6Image3IfEES7_RNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit, label %_ZNKSt3__114default_deleteIN3jxl21ButteraugliComparatorEEclB8nn180100EPS2_.exit.i.i.i.i

_ZNKSt3__114default_deleteIN3jxl21ButteraugliComparatorEEclB8nn180100EPS2_.exit.i.i.i.i: ; preds = %bb.cy
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !200
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 8
  %i.akl = load ptr, ptr %i.akk, align 8
  call void %i.akl(ptr noundef nonnull align 8 dereferenceable(840) %i.aki) #27, !inline_history !403
  br label %_ZN3jxl12_GLOBAL__N_120FindBestQuantizationERKNS_11FrameHeaderERKNS_6Image3IfEES7_RNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit

_ZN3jxl12_GLOBAL__N_120FindBestQuantizationERKNS_11FrameHeaderERKNS_6Image3IfEES7_RNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit: ; preds = %bb.cy, %_ZNKSt3__114default_deleteIN3jxl21ButteraugliComparatorEEclB8nn180100EPS2_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.akm = icmp eq i32 %.sroa.0241.7.i, 0
  br i1 %i.akm, label %_ZN3jxl12_GLOBAL__N_120FindBestQuantizationERKNS_11FrameHeaderERKNS_6Image3IfEES7_RNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit.thread, label %_ZN3jxl12_GLOBAL__N_128FindBestQuantizationMaxErrorERKNS_11FrameHeaderERKNS_6Image3IfEERNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit.thread

_ZN3jxl12_GLOBAL__N_120FindBestQuantizationERKNS_11FrameHeaderERKNS_6Image3IfEES7_RNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit.thread: ; preds = %bb.bg, %bb.bd, %bb.be, %_ZN3jxl12_GLOBAL__N_120FindBestQuantizationERKNS_11FrameHeaderERKNS_6Image3IfEES7_RNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit, %_ZN3jxl12_GLOBAL__N_128FindBestQuantizationMaxErrorERKNS_11FrameHeaderERKNS_6Image3IfEERNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit
  br label %_ZN3jxl12_GLOBAL__N_128FindBestQuantizationMaxErrorERKNS_11FrameHeaderERKNS_6Image3IfEERNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit.thread

_ZN3jxl12_GLOBAL__N_128FindBestQuantizationMaxErrorERKNS_11FrameHeaderERKNS_6Image3IfEERNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit.thread: ; preds = %bb.d, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.thread.i, %bb.b, %_ZN3jxl12_GLOBAL__N_120FindBestQuantizationERKNS_11FrameHeaderERKNS_6Image3IfEES7_RNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit, %_ZN3jxl12_GLOBAL__N_128FindBestQuantizationMaxErrorERKNS_11FrameHeaderERKNS_6Image3IfEERNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit, %_ZN3jxl12_GLOBAL__N_120FindBestQuantizationERKNS_11FrameHeaderERKNS_6Image3IfEES7_RNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit.thread
  %.sroa.0.0 = phi i32 [ 0, %_ZN3jxl12_GLOBAL__N_120FindBestQuantizationERKNS_11FrameHeaderERKNS_6Image3IfEES7_RNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit.thread ], [ %i.ro, %_ZN3jxl12_GLOBAL__N_128FindBestQuantizationMaxErrorERKNS_11FrameHeaderERKNS_6Image3IfEERNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit ], [ %.sroa.0241.7.i, %_ZN3jxl12_GLOBAL__N_120FindBestQuantizationERKNS_11FrameHeaderERKNS_6Image3IfEES7_RNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit ], [ 1, %bb.b ], [ %i.az, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.thread.i ], [ %i.ax, %bb.d ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3hwy13FunctionCacheIN3jxl8StatusOrINS1_5PlaneIfEEEEJfRKNS1_6Image3IfEERKNS1_5RectTImEEfPNS1_10ThreadPoolEPS4_SG_EE13ChooseAndCallIXadsoKPFS5_fS9_SD_fSF_SG_SG_EL_ZNS1_L43AdaptiveQuantizationMapHighwayDispatchTableEEEEEES5_fS9_SD_fSF_SG_SG_(ptr dead_on_unwind noalias writable sret(%"class.jxl::StatusOr") align 8 %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, float noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #4 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #27 ; 2 uses
  %i.b = tail call noundef i64 @_ZN3hwy16SupportedTargetsEv() #27
  %i.c = shl i64 %i.b, 1
  %i.d = and i64 %i.c, 65534
  %i.e = or disjoint i64 %i.d, 65536
  store atomic i64 %i.e, ptr %i.a seq_cst, align 8
  %i.f = load atomic i64, ptr %i.a seq_cst, align 8
  %i.g = and i64 %i.f, 103425
  %i.h = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.g, i1 true)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL43AdaptiveQuantizationMapHighwayDispatchTableE, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  tail call void %i.j(ptr dead_on_unwind writable sret(%"class.jxl::StatusOr") align 8 %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, float noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN3jxl6N_AVX212_GLOBAL__N_123AdaptiveQuantizationMapEfRKNS_6Image3IfEERKNS_5RectTImEEfPNS_10ThreadPoolEPNS_5PlaneIfEESE_(ptr dead_on_unwind noalias writable sret(%"class.jxl::StatusOr") align 8 initializes((56, 60)) %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, float noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #8 {
bb.a:
  %8 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %9 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %10 = alloca %"class.jxl::Plane", align 8       ; 8 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca float, align 4                    ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %11 = alloca %"struct.jxl::N_AVX2::(anonymous namespace)::AdaptiveQuantizationImpl", align 8 ; 14 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %"class.jxl::StatusOr", align 8    ; 10 uses
  %13 = alloca %"class.jxl::Plane", align 8       ; 6 uses
  %14 = alloca %"class.jxl::StatusOr", align 8    ; 10 uses
  %15 = alloca %"class.jxl::Plane", align 8       ; 6 uses
  %16 = alloca %"class.jxl::StatusOr", align 8    ; 9 uses
  %17 = alloca %"class.jxl::Plane", align 8       ; 6 uses
  %18 = alloca %class.anon, align 8               ; 5 uses
  %19 = alloca %class.anon.149, align 8           ; 12 uses
  store float %1, ptr %i.a, align 4, !tbaa !28
  store float %4, ptr %i.b, align 4, !tbaa !28
  store ptr %6, ptr %i.c, align 8, !tbaa !202
  store ptr %7, ptr %i.d, align 8, !tbaa !202
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 3 uses
  %i.j = and i64 %i.i, 7
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.l, align 8, !tbaa !196
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19   ; 3 uses
  %i.o = and i64 %i.n, 7
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.q, align 8, !tbaa !196
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %11, i8 0, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.r = lshr exact i64 %i.i, 3                   ; 3 uses
  store i64 %i.r, ptr %i.e, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.s = lshr exact i64 %i.n, 3                   ; 3 uses
  store i64 %i.s, ptr %i.f, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !198  ; 4 uses
  store ptr %i.u, ptr %i.g, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.v = trunc nuw i64 %i.r to i32                ; 2 uses
  %i.w = trunc nuw i64 %i.s to i32                ; 2 uses
  %i.x = or i64 %i.i, %i.n
  %or.cond = icmp ult i64 %i.x, 34359738368
  br i1 %or.cond, label %bb.f, label %.thread77

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !472
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef %i.v, i32 noundef %i.w, i64 noundef 4) #27, !noalias !472
  %i.y = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %i.u, i64 noundef 0) #27, !noalias !472 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 3 uses
  br i1 %i.z, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.y, ptr %i.aa, align 8, !tbaa !196, !alias.scope !472
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

.critedge.i:                                      ; preds = %bb.f
  store i32 0, ptr %i.aa, align 8, !tbaa !196, !alias.scope !472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %12, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !197, !noalias !472
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !197, !alias.scope !472
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit: ; preds = %bb.g, %.critedge.i
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ag) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !472
  %.pre = load i32, ptr %i.aa, align 8, !tbaa !196 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.ai = icmp eq i32 %.pre, 0
  br i1 %i.ai, label %bb.h, label %.thread77

.thread77:                                        ; preds = %bb.e, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit
  %i.aj = phi i32 [ %.pre, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit ], [ 1, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !196
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit50

bb.h:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(60) %12, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
end_hunk_1
