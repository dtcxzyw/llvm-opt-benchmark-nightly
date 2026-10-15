Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/tangentspace?download=true
inline.NumInlined: 32
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@meshopt_generateTangents:bb.a
  %.not.i108.i = icmp eq i32 %i.ub, %i.uf
  br i1 %.not.i108.i, label %_ZN7meshoptL7follow2EPjj.exit110.i, label %.lr.ph.i107.i, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit110.i:               ; preds = %.lr.ph.i107.i, %_ZN7meshoptL7follow2EPjj.exit.i
  %.0.lcssa.i109.i = phi i32 [ %i.sq, %_ZN7meshoptL7follow2EPjj.exit.i ], [ %i.ub, %.lr.ph.i107.i ] ; 2 uses
  %.not104.i = icmp eq i32 %.0.lcssa.i.i, %.0.lcssa.i109.i
  br i1 %.not104.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %_ZN7meshoptL7follow2EPjj.exit110.i
  %i.ug = zext i32 %.0.lcssa.i.i to i64
  %i.uh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.ug ; 3 uses
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !58
  %i.uj = zext i32 %.0.lcssa.i109.i to i64        ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.uj ; 2 uses
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !58
  %i.um = or i8 %i.ul, %i.ui
  %i.un = icmp eq i8 %i.um, 3
  br i1 %i.un, label %.critedge.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.uj
  store i32 %.0.lcssa.i.i, ptr %i.uo, align 4, !tbaa !50
  %i.up = load i8, ptr %i.uk, align 1, !tbaa !58
  %i.uq = load i8, ptr %i.uh, align 1, !tbaa !58
  %i.ur = or i8 %i.uq, %i.up
  store i8 %i.ur, ptr %i.uh, align 1, !tbaa !58
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN7meshoptL7follow2EPjj.exit110.i, %bb.ai
  %i.us = load i32, ptr %i.rp, align 4, !tbaa !50
  %i.ut = and i32 %i.us, 3
  %i.uu = add nuw i32 %i.ut, %i.rs                ; 3 uses
  %i.uv = zext i32 %i.uu to i64
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.uv ; 2 uses
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !50 ; 2 uses
  %.not11.i111.i = icmp eq i32 %i.uu, %i.ux
  br i1 %.not11.i111.i, label %_ZN7meshoptL7follow2EPjj.exit115.i, label %.lr.ph.i112.i

.lr.ph.i112.i:                                    ; preds = %bb.am, %.lr.ph.i112.i
  %i.uy = phi i32 [ %i.vc, %.lr.ph.i112.i ], [ %i.ux, %bb.am ] ; 3 uses
  %i.uz = phi ptr [ %i.vb, %.lr.ph.i112.i ], [ %i.uw, %bb.am ]
  %i.va = zext i32 %i.uy to i64
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.va ; 2 uses
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !50 ; 3 uses
  store i32 %i.vc, ptr %i.uz, align 4, !tbaa !50
  %.not.i113.i = icmp eq i32 %i.uy, %i.vc
  br i1 %.not.i113.i, label %_ZN7meshoptL7follow2EPjj.exit115.i, label %.lr.ph.i112.i, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit115.i:               ; preds = %.lr.ph.i112.i, %bb.am
  %.0.lcssa.i114.i = phi i32 [ %i.uu, %bb.am ], [ %i.uy, %.lr.ph.i112.i ] ; 2 uses
  %i.vd = load i32, ptr %i.so, align 4, !tbaa !50
  %i.ve = and i32 %i.vd, 3
  %i.vf = add nuw i32 %i.ve, %i.sr                ; 3 uses
  %i.vg = zext i32 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.vg ; 2 uses
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !50 ; 2 uses
  %.not11.i116.i = icmp eq i32 %i.vf, %i.vi
  br i1 %.not11.i116.i, label %_ZN7meshoptL7follow2EPjj.exit120.i, label %.lr.ph.i117.i

.lr.ph.i117.i:                                    ; preds = %_ZN7meshoptL7follow2EPjj.exit115.i, %.lr.ph.i117.i
  %i.vj = phi i32 [ %i.vn, %.lr.ph.i117.i ], [ %i.vi, %_ZN7meshoptL7follow2EPjj.exit115.i ] ; 3 uses
  %i.vk = phi ptr [ %i.vm, %.lr.ph.i117.i ], [ %i.vh, %_ZN7meshoptL7follow2EPjj.exit115.i ]
  %i.vl = zext i32 %i.vj to i64
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.vl ; 2 uses
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !50 ; 3 uses
  store i32 %i.vn, ptr %i.vk, align 4, !tbaa !50
  %.not.i118.i = icmp eq i32 %i.vj, %i.vn
  br i1 %.not.i118.i, label %_ZN7meshoptL7follow2EPjj.exit120.i, label %.lr.ph.i117.i, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit120.i:               ; preds = %.lr.ph.i117.i, %_ZN7meshoptL7follow2EPjj.exit115.i
  %.0.lcssa.i119.i = phi i32 [ %i.vf, %_ZN7meshoptL7follow2EPjj.exit115.i ], [ %i.vj, %.lr.ph.i117.i ] ; 2 uses
  %.not105.i = icmp eq i32 %.0.lcssa.i114.i, %.0.lcssa.i119.i
  br i1 %.not105.i, label %.critedge.i, label %bb.an

bb.an:                                            ; preds = %_ZN7meshoptL7follow2EPjj.exit120.i
  %i.vo = zext i32 %.0.lcssa.i119.i to i64
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.vo
  store i32 %.0.lcssa.i114.i, ptr %i.vp, align 4, !tbaa !50
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.an, %_ZN7meshoptL7follow2EPjj.exit120.i, %bb.ak, %bb.ah, %bb.ag
  %i.vq = add nuw nsw i64 %.0132.i, 1             ; 2 uses
  %exitcond.not.i181 = icmp eq i64 %i.vq, %i.ro
  br i1 %exitcond.not.i181, label %.loopexit.i, label %bb.ae, !llvm.loop !41

_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit: ; preds = %.loopexit.i, %bb.ab
  %exitcond247.not = icmp eq i64 %i.rg, %4
  br i1 %exitcond247.not, label %.preheader206, label %bb.ab, !llvm.loop !42

._crit_edge223.unr-lcssa:                         ; preds = %_ZN7meshoptL7follow2EPjj.exit.1
  %lcmp.mod381.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod381.not, label %._crit_edge223, label %.lr.ph222.epil.preheader

.lr.ph222.epil.preheader:                         ; preds = %._crit_edge223.unr-lcssa, %.lr.ph222.preheader
  %.0130221.epil.init = phi i64 [ 0, %.lr.ph222.preheader ], [ %i.acb, %._crit_edge223.unr-lcssa ] ; 3 uses
  %lcmp.mod382 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod382)
  %i.vr = trunc i64 %.0130221.epil.init to i32    ; 2 uses
  %i.vs = and i64 %.0130221.epil.init, 4294967295
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.vs ; 2 uses
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !50 ; 2 uses
  %.not11.i.epil = icmp eq i32 %i.vu, %i.vr
  br i1 %.not11.i.epil, label %_ZN7meshoptL7follow2EPjj.exit.epil, label %.lr.ph.i190.epil

.lr.ph.i190.epil:                                 ; preds = %.lr.ph222.epil.preheader, %.lr.ph.i190.epil
  %i.vv = phi i32 [ %i.vz, %.lr.ph.i190.epil ], [ %i.vu, %.lr.ph222.epil.preheader ] ; 3 uses
  %i.vw = phi ptr [ %i.vy, %.lr.ph.i190.epil ], [ %i.vt, %.lr.ph222.epil.preheader ]
  %i.vx = zext i32 %i.vv to i64
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.vx ; 2 uses
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !50 ; 3 uses
  store i32 %i.vz, ptr %i.vw, align 4, !tbaa !50
  %.not.i191.epil = icmp eq i32 %i.vv, %i.vz
  br i1 %.not.i191.epil, label %_ZN7meshoptL7follow2EPjj.exit.epil, label %.lr.ph.i190.epil, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit.epil:               ; preds = %.lr.ph.i190.epil, %.lr.ph222.epil.preheader
  %.0.lcssa.i.epil = phi i32 [ %i.vr, %.lr.ph222.epil.preheader ], [ %i.vv, %.lr.ph.i190.epil ]
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.0130221.epil.init
  store i32 %.0.lcssa.i.epil, ptr %i.wa, align 4, !tbaa !50
  br label %._crit_edge223

._crit_edge223:                                   ; preds = %._crit_edge223.unr-lcssa, %_ZN7meshoptL7follow2EPjj.exit.epil
  %i.wb = shl i64 %2, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.wb, i1 false)
  br i1 %.not90.i, label %.lr.ph227, label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %._crit_edge223
  %.not.i184 = icmp eq ptr %1, null
  %i.wc = and i32 %10, 1
  %i.wd = icmp eq i32 %i.wc, 0
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.i188, %.lr.ph.i183
  %.0152163.i = phi i64 [ 0, %.lr.ph.i183 ], [ %i.abf, %.loopexit.i188 ] ; 3 uses
  %i.we = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0152163.i ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 12
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !57
  %i.wh = fcmp oeq float %i.wg, 0.000000e+00
  br i1 %i.wh, label %.loopexit.i188, label %.preheader.i185

.preheader.i185:                                  ; preds = %bb.ao
  %i.wi = mul nuw i64 %.0152163.i, 3              ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %i.wk = getelementptr [4 x i8], ptr %1, i64 %i.wi ; 2 uses
  %i.wl = getelementptr [4 x i8], ptr %i.f, i64 %i.wi ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %.preheader.i185
  %indvars.iv.i = phi i64 [ 0, %.preheader.i185 ], [ %indvars.iv.next.i, %bb.as ] ; 4 uses
  %i.wm = add nuw i64 %indvars.iv.i, %i.wi        ; 3 uses
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.wm
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !50
  %i.wp = zext i32 %i.wo to i64
  %.idx.i186 = shl nuw nsw i64 %i.wp, 4
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i186 ; 3 uses
  br i1 %.not.i184, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wm
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !50
  %i.wt = zext i32 %i.ws to i64
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %indvars.iv.i ; 2 uses
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !50
  %i.ww = sext i32 %i.wv to i64
  %i.wx = getelementptr [4 x i8], ptr %i.wk, i64 %i.ww
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !50
  %i.wz = zext i32 %i.wy to i64
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.wz
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wu, i64 4
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !50
  %i.xd = sext i32 %i.xc to i64
  %i.xe = getelementptr [4 x i8], ptr %i.wk, i64 %i.xd
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !50
  %i.xg = zext i32 %i.xf to i64
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.xg
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %indvars.iv.i ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !50
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr [4 x i8], ptr %i.wl, i64 %i.xk
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xi, i64 4
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !50
  %i.xo = sext i32 %i.xn to i64
  %i.xp = getelementptr [4 x i8], ptr %i.wl, i64 %i.xo
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.in160.i = phi ptr [ %i.xa, %bb.aq ], [ %i.xl, %bb.ar ]
  %.pn.i = phi i64 [ %i.wt, %bb.aq ], [ %i.wm, %bb.ar ]
  %.in155.i = phi ptr [ %i.xh, %bb.aq ], [ %i.xp, %bb.ar ]
  %.in161.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn.i
  %i.xq = load i32, ptr %.in161.i, align 4, !tbaa !50
  %i.xr = load i32, ptr %.in160.i, align 4, !tbaa !50
  %i.xs = load i32, ptr %.in155.i, align 4, !tbaa !50
  %i.xt = zext i32 %i.xq to i64                   ; 2 uses
  %i.xu = mul i64 %i.l, %i.xt
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xu ; 3 uses
  %i.xw = zext i32 %i.xr to i64
  %i.xx = mul i64 %i.l, %i.xw
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xx ; 3 uses
  %i.xz = zext i32 %i.xs to i64
  %i.ya = mul i64 %i.l, %i.xz
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ya ; 3 uses
  %i.yc = mul i64 %i.m, %i.xt
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.yc ; 2 uses
  %i.ye = load float, ptr %i.wj, align 4, !tbaa !63 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %i.xy, i64 4
  %13 = getelementptr inbounds nuw i8, ptr %i.xv, i64 4
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yb, i64 4
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  %14 = load float, ptr %i.yf, align 4, !tbaa !52 ; 3 uses
  %15 = fneg float %14                            ; 3 uses
  %16 = insertelement <2 x float> poison, float %14, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yk = load <2 x float>, ptr %i.we, align 4, !tbaa !52 ; 3 uses
  %i.yl = load <2 x float>, ptr %i.yd, align 4, !tbaa !52 ; 5 uses
  %foldExtExtBinop344 = fmul <2 x float> %i.yk, %i.yl
  %i.ym = extractelement <2 x float> %foldExtExtBinop344, i64 1
  %i.yn = extractelement <2 x float> %i.yl, i64 0
  %i.yo = extractelement <2 x float> %i.yk, i64 0
  %i.yp = tail call float @llvm.fmuladd.f32(float %i.yo, float %i.yn, float %i.ym)
  %i.yq = tail call float @llvm.fmuladd.f32(float %i.ye, float %14, float %i.yp) ; 2 uses
  %i.yr = fneg <2 x float> %i.yl                  ; 3 uses
  %i.ys = insertelement <2 x float> poison, float %i.yq, i64 0
  %i.yt = shufflevector <2 x float> %i.ys, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yr, <2 x float> %i.yt, <2 x float> %i.yk) ; 4 uses
  %i.yv = tail call float @llvm.fmuladd.f32(float %15, float %i.yq, float %i.ye) ; 3 uses
  %foldExtExtBinop346 = fmul <2 x float> %i.yu, %i.yu
  %i.yw = extractelement <2 x float> %foldExtExtBinop346, i64 1
  %i.yx = extractelement <2 x float> %i.yu, i64 0 ; 2 uses
  %i.yy = tail call float @llvm.fmuladd.f32(float %i.yx, float %i.yx, float %i.yw)
  %i.yz = tail call float @llvm.fmuladd.f32(float %i.yv, float %i.yv, float %i.yy)
  %i.za = tail call float @sqrtf(float noundef %i.yz) #11 ; 2 uses
  %i.zb = load float, ptr %i.xy, align 4, !tbaa !52
  %i.zc = load float, ptr %i.xv, align 4, !tbaa !52
  %i.zd = load float, ptr %12, align 4, !tbaa !52
  %18 = load float, ptr %13, align 4, !tbaa !52
  %i.ze = load float, ptr %i.yg, align 4, !tbaa !52
  %i.zf = load float, ptr %i.yh, align 4, !tbaa !52 ; 2 uses
  %19 = fsub float %i.ze, %i.zf                   ; 2 uses
  %20 = load float, ptr %i.yb, align 4, !tbaa !52
  %i.zg = insertelement <2 x float> poison, float %i.zb, i64 0
  %21 = insertelement <2 x float> %i.zg, float %20, i64 1
  %i.zh = insertelement <2 x float> poison, float %i.zc, i64 0
  %i.zi = shufflevector <2 x float> %i.zh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zj = fsub <2 x float> %21, %i.zi             ; 3 uses
  %22 = load float, ptr %i.yi, align 4, !tbaa !52
  %i.zk = insertelement <2 x float> poison, float %i.zd, i64 0
  %i.zl = insertelement <2 x float> %i.zk, float %22, i64 1
  %i.zm = insertelement <2 x float> poison, float %18, i64 0
  %i.zn = shufflevector <2 x float> %i.zm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zo = fsub <2 x float> %i.zl, %i.zn           ; 2 uses
  %23 = load float, ptr %i.yj, align 4, !tbaa !52
  %24 = fsub float %23, %i.zf                     ; 2 uses
  %i.zp = shufflevector <2 x float> %i.yl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zq = fmul <2 x float> %i.zp, %i.zo
  %i.zr = shufflevector <2 x float> %i.yl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zj, <2 x float> %i.zr, <2 x float> %i.zq)
  %i.zt = insertelement <2 x float> poison, float %19, i64 0
  %25 = insertelement <2 x float> %i.zt, float %24, i64 1
  %i.zu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %17, <2 x float> %i.zs) ; 3 uses
  %26 = shufflevector <2 x float> %i.zu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %27 = extractelement <2 x float> %i.zu, i64 0
  %28 = extractelement <2 x float> %i.zj, i64 0
  %29 = extractelement <2 x float> %i.yr, i64 0
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %27, float %28) ; 3 uses
  %31 = shufflevector <2 x float> %i.yr, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %32 = insertelement <4 x float> %31, float %15, i64 2
  %33 = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %34 = shufflevector <2 x float> %i.zo, <2 x float> %i.zj, <4 x i32> <i32 0, i32 3, i32 poison, i32 1>
  %35 = insertelement <4 x float> %34, float %19, i64 2
  %36 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %33, <4 x float> %26, <4 x float> %35) ; 6 uses
  %37 = extractelement <2 x float> %i.zu, i64 1
  %38 = tail call float @llvm.fmuladd.f32(float %15, float %37, float %24) ; 3 uses
  %i.zv = extractelement <4 x float> %36, i64 0
  %foldExtExtBinop348 = fmul <4 x float> %36, %36
  %39 = extractelement <4 x float> %foldExtExtBinop348, i64 0
  %40 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %39)
  %i.zw = extractelement <4 x float> %36, i64 2   ; 3 uses
  %41 = tail call float @llvm.fmuladd.f32(float %i.zw, float %i.zw, float %40)
  %i.zx = extractelement <4 x float> %36, i64 3   ; 3 uses
  %42 = fmul float %i.zx, %i.zx
  %i.zy = extractelement <4 x float> %36, i64 1   ; 3 uses
  %43 = tail call float @llvm.fmuladd.f32(float %i.zy, float %i.zy, float %42)
  %i.zz = tail call float @llvm.fmuladd.f32(float %38, float %38, float %43)
  %44 = fmul float %41, %i.zz
  %45 = tail call float @sqrtf(float noundef %44) #11 ; 3 uses
  %46 = fmul float %i.zv, %i.zx
  %47 = tail call float @llvm.fmuladd.f32(float %30, float %i.zy, float %46)
  %i.aaa = tail call float @llvm.fmuladd.f32(float %i.zw, float %38, float %47)
  %i.aab = fcmp oeq float %45, 0.000000e+00
  %i.aac = fcmp oeq float %i.za, 0.000000e+00
  %i.aad = insertelement <2 x float> poison, float %45, i64 0
  %i.aae = insertelement <2 x float> %i.aad, float %i.za, i64 1
  %i.aaf = fdiv <2 x float> splat (float 1.000000e+00), %i.aae ; 2 uses
  %i.aag = extractelement <2 x float> %i.aaf, i64 0
  %i.aah = select i1 %i.aab, float 0.000000e+00, float %i.aag
  %i.aai = fmul float %i.aah, %i.aaa              ; 2 uses
  %i.aaj = tail call float @llvm.fabs.f32(float %i.aai) ; 2 uses
  %i.aak = fcmp ogt float %i.aaj, 1.000000e+00
  %i.aal = select i1 %i.aak, float 1.000000e+00, float %i.aaj ; 3 uses
  %i.aam = tail call float @llvm.fmuladd.f32(float %i.aal, float f0x3D52DA73, float f0xBE5253A5)
  %i.aan = tail call float @llvm.fmuladd.f32(float %i.aal, float %i.aam, float f0x3FC900CE)
  %i.aao = fsub float 1.000000e+00, %i.aal
  %i.aap = tail call float @sqrtf(float noundef %i.aao) #11
  %i.aaq = fmul float %i.aap, %i.aan              ; 2 uses
  %i.aar = fcmp olt float %i.aai, 0.000000e+00
  %i.aas = fsub float f0x40490FDA, %i.aaq
  %i.aat = select i1 %i.aar, float %i.aas, float %i.aaq
  %i.aau = extractelement <2 x float> %i.aaf, i64 1
  %i.aav = select i1 %i.aac, float 0.000000e+00, float %i.aau
  %i.aaw = fmul float %i.aav, %i.aat              ; 2 uses
  %i.aax = fmul float %45, %i.aaw
  %.0.i = select i1 %i.wd, float %i.aax, float %i.aaw ; 2 uses
  %i.aay = load <2 x float>, ptr %i.wq, align 4, !tbaa !52
  %i.aaz = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.aba = shufflevector <2 x float> %i.aaz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yu, <2 x float> %i.aba, <2 x float> %i.aay)
  store <2 x float> %i.abb, ptr %i.wq, align 4, !tbaa !52
  %i.abc = getelementptr inbounds nuw i8, ptr %i.wq, i64 8 ; 2 uses
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !52
  %i.abe = tail call float @llvm.fmuladd.f32(float %i.yv, float %.0.i, float %i.abd)
  store float %i.abe, ptr %i.abc, align 4, !tbaa !52
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i187 = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i187, label %.loopexit.i188, label %bb.ap, !llvm.loop !43

.loopexit.i188:                                   ; preds = %bb.as, %bb.ao
  %i.abf = add nuw nsw i64 %.0152163.i, 1         ; 2 uses
  %exitcond166.not.i = icmp eq i64 %i.abf, %i.a
  br i1 %exitcond166.not.i, label %.lr.ph225, label %bb.ao, !llvm.loop !44

.lr.ph222:                                        ; preds = %_ZN7meshoptL7follow2EPjj.exit.1, %.lr.ph222.preheader.new
  %.0130221 = phi i64 [ 0, %.lr.ph222.preheader.new ], [ %i.acb, %_ZN7meshoptL7follow2EPjj.exit.1 ] ; 5 uses
  %niter384 = phi i64 [ 0, %.lr.ph222.preheader.new ], [ %niter384.next.1, %_ZN7meshoptL7follow2EPjj.exit.1 ]
  %i.abg = trunc i64 %.0130221 to i32             ; 2 uses
  %i.abh = and i64 %.0130221, 4294967294
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.abh ; 2 uses
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !50 ; 2 uses
  %.not11.i = icmp eq i32 %i.abj, %i.abg
  br i1 %.not11.i, label %_ZN7meshoptL7follow2EPjj.exit, label %.lr.ph.i190

.lr.ph.i190:                                      ; preds = %.lr.ph222, %.lr.ph.i190
  %i.abk = phi i32 [ %i.abo, %.lr.ph.i190 ], [ %i.abj, %.lr.ph222 ] ; 3 uses
  %i.abl = phi ptr [ %i.abn, %.lr.ph.i190 ], [ %i.abi, %.lr.ph222 ]
  %i.abm = zext i32 %i.abk to i64
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.abm ; 2 uses
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !50 ; 3 uses
  store i32 %i.abo, ptr %i.abl, align 4, !tbaa !50
  %.not.i191 = icmp eq i32 %i.abk, %i.abo
  br i1 %.not.i191, label %_ZN7meshoptL7follow2EPjj.exit, label %.lr.ph.i190, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit:                    ; preds = %.lr.ph.i190, %.lr.ph222
  %.0.lcssa.i = phi i32 [ %i.abg, %.lr.ph222 ], [ %i.abk, %.lr.ph.i190 ]
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.0130221
  store i32 %.0.lcssa.i, ptr %i.abp, align 4, !tbaa !50
  %i.abq = or disjoint i64 %.0130221, 1           ; 3 uses
  %i.abr = trunc i64 %i.abq to i32                ; 2 uses
  %i.abs = and i64 %i.abq, 4294967295
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.abs ; 2 uses
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !50 ; 2 uses
  %.not11.i.1 = icmp eq i32 %i.abu, %i.abr
  br i1 %.not11.i.1, label %_ZN7meshoptL7follow2EPjj.exit.1, label %.lr.ph.i190.1

.lr.ph.i190.1:                                    ; preds = %_ZN7meshoptL7follow2EPjj.exit, %.lr.ph.i190.1
  %i.abv = phi i32 [ %i.abz, %.lr.ph.i190.1 ], [ %i.abu, %_ZN7meshoptL7follow2EPjj.exit ] ; 3 uses
  %i.abw = phi ptr [ %i.aby, %.lr.ph.i190.1 ], [ %i.abt, %_ZN7meshoptL7follow2EPjj.exit ]
  %i.abx = zext i32 %i.abv to i64
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.abx ; 2 uses
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !50 ; 3 uses
  store i32 %i.abz, ptr %i.abw, align 4, !tbaa !50
  %.not.i191.1 = icmp eq i32 %i.abv, %i.abz
  br i1 %.not.i191.1, label %_ZN7meshoptL7follow2EPjj.exit.1, label %.lr.ph.i190.1, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit.1:                  ; preds = %.lr.ph.i190.1, %_ZN7meshoptL7follow2EPjj.exit
  %.0.lcssa.i.1 = phi i32 [ %i.abr, %_ZN7meshoptL7follow2EPjj.exit ], [ %i.abv, %.lr.ph.i190.1 ]
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.abq
  store i32 %.0.lcssa.i.1, ptr %i.aca, align 4, !tbaa !50
  %i.acb = add nuw i64 %.0130221, 2               ; 2 uses
  %niter384.next.1 = add nuw i64 %niter384, 2     ; 2 uses
  %niter384.ncmp.1 = icmp eq i64 %niter384.next.1, %unroll_iter383
  br i1 %niter384.ncmp.1, label %._crit_edge223.unr-lcssa, label %.lr.ph222, !llvm.loop !45

.lr.ph227:                                        ; preds = %_ZN7meshoptL7follow2EPjj.exit198, %._crit_edge223
  %i.acc = and i32 %10, 2
  %i.acd = icmp eq i32 %i.acc, 0
  br label %bb.at

.lr.ph225:                                        ; preds = %.loopexit.i188, %_ZN7meshoptL7follow2EPjj.exit198
  %.0129224 = phi i64 [ %i.acv, %_ZN7meshoptL7follow2EPjj.exit198 ], [ 0, %.loopexit.i188 ] ; 5 uses
  %i.ace = trunc i64 %.0129224 to i32
  %i.acf = and i64 %.0129224, 4294967295
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.acf ; 2 uses
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !50 ; 2 uses
  %.not11.i193 = icmp eq i32 %i.ach, %i.ace
  br i1 %.not11.i193, label %.lr.ph225._ZN7meshoptL7follow2EPjj.exit198_crit_edge, label %.lr.ph.i194

.lr.ph225._ZN7meshoptL7follow2EPjj.exit198_crit_edge: ; preds = %.lr.ph225
  %.pre = and i64 %.0129224, 4294967295
  br label %_ZN7meshoptL7follow2EPjj.exit198

.lr.ph.i194:                                      ; preds = %.lr.ph225, %.lr.ph.i194
  %i.aci = phi i32 [ %i.acm, %.lr.ph.i194 ], [ %i.ach, %.lr.ph225 ] ; 2 uses
  %i.acj = phi ptr [ %i.acl, %.lr.ph.i194 ], [ %i.acg, %.lr.ph225 ]
  %i.ack = zext i32 %i.aci to i64                 ; 2 uses
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.ack ; 2 uses
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !50 ; 3 uses
  store i32 %i.acm, ptr %i.acj, align 4, !tbaa !50
  %.not.i195 = icmp eq i32 %i.aci, %i.acm
  br i1 %.not.i195, label %_ZN7meshoptL7follow2EPjj.exit198, label %.lr.ph.i194, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit198:                 ; preds = %.lr.ph.i194, %.lr.ph225._ZN7meshoptL7follow2EPjj.exit198_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.lr.ph225._ZN7meshoptL7follow2EPjj.exit198_crit_edge ], [ %i.ack, %.lr.ph.i194 ]
  %i.acn = getelementptr inbounds nuw i8, ptr %i.og, i64 %.pre-phi
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !58
  %i.acp = and i8 %i.aco, 1
  %.not148 = icmp eq i8 %i.acp, 0
  %i.acq = select i1 %.not148, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %.idx149 = mul i64 %.0129224, 48
  %i.acr = getelementptr i8, ptr %0, i64 %.idx149 ; 3 uses
  %i.acs = getelementptr i8, ptr %i.acr, i64 44
  store float %i.acq, ptr %i.acs, align 4, !tbaa !52
  %i.act = getelementptr i8, ptr %i.acr, i64 28
  store float %i.acq, ptr %i.act, align 4, !tbaa !52
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acr, i64 12
  store float %i.acq, ptr %i.acu, align 4, !tbaa !52
  %i.acv = add nuw nsw i64 %.0129224, 1           ; 2 uses
  %exitcond249.not = icmp eq i64 %i.acv, %i.a
  br i1 %exitcond249.not, label %.lr.ph227, label %.lr.ph225, !llvm.loop !46

bb.at:                                            ; preds = %.lr.ph227, %bb.aw
  %.0128226 = phi i64 [ 0, %.lr.ph227 ], [ %i.adt, %bb.aw ] ; 4 uses
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.0128226
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !50
  %i.acy = zext i32 %i.acx to i64
  %i.acz = icmp eq i64 %.0128226, %i.acy
  br i1 %i.acz, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %.idx147 = shl nuw nsw i64 %.0128226, 4
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 %.idx147 ; 4 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 8 ; 2 uses
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !52 ; 3 uses
  %i.add = load <2 x float>, ptr %i.ada, align 4, !tbaa !52 ; 4 uses
  %foldExtExtBinop353 = fmul <2 x float> %i.add, %i.add
  %i.ade = extractelement <2 x float> %foldExtExtBinop353, i64 1
  %i.adf = extractelement <2 x float> %i.add, i64 0 ; 2 uses
  %i.adg = tail call float @llvm.fmuladd.f32(float %i.adf, float %i.adf, float %i.ade)
  %i.adh = tail call float @llvm.fmuladd.f32(float %i.adc, float %i.adc, float %i.adg)
  %i.adi = tail call float @sqrtf(float noundef %i.adh) #11 ; 2 uses
  %i.adj = fcmp oeq float %i.adi, 0.000000e+00
  %i.adk = fdiv float 1.000000e+00, %i.adi
  %i.adl = select i1 %i.adj, float 0.000000e+00, float %i.adk ; 3 uses
  %i.adm = insertelement <2 x float> poison, float %i.adl, i64 0
  %i.adn = shufflevector <2 x float> %i.adm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ado = fmul <2 x float> %i.add, %i.adn        ; 2 uses
  store <2 x float> %i.ado, ptr %i.ada, align 4, !tbaa !52
  %i.adp = fmul float %i.adc, %i.adl
  store float %i.adp, ptr %i.adb, align 4, !tbaa !52
  br i1 %i.acd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.adq = fcmp oeq float %i.adl, 0.000000e+00
  %i.adr = extractelement <2 x float> %i.ado, i64 0
  %i.ads = select i1 %i.adq, float 1.000000e+00, float %i.adr
  store float %i.ads, ptr %i.ada, align 4, !tbaa !52
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.at
  %i.adt = add nuw i64 %.0128226, 1               ; 2 uses
  %exitcond250.not = icmp eq i64 %i.adt, %2
  br i1 %exitcond250.not, label %.lr.ph229.preheader, label %bb.at, !llvm.loop !47

.lr.ph229.preheader:                              ; preds = %bb.aw
  %xtraiter385 = and i64 %2, 1
  %i.adu = icmp eq i64 %i.re, 0
  br i1 %i.adu, label %.lr.ph229.epil.preheader, label %.lr.ph229.preheader.new

.lr.ph229.preheader.new:                          ; preds = %.lr.ph229.preheader
  %unroll_iter389 = and i64 %2, -2
  br label %.lr.ph229

._crit_edge230.loopexit.unr-lcssa:                ; preds = %bb.bc
  %lcmp.mod387.not = icmp eq i64 %xtraiter385, 0
  br i1 %lcmp.mod387.not, label %._crit_edge230, label %.lr.ph229.epil.preheader

.lr.ph229.epil.preheader:                         ; preds = %._crit_edge230.loopexit.unr-lcssa, %.lr.ph229.preheader
  %.0228.epil.init = phi i64 [ 0, %.lr.ph229.preheader ], [ %i.aet, %._crit_edge230.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod388 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod388)
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.0228.epil.init
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !50
  %i.adx = zext i32 %i.adw to i64                 ; 2 uses
  %.not.epil = icmp eq i64 %.0228.epil.init, %i.adx
  br i1 %.not.epil, label %._crit_edge230, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph229.epil.preheader
  %.idx.epil = shl i64 %.0228.epil.init, 4
  %i.ady = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.epil
  %.idx146.epil = shl nuw nsw i64 %i.adx, 4
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 %.idx146.epil
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ady, ptr noundef nonnull align 4 dereferenceable(12) %i.adz, i64 12, i1 false)
  br label %._crit_edge230

._crit_edge230:                                   ; preds = %._crit_edge230.loopexit.unr-lcssa, %bb.ax, %.lr.ph229.epil.preheader, %.preheader206
  %i.aea = load i64, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %.not3.i = icmp eq i64 %i.aea, 0
  br i1 %.not3.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i199

.lr.ph.i199:                                      ; preds = %._crit_edge230, %bb.ay
  %.04.i = phi i64 [ %i.aef, %bb.ay ], [ %i.aea, %._crit_edge230 ] ; 2 uses
  %i.aeb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !17
  %i.aec = getelementptr [8 x i8], ptr %11, i64 %.04.i
  %i.aed = getelementptr i8, ptr %i.aec, i64 -8
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !15
  invoke void %i.aeb(ptr noundef %i.aee)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %.lr.ph.i199
  %i.aef = add i64 %.04.i, -1                     ; 2 uses
  %.not.i200 = icmp eq i64 %i.aef, 0
  br i1 %.not.i200, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i199, !llvm.loop !0

bb.az:                                            ; preds = %.lr.ph.i199
  %i.aeg = landingpad { ptr, i32 }
          catch ptr null
  %i.aeh = extractvalue { ptr, i32 } %i.aeg, 0
  tail call void @__clang_call_terminate(ptr %i.aeh) #12
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.ay, %._crit_edge230
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  ret void

.lr.ph229:                                        ; preds = %bb.bc, %.lr.ph229.preheader.new
  %.0228 = phi i64 [ 0, %.lr.ph229.preheader.new ], [ %i.aet, %bb.bc ] ; 5 uses
  %niter390 = phi i64 [ 0, %.lr.ph229.preheader.new ], [ %niter390.next.1, %bb.bc ]
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.0228
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !50
  %i.aek = zext i32 %i.aej to i64                 ; 2 uses
  %.not = icmp eq i64 %.0228, %i.aek
  br i1 %.not, label %.lr.ph229.1, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph229
  %.idx = shl i64 %.0228, 4
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.idx146 = shl nuw nsw i64 %i.aek, 4
  %i.aem = getelementptr inbounds nuw i8, ptr %0, i64 %.idx146
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ael, ptr noundef nonnull align 4 dereferenceable(12) %i.aem, i64 12, i1 false)
  br label %.lr.ph229.1

.lr.ph229.1:                                      ; preds = %.lr.ph229, %bb.ba
  %i.aen = or disjoint i64 %.0228, 1              ; 3 uses
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.aen
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !50
  %i.aeq = zext i32 %i.aep to i64                 ; 2 uses
  %.not.1 = icmp eq i64 %i.aen, %i.aeq
  br i1 %.not.1, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph229.1
  %.idx.1 = shl i64 %i.aen, 4
  %i.aer = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1
  %.idx146.1 = shl nuw nsw i64 %i.aeq, 4
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 %.idx146.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aer, ptr noundef nonnull align 4 dereferenceable(12) %i.aes, i64 12, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph229.1
  %i.aet = add nuw i64 %.0228, 2                  ; 2 uses
  %niter390.next.1 = add i64 %niter390, 2         ; 2 uses
  %niter390.ncmp.1 = icmp eq i64 %niter390.next.1, %unroll_iter389
  br i1 %niter390.ncmp.1, label %._crit_edge230.loopexit.unr-lcssa, label %.lr.ph229, !llvm.loop !48

bb.bd:                                            ; preds = %bb.v, %bb.x, %bb.aa, %bb.z, %bb.w, %bb.u
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.nw, %bb.u ], [ %i.nx, %bb.v ], [ %i.ny, %bb.w ], [ %i.nz, %bb.x ], [ %i.qe, %bb.z ], [ %i.qf, %bb.aa ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04 = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !17
  %i.d = getelementptr [8 x i8], ptr %0, i64 %.04
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  invoke void %i.c(ptr noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i64 %.04, -1                         ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #12
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !16}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"_ZTSN17meshopt_Allocator7StorageE", !10, i64 0, !10, i64 8}
!12 = !{!"long", !6, i64 0}
!13 = !{!"_ZTS17meshopt_Allocator", !6, i64 0, !12, i64 192}
!14 = !{!13, !12, i64 192}
!15 = !{!10, !10, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!11, !10, i64 8}
!18 = distinct !{null}
!19 = distinct !{!19, !16}
!20 = distinct !{null}
!21 = distinct !{!21, !16}
!22 = distinct !{null}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !53}
!25 = distinct !{!25, !53}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{null}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16, !54, !55}
!31 = distinct !{!31, !16, !55, !54}
!32 = distinct !{null}
!33 = distinct !{!33, i1 false, !"LVerDomain"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !16, !54, !55}
!38 = distinct !{!38, !16, !54}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = !{!11, !10, i64 0}
!50 = !{!7, !7, i64 0}
!51 = !{!"float", !6, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = !{!"_ZTSN7meshopt7TangentE", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!57 = !{!56, !51, i64 12}
!58 = !{!6, !6, i64 0}
!59 = !{!34}
!60 = !{!36, !35}
!61 = !{!35}
!62 = !{!36}
!63 = !{!56, !51, i64 8}
end_hunk_0
