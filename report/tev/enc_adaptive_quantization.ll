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
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28, !noalias !435
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %12, i32 noundef %i.to, i32 noundef %i.tp, i64 noundef 4) #27, !noalias !435
  %i.tq = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef %i.sd, i64 noundef 0) #27, !noalias !435 ; 2 uses
  %i.tr = icmp eq i32 %i.tq, 0
  %i.ts = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 4 uses
  br i1 %i.tr, label %.critedge.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store i32 %i.tq, ptr %i.ts, align 8, !tbaa !196, !alias.scope !435
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i

.critedge.i.i:                                    ; preds = %bb.bk
  store i32 0, ptr %i.ts, align 8, !tbaa !196, !alias.scope !435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %17, ptr noundef nonnull align 8 dereferenceable(56) %12, i64 24, i1 false)
  %i.tt = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.tu = getelementptr inbounds nuw i8, ptr %12, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.tt, ptr noundef nonnull align 8 dereferenceable(24) %i.tu) #27
  %i.tv = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.tw = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !197, !noalias !435
  store i64 %i.tx, ptr %i.tv, align 8, !tbaa !197, !alias.scope !435
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i: ; preds = %.critedge.i.i, %bb.bl
  %i.ty = getelementptr inbounds nuw i8, ptr %12, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ty) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28, !noalias !435
  %i.tz = load i32, ptr %i.ts, align 8, !tbaa !196 ; 2 uses
  %i.ua = icmp eq i32 %i.tz, 0
  br i1 %i.ua, label %bb.bm, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit237.i

bb.bm:                                            ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 8 dereferenceable(60) %17, i64 24, i1 false)
  %i.ub = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ub, ptr noundef nonnull align 8 dereferenceable(24) %i.uc) #27
  %i.ud = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.ue = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !197, !noalias !436
  store i64 %i.uf, ptr %i.ud, align 8, !tbaa !197, !alias.scope !436
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.ug = load i32, ptr %3, align 8, !tbaa !25, !noalias !437 ; 2 uses
  %i.uh = load i32, ptr %18, align 8, !tbaa !25, !alias.scope !437
  %i.ui = icmp eq i32 %i.ug, %i.uh
  %i.uj = load i32, ptr %i.ti, align 4, !noalias !437 ; 3 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 4, !alias.scope !437
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
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !22, !alias.scope !437
  %i.uu = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !17, !alias.scope !437
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.lr.ph.i.i
  %.015.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.vf, %bb.bo ] ; 3 uses
  %i.uw = load ptr, ptr %i.uq, align 8, !tbaa !22, !noalias !437
  %i.ux = load i64, ptr %i.ur, align 8, !tbaa !17, !noalias !437
  %i.uy = mul i64 %i.ux, %.015.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.uy ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.uz, i64 64) ]
  %i.va = mul i64 %.015.i.i, %i.uv
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ut, i64 %i.va ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.vb, i64 64) ]
  %i.vc = load i32, ptr %3, align 8, !tbaa !25, !noalias !437
  %i.vd = zext i32 %i.vc to i64
  %i.ve = shl nuw nsw i64 %i.vd, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %i.vb, ptr align 64 %i.uz, i64 %i.ve, i1 false), !noalias !437
  %i.vf = add nuw nsw i64 %.015.i.i, 1            ; 2 uses
  %i.vg = load i32, ptr %i.ti, align 4, !tbaa !26, !noalias !437
  %i.vh = zext i32 %i.vg to i64
  %i.vi = icmp samesign ult i64 %i.vf, %i.vh
  br i1 %i.vi, label %bb.bo, label %.loopexit302.loopexit.i, !llvm.loop !368

.loopexit302.loopexit.i:                          ; preds = %bb.bo
  %.pre339.i = load i32, ptr %i.uk, align 4, !tbaa !26, !noalias !438
  br label %.loopexit302.i

.loopexit302.i:                                   ; preds = %.loopexit302.loopexit.i, %bb.bn
  %i.vj = phi i32 [ %.pre339.i, %.loopexit302.loopexit.i ], [ %i.uj, %bb.bn ] ; 2 uses
  %i.vk = zext i32 %i.vj to i64
  %.not.i.i = icmp eq i32 %i.vj, 0
  br i1 %.not.i.i, label %_ZN3jxl11ImageMinMaxIfEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i, label %.lr.ph25.i.i

.lr.ph25.i.i:                                     ; preds = %.loopexit302.i
  %i.vl = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !22, !noalias !438
  %i.vn = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !17, !noalias !438
  %i.vp = load i32, ptr %18, align 8, !tbaa !25, !noalias !438 ; 4 uses
  %i.vq = zext i32 %i.vp to i64                   ; 2 uses
  %.not30.i.i = icmp eq i32 %i.vp, 0
  br i1 %.not30.i.i, label %_ZN3jxl11ImageMinMaxIfEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i, label %.lr.ph.us.i.i.preheader

.lr.ph.us.i.i.preheader:                          ; preds = %.lr.ph25.i.i
  %xtraiter = and i64 %i.vq, 1
  %i.vr = icmp eq i32 %i.vp, 1
  %unroll_iter = and i64 %i.vq, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod332 = trunc i32 %i.vp to i1
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %.lr.ph.us.i.i.preheader, %._crit_edge.us.i.i
  %.lcssa22.us29.i.i = phi float [ %.lcssa326, %._crit_edge.us.i.i ], [ f0xFF7FFFFF, %.lr.ph.us.i.i.preheader ] ; 2 uses
  %.lcssa.us27.i.i = phi float [ %.lcssa327, %._crit_edge.us.i.i ], [ f0x7F7FFFFF, %.lr.ph.us.i.i.preheader ] ; 2 uses
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
  %i.vx = load float, ptr %i.vw, align 8, !tbaa !28, !noalias !438 ; 4 uses
  %i.vy = fcmp olt float %i.vx, %i.vv
  %i.vz = select i1 %i.vy, float %i.vx, float %i.vv ; 2 uses
  %i.wa = fcmp olt float %i.vu, %i.vx
  %i.wb = select i1 %i.wa, float %i.vx, float %i.vu ; 2 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %.020.us.i.i
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 4
  %i.we = load float, ptr %i.wd, align 4, !tbaa !28, !noalias !438 ; 4 uses
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
  %.epil.init329 = phi float [ %.lcssa.us27.i.i, %.lr.ph.us.i.i ], [ %i.wg, %._crit_edge.us.i.i.unr-lcssa ] ; 2 uses
  %.020.us.i.i.epil.init = phi i64 [ 0, %.lr.ph.us.i.i ], [ %i.wj, %._crit_edge.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod332)
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %.020.us.i.i.epil.init
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !28, !noalias !438 ; 4 uses
  %i.wm = fcmp olt float %i.wl, %.epil.init329
  %i.wn = select i1 %i.wm, float %i.wl, float %.epil.init329
  %i.wo = fcmp olt float %.epil.init, %i.wl
  %i.wp = select i1 %i.wo, float %i.wl, float %.epil.init
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %._crit_edge.us.i.i.unr-lcssa, %.epil.preheader
  %.lcssa327 = phi float [ %i.wg, %._crit_edge.us.i.i.unr-lcssa ], [ %i.wn, %.epil.preheader ] ; 2 uses
  %.lcssa326 = phi float [ %i.wi, %._crit_edge.us.i.i.unr-lcssa ], [ %i.wp, %.epil.preheader ] ; 2 uses
  %i.wq = add nuw nsw i64 %.01723.us.i.i, 1       ; 2 uses
  %exitcond32.not.i.i = icmp eq i64 %i.wq, %i.vk
  br i1 %exitcond32.not.i.i, label %_ZN3jxl11ImageMinMaxIfEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i, label %.lr.ph.us.i.i, !llvm.loop !373

_ZN3jxl11ImageMinMaxIfEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i: ; preds = %._crit_edge.us.i.i, %.lr.ph25.i.i, %.loopexit302.i
  %.0270.i = phi float [ f0x7F7FFFFF, %.loopexit302.i ], [ f0x7F7FFFFF, %.lr.ph25.i.i ], [ %.lcssa327, %._crit_edge.us.i.i ] ; 2 uses
  %.0269.i = phi float [ f0xFF7FFFFF, %.loopexit302.i ], [ f0xFF7FFFFF, %.lr.ph25.i.i ], [ %.lcssa326, %._crit_edge.us.i.i ] ; 2 uses
  %i.wr = fdiv float %.0269.i, %.0270.i
  %i.ws = fdiv float 2.500000e+02, %i.wr
  %i.wt = call noundef float @sqrtf(float noundef %i.ws) #27 ; 4 uses
  %i.wu = fcmp olt float %i.wt, 2.000000e+00
  %.0214.i = select i1 %i.wu, float %i.wt, float 2.000000e+00 ; 2 uses
  %i.wv = fmul float %i.wt, %.0214.i
  %i.ww = fdiv float %.0270.i, %i.wv              ; 7 uses
  %i.wx = fdiv float %i.wt, %.0214.i
  %i.wy = fmul float %.0269.i, %i.wx              ; 7 uses
  %i.wz = fdiv float %i.wy, %i.ww
  %i.xa = fcmp olt float %i.wz, 2.530000e+02
  br i1 %i.xa, label %bb.bp, label %.thread284.i

bb.bp:                                            ; preds = %_ZN3jxl11ImageMinMaxIfEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i
  %i.xb = load i32, ptr %i.rq, align 4, !tbaa !428
  %i.xc = icmp slt i32 %i.xb, 2
  %spec.store.select.i = select i1 %i.xc, i64 4, i64 2
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
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.i24, %bb.bp
  %indvars.iv.i = phi i64 [ 0, %bb.bp ], [ %indvars.iv.next.i, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.i24 ] ; 5 uses
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
  br i1 %i.ys, label %bb.bt, label %.loopexit386.i

bb.bt:                                            ; preds = %bb.bs
  %.pre341.i = load i32, ptr %i.xe, align 4, !tbaa !26 ; 5 uses
  br i1 %i.sy, label %_ZN3jxl10ScaleImageIfEEvT_PNS_5PlaneIS1_EE.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.yt = load float, ptr %i.a, align 4, !tbaa !28
  %i.yu = fneg float %i.yt
  store float %i.yu, ptr %i.a, align 4, !tbaa !28
  %i.yv = zext i32 %.pre341.i to i64
  %.not.i231.i = icmp eq i32 %.pre341.i, 0
  br i1 %.not.i231.i, label %_ZN3jxl10ScaleImageIfEEvT_PNS_5PlaneIS1_EE.exit.i, label %.lr.ph16.i.i

.lr.ph16.i.i:                                     ; preds = %bb.bu
  %i.yw = load ptr, ptr %i.xf, align 8, !tbaa !22
  %i.yx = load i64, ptr %i.xg, align 8, !tbaa !17
  %i.yy = load i32, ptr %21, align 8, !tbaa !25   ; 3 uses
  %i.yz = zext i32 %i.yy to i64                   ; 3 uses
  %.not18.i.i = icmp eq i32 %i.yy, 0
  br i1 %.not18.i.i, label %_ZN3jxl10ScaleImageIfEEvT_PNS_5PlaneIS1_EE.exit.i, label %.lr.ph.us.i232.i.preheader

.lr.ph.us.i232.i.preheader:                       ; preds = %.lr.ph16.i.i
  %min.iters.check267 = icmp ult i32 %i.yy, 8
  %n.vec269 = and i64 %i.yz, 4294967288           ; 3 uses
  %cmp.n275 = icmp eq i64 %n.vec269, %i.yz
  br label %.lr.ph.us.i232.i

.lr.ph.us.i232.i:                                 ; preds = %.lr.ph.us.i232.i.preheader, %._crit_edge.us.i234.i
  %.01214.us.i.i = phi i64 [ %i.zl, %._crit_edge.us.i234.i ], [ 0, %.lr.ph.us.i232.i.preheader ] ; 2 uses
  %i.za = mul i64 %.01214.us.i.i, %i.yx
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.za ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.zb, i64 64) ]
  br i1 %min.iters.check267, label %scalar.ph266.preheader, label %vector.body270

vector.body270:                                   ; preds = %.lr.ph.us.i232.i, %vector.body270
  %index271 = phi i64 [ %index.next273, %vector.body270 ], [ 0, %.lr.ph.us.i232.i ] ; 2 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %index271 ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.zc, align 32, !tbaa !28
  %wide.load272 = load <4 x float>, ptr %i.zd, align 16, !tbaa !28
  %i.ze = fneg <4 x float> %wide.load
  %i.zf = fneg <4 x float> %wide.load272
  store <4 x float> %i.ze, ptr %i.zc, align 32, !tbaa !28
  store <4 x float> %i.zf, ptr %i.zd, align 16, !tbaa !28
  %index.next273 = add nuw i64 %index271, 8       ; 2 uses
  %i.zg = icmp eq i64 %index.next273, %n.vec269
  br i1 %i.zg, label %middle.block274, label %vector.body270, !llvm.loop !374

middle.block274:                                  ; preds = %vector.body270
  br i1 %cmp.n275, label %._crit_edge.us.i234.i, label %scalar.ph266.preheader

scalar.ph266.preheader:                           ; preds = %.lr.ph.us.i232.i, %middle.block274
  %.013.us.i.i.ph = phi i64 [ 0, %.lr.ph.us.i232.i ], [ %n.vec269, %middle.block274 ]
  br label %scalar.ph266

scalar.ph266:                                     ; preds = %scalar.ph266.preheader, %scalar.ph266
  %.013.us.i.i = phi i64 [ %i.zk, %scalar.ph266 ], [ %.013.us.i.i.ph, %scalar.ph266.preheader ] ; 2 uses
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %.013.us.i.i ; 2 uses
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !28
  %i.zj = fneg float %i.zi
  store float %i.zj, ptr %i.zh, align 4, !tbaa !28
  %i.zk = add nuw nsw i64 %.013.us.i.i, 1         ; 2 uses
  %exitcond.not.i233.i = icmp eq i64 %i.zk, %i.yz
  br i1 %exitcond.not.i233.i, label %._crit_edge.us.i234.i, label %scalar.ph266, !llvm.loop !375

._crit_edge.us.i234.i:                            ; preds = %scalar.ph266, %middle.block274
  %i.zl = add nuw nsw i64 %.01214.us.i.i, 1       ; 2 uses
  %exitcond20.not.i.i = icmp eq i64 %i.zl, %i.yv
  br i1 %exitcond20.not.i.i, label %_ZN3jxl10ScaleImageIfEEvT_PNS_5PlaneIS1_EE.exit.i, label %.lr.ph.us.i232.i, !llvm.loop !376

_ZN3jxl10ScaleImageIfEEvT_PNS_5PlaneIS1_EE.exit.i: ; preds = %._crit_edge.us.i234.i, %.lr.ph16.i.i, %bb.bu, %bb.bt
  %i.zm = phi i32 [ %.pre341.i, %bb.bt ], [ %.pre341.i, %.lr.ph16.i.i ], [ 0, %bb.bu ], [ %.pre341.i, %._crit_edge.us.i234.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.zn = load i32, ptr %i.ru, align 4, !tbaa !429
  %i.zo = shl nsw i32 %i.zn, 3                    ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.zp = load i32, ptr %21, align 8, !tbaa !25, !noalias !439
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
  %i.aaa = load ptr, ptr %i.xh, align 8, !tbaa !198, !noalias !439
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !439
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %sext.mask.i.i = and i64 %i.zu, 2147483648
  %i.aab = icmp eq i64 %sext.mask.i.i, 0
  %sext106.mask.i.i = and i64 %i.zy, 2147483648
  %i.aac = icmp eq i64 %sext106.mask.i.i, 0
  %or.cond.i.i = select i1 %i.aab, i1 %i.aac, i1 false
  br i1 %or.cond.i.i, label %bb.bv, label %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.thread.i

bb.bv:                                            ; preds = %_ZN3jxl10ScaleImageIfEEvT_PNS_5PlaneIS1_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !441
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %9, i32 noundef %i.zv, i32 noundef %i.zz, i64 noundef 4) #27, !noalias !441
  %i.aad = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef %i.aaa, i64 noundef 0) #27, !noalias !441 ; 2 uses
  %i.aae = icmp eq i32 %i.aad, 0
  br i1 %i.aae, label %.critedge.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i32 %i.aad, ptr %i.xi, align 8, !tbaa !196, !alias.scope !440, !noalias !439
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i.i

.critedge.i.i.i:                                  ; preds = %bb.bv
  store i32 0, ptr %i.xi, align 8, !tbaa !196, !alias.scope !440, !noalias !439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %10, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 24, i1 false), !noalias !439
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.xj, ptr noundef nonnull align 8 dereferenceable(24) %i.xk) #27, !noalias !439
  %i.aaf = load i64, ptr %i.xm, align 8, !tbaa !197, !noalias !441
  store i64 %i.aaf, ptr %i.xl, align 8, !tbaa !197, !alias.scope !440, !noalias !439
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i.i

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i.i: ; preds = %.critedge.i.i.i, %bb.bw
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.xk) #27, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !441
  %.pre.i.i = load i32, ptr %i.xi, align 8, !tbaa !196, !noalias !439 ; 2 uses
  %i.aag = icmp eq i32 %.pre.i.i, 0
  br i1 %i.aag, label %.critedge.i235.i, label %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.thread.i

_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.thread.i: ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i.i, %_ZN3jxl10ScaleImageIfEEvT_PNS_5PlaneIS1_EE.exit.i
  %i.aah = phi i32 [ %.pre.i.i, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i.i ], [ 1, %_ZN3jxl10ScaleImageIfEEvT_PNS_5PlaneIS1_EE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !439
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.jt1.i

.critedge.i235.i:                                 ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28, !noalias !439
  call void @llvm.experimental.noalias.scope.decl(metadata !442)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(60) %10, i64 24, i1 false), !noalias !439
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.xo, ptr noundef nonnull align 8 dereferenceable(24) %i.xj) #27, !noalias !439
  %i.aai = load i64, ptr %i.xl, align 8, !tbaa !197, !noalias !443
  store i64 %i.aai, ptr %i.xp, align 8, !tbaa !197, !alias.scope !442, !noalias !439
  %i.aaj = load i64, ptr %i.xq, align 8, !tbaa !17, !noalias !439 ; 2 uses
  %i.aak = lshr i64 %i.aaj, 2
  %i.aal = icmp sgt i32 %i.zz, 0
  br i1 %i.aal, label %.lr.ph156.i.i, label %._crit_edge157.i.i

.lr.ph156.i.i:                                    ; preds = %.critedge.i235.i
  %i.aam = load ptr, ptr %i.xr, align 8, !tbaa !22, !noalias !439
  %i.aan = load i64, ptr %i.xs, align 8, !tbaa !17, !noalias !439
  %i.aao = load ptr, ptr %i.xt, align 8, !tbaa !22, !noalias !439
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
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !24, !noalias !439 ; 2 uses
  %i.abg = trunc i8 %i.abf to i1
  br i1 %i.abg, label %bb.by, label %.loopexit.us.i.i

bb.by:                                            ; preds = %bb.bx
  %i.abh = lshr i8 %i.abf, 1
  %i.abi = zext nneg i8 %i.abh to i64             ; 3 uses
  %i.abj = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.abi
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !24, !noalias !439 ; 2 uses
  %i.abl = zext i8 %i.abk to i32
  %i.abm = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.abi
  %i.abn = load i8, ptr %i.abm, align 1, !tbaa !24, !noalias !439 ; 2 uses
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
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !28, !noalias !439 ; 2 uses
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
  br i1 %min.iters.check.not, label %vector.body, label %scalar.ph.preheader

vector.body:                                      ; preds = %.preheader.us.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.i ] ; 2 uses
  %i.acl = getelementptr [4 x i8], ptr %gep.us.i.i, i64 %index ; 2 uses
  %i.acm = getelementptr i8, ptr %i.acl, i64 16
  store <4 x float> %broadcast.splat, ptr %i.acl, align 4, !tbaa !28, !noalias !439
  store <4 x float> %broadcast.splat, ptr %i.acm, align 4, !tbaa !28, !noalias !439
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.acn = icmp eq i64 %index.next, %n.vec
  br i1 %i.acn, label %middle.block, label %vector.body, !llvm.loop !385

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us161.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i.i, %middle.block
  %.0150.us.i.i.ph = phi i64 [ 0, %.preheader.us.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0150.us.i.i = phi i64 [ %i.acp, %scalar.ph ], [ %.0150.us.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aco = getelementptr [4 x i8], ptr %gep.us.i.i, i64 %.0150.us.i.i
  store float %i.acw, ptr %i.aco, align 4, !tbaa !28, !noalias !439
  %i.acp = add nuw nsw i64 %.0150.us.i.i, 1       ; 2 uses
  %exitcond.not.i236.i = icmp eq i64 %i.acp, %umax.i.i
  br i1 %exitcond.not.i236.i, label %._crit_edge.us161.i.i, label %scalar.ph, !llvm.loop !386

.loopexit.us.i.i:                                 ; preds = %._crit_edge.us161.i.i, %bb.bx
  %indvars.iv.next185.i.i = add nuw nsw i64 %indvars.iv184.i.i, 1 ; 2 uses
  %i.acq = icmp samesign ult i64 %indvars.iv.next185.i.i, %i.aaq
  %indvars.iv.next171.i.i = add i32 %indvars.iv170.i.i, %i.zo
  br i1 %i.acq, label %bb.bx, label %._crit_edge154.us.i.i, !llvm.loop !387

._crit_edge.us161.i.i:                            ; preds = %scalar.ph, %middle.block
  %i.acr = add nuw nsw i64 %.093151.us.i.i, 1     ; 2 uses
  %exitcond183.not.i.i = icmp eq i64 %i.acr, %umax182.i.i
  br i1 %exitcond183.not.i.i, label %.loopexit.us.i.i, label %.preheader.us.i.i, !llvm.loop !388

.preheader.us.preheader.i.i:                      ; preds = %._crit_edge146.us.loopexit.i.i, %.lr.ph145.us.i.i, %bb.by
  %.099.lcssa.us.i.i = phi double [ 0.000000e+00, %bb.by ], [ %i.acj, %._crit_edge146.us.loopexit.i.i ], [ 0.000000e+00, %.lr.ph145.us.i.i ]
  %.098.lcssa.us.i.i = phi double [ 0.000000e+00, %bb.by ], [ %i.acg, %._crit_edge146.us.loopexit.i.i ], [ 0.000000e+00, %.lr.ph145.us.i.i ] ; 2 uses
  %i.acs = fcmp oeq double %.098.lcssa.us.i.i, 0.000000e+00
  %spec.store.select.us.i.i = select i1 %i.acs, double 1.000000e+00, double %.098.lcssa.us.i.i
  %i.act = fdiv double %.099.lcssa.us.i.i, %spec.store.select.us.i.i
  %i.acu = call noundef double @pow(double noundef %i.act, double noundef 6.250000e-02) #27, !noalias !439
  %i.acv = fmul double %i.acu, f0x3FF3333340000000
  %i.acw = fptrunc double %i.acv to float         ; 3 uses
  %i.acx = getelementptr [4 x i8], ptr %i.aaw, i64 %indvars.iv184.i.i ; 2 uses
  store float %i.acw, ptr %i.acx, align 4, !tbaa !28, !noalias !439
  %i.acy = call i8 @llvm.umax.i8(i8 %i.abk, i8 1)
  %umax.i.i = zext i8 %i.acy to i64               ; 3 uses
  %i.acz = call i8 @llvm.umax.i8(i8 %i.abn, i8 1)
  %umax182.i.i = zext i8 %i.acz to i64
  %i.ada = shl nuw i64 1, %i.abi
  %i.adb = and i64 %i.ada, 786431
  %min.iters.check.not = icmp eq i64 %i.adb, 0
  %n.vec = and i64 %umax.i.i, 248                 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.acw, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %umax.i.i
  br label %.preheader.us.i.i

._crit_edge154.us.i.i:                            ; preds = %.loopexit.us.i.i
  %indvars.iv.next188.i.i = add nuw nsw i64 %indvars.iv187.i.i, 1 ; 2 uses
  %i.adc = icmp samesign ult i64 %indvars.iv.next188.i.i, %i.aar
  %indvars.iv.next.i.i = add i32 %indvars.iv.i.i, %i.zo
  br i1 %i.adc, label %.lr.ph.us162.i.i, label %._crit_edge157.i.i, !llvm.loop !389

._crit_edge157.i.i:                               ; preds = %._crit_edge154.us.i.i, %.lr.ph156.i.i, %.critedge.i235.i
  store i32 0, ptr %i.xn, align 8, !tbaa !196, !alias.scope !439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %22, ptr noundef nonnull align 8 dereferenceable(56) %11, i64 24, i1 false)
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.xu, ptr noundef nonnull align 8 dereferenceable(24) %i.xo) #27
  %i.add = load i64, ptr %i.xp, align 8, !tbaa !197, !noalias !439
  store i64 %i.add, ptr %i.xv, align 8, !tbaa !197, !alias.scope !439
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.xo) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !439
  %.pr.i.i = load i32, ptr %i.xi, align 8, !tbaa !196, !noalias !439
  %i.ade = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ade, label %bb.ca, label %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.i

bb.ca:                                            ; preds = %._crit_edge157.i.i
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.xj) #27
  br label %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.i

_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.i: ; preds = %bb.ca, %._crit_edge157.i.i
  %.pr384.i = load i32, ptr %i.xn, align 8, !tbaa !196 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !439
  %i.adf = icmp eq i32 %.pr384.i, 0
  br i1 %i.adf, label %bb.cb, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.jt1.i

bb.cb:                                            ; preds = %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %23, ptr noundef nonnull align 8 dereferenceable(60) %22, i64 24, i1 false)
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.xw, ptr noundef nonnull align 8 dereferenceable(24) %i.xu) #27
  %i.adg = load i64, ptr %i.xv, align 8, !tbaa !197, !noalias !444
  store i64 %i.adg, ptr %i.xx, align 8, !tbaa !197, !alias.scope !444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(56) %23, i64 24, i1 false)
  %i.adh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.xy, ptr noundef nonnull align 8 dereferenceable(24) %i.xw) #27 ; 0 uses
  %i.adi = load i64, ptr %i.xx, align 8, !tbaa !197
  store i64 %i.adi, ptr %i.xz, align 8, !tbaa !197
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.xw) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br i1 %.not228.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.adj = load i32, ptr %i.ya, align 8, !tbaa !447
  %i.adk = add nsw i32 %i.adj, 1
  store i32 %i.adk, ptr %i.ya, align 8, !tbaa !447
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.adl = icmp eq i64 %indvars.iv.i, %spec.store.select.i ; 2 uses
  br i1 %i.adl, label %bb.cs, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ym, i8 0, i64 48, i1 false)
  store <2 x double> splat (double 2.000000e-01), ptr %i.b, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.adm = icmp eq i64 %indvars.iv.i, 1
  %.pre = load i32, ptr %i.ti, align 4, !tbaa !26 ; 3 uses
  br i1 %i.adm, label %.preheader300.i, label %.loopexit301.i

.preheader300.i:                                  ; preds = %bb.ce
  %.not325.i = icmp eq i32 %.pre, 0
  br i1 %.not325.i, label %.loopexit301.i, label %.lr.ph309.preheader.i

.lr.ph309.preheader.i:                            ; preds = %.preheader300.i
  %.pre342.i = load i32, ptr %3, align 8, !tbaa !25 ; 2 uses
  br label %.lr.ph309.i

.lr.ph309.i:                                      ; preds = %._crit_edge.i, %.lr.ph309.preheader.i
  %i.adn = phi i32 [ %i.ady, %._crit_edge.i ], [ %.pre, %.lr.ph309.preheader.i ]
  %i.ado = phi i32 [ %i.adz, %._crit_edge.i ], [ %.pre342.i, %.lr.ph309.preheader.i ] ; 2 uses
  %i.adp = phi i32 [ %i.aea, %._crit_edge.i ], [ %.pre342.i, %.lr.ph309.preheader.i ]
  %.0212308.i = phi i64 [ %i.aeb, %._crit_edge.i ], [ 0, %.lr.ph309.preheader.i ] ; 3 uses
  %i.adq = load ptr, ptr %i.yb, align 8, !tbaa !22
  %i.adr = load i64, ptr %i.yc, align 8, !tbaa !17
  %i.ads = mul i64 %i.adr, %.0212308.i
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.ads ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.adt, i64 64) ]
  %i.adu = load ptr, ptr %i.yd, align 8, !tbaa !22
  %i.adv = load i64, ptr %i.ye, align 8, !tbaa !17
  %i.adw = mul i64 %i.adv, %.0212308.i
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adu, i64 %i.adw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.adx, i64 64) ]
  %.not326.i = icmp eq i32 %i.adp, 0
  br i1 %.not326.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %bb.cg
  %.pre344.i = load i32, ptr %i.ti, align 4, !tbaa !26
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph309.i
  %i.ady = phi i32 [ %.pre344.i, %._crit_edge.loopexit.i ], [ %i.adn, %.lr.ph309.i ] ; 3 uses
  %i.adz = phi i32 [ %i.aer, %._crit_edge.loopexit.i ], [ %i.ado, %.lr.ph309.i ]
  %i.aea = phi i32 [ %i.aer, %._crit_edge.loopexit.i ], [ 0, %.lr.ph309.i ]
  %i.aeb = add nuw nsw i64 %.0212308.i, 1         ; 2 uses
  %i.aec = zext i32 %i.ady to i64
  %i.aed = icmp samesign ult i64 %i.aeb, %i.aec
  br i1 %i.aed, label %.lr.ph309.i, label %.loopexit301.i, !llvm.loop !392

.lr.ph.i:                                         ; preds = %.lr.ph309.i, %bb.cg
  %i.aee = phi i32 [ %i.aer, %bb.cg ], [ %i.ado, %.lr.ph309.i ]
  %.0211307.i = phi i64 [ %i.aes, %bb.cg ], [ 0, %.lr.ph309.i ] ; 3 uses
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.adt, i64 %.0211307.i ; 2 uses
  %i.aeg = load float, ptr %i.aef, align 4, !tbaa !28
  %i.aeh = fpext float %i.aeg to double           ; 2 uses
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %.0211307.i
  %i.aej = load float, ptr %i.aei, align 4, !tbaa !28
  %i.aek = fpext float %i.aej to double
  %i.ael = fmul double %i.aek, 6.000000e-01
  %i.aem = call double @llvm.fmuladd.f64(double %i.aeh, double 4.000000e-01, double %i.ael) ; 2 uses
  %i.aen = fcmp ogt double %i.aem, %i.aeh
  br i1 %i.aen, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.lr.ph.i
  %i.aeo = fptrunc double %i.aem to float         ; 2 uses
  %i.aep = fcmp olt float %i.wy, %i.aeo
  %storemerge.i = select i1 %i.aep, float %i.wy, float %i.aeo ; 2 uses
  %i.aeq = fcmp olt float %storemerge.i, %i.ww
  %spec.store.select229.i = select i1 %i.aeq, float %i.ww, float %storemerge.i
  store float %spec.store.select229.i, ptr %i.aef, align 4
  %.pre343.i = load i32, ptr %3, align 8, !tbaa !25
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %.lr.ph.i
  %i.aer = phi i32 [ %.pre343.i, %bb.cf ], [ %i.aee, %.lr.ph.i ] ; 4 uses
  %i.aes = add nuw nsw i64 %.0211307.i, 1         ; 2 uses
  %i.aet = zext i32 %i.aer to i64
  %i.aeu = icmp samesign ult i64 %i.aes, %i.aet
  br i1 %i.aeu, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !393

.loopexit301.i:                                   ; preds = %._crit_edge.i, %.preheader300.i, %bb.ce
  %i.aev = phi i32 [ %.pre, %bb.ce ], [ 0, %.preheader300.i ], [ %i.ady, %._crit_edge.i ] ; 3 uses
  %i.aew = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.aex = load double, ptr %i.aew, align 8, !tbaa !449
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.aez = load double, ptr %i.aey, align 8, !tbaa !449
  %i.afa = call double @llvm.fmuladd.f64(double %i.yg, double %i.aez, double %i.aex) ; 2 uses
  %i.afb = fcmp olt double %i.afa, 0.000000e+00
  %spec.store.select2.i = select i1 %i.afb, double 0.000000e+00, double %i.afa ; 2 uses
  %i.afc = fcmp oeq double %spec.store.select2.i, 0.000000e+00
  %.not329.i = icmp eq i32 %i.aev, 0              ; 2 uses
  br i1 %i.afc, label %.preheader.i, label %.preheader298.i

.preheader298.i:                                  ; preds = %.loopexit301.i
  br i1 %.not329.i, label %.loopexit.i, label %.lr.ph315.preheader.i

.lr.ph315.preheader.i:                            ; preds = %.preheader298.i
  %.pre345.i = load i32, ptr %3, align 8, !tbaa !25
  br label %.lr.ph315.i

.preheader.i:                                     ; preds = %.loopexit301.i
  br i1 %.not329.i, label %.loopexit.i, label %.lr.ph321.preheader.i

.lr.ph321.preheader.i:                            ; preds = %.preheader.i
  %.pre350.i = load i32, ptr %3, align 8, !tbaa !25
  br label %.lr.ph321.i

.lr.ph321.i:                                      ; preds = %._crit_edge319.i, %.lr.ph321.preheader.i
  %i.afd = phi i32 [ %i.afn, %._crit_edge319.i ], [ %i.aev, %.lr.ph321.preheader.i ]
  %i.afe = phi i32 [ %i.afo, %._crit_edge319.i ], [ %.pre350.i, %.lr.ph321.preheader.i ]
  %.0209320.i = phi i64 [ %i.afp, %._crit_edge319.i ], [ 0, %.lr.ph321.preheader.i ] ; 3 uses
  %i.aff = load ptr, ptr %i.yh, align 8, !tbaa !22
  %i.afg = load i64, ptr %i.yi, align 8, !tbaa !17
  %i.afh = mul i64 %i.afg, %.0209320.i
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aff, i64 %i.afh ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.afi, i64 64) ]
  %i.afj = load ptr, ptr %i.yb, align 8, !tbaa !22
  %i.afk = load i64, ptr %i.yc, align 8, !tbaa !17
  %i.afl = mul i64 %i.afk, %.0209320.i
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afl ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.afm, i64 64) ]
  %.not330.i = icmp eq i32 %i.afe, 0
  br i1 %.not330.i, label %._crit_edge319.i, label %.lr.ph318.i

._crit_edge319.loopexit.i:                        ; preds = %bb.cl
  %.pre351.i = load i32, ptr %i.ti, align 4, !tbaa !26
  br label %._crit_edge319.i

._crit_edge319.i:                                 ; preds = %._crit_edge319.loopexit.i, %.lr.ph321.i
  %i.afn = phi i32 [ %.pre351.i, %._crit_edge319.loopexit.i ], [ %i.afd, %.lr.ph321.i ] ; 2 uses
  %i.afo = phi i32 [ %i.ags, %._crit_edge319.loopexit.i ], [ 0, %.lr.ph321.i ]
  %i.afp = add nuw nsw i64 %.0209320.i, 1         ; 2 uses
  %i.afq = zext i32 %i.afn to i64
  %i.afr = icmp samesign ult i64 %i.afp, %i.afq
  br i1 %i.afr, label %.lr.ph321.i, label %.loopexit.i, !llvm.loop !394

.lr.ph318.i:                                      ; preds = %.lr.ph321.i, %bb.cl
  %.0208316.i = phi i64 [ %i.agr, %bb.cl ], [ 0, %.lr.ph321.i ] ; 4 uses
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.afi, i64 %.0208316.i
  %i.aft = load float, ptr %i.afs, align 4, !tbaa !28
  %i.afu = fdiv float %i.aft, %i.ry               ; 2 uses
  %i.afv = fcmp ogt float %i.afu, 1.000000e+00
  br i1 %i.afv, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %.lr.ph318.i
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.afm, i64 %.0208316.i ; 4 uses
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !28 ; 3 uses
  %i.afy = fmul float %i.afu, %i.afx
  store float %i.afy, ptr %i.afw, align 4, !tbaa !28
  %i.afz = load float, ptr %i.yj, align 8, !tbaa !450
  %i.aga = fmul float %i.afx, %i.afz
  %i.agb = call noundef i64 @lroundf(float noundef %i.aga) #27
  %i.agc = trunc i64 %i.agb to i32
  %i.agd = load float, ptr %i.afw, align 4, !tbaa !28
  %i.age = load float, ptr %i.yj, align 8, !tbaa !450
  %i.agf = fmul float %i.agd, %i.age
  %i.agg = call noundef i64 @lroundf(float noundef %i.agf) #27
  %i.agh = trunc i64 %i.agg to i32
  %i.agi = icmp eq i32 %i.agc, %i.agh
  br i1 %i.agi, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.agj = load float, ptr %i.yk, align 4, !tbaa !451
  %i.agk = fadd float %i.afx, %i.agj
  store float %i.agk, ptr %i.afw, align 4, !tbaa !28
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %.lr.ph318.i
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.afm, i64 %.0208316.i ; 2 uses
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !28 ; 2 uses
  %i.agn = fcmp ogt float %i.agm, %i.wy           ; 2 uses
  %i.ago = select i1 %i.agn, float %i.wy, float %i.agm ; 2 uses
  %i.agp = fcmp olt float %i.ago, %i.ww           ; 2 uses
  %i.agq = or i1 %i.agn, %i.agp
  br i1 %i.agq, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %simplifycfg.merge.i = select i1 %i.agp, float %i.ww, float %i.ago
  store float %simplifycfg.merge.i, ptr %i.agl, align 4, !tbaa !28
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.agr = add nuw nsw i64 %.0208316.i, 1         ; 2 uses
  %i.ags = load i32, ptr %3, align 8, !tbaa !25   ; 2 uses
  %i.agt = zext i32 %i.ags to i64
  %i.agu = icmp samesign ult i64 %i.agr, %i.agt
  br i1 %i.agu, label %.lr.ph318.i, label %._crit_edge319.loopexit.i, !llvm.loop !395

.lr.ph315.i:                                      ; preds = %._crit_edge313.i, %.lr.ph315.preheader.i
  %i.agv = phi i32 [ %i.ahf, %._crit_edge313.i ], [ %i.aev, %.lr.ph315.preheader.i ]
  %i.agw = phi i32 [ %i.ahg, %._crit_edge313.i ], [ %.pre345.i, %.lr.ph315.preheader.i ]
  %.0207314.i = phi i64 [ %i.ahh, %._crit_edge313.i ], [ 0, %.lr.ph315.preheader.i ] ; 3 uses
  %i.agx = load ptr, ptr %i.yh, align 8, !tbaa !22
  %i.agy = load i64, ptr %i.yi, align 8, !tbaa !17
  %i.agz = mul i64 %i.agy, %.0207314.i
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agx, i64 %i.agz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aha, i64 64) ]
  %i.ahb = load ptr, ptr %i.yb, align 8, !tbaa !22
  %i.ahc = load i64, ptr %i.yc, align 8, !tbaa !17
  %i.ahd = mul i64 %i.ahc, %.0207314.i
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %i.ahd ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ahe, i64 64) ]
  %.not328.i = icmp eq i32 %i.agw, 0
  br i1 %.not328.i, label %._crit_edge313.i, label %.lr.ph312.i

._crit_edge313.loopexit.i:                        ; preds = %bb.cr
  %.pre349.i = load i32, ptr %i.ti, align 4, !tbaa !26
  br label %._crit_edge313.i

._crit_edge313.i:                                 ; preds = %._crit_edge313.loopexit.i, %.lr.ph315.i
  %i.ahf = phi i32 [ %.pre349.i, %._crit_edge313.loopexit.i ], [ %i.agv, %.lr.ph315.i ] ; 2 uses
  %i.ahg = phi i32 [ %i.air, %._crit_edge313.loopexit.i ], [ 0, %.lr.ph315.i ]
  %i.ahh = add nuw nsw i64 %.0207314.i, 1         ; 2 uses
  %i.ahi = zext i32 %i.ahf to i64
  %i.ahj = icmp samesign ult i64 %i.ahh, %i.ahi
  br i1 %i.ahj, label %.lr.ph315.i, label %.loopexit.i, !llvm.loop !396

.lr.ph312.i:                                      ; preds = %.lr.ph315.i, %bb.cr
  %.0206310.i = phi i64 [ %i.aiq, %bb.cr ], [ 0, %.lr.ph315.i ] ; 5 uses
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %.0206310.i
  %i.ahl = load float, ptr %i.ahk, align 4, !tbaa !28
  %i.ahm = fdiv float %i.ahl, %i.ry               ; 3 uses
  %i.ahn = fcmp ugt float %i.ahm, 1.000000e+00
  br i1 %i.ahn, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph312.i
  %i.aho = fpext float %i.ahm to double
  %i.ahp = call noundef double @pow(double noundef %i.aho, double noundef %spec.store.select2.i) #27
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %.0206310.i ; 2 uses
  %i.ahr = load float, ptr %i.ahq, align 4, !tbaa !28
  %i.ahs = fpext float %i.ahr to double
  %i.aht = fmul double %i.ahp, %i.ahs
  %i.ahu = fptrunc double %i.aht to float         ; 2 uses
  store float %i.ahu, ptr %i.ahq, align 4, !tbaa !28
  br label %bb.cp

bb.cn:                                            ; preds = %.lr.ph312.i
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %.0206310.i ; 5 uses
  %i.ahw = load float, ptr %i.ahv, align 4, !tbaa !28 ; 3 uses
  %i.ahx = fmul float %i.ahm, %i.ahw
  store float %i.ahx, ptr %i.ahv, align 4, !tbaa !28
  %i.ahy = load float, ptr %i.yj, align 8, !tbaa !450
  %i.ahz = fmul float %i.ahw, %i.ahy
  %i.aia = call noundef i64 @lroundf(float noundef %i.ahz) #27
  %i.aib = trunc i64 %i.aia to i32
  %i.aic = load float, ptr %i.ahv, align 4, !tbaa !28
  %i.aid = load float, ptr %i.yj, align 8, !tbaa !450
  %i.aie = fmul float %i.aic, %i.aid
  %i.aif = call noundef i64 @lroundf(float noundef %i.aie) #27
  %i.aig = trunc i64 %i.aif to i32
  %i.aih = icmp eq i32 %i.aib, %i.aig
  br i1 %i.aih, label %bb.co, label %._crit_edge346.i

._crit_edge346.i:                                 ; preds = %bb.cn
  %.pre348.i = load float, ptr %i.ahv, align 4, !tbaa !28
  br label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.aii = load float, ptr %i.yk, align 4, !tbaa !451
  %i.aij = fadd float %i.ahw, %i.aii              ; 2 uses
  store float %i.aij, ptr %i.ahv, align 4, !tbaa !28
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %._crit_edge346.i, %bb.cm
  %i.aik = phi float [ %.pre348.i, %._crit_edge346.i ], [ %i.aij, %bb.co ], [ %i.ahu, %bb.cm ] ; 2 uses
  %i.ail = fcmp ogt float %i.aik, %i.wy           ; 2 uses
  %i.aim = select i1 %i.ail, float %i.wy, float %i.aik ; 2 uses
  %i.ain = fcmp olt float %i.aim, %i.ww           ; 2 uses
  %i.aio = or i1 %i.ail, %i.ain
  br i1 %i.aio, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %simplifycfg.merge403.i = select i1 %i.ain, float %i.ww, float %i.aim
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %.0206310.i
  store float %simplifycfg.merge403.i, ptr %i.aip, align 4, !tbaa !28
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.aiq = add nuw nsw i64 %.0206310.i, 1         ; 2 uses
  %i.air = load i32, ptr %3, align 8, !tbaa !25   ; 2 uses
  %i.ais = zext i32 %i.air to i64
  %i.ait = icmp samesign ult i64 %i.aiq, %i.ais
  br i1 %i.ait, label %.lr.ph312.i, label %._crit_edge313.loopexit.i, !llvm.loop !397

.loopexit.i:                                      ; preds = %._crit_edge313.i, %._crit_edge319.i, %.preheader.i, %.preheader298.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit.i, %bb.cd
  %.pr.i23 = load i32, ptr %i.xn, align 8, !tbaa !196
  %i.aiu = icmp eq i32 %.pr.i23, 0
  br i1 %i.aiu, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.xu) #27
  br label %bb.cu

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.jt1.i:   ; preds = %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.i, %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.thread.i
  %i.aiv = phi i32 [ %i.aah, %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.thread.i ], [ %.pr384.i, %_ZN3jxl12_GLOBAL__N_111TileDistMapERKNS_5PlaneIfEEiiRKNS_15AcStrategyImageE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %.loopexit386.i

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.yl) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %.pr275.i = load i32, ptr %i.xd, align 8, !tbaa !83
  %i.aiw = icmp eq i32 %.pr275.i, 0
  br i1 %i.aiw, label %bb.cv, label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.i24

.loopexit386.i:                                   ; preds = %bb.bs, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.jt1.i
  %.sroa.0241.1.jt1.i = phi i32 [ %i.aiv, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.jt1.i ], [ %i.yr, %bb.bs ]
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.yl) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %.pr275.jt1.i = load i32, ptr %i.xd, align 8, !tbaa !83
  %i.aix = icmp eq i32 %.pr275.jt1.i, 0
  br i1 %i.aix, label %bb.cw, label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.jt1.i

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(508) %19) #27
  br label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.i24

bb.cw:                                            ; preds = %.loopexit386.i
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(508) %19) #27
  br label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.jt1.i

_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.i24: ; preds = %bb.cv, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.adl, label %.thread288.i, label %bb.bq, !llvm.loop !398

_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.jt1.i: ; preds = %bb.cw, %.loopexit386.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %.thread284.i

.thread288.i:                                     ; preds = %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.i24
  %i.aiy = call i32 @_ZN3jxl9Quantizer13SetQuantFieldEfRKNS_5PlaneIfEEPNS1_IiEE(ptr noundef nonnull align 8 dereferenceable(72) %i.se, float noundef %.sroa.speculated.i.i, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %i.sf) #27
  br label %.thread284.i

.thread284.i:                                     ; preds = %bb.bq, %.thread288.i, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.jt1.i, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.thread.i22, %_ZN3jxl11ImageMinMaxIfEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i, %bb.bm
  %.sroa.0241.5.i = phi i32 [ 1, %bb.bm ], [ 1, %_ZN3jxl11ImageMinMaxIfEEvRKNS_5PlaneIT_EEPS2_S6_.exit.i ], [ %i.aiy, %.thread288.i ], [ %i.yp, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.thread.i22 ], [ %.sroa.0241.1.jt1.i, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit.jt1.i ], [ %i.yn, %bb.bq ] ; 2 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ub) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %.pr292.i = load i32, ptr %i.ts, align 8, !tbaa !196
  %i.aiz = icmp eq i32 %.pr292.i, 0
  br i1 %i.aiz, label %bb.cx, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit237.i

bb.cx:                                            ; preds = %.thread284.i
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.uc) #27
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit237.i

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit237.i:    ; preds = %bb.cx, %.thread284.i, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i
  %.sroa.0241.6295.i = phi i32 [ %.sroa.0241.5.i, %bb.cx ], [ %.sroa.0241.5.i, %.thread284.i ], [ %i.tz, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.aja = getelementptr inbounds nuw i8, ptr %16, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aja) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit237.i, %bb.bj, %bb.bi
  %.sroa.0241.7.i = phi i32 [ %.sroa.0241.6295.i, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit237.i ], [ %i.su, %bb.bi ], [ 1, %bb.bj ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3jxl24JxlButteraugliComparatorE, i64 16), ptr %14, align 8, !tbaa !200
  %i.ajb = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 2 uses
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !453 ; 3 uses
  store ptr null, ptr %i.ajb, align 8, !tbaa !453
  %.not.i.i.i.i = icmp eq ptr %i.ajc, null
  br i1 %.not.i.i.i.i, label %_ZN3jxl12_GLOBAL__N_120FindBestQuantizationERKNS_11FrameHeaderERKNS_6Image3IfEES7_RNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit, label %_ZNKSt3__114default_deleteIN3jxl21ButteraugliComparatorEEclB8nn180100EPS2_.exit.i.i.i.i

_ZNKSt3__114default_deleteIN3jxl21ButteraugliComparatorEEclB8nn180100EPS2_.exit.i.i.i.i: ; preds = %bb.cy
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !200
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 8
  %i.ajf = load ptr, ptr %i.aje, align 8
  call void %i.ajf(ptr noundef nonnull align 8 dereferenceable(840) %i.ajc) #27, !inline_history !399
  br label %_ZN3jxl12_GLOBAL__N_120FindBestQuantizationERKNS_11FrameHeaderERKNS_6Image3IfEES7_RNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit

_ZN3jxl12_GLOBAL__N_120FindBestQuantizationERKNS_11FrameHeaderERKNS_6Image3IfEES7_RNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit: ; preds = %bb.cy, %_ZNKSt3__114default_deleteIN3jxl21ButteraugliComparatorEEclB8nn180100EPS2_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.ajg = icmp eq i32 %.sroa.0241.7.i, 0
  br i1 %i.ajg, label %_ZN3jxl12_GLOBAL__N_120FindBestQuantizationERKNS_11FrameHeaderERKNS_6Image3IfEES7_RNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit.thread, label %_ZN3jxl12_GLOBAL__N_128FindBestQuantizationMaxErrorERKNS_11FrameHeaderERKNS_6Image3IfEERNS_5PlaneIfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutE.exit.thread

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.v = trunc nuw i64 %i.r to i32                ; 2 uses
  %i.w = trunc nuw i64 %i.s to i32                ; 2 uses
  %i.x = or i64 %i.i, %i.n
  %or.cond = icmp ult i64 %i.x, 34359738368
  br i1 %or.cond, label %bb.f, label %.thread77

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !466
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef %i.v, i32 noundef %i.w, i64 noundef 4) #27, !noalias !466
  %i.y = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %i.u, i64 noundef 0) #27, !noalias !466 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 3 uses
  br i1 %i.z, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.y, ptr %i.aa, align 8, !tbaa !196, !alias.scope !466
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

.critedge.i:                                      ; preds = %bb.f
  store i32 0, ptr %i.aa, align 8, !tbaa !196, !alias.scope !466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %12, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !197, !noalias !466
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !197, !alias.scope !466
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit: ; preds = %bb.g, %.critedge.i
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ag) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !466
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
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(60) %12, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
end_hunk_0
