Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/tangentspace?download=true
inline.NumInlined: 32
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@meshopt_generateTangents:bb.a
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.ty ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !50 ; 3 uses
  store i32 %i.ua, ptr %i.tx, align 4, !tbaa !50
  %.not.i108.i = icmp eq i32 %i.tw, %i.ua
  br i1 %.not.i108.i, label %_ZN7meshoptL7follow2EPjj.exit110.i, label %.lr.ph.i107.i, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit110.i:               ; preds = %.lr.ph.i107.i, %_ZN7meshoptL7follow2EPjj.exit.i
  %.0.lcssa.i109.i = phi i32 [ %i.sl, %_ZN7meshoptL7follow2EPjj.exit.i ], [ %i.tw, %.lr.ph.i107.i ] ; 2 uses
  %.not104.i = icmp eq i32 %.0.lcssa.i.i, %.0.lcssa.i109.i
  br i1 %.not104.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %_ZN7meshoptL7follow2EPjj.exit110.i
  %i.ub = zext i32 %.0.lcssa.i.i to i64
  %i.uc = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.ub ; 3 uses
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !58
  %i.ue = zext i32 %.0.lcssa.i109.i to i64        ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.ue ; 2 uses
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !58
  %i.uh = or i8 %i.ug, %i.ud
  %i.ui = icmp eq i8 %i.uh, 3
  br i1 %i.ui, label %.critedge.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.ue
  store i32 %.0.lcssa.i.i, ptr %i.uj, align 4, !tbaa !50
  %i.uk = load i8, ptr %i.uf, align 1, !tbaa !58
  %i.ul = load i8, ptr %i.uc, align 1, !tbaa !58
  %i.um = or i8 %i.ul, %i.uk
  store i8 %i.um, ptr %i.uc, align 1, !tbaa !58
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN7meshoptL7follow2EPjj.exit110.i, %bb.ai
  %i.un = load i32, ptr %i.rk, align 4, !tbaa !50
  %i.uo = and i32 %i.un, 3
  %i.up = add nuw i32 %i.uo, %i.rn                ; 3 uses
  %i.uq = zext i32 %i.up to i64
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.uq ; 2 uses
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !50 ; 2 uses
  %.not11.i111.i = icmp eq i32 %i.up, %i.us
  br i1 %.not11.i111.i, label %_ZN7meshoptL7follow2EPjj.exit115.i, label %.lr.ph.i112.i

.lr.ph.i112.i:                                    ; preds = %bb.am, %.lr.ph.i112.i
  %i.ut = phi i32 [ %i.ux, %.lr.ph.i112.i ], [ %i.us, %bb.am ] ; 3 uses
  %i.uu = phi ptr [ %i.uw, %.lr.ph.i112.i ], [ %i.ur, %bb.am ]
  %i.uv = zext i32 %i.ut to i64
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.uv ; 2 uses
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !50 ; 3 uses
  store i32 %i.ux, ptr %i.uu, align 4, !tbaa !50
  %.not.i113.i = icmp eq i32 %i.ut, %i.ux
  br i1 %.not.i113.i, label %_ZN7meshoptL7follow2EPjj.exit115.i, label %.lr.ph.i112.i, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit115.i:               ; preds = %.lr.ph.i112.i, %bb.am
  %.0.lcssa.i114.i = phi i32 [ %i.up, %bb.am ], [ %i.ut, %.lr.ph.i112.i ] ; 2 uses
  %i.uy = load i32, ptr %i.sj, align 4, !tbaa !50
  %i.uz = and i32 %i.uy, 3
  %i.va = add nuw i32 %i.uz, %i.sm                ; 3 uses
  %i.vb = zext i32 %i.va to i64
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vb ; 2 uses
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !50 ; 2 uses
  %.not11.i116.i = icmp eq i32 %i.va, %i.vd
  br i1 %.not11.i116.i, label %_ZN7meshoptL7follow2EPjj.exit120.i, label %.lr.ph.i117.i

.lr.ph.i117.i:                                    ; preds = %_ZN7meshoptL7follow2EPjj.exit115.i, %.lr.ph.i117.i
  %i.ve = phi i32 [ %i.vi, %.lr.ph.i117.i ], [ %i.vd, %_ZN7meshoptL7follow2EPjj.exit115.i ] ; 3 uses
  %i.vf = phi ptr [ %i.vh, %.lr.ph.i117.i ], [ %i.vc, %_ZN7meshoptL7follow2EPjj.exit115.i ]
  %i.vg = zext i32 %i.ve to i64
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vg ; 2 uses
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !50 ; 3 uses
  store i32 %i.vi, ptr %i.vf, align 4, !tbaa !50
  %.not.i118.i = icmp eq i32 %i.ve, %i.vi
  br i1 %.not.i118.i, label %_ZN7meshoptL7follow2EPjj.exit120.i, label %.lr.ph.i117.i, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit120.i:               ; preds = %.lr.ph.i117.i, %_ZN7meshoptL7follow2EPjj.exit115.i
  %.0.lcssa.i119.i = phi i32 [ %i.va, %_ZN7meshoptL7follow2EPjj.exit115.i ], [ %i.ve, %.lr.ph.i117.i ] ; 2 uses
  %.not105.i = icmp eq i32 %.0.lcssa.i114.i, %.0.lcssa.i119.i
  br i1 %.not105.i, label %.critedge.i, label %bb.an

bb.an:                                            ; preds = %_ZN7meshoptL7follow2EPjj.exit120.i
  %i.vj = zext i32 %.0.lcssa.i119.i to i64
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vj
  store i32 %.0.lcssa.i114.i, ptr %i.vk, align 4, !tbaa !50
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.an, %_ZN7meshoptL7follow2EPjj.exit120.i, %bb.ak, %bb.ah, %bb.ag
  %i.vl = add nuw nsw i64 %.0132.i, 1             ; 2 uses
  %exitcond.not.i181 = icmp eq i64 %i.vl, %i.rj
  br i1 %exitcond.not.i181, label %.loopexit.i, label %bb.ae, !llvm.loop !41

_ZN7meshoptL18mergeTangentGroupsEPjS0_PhPKjmS3_S3_.exit: ; preds = %.loopexit.i, %bb.ab
  %exitcond248.not = icmp eq i64 %i.rb, %4
  br i1 %exitcond248.not, label %.preheader207, label %bb.ab, !llvm.loop !42

._crit_edge224.unr-lcssa:                         ; preds = %_ZN7meshoptL7follow2EPjj.exit.1
  %lcmp.mod375.not = icmp eq i64 %xtraiter373, 0
  br i1 %lcmp.mod375.not, label %._crit_edge224, label %.lr.ph223.epil.preheader

.lr.ph223.epil.preheader:                         ; preds = %._crit_edge224.unr-lcssa, %.lr.ph223.preheader
  %.0130222.epil.init = phi i64 [ 0, %.lr.ph223.preheader ], [ %i.ach, %._crit_edge224.unr-lcssa ] ; 3 uses
  %lcmp.mod376 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod376)
  %i.vm = trunc i64 %.0130222.epil.init to i32    ; 2 uses
  %i.vn = and i64 %.0130222.epil.init, 4294967295
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vn ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !50 ; 2 uses
  %.not11.i.epil = icmp eq i32 %i.vp, %i.vm
  br i1 %.not11.i.epil, label %_ZN7meshoptL7follow2EPjj.exit.epil, label %.lr.ph.i191.epil

.lr.ph.i191.epil:                                 ; preds = %.lr.ph223.epil.preheader, %.lr.ph.i191.epil
  %i.vq = phi i32 [ %i.vu, %.lr.ph.i191.epil ], [ %i.vp, %.lr.ph223.epil.preheader ] ; 3 uses
  %i.vr = phi ptr [ %i.vt, %.lr.ph.i191.epil ], [ %i.vo, %.lr.ph223.epil.preheader ]
  %i.vs = zext i32 %i.vq to i64
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.vs ; 2 uses
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !50 ; 3 uses
  store i32 %i.vu, ptr %i.vr, align 4, !tbaa !50
  %.not.i192.epil = icmp eq i32 %i.vq, %i.vu
  br i1 %.not.i192.epil, label %_ZN7meshoptL7follow2EPjj.exit.epil, label %.lr.ph.i191.epil, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit.epil:               ; preds = %.lr.ph.i191.epil, %.lr.ph223.epil.preheader
  %.0.lcssa.i.epil = phi i32 [ %i.vm, %.lr.ph223.epil.preheader ], [ %i.vq, %.lr.ph.i191.epil ]
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0130222.epil.init
  store i32 %.0.lcssa.i.epil, ptr %i.vv, align 4, !tbaa !50
  br label %._crit_edge224

._crit_edge224:                                   ; preds = %._crit_edge224.unr-lcssa, %_ZN7meshoptL7follow2EPjj.exit.epil
  %i.vw = shl i64 %2, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.vw, i1 false)
  br i1 %.not90.i, label %.lr.ph228, label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %._crit_edge224
  %.not.i184 = icmp eq ptr %1, null
  %i.vx = and i32 %10, 1
  %i.vy = icmp eq i32 %i.vx, 0
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.i189, %.lr.ph.i183
  %.0152163.i = phi i64 [ 0, %.lr.ph.i183 ], [ %i.abl, %.loopexit.i189 ] ; 3 uses
  %i.vz = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %.0152163.i ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 12
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !57
  %i.wc = fcmp oeq float %i.wb, 0.000000e+00
  br i1 %i.wc, label %.loopexit.i189, label %.preheader.i185

.preheader.i185:                                  ; preds = %bb.ao
  %i.wd = mul nuw i64 %.0152163.i, 3              ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wf = getelementptr [4 x i8], ptr %1, i64 %i.wd ; 2 uses
  %i.wg = getelementptr [4 x i8], ptr %i.f, i64 %i.wd ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %.preheader.i185
  %indvars.iv.i = phi i64 [ 0, %.preheader.i185 ], [ %indvars.iv.next.i, %bb.as ] ; 4 uses
  %i.wh = add nuw i64 %indvars.iv.i, %i.wd        ; 3 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.wh
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !50
  %i.wk = zext i32 %i.wj to i64
  %.idx.i186 = shl nuw nsw i64 %i.wk, 4
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i186 ; 3 uses
  br i1 %.not.i184, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wh
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !50
  %i.wo = zext i32 %i.wn to i64
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %indvars.iv.i ; 2 uses
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !50
  %i.wr = sext i32 %i.wq to i64
  %i.ws = getelementptr [4 x i8], ptr %i.wf, i64 %i.wr
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !50
  %i.wu = zext i32 %i.wt to i64
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.wu
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wp, i64 4
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !50
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr [4 x i8], ptr %i.wf, i64 %i.wy
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !50
  %i.xb = zext i32 %i.xa to i64
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.xb
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr @_ZZN7meshoptL23accumulateTangentGroupsEPfPKjS2_mS2_PKNS_7TangentEPKfmS7_mjE4next, i64 %indvars.iv.i ; 2 uses
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !50
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr [4 x i8], ptr %i.wg, i64 %i.xf
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !50
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr [4 x i8], ptr %i.wg, i64 %i.xj
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.in160.i = phi ptr [ %i.wv, %bb.aq ], [ %i.xg, %bb.ar ]
  %.pn.i = phi i64 [ %i.wo, %bb.aq ], [ %i.wh, %bb.ar ]
  %.in155.i = phi ptr [ %i.xc, %bb.aq ], [ %i.xk, %bb.ar ]
  %.in161.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pn.i
  %i.xl = load i32, ptr %.in161.i, align 4, !tbaa !50
  %i.xm = load i32, ptr %.in160.i, align 4, !tbaa !50
  %i.xn = load i32, ptr %.in155.i, align 4, !tbaa !50
  %i.xo = zext i32 %i.xl to i64                   ; 2 uses
  %i.xp = mul i64 %i.l, %i.xo
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xp
  %i.xr = zext i32 %i.xm to i64
  %i.xs = mul i64 %i.l, %i.xr
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xs ; 2 uses
  %i.xu = zext i32 %i.xn to i64
  %i.xv = mul i64 %i.l, %i.xu
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.xv ; 2 uses
  %i.xx = mul i64 %i.m, %i.xo
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.xx ; 2 uses
  %i.xz = load float, ptr %i.we, align 4, !tbaa !63 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !52 ; 3 uses
  %i.yc = fneg float %i.yb                        ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !52
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !52
  %i.yh = load <2 x float>, ptr %i.vz, align 4, !tbaa !52 ; 3 uses
  %i.yi = load <2 x float>, ptr %i.xy, align 4, !tbaa !52 ; 5 uses
  %foldExtExtBinop338 = fmul <2 x float> %i.yh, %i.yi
  %i.yj = extractelement <2 x float> %foldExtExtBinop338, i64 1
  %i.yk = extractelement <2 x float> %i.yi, i64 0
  %i.yl = extractelement <2 x float> %i.yh, i64 0
  %i.ym = tail call float @llvm.fmuladd.f32(float %i.yl, float %i.yk, float %i.yj)
  %i.yn = tail call float @llvm.fmuladd.f32(float %i.xz, float %i.yb, float %i.ym) ; 2 uses
  %i.yo = fneg <2 x float> %i.yi                  ; 3 uses
  %i.yp = insertelement <2 x float> poison, float %i.yn, i64 0
  %i.yq = shufflevector <2 x float> %i.yp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yo, <2 x float> %i.yq, <2 x float> %i.yh) ; 4 uses
  %i.ys = tail call float @llvm.fmuladd.f32(float %i.yc, float %i.yn, float %i.xz) ; 3 uses
  %foldExtExtBinop340 = fmul <2 x float> %i.yr, %i.yr
  %i.yt = extractelement <2 x float> %foldExtExtBinop340, i64 1
  %i.yu = extractelement <2 x float> %i.yr, i64 0 ; 2 uses
  %i.yv = tail call float @llvm.fmuladd.f32(float %i.yu, float %i.yu, float %i.yt)
  %i.yw = tail call float @llvm.fmuladd.f32(float %i.ys, float %i.ys, float %i.yv) ; 2 uses
  %sqrt.i187 = tail call float @llvm.sqrt.f32(float %i.yw)
  %i.yx = load <2 x float>, ptr %i.xt, align 4, !tbaa !52 ; 2 uses
  %12 = load <3 x float>, ptr %i.xq, align 4, !tbaa !52 ; 3 uses
  %i.yy = load <2 x float>, ptr %i.xw, align 4, !tbaa !52 ; 2 uses
  %i.yz = shufflevector <2 x float> %i.yx, <2 x float> %i.yy, <2 x i32> <i32 0, i32 2>
  %i.za = shufflevector <3 x float> %12, <3 x float> poison, <2 x i32> zeroinitializer
  %i.zb = fsub <2 x float> %i.yz, %i.za           ; 2 uses
  %i.zc = shufflevector <2 x float> %i.yx, <2 x float> %i.yy, <2 x i32> <i32 1, i32 3>
  %13 = shufflevector <3 x float> %12, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zd = fsub <2 x float> %i.zc, %13             ; 2 uses
  %i.ze = insertelement <2 x float> poison, float %i.ye, i64 0
  %i.zf = insertelement <2 x float> %i.ze, float %i.yg, i64 1
  %14 = shufflevector <3 x float> %12, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.zg = fsub <2 x float> %i.zf, %14             ; 2 uses
  %i.zh = shufflevector <2 x float> %i.yi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zi = fmul <2 x float> %i.zh, %i.zd
  %i.zj = shufflevector <2 x float> %i.yi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zb, <2 x float> %i.zj, <2 x float> %i.zi)
  %i.zl = insertelement <2 x float> poison, float %i.yb, i64 0
  %i.zm = shufflevector <2 x float> %i.zl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zg, <2 x float> %i.zm, <2 x float> %i.zk) ; 3 uses
  %i.zo = shufflevector <2 x float> %i.yo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zo, <2 x float> %i.zn, <2 x float> %i.zb) ; 4 uses
  %i.zq = shufflevector <2 x float> %i.yo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zq, <2 x float> %i.zn, <2 x float> %i.zd) ; 4 uses
  %i.zs = insertelement <2 x float> poison, float %i.yc, i64 0
  %i.zt = shufflevector <2 x float> %i.zs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zt, <2 x float> %i.zn, <2 x float> %i.zg) ; 4 uses
  %i.zv = fmul <2 x float> %i.zr, %i.zr
  %i.zw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zp, <2 x float> %i.zp, <2 x float> %i.zv)
  %i.zx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zu, <2 x float> %i.zu, <2 x float> %i.zw) ; 2 uses
  %shift = shufflevector <2 x float> %i.zx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop342 = fmul <2 x float> %i.zx, %shift
  %i.zy = extractelement <2 x float> %foldExtExtBinop342, i64 0
  %i.zz = tail call float @sqrtf(float noundef %i.zy) #11 ; 3 uses
  %shift344 = shufflevector <2 x float> %i.zr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop345 = fmul <2 x float> %i.zr, %shift344
  %i.aaa = extractelement <2 x float> %foldExtExtBinop345, i64 0
  %i.aab = extractelement <2 x float> %i.zp, i64 0
  %i.aac = extractelement <2 x float> %i.zp, i64 1
  %i.aad = tail call float @llvm.fmuladd.f32(float %i.aab, float %i.aac, float %i.aaa)
  %i.aae = extractelement <2 x float> %i.zu, i64 0
  %i.aaf = extractelement <2 x float> %i.zu, i64 1
  %i.aag = tail call float @llvm.fmuladd.f32(float %i.aae, float %i.aaf, float %i.aad)
  %i.aah = fcmp oeq float %i.zz, 0.000000e+00
  %i.aai = fcmp oeq float %i.yw, 0.000000e+00
  %i.aaj = insertelement <2 x float> poison, float %i.zz, i64 0
  %i.aak = insertelement <2 x float> %i.aaj, float %sqrt.i187, i64 1
  %i.aal = fdiv <2 x float> splat (float 1.000000e+00), %i.aak ; 2 uses
  %i.aam = extractelement <2 x float> %i.aal, i64 0
  %i.aan = select i1 %i.aah, float 0.000000e+00, float %i.aam
  %i.aao = fmul float %i.aan, %i.aag              ; 2 uses
  %i.aap = tail call float @llvm.fabs.f32(float %i.aao) ; 2 uses
  %i.aaq = fcmp ogt float %i.aap, 1.000000e+00
  %i.aar = select i1 %i.aaq, float 1.000000e+00, float %i.aap ; 3 uses
  %i.aas = tail call float @llvm.fmuladd.f32(float %i.aar, float f0x3D52DA73, float f0xBE5253A5)
  %i.aat = tail call float @llvm.fmuladd.f32(float %i.aar, float %i.aas, float f0x3FC900CE)
  %i.aau = fsub float 1.000000e+00, %i.aar
  %i.aav = tail call float @sqrtf(float noundef %i.aau) #11
  %i.aaw = fmul float %i.aav, %i.aat              ; 2 uses
  %i.aax = fcmp olt float %i.aao, 0.000000e+00
  %i.aay = fsub float f0x40490FDA, %i.aaw
  %i.aaz = select i1 %i.aax, float %i.aay, float %i.aaw
  %i.aba = extractelement <2 x float> %i.aal, i64 1
  %i.abb = select i1 %i.aai, float 0.000000e+00, float %i.aba
  %i.abc = fmul float %i.abb, %i.aaz              ; 2 uses
  %i.abd = fmul float %i.zz, %i.abc
  %.0.i = select i1 %i.vy, float %i.abd, float %i.abc ; 2 uses
  %i.abe = load <2 x float>, ptr %i.wl, align 4, !tbaa !52
  %i.abf = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.abg = shufflevector <2 x float> %i.abf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yr, <2 x float> %i.abg, <2 x float> %i.abe)
  store <2 x float> %i.abh, ptr %i.wl, align 4, !tbaa !52
  %i.abi = getelementptr inbounds nuw i8, ptr %i.wl, i64 8 ; 2 uses
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !52
  %i.abk = tail call float @llvm.fmuladd.f32(float %i.ys, float %.0.i, float %i.abj)
  store float %i.abk, ptr %i.abi, align 4, !tbaa !52
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i188, label %.loopexit.i189, label %bb.ap, !llvm.loop !43

.loopexit.i189:                                   ; preds = %bb.as, %bb.ao
  %i.abl = add nuw nsw i64 %.0152163.i, 1         ; 2 uses
  %exitcond166.not.i = icmp eq i64 %i.abl, %i.a
  br i1 %exitcond166.not.i, label %.lr.ph226, label %bb.ao, !llvm.loop !44

.lr.ph223:                                        ; preds = %_ZN7meshoptL7follow2EPjj.exit.1, %.lr.ph223.preheader.new
  %.0130222 = phi i64 [ 0, %.lr.ph223.preheader.new ], [ %i.ach, %_ZN7meshoptL7follow2EPjj.exit.1 ] ; 5 uses
  %niter378 = phi i64 [ 0, %.lr.ph223.preheader.new ], [ %niter378.next.1, %_ZN7meshoptL7follow2EPjj.exit.1 ]
  %i.abm = trunc i64 %.0130222 to i32             ; 2 uses
  %i.abn = and i64 %.0130222, 4294967294
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.abn ; 2 uses
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !50 ; 2 uses
  %.not11.i = icmp eq i32 %i.abp, %i.abm
  br i1 %.not11.i, label %_ZN7meshoptL7follow2EPjj.exit, label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %.lr.ph223, %.lr.ph.i191
  %i.abq = phi i32 [ %i.abu, %.lr.ph.i191 ], [ %i.abp, %.lr.ph223 ] ; 3 uses
  %i.abr = phi ptr [ %i.abt, %.lr.ph.i191 ], [ %i.abo, %.lr.ph223 ]
  %i.abs = zext i32 %i.abq to i64
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.abs ; 2 uses
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !50 ; 3 uses
  store i32 %i.abu, ptr %i.abr, align 4, !tbaa !50
  %.not.i192 = icmp eq i32 %i.abq, %i.abu
  br i1 %.not.i192, label %_ZN7meshoptL7follow2EPjj.exit, label %.lr.ph.i191, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit:                    ; preds = %.lr.ph.i191, %.lr.ph223
  %.0.lcssa.i = phi i32 [ %i.abm, %.lr.ph223 ], [ %i.abq, %.lr.ph.i191 ]
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0130222
  store i32 %.0.lcssa.i, ptr %i.abv, align 4, !tbaa !50
  %i.abw = or disjoint i64 %.0130222, 1           ; 3 uses
  %i.abx = trunc i64 %i.abw to i32                ; 2 uses
  %i.aby = and i64 %i.abw, 4294967295
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.aby ; 2 uses
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !50 ; 2 uses
  %.not11.i.1 = icmp eq i32 %i.aca, %i.abx
  br i1 %.not11.i.1, label %_ZN7meshoptL7follow2EPjj.exit.1, label %.lr.ph.i191.1

.lr.ph.i191.1:                                    ; preds = %_ZN7meshoptL7follow2EPjj.exit, %.lr.ph.i191.1
  %i.acb = phi i32 [ %i.acf, %.lr.ph.i191.1 ], [ %i.aca, %_ZN7meshoptL7follow2EPjj.exit ] ; 3 uses
  %i.acc = phi ptr [ %i.ace, %.lr.ph.i191.1 ], [ %i.abz, %_ZN7meshoptL7follow2EPjj.exit ]
  %i.acd = zext i32 %i.acb to i64
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.acd ; 2 uses
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !50 ; 3 uses
  store i32 %i.acf, ptr %i.acc, align 4, !tbaa !50
  %.not.i192.1 = icmp eq i32 %i.acb, %i.acf
  br i1 %.not.i192.1, label %_ZN7meshoptL7follow2EPjj.exit.1, label %.lr.ph.i191.1, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit.1:                  ; preds = %.lr.ph.i191.1, %_ZN7meshoptL7follow2EPjj.exit
  %.0.lcssa.i.1 = phi i32 [ %i.abx, %_ZN7meshoptL7follow2EPjj.exit ], [ %i.acb, %.lr.ph.i191.1 ]
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.abw
  store i32 %.0.lcssa.i.1, ptr %i.acg, align 4, !tbaa !50
  %i.ach = add nuw i64 %.0130222, 2               ; 2 uses
  %niter378.next.1 = add nuw i64 %niter378, 2     ; 2 uses
  %niter378.ncmp.1 = icmp eq i64 %niter378.next.1, %unroll_iter377
  br i1 %niter378.ncmp.1, label %._crit_edge224.unr-lcssa, label %.lr.ph223, !llvm.loop !45

.lr.ph228:                                        ; preds = %_ZN7meshoptL7follow2EPjj.exit199, %._crit_edge224
  %i.aci = and i32 %10, 2
  %i.acj = icmp eq i32 %i.aci, 0
  br label %bb.at

.lr.ph226:                                        ; preds = %.loopexit.i189, %_ZN7meshoptL7follow2EPjj.exit199
  %.0129225 = phi i64 [ %i.adb, %_ZN7meshoptL7follow2EPjj.exit199 ], [ 0, %.loopexit.i189 ] ; 5 uses
  %i.ack = trunc i64 %.0129225 to i32
  %i.acl = and i64 %.0129225, 4294967295
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.acl ; 2 uses
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !50 ; 2 uses
  %.not11.i194 = icmp eq i32 %i.acn, %i.ack
  br i1 %.not11.i194, label %.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge, label %.lr.ph.i195

.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge: ; preds = %.lr.ph226
  %.pre = and i64 %.0129225, 4294967295
  br label %_ZN7meshoptL7follow2EPjj.exit199

.lr.ph.i195:                                      ; preds = %.lr.ph226, %.lr.ph.i195
  %i.aco = phi i32 [ %i.acs, %.lr.ph.i195 ], [ %i.acn, %.lr.ph226 ] ; 2 uses
  %i.acp = phi ptr [ %i.acr, %.lr.ph.i195 ], [ %i.acm, %.lr.ph226 ]
  %i.acq = zext i32 %i.aco to i64                 ; 2 uses
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %i.acq ; 2 uses
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !50 ; 3 uses
  store i32 %i.acs, ptr %i.acp, align 4, !tbaa !50
  %.not.i196 = icmp eq i32 %i.aco, %i.acs
  br i1 %.not.i196, label %_ZN7meshoptL7follow2EPjj.exit199, label %.lr.ph.i195, !llvm.loop !40

_ZN7meshoptL7follow2EPjj.exit199:                 ; preds = %.lr.ph.i195, %.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.lr.ph226._ZN7meshoptL7follow2EPjj.exit199_crit_edge ], [ %i.acq, %.lr.ph.i195 ]
  %i.act = getelementptr inbounds nuw i8, ptr %i.of, i64 %.pre-phi
  %i.acu = load i8, ptr %i.act, align 1, !tbaa !58
  %i.acv = and i8 %i.acu, 1
  %.not148 = icmp eq i8 %i.acv, 0
  %i.acw = select i1 %.not148, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %.idx149 = mul i64 %.0129225, 48
  %i.acx = getelementptr i8, ptr %0, i64 %.idx149 ; 3 uses
  %i.acy = getelementptr i8, ptr %i.acx, i64 44
  store float %i.acw, ptr %i.acy, align 4, !tbaa !52
  %i.acz = getelementptr i8, ptr %i.acx, i64 28
  store float %i.acw, ptr %i.acz, align 4, !tbaa !52
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acx, i64 12
  store float %i.acw, ptr %i.ada, align 4, !tbaa !52
  %i.adb = add nuw nsw i64 %.0129225, 1           ; 2 uses
  %exitcond250.not = icmp eq i64 %i.adb, %i.a
  br i1 %exitcond250.not, label %.lr.ph228, label %.lr.ph226, !llvm.loop !46

bb.at:                                            ; preds = %.lr.ph228, %bb.aw
  %.0128227 = phi i64 [ 0, %.lr.ph228 ], [ %i.adx, %bb.aw ] ; 4 uses
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0128227
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !50
  %i.ade = zext i32 %i.add to i64
  %i.adf = icmp eq i64 %.0128227, %i.ade
  br i1 %i.adf, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %.idx147 = shl nuw nsw i64 %.0128227, 4
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx147 ; 4 uses
  %i.adh = load float, ptr %i.adg, align 4, !tbaa !52 ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adg, i64 4 ; 2 uses
  %i.adj = load <2 x float>, ptr %i.adi, align 4, !tbaa !52 ; 4 uses
  %foldExtExtBinop347 = fmul <2 x float> %i.adj, %i.adj
  %i.adk = extractelement <2 x float> %foldExtExtBinop347, i64 0
  %i.adl = tail call float @llvm.fmuladd.f32(float %i.adh, float %i.adh, float %i.adk)
  %i.adm = extractelement <2 x float> %i.adj, i64 1 ; 2 uses
  %i.adn = tail call float @llvm.fmuladd.f32(float %i.adm, float %i.adm, float %i.adl) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.adn)
  %i.ado = fcmp oeq float %i.adn, 0.000000e+00
  %i.adp = fdiv float 1.000000e+00, %sqrt
  %i.adq = select i1 %i.ado, float 0.000000e+00, float %i.adp ; 3 uses
  %i.adr = fmul float %i.adh, %i.adq              ; 2 uses
  store float %i.adr, ptr %i.adg, align 4, !tbaa !52
  %i.ads = insertelement <2 x float> poison, float %i.adq, i64 0
  %i.adt = shufflevector <2 x float> %i.ads, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adu = fmul <2 x float> %i.adj, %i.adt
  store <2 x float> %i.adu, ptr %i.adi, align 4, !tbaa !52
  br i1 %i.acj, label %bb.av, label %bb.aw
end_hunk_0
