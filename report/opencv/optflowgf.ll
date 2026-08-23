Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/optflowgf?download=true
inline.NumInlined: 292
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv12_GLOBAL__N_124FarnebackOpticalFlowImpl4calcERKNS_11_InputArrayES4_RKNS_17_InputOutputArrayE:bb.a
  store <2 x float> zeroinitializer, ptr %i.un, align 4, !tbaa !107
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv.next.i
  %i.up = load float, ptr %i.uo, align 4, !tbaa !107
  %i.uq = fmul float %i.ts, %i.up
  %.idx.i.1 = mul nuw nsw i64 %indvars.iv.next.i, 12
  %i.ur = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.idx.i.1 ; 2 uses
  store float %i.uq, ptr %i.ur, align 4, !tbaa !107
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 4
  store <2 x float> zeroinitializer, ptr %i.us, align 4, !tbaa !107
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.preheader237.i, label %.lr.ph.i, !llvm.loop !136

bb.dk:                                            ; preds = %bb.co
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i

bb.dl:                                            ; preds = %_ZN2cv4Mat_IdEaSEONS_3MatE.exit, %._crit_edge136.i.i
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.dl, %bb.di
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.uu, %bb.dl ], [ %.pn89.pn.i.i, %bb.di ] ; 2 uses
  %i.uv = load ptr, ptr %19, align 8, !tbaa !103  ; 3 uses
  %.not.i.i211.i = icmp eq ptr %i.uv, %i.fx
  %i.uw = icmp eq ptr %i.uv, null
  %or.cond.i.i = or i1 %.not.i.i211.i, %i.uw
  br i1 %or.cond.i.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i, label %bb.dm

bb.dm:                                            ; preds = %.body.i
  call void @_ZdaPv(ptr noundef nonnull %i.uv) #25
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i

.preheader236.i:                                  ; preds = %._crit_edge.i, %.preheader237.i, %bb.dj
  br i1 %i.sr, label %.lr.ph250.i.preheader, label %.preheader.i

.lr.ph250.i.preheader:                            ; preds = %.preheader236.i
  br i1 %i.ti, label %.lr.ph250.i.epil.preheader, label %.lr.ph250.i

.lr.ph245.i:                                      ; preds = %.preheader237.i, %._crit_edge.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge.i ], [ 0, %.preheader237.i ] ; 3 uses
  %indvars.iv291.i = phi i64 [ %indvars.iv.next292.i, %._crit_edge.i ], [ 1, %.preheader237.i ] ; 6 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv291.i
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !107 ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv291.i
  %i.va = load float, ptr %i.uz, align 4, !tbaa !107 ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv291.i
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !107 ; 2 uses
  %i.vd = sub nsw i64 %indvars.iv311.i, %indvars.iv291.i
  %i.ve = trunc nsw i64 %i.vd to i32
  %.sroa.speculated225.i = call i32 @llvm.smax.i32(i32 %i.ve, i32 0)
  %i.vf = zext nneg i32 %.sroa.speculated225.i to i64
  %i.vg = mul i64 %i.sj, %i.vf
  %i.vh = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.vg ; 3 uses
  %i.vi = add nuw nsw i64 %indvars.iv291.i, %indvars.iv311.i
  %i.vj = trunc nuw nsw i64 %i.vi to i32
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.sp, i32 %i.vj)
  %i.vk = sext i32 %.sroa.speculated.i to i64
  %i.vl = mul i64 %i.sj, %i.vk
  %i.vm = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.vl ; 3 uses
  br i1 %min.iters.check589, label %scalar.ph588.preheader, label %vector.memcheck575

vector.memcheck575:                               ; preds = %.lr.ph245.i
  %i.vn = xor i32 %indvar, -1
  %i.vo = add i32 %i.vn, %i.tr
  %smax = call i32 @llvm.smax.i32(i32 %i.vo, i32 0)
  %i.vp = zext nneg i32 %smax to i64
  %i.vq = mul i64 %i.sj, %i.vp
  %scevgep580 = getelementptr i8, ptr %scevgep579, i64 %i.vq
  %i.vr = add i32 %i.tq, %indvar
  %i.vs = call i32 @llvm.smin.i32(i32 %i.vr, i32 %i.sp)
  %smin = sext i32 %i.vs to i64
  %i.vt = mul i64 %i.sj, %smin
  %scevgep578 = getelementptr i8, ptr %scevgep577, i64 %i.vt
  %bound0581 = icmp ult ptr %i.kr, %scevgep578
  %bound1582 = icmp ult ptr %i.vm, %scevgep576
  %found.conflict583 = and i1 %bound0581, %bound1582
  %bound0584 = icmp ult ptr %i.kr, %scevgep580
  %bound1585 = icmp ult ptr %i.vh, %scevgep576
  %found.conflict586 = and i1 %bound0584, %bound1585
  %conflict.rdx587 = or i1 %found.conflict583, %found.conflict586
  br i1 %conflict.rdx587, label %scalar.ph588.preheader, label %vector.ph590

vector.ph590:                                     ; preds = %vector.memcheck575
  %broadcast.splatinsert592 = insertelement <4 x float> poison, float %i.uy, i64 0
  %broadcast.splatinsert594 = insertelement <4 x float> poison, float %i.va, i64 0
  %broadcast.splatinsert596 = insertelement <4 x float> poison, float %i.vc, i64 0
  %broadcast.splat597 = shufflevector <4 x float> %broadcast.splatinsert596, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vu = shufflevector <4 x float> %broadcast.splatinsert592, <4 x float> %broadcast.splatinsert594, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body598

vector.body598:                                   ; preds = %vector.body598, %vector.ph590
  %index599 = phi i64 [ 0, %vector.ph590 ], [ %index.next603, %vector.body598 ] ; 7 uses
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %index599
  %wide.load600 = load <4 x float>, ptr %i.vv, align 4, !tbaa !107, !alias.scope !137 ; 2 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %index599
  %wide.load601 = load <4 x float>, ptr %i.vw, align 4, !tbaa !107, !alias.scope !140 ; 2 uses
  %i.vx = fadd <4 x float> %wide.load600, %wide.load601 ; 2 uses
  %i.vy = mul nuw nsw i64 %index599, 12
  %i.vz = mul nuw i64 %index599, 12
  %i.wa = mul nuw i64 %index599, 12
  %i.wb = mul nuw i64 %index599, 12
  %i.wc = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.vy ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.vz ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 12
  %i.wf = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.wa ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 24
  %i.wh = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.wb ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 36
  %i.wj = load float, ptr %i.wc, align 4, !tbaa !107, !alias.scope !142, !noalias !144
  %i.wk = load float, ptr %i.we, align 4, !tbaa !107, !alias.scope !142, !noalias !144
  %i.wl = load float, ptr %i.wg, align 4, !tbaa !107, !alias.scope !142, !noalias !144
  %i.wm = load float, ptr %i.wi, align 4, !tbaa !107, !alias.scope !142, !noalias !144
  %i.wn = insertelement <4 x float> poison, float %i.wj, i64 0
  %i.wo = insertelement <4 x float> %i.wn, float %i.wk, i64 1
  %i.wp = insertelement <4 x float> %i.wo, float %i.wl, i64 2
  %i.wq = insertelement <4 x float> %i.wp, float %i.wm, i64 3
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wc, i64 4
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wf, i64 28
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wh, i64 40
  %i.wv = load float, ptr %i.wr, align 4, !tbaa !107, !alias.scope !142, !noalias !144
  %i.ww = load float, ptr %i.ws, align 4, !tbaa !107, !alias.scope !142, !noalias !144
  %i.wx = load float, ptr %i.wt, align 4, !tbaa !107, !alias.scope !142, !noalias !144
  %i.wy = load float, ptr %i.wu, align 4, !tbaa !107, !alias.scope !142, !noalias !144
  %i.wz = insertelement <4 x float> poison, float %i.wv, i64 0
  %i.xa = insertelement <4 x float> %i.wz, float %i.ww, i64 1
  %i.xb = insertelement <4 x float> %i.xa, float %i.wx, i64 2
  %i.xc = insertelement <4 x float> %i.xb, float %i.wy, i64 3
  %i.xd = fsub <4 x float> %wide.load601, %wide.load600
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wd, i64 20
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wf, i64 32
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wh, i64 44
  %i.xi = load float, ptr %i.xe, align 4, !tbaa !107, !alias.scope !142, !noalias !144
  %i.xj = load float, ptr %i.xf, align 4, !tbaa !107, !alias.scope !142, !noalias !144
  %i.xk = load float, ptr %i.xg, align 4, !tbaa !107, !alias.scope !142, !noalias !144
  %i.xl = load float, ptr %i.xh, align 4, !tbaa !107, !alias.scope !142, !noalias !144
  %i.xm = insertelement <4 x float> poison, float %i.xi, i64 0
  %i.xn = insertelement <4 x float> %i.xm, float %i.xj, i64 1
  %i.xo = insertelement <4 x float> %i.xn, float %i.xk, i64 2
  %i.xp = insertelement <4 x float> %i.xo, float %i.xl, i64 3
  %i.xq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat597, <4 x float> %i.vx, <4 x float> %i.xp)
  %i.xr = shufflevector <4 x float> %i.vx, <4 x float> %i.xd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xs = shufflevector <4 x float> %i.wq, <4 x float> %i.xc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xt = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.vu, <8 x float> %i.xr, <8 x float> %i.xs)
  %i.xu = shufflevector <4 x float> %i.xq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec602 = shufflevector <8 x float> %i.xt, <8 x float> %i.xu, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec602, ptr %i.wc, align 4, !tbaa !107, !alias.scope !142, !noalias !144
  %index.next603 = add nuw i64 %index599, 4       ; 2 uses
  %i.xv = icmp eq i64 %index.next603, %n.vec591
  br i1 %i.xv, label %middle.block604, label %vector.body598, !llvm.loop !145

middle.block604:                                  ; preds = %vector.body598
  br i1 %cmp.n605, label %._crit_edge.i, label %scalar.ph588.preheader

scalar.ph588.preheader:                           ; preds = %vector.memcheck575, %.lr.ph245.i, %middle.block604
  %indvars.iv286.i.ph = phi i64 [ 0, %vector.memcheck575 ], [ 0, %.lr.ph245.i ], [ %n.vec591, %middle.block604 ]
  %i.xw = insertelement <2 x float> poison, float %i.uy, i64 0
  %i.xx = insertelement <2 x float> %i.xw, float %i.va, i64 1
  br label %scalar.ph588

scalar.ph588:                                     ; preds = %scalar.ph588.preheader, %scalar.ph588
  %indvars.iv286.i = phi i64 [ %indvars.iv.next287.i, %scalar.ph588 ], [ %indvars.iv286.i.ph, %scalar.ph588.preheader ] ; 4 uses
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %indvars.iv286.i
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !107 ; 2 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %indvars.iv286.i
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !107 ; 2 uses
  %.idx328.i = mul nuw nsw i64 %indvars.iv286.i, 12
  %i.yc = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.idx328.i ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8 ; 2 uses
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !107
  %i.yf = load <2 x float>, ptr %i.yc, align 4, !tbaa !107
  %i.yg = fsub float %i.yb, %i.xz
  %i.yh = fadd float %i.xz, %i.yb                 ; 2 uses
  %i.yi = insertelement <2 x float> poison, float %i.yh, i64 0
  %i.yj = insertelement <2 x float> %i.yi, float %i.yg, i64 1
  %i.yk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xx, <2 x float> %i.yj, <2 x float> %i.yf)
  %i.yl = call float @llvm.fmuladd.f32(float %i.vc, float %i.yh, float %i.ye)
  store <2 x float> %i.yk, ptr %i.yc, align 4, !tbaa !107
  store float %i.yl, ptr %i.yd, align 4, !tbaa !107
  %indvars.iv.next287.i = add nuw nsw i64 %indvars.iv286.i, 1 ; 2 uses
  %exitcond290.not.i = icmp eq i64 %indvars.iv.next287.i, %wide.trip.count.i
  br i1 %exitcond290.not.i, label %._crit_edge.i, label %scalar.ph588, !llvm.loop !146

._crit_edge.i:                                    ; preds = %scalar.ph588, %middle.block604
  %indvars.iv.next292.i = add nuw nsw i64 %indvars.iv291.i, 1 ; 2 uses
  %exitcond295.not.i = icmp eq i64 %indvars.iv.next292.i, %wide.trip.count294.i
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond295.not.i, label %.preheader236.i, label %.lr.ph245.i, !llvm.loop !147

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph250.i
  br i1 %lcmp.mod693.not, label %.preheader.i, label %.lr.ph250.i.epil.preheader

.lr.ph250.i.epil.preheader:                       ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph250.i.preheader
  %indvars.iv296.i.epil.init = phi i64 [ 0, %.lr.ph250.i.preheader ], [ %indvars.iv.next297.i.1, %.preheader.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod694)
  %i.ym = sub nsw i64 2, %indvars.iv296.i.epil.init
  %i.yn = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.ym
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !107
  %i.yp = xor i64 %indvars.iv296.i.epil.init, -1
  %i.yq = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.yp
  store float %i.yo, ptr %i.yq, align 4, !tbaa !107
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv296.i.epil.init ; 2 uses
  %i.yr = getelementptr i8, ptr %gep.i.epil, i64 -12
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !107
  store float %i.ys, ptr %gep.i.epil, align 4, !tbaa !107
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph250.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa, %.preheader236.i
  br i1 %i.so, label %.lr.ph268.i, label %._crit_edge269.i

.lr.ph250.i:                                      ; preds = %.lr.ph250.i.preheader, %.lr.ph250.i
  %indvars.iv296.i = phi i64 [ %indvars.iv.next297.i.1, %.lr.ph250.i ], [ 0, %.lr.ph250.i.preheader ] ; 7 uses
  %niter696 = phi i64 [ %niter696.next.1, %.lr.ph250.i ], [ 0, %.lr.ph250.i.preheader ]
  %i.yt = sub nsw i64 2, %indvars.iv296.i
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.yt
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !107
  %i.yw = xor i64 %indvars.iv296.i, -1
  %i.yx = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.yw
  store float %i.yv, ptr %i.yx, align 4, !tbaa !107
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv296.i ; 2 uses
  %i.yy = getelementptr i8, ptr %gep.i, i64 -12
  %i.yz = load float, ptr %i.yy, align 4, !tbaa !107
  store float %i.yz, ptr %gep.i, align 4, !tbaa !107
  %i.za = sub nsw i64 1, %indvars.iv296.i
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.za
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !107
  %i.zd = xor i64 %indvars.iv296.i, -2
  %i.ze = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.zd
  store float %i.zc, ptr %i.ze, align 4, !tbaa !107
  %i.zf = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv296.i ; 2 uses
  %gep.i.1 = getelementptr i8, ptr %i.zf, i64 4
  %i.zg = getelementptr i8, ptr %i.zf, i64 -8
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !107
  store float %i.zh, ptr %gep.i.1, align 4, !tbaa !107
  %indvars.iv.next297.i.1 = add nuw nsw i64 %indvars.iv296.i, 2 ; 2 uses
  %niter696.next.1 = add i64 %niter696, 2         ; 2 uses
  %niter696.ncmp.1 = icmp eq i64 %niter696.next.1, %unroll_iter695
  br i1 %niter696.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph250.i, !llvm.loop !148

.lr.ph268.i:                                      ; preds = %.preheader.i, %._crit_edge261.i
  %indvars.iv306.i = phi i64 [ %indvars.iv.next307.i, %._crit_edge261.i ], [ 0, %.preheader.i ] ; 5 uses
  %i.zi = load float, ptr %i.kj, align 4, !tbaa !107 ; 2 uses
  %.idx329.i = mul nuw nsw i64 %indvars.iv306.i, 12
  %i.zj = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.idx329.i ; 2 uses
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !107
  %i.zl = fmul float %i.zi, %i.zk
  %i.zm = fpext float %i.zl to double             ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zj, i64 4
  %i.zo = load <2 x float>, ptr %i.zn, align 4, !tbaa !107
  %i.zp = insertelement <2 x float> poison, float %i.zi, i64 0
  %i.zq = shufflevector <2 x float> %i.zp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zr = fmul <2 x float> %i.zq, %i.zo
  %i.zs = fpext <2 x float> %i.zr to <2 x double> ; 2 uses
  br i1 %.not246.i, label %._crit_edge261.i, label %.lr.ph260.i.preheader

.lr.ph260.i.preheader:                            ; preds = %.lr.ph268.i
  %i.zt = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.zm, i64 0
  br label %.lr.ph260.i

.lr.ph260.i:                                      ; preds = %.lr.ph260.i.preheader, %.lr.ph260.i
  %indvars.iv301.i = phi i64 [ %indvars.iv.next302.i, %.lr.ph260.i ], [ 1, %.lr.ph260.i.preheader ] ; 6 uses
  %i.zu = phi <2 x double> [ %i.abh, %.lr.ph260.i ], [ %i.zs, %.lr.ph260.i.preheader ]
  %i.zv = phi <2 x double> [ %i.abg, %.lr.ph260.i ], [ zeroinitializer, %.lr.ph260.i.preheader ]
  %i.zw = phi <2 x double> [ %i.aao, %.lr.ph260.i ], [ %i.zt, %.lr.ph260.i.preheader ]
  %i.zx = add nuw nsw i64 %indvars.iv301.i, %indvars.iv306.i
  %.idx330.i = mul nuw nsw i64 %i.zx, 12
  %i.zy = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.idx330.i ; 2 uses
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !107 ; 2 uses
  %i.aaa = sub nsw i64 %indvars.iv306.i, %indvars.iv301.i
  %.idx331.i = mul nsw i64 %i.aaa, 12
  %i.aab = getelementptr inbounds i8, ptr %i.kr, i64 %.idx331.i ; 2 uses
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !107 ; 2 uses
  %i.aad = fadd float %i.zz, %i.aac
  %i.aae = fpext float %i.aad to double
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv301.i
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !107
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv301.i
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !107
  %i.aaj = insertelement <2 x float> poison, float %i.aag, i64 0 ; 2 uses
  %i.aak = insertelement <2 x float> %i.aaj, float %i.aai, i64 1
  %i.aal = fpext <2 x float> %i.aak to <2 x double>
  %i.aam = insertelement <2 x double> poison, double %i.aae, i64 0
  %i.aan = shufflevector <2 x double> %i.aam, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aao = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aan, <2 x double> %i.aal, <2 x double> %i.zw) ; 3 uses
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv301.i
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !107
  %i.aar = getelementptr inbounds nuw i8, ptr %i.zy, i64 4
  %i.aas = getelementptr i8, ptr %i.aab, i64 4
  %i.aat = load <2 x float>, ptr %i.aar, align 4, !tbaa !107 ; 2 uses
  %i.aau = load <2 x float>, ptr %i.aas, align 4, !tbaa !107 ; 2 uses
  %i.aav = fadd <2 x float> %i.aat, %i.aau
  %i.aaw = shufflevector <2 x float> %i.aaj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aax = fmul <2 x float> %i.aaw, %i.aav
  %i.aay = fpext <2 x float> %i.aax to <2 x double>
  %foldExtExtBinop = fsub <2 x float> %i.aat, %i.aau
  %i.aaz = fsub float %i.zz, %i.aac
  %i.aba = insertelement <2 x float> poison, float %i.aaz, i64 0
  %i.abb = shufflevector <2 x float> %i.aba, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.abc = insertelement <2 x float> poison, float %i.aaq, i64 0
  %i.abd = shufflevector <2 x float> %i.abc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abe = fmul <2 x float> %i.abb, %i.abd
  %i.abf = fpext <2 x float> %i.abe to <2 x double>
  %i.abg = fadd <2 x double> %i.zv, %i.abf        ; 2 uses
  %i.abh = fadd <2 x double> %i.zu, %i.aay        ; 2 uses
  %indvars.iv.next302.i = add nuw nsw i64 %indvars.iv301.i, 1 ; 2 uses
  %exitcond305.not.i = icmp eq i64 %indvars.iv.next302.i, %wide.trip.count294.i
  br i1 %exitcond305.not.i, label %._crit_edge261.i.loopexit, label %.lr.ph260.i, !llvm.loop !149

._crit_edge261.i.loopexit:                        ; preds = %.lr.ph260.i
  %i.abi = extractelement <2 x double> %i.aao, i64 1
  %i.abj = extractelement <2 x double> %i.aao, i64 0
  br label %._crit_edge261.i

._crit_edge261.i:                                 ; preds = %._crit_edge261.i.loopexit, %.lr.ph268.i
  %.0190.lcssa.i = phi double [ %i.zm, %.lr.ph268.i ], [ %i.abj, %._crit_edge261.i.loopexit ]
  %.0187.lcssa.i = phi double [ 0.000000e+00, %.lr.ph268.i ], [ %i.abi, %._crit_edge261.i.loopexit ]
  %i.abk = phi <2 x double> [ %i.zs, %.lr.ph268.i ], [ %i.abh, %._crit_edge261.i.loopexit ] ; 2 uses
  %i.abl = phi <2 x double> [ zeroinitializer, %.lr.ph268.i ], [ %i.abg, %._crit_edge261.i.loopexit ] ; 2 uses
  %.idx332.i = mul nuw nsw i64 %indvars.iv306.i, 20
  %i.abm = getelementptr inbounds nuw i8, ptr %i.tw, i64 %.idx332.i ; 2 uses
  %i.abn = shufflevector <2 x double> %i.abk, <2 x double> %i.abl, <2 x i32> <i32 0, i32 2>
  %i.abo = fmul <2 x double> %i.tk, %i.abn
  %i.abp = shufflevector <2 x double> %i.abk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.abq = insertelement <2 x double> %i.abp, double %.0187.lcssa.i, i64 1
  %i.abr = fmul <2 x double> %i.tm, %i.abq
  %i.abs = insertelement <2 x double> poison, double %.0190.lcssa.i, i64 0
  %i.abt = shufflevector <2 x double> %i.abs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abt, <2 x double> %i.to, <2 x double> %i.abr)
  %i.abv = shufflevector <2 x double> %i.abo, <2 x double> %i.abu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.abw = fptrunc <4 x double> %i.abv to <4 x float>
  store <4 x float> %i.abw, ptr %i.abm, align 4, !tbaa !107
  %i.abx = extractelement <2 x double> %i.abl, i64 1
  %i.aby = fmul double %i.sg, %i.abx
  %i.abz = fptrunc double %i.aby to float
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  store float %i.abz, ptr %i.aca, align 4, !tbaa !107
  %indvars.iv.next307.i = add nuw nsw i64 %indvars.iv306.i, 1 ; 2 uses
  %exitcond310.not.i = icmp eq i64 %indvars.iv.next307.i, %wide.trip.count.i
  br i1 %exitcond310.not.i, label %._crit_edge269.i, label %.lr.ph268.i, !llvm.loop !150

._crit_edge269.i:                                 ; preds = %._crit_edge261.i, %.preheader.i
  %indvars.iv.next312.i = add nuw nsw i64 %indvars.iv311.i, 1 ; 2 uses
  %exitcond315.not.i = icmp eq i64 %indvars.iv.next312.i, %wide.trip.count314.i
  br i1 %exitcond315.not.i, label %._crit_edge273.i, label %bb.dj, !llvm.loop !151

._crit_edge273.i:                                 ; preds = %._crit_edge269.i, %.preheader238.i
  %i.acb = load ptr, ptr %19, align 8, !tbaa !103 ; 3 uses
  %.not.i.i213.i = icmp eq ptr %i.acb, %i.fx
  %i.acc = icmp eq ptr %i.acb, null
  %or.cond.i214.i = or i1 %.not.i.i213.i, %i.acc
  br i1 %or.cond.i214.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit215.i, label %bb.dn

bb.dn:                                            ; preds = %._crit_edge273.i
  call void @_ZdaPv(ptr noundef nonnull %i.acb) #25
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit215.i

_ZN2cv10AutoBufferIfLm264EED2Ev.exit215.i:        ; preds = %bb.dn, %._crit_edge273.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.acd = load ptr, ptr %18, align 8, !tbaa !103 ; 3 uses
  %.not.i.i216.i = icmp eq ptr %i.acd, %i.fv
  %i.ace = icmp eq ptr %i.acd, null
  %or.cond.i217.i = or i1 %.not.i.i216.i, %i.ace
  br i1 %or.cond.i217.i, label %bb.dq, label %bb.do

bb.do:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit215.i
  call void @_ZdaPv(ptr noundef nonnull %i.acd) #25
  br label %bb.dq

_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i:           ; preds = %bb.dm, %.body.i, %bb.dk
  %.pn204.i = phi { ptr, i32 } [ %i.ut, %bb.dk ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.acf = load ptr, ptr %18, align 8, !tbaa !103 ; 3 uses
  %.not.i.i219.i = icmp eq ptr %i.acf, %i.fv
  %i.acg = icmp eq ptr %i.acf, null
  %or.cond.i220.i = or i1 %.not.i.i219.i, %i.acg
  br i1 %or.cond.i220.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit221.i, label %bb.dp

bb.dp:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.acf) #25
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit221.i

_ZN2cv10AutoBufferIfLm264EED2Ev.exit221.i:        ; preds = %bb.dp, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.body180

bb.dq:                                            ; preds = %bb.do, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit215.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br i1 %i.jc, label %bb.cd, label %bb.du, !llvm.loop !152

bb.dr:                                            ; preds = %bb.cd
  %i.ach = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  br label %.body180

bb.ds:                                            ; preds = %bb.ce
  %i.aci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  br label %.body180

bb.dt:                                            ; preds = %bb.cf
  %i.acj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  br label %.body180

.loopexit:                                        ; preds = %bb.dw, %bb.et
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body180

.loopexit.split-lp.loopexit:                      ; preds = %bb.cn
  %lpad.loopexit294 = landingpad { ptr, i32 }
          cleanup
  br label %.body180

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.du, %._crit_edge378
  %lpad.loopexit.split-lp295 = landingpad { ptr, i32 }
          cleanup
  br label %.body180

bb.du:                                            ; preds = %bb.dq
end_hunk_0
begin_hunk_1_@_ZN2cv12_GLOBAL__N_124FarnebackOpticalFlowImpl4calcERKNS_11_InputArrayES4_RKNS_17_InputOutputArrayE:bb.a

vector.memcheck537:                               ; preds = %.lr.ph257.split.us.i.preheader
  %scevgep539 = getelementptr i8, ptr %i.agw, i64 %i.agf
  %bound0541 = icmp ugt ptr %scevgep539, %i.aem
  %bound1542 = icmp ult ptr %i.agw, %scevgep538
  %found.conflict543 = and i1 %bound0541, %bound1542
  %conflict.rdx = or i1 %found.conflict543, %found.conflict546
  br i1 %conflict.rdx, label %.lr.ph257.split.us.i.preheader670, label %vector.ph549

vector.ph549:                                     ; preds = %vector.memcheck537
  %i.agx = load float, ptr %i.adz, align 4, !tbaa !107, !alias.scope !162
  %broadcast.splatinsert555 = insertelement <4 x float> poison, float %i.agx, i64 0
  %broadcast.splat556 = shufflevector <4 x float> %broadcast.splatinsert555, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body551

vector.body551:                                   ; preds = %vector.body551, %vector.ph549
  %index552 = phi i64 [ 0, %vector.ph549 ], [ %index.next557, %vector.body551 ] ; 3 uses
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %index552 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 16
  %wide.load553 = load <4 x float>, ptr %i.agy, align 4, !tbaa !107, !alias.scope !165
  %wide.load554 = load <4 x float>, ptr %i.agz, align 4, !tbaa !107, !alias.scope !165
  %i.aha = fmul <4 x float> %wide.load553, %broadcast.splat556
  %i.ahb = fmul <4 x float> %wide.load554, %broadcast.splat556
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %index552 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 16
  store <4 x float> %i.aha, ptr %i.ahc, align 16, !tbaa !107, !alias.scope !167, !noalias !169
  store <4 x float> %i.ahb, ptr %i.ahd, align 16, !tbaa !107, !alias.scope !167, !noalias !169
  %index.next557 = add nuw i64 %index552, 8       ; 2 uses
  %i.ahe = icmp eq i64 %index.next557, %n.vec550
  br i1 %i.ahe, label %middle.block558, label %vector.body551, !llvm.loop !170

middle.block558:                                  ; preds = %vector.body551
  br i1 %cmp.n559, label %.preheader235.i, label %.lr.ph257.split.us.i.preheader670

.lr.ph257.split.us.i.preheader670:                ; preds = %vector.memcheck537, %.lr.ph257.split.us.i.preheader, %middle.block558
  %indvars.iv300.i.ph = phi i64 [ 0, %vector.memcheck537 ], [ 0, %.lr.ph257.split.us.i.preheader ], [ %n.vec550, %middle.block558 ] ; 3 uses
  br i1 %lcmp.mod706.not, label %.lr.ph257.split.us.i.prol.loopexit, label %.lr.ph257.split.us.i.prol

.lr.ph257.split.us.i.prol:                        ; preds = %.lr.ph257.split.us.i.preheader670, %.lr.ph257.split.us.i.prol
  %indvars.iv300.i.prol = phi i64 [ %indvars.iv.next301.i.prol, %.lr.ph257.split.us.i.prol ], [ %indvars.iv300.i.ph, %.lr.ph257.split.us.i.preheader670 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph257.split.us.i.prol ], [ 0, %.lr.ph257.split.us.i.preheader670 ]
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %indvars.iv300.i.prol
  %i.ahg = load float, ptr %i.ahf, align 4, !tbaa !107
  %i.ahh = load float, ptr %i.adz, align 4, !tbaa !107
  %i.ahi = fmul float %i.ahg, %i.ahh
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %indvars.iv300.i.prol
  store float %i.ahi, ptr %i.ahj, align 4, !tbaa !107
  %indvars.iv.next301.i.prol = add nuw nsw i64 %indvars.iv300.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter705
  br i1 %prol.iter.cmp.not, label %.lr.ph257.split.us.i.prol.loopexit, label %.lr.ph257.split.us.i.prol, !llvm.loop !171

.lr.ph257.split.us.i.prol.loopexit:               ; preds = %.lr.ph257.split.us.i.prol, %.lr.ph257.split.us.i.preheader670
  %indvars.iv300.i.unr = phi i64 [ %indvars.iv300.i.ph, %.lr.ph257.split.us.i.preheader670 ], [ %indvars.iv.next301.i.prol, %.lr.ph257.split.us.i.prol ]
  %i.ahk = sub nsw i64 %indvars.iv300.i.ph, %wide.trip.count298.i
  %i.ahl = icmp ugt i64 %i.ahk, -4
  br i1 %i.ahl, label %.preheader235.i, label %.lr.ph257.split.us.i

.lr.ph257.split.us.i:                             ; preds = %.lr.ph257.split.us.i.prol.loopexit, %.lr.ph257.split.us.i
  %indvars.iv300.i = phi i64 [ %indvars.iv.next301.i.3, %.lr.ph257.split.us.i ], [ %indvars.iv300.i.unr, %.lr.ph257.split.us.i.prol.loopexit ] ; 6 uses
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %indvars.iv300.i
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !107
  %i.aho = load float, ptr %i.adz, align 4, !tbaa !107
  %i.ahp = fmul float %i.ahn, %i.aho
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %indvars.iv300.i
  store float %i.ahp, ptr %i.ahq, align 4, !tbaa !107
  %indvars.iv.next301.i = add nuw nsw i64 %indvars.iv300.i, 1 ; 2 uses
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %indvars.iv.next301.i
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !107
  %i.aht = load float, ptr %i.adz, align 4, !tbaa !107
  %i.ahu = fmul float %i.ahs, %i.aht
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %indvars.iv.next301.i
  store float %i.ahu, ptr %i.ahv, align 4, !tbaa !107
  %indvars.iv.next301.i.1 = add nuw nsw i64 %indvars.iv300.i, 2 ; 2 uses
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %indvars.iv.next301.i.1
  %i.ahx = load float, ptr %i.ahw, align 4, !tbaa !107
  %i.ahy = load float, ptr %i.adz, align 4, !tbaa !107
  %i.ahz = fmul float %i.ahx, %i.ahy
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %indvars.iv.next301.i.1
  store float %i.ahz, ptr %i.aia, align 4, !tbaa !107
  %indvars.iv.next301.i.2 = add nuw nsw i64 %indvars.iv300.i, 3 ; 2 uses
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %indvars.iv.next301.i.2
  %i.aic = load float, ptr %i.aib, align 4, !tbaa !107
  %i.aid = load float, ptr %i.adz, align 4, !tbaa !107
  %i.aie = fmul float %i.aic, %i.aid
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %indvars.iv.next301.i.2
  store float %i.aie, ptr %i.aif, align 4, !tbaa !107
  %indvars.iv.next301.i.3 = add nuw nsw i64 %indvars.iv300.i, 4 ; 2 uses
  %exitcond305.not.i212.3 = icmp eq i64 %indvars.iv.next301.i.3, %wide.trip.count298.i
  br i1 %exitcond305.not.i212.3, label %.preheader235.i, label %.lr.ph257.split.us.i, !llvm.loop !172

bb.ef:                                            ; preds = %bb.ef, %.lr.ph248.i
  %indvars.iv285.i = phi i64 [ 0, %.lr.ph248.i ], [ %indvars.iv.next286.i, %bb.ef ] ; 5 uses
  %i.aig = sub nsw i64 %indvars.iv327.i, %indvars.iv285.i
  %i.aih = trunc nsw i64 %i.aig to i32
  %.sroa.speculated223.i = call i32 @llvm.smax.i32(i32 %i.aih, i32 0)
  %i.aii = zext nneg i32 %.sroa.speculated223.i to i64
  %i.aij = mul i64 %i.agv, %i.aii
  %i.aik = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.aij
  %i.ail = sub nsw i64 %i.afw, %indvars.iv285.i
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %i.aeg, i64 %i.ail
  store ptr %i.aik, ptr %i.aim, align 8, !tbaa !161
  %i.ain = add nuw nsw i64 %indvars.iv285.i, %indvars.iv327.i
  %i.aio = trunc nsw i64 %i.ain to i32
  %.sroa.speculated.i197 = call i32 @llvm.smin.i32(i32 %i.afu, i32 %i.aio)
  %i.aip = sext i32 %.sroa.speculated.i197 to i64
  %i.aiq = mul i64 %i.agv, %i.aip
  %i.air = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.aiq
  %gep.i198 = getelementptr [8 x i8], ptr %i.afx, i64 %indvars.iv285.i
  store ptr %i.air, ptr %gep.i198, align 8, !tbaa !161
  %indvars.iv.next286.i = add nuw nsw i64 %indvars.iv285.i, 1 ; 2 uses
  %exitcond289.not.i = icmp eq i64 %indvars.iv.next286.i, %wide.trip.count288.i
  br i1 %exitcond289.not.i, label %.preheader236.i199, label %bb.ef, !llvm.loop !173

.preheader235.i:                                  ; preds = %._crit_edge254.i, %.lr.ph257.split.us.i.prol.loopexit, %.lr.ph257.split.us.i, %middle.block558, %.preheader236.i199
  br i1 %i.afy, label %.lr.ph259.i.preheader, label %.preheader234.i

.lr.ph259.i.preheader:                            ; preds = %.preheader235.i
  br i1 %i.agj, label %.lr.ph259.i.epil.preheader, label %.lr.ph259.i

.lr.ph253.i:                                      ; preds = %.lr.ph257.i, %._crit_edge254.i
  %indvars.iv295.i = phi i64 [ %indvars.iv.next296.i, %._crit_edge254.i ], [ 0, %.lr.ph257.i ] ; 9 uses
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %indvars.iv295.i
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !107
  %i.aiu = load float, ptr %i.adz, align 4, !tbaa !107
  %i.aiv = fmul float %i.ait, %i.aiu              ; 2 uses
  br i1 %i.agi, label %.epil.preheader697, label %.lr.ph253.i.new

.lr.ph253.i.new:                                  ; preds = %.lr.ph253.i, %.lr.ph253.i.new
  %indvars.iv290.i = phi i64 [ %indvars.iv.next291.i.1, %.lr.ph253.i.new ], [ 1, %.lr.ph253.i ] ; 5 uses
  %.0162251.i = phi float [ %i.ajt, %.lr.ph253.i.new ], [ %i.aiv, %.lr.ph253.i ]
  %niter704 = phi i64 [ %niter704.next.1, %.lr.ph253.i.new ], [ 0, %.lr.ph253.i ]
  %gep353.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep352.i, i64 %indvars.iv290.i
  %i.aiw = load ptr, ptr %gep353.i, align 8, !tbaa !161
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %indvars.iv295.i
  %i.aiy = load float, ptr %i.aix, align 4, !tbaa !107
  %i.aiz = sub nsw i64 %i.afw, %indvars.iv290.i
  %i.aja = getelementptr inbounds nuw [8 x i8], ptr %i.aeg, i64 %i.aiz
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !161
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.ajb, i64 %indvars.iv295.i
  %i.ajd = load float, ptr %i.ajc, align 4, !tbaa !107
  %i.aje = fadd float %i.aiy, %i.ajd
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.adz, i64 %indvars.iv290.i
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !107
  %i.ajh = call float @llvm.fmuladd.f32(float %i.aje, float %i.ajg, float %.0162251.i)
  %indvars.iv.next291.i = add nuw nsw i64 %indvars.iv290.i, 1 ; 3 uses
  %gep353.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep352.i, i64 %indvars.iv.next291.i
  %i.aji = load ptr, ptr %gep353.i.1, align 8, !tbaa !161
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.aji, i64 %indvars.iv295.i
  %i.ajk = load float, ptr %i.ajj, align 4, !tbaa !107
  %i.ajl = sub nsw i64 %i.afw, %indvars.iv.next291.i
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr %i.aeg, i64 %i.ajl
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !161
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.ajn, i64 %indvars.iv295.i
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !107
  %i.ajq = fadd float %i.ajk, %i.ajp
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.adz, i64 %indvars.iv.next291.i
  %i.ajs = load float, ptr %i.ajr, align 4, !tbaa !107
  %i.ajt = call float @llvm.fmuladd.f32(float %i.ajq, float %i.ajs, float %i.ajh) ; 3 uses
  %indvars.iv.next291.i.1 = add nuw nsw i64 %indvars.iv290.i, 2 ; 2 uses
  %niter704.next.1 = add nuw i64 %niter704, 2     ; 2 uses
  %niter704.ncmp.1 = icmp eq i64 %niter704.next.1, %unroll_iter703
  br i1 %niter704.ncmp.1, label %._crit_edge254.i.unr-lcssa, label %.lr.ph253.i.new, !llvm.loop !174

._crit_edge254.i.unr-lcssa:                       ; preds = %.lr.ph253.i.new
  br i1 %lcmp.mod700.not, label %._crit_edge254.i, label %.epil.preheader697

.epil.preheader697:                               ; preds = %._crit_edge254.i.unr-lcssa, %.lr.ph253.i
  %indvars.iv290.i.epil.init = phi i64 [ 1, %.lr.ph253.i ], [ %indvars.iv.next291.i.1, %._crit_edge254.i.unr-lcssa ] ; 3 uses
  %.0162251.i.epil.init = phi float [ %i.aiv, %.lr.ph253.i ], [ %i.ajt, %._crit_edge254.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod702)
  %gep353.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep352.i, i64 %indvars.iv290.i.epil.init
  %i.aju = load ptr, ptr %gep353.i.epil, align 8, !tbaa !161
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.aju, i64 %indvars.iv295.i
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !107
  %i.ajx = sub nsw i64 %i.afw, %indvars.iv290.i.epil.init
  %i.ajy = getelementptr inbounds nuw [8 x i8], ptr %i.aeg, i64 %i.ajx
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !161
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.ajz, i64 %indvars.iv295.i
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !107
  %i.akc = fadd float %i.ajw, %i.akb
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %i.adz, i64 %indvars.iv290.i.epil.init
  %i.ake = load float, ptr %i.akd, align 4, !tbaa !107
  %i.akf = call float @llvm.fmuladd.f32(float %i.akc, float %i.ake, float %.0162251.i.epil.init)
  br label %._crit_edge254.i

._crit_edge254.i:                                 ; preds = %._crit_edge254.i.unr-lcssa, %.epil.preheader697
  %.lcssa680 = phi float [ %i.ajt, %._crit_edge254.i.unr-lcssa ], [ %i.akf, %.epil.preheader697 ]
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %indvars.iv295.i
  store float %.lcssa680, ptr %i.akg, align 4, !tbaa !107
  %indvars.iv.next296.i = add nuw nsw i64 %indvars.iv295.i, 1 ; 2 uses
  %exitcond299.not.i = icmp eq i64 %indvars.iv.next296.i, %wide.trip.count298.i
  br i1 %exitcond299.not.i, label %.preheader235.i, label %.lr.ph253.i, !llvm.loop !175

.preheader234.i.loopexit.unr-lcssa:               ; preds = %.lr.ph259.i
  br i1 %lcmp.mod709.not, label %.preheader234.i, label %.lr.ph259.i.epil.preheader

.lr.ph259.i.epil.preheader:                       ; preds = %.preheader234.i.loopexit.unr-lcssa, %.lr.ph259.i.preheader
  %indvars.iv306.i209.epil.init = phi i64 [ 0, %.lr.ph259.i.preheader ], [ %indvars.iv.next307.i210.1, %.preheader234.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod710)
  %i.akh = sub nsw i64 4, %indvars.iv306.i209.epil.init
  %i.aki = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.akh
  %i.akj = load float, ptr %i.aki, align 4, !tbaa !107
  %i.akk = xor i64 %indvars.iv306.i209.epil.init, -1
  %i.akl = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.akk
  store float %i.akj, ptr %i.akl, align 4, !tbaa !107
  %gep355.i.epil = getelementptr [4 x i8], ptr %invariant.gep354.i, i64 %indvars.iv306.i209.epil.init ; 2 uses
  %i.akm = getelementptr i8, ptr %gep355.i.epil, i64 -20
  %i.akn = load float, ptr %i.akm, align 4, !tbaa !107
  store float %i.akn, ptr %gep355.i.epil, align 4, !tbaa !107
  br label %.preheader234.i

.preheader234.i:                                  ; preds = %.lr.ph259.i.epil.preheader, %.preheader234.i.loopexit.unr-lcssa, %.preheader235.i
  br i1 %i.afv, label %.lr.ph268.i203, label %._crit_edge271.i

.lr.ph259.i:                                      ; preds = %.lr.ph259.i.preheader, %.lr.ph259.i
  %indvars.iv306.i209 = phi i64 [ %indvars.iv.next307.i210.1, %.lr.ph259.i ], [ 0, %.lr.ph259.i.preheader ] ; 7 uses
  %niter712 = phi i64 [ %niter712.next.1, %.lr.ph259.i ], [ 0, %.lr.ph259.i.preheader ]
  %i.ako = sub nsw i64 4, %indvars.iv306.i209
  %i.akp = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.ako
  %i.akq = load float, ptr %i.akp, align 8, !tbaa !107
  %i.akr = xor i64 %indvars.iv306.i209, -1
  %i.aks = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.akr
  store float %i.akq, ptr %i.aks, align 4, !tbaa !107
  %gep355.i = getelementptr [4 x i8], ptr %invariant.gep354.i, i64 %indvars.iv306.i209 ; 2 uses
  %i.akt = getelementptr i8, ptr %gep355.i, i64 -20
  %i.aku = load float, ptr %i.akt, align 4, !tbaa !107
  store float %i.aku, ptr %gep355.i, align 4, !tbaa !107
  %i.akv = sub nsw i64 3, %indvars.iv306.i209
  %i.akw = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.akv
  %i.akx = load float, ptr %i.akw, align 4, !tbaa !107
  %i.aky = xor i64 %indvars.iv306.i209, -2
  %i.akz = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.aky
  store float %i.akx, ptr %i.akz, align 8, !tbaa !107
  %i.ala = getelementptr [4 x i8], ptr %invariant.gep354.i, i64 %indvars.iv306.i209 ; 2 uses
  %gep355.i.1 = getelementptr i8, ptr %i.ala, i64 4
  %i.alb = getelementptr i8, ptr %i.ala, i64 -16
  %i.alc = load float, ptr %i.alb, align 4, !tbaa !107
  store float %i.alc, ptr %gep355.i.1, align 4, !tbaa !107
  %indvars.iv.next307.i210.1 = add nuw nsw i64 %indvars.iv306.i209, 2 ; 2 uses
  %niter712.next.1 = add i64 %niter712, 2         ; 2 uses
  %niter712.ncmp.1 = icmp eq i64 %niter712.next.1, %unroll_iter711
  br i1 %niter712.ncmp.1, label %.preheader234.i.loopexit.unr-lcssa, label %.lr.ph259.i, !llvm.loop !176

.lr.ph268.i203:                                   ; preds = %.preheader234.i, %._crit_edge265.i
  %indvars.iv316.i = phi i64 [ %indvars.iv.next317.i, %._crit_edge265.i ], [ 0, %.preheader234.i ] ; 6 uses
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %indvars.iv316.i ; 4 uses
  %i.ale = load float, ptr %i.ald, align 4, !tbaa !107
  %i.alf = load float, ptr %i.adz, align 4, !tbaa !107
  %i.alg = fmul float %i.ale, %i.alf              ; 3 uses
  br i1 %.not238.i, label %._crit_edge265.i, label %.lr.ph264.i.preheader

.lr.ph264.i.preheader:                            ; preds = %.lr.ph268.i203
  br i1 %i.agk, label %.lr.ph264.i.epil.preheader, label %.lr.ph264.i

.lr.ph264.i:                                      ; preds = %.lr.ph264.i.preheader, %.lr.ph264.i
  %indvars.iv311.i204 = phi i64 [ %indvars.iv.next312.i205.1, %.lr.ph264.i ], [ 1, %.lr.ph264.i.preheader ] ; 4 uses
  %.0161262.i = phi float [ %i.aly, %.lr.ph264.i ], [ %i.alg, %.lr.ph264.i.preheader ]
  %niter719 = phi i64 [ %niter719.next.1, %.lr.ph264.i ], [ 0, %.lr.ph264.i.preheader ]
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %i.adz, i64 %indvars.iv311.i204
  %i.ali = load float, ptr %i.alh, align 4, !tbaa !107
  %i.alj = mul nuw nsw i64 %indvars.iv311.i204, 5 ; 2 uses
  %i.alk = sub nsw i64 %indvars.iv316.i, %i.alj
  %i.all = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.alk
  %i.alm = load float, ptr %i.all, align 4, !tbaa !107
  %gep357.i = getelementptr inbounds nuw [4 x i8], ptr %i.ald, i64 %i.alj
  %i.aln = load float, ptr %gep357.i, align 4, !tbaa !107
  %i.alo = fadd float %i.alm, %i.aln
  %i.alp = call float @llvm.fmuladd.f32(float %i.ali, float %i.alo, float %.0161262.i)
  %indvars.iv.next312.i205 = add nuw nsw i64 %indvars.iv311.i204, 1 ; 2 uses
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %i.adz, i64 %indvars.iv.next312.i205
  %i.alr = load float, ptr %i.alq, align 4, !tbaa !107
  %i.als = mul nuw nsw i64 %indvars.iv.next312.i205, 5 ; 2 uses
  %i.alt = sub nsw i64 %indvars.iv316.i, %i.als
  %i.alu = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.alt
  %i.alv = load float, ptr %i.alu, align 4, !tbaa !107
  %gep357.i.1 = getelementptr inbounds nuw [4 x i8], ptr %i.ald, i64 %i.als
  %i.alw = load float, ptr %gep357.i.1, align 4, !tbaa !107
  %i.alx = fadd float %i.alv, %i.alw
  %i.aly = call float @llvm.fmuladd.f32(float %i.alr, float %i.alx, float %i.alp) ; 3 uses
  %indvars.iv.next312.i205.1 = add nuw nsw i64 %indvars.iv311.i204, 2 ; 2 uses
  %niter719.next.1 = add nuw i64 %niter719, 2     ; 2 uses
  %niter719.ncmp.1 = icmp eq i64 %niter719.next.1, %unroll_iter718
  br i1 %niter719.ncmp.1, label %._crit_edge265.i.loopexit.unr-lcssa, label %.lr.ph264.i, !llvm.loop !177

._crit_edge265.i.loopexit.unr-lcssa:              ; preds = %.lr.ph264.i
  br i1 %lcmp.mod715.not, label %._crit_edge265.i, label %.lr.ph264.i.epil.preheader

.lr.ph264.i.epil.preheader:                       ; preds = %._crit_edge265.i.loopexit.unr-lcssa, %.lr.ph264.i.preheader
  %indvars.iv311.i204.epil.init = phi i64 [ 1, %.lr.ph264.i.preheader ], [ %indvars.iv.next312.i205.1, %._crit_edge265.i.loopexit.unr-lcssa ] ; 2 uses
  %.0161262.i.epil.init = phi float [ %i.alg, %.lr.ph264.i.preheader ], [ %i.aly, %._crit_edge265.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod717)
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.adz, i64 %indvars.iv311.i204.epil.init
  %i.ama = load float, ptr %i.alz, align 4, !tbaa !107
  %i.amb = mul nuw nsw i64 %indvars.iv311.i204.epil.init, 5 ; 2 uses
  %i.amc = sub nsw i64 %indvars.iv316.i, %i.amb
  %i.amd = getelementptr inbounds [4 x i8], ptr %i.aem, i64 %i.amc
  %i.ame = load float, ptr %i.amd, align 4, !tbaa !107
  %gep357.i.epil = getelementptr inbounds nuw [4 x i8], ptr %i.ald, i64 %i.amb
  %i.amf = load float, ptr %gep357.i.epil, align 4, !tbaa !107
  %i.amg = fadd float %i.ame, %i.amf
  %i.amh = call float @llvm.fmuladd.f32(float %i.ama, float %i.amg, float %.0161262.i.epil.init)
  br label %._crit_edge265.i

._crit_edge265.i:                                 ; preds = %.lr.ph264.i.epil.preheader, %._crit_edge265.i.loopexit.unr-lcssa, %.lr.ph268.i203
  %.0161.lcssa.i = phi float [ %i.alg, %.lr.ph268.i203 ], [ %i.aly, %._crit_edge265.i.loopexit.unr-lcssa ], [ %i.amh, %.lr.ph264.i.epil.preheader ]
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv316.i
  store float %.0161.lcssa.i, ptr %i.ami, align 4, !tbaa !107
  %indvars.iv.next317.i = add nuw nsw i64 %indvars.iv316.i, 1 ; 2 uses
  %exitcond321.not.i = icmp eq i64 %indvars.iv.next317.i, %wide.trip.count298.i
  br i1 %exitcond321.not.i, label %.lr.ph270.i.preheader, label %.lr.ph268.i203, !llvm.loop !178

.lr.ph270.i.preheader:                            ; preds = %._crit_edge265.i
  br i1 %min.iters.check528, label %.lr.ph270.i.preheader669, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph270.i.preheader
  %scevgep = getelementptr i8, ptr %i.agq, i64 %i.agd
  %scevgep525 = getelementptr i8, ptr %scevgep, i64 %i.ags
  %bound0 = icmp ult ptr %i.agt, %scevgep526
  %bound1 = icmp ugt ptr %scevgep525, %i.aeq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph270.i.preheader669, label %vector.body531

vector.body531:                                   ; preds = %vector.memcheck, %vector.body531
  %index532 = phi i64 [ %index.next533, %vector.body531 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.amj = mul nuw nsw i64 %index532, 20
  %i.amk = mul nuw i64 %index532, 20
  %i.aml = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %i.amj ; 5 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %i.amk ; 5 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 20
  %i.amo = load float, ptr %i.aml, align 8, !tbaa !107, !alias.scope !179
  %i.amp = load float, ptr %i.amn, align 4, !tbaa !107, !alias.scope !179
  %i.amq = insertelement <2 x float> poison, float %i.amo, i64 0
  %i.amr = insertelement <2 x float> %i.amq, float %i.amp, i64 1
  %i.ams = fpext <2 x float> %i.amr to <2 x double> ; 2 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %i.aml, i64 4
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amm, i64 24
  %i.amv = load float, ptr %i.amt, align 4, !tbaa !107, !alias.scope !179
  %i.amw = load float, ptr %i.amu, align 8, !tbaa !107, !alias.scope !179
  %i.amx = insertelement <2 x float> poison, float %i.amv, i64 0
  %i.amy = insertelement <2 x float> %i.amx, float %i.amw, i64 1
  %i.amz = fpext <2 x float> %i.amy to <2 x double> ; 4 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.aml, i64 8
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amm, i64 28
  %i.anc = load float, ptr %i.ana, align 8, !tbaa !107, !alias.scope !179
  %i.and = load float, ptr %i.anb, align 4, !tbaa !107, !alias.scope !179
  %i.ane = insertelement <2 x float> poison, float %i.anc, i64 0
  %i.anf = insertelement <2 x float> %i.ane, float %i.and, i64 1
  %i.ang = fpext <2 x float> %i.anf to <2 x double> ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.aml, i64 12
  %i.ani = getelementptr inbounds nuw i8, ptr %i.amm, i64 32
  %i.anj = load float, ptr %i.anh, align 4, !tbaa !107, !alias.scope !179
  %i.ank = load float, ptr %i.ani, align 8, !tbaa !107, !alias.scope !179
  %i.anl = insertelement <2 x float> poison, float %i.anj, i64 0
  %i.anm = insertelement <2 x float> %i.anl, float %i.ank, i64 1
  %i.ann = fpext <2 x float> %i.anm to <2 x double> ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.aml, i64 16
  %i.anp = getelementptr inbounds nuw i8, ptr %i.amm, i64 36
  %i.anq = load float, ptr %i.ano, align 8, !tbaa !107, !alias.scope !179
  %i.anr = load float, ptr %i.anp, align 4, !tbaa !107, !alias.scope !179
  %i.ans = insertelement <2 x float> poison, float %i.anq, i64 0
  %i.ant = insertelement <2 x float> %i.ans, float %i.anr, i64 1
  %i.anu = fpext <2 x float> %i.ant to <2 x double> ; 2 uses
  %i.anv = fneg <2 x double> %i.amz
  %i.anw = fmul <2 x double> %i.amz, %i.anv
  %i.anx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ams, <2 x double> %i.ang, <2 x double> %i.anw)
  %i.any = fadd <2 x double> %i.anx, splat (double 1.000000e-03)
  %i.anz = fdiv <2 x double> splat (double 1.000000e+00), %i.any ; 2 uses
  %i.aoa = fneg <2 x double> %i.ann
  %i.aob = fmul <2 x double> %i.amz, %i.aoa
  %i.aoc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ams, <2 x double> %i.anu, <2 x double> %i.aob)
  %i.aod = fmul <2 x double> %i.aoc, %i.anz
  %i.aoe = fptrunc <2 x double> %i.aod to <2 x float>
  %i.aof = shl nuw nsw i64 %index532, 3
  %i.aog = getelementptr inbounds nuw i8, ptr %i.agt, i64 %i.aof
  %i.aoh = fneg <2 x double> %i.anu
  %i.aoi = fmul <2 x double> %i.amz, %i.aoh
  %i.aoj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ang, <2 x double> %i.ann, <2 x double> %i.aoi)
  %i.aok = fmul <2 x double> %i.anz, %i.aoj
  %i.aol = fptrunc <2 x double> %i.aok to <2 x float>
  %interleaved.vec = shufflevector <2 x float> %i.aoe, <2 x float> %i.aol, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec, ptr %i.aog, align 4, !tbaa !107, !alias.scope !182, !noalias !179
  %index.next533 = add nuw i64 %index532, 2       ; 2 uses
  %i.aom = icmp eq i64 %index.next533, %n.vec530
  br i1 %i.aom, label %middle.block534, label %vector.body531, !llvm.loop !184

middle.block534:                                  ; preds = %vector.body531
  br i1 %cmp.n535, label %._crit_edge271.i, label %.lr.ph270.i.preheader669

.lr.ph270.i.preheader669:                         ; preds = %vector.memcheck, %.lr.ph270.i.preheader, %middle.block534
  %indvars.iv322.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph270.i.preheader ], [ %n.vec530, %middle.block534 ]
  br label %.lr.ph270.i

.lr.ph270.i:                                      ; preds = %.lr.ph270.i.preheader669, %.lr.ph270.i
  %indvars.iv322.i = phi i64 [ %indvars.iv.next323.i, %.lr.ph270.i ], [ %indvars.iv322.i.ph, %.lr.ph270.i.preheader669 ] ; 3 uses
  %.idx.i208 = mul nuw nsw i64 %indvars.iv322.i, 20
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %.idx.i208 ; 4 uses
  %i.aoo = load float, ptr %i.aon, align 4, !tbaa !107
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aon, i64 4
  %i.aoq = load float, ptr %i.aop, align 4, !tbaa !107
  %i.aor = fpext float %i.aoq to double           ; 3 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aon, i64 8
  %i.aot = load float, ptr %i.aos, align 4, !tbaa !107
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aon, i64 12
  %i.aov = fneg double %i.aor
  %i.aow = fmul double %i.aor, %i.aov
  %.idx344.i = shl nuw nsw i64 %indvars.iv322.i, 3
  %i.aox = getelementptr inbounds nuw i8, ptr %i.agt, i64 %.idx344.i
  %i.aoy = insertelement <2 x float> poison, float %i.aot, i64 0
  %i.aoz = insertelement <2 x float> %i.aoy, float %i.aoo, i64 1
  %i.apa = fpext <2 x float> %i.aoz to <2 x double> ; 3 uses
  %i.apb = load <2 x float>, ptr %i.aou, align 4, !tbaa !107
  %i.apc = fpext <2 x float> %i.apb to <2 x double> ; 2 uses
  %i.apd = extractelement <2 x double> %i.apa, i64 0
  %i.ape = extractelement <2 x double> %i.apa, i64 1
  %i.apf = call double @llvm.fmuladd.f64(double %i.ape, double %i.apd, double %i.aow)
  %i.apg = fadd double %i.apf, 1.000000e-03
  %i.aph = fdiv double 1.000000e+00, %i.apg
  %i.api = fneg <2 x double> %i.apc
  %i.apj = insertelement <2 x double> poison, double %i.aor, i64 0
  %i.apk = shufflevector <2 x double> %i.apj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.apl = shufflevector <2 x double> %i.api, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.apm = fmul <2 x double> %i.apk, %i.apl
  %i.apn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.apa, <2 x double> %i.apc, <2 x double> %i.apm)
  %i.apo = insertelement <2 x double> poison, double %i.aph, i64 0
  %i.app = shufflevector <2 x double> %i.apn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.apq = shufflevector <2 x double> %i.apo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.apr = fmul <2 x double> %i.app, %i.apq
  %i.aps = fptrunc <2 x double> %i.apr to <2 x float>
  store <2 x float> %i.aps, ptr %i.aox, align 4, !tbaa !107
end_hunk_1
begin_hunk_2_@_ZN2cv12_GLOBAL__N_124FarnebackOpticalFlowImpl4calcERKNS_11_InputArrayES4_RKNS_17_InputOutputArrayE:bb.a
  %i.ary = load i64, ptr %i.he, align 8, !tbaa !61
  %smax266.i = call i32 @llvm.smax.i32(i32 %i.acv, i32 2)
  %min.iters.check500 = icmp slt i32 %i.ari, 4
  %n.vec502 = and i64 %wide.trip.count.i243, 2147483644 ; 3 uses
  %cmp.n511 = icmp eq i64 %n.vec502, %wide.trip.count.i243
  br label %.lr.ph221.i

scalar.ph513:                                     ; preds = %scalar.ph513.preheader, %scalar.ph513
  %indvars.iv.i244 = phi i64 [ %indvars.iv.next.i245, %scalar.ph513 ], [ %indvars.iv.i244.ph, %scalar.ph513.preheader ] ; 3 uses
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %i.arh, i64 %indvars.iv.i244
  %i.asa = load float, ptr %i.arz, align 4, !tbaa !107
  %i.asb = fmul float %i.asa, %i.arl
  %i.asc = fpext float %i.asb to double
  %i.asd = getelementptr inbounds nuw [8 x i8], ptr %i.arg, i64 %indvars.iv.i244
  store double %i.asc, ptr %i.asd, align 8, !tbaa !122
  %indvars.iv.next.i245 = add nuw nsw i64 %indvars.iv.i244, 1 ; 2 uses
  %exitcond.not.i246 = icmp eq i64 %indvars.iv.next.i245, %wide.trip.count.i243
  br i1 %exitcond.not.i246, label %.preheader218.i, label %scalar.ph513, !llvm.loop !192

.preheader217.i:                                  ; preds = %._crit_edge.i247, %.preheader218.thread.i, %.preheader218.i
  %i.ase = phi i1 [ false, %.preheader218.i ], [ %i.arw, %.preheader218.thread.i ], [ true, %._crit_edge.i247 ]
  %i.asf = icmp sgt i32 %i.acu, 0
  br i1 %i.asf, label %.lr.ph253.i220, label %._crit_edge254.i219

.lr.ph253.i220:                                   ; preds = %.preheader217.i
  %i.asg = xor i32 %i.acv, -1
  %i.ash = add nsw i32 %i.acu, -1                 ; 2 uses
  %i.asi = icmp sgt i32 %i.are, 0
  %i.asj = add nsw i32 %i.acv, 2
  %i.ask = sitofp i32 %i.asj to double            ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %i.arg, i64 8
  %i.asm = getelementptr inbounds nuw i8, ptr %i.arg, i64 16
  %i.asn = getelementptr inbounds nuw i8, ptr %i.arg, i64 24
  %smax271.i = call i32 @llvm.smax.i32(i32 %i.ari, i32 1)
  %i.aso = sext i32 %i.ari to i64
  %smax282.i = call i32 @llvm.smax.i32(i32 %i.acv, i32 2)
  %i.asp = sext i32 %i.acv to i64                 ; 2 uses
  %i.asq = zext nneg i32 %i.ash to i64
  %wide.trip.count293.i221 = zext nneg i32 %i.acu to i64
  %wide.trip.count272.i = zext nneg i32 %smax271.i to i64 ; 3 uses
  %wide.trip.count277.i = zext i32 %i.are to i64  ; 2 uses
  %invariant.gep.i222 = getelementptr [8 x i8], ptr %i.arg, i64 %i.aso ; 3 uses
  %wide.trip.count283.i223 = zext nneg i32 %smax282.i to i64
  %wide.trip.count288.i224 = zext nneg i32 %i.act to i64
  %i.asr = insertelement <2 x double> poison, double %i.ask, i64 0
  %i.ass = shufflevector <2 x double> %i.asr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ast = add nsw i64 %wide.trip.count283.i223, -1 ; 3 uses
  %min.iters.check = icmp slt i32 %i.ari, 4
  %n.vec = and i64 %wide.trip.count272.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count272.i
  %xtraiter720 = and i64 %wide.trip.count277.i, 1
  %i.asu = icmp eq i32 %i.are, 1
  %unroll_iter724 = and i64 %wide.trip.count277.i, 2147483646
  %lcmp.mod722.not = icmp eq i64 %xtraiter720, 0
  %lcmp.mod723 = trunc i32 %i.are to i1
  %xtraiter726 = and i64 %i.ast, 1
  %i.asv = icmp slt i32 %i.acq, 6
  %unroll_iter733 = and i64 %i.ast, -2
  %lcmp.mod728.not = icmp eq i64 %xtraiter726, 0
  %lcmp.mod732 = trunc i64 %i.ast to i1
  %i.asw = insertelement <2 x double> poison, double %i.aqs, i64 0
  %i.asx = shufflevector <2 x double> %i.asw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.eu

.lr.ph221.i:                                      ; preds = %._crit_edge.i247, %.lr.ph223.i
  %storemerge222.i = phi i32 [ %i.atq, %._crit_edge.i247 ], [ 1, %.lr.ph223.i ] ; 2 uses
  %.sroa.speculated198.i = call i32 @llvm.smin.i32(i32 %i.arx, i32 %storemerge222.i)
  %i.asy = sext i32 %.sroa.speculated198.i to i64
  %i.asz = mul i64 %i.ary, %i.asy
  %i.ata = getelementptr inbounds nuw i8, ptr %i.arh, i64 %i.asz ; 2 uses
  br i1 %min.iters.check500, label %scalar.ph499.preheader, label %vector.body503

vector.body503:                                   ; preds = %.lr.ph221.i, %vector.body503
  %index504 = phi i64 [ %index.next509, %vector.body503 ], [ 0, %.lr.ph221.i ] ; 3 uses
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %index504 ; 2 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 8
  %wide.load505 = load <2 x float>, ptr %i.atb, align 4, !tbaa !107
  %wide.load506 = load <2 x float>, ptr %i.atc, align 4, !tbaa !107
  %i.atd = fpext <2 x float> %wide.load505 to <2 x double>
  %i.ate = fpext <2 x float> %wide.load506 to <2 x double>
  %i.atf = getelementptr inbounds nuw [8 x i8], ptr %i.arg, i64 %index504 ; 3 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 16 ; 2 uses
  %wide.load507 = load <2 x double>, ptr %i.atf, align 8, !tbaa !122
  %wide.load508 = load <2 x double>, ptr %i.atg, align 8, !tbaa !122
  %i.ath = fadd <2 x double> %wide.load507, %i.atd
  %i.ati = fadd <2 x double> %wide.load508, %i.ate
  store <2 x double> %i.ath, ptr %i.atf, align 8, !tbaa !122
  store <2 x double> %i.ati, ptr %i.atg, align 8, !tbaa !122
  %index.next509 = add nuw i64 %index504, 4       ; 2 uses
  %i.atj = icmp eq i64 %index.next509, %n.vec502
  br i1 %i.atj, label %middle.block510, label %vector.body503, !llvm.loop !193

middle.block510:                                  ; preds = %vector.body503
  br i1 %cmp.n511, label %._crit_edge.i247, label %scalar.ph499.preheader

scalar.ph499.preheader:                           ; preds = %.lr.ph221.i, %middle.block510
  %indvars.iv260.i.ph = phi i64 [ 0, %.lr.ph221.i ], [ %n.vec502, %middle.block510 ]
  br label %scalar.ph499

scalar.ph499:                                     ; preds = %scalar.ph499.preheader, %scalar.ph499
  %indvars.iv260.i = phi i64 [ %indvars.iv.next261.i, %scalar.ph499 ], [ %indvars.iv260.i.ph, %scalar.ph499.preheader ] ; 3 uses
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %indvars.iv260.i
  %i.atl = load float, ptr %i.atk, align 4, !tbaa !107
  %i.atm = fpext float %i.atl to double
  %i.atn = getelementptr inbounds nuw [8 x i8], ptr %i.arg, i64 %indvars.iv260.i ; 2 uses
  %i.ato = load double, ptr %i.atn, align 8, !tbaa !122
  %i.atp = fadd double %i.ato, %i.atm
  store double %i.atp, ptr %i.atn, align 8, !tbaa !122
  %indvars.iv.next261.i = add nuw nsw i64 %indvars.iv260.i, 1 ; 2 uses
  %exitcond265.not.i = icmp eq i64 %indvars.iv.next261.i, %wide.trip.count.i243
  br i1 %exitcond265.not.i, label %._crit_edge.i247, label %scalar.ph499, !llvm.loop !194

._crit_edge.i247:                                 ; preds = %scalar.ph499, %middle.block510
  %i.atq = add nuw nsw i32 %storemerge222.i, 1    ; 2 uses
  %exitcond267.not.i = icmp eq i32 %i.atq, %smax266.i
  br i1 %exitcond267.not.i, label %.preheader217.i, label %.lr.ph221.i, !llvm.loop !195

bb.eu:                                            ; preds = %bb.ez, %.lr.ph253.i220
  %indvars.iv290.i225 = phi i64 [ 0, %.lr.ph253.i220 ], [ %indvars.iv.next291.i228, %bb.ez ] ; 4 uses
  %.0164252.i = phi i32 [ 0, %.lr.ph253.i220 ], [ %.1165.i, %bb.ez ] ; 4 uses
  %i.atr = load ptr, ptr %i.hb, align 8, !tbaa !129
  %i.ats = load i64, ptr %i.hc, align 8, !tbaa !61
  %i.att = mul i64 %i.ats, %indvars.iv290.i225
  %i.atu = getelementptr inbounds nuw i8, ptr %i.atr, i64 %i.att
  %i.atv = trunc i64 %indvars.iv290.i225 to i32   ; 3 uses
  %i.atw = add i32 %i.atv, %i.asg
  %.sroa.speculated193.i = call i32 @llvm.smax.i32(i32 %i.atw, i32 0)
  %i.atx = load ptr, ptr %i.hd, align 8, !tbaa !129 ; 2 uses
  %i.aty = load i64, ptr %i.he, align 8, !tbaa !61 ; 2 uses
  %i.atz = zext nneg i32 %.sroa.speculated193.i to i64
  %i.aua = mul i64 %i.aty, %i.atz
  %i.aub = getelementptr inbounds nuw i8, ptr %i.atx, i64 %i.aua ; 2 uses
  %i.auc = add i32 %i.acv, %i.atv
  %.sroa.speculated.i226 = call i32 @llvm.smin.i32(i32 %i.ash, i32 %i.auc)
  %i.aud = sext i32 %.sroa.speculated.i226 to i64
  %i.aue = mul i64 %i.aty, %i.aud
  %i.auf = getelementptr inbounds nuw i8, ptr %i.atx, i64 %i.aue ; 2 uses
  br i1 %i.arj, label %.lr.ph226.i.preheader, label %.preheader216.i

.lr.ph226.i.preheader:                            ; preds = %bb.eu
  br i1 %min.iters.check, label %.lr.ph226.i.preheader668, label %vector.body

vector.body:                                      ; preds = %.lr.ph226.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph226.i.preheader ] ; 4 uses
  %i.aug = getelementptr inbounds nuw [4 x i8], ptr %i.auf, i64 %index ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 8
  %wide.load = load <2 x float>, ptr %i.aug, align 4, !tbaa !107
  %wide.load494 = load <2 x float>, ptr %i.auh, align 4, !tbaa !107
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %index ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 8
  %wide.load495 = load <2 x float>, ptr %i.aui, align 4, !tbaa !107
  %wide.load496 = load <2 x float>, ptr %i.auj, align 4, !tbaa !107
  %i.auk = fsub <2 x float> %wide.load, %wide.load495
  %i.aul = fsub <2 x float> %wide.load494, %wide.load496
  %i.aum = fpext <2 x float> %i.auk to <2 x double>
  %i.aun = fpext <2 x float> %i.aul to <2 x double>
  %i.auo = getelementptr inbounds nuw [8 x i8], ptr %i.arg, i64 %index ; 3 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auo, i64 16 ; 2 uses
  %wide.load497 = load <2 x double>, ptr %i.auo, align 8, !tbaa !122
  %wide.load498 = load <2 x double>, ptr %i.aup, align 8, !tbaa !122
  %i.auq = fadd <2 x double> %wide.load497, %i.aum
  %i.aur = fadd <2 x double> %wide.load498, %i.aun
  store <2 x double> %i.auq, ptr %i.auo, align 8, !tbaa !122
  store <2 x double> %i.aur, ptr %i.aup, align 8, !tbaa !122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aus = icmp eq i64 %index.next, %n.vec
  br i1 %i.aus, label %middle.block, label %vector.body, !llvm.loop !196

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.preheader216.i, label %.lr.ph226.i.preheader668

.lr.ph226.i.preheader668:                         ; preds = %.lr.ph226.i.preheader, %middle.block
  %indvars.iv268.i.ph = phi i64 [ 0, %.lr.ph226.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph226.i

.preheader216.i:                                  ; preds = %.lr.ph226.i, %middle.block, %bb.eu
  br i1 %i.asi, label %.lr.ph228.i.preheader, label %._crit_edge229.i

.lr.ph228.i.preheader:                            ; preds = %.preheader216.i
  br i1 %i.asu, label %.lr.ph228.i.epil.preheader, label %.lr.ph228.i

.lr.ph226.i:                                      ; preds = %.lr.ph226.i.preheader668, %.lr.ph226.i
  %indvars.iv268.i = phi i64 [ %indvars.iv.next269.i, %.lr.ph226.i ], [ %indvars.iv268.i.ph, %.lr.ph226.i.preheader668 ] ; 4 uses
  %i.aut = getelementptr inbounds nuw [4 x i8], ptr %i.auf, i64 %indvars.iv268.i
  %i.auu = load float, ptr %i.aut, align 4, !tbaa !107
  %i.auv = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %indvars.iv268.i
  %i.auw = load float, ptr %i.auv, align 4, !tbaa !107
  %i.aux = fsub float %i.auu, %i.auw
  %i.auy = fpext float %i.aux to double
  %i.auz = getelementptr inbounds nuw [8 x i8], ptr %i.arg, i64 %indvars.iv268.i ; 2 uses
  %i.ava = load double, ptr %i.auz, align 8, !tbaa !122
  %i.avb = fadd double %i.ava, %i.auy
  store double %i.avb, ptr %i.auz, align 8, !tbaa !122
  %indvars.iv.next269.i = add nuw nsw i64 %indvars.iv268.i, 1 ; 2 uses
  %exitcond273.not.i = icmp eq i64 %indvars.iv.next269.i, %wide.trip.count272.i
  br i1 %exitcond273.not.i, label %.preheader216.i, label %.lr.ph226.i, !llvm.loop !197

.lr.ph228.i:                                      ; preds = %.lr.ph228.i.preheader, %.lr.ph228.i
  %indvars.iv274.i = phi i64 [ %indvars.iv.next275.i.1, %.lr.ph228.i ], [ 0, %.lr.ph228.i.preheader ] ; 7 uses
  %niter725 = phi i64 [ %niter725.next.1, %.lr.ph228.i ], [ 0, %.lr.ph228.i.preheader ]
  %i.avc = sub nsw i64 4, %indvars.iv274.i
  %i.avd = getelementptr inbounds [8 x i8], ptr %i.arg, i64 %i.avc
  %i.ave = load double, ptr %i.avd, align 8, !tbaa !122
  %i.avf = xor i64 %indvars.iv274.i, -1
  %i.avg = getelementptr inbounds [8 x i8], ptr %i.arg, i64 %i.avf
  store double %i.ave, ptr %i.avg, align 8, !tbaa !122
  %gep.i240 = getelementptr [8 x i8], ptr %invariant.gep.i222, i64 %indvars.iv274.i ; 2 uses
  %i.avh = getelementptr i8, ptr %gep.i240, i64 -40
  %i.avi = load double, ptr %i.avh, align 8, !tbaa !122
  store double %i.avi, ptr %gep.i240, align 8, !tbaa !122
  %i.avj = sub nsw i64 3, %indvars.iv274.i
  %i.avk = getelementptr inbounds [8 x i8], ptr %i.arg, i64 %i.avj
  %i.avl = load double, ptr %i.avk, align 8, !tbaa !122
  %i.avm = xor i64 %indvars.iv274.i, -2
  %i.avn = getelementptr inbounds [8 x i8], ptr %i.arg, i64 %i.avm
  store double %i.avl, ptr %i.avn, align 8, !tbaa !122
  %i.avo = getelementptr [8 x i8], ptr %invariant.gep.i222, i64 %indvars.iv274.i ; 2 uses
  %gep.i240.1 = getelementptr i8, ptr %i.avo, i64 8
  %i.avp = getelementptr i8, ptr %i.avo, i64 -32
  %i.avq = load double, ptr %i.avp, align 8, !tbaa !122
  store double %i.avq, ptr %gep.i240.1, align 8, !tbaa !122
  %indvars.iv.next275.i.1 = add nuw nsw i64 %indvars.iv274.i, 2 ; 2 uses
  %niter725.next.1 = add i64 %niter725, 2         ; 2 uses
  %niter725.ncmp.1 = icmp eq i64 %niter725.next.1, %unroll_iter724
  br i1 %niter725.ncmp.1, label %._crit_edge229.i.loopexit.unr-lcssa, label %.lr.ph228.i, !llvm.loop !198

._crit_edge229.i.loopexit.unr-lcssa:              ; preds = %.lr.ph228.i
  br i1 %lcmp.mod722.not, label %._crit_edge229.i, label %.lr.ph228.i.epil.preheader

.lr.ph228.i.epil.preheader:                       ; preds = %._crit_edge229.i.loopexit.unr-lcssa, %.lr.ph228.i.preheader
  %indvars.iv274.i.epil.init = phi i64 [ 0, %.lr.ph228.i.preheader ], [ %indvars.iv.next275.i.1, %._crit_edge229.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod723)
  %i.avr = sub nsw i64 4, %indvars.iv274.i.epil.init
  %i.avs = getelementptr inbounds [8 x i8], ptr %i.arg, i64 %i.avr
  %i.avt = load double, ptr %i.avs, align 8, !tbaa !122
  %i.avu = xor i64 %indvars.iv274.i.epil.init, -1
  %i.avv = getelementptr inbounds [8 x i8], ptr %i.arg, i64 %i.avu
  store double %i.avt, ptr %i.avv, align 8, !tbaa !122
  %gep.i240.epil = getelementptr [8 x i8], ptr %invariant.gep.i222, i64 %indvars.iv274.i.epil.init ; 2 uses
  %i.avw = getelementptr i8, ptr %gep.i240.epil, i64 -40
  %i.avx = load double, ptr %i.avw, align 8, !tbaa !122
  store double %i.avx, ptr %gep.i240.epil, align 8, !tbaa !122
  br label %._crit_edge229.i

._crit_edge229.i:                                 ; preds = %.lr.ph228.i.epil.preheader, %._crit_edge229.i.loopexit.unr-lcssa, %.preheader216.i
  %i.avy = load double, ptr %i.arg, align 8, !tbaa !122
  %i.avz = load double, ptr %i.asl, align 8, !tbaa !122
  %i.awa = fmul double %i.avz, %i.ask             ; 3 uses
  %i.awb = load double, ptr %i.asm, align 8, !tbaa !122
  %i.awc = insertelement <2 x double> poison, double %i.awb, i64 0
  %i.awd = insertelement <2 x double> %i.awc, double %i.avy, i64 1
  %i.awe = fmul <2 x double> %i.awd, %i.ass       ; 2 uses
  %i.awf = load <2 x double>, ptr %i.asn, align 8, !tbaa !122
  %i.awg = fmul <2 x double> %i.awf, %i.ass       ; 2 uses
  %i.awh = shufflevector <2 x double> %i.awe, <2 x double> %i.awg, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br i1 %i.ase, label %.lr.ph237.i.preheader, label %.preheader.i227

.lr.ph237.i.preheader:                            ; preds = %._crit_edge229.i
  br i1 %i.asv, label %.lr.ph237.i.epil.preheader, label %.lr.ph237.i

.preheader.i227.loopexit.unr-lcssa:               ; preds = %.lr.ph237.i
  %i.awi = shufflevector <4 x double> %i.ayg, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.awj = shufflevector <4 x double> %i.ayg, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  br i1 %lcmp.mod728.not, label %.preheader.i227, label %.lr.ph237.i.epil.preheader

.lr.ph237.i.epil.preheader:                       ; preds = %.preheader.i227.loopexit.unr-lcssa, %.lr.ph237.i.preheader
  %indvars.iv279.i.epil.init = phi i64 [ 1, %.lr.ph237.i.preheader ], [ %indvars.iv.next280.i.1, %.preheader.i227.loopexit.unr-lcssa ]
  %.0172231.i.epil.init = phi double [ %i.awa, %.lr.ph237.i.preheader ], [ %i.axx, %.preheader.i227.loopexit.unr-lcssa ]
  %.epil.init = phi <4 x double> [ %i.awh, %.lr.ph237.i.preheader ], [ %i.ayg, %.preheader.i227.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod732)
  %.idx.i238.epil = mul nuw nsw i64 %indvars.iv279.i.epil.init, 40
  %i.awk = getelementptr inbounds nuw i8, ptr %i.arg, i64 %.idx.i238.epil ; 4 uses
  %i.awl = load double, ptr %i.awk, align 8, !tbaa !122
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awk, i64 8
  %i.awn = load double, ptr %i.awm, align 8, !tbaa !122
  %i.awo = fadd double %.0172231.i.epil.init, %i.awn
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awk, i64 16
  %i.awq = load double, ptr %i.awp, align 8, !tbaa !122
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awk, i64 24
  %i.aws = load <2 x double>, ptr %i.awr, align 8, !tbaa !122
  %i.awt = insertelement <4 x double> poison, double %i.awq, i64 0
  %i.awu = insertelement <4 x double> %i.awt, double %i.awl, i64 1
  %i.awv = shufflevector <2 x double> %i.aws, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aww = shufflevector <4 x double> %i.awu, <4 x double> %i.awv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.awx = fadd <4 x double> %.epil.init, %i.aww  ; 2 uses
  %i.awy = shufflevector <4 x double> %i.awx, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.awz = shufflevector <4 x double> %i.awx, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  br label %.preheader.i227

.preheader.i227:                                  ; preds = %.lr.ph237.i.epil.preheader, %.preheader.i227.loopexit.unr-lcssa, %._crit_edge229.i
  %.0172.lcssa.i = phi double [ %i.awa, %._crit_edge229.i ], [ %i.axx, %.preheader.i227.loopexit.unr-lcssa ], [ %i.awo, %.lr.ph237.i.epil.preheader ]
  %i.axa = phi <2 x double> [ %i.awe, %._crit_edge229.i ], [ %i.awj, %.preheader.i227.loopexit.unr-lcssa ], [ %i.awy, %.lr.ph237.i.epil.preheader ]
  %i.axb = phi <2 x double> [ %i.awg, %._crit_edge229.i ], [ %i.awi, %.preheader.i227.loopexit.unr-lcssa ], [ %i.awz, %.lr.ph237.i.epil.preheader ]
  br i1 %i.arj, label %.lr.ph249.i, label %._crit_edge250.i

.lr.ph237.i:                                      ; preds = %.lr.ph237.i.preheader, %.lr.ph237.i
  %indvars.iv279.i = phi i64 [ %indvars.iv.next280.i.1, %.lr.ph237.i ], [ 1, %.lr.ph237.i.preheader ] ; 3 uses
  %.0172231.i = phi double [ %i.axx, %.lr.ph237.i ], [ %i.awa, %.lr.ph237.i.preheader ]
  %i.axc = phi <4 x double> [ %i.ayg, %.lr.ph237.i ], [ %i.awh, %.lr.ph237.i.preheader ]
  %niter734 = phi i64 [ %niter734.next.1, %.lr.ph237.i ], [ 0, %.lr.ph237.i.preheader ]
  %.idx.i238 = mul nuw nsw i64 %indvars.iv279.i, 40
  %i.axd = getelementptr inbounds nuw i8, ptr %i.arg, i64 %.idx.i238 ; 4 uses
  %i.axe = load double, ptr %i.axd, align 8, !tbaa !122
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axd, i64 8
  %i.axg = load double, ptr %i.axf, align 8, !tbaa !122
  %i.axh = fadd double %.0172231.i, %i.axg
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axd, i64 16
  %i.axj = load double, ptr %i.axi, align 8, !tbaa !122
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axd, i64 24
  %i.axl = load <2 x double>, ptr %i.axk, align 8, !tbaa !122
  %i.axm = insertelement <4 x double> poison, double %i.axj, i64 0
  %i.axn = insertelement <4 x double> %i.axm, double %i.axe, i64 1
  %i.axo = shufflevector <2 x double> %i.axl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.axp = shufflevector <4 x double> %i.axn, <4 x double> %i.axo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.axq = fadd <4 x double> %i.axc, %i.axp
  %i.axr = mul nuw i64 %indvars.iv279.i, 40
  %i.axs = getelementptr inbounds nuw i8, ptr %i.arg, i64 %i.axr ; 4 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 40
  %i.axu = load double, ptr %i.axt, align 8, !tbaa !122
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axs, i64 48
  %i.axw = load double, ptr %i.axv, align 8, !tbaa !122
  %i.axx = fadd double %i.axh, %i.axw             ; 3 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axs, i64 56
  %i.axz = load double, ptr %i.axy, align 8, !tbaa !122
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axs, i64 64
  %i.ayb = load <2 x double>, ptr %i.aya, align 8, !tbaa !122
  %i.ayc = insertelement <4 x double> poison, double %i.axz, i64 0
  %i.ayd = insertelement <4 x double> %i.ayc, double %i.axu, i64 1
  %i.aye = shufflevector <2 x double> %i.ayb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ayf = shufflevector <4 x double> %i.ayd, <4 x double> %i.aye, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ayg = fadd <4 x double> %i.axq, %i.ayf       ; 4 uses
  %indvars.iv.next280.i.1 = add nuw nsw i64 %indvars.iv279.i, 2 ; 2 uses
  %niter734.next.1 = add nuw i64 %niter734, 2     ; 2 uses
  %niter734.ncmp.1 = icmp eq i64 %niter734.next.1, %unroll_iter733
  br i1 %niter734.ncmp.1, label %.preheader.i227.loopexit.unr-lcssa, label %.lr.ph237.i, !llvm.loop !199

.lr.ph249.i:                                      ; preds = %.preheader.i227, %.lr.ph249.i
  %indvars.iv285.i235 = phi i64 [ %indvars.iv.next286.i236, %.lr.ph249.i ], [ 0, %.preheader.i227 ] ; 4 uses
  %.1173244.i = phi double [ %i.ayv, %.lr.ph249.i ], [ %.0172.lcssa.i, %.preheader.i227 ]
  %i.ayh = phi <2 x double> [ %i.azl, %.lr.ph249.i ], [ %i.axa, %.preheader.i227 ]
  %i.ayi = phi <2 x double> [ %i.azp, %.lr.ph249.i ], [ %i.axb, %.preheader.i227 ]
  %i.ayj = add nsw i64 %indvars.iv285.i235, %i.asp
  %.idx301.i = mul nsw i64 %i.ayj, 40
  %i.ayk = getelementptr inbounds i8, ptr %i.arg, i64 %.idx301.i ; 4 uses
  %i.ayl = load double, ptr %i.ayk, align 8, !tbaa !122
  %i.aym = sub nsw i64 %indvars.iv285.i235, %i.asp
  %.idx302.i = mul i64 %i.aym, 40
  %i.ayn = getelementptr i8, ptr %i.arg, i64 %.idx302.i ; 4 uses
  %i.ayo = getelementptr i8, ptr %i.ayn, i64 -40
  %i.ayp = load double, ptr %i.ayo, align 8, !tbaa !122
  %i.ayq = getelementptr i8, ptr %i.ayk, i64 8
  %i.ayr = load double, ptr %i.ayq, align 8, !tbaa !122
  %i.ays = getelementptr i8, ptr %i.ayn, i64 -32
  %i.ayt = load double, ptr %i.ays, align 8, !tbaa !122
  %i.ayu = fsub double %i.ayr, %i.ayt
  %i.ayv = fadd double %.1173244.i, %i.ayu        ; 2 uses
  %i.ayw = getelementptr i8, ptr %i.ayk, i64 16
  %i.ayx = load double, ptr %i.ayw, align 8, !tbaa !122
  %i.ayy = getelementptr i8, ptr %i.ayn, i64 -24
  %i.ayz = load double, ptr %i.ayy, align 8, !tbaa !122
  %i.aza = getelementptr i8, ptr %i.ayk, i64 24
  %i.azb = getelementptr i8, ptr %i.ayn, i64 -16
  %i.azc = fmul double %i.aqs, %i.ayv             ; 3 uses
  %i.azd = fneg double %i.azc
  %i.aze = fmul double %i.azc, %i.azd
  %.idx303.i = shl nuw nsw i64 %indvars.iv285.i235, 3
  %i.azf = getelementptr inbounds nuw i8, ptr %i.atu, i64 %.idx303.i
  %i.azg = insertelement <2 x double> poison, double %i.ayx, i64 0
  %i.azh = insertelement <2 x double> %i.azg, double %i.ayl, i64 1
  %i.azi = insertelement <2 x double> poison, double %i.ayz, i64 0
  %i.azj = insertelement <2 x double> %i.azi, double %i.ayp, i64 1
  %i.azk = fsub <2 x double> %i.azh, %i.azj
  %i.azl = fadd <2 x double> %i.ayh, %i.azk       ; 2 uses
  %i.azm = load <2 x double>, ptr %i.aza, align 8, !tbaa !122
  %i.azn = load <2 x double>, ptr %i.azb, align 8, !tbaa !122
  %i.azo = fsub <2 x double> %i.azm, %i.azn
  %i.azp = fadd <2 x double> %i.ayi, %i.azo       ; 2 uses
  %i.azq = fmul <2 x double> %i.asx, %i.azl       ; 3 uses
  %i.azr = fmul <2 x double> %i.asx, %i.azp       ; 2 uses
  %i.azs = extractelement <2 x double> %i.azq, i64 0
  %i.azt = extractelement <2 x double> %i.azq, i64 1
  %i.azu = call double @llvm.fmuladd.f64(double %i.azt, double %i.azs, double %i.aze)
  %i.azv = fadd double %i.azu, 1.000000e-03
  %i.azw = fdiv double 1.000000e+00, %i.azv
  %i.azx = fneg <2 x double> %i.azr
  %i.azy = insertelement <2 x double> poison, double %i.azc, i64 0
  %i.azz = shufflevector <2 x double> %i.azy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.baa = shufflevector <2 x double> %i.azx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bab = fmul <2 x double> %i.azz, %i.baa
  %i.bac = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azq, <2 x double> %i.azr, <2 x double> %i.bab)
  %i.bad = insertelement <2 x double> poison, double %i.azw, i64 0
  %i.bae = shufflevector <2 x double> %i.bad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.baf = shufflevector <2 x double> %i.bac, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bag = fmul <2 x double> %i.bae, %i.baf
  %i.bah = fptrunc <2 x double> %i.bag to <2 x float>
  store <2 x float> %i.bah, ptr %i.azf, align 4, !tbaa !107
  %indvars.iv.next286.i236 = add nuw nsw i64 %indvars.iv285.i235, 1 ; 2 uses
  %exitcond289.not.i237 = icmp eq i64 %indvars.iv.next286.i236, %wide.trip.count288.i224
  br i1 %exitcond289.not.i237, label %._crit_edge250.i, label %.lr.ph249.i, !llvm.loop !200

._crit_edge250.i:                                 ; preds = %.lr.ph249.i, %.preheader.i227
  %i.bai = icmp eq i64 %indvars.iv290.i225, %i.asq
  %i.baj = sub i32 %i.atv, %i.acq
  %i.bak = select i1 %i.bai, i32 %i.acu, i32 %i.baj ; 4 uses
  br i1 %i.acs, label %bb.ev, label %bb.ez

bb.ev:                                            ; preds = %._crit_edge250.i
  %i.bal = icmp ne i32 %i.bak, %i.acu
  %i.bam = add nsw i32 %.0164252.i, %.sroa.speculated202.i
  %.not.i231 = icmp slt i32 %i.bak, %i.bam
  %or.cond.i232 = select i1 %i.bal, i1 %.not.i231, i1 false
  br i1 %or.cond.i232, label %bb.ez, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %.val.i233 = load ptr, ptr %i.go, align 8, !tbaa !129
  %.val182.i = load i64, ptr %i.gp, align 16, !tbaa !61
  invoke fastcc void @_ZN2cvL23FarnebackUpdateMatricesERKNS_3MatES2_S2_RS0_ii(ptr noundef nonnull readonly align 8 dereferenceable(208) %44, ptr %.val.i233, i64 %.val182.i, ptr noundef nonnull readonly align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(208) %46, i32 noundef %.0164252.i, i32 noundef %i.bak)
          to label %bb.ez unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ban = landingpad { ptr, i32 }
          cleanup
  %i.bao = load ptr, ptr %6, align 8, !tbaa !187  ; 3 uses
  %.not.i.i186.i = icmp eq ptr %i.bao, %i.hf
  %i.bap = icmp eq ptr %i.bao, null
  %or.cond.i.i234 = or i1 %.not.i.i186.i, %i.bap
  br i1 %or.cond.i.i234, label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @_ZdaPv(ptr noundef nonnull %i.bao) #25
  br label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit.i

_ZN2cv10AutoBufferIdLm136EED2Ev.exit.i:           ; preds = %bb.ey, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
end_hunk_2
