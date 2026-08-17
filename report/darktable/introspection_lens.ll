inline.NumInlined: 229
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 39
begin_hunk_0_@process:bb.a

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %.sink353.i = phi float [ %i.vx, %bb.ax ], [ 0.000000e+00, %bb.aw ], [ 0.000000e+00, %bb.av ]
  %i.vy = getelementptr inbounds nuw i8, ptr %.0229265.i, i64 8
  store float %.sink353.i, ptr %i.vy, align 4, !tbaa !24
  br i1 %.not240.i, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.vz = load i32, ptr %i.sc, align 4, !tbaa !189
  %.not241.i = icmp eq i32 %i.vz, 0
  %.phi.trans.insert327.i = getelementptr inbounds nuw i8, ptr %.0230264.i, i64 8
  %.pre328.i = load float, ptr %.phi.trans.insert327.i, align 4, !tbaa !24 ; 2 uses
  br i1 %.not241.i, label %._crit_edge326.i, label %bb.ba

._crit_edge326.i:                                 ; preds = %bb.az
  %.phi.trans.insert329.i = getelementptr inbounds nuw i8, ptr %.0230264.i, i64 12
  %.pre330.i = load float, ptr %.phi.trans.insert329.i, align 4, !tbaa !24
  br label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.wa = call float @llvm.fabs.f32(float %.pre328.i)
  %i.wb = fcmp ueq float %i.wa, +inf
  br i1 %i.wb, label %.sink.split355.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.wc = getelementptr inbounds nuw i8, ptr %.0230264.i, i64 12
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !24 ; 2 uses
  %i.we = call float @llvm.fabs.f32(float %i.wd)
  %i.wf = fcmp ueq float %i.we, +inf
  br i1 %i.wf, label %.sink.split355.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge326.i
  %i.wg = phi float [ %.pre330.i, %._crit_edge326.i ], [ %i.wd, %bb.bb ]
  %i.wh = load <4 x i32>, ptr %4, align 4, !tbaa !38 ; 3 uses
  %i.wi = sitofp <4 x i32> %i.wh to <4 x float>   ; 2 uses
  %i.wj = shufflevector <4 x float> %i.wi, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.wk = fadd reassoc nsz arcp contract afn <2 x float> %i.wj, splat (float -1.000000e+00)
  %i.wl = insertelement <2 x float> poison, float %.pre328.i, i64 0
  %i.wm = insertelement <2 x float> %i.wl, float %i.wg, i64 1
  %i.wn = shufflevector <4 x float> %i.wi, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.wo = fsub reassoc nsz arcp contract afn <2 x float> %i.wm, %i.wn
  %i.wp = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.wo, <2 x float> %i.wk)
  %i.wq = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.wp, <2 x float> zeroinitializer) ; 2 uses
  %i.wr = extractelement <4 x i32> %i.wh, i64 2
  %i.ws = extractelement <4 x i32> %i.wh, i64 3
  %i.wt = extractelement <2 x float> %i.wq, i64 0
  %i.wu = extractelement <2 x float> %i.wq, i64 1
  %i.wv = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.jt, ptr noundef nonnull %i.se, float noundef %i.wt, float noundef %i.wu, i32 noundef %i.wr, i32 noundef %i.ws, i32 noundef %i.hw, i32 noundef %i.hz)
  br label %.sink.split355.i

.sink.split355.i:                                 ; preds = %bb.bc, %bb.bb, %bb.ba
  %.sink356.i = phi float [ %i.wv, %bb.bc ], [ 0.000000e+00, %bb.bb ], [ 0.000000e+00, %bb.ba ]
  %i.ww = getelementptr inbounds nuw i8, ptr %.0229265.i, i64 12
  store float %.sink356.i, ptr %i.ww, align 4, !tbaa !24
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split355.i, %bb.ay
  %i.wx = add nuw nsw i32 %.0228266.i, 1          ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.0230264.i, i64 24
  %i.wz = getelementptr inbounds [4 x i8], ptr %.0229265.i, i64 %i.qr
  %i.xa = load i32, ptr %i.rr, align 4, !tbaa !162 ; 2 uses
  %i.xb = icmp slt i32 %i.wx, %i.xa
  br i1 %i.xb, label %.preheader.i55, label %._crit_edge267.i, !llvm.loop !195

bb.be:                                            ; preds = %.loopexit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %i.qv, i64 %i.qu, i1 false)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge271.i
  call void @free(ptr noundef %i.qv) #30
  br label %.loopexit250.i

.loopexit250.i:                                   ; preds = %bb.ak, %bb.bf, %.preheader249.i, %bb.aj
  call void @_ZN10lfModifierD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.jr) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef 96) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit

bb.bg:                                            ; preds = %_ZL20_preprocess_vignetteP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_ti.exit
  %i.xc = load ptr, ptr %i.b, align 16, !tbaa !81 ; 8 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 104 ; 6 uses
  %i.xe = load i32, ptr %i.xd, align 8, !tbaa !196
  %.not.i56 = icmp eq i32 %i.xe, 0
  br i1 %.not.i56, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xc, i64 4 ; 2 uses
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !197
  %i.xh = icmp eq i32 %i.xg, 0
  br i1 %i.xh, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %.0, i64 noundef 4, ptr noundef %4, ptr noundef %5)
  br label %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit

bb.bj:                                            ; preds = %bb.bh
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xc, i64 96
  %i.xj = load float, ptr %i.xi, align 8, !tbaa !198
  %i.xk = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xj ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !169
  %i.xn = fmul reassoc nsz arcp contract afn float %i.xm, 5.000000e-01
  %i.xo = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.xp = load <2 x i32>, ptr %i.xo, align 16, !tbaa !38
  %i.xq = sitofp <2 x i32> %i.xp to <2 x float>
  %i.xr = insertelement <2 x float> poison, float %i.xn, i64 0
  %i.xs = shufflevector <2 x float> %i.xr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xt = fmul reassoc nsz arcp contract afn <2 x float> %i.xs, %i.xq ; 3 uses
  %i.xu = extractelement <2 x float> %i.xt, i64 0 ; 7 uses
  %i.xv = extractelement <2 x float> %i.xt, i64 1 ; 7 uses
  %i.xw = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.xu, float noundef %i.xv) #32
  %i.xx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xw ; 3 uses
  %i.xy = tail call ptr @dt_interpolation_new(i32 noundef 3) ; 4 uses
  %i.xz = load ptr, ptr %i.u, align 8, !tbaa !124
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 628
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !161
  %i.yc = icmp eq i32 %i.yb, 128                  ; 3 uses
  br i1 %i.v, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.yd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !162
  %i.yf = sext i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !163
  %i.yi = sext i32 %i.yh to i64
  %i.yj = mul nsw i64 %i.yi, %i.yf                ; 2 uses
  %i.yk = shl i64 %i.yj, 2
  %i.yl = shl i64 %i.yj, 4
  %i.ym = tail call noundef ptr @dt_alloc_aligned(i64 noundef %i.yl) ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ym, i64 64) ]
  tail call void @dt_iop_image_copy(ptr noundef %i.ym, ptr noundef %.0, i64 noundef %i.yk)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0.i = phi ptr [ %.0, %bb.bj ], [ %i.ym, %bb.bk ] ; 7 uses
  br i1 %i.yc, label %.loopexit.i57, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.yn = load i32, ptr %i.xf, align 4, !tbaa !197
  %i.yo = and i32 %i.yn, 2
  %.not140.i = icmp eq i32 %i.yo, 0
  br i1 %.not140.i, label %.loopexit.i57, label %.preheader3.i

.preheader3.i:                                    ; preds = %bb.bm
  %i.yp = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !163 ; 2 uses
  %i.yr = icmp sgt i32 %i.yq, 0
  br i1 %i.yr, label %.preheader2.lr.ph.i, label %.loopexit.i57

.preheader2.lr.ph.i:                              ; preds = %.preheader3.i
  %i.ys = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !162 ; 2 uses
  %i.yu = icmp sgt i32 %i.yt, 0
  %i.yv = getelementptr inbounds nuw i8, ptr %i.xc, i64 172 ; 4 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.xc, i64 428 ; 5 uses
  br i1 %i.yu, label %.preheader2.lr.ph.split.i, label %.loopexit.i57

.preheader2.lr.ph.split.i:                        ; preds = %.preheader2.lr.ph.i
  %i.yx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.yy = load i32, ptr %4, align 4, !tbaa !170   ; 2 uses
  %i.yz = load i32, ptr %i.yx, align 4, !tbaa !171 ; 2 uses
  %i.za = load i32, ptr %i.xd, align 8, !tbaa !196
  %.fr26.i = freeze i32 %i.za                     ; 3 uses
  %i.zb = icmp sgt i32 %.fr26.i, 1
  %wide.trip.count.i.i = zext nneg i32 %.fr26.i to i64
  %i.zc = sext i32 %.fr26.i to i64
  %i.zd = getelementptr [4 x i8], ptr %i.yw, i64 %i.zc
  %i.ze = getelementptr i8, ptr %i.zd, i64 -4     ; 2 uses
  %i.zf = zext nneg i32 %i.yt to i64              ; 4 uses
  %wide.trip.count55.i = zext nneg i32 %i.yq to i64 ; 2 uses
  br i1 %i.zb, label %.preheader2.us.i, label %.preheader2.i

.preheader2.us.i:                                 ; preds = %.preheader2.lr.ph.split.i, %._crit_edge.split.us.us.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %._crit_edge.split.us.us.i ], [ 0, %.preheader2.lr.ph.split.i ] ; 3 uses
  %i.zg = mul nuw nsw i64 %indvars.iv52.i, %i.zf
  %i.zh = trunc i64 %indvars.iv52.i to i32
  %i.zi = add i32 %i.yz, %i.zh
  %i.zj = sitofp reassoc nsz arcp contract afn i32 %i.zi to float
  %i.zk = fsub reassoc nsz arcp contract afn float %i.zj, %i.xv
  br label %bb.bn

bb.bn:                                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i, %.preheader2.us.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i ], [ 0, %.preheader2.us.i ] ; 3 uses
  %i.zl = add nuw nsw i64 %indvars.iv47.i, %i.zg
  %i.zm = shl i64 %i.zl, 2
  %i.zn = and i64 %i.zm, 4294967292
  %i.zo = trunc i64 %indvars.iv47.i to i32
  %i.zp = add i32 %i.yy, %i.zo
  %i.zq = sitofp reassoc nsz arcp contract afn i32 %i.zp to float
  %i.zr = fsub reassoc nsz arcp contract afn float %i.zq, %i.xu
  %i.zs = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.zr, float noundef %i.zk) #32
  %i.zt = fmul reassoc nsz arcp contract afn float %i.zs, %i.xx ; 4 uses
  %i.zu = load float, ptr %i.yv, align 4, !tbaa !24
  %i.zv = fcmp reassoc nsz arcp contract afn olt float %i.zt, %i.zu
  br i1 %i.zv, label %bb.br, label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %bb.bn, %bb.bp
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %bb.bp ], [ 1, %bb.bn ] ; 4 uses
  %i.zw = add nsw i64 %indvars.iv.i.us.us.i, -1   ; 2 uses
  %i.zx = getelementptr inbounds [4 x i8], ptr %i.yv, i64 %i.zw
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !24 ; 3 uses
  %i.zz = fcmp reassoc nsz arcp contract afn ult float %i.zt, %i.zy
  br i1 %i.zz, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.us.us.i
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %indvars.iv.i.us.us.i
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !24 ; 2 uses
  %i.aac = fcmp reassoc nsz arcp contract afn ugt float %i.zt, %i.aab
  br i1 %i.aac, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo, %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.us.i, label %._crit_edge.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !199

bb.bq:                                            ; preds = %bb.bo
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %indvars.iv.i.us.us.i
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !24
  %i.aaf = getelementptr inbounds [4 x i8], ptr %i.yw, i64 %i.zw
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !24 ; 2 uses
  %i.aah = fsub reassoc nsz arcp contract afn float %i.aae, %i.aag
  %i.aai = fsub reassoc nsz arcp contract afn float %i.aab, %i.zy
  %i.aaj = fsub reassoc nsz arcp contract afn float %i.zt, %i.zy
  %i.aak = fmul reassoc nsz arcp contract afn float %i.aah, %i.aaj
  %i.aal = fdiv reassoc nsz arcp contract afn float %i.aak, %i.aai
  %i.aam = fadd reassoc nsz arcp contract afn float %i.aal, %i.aag
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i

bb.br:                                            ; preds = %bb.bn
  %i.aan = load float, ptr %i.yw, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i: ; preds = %._crit_edge.i.loopexit.us.us.i, %bb.br, %bb.bq
  %.1.i.us.us.i = phi nsz float [ %i.aan, %bb.br ], [ %i.aax, %._crit_edge.i.loopexit.us.us.i ], [ %i.aam, %bb.bq ]
  %i.aao = fpext reassoc nsz arcp contract afn float %.1.i.us.us.i to double ; 2 uses
  %i.aap = fcmp reassoc nsz arcp contract afn olt double %i.aao, 1.000000e-04
  %i.aaq = select reassoc nsz arcp contract afn i1 %i.aap, double 1.000000e-04, double %i.aao
  %invariant.gep.us.us.i = getelementptr [4 x i8], ptr %.0.i, i64 %i.zn ; 2 uses
  %i.aar = load <4 x float>, ptr %invariant.gep.us.us.i, align 4, !tbaa !24
  %i.aas = fpext <4 x float> %i.aar to <4 x double>
  %i.aat = insertelement <4 x double> poison, double %i.aaq, i64 0
  %i.aau = shufflevector <4 x double> %i.aat, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aav = fdiv reassoc nsz arcp contract afn <4 x double> %i.aas, %i.aau
  %i.aaw = fptrunc <4 x double> %i.aav to <4 x float>
  store <4 x float> %i.aaw, ptr %invariant.gep.us.us.i, align 4, !tbaa !24
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1 ; 2 uses
  %exitcond51.not.i = icmp eq i64 %indvars.iv.next48.i, %i.zf
  br i1 %exitcond51.not.i, label %._crit_edge.split.us.us.i, label %bb.bn, !llvm.loop !200

._crit_edge.i.loopexit.us.us.i:                   ; preds = %bb.bp
  %i.aax = load float, ptr %i.ze, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i

._crit_edge.split.us.us.i:                        ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %.loopexit.i57, label %.preheader2.us.i, !llvm.loop !201

.preheader2.i:                                    ; preds = %.preheader2.lr.ph.split.i, %._crit_edge.split.i
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %._crit_edge.split.i ], [ 0, %.preheader2.lr.ph.split.i ] ; 3 uses
  %i.aay = mul nuw nsw i64 %indvars.iv41.i, %i.zf
  %i.aaz = trunc i64 %indvars.iv41.i to i32
  %i.aba = add i32 %i.yz, %i.aaz
  %i.abb = sitofp reassoc nsz arcp contract afn i32 %i.aba to float
  %i.abc = fsub reassoc nsz arcp contract afn float %i.abb, %i.xv
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

._crit_edge.split.i:                              ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count55.i
  br i1 %exitcond45.not.i, label %.loopexit.i57, label %.preheader2.i, !llvm.loop !201

_ZL26_interpolate_linear_splinePKfS0_if.exit.i:   ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i, %.preheader2.i
  %indvars.iv.i64 = phi i64 [ 0, %.preheader2.i ], [ %indvars.iv.next.i65, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i ] ; 3 uses
  %i.abd = add nuw nsw i64 %indvars.iv.i64, %i.aay
  %i.abe = shl i64 %i.abd, 2
  %i.abf = and i64 %i.abe, 4294967292
  %i.abg = trunc i64 %indvars.iv.i64 to i32
  %i.abh = add i32 %i.yy, %i.abg
  %i.abi = sitofp reassoc nsz arcp contract afn i32 %i.abh to float
  %i.abj = fsub reassoc nsz arcp contract afn float %i.abi, %i.xu
  %i.abk = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.abj, float noundef %i.abc) #32
  %i.abl = fmul reassoc nsz arcp contract afn float %i.abk, %i.xx
  %i.abm = load float, ptr %i.yv, align 4, !tbaa !24
  %i.abn = fcmp reassoc nsz arcp contract afn olt float %i.abl, %i.abm
  %.1.i.in.i = select i1 %i.abn, ptr %i.yw, ptr %i.ze
  %.1.i.i = load float, ptr %.1.i.in.i, align 4, !tbaa !24
  %i.abo = fpext reassoc nsz arcp contract afn float %.1.i.i to double ; 2 uses
  %i.abp = fcmp reassoc nsz arcp contract afn olt double %i.abo, 1.000000e-04
  %i.abq = select reassoc nsz arcp contract afn i1 %i.abp, double 1.000000e-04, double %i.abo
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0.i, i64 %i.abf ; 2 uses
  %i.abr = load <4 x float>, ptr %invariant.gep.i, align 4, !tbaa !24
  %i.abs = fpext <4 x float> %i.abr to <4 x double>
  %i.abt = insertelement <4 x double> poison, double %i.abq, i64 0
  %i.abu = shufflevector <4 x double> %i.abt, <4 x double> poison, <4 x i32> zeroinitializer
  %i.abv = fdiv reassoc nsz arcp contract afn <4 x double> %i.abs, %i.abu
  %i.abw = fptrunc <4 x double> %i.abv to <4 x float>
  store <4 x float> %i.abw, ptr %invariant.gep.i, align 4, !tbaa !24
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %exitcond.not.i66 = icmp eq i64 %indvars.iv.next.i65, %i.zf
  br i1 %exitcond.not.i66, label %._crit_edge.split.i, label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i, !llvm.loop !200

.loopexit.i57:                                    ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %.preheader2.lr.ph.i, %.preheader3.i, %bb.bm, %bb.bl
  %i.abx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !162
  %i.abz = add nsw i32 %i.aby, -1
  %i.aca = sitofp reassoc nsz arcp contract afn i32 %i.abz to float ; 8 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 5 uses
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !163
  %i.acd = add nsw i32 %i.acc, -1
  %i.ace = sitofp reassoc nsz arcp contract afn i32 %i.acd to float ; 8 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !163 ; 2 uses
  %i.ach = icmp sgt i32 %i.acg, 0
  br i1 %i.ach, label %.preheader.lr.ph.i58, label %._crit_edge25.i

.preheader.lr.ph.i58:                             ; preds = %.loopexit.i57
  %i.aci = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.xc, i64 108 ; 12 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.acl = load i32, ptr %i.aci, align 4, !tbaa !162 ; 2 uses
  %i.acm = icmp sgt i32 %i.acl, 0
  br i1 %i.acm, label %.preheader.preheader.i59, label %._crit_edge25.i

.preheader.preheader.i59:                         ; preds = %.preheader.lr.ph.i58
  %i.acn = getelementptr inbounds nuw i8, ptr %i.xc, i64 236 ; 2 uses
  %i.aco = zext i1 %i.yc to i64
  %i.acp = getelementptr inbounds nuw [64 x i8], ptr %i.acn, i64 %i.aco ; 4 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.xc, i64 300 ; 8 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.acs = select i1 %i.yc, i64 1, i64 2
  %i.act = getelementptr inbounds nuw [64 x i8], ptr %i.acn, i64 %i.acs ; 4 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.acv = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  br label %.preheader.i60

.preheader.i60:                                   ; preds = %._crit_edge.i61, %.preheader.preheader.i59
  %i.acw = phi i32 [ %i.ada, %._crit_edge.i61 ], [ %i.acg, %.preheader.preheader.i59 ]
  %i.acx = phi i32 [ %i.adb, %._crit_edge.i61 ], [ %i.acl, %.preheader.preheader.i59 ] ; 3 uses
  %.013124.i = phi i32 [ %i.adc, %._crit_edge.i61 ], [ 0, %.preheader.preheader.i59 ] ; 3 uses
  %i.acy = icmp sgt i32 %i.acx, 0
  br i1 %i.acy, label %.lr.ph.i62.preheader, label %._crit_edge.i61

.lr.ph.i62.preheader:                             ; preds = %.preheader.i60
  %i.acz = insertelement <2 x i32> poison, i32 %.013124.i, i64 1
  br label %.lr.ph.i62

._crit_edge25.i:                                  ; preds = %._crit_edge.i61, %.preheader.lr.ph.i58, %.loopexit.i57
  br i1 %i.v, label %bb.dg, label %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit

._crit_edge.loopexit.i:                           ; preds = %bb.df
  %.pre.i63 = load i32, ptr %i.acf, align 4, !tbaa !163
  br label %._crit_edge.i61

._crit_edge.i61:                                  ; preds = %._crit_edge.loopexit.i, %.preheader.i60
  %i.ada = phi i32 [ %.pre.i63, %._crit_edge.loopexit.i ], [ %i.acw, %.preheader.i60 ] ; 2 uses
  %i.adb = phi i32 [ %i.akx, %._crit_edge.loopexit.i ], [ %i.acx, %.preheader.i60 ]
  %i.adc = add nuw nsw i32 %.013124.i, 1          ; 2 uses
  %i.add = icmp slt i32 %i.adc, %i.ada
  br i1 %i.add, label %.preheader.i60, label %._crit_edge25.i, !llvm.loop !202

.lr.ph.i62:                                       ; preds = %.lr.ph.i62.preheader, %bb.df
  %i.ade = phi i32 [ %i.akx, %bb.df ], [ %i.acx, %.lr.ph.i62.preheader ]
  %.013223.i = phi i32 [ %i.akw, %bb.df ], [ 0, %.lr.ph.i62.preheader ] ; 3 uses
  %i.adf = mul nsw i32 %i.ade, %.013124.i
  %i.adg = add nsw i32 %i.adf, %.013223.i
  %i.adh = shl nsw i32 %i.adg, 2
  %i.adi = sext i32 %i.adh to i64
  %i.adj = load <2 x i32>, ptr %5, align 4, !tbaa !38
  %i.adk = insertelement <2 x i32> %i.acz, i32 %.013223.i, i64 0
  %i.adl = add nsw <2 x i32> %i.adj, %i.adk
  %i.adm = sitofp <2 x i32> %i.adl to <2 x float>
  %i.adn = fsub reassoc nsz arcp contract afn <2 x float> %i.adm, %i.xt ; 2 uses
  %i.ado = extractelement <2 x float> %i.adn, i64 0
  %i.adp = fmul reassoc nsz arcp contract afn float %i.ado, %i.xk ; 5 uses
  %i.adq = extractelement <2 x float> %i.adn, i64 1
  %i.adr = fmul reassoc nsz arcp contract afn float %i.adq, %i.xk ; 5 uses
  %i.ads = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.adp, float noundef %i.adr) #32
  %i.adt = fmul reassoc nsz arcp contract afn float %i.ads, %i.xx ; 16 uses
  %invariant.gep20.i = getelementptr [4 x i8], ptr %3, i64 %i.adi ; 4 uses
  %i.adu = load i32, ptr %i.xd, align 8, !tbaa !196 ; 3 uses
  %i.adv = load float, ptr %i.acj, align 4, !tbaa !24
  %i.adw = fcmp reassoc nsz arcp contract afn olt float %i.adt, %i.adv
  br i1 %i.adw, label %bb.bs, label %.preheader.i141.i

.preheader.i141.i:                                ; preds = %.lr.ph.i62
  %i.adx = icmp sgt i32 %i.adu, 1
  br i1 %i.adx, label %.lr.ph.preheader.i144.i, label %._crit_edge.i142.i

.lr.ph.preheader.i144.i:                          ; preds = %.preheader.i141.i
  %wide.trip.count.i145.i = zext nneg i32 %i.adu to i64
  br label %.lr.ph.i146.i

bb.bs:                                            ; preds = %.lr.ph.i62
  %i.ady = load float, ptr %i.acp, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.i

.lr.ph.i146.i:                                    ; preds = %bb.bu, %.lr.ph.preheader.i144.i
  %indvars.iv.i147.i = phi i64 [ 1, %.lr.ph.preheader.i144.i ], [ %indvars.iv.next.i148.i, %bb.bu ] ; 4 uses
  %i.adz = add nsw i64 %indvars.iv.i147.i, -1     ; 2 uses
  %i.aea = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.adz
  %i.aeb = load float, ptr %i.aea, align 4, !tbaa !24 ; 3 uses
  %i.aec = fcmp reassoc nsz arcp contract afn ult float %i.adt, %i.aeb
  br i1 %i.aec, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i146.i
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv.i147.i
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !24 ; 2 uses
  %i.aef = fcmp reassoc nsz arcp contract afn ugt float %i.adt, %i.aee
  br i1 %i.aef, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %.lr.ph.i146.i
  %indvars.iv.next.i148.i = add nuw nsw i64 %indvars.iv.i147.i, 1 ; 2 uses
  %exitcond.not.i149.i = icmp eq i64 %indvars.iv.next.i148.i, %wide.trip.count.i145.i
  br i1 %exitcond.not.i149.i, label %._crit_edge.i142.i, label %.lr.ph.i146.i, !llvm.loop !199

bb.bv:                                            ; preds = %bb.bt
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.acp, i64 %indvars.iv.i147.i
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !24
  %i.aei = getelementptr inbounds [4 x i8], ptr %i.acp, i64 %i.adz
  %i.aej = load float, ptr %i.aei, align 4, !tbaa !24 ; 2 uses
  %i.aek = fsub reassoc nsz arcp contract afn float %i.aeh, %i.aej
  %i.ael = fsub reassoc nsz arcp contract afn float %i.aee, %i.aeb
  %i.aem = fsub reassoc nsz arcp contract afn float %i.adt, %i.aeb
  %i.aen = fmul reassoc nsz arcp contract afn float %i.aek, %i.aem
  %i.aeo = fdiv reassoc nsz arcp contract afn float %i.aen, %i.ael
  %i.aep = fadd reassoc nsz arcp contract afn float %i.aeo, %i.aej
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.i

._crit_edge.i142.i:                               ; preds = %bb.bu, %.preheader.i141.i
  %i.aeq = sext i32 %i.adu to i64
  %i.aer = getelementptr [4 x i8], ptr %i.acp, i64 %i.aeq
  %i.aes = getelementptr i8, ptr %i.aer, i64 -4
  %i.aet = load float, ptr %i.aes, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.i

_ZL26_interpolate_linear_splinePKfS0_if.exit150.i: ; preds = %._crit_edge.i142.i, %bb.bv, %bb.bs
  %.1.i143.i = phi nsz float [ %i.ady, %bb.bs ], [ %i.aet, %._crit_edge.i142.i ], [ %i.aep, %bb.bv ] ; 2 uses
  %i.aeu = fmul reassoc nsz arcp contract afn float %.1.i143.i, %i.adp
  %i.aev = fadd reassoc nsz arcp contract afn float %i.aeu, %i.xu
  %i.aew = load i32, ptr %4, align 4, !tbaa !170
  %i.aex = sitofp reassoc nsz arcp contract afn i32 %i.aew to float
  %i.aey = fsub reassoc nsz arcp contract afn float %i.aev, %i.aex ; 3 uses
  %i.aez = fcmp reassoc nsz arcp contract afn ogt float %i.aey, %i.aca
  br i1 %i.aez, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit150.i
  %i.afa = fcmp reassoc nsz arcp contract afn olt float %i.aey, 0.000000e+00
  br i1 %i.afa, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %_ZL26_interpolate_linear_splinePKfS0_if.exit150.i
  %i.afb = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.bw ], [ %i.aey, %bb.bx ], [ %i.aca, %_ZL26_interpolate_linear_splinePKfS0_if.exit150.i ]
  %i.afc = fmul reassoc nsz arcp contract afn float %.1.i143.i, %i.adr
  %i.afd = fadd reassoc nsz arcp contract afn float %i.afc, %i.xv
  %i.afe = load i32, ptr %i.ack, align 4, !tbaa !171
  %i.aff = sitofp reassoc nsz arcp contract afn i32 %i.afe to float
  %i.afg = fsub reassoc nsz arcp contract afn float %i.afd, %i.aff ; 3 uses
  %i.afh = fcmp reassoc nsz arcp contract afn ogt float %i.afg, %i.ace
  br i1 %i.afh, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.afi = fcmp reassoc nsz arcp contract afn olt float %i.afg, 0.000000e+00
  br i1 %i.afi, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %i.afj = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.bz ], [ %i.afg, %bb.ca ], [ %i.ace, %bb.by ]
  %i.afk = load i32, ptr %i.abx, align 4, !tbaa !162 ; 2 uses
  %i.afl = load i32, ptr %i.acb, align 4, !tbaa !163
  %i.afm = shl nsw i32 %i.afk, 2
  %i.afn = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.xy, ptr noundef %.0.i, float noundef %i.afb, float noundef %i.afj, i32 noundef %i.afk, i32 noundef %i.afl, i32 noundef 4, i32 noundef %i.afm)
  store float %i.afn, ptr %invariant.gep20.i, align 4, !tbaa !24
  %i.afo = load i32, ptr %i.xd, align 8, !tbaa !196 ; 3 uses
  %i.afp = load float, ptr %i.acj, align 4, !tbaa !24
  %i.afq = fcmp reassoc nsz arcp contract afn olt float %i.adt, %i.afp
  br i1 %i.afq, label %bb.cf, label %.preheader.i141.1.i

.preheader.i141.1.i:                              ; preds = %bb.cb
  %i.afr = icmp sgt i32 %i.afo, 1
  br i1 %i.afr, label %.lr.ph.preheader.i144.1.i, label %._crit_edge.i142.1.i

.lr.ph.preheader.i144.1.i:                        ; preds = %.preheader.i141.1.i
  %wide.trip.count.i145.1.i = zext nneg i32 %i.afo to i64
  br label %.lr.ph.i146.1.i

.lr.ph.i146.1.i:                                  ; preds = %bb.ce, %.lr.ph.preheader.i144.1.i
  %indvars.iv.i147.1.i = phi i64 [ 1, %.lr.ph.preheader.i144.1.i ], [ %indvars.iv.next.i148.1.i, %bb.ce ] ; 4 uses
  %i.afs = add nsw i64 %indvars.iv.i147.1.i, -1   ; 2 uses
  %i.aft = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.afs
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !24 ; 3 uses
  %i.afv = fcmp reassoc nsz arcp contract afn ult float %i.adt, %i.afu
  br i1 %i.afv, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i146.1.i
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv.i147.1.i
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !24 ; 2 uses
  %i.afy = fcmp reassoc nsz arcp contract afn ugt float %i.adt, %i.afx
  br i1 %i.afy, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %indvars.iv.i147.1.i
  %i.aga = load float, ptr %i.afz, align 4, !tbaa !24
  %i.agb = getelementptr inbounds [4 x i8], ptr %i.acq, i64 %i.afs
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !24 ; 2 uses
  %i.agd = fsub reassoc nsz arcp contract afn float %i.aga, %i.agc
  %i.age = fsub reassoc nsz arcp contract afn float %i.afx, %i.afu
  %i.agf = fsub reassoc nsz arcp contract afn float %i.adt, %i.afu
  %i.agg = fmul reassoc nsz arcp contract afn float %i.agd, %i.agf
  %i.agh = fdiv reassoc nsz arcp contract afn float %i.agg, %i.age
  %i.agi = fadd reassoc nsz arcp contract afn float %i.agh, %i.agc
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.1.i

bb.ce:                                            ; preds = %bb.cc, %.lr.ph.i146.1.i
  %indvars.iv.next.i148.1.i = add nuw nsw i64 %indvars.iv.i147.1.i, 1 ; 2 uses
  %exitcond.not.i149.1.i = icmp eq i64 %indvars.iv.next.i148.1.i, %wide.trip.count.i145.1.i
  br i1 %exitcond.not.i149.1.i, label %._crit_edge.i142.1.i, label %.lr.ph.i146.1.i, !llvm.loop !199

._crit_edge.i142.1.i:                             ; preds = %bb.ce, %.preheader.i141.1.i
  %i.agj = sext i32 %i.afo to i64
  %i.agk = getelementptr [4 x i8], ptr %i.acq, i64 %i.agj
  %i.agl = getelementptr i8, ptr %i.agk, i64 -4
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.1.i

bb.cf:                                            ; preds = %bb.cb
  %i.agn = load float, ptr %i.acq, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.1.i

_ZL26_interpolate_linear_splinePKfS0_if.exit150.1.i: ; preds = %bb.cf, %._crit_edge.i142.1.i, %bb.cd
  %.1.i143.1.i = phi nsz float [ %i.agn, %bb.cf ], [ %i.agm, %._crit_edge.i142.1.i ], [ %i.agi, %bb.cd ] ; 2 uses
  %i.ago = fmul reassoc nsz arcp contract afn float %.1.i143.1.i, %i.adp
  %i.agp = fadd reassoc nsz arcp contract afn float %i.ago, %i.xu
  %i.agq = load i32, ptr %4, align 4, !tbaa !170
  %i.agr = sitofp reassoc nsz arcp contract afn i32 %i.agq to float
  %i.ags = fsub reassoc nsz arcp contract afn float %i.agp, %i.agr ; 3 uses
  %i.agt = fcmp reassoc nsz arcp contract afn ogt float %i.ags, %i.aca
  br i1 %i.agt, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit150.1.i
  %i.agu = fcmp reassoc nsz arcp contract afn olt float %i.ags, 0.000000e+00
  br i1 %i.agu, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %_ZL26_interpolate_linear_splinePKfS0_if.exit150.1.i
  %i.agv = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.cg ], [ %i.ags, %bb.ch ], [ %i.aca, %_ZL26_interpolate_linear_splinePKfS0_if.exit150.1.i ]
  %i.agw = fmul reassoc nsz arcp contract afn float %.1.i143.1.i, %i.adr
  %i.agx = fadd reassoc nsz arcp contract afn float %i.agw, %i.xv
  %i.agy = load i32, ptr %i.ack, align 4, !tbaa !171
  %i.agz = sitofp reassoc nsz arcp contract afn i32 %i.agy to float
  %i.aha = fsub reassoc nsz arcp contract afn float %i.agx, %i.agz ; 3 uses
  %i.ahb = fcmp reassoc nsz arcp contract afn ogt float %i.aha, %i.ace
  br i1 %i.ahb, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ahc = fcmp reassoc nsz arcp contract afn olt float %i.aha, 0.000000e+00
  br i1 %i.ahc, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.ahd = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.cj ], [ %i.aha, %bb.ck ], [ %i.ace, %bb.ci ]
  %i.ahe = load i32, ptr %i.abx, align 4, !tbaa !162 ; 2 uses
  %i.ahf = load i32, ptr %i.acb, align 4, !tbaa !163
  %i.ahg = shl nsw i32 %i.ahe, 2
  %i.ahh = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.xy, ptr noundef nonnull %i.acr, float noundef %i.agv, float noundef %i.ahd, i32 noundef %i.ahe, i32 noundef %i.ahf, i32 noundef 4, i32 noundef %i.ahg)
  %gep21.1.i = getelementptr i8, ptr %invariant.gep20.i, i64 4
  store float %i.ahh, ptr %gep21.1.i, align 4, !tbaa !24
  %i.ahi = load i32, ptr %i.xd, align 8, !tbaa !196 ; 3 uses
  %i.ahj = load float, ptr %i.acj, align 4, !tbaa !24
  %i.ahk = fcmp reassoc nsz arcp contract afn olt float %i.adt, %i.ahj
  br i1 %i.ahk, label %bb.cp, label %.preheader.i141.2.i

.preheader.i141.2.i:                              ; preds = %bb.cl
  %i.ahl = icmp sgt i32 %i.ahi, 1
  br i1 %i.ahl, label %.lr.ph.preheader.i144.2.i, label %._crit_edge.i142.2.i

.lr.ph.preheader.i144.2.i:                        ; preds = %.preheader.i141.2.i
  %wide.trip.count.i145.2.i = zext nneg i32 %i.ahi to i64
  br label %.lr.ph.i146.2.i

.lr.ph.i146.2.i:                                  ; preds = %bb.co, %.lr.ph.preheader.i144.2.i
  %indvars.iv.i147.2.i = phi i64 [ 1, %.lr.ph.preheader.i144.2.i ], [ %indvars.iv.next.i148.2.i, %bb.co ] ; 4 uses
  %i.ahm = add nsw i64 %indvars.iv.i147.2.i, -1   ; 2 uses
  %i.ahn = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.ahm
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !24 ; 3 uses
  %i.ahp = fcmp reassoc nsz arcp contract afn ult float %i.adt, %i.aho
  br i1 %i.ahp, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i146.2.i
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv.i147.2.i
  %i.ahr = load float, ptr %i.ahq, align 4, !tbaa !24 ; 2 uses
  %i.ahs = fcmp reassoc nsz arcp contract afn ugt float %i.adt, %i.ahr
  br i1 %i.ahs, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.act, i64 %indvars.iv.i147.2.i
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !24
  %i.ahv = getelementptr inbounds [4 x i8], ptr %i.act, i64 %i.ahm
  %i.ahw = load float, ptr %i.ahv, align 4, !tbaa !24 ; 2 uses
  %i.ahx = fsub reassoc nsz arcp contract afn float %i.ahu, %i.ahw
  %i.ahy = fsub reassoc nsz arcp contract afn float %i.ahr, %i.aho
  %i.ahz = fsub reassoc nsz arcp contract afn float %i.adt, %i.aho
  %i.aia = fmul reassoc nsz arcp contract afn float %i.ahx, %i.ahz
  %i.aib = fdiv reassoc nsz arcp contract afn float %i.aia, %i.ahy
  %i.aic = fadd reassoc nsz arcp contract afn float %i.aib, %i.ahw
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.2.i

bb.co:                                            ; preds = %bb.cm, %.lr.ph.i146.2.i
  %indvars.iv.next.i148.2.i = add nuw nsw i64 %indvars.iv.i147.2.i, 1 ; 2 uses
  %exitcond.not.i149.2.i = icmp eq i64 %indvars.iv.next.i148.2.i, %wide.trip.count.i145.2.i
  br i1 %exitcond.not.i149.2.i, label %._crit_edge.i142.2.i, label %.lr.ph.i146.2.i, !llvm.loop !199

._crit_edge.i142.2.i:                             ; preds = %bb.co, %.preheader.i141.2.i
  %i.aid = sext i32 %i.ahi to i64
  %i.aie = getelementptr [4 x i8], ptr %i.act, i64 %i.aid
  %i.aif = getelementptr i8, ptr %i.aie, i64 -4
  %i.aig = load float, ptr %i.aif, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.2.i

bb.cp:                                            ; preds = %bb.cl
  %i.aih = load float, ptr %i.act, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.2.i

_ZL26_interpolate_linear_splinePKfS0_if.exit150.2.i: ; preds = %bb.cp, %._crit_edge.i142.2.i, %bb.cn
  %.1.i143.2.i = phi nsz float [ %i.aih, %bb.cp ], [ %i.aig, %._crit_edge.i142.2.i ], [ %i.aic, %bb.cn ] ; 2 uses
  %i.aii = fmul reassoc nsz arcp contract afn float %.1.i143.2.i, %i.adp
  %i.aij = fadd reassoc nsz arcp contract afn float %i.aii, %i.xu
  %i.aik = load i32, ptr %4, align 4, !tbaa !170
  %i.ail = sitofp reassoc nsz arcp contract afn i32 %i.aik to float
  %i.aim = fsub reassoc nsz arcp contract afn float %i.aij, %i.ail ; 3 uses
  %i.ain = fcmp reassoc nsz arcp contract afn ogt float %i.aim, %i.aca
  br i1 %i.ain, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit150.2.i
  %i.aio = fcmp reassoc nsz arcp contract afn olt float %i.aim, 0.000000e+00
  br i1 %i.aio, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %_ZL26_interpolate_linear_splinePKfS0_if.exit150.2.i
  %i.aip = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.cq ], [ %i.aim, %bb.cr ], [ %i.aca, %_ZL26_interpolate_linear_splinePKfS0_if.exit150.2.i ]
  %i.aiq = fmul reassoc nsz arcp contract afn float %.1.i143.2.i, %i.adr
  %i.air = fadd reassoc nsz arcp contract afn float %i.aiq, %i.xv
  %i.ais = load i32, ptr %i.ack, align 4, !tbaa !171
  %i.ait = sitofp reassoc nsz arcp contract afn i32 %i.ais to float
  %i.aiu = fsub reassoc nsz arcp contract afn float %i.air, %i.ait ; 3 uses
  %i.aiv = fcmp reassoc nsz arcp contract afn ogt float %i.aiu, %i.ace
  br i1 %i.aiv, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aiw = fcmp reassoc nsz arcp contract afn olt float %i.aiu, 0.000000e+00
  br i1 %i.aiw, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cs
  %i.aix = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.ct ], [ %i.aiu, %bb.cu ], [ %i.ace, %bb.cs ]
  %i.aiy = load i32, ptr %i.abx, align 4, !tbaa !162 ; 2 uses
  %i.aiz = load i32, ptr %i.acb, align 4, !tbaa !163
  %i.aja = shl nsw i32 %i.aiy, 2
  %i.ajb = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.xy, ptr noundef nonnull %i.acu, float noundef %i.aip, float noundef %i.aix, i32 noundef %i.aiy, i32 noundef %i.aiz, i32 noundef 4, i32 noundef %i.aja)
  %gep21.2.i = getelementptr i8, ptr %invariant.gep20.i, i64 8
  store float %i.ajb, ptr %gep21.2.i, align 4, !tbaa !24
  %i.ajc = load i32, ptr %i.xd, align 8, !tbaa !196 ; 3 uses
  %i.ajd = load float, ptr %i.acj, align 4, !tbaa !24
  %i.aje = fcmp reassoc nsz arcp contract afn olt float %i.adt, %i.ajd
  br i1 %i.aje, label %bb.cz, label %.preheader.i141.3.i

.preheader.i141.3.i:                              ; preds = %bb.cv
  %i.ajf = icmp sgt i32 %i.ajc, 1
  br i1 %i.ajf, label %.lr.ph.preheader.i144.3.i, label %._crit_edge.i142.3.i

.lr.ph.preheader.i144.3.i:                        ; preds = %.preheader.i141.3.i
  %wide.trip.count.i145.3.i = zext nneg i32 %i.ajc to i64
  br label %.lr.ph.i146.3.i

.lr.ph.i146.3.i:                                  ; preds = %bb.cy, %.lr.ph.preheader.i144.3.i
  %indvars.iv.i147.3.i = phi i64 [ 1, %.lr.ph.preheader.i144.3.i ], [ %indvars.iv.next.i148.3.i, %bb.cy ] ; 4 uses
  %i.ajg = add nsw i64 %indvars.iv.i147.3.i, -1   ; 2 uses
  %i.ajh = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.ajg
  %i.aji = load float, ptr %i.ajh, align 4, !tbaa !24 ; 3 uses
  %i.ajj = fcmp reassoc nsz arcp contract afn ult float %i.adt, %i.aji
  br i1 %i.ajj, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.i146.3.i
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv.i147.3.i
  %i.ajl = load float, ptr %i.ajk, align 4, !tbaa !24 ; 2 uses
  %i.ajm = fcmp reassoc nsz arcp contract afn ugt float %i.adt, %i.ajl
  br i1 %i.ajm, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.acq, i64 %indvars.iv.i147.3.i
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !24
  %i.ajp = getelementptr inbounds [4 x i8], ptr %i.acq, i64 %i.ajg
  %i.ajq = load float, ptr %i.ajp, align 4, !tbaa !24 ; 2 uses
  %i.ajr = fsub reassoc nsz arcp contract afn float %i.ajo, %i.ajq
  %i.ajs = fsub reassoc nsz arcp contract afn float %i.ajl, %i.aji
  %i.ajt = fsub reassoc nsz arcp contract afn float %i.adt, %i.aji
  %i.aju = fmul reassoc nsz arcp contract afn float %i.ajr, %i.ajt
  %i.ajv = fdiv reassoc nsz arcp contract afn float %i.aju, %i.ajs
  %i.ajw = fadd reassoc nsz arcp contract afn float %i.ajv, %i.ajq
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.3.i

bb.cy:                                            ; preds = %bb.cw, %.lr.ph.i146.3.i
  %indvars.iv.next.i148.3.i = add nuw nsw i64 %indvars.iv.i147.3.i, 1 ; 2 uses
  %exitcond.not.i149.3.i = icmp eq i64 %indvars.iv.next.i148.3.i, %wide.trip.count.i145.3.i
  br i1 %exitcond.not.i149.3.i, label %._crit_edge.i142.3.i, label %.lr.ph.i146.3.i, !llvm.loop !199

._crit_edge.i142.3.i:                             ; preds = %bb.cy, %.preheader.i141.3.i
  %i.ajx = sext i32 %i.ajc to i64
  %i.ajy = getelementptr [4 x i8], ptr %i.acq, i64 %i.ajx
  %i.ajz = getelementptr i8, ptr %i.ajy, i64 -4
  %i.aka = load float, ptr %i.ajz, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.3.i

bb.cz:                                            ; preds = %bb.cv
  %i.akb = load float, ptr %i.acq, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit150.3.i

_ZL26_interpolate_linear_splinePKfS0_if.exit150.3.i: ; preds = %bb.cz, %._crit_edge.i142.3.i, %bb.cx
  %.1.i143.3.i = phi nsz float [ %i.akb, %bb.cz ], [ %i.aka, %._crit_edge.i142.3.i ], [ %i.ajw, %bb.cx ] ; 2 uses
  %i.akc = fmul reassoc nsz arcp contract afn float %.1.i143.3.i, %i.adp
  %i.akd = fadd reassoc nsz arcp contract afn float %i.akc, %i.xu
  %i.ake = load i32, ptr %4, align 4, !tbaa !170
  %i.akf = sitofp reassoc nsz arcp contract afn i32 %i.ake to float
  %i.akg = fsub reassoc nsz arcp contract afn float %i.akd, %i.akf ; 3 uses
  %i.akh = fcmp reassoc nsz arcp contract afn ogt float %i.akg, %i.aca
  br i1 %i.akh, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit150.3.i
  %i.aki = fcmp reassoc nsz arcp contract afn olt float %i.akg, 0.000000e+00
  br i1 %i.aki, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %_ZL26_interpolate_linear_splinePKfS0_if.exit150.3.i
  %i.akj = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.da ], [ %i.akg, %bb.db ], [ %i.aca, %_ZL26_interpolate_linear_splinePKfS0_if.exit150.3.i ]
  %i.akk = fmul reassoc nsz arcp contract afn float %.1.i143.3.i, %i.adr
  %i.akl = fadd reassoc nsz arcp contract afn float %i.akk, %i.xv
  %i.akm = load i32, ptr %i.ack, align 4, !tbaa !171
  %i.akn = sitofp reassoc nsz arcp contract afn i32 %i.akm to float
  %i.ako = fsub reassoc nsz arcp contract afn float %i.akl, %i.akn ; 3 uses
  %i.akp = fcmp reassoc nsz arcp contract afn ogt float %i.ako, %i.ace
  br i1 %i.akp, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.akq = fcmp reassoc nsz arcp contract afn olt float %i.ako, 0.000000e+00
  br i1 %i.akq, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %i.akr = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.dd ], [ %i.ako, %bb.de ], [ %i.ace, %bb.dc ]
  %i.aks = load i32, ptr %i.abx, align 4, !tbaa !162 ; 2 uses
  %i.akt = load i32, ptr %i.acb, align 4, !tbaa !163
  %i.aku = shl nsw i32 %i.aks, 2
  %i.akv = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.xy, ptr noundef nonnull %i.acv, float noundef %i.akj, float noundef %i.akr, i32 noundef %i.aks, i32 noundef %i.akt, i32 noundef 4, i32 noundef %i.aku)
  %gep21.3.i = getelementptr i8, ptr %invariant.gep20.i, i64 12
  store float %i.akv, ptr %gep21.3.i, align 4, !tbaa !24
  %i.akw = add nuw nsw i32 %.013223.i, 1          ; 2 uses
  %i.akx = load i32, ptr %i.aci, align 4, !tbaa !162 ; 3 uses
  %i.aky = icmp slt i32 %i.akw, %i.akx
  br i1 %i.aky, label %.lr.ph.i62, label %._crit_edge.loopexit.i, !llvm.loop !204

bb.dg:                                            ; preds = %._crit_edge25.i
  tail call void @free(ptr noundef %.0.i) #30
  br label %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit

bb.dh:                                            ; preds = %_ZL20_preprocess_vignetteP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_ti.exit
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %.0, i64 noundef 4, ptr noundef %4, ptr noundef %5)
  br label %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit

_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit: ; preds = %bb.dg, %._crit_edge25.i, %bb.bi, %.loopexit250.i, %bb.o, %bb.dh
  %.not50 = icmp eq ptr %.0, %2
  br i1 %.not50, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit
  call void @free(ptr noundef %.0) #30
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit
  ret void
}

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @tiling_callback(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 12), (16, 28)) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !81  ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !174
  switch i32 %i.c, label %bb.e [
    i32 1, label %bb.b
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 492
  %.val.val = load float, ptr %i.d, align 4, !tbaa !156
  store float 4.500000e+00, ptr %4, align 4, !tbaa !205
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.500000e+00, ptr %i.e, align 4, !tbaa !207
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.f, align 4, !tbaa !208
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4, ptr %i.g, align 4, !tbaa !209
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.h, align 4, !tbaa !210
  %i.i = fcmp reassoc nsz arcp contract afn une float %.val.val, 0.000000e+00
  br i1 %i.i, label %bb.c, label %_ZL19_tiling_callback_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tS5_P19dt_develop_tiling_t.exit

bb.c:                                             ; preds = %bb.b
  store float 5.500000e+00, ptr %4, align 4, !tbaa !205
  br label %_ZL19_tiling_callback_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tS5_P19dt_develop_tiling_t.exit

bb.d:                                             ; preds = %bb.a
  store float 4.500000e+00, ptr %4, align 4, !tbaa !205
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.500000e+00, ptr %i.j, align 4, !tbaa !207
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.k, align 4, !tbaa !208
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4, ptr %i.l, align 4, !tbaa !209
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.m, align 4, !tbaa !210
  br label %_ZL19_tiling_callback_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tS5_P19dt_develop_tiling_t.exit

bb.e:                                             ; preds = %bb.a
  store float 2.000000e+00, ptr %4, align 4, !tbaa !205
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !207
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.o, align 4, !tbaa !208
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 4, ptr %i.p, align 4, !tbaa !209
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.q, align 4, !tbaa !210
  br label %_ZL19_tiling_callback_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tS5_P19dt_develop_tiling_t.exit

_ZL19_tiling_callback_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tS5_P19dt_develop_tiling_t.exit: ; preds = %bb.c, %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @distort_transform(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [6 x float], align 64             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !81  ; 15 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !174
  switch i32 %i.d, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit [
    i32 1, label %bb.b
    i32 0, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !176, !noalias !211 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !177, !noalias !211
  %.not27.i = icmp eq ptr %i.g, null
  br i1 %.not27.i, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !186, !noalias !211
  %i.j = fcmp reassoc nsz arcp contract afn ugt float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.e, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = load <2 x i32>, ptr %i.k, align 16, !tbaa !38, !noalias !211
  %i.m = sitofp <2 x i32> %i.l to <2 x float>     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !187, !noalias !211
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.q = tail call i32 @dt_image_is_monochrome(ptr noundef nonnull %i.p), !noalias !211
  %i.r = extractelement <2 x float> %i.m, i64 0
  %i.s = fptosi float %i.r to i32
  %i.t = extractelement <2 x float> %i.m, i64 1
  %i.u = fptosi float %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !197, !noalias !211 ; 2 uses
  %i.x = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !211 ; 6 uses
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !176, !noalias !211
  %i.z = load float, ptr %i.h, align 8, !tbaa !186, !noalias !211
  invoke void @_ZN10lfModifierC1EPK6lfLensfii(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef %i.y, float noundef %i.z, i32 noundef %i.s, i32 noundef %i.u)
          to label %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i unwind label %bb.f, !noalias !211

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 96) #33, !noalias !211
  resume { ptr, i32 } %i.aa

_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i: ; preds = %bb.e
  %.not28.i = icmp eq i32 %i.q, 0
  %i.ab = select i1 %.not28.i, i32 -1, i32 -2
  %i.ac = and i32 %i.w, 3
  %i.ad = shl i32 %i.w, 1
  %i.ae = and i32 %i.ad, 8
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = or disjoint i32 %i.af, 48
  %i.ah = and i32 %i.ag, %i.ab
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !176, !noalias !211
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !214, !noalias !211
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.am = load float, ptr %i.al, align 8, !tbaa !215, !noalias !211
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ao = load float, ptr %i.an, align 4, !tbaa !216, !noalias !211
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !217, !noalias !211
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !218, !noalias !211
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !188, !noalias !211
  %.not23.i.i = icmp eq i32 %i.au, 0
  %i.av = tail call noundef i32 @_ZN10lfModifier10InitializeEPK6lfLens13lfPixelFormatffff10lfLensTypeib(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef %i.ai, i32 noundef 3, float noundef %i.ak, float noundef %i.am, float noundef %i.ao, float noundef %i.aq, i32 noundef %i.as, i32 noundef %i.ah, i1 noundef zeroext %.not23.i.i), !noalias !211
  %i.aw = and i32 %i.av, 57
  %.not29.i = icmp eq i32 %i.aw, 0
  br i1 %.not29.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i
  %i.ax = shl i64 %3, 1                           ; 2 uses
  %.not31.i = icmp eq i64 %i.ax, 0
  br i1 %.not31.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.030.i = phi i64 [ %i.bf, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !211
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.030.i ; 3 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !24, !alias.scope !211
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !24, !alias.scope !211
  %i.bc = call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.x, float noundef %i.az, float noundef %i.bb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.a), !noalias !211 ; 0 uses
  %i.bd = load <4 x float>, ptr %i.a, align 64, !tbaa !24, !noalias !211
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.be, ptr %i.ay, align 4, !tbaa !24, !alias.scope !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !211
  %i.bf = add nuw i64 %.030.i, 2                  ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.ax
  br i1 %i.bg, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !219

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i, %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i
  call void @_ZN10lfModifierD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.x) #30, !noalias !211
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 96) #33, !noalias !211
  br label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit

bb.g:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !196
  %.fr22.i = freeze i32 %i.bi                     ; 4 uses
  %.not.i12 = icmp eq i32 %.fr22.i, 0
  br i1 %.not.i12, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !197
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !198
  %i.bo = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bq = load <2 x i32>, ptr %i.bp, align 16, !tbaa !38
  %i.br = sitofp <2 x i32> %i.bq to <2 x float>
  %i.bs = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.br, splat (float 5.000000e-01) ; 6 uses
  %i.bt = shl i64 %3, 1                           ; 3 uses
  %.not21.i = icmp eq i64 %i.bt, 0
  br i1 %.not21.i, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.i
  %i.bu = extractelement <2 x float> %i.bs, i64 0
  %i.bv = extractelement <2 x float> %i.bs, i64 1
  %i.bw = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.bu, float noundef %i.bv) #32
  %i.bx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 300 ; 5 uses
  %i.ca = icmp sgt i32 %.fr22.i, 1
  %wide.trip.count.i.i = zext nneg i32 %.fr22.i to i64
  %i.cb = sext i32 %.fr22.i to i64
  %i.cc = getelementptr [4 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 -4     ; 2 uses
  %i.ce = load float, ptr %i.by, align 4, !tbaa !24 ; 2 uses
  br i1 %i.ca, label %.split.us.us.i.preheader, label %.split.i.preheader

.split.i.preheader:                               ; preds = %.lr.ph.i13
  %i.cf = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.split.i

.split.us.us.i.preheader:                         ; preds = %.lr.ph.i13
  %i.ch = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.split.us.us.i

.split.us.us.i:                                   ; preds = %.split.us.us.i.preheader, %.split17.us.us.i
  %.05319.us.i = phi i64 [ %i.eb, %.split17.us.us.i ], [ 0, %.split.us.us.i.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.05319.us.i ; 2 uses
  %i.ck = load <2 x float>, ptr %i.cj, align 4, !tbaa !24 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i, %.split.us.us.i
  %.05813.us.us.i = phi i32 [ 0, %.split.us.us.i ], [ %i.dy, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i ] ; 2 uses
  %i.cl = phi <2 x float> [ %i.ck, %.split.us.us.i ], [ %i.dx, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i ] ; 3 uses
  %i.cm = fsub reassoc nsz arcp contract afn <2 x float> %i.cl, %i.bs
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, %i.ci ; 3 uses
  %i.co = extractelement <2 x float> %i.cn, i64 0
  %i.cp = extractelement <2 x float> %i.cn, i64 1
  %i.cq = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.co, float noundef %i.cp) #32
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, %i.bx ; 4 uses
  %i.cs = fcmp reassoc nsz arcp contract afn olt float %i.cr, %i.ce
  br i1 %i.cs, label %bb.n, label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %bb.j, %bb.l
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %bb.l ], [ 1, %bb.j ] ; 4 uses
  %i.ct = add nsw i64 %indvars.iv.i.us.us.i, -1   ; 2 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ct
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !24 ; 3 uses
  %i.cw = fcmp reassoc nsz arcp contract afn ult float %i.cr, %i.cv
  br i1 %i.cw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.us.us.i
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i.us.us.i
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !24 ; 2 uses
  %i.cz = fcmp reassoc nsz arcp contract afn ugt float %i.cr, %i.cy
  br i1 %i.cz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.us.i, label %._crit_edge.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !199

bb.m:                                             ; preds = %bb.k
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i.us.us.i
  %i.db = load float, ptr %i.da, align 4, !tbaa !24
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ct
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !24 ; 2 uses
  %i.de = fsub reassoc nsz arcp contract afn float %i.db, %i.dd
  %i.df = fsub reassoc nsz arcp contract afn float %i.cy, %i.cv
  %i.dg = fsub reassoc nsz arcp contract afn float %i.cr, %i.cv
  %i.dh = fmul reassoc nsz arcp contract afn float %i.de, %i.dg
  %i.di = fdiv reassoc nsz arcp contract afn float %i.dh, %i.df
  %i.dj = fadd reassoc nsz arcp contract afn float %i.di, %i.dd
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i

bb.n:                                             ; preds = %bb.j
  %i.dk = load float, ptr %i.bz, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i: ; preds = %._crit_edge.i.loopexit.us.us.i, %bb.n, %bb.m
  %.1.i.us.us.i = phi nsz float [ %i.dk, %bb.n ], [ %i.ea, %._crit_edge.i.loopexit.us.us.i ], [ %i.dj, %bb.m ]
  %i.dl = insertelement <2 x float> poison, float %.1.i.us.us.i, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fmul reassoc nsz arcp contract afn <2 x float> %i.cn, %i.dm
  %i.do = fadd reassoc nsz arcp contract afn <2 x float> %i.bs, %i.dn
  %i.dp = fsub reassoc nsz arcp contract afn <2 x float> %i.ck, %i.do ; 2 uses
  %i.dq = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dp)
  %i.dr = fcmp reassoc nsz arcp contract afn uge <2 x float> %i.dq, splat (float 5.000000e-01) ; 2 uses
  %i.ds = extractelement <2 x i1> %i.dr, i64 0
  %i.dt = extractelement <2 x i1> %i.dr, i64 1
  %or.cond.not.us.us.i = select i1 %i.ds, i1 true, i1 %i.dt ; 2 uses
  %i.du = fadd reassoc nsz arcp contract afn <2 x float> %i.dp, %i.cl
  %i.dv = insertelement <2 x i1> poison, i1 %or.cond.not.us.us.i, i64 0
  %i.dw = shufflevector <2 x i1> %i.dv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dx = select <2 x i1> %i.dw, <2 x float> %i.du, <2 x float> %i.cl ; 2 uses
  %i.dy = add nuw nsw i32 %.05813.us.us.i, 1
  %i.dz = icmp samesign ult i32 %.05813.us.us.i, 9
  %or.cond.i = select i1 %or.cond.not.us.us.i, i1 %i.dz, i1 false
  br i1 %or.cond.i, label %bb.j, label %.split17.us.us.i, !llvm.loop !220

._crit_edge.i.loopexit.us.us.i:                   ; preds = %bb.l
  %i.ea = load float, ptr %i.cd, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i

.split17.us.us.i:                                 ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i
  store <2 x float> %i.dx, ptr %i.cj, align 4, !tbaa !24
  %i.eb = add nuw i64 %.05319.us.i, 2             ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.bt
  br i1 %i.ec, label %.split.us.us.i, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, !llvm.loop !221

.split.i:                                         ; preds = %.split.i.preheader, %.split17.i
  %.05319.i = phi i64 [ %i.fc, %.split17.i ], [ 0, %.split.i.preheader ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.05319.i ; 2 uses
  %i.ee = load <2 x float>, ptr %i.ed, align 4, !tbaa !24 ; 2 uses
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.i:   ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i, %.split.i
  %.05813.i = phi i32 [ 0, %.split.i ], [ %i.fa, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i ] ; 2 uses
  %i.ef = phi <2 x float> [ %i.ee, %.split.i ], [ %i.ez, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i ] ; 3 uses
  %i.eg = fsub reassoc nsz arcp contract afn <2 x float> %i.ef, %i.bs
  %i.eh = fmul reassoc nsz arcp contract afn <2 x float> %i.eg, %i.cg ; 3 uses
  %i.ei = extractelement <2 x float> %i.eh, i64 0
  %i.ej = extractelement <2 x float> %i.eh, i64 1
  %i.ek = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.ei, float noundef %i.ej) #32
  %i.el = fmul reassoc nsz arcp contract afn float %i.ek, %i.bx
  %i.em = fcmp reassoc nsz arcp contract afn olt float %i.el, %i.ce
  %.1.i.in.i = select i1 %i.em, ptr %i.bz, ptr %i.cd
  %.1.i.i = load float, ptr %.1.i.in.i, align 4, !tbaa !24
  %i.en = insertelement <2 x float> poison, float %.1.i.i, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fmul reassoc nsz arcp contract afn <2 x float> %i.eh, %i.eo
  %i.eq = fadd reassoc nsz arcp contract afn <2 x float> %i.bs, %i.ep
  %i.er = fsub reassoc nsz arcp contract afn <2 x float> %i.ee, %i.eq ; 2 uses
  %i.es = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.er)
  %i.et = fcmp reassoc nsz arcp contract afn uge <2 x float> %i.es, splat (float 5.000000e-01) ; 2 uses
  %i.eu = extractelement <2 x i1> %i.et, i64 0
  %i.ev = extractelement <2 x i1> %i.et, i64 1
  %or.cond.not.i = select i1 %i.eu, i1 true, i1 %i.ev ; 2 uses
  %i.ew = fadd reassoc nsz arcp contract afn <2 x float> %i.er, %i.ef
  %i.ex = insertelement <2 x i1> poison, i1 %or.cond.not.i, i64 0
  %i.ey = shufflevector <2 x i1> %i.ex, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ez = select <2 x i1> %i.ey, <2 x float> %i.ew, <2 x float> %i.ef ; 2 uses
  %i.fa = add nuw nsw i32 %.05813.i, 1
  %i.fb = icmp samesign ult i32 %.05813.i, 9
  %or.cond20.i = select i1 %or.cond.not.i, i1 %i.fb, i1 false
  br i1 %or.cond20.i, label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i, label %.split17.i, !llvm.loop !220

.split17.i:                                       ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i
  store <2 x float> %i.ez, ptr %i.ed, align 4, !tbaa !24
  %i.fc = add nuw i64 %.05319.i, 2                ; 2 uses
  %i.fd = icmp ult i64 %i.fc, %i.bt
  br i1 %i.fd, label %.split.i, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, !llvm.loop !221

_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit: ; preds = %.split17.i, %.split17.us.us.i, %bb.i, %bb.h, %bb.g, %.loopexit.i, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.loopexit.i ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %.split17.us.us.i ], [ 1, %.split17.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @distort_backtransform(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [6 x float], align 64             ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !81  ; 9 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !174
  switch i32 %i.e, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit [
    i32 1, label %bb.b
    i32 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !176, !noalias !222 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !177, !noalias !222
  %.not27.i = icmp eq ptr %i.h, null
  br i1 %.not27.i, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load float, ptr %i.i, align 8, !tbaa !186, !noalias !222
  %i.k = fcmp reassoc nsz arcp contract afn ugt float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.e, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !187, !noalias !222
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = tail call i32 @dt_image_is_monochrome(ptr noundef nonnull %i.n), !noalias !222
  %.not28.i = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not28.i, i32 -1, i32 -2
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.r = load <2 x i32>, ptr %i.q, align 16, !tbaa !38, !noalias !222
  %i.s = sitofp <2 x i32> %i.r to <2 x float>     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !222
  %i.t = extractelement <2 x float> %i.s, i64 0
  %i.u = fptosi float %i.t to i32
  %i.v = extractelement <2 x float> %i.s, i64 1
  %i.w = fptosi float %i.v to i32
  %i.x = call fastcc noundef ptr @_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii(ptr noundef nonnull %i.a, i32 noundef %i.u, i32 noundef %i.w, ptr noundef nonnull %i.d, i32 noundef %i.p, i32 noundef 0), !noalias !222 ; 3 uses
  %i.y = load i32, ptr %i.a, align 4, !tbaa !38, !noalias !222
  %i.z = and i32 %i.y, 57
  %.not29.i = icmp eq i32 %i.z, 0
  br i1 %.not29.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.aa = shl i64 %3, 1                           ; 2 uses
  %.not31.i = icmp eq i64 %i.aa, 0
  br i1 %.not31.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.030.i = phi i64 [ %i.ai, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !222
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.030.i ; 3 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !24, !alias.scope !222
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !24, !alias.scope !222
  %i.af = call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.x, float noundef %i.ac, float noundef %i.ae, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.b), !noalias !222 ; 0 uses
  %i.ag = load <4 x float>, ptr %i.b, align 64, !tbaa !24, !noalias !222
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ah, ptr %i.ab, align 4, !tbaa !24, !alias.scope !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !222
  %i.ai = add nuw i64 %.030.i, 2                  ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.aa
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !225

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i, %bb.e
  call void @_ZN10lfModifierD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.x) #30, !noalias !222
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 96) #33, !noalias !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !222
  br label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit

bb.f:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !196
  %.fr8.i = freeze i32 %i.al                      ; 4 uses
  %.not.i12 = icmp eq i32 %.fr8.i, 0
  br i1 %.not.i12, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !197
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !198
  %i.ar = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.at = load <2 x i32>, ptr %i.as, align 16, !tbaa !38
  %i.au = sitofp <2 x i32> %i.at to <2 x float>
  %i.av = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.au, splat (float 5.000000e-01) ; 6 uses
  %i.aw = extractelement <2 x float> %i.av, i64 0
  %i.ax = extractelement <2 x float> %i.av, i64 1
  %i.ay = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.aw, float noundef %i.ax) #32
  %i.az = shl i64 %3, 1                           ; 3 uses
  %i.ba = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ay ; 2 uses
  %.not7.i = icmp eq i64 %i.az, 0
  br i1 %.not7.i, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 108 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 300 ; 5 uses
  %i.bd = icmp sgt i32 %.fr8.i, 1
  %wide.trip.count.i.i = zext nneg i32 %.fr8.i to i64
  %i.be = sext i32 %.fr8.i to i64
  %i.bf = getelementptr [4 x i8], ptr %i.bc, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4     ; 2 uses
  %i.bh = load float, ptr %i.bb, align 4, !tbaa !24 ; 2 uses
  br i1 %i.bd, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i13
  %i.bi = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i13
  %i.bk = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i
  %.0356.us.i = phi i64 [ %i.cr, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0356.us.i ; 2 uses
  %i.bn = load <2 x float>, ptr %i.bm, align 4, !tbaa !24
  %i.bo = fsub reassoc nsz arcp contract afn <2 x float> %i.bn, %i.av
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.bo, %i.bl ; 3 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0
  %i.br = extractelement <2 x float> %i.bp, i64 1
  %i.bs = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.bq, float noundef %i.br) #32
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.ba ; 4 uses
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bt, %i.bh
  br i1 %i.bu, label %bb.l, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.split.us.i, %bb.j
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %bb.j ], [ 1, %.lr.ph.split.us.i ] ; 4 uses
  %i.bv = add nsw i64 %indvars.iv.i.us.i, -1      ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !24 ; 3 uses
  %i.by = fcmp reassoc nsz arcp contract afn ult float %i.bt, %i.bx
  br i1 %i.by, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.us.i
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i.us.i
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !24 ; 2 uses
  %i.cb = fcmp reassoc nsz arcp contract afn ugt float %i.bt, %i.ca
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.us.i
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %._crit_edge.i.loopexit.us.i, label %.lr.ph.i.us.i, !llvm.loop !199

bb.k:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i.us.i
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !24
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bv
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !24 ; 2 uses
  %i.cg = fsub reassoc nsz arcp contract afn float %i.cd, %i.cf
  %i.ch = fsub reassoc nsz arcp contract afn float %i.ca, %i.bx
  %i.ci = fsub reassoc nsz arcp contract afn float %i.bt, %i.bx
  %i.cj = fmul reassoc nsz arcp contract afn float %i.cg, %i.ci
  %i.ck = fdiv reassoc nsz arcp contract afn float %i.cj, %i.ch
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, %i.cf
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i

bb.l:                                             ; preds = %.lr.ph.split.us.i
  %i.cm = load float, ptr %i.bc, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i: ; preds = %._crit_edge.i.loopexit.us.i, %bb.l, %bb.k
  %.1.i.us.i = phi nsz float [ %i.cm, %bb.l ], [ %i.ct, %._crit_edge.i.loopexit.us.i ], [ %i.cl, %bb.k ]
  %i.cn = insertelement <2 x float> poison, float %.1.i.us.i, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.co, %i.bp
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.cp, %i.av
  store <2 x float> %i.cq, ptr %i.bm, align 4, !tbaa !24
  %i.cr = add nuw i64 %.0356.us.i, 2              ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.az
  br i1 %i.cs, label %.lr.ph.split.us.i, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, !llvm.loop !226

._crit_edge.i.loopexit.us.i:                      ; preds = %bb.j
  %i.ct = load float, ptr %i.bg, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %.lr.ph.split.i
  %.0356.i = phi i64 [ %i.dh, %.lr.ph.split.i ], [ 0, %.lr.ph.split.i.preheader ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0356.i ; 2 uses
  %i.cv = load <2 x float>, ptr %i.cu, align 4, !tbaa !24
  %i.cw = fsub reassoc nsz arcp contract afn <2 x float> %i.cv, %i.av
  %i.cx = fmul reassoc nsz arcp contract afn <2 x float> %i.cw, %i.bj ; 3 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 0
  %i.cz = extractelement <2 x float> %i.cx, i64 1
  %i.da = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.cy, float noundef %i.cz) #32
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, %i.ba
  %i.dc = fcmp reassoc nsz arcp contract afn olt float %i.db, %i.bh
  %.1.i.in.i = select i1 %i.dc, ptr %i.bc, ptr %i.bg
  %.1.i.i = load float, ptr %.1.i.in.i, align 4, !tbaa !24
  %i.dd = insertelement <2 x float> poison, float %.1.i.i, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fmul reassoc nsz arcp contract afn <2 x float> %i.de, %i.cx
  %i.dg = fadd reassoc nsz arcp contract afn <2 x float> %i.df, %i.av
  store <2 x float> %i.dg, ptr %i.cu, align 4, !tbaa !24
  %i.dh = add nuw i64 %.0356.i, 2                 ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.az
  br i1 %i.di, label %.lr.ph.split.i, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, !llvm.loop !226

_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit: ; preds = %.lr.ph.split.i, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i, %bb.h, %bb.g, %bb.f, %.loopexit.i, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.loopexit.i ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.g ], [ 1, %bb.h ], [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i ], [ 1, %.lr.ph.split.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !81  ; 10 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !174
  switch i32 %i.d, label %bb.ah [
    i32 1, label %bb.b
    i32 0, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !176  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !177
  %.not76.i = icmp eq ptr %i.g, null
  br i1 %.not76.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load float, ptr %i.h, align 8, !tbaa !186
  %i.j = fcmp reassoc nsz arcp contract afn ugt float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !162
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !163
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.p, %i.m
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.q)
  br label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !169 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.u = load <2 x i32>, ptr %i.t, align 16, !tbaa !38
  %i.v = sitofp <2 x i32> %i.u to <2 x float>     ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 0
  %i.x = fmul reassoc nsz arcp contract afn float %i.s, %i.w
  %i.y = extractelement <2 x float> %i.v, i64 1
  %i.z = fmul reassoc nsz arcp contract afn float %i.s, %i.y
  %i.aa = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ab = fptosi float %i.x to i32
  %i.ac = fptosi float %i.z to i32
  %i.ad = call fastcc noundef ptr @_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii(ptr noundef nonnull %i.a, i32 noundef %i.ab, i32 noundef %i.ac, ptr noundef nonnull %i.c, i32 noundef 56, i32 noundef 0) ; 3 uses
  %i.ae = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #30 ; 0 uses
  %i.af = load i32, ptr %i.a, align 4, !tbaa !38
  %i.ag = and i32 %i.af, 57
  %.not77.i = icmp eq i32 %i.ag, 0
  br i1 %.not77.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !162
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !163
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.am, %i.aj
  call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.an)
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.ao = call ptr @dt_interpolation_new(i32 noundef 3) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !162
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i64 %i.ar, 24
  %i.at = add nsw i64 %i.as, 56
  %i.au = and i64 %i.at, -64
  %i.av = call noundef ptr @dt_alloc_aligned(i64 noundef %i.au) ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.av, i64 64) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !163
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph6.i, label %._crit_edge7.i

.lr.ph6.i:                                        ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %.pre.i = load i32, ptr %i.ap, align 4, !tbaa !162
  br label %bb.i

._crit_edge7.i:                                   ; preds = %._crit_edge.i, %bb.h
  call void @free(ptr noundef %i.av) #30
  br label %bb.p

bb.i:                                             ; preds = %._crit_edge.i, %.lr.ph6.i
  %i.bd = phi i32 [ %.pre.i, %.lr.ph6.i ], [ %i.bq, %._crit_edge.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph6.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.be = load i32, ptr %5, align 4, !tbaa !170
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.be to float
  %i.bg = load i32, ptr %i.az, align 4, !tbaa !171
  %i.bh = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bi = add nsw i32 %i.bg, %i.bh
  %i.bj = sitofp reassoc nsz arcp contract afn i32 %i.bi to float
  %i.bk = call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.ad, float noundef %i.bf, float noundef %i.bj, i32 noundef %i.bd, i32 noundef 1, ptr noundef %i.av) ; 0 uses
  %i.bl = load i32, ptr %i.ap, align 4, !tbaa !162 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.bn = zext nneg i32 %i.bl to i64
  %i.bo = mul nuw nsw i64 %indvars.iv.i, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bo
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.o, %bb.i
  %i.bq = phi i32 [ %i.bl, %bb.i ], [ %i.cw, %bb.o ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.br = load i32, ptr %i.aw, align 4, !tbaa !163
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next.i, %i.bs
  br i1 %i.bt, label %bb.i, label %._crit_edge7.i, !llvm.loop !227

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i
  %.0713.i = phi i32 [ %i.ct, %bb.o ], [ 0, %.lr.ph.preheader.i ]
  %.0722.i = phi ptr [ %i.cv, %bb.o ], [ %i.bp, %.lr.ph.preheader.i ] ; 2 uses
  %.0731.i = phi ptr [ %i.cu, %bb.o ], [ %i.av, %.lr.ph.preheader.i ] ; 4 uses
  %i.bu = load i32, ptr %i.ba, align 4, !tbaa !189
  %.not78.i = icmp eq i32 %i.bu, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0731.i, i64 8
  %.pre9.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !24 ; 2 uses
  br i1 %.not78.i, label %.lr.ph._crit_edge.i, label %bb.j

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i
  %.phi.trans.insert10.i = getelementptr inbounds nuw i8, ptr %.0731.i, i64 12
  %.pre11.i = load float, ptr %.phi.trans.insert10.i, align 4, !tbaa !24
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph.i
  %i.bv = call float @llvm.fabs.f32(float %.pre9.i)
  %i.bw = fcmp ueq float %i.bv, +inf
  br i1 %i.bw, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %.0731.i, i64 12
  %i.by = load float, ptr %i.bx, align 4, !tbaa !24 ; 2 uses
  %i.bz = call float @llvm.fabs.f32(float %i.by)
  %i.ca = fcmp ueq float %i.bz, +inf
  br i1 %i.ca, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph._crit_edge.i
  %i.cb = phi float [ %.pre11.i, %.lr.ph._crit_edge.i ], [ %i.by, %bb.k ]
  %i.cc = load <2 x i32>, ptr %4, align 4, !tbaa !38
  %i.cd = sitofp <2 x i32> %i.cc to <2 x float>   ; 2 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0
  %i.cf = fsub reassoc nsz arcp contract afn float %.pre9.i, %i.ce ; 3 uses
  %i.cg = extractelement <2 x float> %i.cd, i64 1
  %i.ch = fsub reassoc nsz arcp contract afn float %i.cb, %i.cg ; 3 uses
  %i.ci = load i32, ptr %i.bb, align 4, !tbaa !162 ; 2 uses
  %i.cj = load i32, ptr %i.bc, align 4, !tbaa !163
  %i.ck = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ao, ptr noundef %2, float noundef %i.cf, float noundef %i.ch, i32 noundef %i.ci, i32 noundef %i.cj, i32 noundef 1, i32 noundef %i.ci)
  %i.cl = fcmp reassoc nsz arcp contract afn ult float %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = load i32, ptr %i.bb, align 4, !tbaa !162 ; 2 uses
  %i.cn = load i32, ptr %i.bc, align 4, !tbaa !163
  %i.co = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ao, ptr noundef %2, float noundef %i.cf, float noundef %i.ch, i32 noundef %i.cm, i32 noundef %i.cn, i32 noundef 1, i32 noundef %i.cm)
  %i.cp = fcmp reassoc nsz arcp contract afn ugt float %i.co, 1.000000e+00
  br i1 %i.cp, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = load i32, ptr %i.bb, align 4, !tbaa !162 ; 2 uses
  %i.cr = load i32, ptr %i.bc, align 4, !tbaa !163
  %i.cs = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ao, ptr noundef %2, float noundef %i.cf, float noundef %i.ch, i32 noundef %i.cq, i32 noundef %i.cr, i32 noundef 1, i32 noundef %i.cq)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %storemerge.i = phi float [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.k ], [ 1.000000e+00, %bb.m ], [ %i.cs, %bb.n ], [ 0.000000e+00, %bb.l ]
  store float %storemerge.i, ptr %.0722.i, align 4, !tbaa !24
  %i.ct = add nuw nsw i32 %.0713.i, 1             ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0731.i, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %.0722.i, i64 4
  %i.cw = load i32, ptr %i.ap, align 4, !tbaa !162 ; 2 uses
  %i.cx = icmp slt i32 %i.ct, %i.cw
  br i1 %i.cx, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !228

bb.p:                                             ; preds = %._crit_edge7.i, %bb.g
  call void @_ZN10lfModifierD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.ad) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 96) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

bb.q:                                             ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !196
  %.not.i19 = icmp eq i32 %i.cz, 0
  br i1 %.not.i19, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !197
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !162
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !163
  %i.di = sext i32 %i.dh to i64
  %i.dj = mul nsw i64 %i.di, %i.df
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.dj)
  br label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

bb.t:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !198
  %i.dm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.do = load float, ptr %i.dn, align 4, !tbaa !169
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, 5.000000e-01
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.dr = load <2 x i32>, ptr %i.dq, align 16, !tbaa !38
  %i.ds = sitofp <2 x i32> %i.dr to <2 x float>
  %i.dt = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul reassoc nsz arcp contract afn <2 x float> %i.du, %i.ds ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !162
  %i.dy = add nsw i32 %i.dx, -1
  %i.dz = sitofp reassoc nsz arcp contract afn i32 %i.dy to float ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !163
  %i.ec = add nsw i32 %i.eb, -1
  %i.ed = sitofp reassoc nsz arcp contract afn i32 %i.ec to float ; 2 uses
  %i.ee = tail call ptr @dt_interpolation_new(i32 noundef 3) ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !163 ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.preheader.lr.ph.i, label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

.preheader.lr.ph.i:                               ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 300 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.em = load i32, ptr %i.ei, align 4, !tbaa !162 ; 2 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.preheader.preheader.i, label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.eo = extractelement <2 x float> %i.dv, i64 0 ; 2 uses
  %i.ep = extractelement <2 x float> %i.dv, i64 1 ; 2 uses
  %i.eq = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.eo, float noundef %i.ep) #32
  %i.er = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eq
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i20, %.preheader.preheader.i
  %i.es = phi i32 [ %i.ew, %._crit_edge.i20 ], [ %i.eg, %.preheader.preheader.i ]
  %i.et = phi i32 [ %i.ex, %._crit_edge.i20 ], [ %i.em, %.preheader.preheader.i ] ; 2 uses
  %.08.i = phi i32 [ %i.ey, %._crit_edge.i20 ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %.lr.ph.i21.preheader, label %._crit_edge.i20

.lr.ph.i21.preheader:                             ; preds = %.preheader.i
  %i.ev = insertelement <2 x i32> poison, i32 %.08.i, i64 1
  br label %.lr.ph.i21

._crit_edge.loopexit.i:                           ; preds = %bb.ag
  %.pre.i22 = load i32, ptr %i.ef, align 4, !tbaa !163
  br label %._crit_edge.i20

._crit_edge.i20:                                  ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.ew = phi i32 [ %.pre.i22, %._crit_edge.loopexit.i ], [ %i.es, %.preheader.i ] ; 2 uses
  %i.ex = phi i32 [ %i.hn, %._crit_edge.loopexit.i ], [ %i.et, %.preheader.i ]
  %i.ey = add nuw nsw i32 %.08.i, 1               ; 2 uses
  %i.ez = icmp slt i32 %i.ey, %i.ew
  br i1 %i.ez, label %.preheader.i, label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit, !llvm.loop !229

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader, %bb.ag
  %.0887.i = phi i32 [ %i.hs, %bb.ag ], [ 0, %.lr.ph.i21.preheader ] ; 3 uses
  %i.fa = load <2 x i32>, ptr %5, align 4, !tbaa !38
  %i.fb = insertelement <2 x i32> %i.ev, i32 %.0887.i, i64 0
  %i.fc = add nsw <2 x i32> %i.fa, %i.fb
  %i.fd = sitofp <2 x i32> %i.fc to <2 x float>
  %i.fe = fsub reassoc nsz arcp contract afn <2 x float> %i.fd, %i.dv ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 0
  %i.fg = fmul reassoc nsz arcp contract afn float %i.ff, %i.dm ; 2 uses
  %i.fh = extractelement <2 x float> %i.fe, i64 1
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, %i.dm ; 2 uses
  %i.fj = load i32, ptr %i.cy, align 8, !tbaa !196 ; 3 uses
  %i.fk = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.fg, float noundef %i.fi) #32
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, %i.er ; 4 uses
  %i.fm = load float, ptr %i.ej, align 4, !tbaa !24
  %i.fn = fcmp reassoc nsz arcp contract afn olt float %i.fl, %i.fm
  br i1 %i.fn, label %bb.u, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i21
  %i.fo = icmp sgt i32 %i.fj, 1
  br i1 %i.fo, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.fj to i64
  br label %.lr.ph.i.i

bb.u:                                             ; preds = %.lr.ph.i21
  %i.fp = load float, ptr %i.ek, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.w ] ; 4 uses
  %i.fq = add nsw i64 %indvars.iv.i.i, -1         ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !24 ; 3 uses
  %i.ft = fcmp reassoc nsz arcp contract afn ult float %i.fl, %i.fs
  br i1 %i.ft, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.i.i
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !24 ; 2 uses
  %i.fw = fcmp reassoc nsz arcp contract afn ugt float %i.fl, %i.fv
  br i1 %i.fw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !199

bb.x:                                             ; preds = %bb.v
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.i.i
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !24
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.fq
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !24 ; 2 uses
  %i.gb = fsub reassoc nsz arcp contract afn float %i.fy, %i.ga
  %i.gc = fsub reassoc nsz arcp contract afn float %i.fv, %i.fs
  %i.gd = fsub reassoc nsz arcp contract afn float %i.fl, %i.fs
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gb, %i.gd
  %i.gf = fdiv reassoc nsz arcp contract afn float %i.ge, %i.gc
  %i.gg = fadd reassoc nsz arcp contract afn float %i.gf, %i.ga
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

._crit_edge.i.i:                                  ; preds = %bb.w, %.preheader.i.i
  %i.gh = sext i32 %i.fj to i64
  %i.gi = getelementptr [4 x i8], ptr %i.ek, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gi, i64 -4
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.i:   ; preds = %._crit_edge.i.i, %bb.x, %bb.u
  %.1.i.i = phi nsz float [ %i.fp, %bb.u ], [ %i.gk, %._crit_edge.i.i ], [ %i.gg, %bb.x ] ; 2 uses
  %i.gl = fmul reassoc nsz arcp contract afn float %.1.i.i, %i.fg
  %i.gm = fadd reassoc nsz arcp contract afn float %i.gl, %i.eo
  %i.gn = load i32, ptr %4, align 4, !tbaa !170
  %i.go = sitofp reassoc nsz arcp contract afn i32 %i.gn to float
  %i.gp = fsub reassoc nsz arcp contract afn float %i.gm, %i.go ; 3 uses
  %i.gq = fcmp reassoc nsz arcp contract afn ogt float %i.gp, %i.dz
  br i1 %i.gq, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i
  %i.gr = fcmp reassoc nsz arcp contract afn olt float %i.gp, 0.000000e+00
  br i1 %i.gr, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i
  %i.gs = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.y ], [ %i.gp, %bb.z ], [ %i.dz, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i ] ; 3 uses
  %i.gt = fmul reassoc nsz arcp contract afn float %.1.i.i, %i.fi
  %i.gu = fadd reassoc nsz arcp contract afn float %i.gt, %i.ep
  %i.gv = load i32, ptr %i.el, align 4, !tbaa !171
  %i.gw = sitofp reassoc nsz arcp contract afn i32 %i.gv to float
  %i.gx = fsub reassoc nsz arcp contract afn float %i.gu, %i.gw ; 3 uses
  %i.gy = fcmp reassoc nsz arcp contract afn ogt float %i.gx, %i.ed
  br i1 %i.gy, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gz = fcmp reassoc nsz arcp contract afn olt float %i.gx, 0.000000e+00
  br i1 %i.gz, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ha = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.ab ], [ %i.gx, %bb.ac ], [ %i.ed, %bb.aa ] ; 3 uses
  %i.hb = load i32, ptr %i.dw, align 4, !tbaa !162 ; 2 uses
  %i.hc = load i32, ptr %i.ea, align 4, !tbaa !163
  %i.hd = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ee, ptr noundef %2, float noundef %i.gs, float noundef %i.ha, i32 noundef %i.hb, i32 noundef %i.hc, i32 noundef 1, i32 noundef %i.hb)
  %i.he = fcmp reassoc nsz arcp contract afn ult float %i.hd, 0.000000e+00
  br i1 %i.he, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hf = load i32, ptr %i.dw, align 4, !tbaa !162 ; 2 uses
  %i.hg = load i32, ptr %i.ea, align 4, !tbaa !163
  %i.hh = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ee, ptr noundef %2, float noundef %i.gs, float noundef %i.ha, i32 noundef %i.hf, i32 noundef %i.hg, i32 noundef 1, i32 noundef %i.hf)
  %i.hi = fcmp reassoc nsz arcp contract afn ugt float %i.hh, 1.000000e+00
  br i1 %i.hi, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hj = load i32, ptr %i.dw, align 4, !tbaa !162 ; 2 uses
  %i.hk = load i32, ptr %i.ea, align 4, !tbaa !163
  %i.hl = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ee, ptr noundef %2, float noundef %i.gs, float noundef %i.ha, i32 noundef %i.hj, i32 noundef %i.hk, i32 noundef 1, i32 noundef %i.hj)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.hm = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.ae ], [ %i.hl, %bb.af ], [ 0.000000e+00, %bb.ad ]
  %i.hn = load i32, ptr %i.ei, align 4, !tbaa !162 ; 3 uses
  %i.ho = mul nsw i32 %i.hn, %.08.i
  %i.hp = add nsw i32 %i.ho, %.0887.i
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %3, i64 %i.hq
  store float %i.hm, ptr %i.hr, align 4, !tbaa !24
  %i.hs = add nuw nsw i32 %.0887.i, 1             ; 2 uses
  %i.ht = icmp slt i32 %i.hs, %i.hn
  br i1 %i.ht, label %.lr.ph.i21, label %._crit_edge.loopexit.i, !llvm.loop !230

bb.ah:                                            ; preds = %bb.a
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 1, ptr noundef %4, ptr noundef %5)
  br label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit: ; preds = %._crit_edge.i20, %.preheader.lr.ph.i, %bb.t, %bb.s, %bb.p, %bb.e, %bb.ah
  ret void
}

; Function Attrs: mustprogress uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !81  ; 23 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !174
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull readonly align 4 dereferenceable(20) %2, i64 20, i1 false)
  switch i32 %i.c, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit [
    i32 1, label %bb.b
    i32 0, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176  ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !177
  %.not224.i = icmp eq ptr %i.f, null
  br i1 %.not224.i, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load float, ptr %i.g, align 8, !tbaa !186 ; 2 uses
  %i.i = fcmp reassoc nsz arcp contract afn ugt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.e, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load float, ptr %i.j, align 4, !tbaa !169
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.m = load <2 x i32>, ptr %i.l, align 16, !tbaa !38
  %i.n = sitofp <2 x i32> %i.m to <2 x float>
  %i.o = insertelement <2 x float> poison, float %i.k, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul reassoc nsz arcp contract afn <2 x float> %i.p, %i.n ; 8 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = fptosi float %i.r to i32
  %i.t = extractelement <2 x float> %i.q, i64 1
  %i.u = fptosi float %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !197  ; 2 uses
  %i.x = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34 ; 9 uses
  invoke void @_ZN10lfModifierC1EPK6lfLensfii(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef nonnull %i.e, float noundef %i.h, i32 noundef %i.s, i32 noundef %i.u)
          to label %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 96) #33
  resume { ptr, i32 } %i.y

_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i: ; preds = %bb.e
  %i.z = and i32 %i.w, 3
  %i.aa = shl i32 %i.w, 1
  %i.ab = and i32 %i.aa, 8
  %i.ac = or disjoint i32 %i.z, %i.ab
  %i.ad = or disjoint i32 %i.ac, 48
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !176
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ag = load float, ptr %i.af, align 4, !tbaa !214
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !215
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !216
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.am = load float, ptr %i.al, align 4, !tbaa !217
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !218
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !188
  %.not23.i.i = icmp ne i32 %i.aq, 0
  %i.ar = tail call noundef i32 @_ZN10lfModifier10InitializeEPK6lfLens13lfPixelFormatffff10lfLensTypeib(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef %i.ae, i32 noundef 3, float noundef %i.ag, float noundef %i.ai, float noundef %i.ak, float noundef %i.am, i32 noundef %i.ao, i32 noundef %i.ad, i1 noundef zeroext %.not23.i.i)
  %i.as = and i32 %i.ar, 57
  %.not225.i = icmp eq i32 %i.as, 0
  br i1 %.not225.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i
  %i.at = load i32, ptr %3, align 4, !tbaa !170   ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !171 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !162 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !163 ; 4 uses
  %i.ba = tail call i32 @llvm.abs.i32(i32 %i.ax, i1 true) ; 3 uses
  %i.bb = tail call i32 @llvm.abs.i32(i32 %i.az, i1 true) ; 3 uses
  %.inv.i = icmp sgt i32 %i.ax, -1
  %i.bc = select i1 %.inv.i, i32 1, i32 -1        ; 2 uses
  %.inv226.i = icmp sgt i32 %i.az, -1
  %i.bd = select i1 %.inv226.i, i32 1, i32 -1     ; 2 uses
  %i.be = shl nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.bf = add nuw i32 %i.bb, %i.ba                ; 2 uses
  %i.bg = shl nuw i32 %i.bf, 1
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 24
  %i.bj = tail call noundef ptr @dt_alloc_aligned(i64 noundef %i.bi) ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bj, i64 64) ]
  %.not27.i = icmp eq i32 %i.ax, 0
  br i1 %.not27.i, label %.preheader5.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.bk = sitofp reassoc nsz arcp contract afn i32 %i.av to float
  %wide.trip.count.i = zext nneg i32 %i.ba to i64 ; 3 uses
  br label %bb.h

.lr.ph9.i:                                        ; preds = %bb.h
end_hunk_0
begin_hunk_1_@modify_roi_in:bb.a
  %i.ec = extractelement <2 x float> %i.eb, i64 0
  %or.cond.i = tail call i1 @llvm.is.fpclass.f32(float %i.ec, /* (zero psub pnorm) */ i32 480)
  %i.ed = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eb, %i.q
  %i.ee = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ea)
  %i.ef = fcmp reassoc nsz arcp contract afn oge <2 x float> %i.ea, splat (float 1.000000e+00)
  %i.eg = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ea, %i.q
  %i.eh = extractelement <2 x float> %i.eb, i64 1
  %or.cond5.i = tail call i1 @llvm.is.fpclass.f32(float %i.eh, /* (zero psub pnorm) */ i32 480)
  %i.ei = tail call ptr @dt_interpolation_new(i32 noundef 3)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !236
  %i.el = uitofp reassoc nsz arcp contract afn i64 %i.ek to float
  %i.em = fadd reassoc nsz arcp contract afn <2 x float> %i.q, splat (float -2.000000e+00)
  %i.en = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.q)
  %i.eo = insertelement <2 x i1> poison, i1 %or.cond.i, i64 0
  %i.ep = insertelement <2 x i1> %i.eo, i1 %or.cond5.i, i64 1
  %i.eq = select <2 x i1> %i.ep, <2 x i1> %i.ed, <2 x i1> zeroinitializer
  %i.er = select <2 x i1> %i.eq, <2 x float> %i.eb, <2 x float> zeroinitializer
  %i.es = fcmp one <2 x float> %i.ee, splat (float +inf)
  %i.et = select <2 x i1> %i.es, <2 x i1> %i.ef, <2 x i1> zeroinitializer
  %i.eu = select <2 x i1> %i.et, <2 x i1> %i.eg, <2 x i1> zeroinitializer
  %i.ev = select <2 x i1> %i.eu, <2 x float> %i.ea, <2 x float> %i.q
  %i.ew = insertelement <2 x float> poison, float %i.el, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ey = fsub reassoc nsz arcp contract afn <2 x float> %i.er, %i.ex ; 2 uses
  %i.ez = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.ey, zeroinitializer
  %i.fa = select <2 x i1> %i.ez, <2 x float> zeroinitializer, <2 x float> %i.ey
  %i.fb = fptosi <2 x float> %i.fa to <2 x i32>   ; 3 uses
  %i.fc = sitofp <2 x i32> %i.fb to <2 x float>   ; 2 uses
  %i.fd = fsub reassoc nsz arcp contract afn <2 x float> %i.q, %i.fc ; 2 uses
  %i.fe = fsub reassoc nsz arcp contract afn <2 x float> %i.ev, %i.fc
  %i.ff = fadd reassoc nsz arcp contract afn <2 x float> %i.fe, %i.ex ; 2 uses
  %i.fg = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.fd, %i.ff
  %i.fh = select <2 x i1> %i.fg, <2 x float> %i.fd, <2 x float> %i.ff
  %i.fi = fptosi <2 x float> %i.fh to <2 x i32>   ; 2 uses
  %i.fj = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.em)
  %i.fk = fptosi <2 x float> %i.fj to <2 x i32>   ; 2 uses
  %i.fl = icmp sgt <2 x i32> %i.fb, %i.fk
  %i.fm = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fb, <2 x i32> zeroinitializer)
  %i.fn = select <2 x i1> %i.fl, <2 x i32> %i.fk, <2 x i32> %i.fm ; 3 uses
  %i.fo = extractelement <2 x i32> %i.fn, i64 0
  store i32 %i.fo, ptr %3, align 4, !tbaa !170
  %i.fp = extractelement <2 x i32> %i.fn, i64 1
  store i32 %i.fp, ptr %i.au, align 4, !tbaa !171
  %i.fq = fptosi <2 x float> %i.en to <2 x i32>
  %i.fr = sub nsw <2 x i32> %i.fq, %i.fn          ; 2 uses
  %i.fs = icmp slt <2 x i32> %i.fr, %i.fi
  %i.ft = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fi, <2 x i32> splat (i32 1))
  %i.fu = select <2 x i1> %i.fs, <2 x i32> %i.fr, <2 x i32> %i.ft
  store <2 x i32> %i.fu, ptr %i.aw, align 4, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i, %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i
  tail call void @_ZN10lfModifierD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.x) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 96) #33
  br label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit

bb.m:                                             ; preds = %bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !196
  %.fr121.i = freeze i32 %i.fw                    ; 7 uses
  %.not.i15 = icmp eq i32 %.fr121.i, 0
  br i1 %.not.i15, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !197
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.gb = load float, ptr %i.ga, align 8, !tbaa !198
  %i.gc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gb ; 8 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !169
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.gg = load <2 x i32>, ptr %i.gf, align 16, !tbaa !38
  %i.gh = sitofp <2 x i32> %i.gg to <2 x float>
  %i.gi = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = fmul reassoc nsz arcp contract afn <2 x float> %i.gj, %i.gh ; 3 uses
  %i.gl = fmul reassoc nsz arcp contract afn <2 x float> %i.gk, splat (float 5.000000e-01) ; 34 uses
  %i.gm = extractelement <2 x float> %i.gl, i64 0 ; 5 uses
  %i.gn = extractelement <2 x float> %i.gl, i64 1 ; 5 uses
  %i.go = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.gm, float noundef %i.gn) #32
  %i.gp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.go ; 8 uses
  %i.gq = load i32, ptr %3, align 4, !tbaa !170   ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !171 ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !162 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !163 ; 4 uses
  %i.gx = sitofp reassoc nsz arcp contract afn i32 %i.gq to float
  %i.gy = fsub reassoc nsz arcp contract afn float %i.gx, %i.gm
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gy, %i.gc ; 10 uses
  %i.ha = add i32 %i.gq, -1
  %i.hb = add i32 %i.ha, %i.gu
  %i.hc = sitofp reassoc nsz arcp contract afn i32 %i.hb to float
  %i.hd = fsub reassoc nsz arcp contract afn float %i.hc, %i.gm
  %i.he = fmul reassoc nsz arcp contract afn float %i.hd, %i.gc ; 9 uses
  %i.hf = sitofp reassoc nsz arcp contract afn i32 %i.gs to float
  %i.hg = fsub reassoc nsz arcp contract afn float %i.hf, %i.gn
  %i.hh = fmul reassoc nsz arcp contract afn float %i.hg, %i.gc ; 7 uses
  %i.hi = add i32 %i.gs, -1
  %i.hj = add i32 %i.hi, %i.gw
  %i.hk = sitofp reassoc nsz arcp contract afn i32 %i.hj to float
  %i.hl = fsub reassoc nsz arcp contract afn float %i.hk, %i.gn
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hl, %i.gc ; 9 uses
  %i.hn = icmp sgt i32 %i.gu, 0
  br i1 %i.hn, label %.lr.ph.i20, label %.preheader.i16

.lr.ph.i20:                                       ; preds = %bb.o
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 108 ; 13 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 236 ; 9 uses
  %i.hq = load float, ptr %i.ho, align 4, !tbaa !24 ; 4 uses
  %i.hr = icmp sgt i32 %.fr121.i, 1
  %wide.trip.count.i.i = zext nneg i32 %.fr121.i to i64 ; 6 uses
  %i.hs = sext i32 %.fr121.i to i64               ; 3 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.hp, i64 %i.hs ; 3 uses
  %i.ht = getelementptr i8, ptr %invariant.gep.i, i64 -4 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 364 ; 9 uses
  br i1 %i.hr, label %.split42.us.us.preheader.i, label %.split42.preheader.i

.split42.preheader.i:                             ; preds = %.lr.ph.i20
  %i.hv = getelementptr i8, ptr %invariant.gep.i, i64 60 ; 2 uses
  %i.hw = getelementptr i8, ptr %invariant.gep.i, i64 124 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 300 ; 2 uses
  %i.hy = insertelement <2 x float> poison, float %i.hh, i64 1
  br label %.split42.i

.split42.us.us.preheader.i:                       ; preds = %.lr.ph.i20
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 300 ; 7 uses
  %i.ia = getelementptr [4 x i8], ptr %i.hz, i64 %i.hs
  %i.ib = getelementptr i8, ptr %i.ia, i64 -4     ; 2 uses
  %i.ic = getelementptr [4 x i8], ptr %i.hu, i64 %i.hs
  %i.id = getelementptr i8, ptr %i.ic, i64 -4     ; 2 uses
  %i.ie = insertelement <2 x float> poison, float %i.hh, i64 1 ; 2 uses
  %i.if = insertelement <2 x float> poison, float %i.hm, i64 1
  br label %.split42.us.us.i

.split42.us.us.i:                                 ; preds = %.split18.us.us.us.i.1, %.split42.us.us.preheader.i
  %.017551.us.i = phi i32 [ %i.oc, %.split18.us.us.us.i.1 ], [ 0, %.split42.us.us.preheader.i ] ; 2 uses
  %i.ig = phi <4 x float> [ %i.ob, %.split18.us.us.us.i.1 ], [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %.split42.us.us.preheader.i ] ; 6 uses
  %i.ih = add nsw i32 %.017551.us.i, %i.gq
  %i.ii = sitofp reassoc nsz arcp contract afn i32 %i.ih to float
  %i.ij = fsub reassoc nsz arcp contract afn float %i.ii, %i.gm
  %i.ik = fmul reassoc nsz arcp contract afn float %i.ij, %i.gc ; 10 uses
  %i.il = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.ik, float noundef %i.hh) #32
  %i.im = fmul reassoc nsz arcp contract afn float %i.il, %i.gp ; 10 uses
  %i.in = fcmp reassoc nsz arcp contract afn olt float %i.im, %i.hq
  br i1 %i.in, label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.us.preheader.i, label %.lr.ph.i.us.us.us.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.us.preheader.i: ; preds = %.split42.us.us.i
  %i.io = load float, ptr %i.hp, align 4, !tbaa !24
  %i.ip = load float, ptr %i.hz, align 4, !tbaa !24
  %i.iq = insertelement <2 x float> poison, float %i.io, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = insertelement <2 x float> %i.ie, float %i.ik, i64 0 ; 2 uses
  %i.it = fmul reassoc nsz arcp contract afn <2 x float> %i.ir, %i.is
  %i.iu = fadd reassoc nsz arcp contract afn <2 x float> %i.it, %i.gl
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.iw = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ig, %i.iv
  %i.ix = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ig, %i.iv
  %i.iy = shufflevector <4 x i1> %i.iw, <4 x i1> %i.ix, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.iz = select <4 x i1> %i.iy, <4 x float> %i.ig, <4 x float> %i.iv ; 3 uses
  %i.ja = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = fmul reassoc nsz arcp contract afn <2 x float> %i.jb, %i.is
  %i.jd = fadd reassoc nsz arcp contract afn <2 x float> %i.jc, %i.gl
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.jf = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.iz, %i.je
  %i.jg = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.iz, %i.je
  %i.jh = shufflevector <4 x i1> %i.jf, <4 x i1> %i.jg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ji = select <4 x i1> %i.jh, <4 x float> %i.iz, <4 x float> %i.je
  %i.jj = load float, ptr %i.hu, align 4, !tbaa !24
  br label %.split18.us.us.us.i

.split18.us.us.us.i:                              ; preds = %._crit_edge.i.loopexit.us.us.us.2.i, %bb.af, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.us.preheader.i
  %.1.i.us28.us.us.2.sink260.i = phi float [ %i.jj, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.us.preheader.i ], [ %i.qv, %bb.af ], [ %i.qw, %._crit_edge.i.loopexit.us.us.us.2.i ] ; 2 uses
  %i.jk = phi <4 x float> [ %i.ji, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.us.preheader.i ], [ %i.qe, %bb.af ], [ %i.qe, %._crit_edge.i.loopexit.us.us.us.2.i ] ; 3 uses
  %i.jl = fmul reassoc nsz arcp contract afn float %.1.i.us28.us.us.2.sink260.i, %i.ik
  %i.jm = fmul reassoc nsz arcp contract afn float %.1.i.us28.us.us.2.sink260.i, %i.hh
  %i.jn = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.jo = insertelement <2 x float> %i.jn, float %i.jm, i64 1
  %i.jp = fadd reassoc nsz arcp contract afn <2 x float> %i.jo, %i.gl
  %i.jq = shufflevector <2 x float> %i.jp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.jr = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.jk, %i.jq
  %i.js = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.jk, %i.jq
  %i.jt = shufflevector <4 x i1> %i.jr, <4 x i1> %i.js, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ju = select <4 x i1> %i.jt, <4 x float> %i.jk, <4 x float> %i.jq ; 6 uses
  %i.jv = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.ik, float noundef %i.hm) #32
  %i.jw = fmul reassoc nsz arcp contract afn float %i.jv, %i.gp ; 10 uses
  %i.jx = fcmp reassoc nsz arcp contract afn olt float %i.jw, %i.hq
  br i1 %i.jx, label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.us.preheader.i.1, label %.lr.ph.i.us.us.us.i.1

.lr.ph.i.us.us.us.i.1:                            ; preds = %.split18.us.us.us.i, %bb.r
  %indvars.iv.i.us.us.us.i.1 = phi i64 [ %indvars.iv.next.i.us.us.us.i.1, %bb.r ], [ 1, %.split18.us.us.us.i ] ; 4 uses
  %i.jy = add nsw i64 %indvars.iv.i.us.us.us.i.1, -1 ; 2 uses
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.jy
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !24 ; 3 uses
  %i.kb = fcmp reassoc nsz arcp contract afn ult float %i.jw, %i.ka
  br i1 %i.kb, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.us.us.us.i.1
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.i.us.us.us.i.1
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !24 ; 2 uses
  %i.ke = fcmp reassoc nsz arcp contract afn ugt float %i.jw, %i.kd
  br i1 %i.ke, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv.i.us.us.us.i.1
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !24
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.jy
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !24 ; 2 uses
  %i.kj = fsub reassoc nsz arcp contract afn float %i.kg, %i.ki
  %i.kk = fsub reassoc nsz arcp contract afn float %i.kd, %i.ka
  %i.kl = fsub reassoc nsz arcp contract afn float %i.jw, %i.ka
  %i.km = fmul reassoc nsz arcp contract afn float %i.kj, %i.kl
  %i.kn = fdiv reassoc nsz arcp contract afn float %i.km, %i.kk
  %i.ko = fadd reassoc nsz arcp contract afn float %i.kn, %i.ki
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.i.1

bb.r:                                             ; preds = %bb.p, %.lr.ph.i.us.us.us.i.1
  %indvars.iv.next.i.us.us.us.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.i.1, 1 ; 2 uses
  %exitcond.not.i.us.us.us.i.1 = icmp eq i64 %indvars.iv.next.i.us.us.us.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.us.us.i.1, label %._crit_edge.i.loopexit.us.us.us.i.1, label %.lr.ph.i.us.us.us.i.1, !llvm.loop !199

._crit_edge.i.loopexit.us.us.us.i.1:              ; preds = %bb.r
  %i.kp = load float, ptr %i.ht, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.i.1

_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.i.1: ; preds = %._crit_edge.i.loopexit.us.us.us.i.1, %bb.q
  %.1.i.us28.us.us.i.1 = phi nsz float [ %i.ko, %bb.q ], [ %i.kp, %._crit_edge.i.loopexit.us.us.us.i.1 ] ; 2 uses
  %i.kq = fmul reassoc nsz arcp contract afn float %.1.i.us28.us.us.i.1, %i.ik
  %i.kr = fmul reassoc nsz arcp contract afn float %.1.i.us28.us.us.i.1, %i.hm
  %i.ks = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.kt = insertelement <2 x float> %i.ks, float %i.kr, i64 1
  %i.ku = fadd reassoc nsz arcp contract afn <2 x float> %i.kt, %i.gl
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.kw = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ju, %i.kv
  %i.kx = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ju, %i.kv
  %i.ky = shufflevector <4 x i1> %i.kw, <4 x i1> %i.kx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.kz = select <4 x i1> %i.ky, <4 x float> %i.ju, <4 x float> %i.kv ; 3 uses
  br label %.lr.ph.i.us.us.us.1.i.1

.lr.ph.i.us.us.us.1.i.1:                          ; preds = %bb.u, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.i.1
  %indvars.iv.i.us.us.us.1.i.1 = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.i.1 ], [ %indvars.iv.next.i.us.us.us.1.i.1, %bb.u ] ; 4 uses
  %i.la = add nsw i64 %indvars.iv.i.us.us.us.1.i.1, -1 ; 2 uses
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.la
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !24 ; 3 uses
  %i.ld = fcmp reassoc nsz arcp contract afn ult float %i.jw, %i.lc
  br i1 %i.ld, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.us.us.us.1.i.1
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.i.us.us.us.1.i.1
  %i.lf = load float, ptr %i.le, align 4, !tbaa !24 ; 2 uses
  %i.lg = fcmp reassoc nsz arcp contract afn ugt float %i.jw, %i.lf
  br i1 %i.lg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv.i.us.us.us.1.i.1
  %i.li = load float, ptr %i.lh, align 4, !tbaa !24
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.la
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !24 ; 2 uses
  %i.ll = fsub reassoc nsz arcp contract afn float %i.li, %i.lk
  %i.lm = fsub reassoc nsz arcp contract afn float %i.lf, %i.lc
  %i.ln = fsub reassoc nsz arcp contract afn float %i.jw, %i.lc
  %i.lo = fmul reassoc nsz arcp contract afn float %i.ll, %i.ln
  %i.lp = fdiv reassoc nsz arcp contract afn float %i.lo, %i.lm
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lp, %i.lk
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.1.i.1

bb.u:                                             ; preds = %bb.s, %.lr.ph.i.us.us.us.1.i.1
  %indvars.iv.next.i.us.us.us.1.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.1.i.1, 1 ; 2 uses
  %exitcond.not.i.us.us.us.1.i.1 = icmp eq i64 %indvars.iv.next.i.us.us.us.1.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.us.us.1.i.1, label %._crit_edge.i.loopexit.us.us.us.1.i.1, label %.lr.ph.i.us.us.us.1.i.1, !llvm.loop !199

._crit_edge.i.loopexit.us.us.us.1.i.1:            ; preds = %bb.u
  %i.lr = load float, ptr %i.ib, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.1.i.1

_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.1.i.1: ; preds = %._crit_edge.i.loopexit.us.us.us.1.i.1, %bb.t
  %.1.i.us28.us.us.1.i.1 = phi nsz float [ %i.lq, %bb.t ], [ %i.lr, %._crit_edge.i.loopexit.us.us.us.1.i.1 ] ; 2 uses
  %i.ls = fmul reassoc nsz arcp contract afn float %.1.i.us28.us.us.1.i.1, %i.ik
  %i.lt = fmul reassoc nsz arcp contract afn float %.1.i.us28.us.us.1.i.1, %i.hm
  %i.lu = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.lv = insertelement <2 x float> %i.lu, float %i.lt, i64 1
  %i.lw = fadd reassoc nsz arcp contract afn <2 x float> %i.lv, %i.gl
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ly = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.kz, %i.lx
  %i.lz = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.kz, %i.lx
  %i.ma = shufflevector <4 x i1> %i.ly, <4 x i1> %i.lz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.mb = select <4 x i1> %i.ma, <4 x float> %i.kz, <4 x float> %i.lx ; 2 uses
  br label %.lr.ph.i.us.us.us.2.i.1

.lr.ph.i.us.us.us.2.i.1:                          ; preds = %bb.x, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.1.i.1
  %indvars.iv.i.us.us.us.2.i.1 = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.1.i.1 ], [ %indvars.iv.next.i.us.us.us.2.i.1, %bb.x ] ; 4 uses
  %i.mc = add nsw i64 %indvars.iv.i.us.us.us.2.i.1, -1 ; 2 uses
  %i.md = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.mc
  %i.me = load float, ptr %i.md, align 4, !tbaa !24 ; 3 uses
  %i.mf = fcmp reassoc nsz arcp contract afn ult float %i.jw, %i.me
  br i1 %i.mf, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.us.us.us.2.i.1
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.i.us.us.us.2.i.1
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !24 ; 2 uses
  %i.mi = fcmp reassoc nsz arcp contract afn ugt float %i.jw, %i.mh
  br i1 %i.mi, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %indvars.iv.i.us.us.us.2.i.1
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !24
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.mc
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !24 ; 2 uses
  %i.mn = fsub reassoc nsz arcp contract afn float %i.mk, %i.mm
  %i.mo = fsub reassoc nsz arcp contract afn float %i.mh, %i.me
  %i.mp = fsub reassoc nsz arcp contract afn float %i.jw, %i.me
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mn, %i.mp
  %i.mr = fdiv reassoc nsz arcp contract afn float %i.mq, %i.mo
  %i.ms = fadd reassoc nsz arcp contract afn float %i.mr, %i.mm
  br label %.split18.us.us.us.i.1

bb.x:                                             ; preds = %bb.v, %.lr.ph.i.us.us.us.2.i.1
  %indvars.iv.next.i.us.us.us.2.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.2.i.1, 1 ; 2 uses
  %exitcond.not.i.us.us.us.2.i.1 = icmp eq i64 %indvars.iv.next.i.us.us.us.2.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.us.us.2.i.1, label %._crit_edge.i.loopexit.us.us.us.2.i.1, label %.lr.ph.i.us.us.us.2.i.1, !llvm.loop !199

._crit_edge.i.loopexit.us.us.us.2.i.1:            ; preds = %bb.x
  %i.mt = load float, ptr %i.id, align 4, !tbaa !24
  br label %.split18.us.us.us.i.1

_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.us.preheader.i.1: ; preds = %.split18.us.us.us.i
  %i.mu = load float, ptr %i.hp, align 4, !tbaa !24 ; 2 uses
  %i.mv = load float, ptr %i.hz, align 4, !tbaa !24
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mu, %i.hm
  %i.mx = fmul reassoc nsz arcp contract afn float %i.mu, %i.ik
  %i.my = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.mz = insertelement <2 x float> %i.my, float %i.mw, i64 1
  %i.na = fadd reassoc nsz arcp contract afn <2 x float> %i.mz, %i.gl
  %i.nb = shufflevector <2 x float> %i.na, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.nc = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ju, %i.nb
  %i.nd = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ju, %i.nb
  %i.ne = shufflevector <4 x i1> %i.nc, <4 x i1> %i.nd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.nf = select <4 x i1> %i.ne, <4 x float> %i.ju, <4 x float> %i.nb ; 3 uses
  %i.ng = insertelement <2 x float> poison, float %i.mv, i64 0
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ni = insertelement <2 x float> %i.if, float %i.ik, i64 0
  %i.nj = fmul reassoc nsz arcp contract afn <2 x float> %i.nh, %i.ni
  %i.nk = fadd reassoc nsz arcp contract afn <2 x float> %i.nj, %i.gl
  %i.nl = shufflevector <2 x float> %i.nk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.nm = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.nf, %i.nl
  %i.nn = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.nf, %i.nl
  %i.no = shufflevector <4 x i1> %i.nm, <4 x i1> %i.nn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.np = select <4 x i1> %i.no, <4 x float> %i.nf, <4 x float> %i.nl
  %i.nq = load float, ptr %i.hu, align 4, !tbaa !24
  br label %.split18.us.us.us.i.1

.split18.us.us.us.i.1:                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.us.preheader.i.1, %._crit_edge.i.loopexit.us.us.us.2.i.1, %bb.w
  %.1.i.us28.us.us.2.sink260.i.1 = phi float [ %i.nq, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.us.preheader.i.1 ], [ %i.ms, %bb.w ], [ %i.mt, %._crit_edge.i.loopexit.us.us.us.2.i.1 ] ; 2 uses
  %i.nr = phi <4 x float> [ %i.np, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.us.preheader.i.1 ], [ %i.mb, %bb.w ], [ %i.mb, %._crit_edge.i.loopexit.us.us.us.2.i.1 ] ; 3 uses
  %i.ns = fmul reassoc nsz arcp contract afn float %.1.i.us28.us.us.2.sink260.i.1, %i.ik
  %i.nt = fmul reassoc nsz arcp contract afn float %.1.i.us28.us.us.2.sink260.i.1, %i.hm
  %i.nu = insertelement <2 x float> poison, float %i.ns, i64 0
  %i.nv = insertelement <2 x float> %i.nu, float %i.nt, i64 1
  %i.nw = fadd reassoc nsz arcp contract afn <2 x float> %i.nv, %i.gl
  %i.nx = shufflevector <2 x float> %i.nw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ny = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.nr, %i.nx
  %i.nz = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.nr, %i.nx
  %i.oa = shufflevector <4 x i1> %i.ny, <4 x i1> %i.nz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ob = select <4 x i1> %i.oa, <4 x float> %i.nr, <4 x float> %i.nx ; 2 uses
  %i.oc = add nuw nsw i32 %.017551.us.i, 1        ; 2 uses
  %exitcond175.not.i = icmp eq i32 %i.oc, %i.gu
  br i1 %exitcond175.not.i, label %.preheader.i16, label %.split42.us.us.i, !llvm.loop !239

.lr.ph.i.us.us.us.i:                              ; preds = %.split42.us.us.i, %bb.z
  %indvars.iv.i.us.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.us.i, %bb.z ], [ 1, %.split42.us.us.i ] ; 4 uses
  %i.od = add nsw i64 %indvars.iv.i.us.us.us.i, -1 ; 2 uses
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.od
  %i.of = load float, ptr %i.oe, align 4, !tbaa !24 ; 3 uses
  %i.og = fcmp reassoc nsz arcp contract afn ult float %i.im, %i.of
  br i1 %i.og, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.us.us.us.i
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.i.us.us.us.i
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !24 ; 2 uses
  %i.oj = fcmp reassoc nsz arcp contract afn ugt float %i.im, %i.oi
  br i1 %i.oj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %.lr.ph.i.us.us.us.i
  %indvars.iv.next.i.us.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.us.us.i, label %._crit_edge.i.loopexit.us.us.us.i, label %.lr.ph.i.us.us.us.i, !llvm.loop !199

bb.aa:                                            ; preds = %bb.y
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv.i.us.us.us.i
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !24
  %i.om = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.od
  %i.on = load float, ptr %i.om, align 4, !tbaa !24 ; 2 uses
  %i.oo = fsub reassoc nsz arcp contract afn float %i.ol, %i.on
  %i.op = fsub reassoc nsz arcp contract afn float %i.oi, %i.of
  %i.oq = fsub reassoc nsz arcp contract afn float %i.im, %i.of
  %i.or = fmul reassoc nsz arcp contract afn float %i.oo, %i.oq
  %i.os = fdiv reassoc nsz arcp contract afn float %i.or, %i.op
  %i.ot = fadd reassoc nsz arcp contract afn float %i.os, %i.on
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.i: ; preds = %._crit_edge.i.loopexit.us.us.us.i, %bb.aa
  %.1.i.us28.us.us.i = phi nsz float [ %i.ot, %bb.aa ], [ %i.qx, %._crit_edge.i.loopexit.us.us.us.i ]
  %i.ou = insertelement <2 x float> poison, float %.1.i.us28.us.us.i, i64 0
  %i.ov = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ow = insertelement <2 x float> %i.ie, float %i.ik, i64 0 ; 2 uses
  %i.ox = fmul reassoc nsz arcp contract afn <2 x float> %i.ov, %i.ow
  %i.oy = fadd reassoc nsz arcp contract afn <2 x float> %i.ox, %i.gl
  %i.oz = shufflevector <2 x float> %i.oy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.pa = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ig, %i.oz
  %i.pb = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ig, %i.oz
  %i.pc = shufflevector <4 x i1> %i.pa, <4 x i1> %i.pb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.pd = select <4 x i1> %i.pc, <4 x float> %i.ig, <4 x float> %i.oz ; 3 uses
  br label %.lr.ph.i.us.us.us.1.i

.lr.ph.i.us.us.us.1.i:                            ; preds = %bb.ad, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.i
  %indvars.iv.i.us.us.us.1.i = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.i ], [ %indvars.iv.next.i.us.us.us.1.i, %bb.ad ] ; 4 uses
  %i.pe = add nsw i64 %indvars.iv.i.us.us.us.1.i, -1 ; 2 uses
  %i.pf = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.pe
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !24 ; 3 uses
  %i.ph = fcmp reassoc nsz arcp contract afn ult float %i.im, %i.pg
  br i1 %i.ph, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.us.us.us.1.i
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.i.us.us.us.1.i
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !24 ; 2 uses
  %i.pk = fcmp reassoc nsz arcp contract afn ugt float %i.im, %i.pj
  br i1 %i.pk, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv.i.us.us.us.1.i
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !24
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.pe
  %i.po = load float, ptr %i.pn, align 4, !tbaa !24 ; 2 uses
  %i.pp = fsub reassoc nsz arcp contract afn float %i.pm, %i.po
  %i.pq = fsub reassoc nsz arcp contract afn float %i.pj, %i.pg
  %i.pr = fsub reassoc nsz arcp contract afn float %i.im, %i.pg
  %i.ps = fmul reassoc nsz arcp contract afn float %i.pp, %i.pr
  %i.pt = fdiv reassoc nsz arcp contract afn float %i.ps, %i.pq
  %i.pu = fadd reassoc nsz arcp contract afn float %i.pt, %i.po
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.1.i

bb.ad:                                            ; preds = %bb.ab, %.lr.ph.i.us.us.us.1.i
  %indvars.iv.next.i.us.us.us.1.i = add nuw nsw i64 %indvars.iv.i.us.us.us.1.i, 1 ; 2 uses
  %exitcond.not.i.us.us.us.1.i = icmp eq i64 %indvars.iv.next.i.us.us.us.1.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.us.us.1.i, label %._crit_edge.i.loopexit.us.us.us.1.i, label %.lr.ph.i.us.us.us.1.i, !llvm.loop !199

._crit_edge.i.loopexit.us.us.us.1.i:              ; preds = %bb.ad
  %i.pv = load float, ptr %i.ib, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.1.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.1.i: ; preds = %._crit_edge.i.loopexit.us.us.us.1.i, %bb.ac
  %.1.i.us28.us.us.1.i = phi nsz float [ %i.pu, %bb.ac ], [ %i.pv, %._crit_edge.i.loopexit.us.us.us.1.i ]
  %i.pw = insertelement <2 x float> poison, float %.1.i.us28.us.us.1.i, i64 0
  %i.px = shufflevector <2 x float> %i.pw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.py = fmul reassoc nsz arcp contract afn <2 x float> %i.px, %i.ow
  %i.pz = fadd reassoc nsz arcp contract afn <2 x float> %i.py, %i.gl
  %i.qa = shufflevector <2 x float> %i.pz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.qb = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.pd, %i.qa
  %i.qc = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.pd, %i.qa
  %i.qd = shufflevector <4 x i1> %i.qb, <4 x i1> %i.qc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qe = select <4 x i1> %i.qd, <4 x float> %i.pd, <4 x float> %i.qa ; 2 uses
  br label %.lr.ph.i.us.us.us.2.i

.lr.ph.i.us.us.us.2.i:                            ; preds = %bb.ag, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.1.i
  %indvars.iv.i.us.us.us.2.i = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.1.i ], [ %indvars.iv.next.i.us.us.us.2.i, %bb.ag ] ; 4 uses
  %i.qf = add nsw i64 %indvars.iv.i.us.us.us.2.i, -1 ; 2 uses
  %i.qg = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.qf
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !24 ; 3 uses
  %i.qi = fcmp reassoc nsz arcp contract afn ult float %i.im, %i.qh
  br i1 %i.qi, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.us.us.us.2.i
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.i.us.us.us.2.i
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !24 ; 2 uses
  %i.ql = fcmp reassoc nsz arcp contract afn ugt float %i.im, %i.qk
  br i1 %i.ql, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %indvars.iv.i.us.us.us.2.i
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !24
  %i.qo = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.qf
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !24 ; 2 uses
  %i.qq = fsub reassoc nsz arcp contract afn float %i.qn, %i.qp
  %i.qr = fsub reassoc nsz arcp contract afn float %i.qk, %i.qh
  %i.qs = fsub reassoc nsz arcp contract afn float %i.im, %i.qh
  %i.qt = fmul reassoc nsz arcp contract afn float %i.qq, %i.qs
  %i.qu = fdiv reassoc nsz arcp contract afn float %i.qt, %i.qr
  %i.qv = fadd reassoc nsz arcp contract afn float %i.qu, %i.qp
  br label %.split18.us.us.us.i

bb.ag:                                            ; preds = %bb.ae, %.lr.ph.i.us.us.us.2.i
  %indvars.iv.next.i.us.us.us.2.i = add nuw nsw i64 %indvars.iv.i.us.us.us.2.i, 1 ; 2 uses
  %exitcond.not.i.us.us.us.2.i = icmp eq i64 %indvars.iv.next.i.us.us.us.2.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.us.us.2.i, label %._crit_edge.i.loopexit.us.us.us.2.i, label %.lr.ph.i.us.us.us.2.i, !llvm.loop !199

._crit_edge.i.loopexit.us.us.us.2.i:              ; preds = %bb.ag
  %i.qw = load float, ptr %i.id, align 4, !tbaa !24
  br label %.split18.us.us.us.i

._crit_edge.i.loopexit.us.us.us.i:                ; preds = %bb.z
  %i.qx = load float, ptr %i.ht, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.i

.preheader.i16:                                   ; preds = %.split42.i, %.split18.us.us.us.i.1, %bb.o
  %i.qy = phi <4 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %bb.o ], [ %i.ob, %.split18.us.us.us.i.1 ], [ %i.adg, %.split42.i ] ; 3 uses
  %i.qz = icmp sgt i32 %i.gw, 0
  %i.ra = shufflevector <4 x float> %i.qy, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.rb = shufflevector <4 x float> %i.qy, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  br i1 %i.qz, label %.lr.ph112.i, label %._crit_edge.i18

.lr.ph112.i:                                      ; preds = %.preheader.i16
  %i.rc = getelementptr inbounds nuw i8, ptr %i.b, i64 108 ; 13 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.b, i64 236 ; 9 uses
  %i.re = load float, ptr %i.rc, align 4, !tbaa !24 ; 4 uses
  %i.rf = icmp sgt i32 %.fr121.i, 1
  %wide.trip.count.i196.i = zext nneg i32 %.fr121.i to i64 ; 6 uses
  %i.rg = sext i32 %.fr121.i to i64               ; 3 uses
  %invariant.gep90.i = getelementptr [4 x i8], ptr %i.rd, i64 %i.rg ; 3 uses
  %i.rh = getelementptr i8, ptr %invariant.gep90.i, i64 -4 ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.b, i64 364 ; 9 uses
  br i1 %i.rf, label %.split97.us.us.preheader.i, label %.split97.preheader.i

.split97.preheader.i:                             ; preds = %.lr.ph112.i
  %i.rj = getelementptr i8, ptr %invariant.gep90.i, i64 60 ; 2 uses
  %i.rk = getelementptr i8, ptr %invariant.gep90.i, i64 124 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.b, i64 300 ; 2 uses
  %i.rm = insertelement <2 x float> poison, float %i.he, i64 0
  %i.rn = insertelement <2 x float> poison, float %i.gz, i64 0
  br label %.split97.i

.split97.us.us.preheader.i:                       ; preds = %.lr.ph112.i
  %i.ro = getelementptr inbounds nuw i8, ptr %i.b, i64 300 ; 7 uses
  %i.rp = getelementptr [4 x i8], ptr %i.ro, i64 %i.rg
  %i.rq = getelementptr i8, ptr %i.rp, i64 -4     ; 2 uses
  %i.rr = getelementptr [4 x i8], ptr %i.ri, i64 %i.rg
  %i.rs = getelementptr i8, ptr %i.rr, i64 -4     ; 2 uses
  %i.rt = insertelement <2 x float> poison, float %i.he, i64 0
  %i.ru = insertelement <2 x float> poison, float %i.gz, i64 0
  br label %.split97.us.us.i

.split97.us.us.i:                                 ; preds = %.split70.us.us.us.i.1, %.split97.us.us.preheader.i
  %.0180107.us.i = phi i32 [ %i.xp, %.split70.us.us.us.i.1 ], [ 0, %.split97.us.us.preheader.i ] ; 2 uses
  %i.rv = phi <4 x float> [ %i.xq, %.split70.us.us.us.i.1 ], [ %i.qy, %.split97.us.us.preheader.i ] ; 6 uses
  %i.rw = add nsw i32 %.0180107.us.i, %i.gs
  %i.rx = sitofp reassoc nsz arcp contract afn i32 %i.rw to float
  %i.ry = fsub reassoc nsz arcp contract afn float %i.rx, %i.gn
  %i.rz = fmul reassoc nsz arcp contract afn float %i.ry, %i.gc ; 12 uses
  %i.sa = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.gz, float noundef %i.rz) #32
  %i.sb = fmul reassoc nsz arcp contract afn float %i.sa, %i.gp ; 10 uses
  %i.sc = fcmp reassoc nsz arcp contract afn olt float %i.sb, %i.re
  br i1 %i.sc, label %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i, label %.lr.ph.i197.us.us.us.i

_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i: ; preds = %.split97.us.us.i
  %i.sd = load float, ptr %i.rd, align 4, !tbaa !24 ; 2 uses
  %i.se = load float, ptr %i.ro, align 4, !tbaa !24
  %i.sf = fmul reassoc nsz arcp contract afn float %i.sd, %i.rz
  %i.sg = fmul reassoc nsz arcp contract afn float %i.sd, %i.gz
  %i.sh = insertelement <2 x float> poison, float %i.sg, i64 0
  %i.si = insertelement <2 x float> %i.sh, float %i.sf, i64 1
  %i.sj = fadd reassoc nsz arcp contract afn <2 x float> %i.si, %i.gl
  %i.sk = shufflevector <2 x float> %i.sj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.sl = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.rv, %i.sk
  %i.sm = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.rv, %i.sk
  %i.sn = shufflevector <4 x i1> %i.sl, <4 x i1> %i.sm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.so = select <4 x i1> %i.sn, <4 x float> %i.rv, <4 x float> %i.sk ; 3 uses
  %i.sp = insertelement <2 x float> poison, float %i.se, i64 0
  %i.sq = shufflevector <2 x float> %i.sp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sr = insertelement <2 x float> %i.ru, float %i.rz, i64 1
  %i.ss = fmul reassoc nsz arcp contract afn <2 x float> %i.sq, %i.sr
  %i.st = fadd reassoc nsz arcp contract afn <2 x float> %i.ss, %i.gl
  %i.su = shufflevector <2 x float> %i.st, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.sv = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.so, %i.su
  %i.sw = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.so, %i.su
  %i.sx = shufflevector <4 x i1> %i.sv, <4 x i1> %i.sw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.sy = select <4 x i1> %i.sx, <4 x float> %i.so, <4 x float> %i.su
  %i.sz = load float, ptr %i.ri, align 4, !tbaa !24
  br label %.split70.us.us.us.i

.split70.us.us.us.i:                              ; preds = %._crit_edge.i193.loopexit.us.us.us.2.i, %bb.ax, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i
  %.1.i194.us81.us.us.2.sink277.i = phi float [ %i.sz, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i ], [ %i.aak, %bb.ax ], [ %i.aal, %._crit_edge.i193.loopexit.us.us.us.2.i ] ; 2 uses
  %i.ta = phi <4 x float> [ %i.sy, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i ], [ %i.zt, %bb.ax ], [ %i.zt, %._crit_edge.i193.loopexit.us.us.us.2.i ] ; 2 uses
  %i.tb = fmul reassoc nsz arcp contract afn float %.1.i194.us81.us.us.2.sink277.i, %i.gz
  %i.tc = fmul reassoc nsz arcp contract afn float %.1.i194.us81.us.us.2.sink277.i, %i.rz
  %i.td = insertelement <2 x float> poison, float %i.tb, i64 0
  %i.te = insertelement <2 x float> %i.td, float %i.tc, i64 1
  %i.tf = fadd reassoc nsz arcp contract afn <2 x float> %i.te, %i.gl ; 4 uses
  %i.tg = shufflevector <4 x float> %i.ta, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.th = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.tg, %i.tf
  %i.ti = shufflevector <4 x float> %i.ta, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.tj = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ti, %i.tf
  %i.tk = select <2 x i1> %i.th, <2 x float> %i.tg, <2 x float> %i.tf ; 4 uses
  %i.tl = select <2 x i1> %i.tj, <2 x float> %i.ti, <2 x float> %i.tf ; 4 uses
  %i.tm = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.he, float noundef %i.rz) #32
  %i.tn = fmul reassoc nsz arcp contract afn float %i.tm, %i.gp ; 10 uses
  %i.to = fcmp reassoc nsz arcp contract afn olt float %i.tn, %i.re
  br i1 %i.to, label %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i.1, label %.lr.ph.i197.us.us.us.i.1

.lr.ph.i197.us.us.us.i.1:                         ; preds = %.split70.us.us.us.i, %bb.aj
  %indvars.iv.i198.us.us.us.i.1 = phi i64 [ %indvars.iv.next.i199.us.us.us.i.1, %bb.aj ], [ 1, %.split70.us.us.us.i ] ; 4 uses
  %i.tp = add nsw i64 %indvars.iv.i198.us.us.us.i.1, -1 ; 2 uses
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.tp
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !24 ; 3 uses
  %i.ts = fcmp reassoc nsz arcp contract afn ult float %i.tn, %i.tr
  br i1 %i.ts, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i197.us.us.us.i.1
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %indvars.iv.i198.us.us.us.i.1
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !24 ; 2 uses
  %i.tv = fcmp reassoc nsz arcp contract afn ugt float %i.tn, %i.tu
  br i1 %i.tv, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv.i198.us.us.us.i.1
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !24
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.tp
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !24 ; 2 uses
  %i.ua = fsub reassoc nsz arcp contract afn float %i.tx, %i.tz
  %i.ub = fsub reassoc nsz arcp contract afn float %i.tu, %i.tr
  %i.uc = fsub reassoc nsz arcp contract afn float %i.tn, %i.tr
  %i.ud = fmul reassoc nsz arcp contract afn float %i.ua, %i.uc
  %i.ue = fdiv reassoc nsz arcp contract afn float %i.ud, %i.ub
  %i.uf = fadd reassoc nsz arcp contract afn float %i.ue, %i.tz
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.i.1

bb.aj:                                            ; preds = %bb.ah, %.lr.ph.i197.us.us.us.i.1
  %indvars.iv.next.i199.us.us.us.i.1 = add nuw nsw i64 %indvars.iv.i198.us.us.us.i.1, 1 ; 2 uses
  %exitcond.not.i200.us.us.us.i.1 = icmp eq i64 %indvars.iv.next.i199.us.us.us.i.1, %wide.trip.count.i196.i
  br i1 %exitcond.not.i200.us.us.us.i.1, label %._crit_edge.i193.loopexit.us.us.us.i.1, label %.lr.ph.i197.us.us.us.i.1, !llvm.loop !199

._crit_edge.i193.loopexit.us.us.us.i.1:           ; preds = %bb.aj
  %i.ug = load float, ptr %i.rh, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.i.1

_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.i.1: ; preds = %._crit_edge.i193.loopexit.us.us.us.i.1, %bb.ai
  %.1.i194.us81.us.us.i.1 = phi nsz float [ %i.uf, %bb.ai ], [ %i.ug, %._crit_edge.i193.loopexit.us.us.us.i.1 ] ; 2 uses
  %i.uh = fmul reassoc nsz arcp contract afn float %.1.i194.us81.us.us.i.1, %i.he
  %i.ui = fmul reassoc nsz arcp contract afn float %.1.i194.us81.us.us.i.1, %i.rz
  %i.uj = insertelement <2 x float> poison, float %i.uh, i64 0
  %i.uk = insertelement <2 x float> %i.uj, float %i.ui, i64 1
  %i.ul = fadd reassoc nsz arcp contract afn <2 x float> %i.uk, %i.gl ; 4 uses
  %i.um = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.tk, %i.ul
  %i.un = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.tl, %i.ul
  %i.uo = select <2 x i1> %i.um, <2 x float> %i.tk, <2 x float> %i.ul ; 2 uses
  %i.up = select <2 x i1> %i.un, <2 x float> %i.tl, <2 x float> %i.ul ; 2 uses
  br label %.lr.ph.i197.us.us.us.1.i.1

.lr.ph.i197.us.us.us.1.i.1:                       ; preds = %bb.am, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.i.1
  %indvars.iv.i198.us.us.us.1.i.1 = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.i.1 ], [ %indvars.iv.next.i199.us.us.us.1.i.1, %bb.am ] ; 4 uses
  %i.uq = add nsw i64 %indvars.iv.i198.us.us.us.1.i.1, -1 ; 2 uses
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.uq
  %i.us = load float, ptr %i.ur, align 4, !tbaa !24 ; 3 uses
  %i.ut = fcmp reassoc nsz arcp contract afn ult float %i.tn, %i.us
  br i1 %i.ut, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i197.us.us.us.1.i.1
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %indvars.iv.i198.us.us.us.1.i.1
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !24 ; 2 uses
  %i.uw = fcmp reassoc nsz arcp contract afn ugt float %i.tn, %i.uv
  br i1 %i.uw, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %indvars.iv.i198.us.us.us.1.i.1
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !24
  %i.uz = getelementptr inbounds [4 x i8], ptr %i.ro, i64 %i.uq
  %i.va = load float, ptr %i.uz, align 4, !tbaa !24 ; 2 uses
  %i.vb = fsub reassoc nsz arcp contract afn float %i.uy, %i.va
  %i.vc = fsub reassoc nsz arcp contract afn float %i.uv, %i.us
  %i.vd = fsub reassoc nsz arcp contract afn float %i.tn, %i.us
  %i.ve = fmul reassoc nsz arcp contract afn float %i.vb, %i.vd
  %i.vf = fdiv reassoc nsz arcp contract afn float %i.ve, %i.vc
  %i.vg = fadd reassoc nsz arcp contract afn float %i.vf, %i.va
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.1.i.1

bb.am:                                            ; preds = %bb.ak, %.lr.ph.i197.us.us.us.1.i.1
  %indvars.iv.next.i199.us.us.us.1.i.1 = add nuw nsw i64 %indvars.iv.i198.us.us.us.1.i.1, 1 ; 2 uses
  %exitcond.not.i200.us.us.us.1.i.1 = icmp eq i64 %indvars.iv.next.i199.us.us.us.1.i.1, %wide.trip.count.i196.i
  br i1 %exitcond.not.i200.us.us.us.1.i.1, label %._crit_edge.i193.loopexit.us.us.us.1.i.1, label %.lr.ph.i197.us.us.us.1.i.1, !llvm.loop !199

._crit_edge.i193.loopexit.us.us.us.1.i.1:         ; preds = %bb.am
  %i.vh = load float, ptr %i.rq, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.1.i.1

_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.1.i.1: ; preds = %._crit_edge.i193.loopexit.us.us.us.1.i.1, %bb.al
  %.1.i194.us81.us.us.1.i.1 = phi nsz float [ %i.vg, %bb.al ], [ %i.vh, %._crit_edge.i193.loopexit.us.us.us.1.i.1 ] ; 2 uses
  %i.vi = fmul reassoc nsz arcp contract afn float %.1.i194.us81.us.us.1.i.1, %i.he
  %i.vj = fmul reassoc nsz arcp contract afn float %.1.i194.us81.us.us.1.i.1, %i.rz
  %i.vk = insertelement <2 x float> poison, float %i.vi, i64 0
  %i.vl = insertelement <2 x float> %i.vk, float %i.vj, i64 1
  %i.vm = fadd reassoc nsz arcp contract afn <2 x float> %i.vl, %i.gl ; 4 uses
  %i.vn = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.uo, %i.vm
  %i.vo = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.up, %i.vm
  %i.vp = select <2 x i1> %i.vn, <2 x float> %i.uo, <2 x float> %i.vm ; 2 uses
  %i.vq = select <2 x i1> %i.vo, <2 x float> %i.up, <2 x float> %i.vm ; 2 uses
  br label %.lr.ph.i197.us.us.us.2.i.1

.lr.ph.i197.us.us.us.2.i.1:                       ; preds = %bb.ap, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.1.i.1
  %indvars.iv.i198.us.us.us.2.i.1 = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.1.i.1 ], [ %indvars.iv.next.i199.us.us.us.2.i.1, %bb.ap ] ; 4 uses
  %i.vr = add nsw i64 %indvars.iv.i198.us.us.us.2.i.1, -1 ; 2 uses
  %i.vs = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.vr
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !24 ; 3 uses
  %i.vu = fcmp reassoc nsz arcp contract afn ult float %i.tn, %i.vt
  br i1 %i.vu, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i197.us.us.us.2.i.1
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %indvars.iv.i198.us.us.us.2.i.1
  %i.vw = load float, ptr %i.vv, align 4, !tbaa !24 ; 2 uses
  %i.vx = fcmp reassoc nsz arcp contract afn ugt float %i.tn, %i.vw
  br i1 %i.vx, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %indvars.iv.i198.us.us.us.2.i.1
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !24
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.ri, i64 %i.vr
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !24 ; 2 uses
  %i.wc = fsub reassoc nsz arcp contract afn float %i.vz, %i.wb
  %i.wd = fsub reassoc nsz arcp contract afn float %i.vw, %i.vt
  %i.we = fsub reassoc nsz arcp contract afn float %i.tn, %i.vt
  %i.wf = fmul reassoc nsz arcp contract afn float %i.wc, %i.we
  %i.wg = fdiv reassoc nsz arcp contract afn float %i.wf, %i.wd
  %i.wh = fadd reassoc nsz arcp contract afn float %i.wg, %i.wb
  br label %.split70.us.us.us.i.1

bb.ap:                                            ; preds = %bb.an, %.lr.ph.i197.us.us.us.2.i.1
  %indvars.iv.next.i199.us.us.us.2.i.1 = add nuw nsw i64 %indvars.iv.i198.us.us.us.2.i.1, 1 ; 2 uses
  %exitcond.not.i200.us.us.us.2.i.1 = icmp eq i64 %indvars.iv.next.i199.us.us.us.2.i.1, %wide.trip.count.i196.i
  br i1 %exitcond.not.i200.us.us.us.2.i.1, label %._crit_edge.i193.loopexit.us.us.us.2.i.1, label %.lr.ph.i197.us.us.us.2.i.1, !llvm.loop !199

._crit_edge.i193.loopexit.us.us.us.2.i.1:         ; preds = %bb.ap
  %i.wi = load float, ptr %i.rs, align 4, !tbaa !24
  br label %.split70.us.us.us.i.1

_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i.1: ; preds = %.split70.us.us.us.i
  %i.wj = load float, ptr %i.rd, align 4, !tbaa !24 ; 2 uses
  %i.wk = load float, ptr %i.ro, align 4, !tbaa !24
  %i.wl = fmul reassoc nsz arcp contract afn float %i.wj, %i.rz
  %i.wm = fmul reassoc nsz arcp contract afn float %i.wj, %i.he
  %i.wn = insertelement <2 x float> poison, float %i.wm, i64 0
  %i.wo = insertelement <2 x float> %i.wn, float %i.wl, i64 1
  %i.wp = fadd reassoc nsz arcp contract afn <2 x float> %i.wo, %i.gl ; 4 uses
  %i.wq = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.tk, %i.wp
  %i.wr = select <2 x i1> %i.wq, <2 x float> %i.tk, <2 x float> %i.wp ; 2 uses
  %i.ws = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.tl, %i.wp
  %i.wt = select <2 x i1> %i.ws, <2 x float> %i.tl, <2 x float> %i.wp ; 2 uses
  %i.wu = insertelement <2 x float> poison, float %i.wk, i64 0
  %i.wv = shufflevector <2 x float> %i.wu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ww = insertelement <2 x float> %i.rt, float %i.rz, i64 1
  %i.wx = fmul reassoc nsz arcp contract afn <2 x float> %i.wv, %i.ww
  %i.wy = fadd reassoc nsz arcp contract afn <2 x float> %i.wx, %i.gl ; 4 uses
  %i.wz = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.wr, %i.wy
  %i.xa = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.wt, %i.wy
  %i.xb = select <2 x i1> %i.wz, <2 x float> %i.wr, <2 x float> %i.wy
  %i.xc = select <2 x i1> %i.xa, <2 x float> %i.wt, <2 x float> %i.wy
  %i.xd = load float, ptr %i.ri, align 4, !tbaa !24
  br label %.split70.us.us.us.i.1

.split70.us.us.us.i.1:                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i.1, %._crit_edge.i193.loopexit.us.us.us.2.i.1, %bb.ao
  %.1.i194.us81.us.us.2.sink277.i.1 = phi float [ %i.xd, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i.1 ], [ %i.wh, %bb.ao ], [ %i.wi, %._crit_edge.i193.loopexit.us.us.us.2.i.1 ] ; 2 uses
  %i.xe = phi <2 x float> [ %i.xb, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i.1 ], [ %i.vp, %bb.ao ], [ %i.vp, %._crit_edge.i193.loopexit.us.us.us.2.i.1 ] ; 2 uses
  %i.xf = phi <2 x float> [ %i.xc, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i.1 ], [ %i.vq, %bb.ao ], [ %i.vq, %._crit_edge.i193.loopexit.us.us.us.2.i.1 ] ; 2 uses
  %i.xg = fmul reassoc nsz arcp contract afn float %.1.i194.us81.us.us.2.sink277.i.1, %i.he
  %i.xh = fmul reassoc nsz arcp contract afn float %.1.i194.us81.us.us.2.sink277.i.1, %i.rz
  %i.xi = insertelement <2 x float> poison, float %i.xg, i64 0
  %i.xj = insertelement <2 x float> %i.xi, float %i.xh, i64 1
  %i.xk = fadd reassoc nsz arcp contract afn <2 x float> %i.xj, %i.gl ; 4 uses
  %i.xl = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.xe, %i.xk
  %i.xm = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.xf, %i.xk
  %i.xn = select <2 x i1> %i.xl, <2 x float> %i.xe, <2 x float> %i.xk ; 2 uses
  %i.xo = select <2 x i1> %i.xm, <2 x float> %i.xf, <2 x float> %i.xk ; 2 uses
  %i.xp = add nuw nsw i32 %.0180107.us.i, 1       ; 2 uses
  %exitcond187.not.i = icmp eq i32 %i.xp, %i.gw
  %i.xq = shufflevector <2 x float> %i.xn, <2 x float> %i.xo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br i1 %exitcond187.not.i, label %._crit_edge.i18, label %.split97.us.us.i, !llvm.loop !240

.lr.ph.i197.us.us.us.i:                           ; preds = %.split97.us.us.i, %bb.ar
  %indvars.iv.i198.us.us.us.i = phi i64 [ %indvars.iv.next.i199.us.us.us.i, %bb.ar ], [ 1, %.split97.us.us.i ] ; 4 uses
  %i.xr = add nsw i64 %indvars.iv.i198.us.us.us.i, -1 ; 2 uses
  %i.xs = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.xr
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !24 ; 3 uses
  %i.xu = fcmp reassoc nsz arcp contract afn ult float %i.sb, %i.xt
  br i1 %i.xu, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i197.us.us.us.i
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %indvars.iv.i198.us.us.us.i
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !24 ; 2 uses
  %i.xx = fcmp reassoc nsz arcp contract afn ugt float %i.sb, %i.xw
  br i1 %i.xx, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.i197.us.us.us.i
  %indvars.iv.next.i199.us.us.us.i = add nuw nsw i64 %indvars.iv.i198.us.us.us.i, 1 ; 2 uses
  %exitcond.not.i200.us.us.us.i = icmp eq i64 %indvars.iv.next.i199.us.us.us.i, %wide.trip.count.i196.i
  br i1 %exitcond.not.i200.us.us.us.i, label %._crit_edge.i193.loopexit.us.us.us.i, label %.lr.ph.i197.us.us.us.i, !llvm.loop !199

bb.as:                                            ; preds = %bb.aq
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv.i198.us.us.us.i
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !24
  %i.ya = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.xr
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !24 ; 2 uses
  %i.yc = fsub reassoc nsz arcp contract afn float %i.xz, %i.yb
  %i.yd = fsub reassoc nsz arcp contract afn float %i.xw, %i.xt
  %i.ye = fsub reassoc nsz arcp contract afn float %i.sb, %i.xt
  %i.yf = fmul reassoc nsz arcp contract afn float %i.yc, %i.ye
  %i.yg = fdiv reassoc nsz arcp contract afn float %i.yf, %i.yd
  %i.yh = fadd reassoc nsz arcp contract afn float %i.yg, %i.yb
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.i

_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.i: ; preds = %._crit_edge.i193.loopexit.us.us.us.i, %bb.as
  %.1.i194.us81.us.us.i = phi nsz float [ %i.yh, %bb.as ], [ %i.aam, %._crit_edge.i193.loopexit.us.us.us.i ] ; 2 uses
  %i.yi = fmul reassoc nsz arcp contract afn float %.1.i194.us81.us.us.i, %i.gz
  %i.yj = fmul reassoc nsz arcp contract afn float %.1.i194.us81.us.us.i, %i.rz
  %i.yk = insertelement <2 x float> poison, float %i.yi, i64 0
  %i.yl = insertelement <2 x float> %i.yk, float %i.yj, i64 1
  %i.ym = fadd reassoc nsz arcp contract afn <2 x float> %i.yl, %i.gl
  %i.yn = shufflevector <2 x float> %i.ym, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.yo = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.rv, %i.yn
  %i.yp = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.rv, %i.yn
  %i.yq = shufflevector <4 x i1> %i.yo, <4 x i1> %i.yp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.yr = select <4 x i1> %i.yq, <4 x float> %i.rv, <4 x float> %i.yn ; 3 uses
  br label %.lr.ph.i197.us.us.us.1.i

.lr.ph.i197.us.us.us.1.i:                         ; preds = %bb.av, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.i
  %indvars.iv.i198.us.us.us.1.i = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.i ], [ %indvars.iv.next.i199.us.us.us.1.i, %bb.av ] ; 4 uses
  %i.ys = add nsw i64 %indvars.iv.i198.us.us.us.1.i, -1 ; 2 uses
  %i.yt = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.ys
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !24 ; 3 uses
  %i.yv = fcmp reassoc nsz arcp contract afn ult float %i.sb, %i.yu
  br i1 %i.yv, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i197.us.us.us.1.i
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %indvars.iv.i198.us.us.us.1.i
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !24 ; 2 uses
  %i.yy = fcmp reassoc nsz arcp contract afn ugt float %i.sb, %i.yx
  br i1 %i.yy, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %indvars.iv.i198.us.us.us.1.i
  %i.za = load float, ptr %i.yz, align 4, !tbaa !24
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.ro, i64 %i.ys
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !24 ; 2 uses
  %i.zd = fsub reassoc nsz arcp contract afn float %i.za, %i.zc
  %i.ze = fsub reassoc nsz arcp contract afn float %i.yx, %i.yu
  %i.zf = fsub reassoc nsz arcp contract afn float %i.sb, %i.yu
  %i.zg = fmul reassoc nsz arcp contract afn float %i.zd, %i.zf
  %i.zh = fdiv reassoc nsz arcp contract afn float %i.zg, %i.ze
  %i.zi = fadd reassoc nsz arcp contract afn float %i.zh, %i.zc
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.1.i

bb.av:                                            ; preds = %bb.at, %.lr.ph.i197.us.us.us.1.i
  %indvars.iv.next.i199.us.us.us.1.i = add nuw nsw i64 %indvars.iv.i198.us.us.us.1.i, 1 ; 2 uses
  %exitcond.not.i200.us.us.us.1.i = icmp eq i64 %indvars.iv.next.i199.us.us.us.1.i, %wide.trip.count.i196.i
  br i1 %exitcond.not.i200.us.us.us.1.i, label %._crit_edge.i193.loopexit.us.us.us.1.i, label %.lr.ph.i197.us.us.us.1.i, !llvm.loop !199

._crit_edge.i193.loopexit.us.us.us.1.i:           ; preds = %bb.av
  %i.zj = load float, ptr %i.rq, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.1.i

_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.1.i: ; preds = %._crit_edge.i193.loopexit.us.us.us.1.i, %bb.au
  %.1.i194.us81.us.us.1.i = phi nsz float [ %i.zi, %bb.au ], [ %i.zj, %._crit_edge.i193.loopexit.us.us.us.1.i ] ; 2 uses
  %i.zk = fmul reassoc nsz arcp contract afn float %.1.i194.us81.us.us.1.i, %i.gz
  %i.zl = fmul reassoc nsz arcp contract afn float %.1.i194.us81.us.us.1.i, %i.rz
  %i.zm = insertelement <2 x float> poison, float %i.zk, i64 0
  %i.zn = insertelement <2 x float> %i.zm, float %i.zl, i64 1
  %i.zo = fadd reassoc nsz arcp contract afn <2 x float> %i.zn, %i.gl
  %i.zp = shufflevector <2 x float> %i.zo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.zq = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.yr, %i.zp
  %i.zr = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.yr, %i.zp
  %i.zs = shufflevector <4 x i1> %i.zq, <4 x i1> %i.zr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.zt = select <4 x i1> %i.zs, <4 x float> %i.yr, <4 x float> %i.zp ; 2 uses
  br label %.lr.ph.i197.us.us.us.2.i

.lr.ph.i197.us.us.us.2.i:                         ; preds = %bb.ay, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.1.i
  %indvars.iv.i198.us.us.us.2.i = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.1.i ], [ %indvars.iv.next.i199.us.us.us.2.i, %bb.ay ] ; 4 uses
  %i.zu = add nsw i64 %indvars.iv.i198.us.us.us.2.i, -1 ; 2 uses
  %i.zv = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.zu
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !24 ; 3 uses
  %i.zx = fcmp reassoc nsz arcp contract afn ult float %i.sb, %i.zw
  br i1 %i.zx, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i197.us.us.us.2.i
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %indvars.iv.i198.us.us.us.2.i
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !24 ; 2 uses
  %i.aaa = fcmp reassoc nsz arcp contract afn ugt float %i.sb, %i.zz
  br i1 %i.aaa, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %indvars.iv.i198.us.us.us.2.i
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !24
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.ri, i64 %i.zu
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !24 ; 2 uses
  %i.aaf = fsub reassoc nsz arcp contract afn float %i.aac, %i.aae
  %i.aag = fsub reassoc nsz arcp contract afn float %i.zz, %i.zw
  %i.aah = fsub reassoc nsz arcp contract afn float %i.sb, %i.zw
  %i.aai = fmul reassoc nsz arcp contract afn float %i.aaf, %i.aah
  %i.aaj = fdiv reassoc nsz arcp contract afn float %i.aai, %i.aag
  %i.aak = fadd reassoc nsz arcp contract afn float %i.aaj, %i.aae
  br label %.split70.us.us.us.i

bb.ay:                                            ; preds = %bb.aw, %.lr.ph.i197.us.us.us.2.i
  %indvars.iv.next.i199.us.us.us.2.i = add nuw nsw i64 %indvars.iv.i198.us.us.us.2.i, 1 ; 2 uses
  %exitcond.not.i200.us.us.us.2.i = icmp eq i64 %indvars.iv.next.i199.us.us.us.2.i, %wide.trip.count.i196.i
  br i1 %exitcond.not.i200.us.us.us.2.i, label %._crit_edge.i193.loopexit.us.us.us.2.i, label %.lr.ph.i197.us.us.us.2.i, !llvm.loop !199

._crit_edge.i193.loopexit.us.us.us.2.i:           ; preds = %bb.ay
  %i.aal = load float, ptr %i.rs, align 4, !tbaa !24
  br label %.split70.us.us.us.i

._crit_edge.i193.loopexit.us.us.us.i:             ; preds = %bb.ar
  %i.aam = load float, ptr %i.rh, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.i

.split42.i:                                       ; preds = %.split42.i, %.split42.preheader.i
  %.017551.i = phi i32 [ %i.adh, %.split42.i ], [ 0, %.split42.preheader.i ] ; 2 uses
  %i.aan = phi <2 x float> [ %i.adi, %.split42.i ], [ splat (float f0x7F7FFFFF), %.split42.preheader.i ] ; 2 uses
  %i.aao = phi <2 x float> [ %i.adj, %.split42.i ], [ splat (float f0xFF7FFFFF), %.split42.preheader.i ] ; 2 uses
  %i.aap = add nsw i32 %.017551.i, %i.gq
  %i.aaq = sitofp reassoc nsz arcp contract afn i32 %i.aap to float
  %i.aar = fsub reassoc nsz arcp contract afn float %i.aaq, %i.gm
  %i.aas = fmul reassoc nsz arcp contract afn float %i.aar, %i.gc ; 6 uses
  %i.aat = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.aas, float noundef %i.hh) #32
  %i.aau = fmul reassoc nsz arcp contract afn float %i.aat, %i.gp
  %i.aav = fcmp reassoc nsz arcp contract afn olt float %i.aau, %i.hq ; 3 uses
  %. = select i1 %i.aav, ptr %i.hp, ptr %i.ht
  %.634 = select i1 %i.aav, ptr %i.hx, ptr %i.hv
  %.635 = select i1 %i.aav, ptr %i.hu, ptr %i.hw
  %.sink443 = load float, ptr %., align 4, !tbaa !24 ; 2 uses
  %i.aaw = fmul reassoc nsz arcp contract afn float %.sink443, %i.aas
  %i.aax = fmul reassoc nsz arcp contract afn float %.sink443, %i.hh
  %.sink286 = load float, ptr %.634, align 4, !tbaa !24 ; 2 uses
  %i.aay = fmul reassoc nsz arcp contract afn float %.sink286, %i.aas
  %i.aaz = fmul reassoc nsz arcp contract afn float %.sink286, %i.hh
  %.sink295.i = load float, ptr %.635, align 4, !tbaa !24
  %i.aba = insertelement <2 x float> poison, float %i.aaw, i64 0
  %i.abb = insertelement <2 x float> %i.aba, float %i.aax, i64 1
  %i.abc = fadd reassoc nsz arcp contract afn <2 x float> %i.abb, %i.gl ; 3 uses
  %i.abd = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.aan, %i.abc
  %i.abe = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.aao, %i.abc
  %i.abf = shufflevector <2 x i1> %i.abd, <2 x i1> %i.abe, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.abg = shufflevector <2 x float> %i.aan, <2 x float> %i.aao, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.abh = shufflevector <2 x float> %i.abc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.abi = select <4 x i1> %i.abf, <4 x float> %i.abg, <4 x float> %i.abh ; 3 uses
  %i.abj = insertelement <2 x float> poison, float %i.aay, i64 0
  %i.abk = insertelement <2 x float> %i.abj, float %i.aaz, i64 1
  %i.abl = fadd reassoc nsz arcp contract afn <2 x float> %i.abk, %i.gl
  %i.abm = shufflevector <2 x float> %i.abl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.abn = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.abi, %i.abm
  %i.abo = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.abi, %i.abm
  %i.abp = shufflevector <4 x i1> %i.abn, <4 x i1> %i.abo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.abq = select <4 x i1> %i.abp, <4 x float> %i.abi, <4 x float> %i.abm ; 3 uses
  %i.abr = insertelement <2 x float> poison, float %.sink295.i, i64 0
  %i.abs = shufflevector <2 x float> %i.abr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abt = insertelement <2 x float> %i.hy, float %i.aas, i64 0 ; 2 uses
  %i.abu = fmul reassoc nsz arcp contract afn <2 x float> %i.abs, %i.abt
  %i.abv = fadd reassoc nsz arcp contract afn <2 x float> %i.abu, %i.gl
  %i.abw = shufflevector <2 x float> %i.abv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.abx = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.abq, %i.abw
  %i.aby = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.abq, %i.abw
  %i.abz = shufflevector <4 x i1> %i.abx, <4 x i1> %i.aby, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aca = select <4 x i1> %i.abz, <4 x float> %i.abq, <4 x float> %i.abw ; 3 uses
  %i.acb = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.aas, float noundef %i.hm) #32
  %i.acc = fmul reassoc nsz arcp contract afn float %i.acb, %i.gp
  %i.acd = fcmp reassoc nsz arcp contract afn olt float %i.acc, %i.hq ; 3 uses
  %.sink453.in = select i1 %i.acd, ptr %i.hp, ptr %i.ht
  %.sink304.in = select i1 %i.acd, ptr %i.hx, ptr %i.hv
  %.sink313.in.i = select i1 %i.acd, ptr %i.hu, ptr %i.hw
  %.sink453 = load float, ptr %.sink453.in, align 4, !tbaa !24 ; 2 uses
  %i.ace = fmul reassoc nsz arcp contract afn float %.sink453, %i.aas
  %i.acf = fmul reassoc nsz arcp contract afn float %.sink453, %i.hm
  %.sink304 = load float, ptr %.sink304.in, align 4, !tbaa !24
  %.sink313.i = load float, ptr %.sink313.in.i, align 4, !tbaa !24
  %i.acg = insertelement <2 x float> poison, float %i.ace, i64 0
  %i.ach = insertelement <2 x float> %i.acg, float %i.acf, i64 1
  %i.aci = fadd reassoc nsz arcp contract afn <2 x float> %i.ach, %i.gl
  %i.acj = shufflevector <2 x float> %i.aci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ack = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.aca, %i.acj
  %i.acl = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.aca, %i.acj
  %i.acm = shufflevector <4 x i1> %i.ack, <4 x i1> %i.acl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.acn = select <4 x i1> %i.acm, <4 x float> %i.aca, <4 x float> %i.acj ; 3 uses
  %i.aco = insertelement <2 x float> poison, float %.sink304, i64 0
  %i.acp = shufflevector <2 x float> %i.aco, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acq = insertelement <2 x float> %i.abt, float %i.hm, i64 1 ; 2 uses
  %i.acr = fmul reassoc nsz arcp contract afn <2 x float> %i.acp, %i.acq
  %i.acs = fadd reassoc nsz arcp contract afn <2 x float> %i.acr, %i.gl
  %i.act = shufflevector <2 x float> %i.acs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.acu = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.acn, %i.act
  %i.acv = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.acn, %i.act
  %i.acw = shufflevector <4 x i1> %i.acu, <4 x i1> %i.acv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.acx = select <4 x i1> %i.acw, <4 x float> %i.acn, <4 x float> %i.act ; 3 uses
  %i.acy = insertelement <2 x float> poison, float %.sink313.i, i64 0
  %i.acz = shufflevector <2 x float> %i.acy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ada = fmul reassoc nsz arcp contract afn <2 x float> %i.acz, %i.acq
  %i.adb = fadd reassoc nsz arcp contract afn <2 x float> %i.ada, %i.gl
  %i.adc = shufflevector <2 x float> %i.adb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.add = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.acx, %i.adc
  %i.ade = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.acx, %i.adc
  %i.adf = shufflevector <4 x i1> %i.add, <4 x i1> %i.ade, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.adg = select <4 x i1> %i.adf, <4 x float> %i.acx, <4 x float> %i.adc ; 3 uses
  %i.adh = add nuw nsw i32 %.017551.i, 1          ; 2 uses
  %exitcond.not.i21 = icmp eq i32 %i.adh, %i.gu
  %i.adi = shufflevector <4 x float> %i.adg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.adj = shufflevector <4 x float> %i.adg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br i1 %exitcond.not.i21, label %.preheader.i16, label %.split42.i, !llvm.loop !239

._crit_edge.i18:                                  ; preds = %.split97.i, %.split70.us.us.us.i.1, %.preheader.i16
  %i.adk = phi <2 x float> [ %i.ra, %.preheader.i16 ], [ %i.xn, %.split70.us.us.us.i.1 ], [ %i.aha, %.split97.i ] ; 2 uses
  %i.adl = phi <2 x float> [ %i.rb, %.preheader.i16 ], [ %i.xo, %.split70.us.us.us.i.1 ], [ %i.ahb, %.split97.i ]
  %i.adm = tail call ptr @dt_interpolation_new(i32 noundef 3)
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 16
  %i.ado = load i64, ptr %i.adn, align 8, !tbaa !236
  %i.adp = uitofp reassoc nsz arcp contract afn i64 %i.ado to float ; 2 uses
  %i.adq = fmul reassoc nnan nsz arcp contract afn float %i.adp, 2.000000e+00
  %i.adr = fadd reassoc nsz arcp contract afn <2 x float> %i.adl, splat (float 1.000000e+00)
  %i.ads = fadd reassoc nsz arcp contract afn <2 x float> %i.gk, splat (float -2.000000e+00)
  %i.adt = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.gk)
  %i.adu = insertelement <2 x float> poison, float %i.adp, i64 0
  %i.adv = shufflevector <2 x float> %i.adu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adw = fsub reassoc nsz arcp contract afn <2 x float> %i.adk, %i.adv
  %i.adx = fptosi <2 x float> %i.adw to <2 x i32> ; 2 uses
  %i.ady = fsub reassoc nsz arcp contract afn <2 x float> %i.adr, %i.adk
  %i.adz = insertelement <2 x float> poison, float %i.adq, i64 0
  %i.aea = shufflevector <2 x float> %i.adz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aeb = fadd reassoc nsz arcp contract afn <2 x float> %i.ady, %i.aea
  %i.aec = fptosi <2 x float> %i.aeb to <2 x i32> ; 2 uses
  %i.aed = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.ads)
  %i.aee = fptosi <2 x float> %i.aed to <2 x i32> ; 2 uses
  %i.aef = icmp sgt <2 x i32> %i.adx, %i.aee
  %i.aeg = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.adx, <2 x i32> zeroinitializer)
  %i.aeh = select <2 x i1> %i.aef, <2 x i32> %i.aee, <2 x i32> %i.aeg ; 3 uses
  %i.aei = extractelement <2 x i32> %i.aeh, i64 0
  store i32 %i.aei, ptr %3, align 4, !tbaa !170
  %i.aej = extractelement <2 x i32> %i.aeh, i64 1
  store i32 %i.aej, ptr %i.gr, align 4, !tbaa !171
  %i.aek = fptosi <2 x float> %i.adt to <2 x i32>
  %i.ael = sub nsw <2 x i32> %i.aek, %i.aeh       ; 2 uses
  %i.aem = icmp slt <2 x i32> %i.ael, %i.aec
  %i.aen = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.aec, <2 x i32> splat (i32 1))
  %i.aeo = select <2 x i1> %i.aem, <2 x i32> %i.ael, <2 x i32> %i.aen
  store <2 x i32> %i.aeo, ptr %i.gt, align 4, !tbaa !38
  br label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit

.split97.i:                                       ; preds = %.split97.i, %.split97.preheader.i
  %.0180107.i = phi i32 [ %i.ahc, %.split97.i ], [ 0, %.split97.preheader.i ] ; 2 uses
  %i.aep = phi <2 x float> [ %i.ahb, %.split97.i ], [ %i.rb, %.split97.preheader.i ] ; 2 uses
  %i.aeq = phi <2 x float> [ %i.aha, %.split97.i ], [ %i.ra, %.split97.preheader.i ] ; 2 uses
  %i.aer = add nsw i32 %.0180107.i, %i.gs
  %i.aes = sitofp reassoc nsz arcp contract afn i32 %i.aer to float
  %i.aet = fsub reassoc nsz arcp contract afn float %i.aes, %i.gn
  %i.aeu = fmul reassoc nsz arcp contract afn float %i.aet, %i.gc ; 7 uses
  %i.aev = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.gz, float noundef %i.aeu) #32
  %i.aew = fmul reassoc nsz arcp contract afn float %i.aev, %i.gp
  %i.aex = fcmp reassoc nsz arcp contract afn olt float %i.aew, %i.re ; 3 uses
  %.636 = select i1 %i.aex, ptr %i.rd, ptr %i.rh
  %.637 = select i1 %i.aex, ptr %i.rl, ptr %i.rj
  %.638 = select i1 %i.aex, ptr %i.ri, ptr %i.rk
  %.sink463 = load float, ptr %.636, align 4, !tbaa !24
  %i.aey = insertelement <2 x float> poison, float %.sink463, i64 0
  %i.aez = shufflevector <2 x float> %i.aey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afa = insertelement <2 x float> %i.rn, float %i.aeu, i64 1
  %i.afb = fmul reassoc nsz arcp contract afn <2 x float> %i.aez, %i.afa
  %.sink322 = load float, ptr %.637, align 4, !tbaa !24 ; 2 uses
  %i.afc = fmul reassoc nsz arcp contract afn float %.sink322, %i.gz
  %i.afd = fmul reassoc nsz arcp contract afn float %.sink322, %i.aeu
  %.sink331.i = load float, ptr %.638, align 4, !tbaa !24 ; 2 uses
  %i.afe = fadd reassoc nsz arcp contract afn <2 x float> %i.afb, %i.gl ; 4 uses
  %i.aff = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.aep, %i.afe
  %i.afg = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.aeq, %i.afe
  %i.afh = select <2 x i1> %i.afg, <2 x float> %i.aeq, <2 x float> %i.afe ; 2 uses
  %i.afi = select <2 x i1> %i.aff, <2 x float> %i.aep, <2 x float> %i.afe ; 2 uses
  %i.afj = insertelement <2 x float> poison, float %i.afc, i64 0
  %i.afk = insertelement <2 x float> %i.afj, float %i.afd, i64 1
  %i.afl = fadd reassoc nsz arcp contract afn <2 x float> %i.afk, %i.gl ; 4 uses
  %i.afm = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.afh, %i.afl
  %i.afn = select <2 x i1> %i.afm, <2 x float> %i.afh, <2 x float> %i.afl ; 2 uses
  %i.afo = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.afi, %i.afl
  %i.afp = select <2 x i1> %i.afo, <2 x float> %i.afi, <2 x float> %i.afl ; 2 uses
  %i.afq = fmul reassoc nsz arcp contract afn float %.sink331.i, %i.aeu
  %i.afr = fmul reassoc nsz arcp contract afn float %.sink331.i, %i.gz
  %i.afs = insertelement <2 x float> poison, float %i.afr, i64 0
  %i.aft = insertelement <2 x float> %i.afs, float %i.afq, i64 1
  %i.afu = fadd reassoc nsz arcp contract afn <2 x float> %i.aft, %i.gl ; 4 uses
  %i.afv = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.afn, %i.afu
  %i.afw = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.afp, %i.afu
  %i.afx = select <2 x i1> %i.afv, <2 x float> %i.afn, <2 x float> %i.afu ; 2 uses
  %i.afy = select <2 x i1> %i.afw, <2 x float> %i.afp, <2 x float> %i.afu ; 2 uses
  %i.afz = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.he, float noundef %i.aeu) #32
  %i.aga = fmul reassoc nsz arcp contract afn float %i.afz, %i.gp
  %i.agb = fcmp reassoc nsz arcp contract afn olt float %i.aga, %i.re ; 3 uses
  %.sink473.in = select i1 %i.agb, ptr %i.rd, ptr %i.rh
  %.sink340.in = select i1 %i.agb, ptr %i.rl, ptr %i.rj
end_hunk_1
begin_hunk_2_@commit_params:bb.a
  %i.cc = phi ptr [ %i.bs, %bb.q ], [ %i.bs, %.preheader.i ], [ %i.by, %.lr.ph.i ]
  call void @_ZN6lfLens11AddCalibTCAEPK14lfLensCalibTCA(ptr noundef nonnull align 8 dereferenceable(116) %i.cc, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.i, %bb.p
  call void @lf_free(ptr noundef nonnull %i.bh)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o, %bb.n
  call void @lf_free(ptr noundef %.065.i)
  %i.cd = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !285
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !188
  %i.cg = getelementptr inbounds nuw i8, ptr %.0, i64 12
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !286
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  store float %i.ch, ptr %i.ci, align 4, !tbaa !217
  %i.cj = getelementptr inbounds nuw i8, ptr %.0, i64 20
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.cl = load <2 x float>, ptr %i.cj, align 4, !tbaa !24
  store <2 x float> %i.cl, ptr %i.ck, align 4, !tbaa !24
  %i.cm = getelementptr inbounds nuw i8, ptr %.0, i64 28
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !287
  %i.co = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store float %i.cn, ptr %i.co, align 4, !tbaa !216
  %i.cp = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !288 ; 2 uses
  %switch.tableidx.i.i = add i32 %i.cq, -1
  %i.cr = icmp ult i32 %switch.tableidx.i.i, 8
  %.0.i.i = select i1 %i.cr, i32 %i.cq, i32 0     ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i32 %.0.i.i, ptr %i.cs, align 8, !tbaa !218
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ak, i64 44 ; 2 uses
  store i32 1, ptr %i.ct, align 4, !tbaa !189
  %i.cu = getelementptr inbounds nuw i8, ptr %.0, i64 292
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !279
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i32 %i.cv, ptr %i.cw, align 8, !tbaa !289
  %i.cx = icmp eq i32 %.0.i.i, 1
  br i1 %i.cx, label %.sink.split.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = load ptr, ptr %i.ar, align 8, !tbaa !176
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !290
  %i.db = icmp eq i32 %.0.i.i, %i.da
  br i1 %i.db, label %.sink.split.i, label %bb.u

.sink.split.i:                                    ; preds = %bb.t, %bb.s
  store i32 0, ptr %i.ct, align 4, !tbaa !189
  br label %bb.u

bb.u:                                             ; preds = %.sink.split.i, %bb.t
  %i.dc = load ptr, ptr %i.w, align 8, !tbaa !187 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 16, !tbaa !291
  %i.de = icmp ne i32 %i.dd, 0
  %i.df = icmp ne ptr %i.am, null
  %or.cond.i = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond.i, label %bb.v, label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit

bb.v:                                             ; preds = %bb.u
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !124
  %i.di = getelementptr i8, ptr %i.dh, i64 644
  %.val.i38 = load i32, ptr %i.di, align 4, !tbaa !125
  %i.dj = and i32 %.val.i38, 4
  %.not78.i = icmp eq i32 %i.dj, 0
  br i1 %.not78.i, label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 112
  %i.dl = call i32 @dt_image_is_monochrome(ptr noundef nonnull %i.dk)
  %.not79.i = icmp eq i32 %i.dl, 0
  %i.dm = select i1 %.not79.i, i32 -1, i32 -2
  %i.dn = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.do = load ptr, ptr %i.w, align 8, !tbaa !187 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1492
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !292
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 1496
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !293
  %i.dt = call fastcc noundef ptr @_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii(ptr noundef nonnull %i.h, i32 noundef %i.dq, i32 noundef %i.ds, ptr noundef nonnull %i.ak, i32 noundef %i.dm, i32 noundef 0) ; 0 uses
  %i.du = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #30 ; 0 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.dw = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull %i.dv) #30 ; 0 uses
  %i.dx = load i32, ptr %i.h, align 4, !tbaa !38  ; 2 uses
  %i.dy = lshr i32 %i.dx, 1
  %i.dz = and i32 %i.dy, 4
  %i.ea = and i32 %i.dx, 3
  %i.eb = or disjoint i32 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.am, i64 328
  store i32 %i.eb, ptr %i.ec, align 8, !tbaa !294
  %i.ed = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dv) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  br label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit

bb.x:                                             ; preds = %bb.e
  %i.ee = load ptr, ptr %i.i, align 16, !tbaa !81 ; 34 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.eg = load ptr, ptr %i.ef, align 16, !tbaa !100 ; 2 uses
  %i.eh = load ptr, ptr %i.w, align 8, !tbaa !187 ; 25 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 112 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 104 ; 3 uses
  store i32 0, ptr %i.ej, align 8, !tbaa !196
  %i.ek = getelementptr i8, ptr %i.eh, i64 680
  %.val.val.i39 = load i32, ptr %i.ek, align 8, !tbaa !241 ; 3 uses
  %.not.i40 = icmp eq i32 %.val.val.i39, 0
  br i1 %.not.i40, label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %.0, i64 304 ; 9 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 84
  %i.en = getelementptr inbounds nuw i8, ptr %.0, i64 308 ; 4 uses
  %i.eo = load <2 x float>, ptr %i.el, align 4, !tbaa !24
  store <2 x float> %i.eo, ptr %i.em, align 4, !tbaa !24
  %i.ep = getelementptr inbounds nuw i8, ptr %.0, i64 324
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !295 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ee, i64 100
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !296
  switch i32 %i.eq, label %bb.co [
    i32 0, label %bb.z
    i32 1, label %bb.aw
  ]

bb.z:                                             ; preds = %bb.y
  %i.es = getelementptr inbounds nuw i8, ptr %.0, i64 320
  %i.et = load float, ptr %i.es, align 4, !tbaa !297 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 92 ; 2 uses
  store float %i.et, ptr %i.eu, align 4, !tbaa !298
  %i.ev = fcmp reassoc nsz arcp contract afn olt float %i.et, f0x3F666666
  %i.ew = fcmp reassoc nsz arcp contract afn ogt float %i.et, 1.100000e+00
  %or.cond52.i = or i1 %i.ev, %i.ew
  br i1 %or.cond52.i, label %bb.aa, label %bb.av

bb.aa:                                            ; preds = %bb.z
  %i.ex = icmp eq i32 %.val.val.i39, 3
  br i1 %i.ex, label %_ZL20_get_autoscale_md_v1P15dt_iop_module_tP20dt_iop_lens_params_t.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.ey = call fastcc noundef i32 @_ZL18_init_coeffs_md_v1PK10dt_image_tPK20dt_iop_lens_params_tfPfS5_PA16_fS5_(ptr noundef nonnull readonly %i.ei, ptr noundef nonnull readonly %.0, float noundef 1.000000e+00, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef null) ; 3 uses
  %i.ez = load float, ptr %i.e, align 16, !tbaa !24
  %i.fa = icmp sgt i32 %i.ey, 1                   ; 6 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.ey to i64 ; 6 uses
  %i.fb = sext i32 %i.ey to i64                   ; 3 uses
  %i.fc = getelementptr [4 x i8], ptr %i.g, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 -4     ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 6 uses
  %i.ff = getelementptr [4 x i8], ptr %i.fe, i64 %i.fb
  %i.fg = getelementptr i8, ptr %i.ff, i64 -4     ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 6 uses
  %i.fi = getelementptr [4 x i8], ptr %i.fh, i64 %i.fb
  %i.fj = getelementptr i8, ptr %i.fi, i64 -4     ; 2 uses
  %i.fk = load float, ptr %i.g, align 16          ; 2 uses
  %i.fl = load float, ptr %i.fe, align 16         ; 2 uses
  %i.fm = load float, ptr %i.fh, align 16         ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.split.us.i.i, %bb.ab
  %.01716.int.i.i = phi i32 [ 0, %bb.ab ], [ %.int.i.i, %.split.us.i.i ] ; 2 uses
  %.01815.i.i = phi float [ 0.000000e+00, %bb.ab ], [ %.us-phi.i.i, %.split.us.i.i ] ; 4 uses
  %indvar.conv.i.i = uitofp nneg i32 %.01716.int.i.i to float
  %i.fn = fmul reassoc nnan nsz arcp contract afn float %indvar.conv.i.i, f0x3B24A9CF
  %i.fo = fadd reassoc nsz arcp contract afn float %i.fn, 5.000000e-01 ; 19 uses
  %i.fp = fcmp reassoc nsz arcp contract afn olt float %i.fo, %i.ez
  br i1 %i.fp, label %_ZL26_interpolate_linear_splinePKfS0_if.exit.thread.us.preheader.i.i, label %.preheader.i.preheader.i.i

.preheader.i.preheader.i.i:                       ; preds = %.preheader.i.i
  br i1 %i.fa, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.thread.us.preheader.i.i: ; preds = %.preheader.i.i
  %i.fq = fcmp reassoc nsz arcp contract afn ogt float %.01815.i.i, %i.fk
  %i.fr = select reassoc nsz arcp contract afn i1 %i.fq, float %.01815.i.i, float %i.fk ; 2 uses
  %i.fs = fcmp reassoc nsz arcp contract afn ogt float %i.fr, %i.fl
  %i.ft = select reassoc nsz arcp contract afn i1 %i.fs, float %i.fr, float %i.fl ; 2 uses
  %i.fu = fcmp reassoc nsz arcp contract afn ogt float %i.ft, %i.fm
  br i1 %i.fu, label %.split.us.i.i, label %.thread.us.2.i.i

.thread.us.2.i.i:                                 ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.thread.us.preheader.i.i
  br label %.split.us.i.i

bb.ac:                                            ; preds = %.split.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %_ZL20_get_autoscale_md_v1P15dt_iop_module_tP20dt_iop_lens_params_t.exit.i

.split.us.i.i:                                    ; preds = %._crit_edge.i21.2.i.i, %bb.at, %_ZL26_interpolate_linear_splinePKfS0_if.exit.2.i.i, %.thread.us.2.i.i, %_ZL26_interpolate_linear_splinePKfS0_if.exit.thread.us.preheader.i.i
  %.us-phi.i.i = phi float [ %i.fm, %.thread.us.2.i.i ], [ %i.ft, %_ZL26_interpolate_linear_splinePKfS0_if.exit.thread.us.preheader.i.i ], [ %i.kd, %._crit_edge.i21.2.i.i ], [ %i.is, %_ZL26_interpolate_linear_splinePKfS0_if.exit.2.i.i ], [ %i.kc, %bb.at ] ; 2 uses
  %.int.i.i = add nuw nsw i32 %.01716.int.i.i, 1  ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %.int.i.i, 200
  br i1 %exitcond.not.i.i, label %bb.ac, label %.preheader.i.i, !llvm.loop !299

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.preheader.i.i, %bb.ae
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.ae ], [ 1, %.preheader.i.preheader.i.i ] ; 4 uses
  %i.fv = add nsw i64 %indvars.iv.i.i.i, -1       ; 2 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !24 ; 3 uses
  %i.fy = fcmp reassoc nsz arcp contract afn ult float %i.fo, %i.fx
  br i1 %i.fy, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i.i
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !24 ; 2 uses
  %i.gb = fcmp reassoc nsz arcp contract afn ugt float %i.fo, %i.ga
  br i1 %i.gb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !199

bb.af:                                            ; preds = %bb.ad
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i.i.i
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !24
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.fv
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !24 ; 2 uses
  %i.gg = fsub reassoc nsz arcp contract afn float %i.gd, %i.gf
  %i.gh = fsub reassoc nsz arcp contract afn float %i.ga, %i.fx
  %i.gi = fsub reassoc nsz arcp contract afn float %i.fo, %i.fx
  %i.gj = fmul reassoc nsz arcp contract afn float %i.gg, %i.gi
  %i.gk = fdiv reassoc nsz arcp contract afn float %i.gj, %i.gh
  %i.gl = fadd reassoc nsz arcp contract afn float %i.gk, %i.gf
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ae, %.preheader.i.preheader.i.i
  %i.gm = load float, ptr %i.fd, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.af
  %.1.i.i.i = phi nsz float [ %i.gl, %bb.af ], [ %i.gm, %._crit_edge.i.i.i ]
  %i.gn = fcmp reassoc nsz arcp contract afn ogt float %.01815.i.i, %.1.i.i.i
  br i1 %i.gn, label %_ZL26_interpolate_linear_splinePKfS0_if.exit29.i.i, label %.preheader.i20.i.i

.preheader.i20.i.i:                               ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i.i
  br i1 %i.fa, label %.lr.ph.i25.i.i, label %._crit_edge.i21.i.i

.lr.ph.i25.i.i:                                   ; preds = %.preheader.i20.i.i, %bb.ah
  %indvars.iv.i26.i.i = phi i64 [ %indvars.iv.next.i27.i.i, %bb.ah ], [ 1, %.preheader.i20.i.i ] ; 4 uses
  %i.go = add nsw i64 %indvars.iv.i26.i.i, -1     ; 2 uses
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.go
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !24 ; 3 uses
  %i.gr = fcmp reassoc nsz arcp contract afn ult float %i.fo, %i.gq
  br i1 %i.gr, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i25.i.i
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i26.i.i
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !24 ; 2 uses
  %i.gu = fcmp reassoc nsz arcp contract afn ugt float %i.fo, %i.gt
  br i1 %i.gu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i25.i.i
  %indvars.iv.next.i27.i.i = add nuw nsw i64 %indvars.iv.i26.i.i, 1 ; 2 uses
  %exitcond.not.i28.i.i = icmp eq i64 %indvars.iv.next.i27.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i28.i.i, label %._crit_edge.i21.i.i, label %.lr.ph.i25.i.i, !llvm.loop !199

bb.ai:                                            ; preds = %bb.ag
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i26.i.i
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !24
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.go
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !24 ; 2 uses
  %i.gz = fsub reassoc nsz arcp contract afn float %i.gw, %i.gy
  %i.ha = fsub reassoc nsz arcp contract afn float %i.gt, %i.gq
  %i.hb = fsub reassoc nsz arcp contract afn float %i.fo, %i.gq
  %i.hc = fmul reassoc nsz arcp contract afn float %i.gz, %i.hb
  %i.hd = fdiv reassoc nsz arcp contract afn float %i.hc, %i.ha
  %i.he = fadd reassoc nsz arcp contract afn float %i.hd, %i.gy
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit29.i.i

._crit_edge.i21.i.i:                              ; preds = %bb.ah, %.preheader.i20.i.i
  %i.hf = load float, ptr %i.fd, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit29.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit29.i.i: ; preds = %._crit_edge.i21.i.i, %bb.ai, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i.i
  %i.hg = phi reassoc nsz arcp contract afn float [ %i.hf, %._crit_edge.i21.i.i ], [ %.01815.i.i, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i.i ], [ %i.he, %bb.ai ] ; 2 uses
  br i1 %i.fa, label %.lr.ph.i.1.i.i, label %._crit_edge.i.1.i.i

.lr.ph.i.1.i.i:                                   ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit29.i.i, %bb.al
  %indvars.iv.i.1.i.i = phi i64 [ %indvars.iv.next.i.1.i.i, %bb.al ], [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit29.i.i ] ; 4 uses
  %i.hh = add nsw i64 %indvars.iv.i.1.i.i, -1     ; 2 uses
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.hh
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !24 ; 3 uses
  %i.hk = fcmp reassoc nsz arcp contract afn ult float %i.fo, %i.hj
  br i1 %i.hk, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.1.i.i
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.1.i.i
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !24 ; 2 uses
  %i.hn = fcmp reassoc nsz arcp contract afn ugt float %i.fo, %i.hm
  br i1 %i.hn, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.i.1.i.i
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !24
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.hh
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !24 ; 2 uses
  %i.hs = fsub reassoc nsz arcp contract afn float %i.hp, %i.hr
  %i.ht = fsub reassoc nsz arcp contract afn float %i.hm, %i.hj
  %i.hu = fsub reassoc nsz arcp contract afn float %i.fo, %i.hj
  %i.hv = fmul reassoc nsz arcp contract afn float %i.hs, %i.hu
  %i.hw = fdiv reassoc nsz arcp contract afn float %i.hv, %i.ht
  %i.hx = fadd reassoc nsz arcp contract afn float %i.hw, %i.hr
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.1.i.i

bb.al:                                            ; preds = %bb.aj, %.lr.ph.i.1.i.i
  %indvars.iv.next.i.1.i.i = add nuw nsw i64 %indvars.iv.i.1.i.i, 1 ; 2 uses
  %exitcond.not.i.1.i.i = icmp eq i64 %indvars.iv.next.i.1.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.1.i.i, label %._crit_edge.i.1.i.i, label %.lr.ph.i.1.i.i, !llvm.loop !199

._crit_edge.i.1.i.i:                              ; preds = %bb.al, %_ZL26_interpolate_linear_splinePKfS0_if.exit29.i.i
  %i.hy = load float, ptr %i.fg, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.1.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.1.i.i: ; preds = %._crit_edge.i.1.i.i, %bb.ak
  %.1.i.1.i.i = phi nsz float [ %i.hx, %bb.ak ], [ %i.hy, %._crit_edge.i.1.i.i ]
  %i.hz = fcmp reassoc nsz arcp contract afn ogt float %i.hg, %.1.i.1.i.i
  br i1 %i.hz, label %_ZL26_interpolate_linear_splinePKfS0_if.exit29.1.i.i, label %.preheader.i20.1.i.i

.preheader.i20.1.i.i:                             ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.1.i.i
  br i1 %i.fa, label %.lr.ph.i25.1.i.i, label %._crit_edge.i21.1.i.i

.lr.ph.i25.1.i.i:                                 ; preds = %.preheader.i20.1.i.i, %bb.ao
  %indvars.iv.i26.1.i.i = phi i64 [ %indvars.iv.next.i27.1.i.i, %bb.ao ], [ 1, %.preheader.i20.1.i.i ] ; 4 uses
  %i.ia = add nsw i64 %indvars.iv.i26.1.i.i, -1   ; 2 uses
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ia
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !24 ; 3 uses
  %i.id = fcmp reassoc nsz arcp contract afn ult float %i.fo, %i.ic
  br i1 %i.id, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i25.1.i.i
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i26.1.i.i
  %i.if = load float, ptr %i.ie, align 4, !tbaa !24 ; 2 uses
  %i.ig = fcmp reassoc nsz arcp contract afn ugt float %i.fo, %i.if
  br i1 %i.ig, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.i26.1.i.i
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !24
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.ia
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !24 ; 2 uses
  %i.il = fsub reassoc nsz arcp contract afn float %i.ii, %i.ik
  %i.im = fsub reassoc nsz arcp contract afn float %i.if, %i.ic
  %i.in = fsub reassoc nsz arcp contract afn float %i.fo, %i.ic
  %i.io = fmul reassoc nsz arcp contract afn float %i.il, %i.in
  %i.ip = fdiv reassoc nsz arcp contract afn float %i.io, %i.im
  %i.iq = fadd reassoc nsz arcp contract afn float %i.ip, %i.ik
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit29.1.i.i

bb.ao:                                            ; preds = %bb.am, %.lr.ph.i25.1.i.i
  %indvars.iv.next.i27.1.i.i = add nuw nsw i64 %indvars.iv.i26.1.i.i, 1 ; 2 uses
  %exitcond.not.i28.1.i.i = icmp eq i64 %indvars.iv.next.i27.1.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i28.1.i.i, label %._crit_edge.i21.1.i.i, label %.lr.ph.i25.1.i.i, !llvm.loop !199

._crit_edge.i21.1.i.i:                            ; preds = %bb.ao, %.preheader.i20.1.i.i
  %i.ir = load float, ptr %i.fg, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit29.1.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit29.1.i.i: ; preds = %._crit_edge.i21.1.i.i, %bb.an, %_ZL26_interpolate_linear_splinePKfS0_if.exit.1.i.i
  %i.is = phi reassoc nsz arcp contract afn float [ %i.ir, %._crit_edge.i21.1.i.i ], [ %i.hg, %_ZL26_interpolate_linear_splinePKfS0_if.exit.1.i.i ], [ %i.iq, %bb.an ] ; 2 uses
  br i1 %i.fa, label %.lr.ph.i.2.i.i, label %._crit_edge.i.2.i.i

.lr.ph.i.2.i.i:                                   ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit29.1.i.i, %bb.ar
  %indvars.iv.i.2.i.i = phi i64 [ %indvars.iv.next.i.2.i.i, %bb.ar ], [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit29.1.i.i ] ; 4 uses
  %i.it = add nsw i64 %indvars.iv.i.2.i.i, -1     ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.it
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !24 ; 3 uses
  %i.iw = fcmp reassoc nsz arcp contract afn ult float %i.fo, %i.iv
  br i1 %i.iw, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.2.i.i
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.2.i.i
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !24 ; 2 uses
  %i.iz = fcmp reassoc nsz arcp contract afn ugt float %i.fo, %i.iy
  br i1 %i.iz, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.i.2.i.i
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !24
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.it
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !24 ; 2 uses
  %i.je = fsub reassoc nsz arcp contract afn float %i.jb, %i.jd
  %i.jf = fsub reassoc nsz arcp contract afn float %i.iy, %i.iv
  %i.jg = fsub reassoc nsz arcp contract afn float %i.fo, %i.iv
  %i.jh = fmul reassoc nsz arcp contract afn float %i.je, %i.jg
  %i.ji = fdiv reassoc nsz arcp contract afn float %i.jh, %i.jf
  %i.jj = fadd reassoc nsz arcp contract afn float %i.ji, %i.jd
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.2.i.i

bb.ar:                                            ; preds = %bb.ap, %.lr.ph.i.2.i.i
  %indvars.iv.next.i.2.i.i = add nuw nsw i64 %indvars.iv.i.2.i.i, 1 ; 2 uses
  %exitcond.not.i.2.i.i = icmp eq i64 %indvars.iv.next.i.2.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.2.i.i, label %._crit_edge.i.2.i.i, label %.lr.ph.i.2.i.i, !llvm.loop !199

._crit_edge.i.2.i.i:                              ; preds = %bb.ar, %_ZL26_interpolate_linear_splinePKfS0_if.exit29.1.i.i
  %i.jk = load float, ptr %i.fj, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.2.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.2.i.i: ; preds = %._crit_edge.i.2.i.i, %bb.aq
  %.1.i.2.i.i = phi nsz float [ %i.jj, %bb.aq ], [ %i.jk, %._crit_edge.i.2.i.i ]
  %i.jl = fcmp reassoc nsz arcp contract afn ogt float %i.is, %.1.i.2.i.i
  br i1 %i.jl, label %.split.us.i.i, label %.preheader.i20.2.i.i

.preheader.i20.2.i.i:                             ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.2.i.i
  br i1 %i.fa, label %.lr.ph.i25.2.i.i, label %._crit_edge.i21.2.i.i

.lr.ph.i25.2.i.i:                                 ; preds = %.preheader.i20.2.i.i, %bb.au
  %indvars.iv.i26.2.i.i = phi i64 [ %indvars.iv.next.i27.2.i.i, %bb.au ], [ 1, %.preheader.i20.2.i.i ] ; 4 uses
  %i.jm = add nsw i64 %indvars.iv.i26.2.i.i, -1   ; 2 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.jm
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !24 ; 3 uses
  %i.jp = fcmp reassoc nsz arcp contract afn ult float %i.fo, %i.jo
  br i1 %i.jp, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i25.2.i.i
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i26.2.i.i
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !24 ; 2 uses
  %i.js = fcmp reassoc nsz arcp contract afn ugt float %i.fo, %i.jr
  br i1 %i.js, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.i26.2.i.i
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !24
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.jm
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !24 ; 2 uses
  %i.jx = fsub reassoc nsz arcp contract afn float %i.ju, %i.jw
  %i.jy = fsub reassoc nsz arcp contract afn float %i.jr, %i.jo
  %i.jz = fsub reassoc nsz arcp contract afn float %i.fo, %i.jo
  %i.ka = fmul reassoc nsz arcp contract afn float %i.jx, %i.jz
  %i.kb = fdiv reassoc nsz arcp contract afn float %i.ka, %i.jy
  %i.kc = fadd reassoc nsz arcp contract afn float %i.kb, %i.jw
  br label %.split.us.i.i

bb.au:                                            ; preds = %bb.as, %.lr.ph.i25.2.i.i
  %indvars.iv.next.i27.2.i.i = add nuw nsw i64 %indvars.iv.i26.2.i.i, 1 ; 2 uses
  %exitcond.not.i28.2.i.i = icmp eq i64 %indvars.iv.next.i27.2.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i28.2.i.i, label %._crit_edge.i21.2.i.i, label %.lr.ph.i25.2.i.i, !llvm.loop !199

._crit_edge.i21.2.i.i:                            ; preds = %bb.au, %.preheader.i20.2.i.i
  %i.kd = load float, ptr %i.fj, align 4, !tbaa !24
  br label %.split.us.i.i

_ZL20_get_autoscale_md_v1P15dt_iop_module_tP20dt_iop_lens_params_t.exit.i: ; preds = %bb.ac, %bb.aa
  %.019.i.i = phi nsz float [ %.us-phi.i.i, %bb.ac ], [ 1.000000e+00, %bb.aa ] ; 2 uses
  store float %.019.i.i, ptr %i.eu, align 4, !tbaa !298
  br label %bb.av

bb.av:                                            ; preds = %_ZL20_get_autoscale_md_v1P15dt_iop_module_tP20dt_iop_lens_params_t.exit.i, %bb.z
  %i.ke = phi float [ %i.et, %bb.z ], [ %.019.i.i, %_ZL20_get_autoscale_md_v1P15dt_iop_module_tP20dt_iop_lens_params_t.exit.i ]
  %i.kf = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ee, i64 108
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ee, i64 172
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ee, i64 236
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ee, i64 428
  %i.kk = call fastcc noundef i32 @_ZL18_init_coeffs_md_v1PK10dt_image_tPK20dt_iop_lens_params_tfPfS5_PA16_fS5_(ptr noundef nonnull %i.ei, ptr noundef nonnull readonly %.0, float noundef %i.kf, ptr noundef nonnull %i.kg, ptr noundef nonnull %i.kh, ptr noundef nonnull %i.ki, ptr noundef nonnull %i.kj)
  br label %.sink.split.i41

bb.aw:                                            ; preds = %bb.y
  %i.kl = getelementptr i8, ptr %i.ee, i64 108    ; 18 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ee, i64 172 ; 7 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ee, i64 236 ; 15 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ee, i64 428 ; 7 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.eh, i64 684 ; 6 uses
  switch i32 %.val.val.i39, label %.loopexit.i.i [
    i32 1, label %bb.ax
    i32 2, label %bb.bb
    i32 3, label %.preheader438.i.i
    i32 4, label %bb.bz
  ]

.preheader438.i.i:                                ; preds = %bb.aw
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ee, i64 364
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ee, i64 300
  %i.ks = getelementptr inbounds nuw i8, ptr %i.eh, i64 796
  %i.kt = getelementptr inbounds nuw i8, ptr %i.eh, i64 688
  %i.ku = getelementptr inbounds nuw i8, ptr %i.eh, i64 800
  %i.kv = getelementptr inbounds nuw i8, ptr %i.eh, i64 768
  %i.kw = getelementptr inbounds nuw i8, ptr %i.eh, i64 784
  br label %bb.bt

bb.ax:                                            ; preds = %bb.aw
  %i.kx = load i32, ptr %i.kp, align 4, !tbaa !59 ; 7 uses
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %.lr.ph480.i.i, label %.loopexit.i.i

.lr.ph480.i.i:                                    ; preds = %bb.ax
  %i.kz = add nsw i32 %i.kx, -1
  %i.la = uitofp nneg i32 %i.kz to float          ; 2 uses
  %i.lb = getelementptr i8, ptr %i.eh, i64 688    ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ee, i64 364 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ee, i64 300 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.0, i64 312 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.eh, i64 720 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.0, i64 316 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.eh, i64 752 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.eh, i64 784 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.kx to i64 ; 5 uses
  %i.lj = load i32, ptr %i.t, align 4, !tbaa !267 ; 3 uses
  %i.lk = and i32 %i.lj, 4
  %.not385.i.i = icmp ne i32 %i.lk, 0             ; 3 uses
  %.not386.i.i = trunc i32 %i.lj to i1            ; 2 uses
  %i.ll = and i32 %i.lj, 2
  %.not388.i.i = icmp ne i32 %i.ll, 0             ; 3 uses
  %min.iters.check = icmp ult i32 %i.kx, 8
  br i1 %min.iters.check, label %scalar.ph430.preheader, label %vector.memcheck420

vector.memcheck420:                               ; preds = %.lr.ph480.i.i
  %i.lm = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %i.ln = getelementptr i8, ptr %i.ee, i64 %i.lm
  %scevgep421 = getelementptr i8, ptr %i.ln, i64 428 ; 2 uses
  %scevgep422 = getelementptr i8, ptr %.0, i64 320
  %i.lo = shl nuw nsw i64 %wide.trip.count.i.i, 1
  %i.lp = getelementptr i8, ptr %i.eh, i64 %i.lo
  %scevgep423 = getelementptr i8, ptr %i.lp, i64 784
  %bound0424 = icmp ult ptr %i.kl, %scevgep422
  %bound1425 = icmp ult ptr %i.el, %scevgep421
  %found.conflict426 = and i1 %bound0424, %bound1425
  %bound0427 = icmp ult ptr %i.kl, %scevgep423
  %bound1428 = icmp ult ptr %i.lb, %scevgep421
  %found.conflict429 = and i1 %bound0427, %bound1428
  %conflict.rdx = or i1 %found.conflict426, %found.conflict429
  br i1 %conflict.rdx, label %scalar.ph430.preheader, label %vector.ph431

vector.ph431:                                     ; preds = %vector.memcheck420
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %i.lq = insertelement <8 x i1> poison, i1 %.not385.i.i, i64 0
  %i.lr = shufflevector <8 x i1> %i.lq, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ls = insertelement <8 x i1> poison, i1 %.not386.i.i, i64 0
  %i.lt = shufflevector <8 x i1> %i.ls, <8 x i1> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.lu = insertelement <8 x i1> poison, i1 %.not388.i.i, i64 0
  %i.lv = shufflevector <8 x i1> %i.lu, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert438 = insertelement <8 x float> poison, float %i.la, i64 0
  %broadcast.splat439 = shufflevector <8 x float> %broadcast.splatinsert438, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert440 = insertelement <8 x ptr> poison, ptr %i.le, i64 0
  %broadcast.splat441 = shufflevector <8 x ptr> %broadcast.splatinsert440, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert442 = insertelement <8 x ptr> poison, ptr %i.lg, i64 0
  %broadcast.splat443 = shufflevector <8 x ptr> %broadcast.splatinsert442, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert444 = insertelement <8 x ptr> poison, ptr %i.el, i64 0
  %broadcast.splat445 = shufflevector <8 x ptr> %broadcast.splatinsert444, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert446 = insertelement <8 x ptr> poison, ptr %i.en, i64 0
  %broadcast.splat447 = shufflevector <8 x ptr> %broadcast.splatinsert446, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.lw = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat439
  %wide.masked.gather451 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat445, <8 x i1> %i.lr, <8 x float> poison), !tbaa !300, !alias.scope !301
  %i.lx = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather451, splat (float f0x38800000)
  %wide.masked.gather453 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat441, <8 x i1> %i.lt, <8 x float> poison), !tbaa !304, !alias.scope !301
  %i.ly = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather453, splat (float f0x35000000)
  %wide.masked.gather455 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat443, <8 x i1> %i.lt, <8 x float> poison), !tbaa !305, !alias.scope !301
  %i.lz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather455, splat (float f0x35000000)
  %wide.masked.gather457 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat447, <8 x i1> %i.lv, <8 x float> poison), !tbaa !306, !alias.scope !301
  %i.ma = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather457, splat (float f0x39000000)
  br label %vector.body448

vector.body448:                                   ; preds = %vector.body448, %vector.ph431
  %index449 = phi i64 [ 0, %vector.ph431 ], [ %index.next460, %vector.body448 ] ; 11 uses
  %vec.ind450 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph431 ], [ %vec.ind.next461, %vector.body448 ] ; 2 uses
  %i.mb = uitofp nneg <8 x i32> %vec.ind450 to <8 x double>
  %i.mc = fadd reassoc nsz arcp contract afn <8 x double> %i.mb, splat (double 5.000000e-01)
  %i.md = fptrunc reassoc nsz arcp contract afn <8 x double> %i.mc to <8 x float>
  %i.me = fmul reassoc nsz arcp contract afn <8 x float> %i.md, %i.lw ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %index449
  store <8 x float> %i.me, ptr %i.mf, align 4, !tbaa !24, !alias.scope !307, !noalias !309
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %index449
  store <8 x float> %i.me, ptr %i.mg, align 4, !tbaa !24, !alias.scope !307, !noalias !309
  %i.mh = getelementptr [2 x i8], ptr %i.lb, i64 %index449
  %wide.masked.load = tail call <8 x i16> @llvm.masked.load.v8i16.p0(ptr align 2 %i.mh, <8 x i1> %i.lr, <8 x i16> poison), !tbaa !59, !alias.scope !311
  %i.mi = sitofp <8 x i16> %wide.masked.load to <8 x float>
  %i.mj = fmul reassoc nsz arcp contract afn <8 x float> %i.lx, %i.mi
  %i.mk = fadd reassoc nsz arcp contract afn <8 x float> %i.mj, splat (float 1.000000e+00)
  %predphi452 = select i1 %.not385.i.i, <8 x float> %i.mk, <8 x float> splat (float 1.000000e+00) ; 5 uses
  %i.ml = getelementptr [4 x i8], ptr %i.lc, i64 %index449 ; 2 uses
  store <8 x float> %predphi452, ptr %i.ml, align 4, !tbaa !24, !alias.scope !307, !noalias !309
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %index449
  store <8 x float> %predphi452, ptr %i.mm, align 4, !tbaa !24, !alias.scope !307, !noalias !309
  %i.mn = getelementptr [4 x i8], ptr %i.kn, i64 %index449 ; 2 uses
  store <8 x float> %predphi452, ptr %i.mn, align 4, !tbaa !24, !alias.scope !307, !noalias !309
  %i.mo = getelementptr [2 x i8], ptr %i.lf, i64 %index449
  %wide.masked.load454 = tail call <8 x i16> @llvm.masked.load.v8i16.p0(ptr align 2 %i.mo, <8 x i1> %i.lt, <8 x i16> poison), !tbaa !59, !alias.scope !311
  %i.mp = sitofp <8 x i16> %wide.masked.load454 to <8 x float>
  %i.mq = fmul reassoc nsz arcp contract afn <8 x float> %i.ly, %i.mp
  %i.mr = fadd reassoc nsz arcp contract afn <8 x float> %i.mq, splat (float 1.000000e+00)
  %i.ms = fmul reassoc nsz arcp contract afn <8 x float> %i.mr, %predphi452
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ms, ptr align 4 %i.mn, <8 x i1> %i.lt), !tbaa !24, !alias.scope !307, !noalias !309
  %i.mt = getelementptr [2 x i8], ptr %i.lh, i64 %index449
  %wide.masked.load456 = tail call <8 x i16> @llvm.masked.load.v8i16.p0(ptr align 2 %i.mt, <8 x i1> %i.lt, <8 x i16> poison), !tbaa !59, !alias.scope !311
  %i.mu = sitofp <8 x i16> %wide.masked.load456 to <8 x float>
  %i.mv = fmul reassoc nsz arcp contract afn <8 x float> %i.lz, %i.mu
  %i.mw = fadd reassoc nsz arcp contract afn <8 x float> %i.mv, splat (float 1.000000e+00)
  %i.mx = fmul reassoc nsz arcp contract afn <8 x float> %i.mw, %predphi452
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.mx, ptr align 4 %i.ml, <8 x i1> %i.lt), !tbaa !24, !alias.scope !307, !noalias !309
  %i.my = getelementptr [2 x i8], ptr %i.li, i64 %index449
  %wide.masked.load458 = tail call <8 x i16> @llvm.masked.load.v8i16.p0(ptr align 2 %i.my, <8 x i1> %i.lv, <8 x i16> poison), !tbaa !59, !alias.scope !311
  %i.mz = sitofp <8 x i16> %wide.masked.load458 to <8 x float>
  %i.na = fmul reassoc nsz arcp contract afn <8 x float> %i.ma, %i.mz
  %i.nb = fadd reassoc nsz arcp contract afn <8 x float> %i.na, splat (float -1.000000e+00)
  %i.nc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp2.v8f32(<8 x float> %i.nb)
  %i.nd = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.nc
  %i.ne = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp2.v8f32(<8 x float> %i.nd)
  %predphi459 = select i1 %.not388.i.i, <8 x float> %i.ne, <8 x float> splat (float 1.000000e+00)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %index449
  store <8 x float> %predphi459, ptr %i.nf, align 4, !tbaa !24, !alias.scope !307, !noalias !309
  %index.next460 = add nuw i64 %index449, 8       ; 2 uses
  %vec.ind.next461 = add <8 x i32> %vec.ind450, splat (i32 8)
  %i.ng = icmp eq i64 %index.next460, %n.vec
  br i1 %i.ng, label %middle.block462, label %vector.body448, !llvm.loop !312

middle.block462:                                  ; preds = %vector.body448
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.loopexit.i.i, label %scalar.ph430.preheader

scalar.ph430.preheader:                           ; preds = %vector.memcheck420, %.lr.ph480.i.i, %middle.block462
  %indvars.iv568.i.i.ph = phi i64 [ 0, %vector.memcheck420 ], [ 0, %.lr.ph480.i.i ], [ %n.vec, %middle.block462 ]
  %i.nh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.la
  br label %scalar.ph430

scalar.ph430:                                     ; preds = %scalar.ph430.preheader, %.critedge392.sink.split.i.i
  %indvars.iv568.i.i = phi i64 [ %indvars.iv.next569.i.i, %.critedge392.sink.split.i.i ], [ %indvars.iv568.i.i.ph, %scalar.ph430.preheader ] ; 12 uses
  %i.ni = trunc nuw nsw i64 %indvars.iv568.i.i to i32
  %i.nj = uitofp nneg i32 %i.ni to double
  %i.nk = fadd reassoc nsz arcp contract afn double %i.nj, 5.000000e-01
  %i.nl = fptrunc reassoc nsz arcp contract afn double %i.nk to float
  %i.nm = fmul reassoc nsz arcp contract afn float %i.nl, %i.nh ; 2 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv568.i.i
  store float %i.nm, ptr %i.nn, align 4, !tbaa !24
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv568.i.i
end_hunk_2
begin_hunk_3_@commit_params:bb.a
  store float %.sink662.i.i, ptr %i.nx, align 4, !tbaa !24
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv568.i.i ; 2 uses
  store float %.sink662.i.i, ptr %i.ny, align 4, !tbaa !24
  br i1 %.not386.i.i, label %bb.az, label %.critedge390.i.i

bb.az:                                            ; preds = %.critedge.i.i
  %i.nz = load float, ptr %i.le, align 4, !tbaa !304
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %i.lf, i64 %indvars.iv568.i.i
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !59
  %i.oc = sitofp i16 %i.ob to float
  %i.od = fmul reassoc nsz arcp contract afn float %i.nz, f0x35000000
  %i.oe = fmul reassoc nsz arcp contract afn float %i.od, %i.oc
  %i.of = fadd reassoc nsz arcp contract afn float %i.oe, 1.000000e+00
  %i.og = fmul reassoc nsz arcp contract afn float %i.of, %.sink662.i.i
  store float %i.og, ptr %i.ny, align 4, !tbaa !24
  %i.oh = load float, ptr %i.lg, align 4, !tbaa !305
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %indvars.iv568.i.i
  %i.oj = load i16, ptr %i.oi, align 2, !tbaa !59
  %i.ok = sitofp i16 %i.oj to float
  %i.ol = fmul reassoc nsz arcp contract afn float %i.oh, f0x35000000
  %i.om = fmul reassoc nsz arcp contract afn float %i.ol, %i.ok
  %i.on = fadd reassoc nsz arcp contract afn float %i.om, 1.000000e+00
  %i.oo = fmul reassoc nsz arcp contract afn float %i.on, %.sink662.i.i
  store float %i.oo, ptr %i.nw, align 4, !tbaa !24
  br label %.critedge390.i.i

.critedge390.i.i:                                 ; preds = %bb.az, %.critedge.i.i
  br i1 %.not388.i.i, label %bb.ba, label %.critedge392.sink.split.i.i

bb.ba:                                            ; preds = %.critedge390.i.i
  %i.op = load float, ptr %i.en, align 4, !tbaa !306
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %indvars.iv568.i.i
  %i.or = load i16, ptr %i.oq, align 2, !tbaa !59
  %i.os = sitofp i16 %i.or to float
  %i.ot = fmul reassoc nsz arcp contract afn float %i.op, f0x39000000
  %i.ou = fmul reassoc nsz arcp contract afn float %i.ot, %i.os
  %i.ov = fadd reassoc nsz arcp contract afn float %i.ou, -1.000000e+00
  %exp2.i.i = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ov)
  %i.ow = fsub reassoc nsz arcp contract afn float 5.000000e-01, %exp2.i.i
  %exp2389.i.i = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ow)
  br label %.critedge392.sink.split.i.i

.critedge392.sink.split.i.i:                      ; preds = %bb.ba, %.critedge390.i.i
  %exp2389.sink.i.i = phi float [ %exp2389.i.i, %bb.ba ], [ 1.000000e+00, %.critedge390.i.i ]
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv568.i.i
  store float %exp2389.sink.i.i, ptr %i.ox, align 4, !tbaa !24
  %indvars.iv.next569.i.i = add nuw nsw i64 %indvars.iv568.i.i, 1 ; 2 uses
  %exitcond571.not.i.i = icmp eq i64 %indvars.iv.next569.i.i, %wide.trip.count.i.i
  br i1 %exitcond571.not.i.i, label %.loopexit.i.i, label %scalar.ph430, !llvm.loop !313

bb.bb:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.oy = getelementptr inbounds nuw i8, ptr %i.eh, i64 692 ; 2 uses
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !59
  %i.pa = fcmp reassoc nsz arcp contract afn ogt float %i.oz, 0.000000e+00
  br i1 %i.pa, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store float 0.000000e+00, ptr %i.a, align 16, !tbaa !24
  store float 1.000000e+00, ptr %i.b, align 16, !tbaa !24
  store float 0.000000e+00, ptr %i.c, align 16, !tbaa !24
  store float 0.000000e+00, ptr %i.d, align 16, !tbaa !24
  store float 0.000000e+00, ptr %i.km, align 4, !tbaa !24
  store float 1.000000e+00, ptr %i.ko, align 4, !tbaa !24
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.0332.i.i = phi i32 [ 1, %bb.bc ], [ 0, %bb.bb ] ; 2 uses
  %i.pb = load i32, ptr %i.kp, align 4, !tbaa !59
  %i.pc = icmp sgt i32 %i.pb, 0
  br i1 %i.pc, label %.lr.ph472.i.i, label %..preheader436.i_crit_edge.i

..preheader436.i_crit_edge.i:                     ; preds = %bb.bd
  %.pre.i = load i32, ptr %i.t, align 4, !tbaa !267
  br label %.preheader436.i.i

.lr.ph472.i.i:                                    ; preds = %bb.bd
  %i.pd = getelementptr inbounds nuw i8, ptr %i.eh, i64 688
  %i.pe = getelementptr inbounds nuw i8, ptr %i.eh, i64 736
  %i.pf = getelementptr inbounds nuw i8, ptr %.0, i64 312
  %i.pg = getelementptr inbounds nuw i8, ptr %i.eh, i64 780
  %i.ph = getelementptr inbounds nuw i8, ptr %.0, i64 316
  %i.pi = getelementptr inbounds nuw i8, ptr %i.eh, i64 824
  %i.pj = getelementptr inbounds nuw i8, ptr %i.eh, i64 868
  %i.pk = zext nneg i32 %.0332.i.i to i64
  %i.pl = load i32, ptr %i.t, align 4, !tbaa !267 ; 2 uses
  %i.pm = and i32 %i.pl, 2
  %.not383.i.i = icmp eq i32 %i.pm, 0
  br label %bb.be

.preheader436.loopexit.i.i:                       ; preds = %.critedge394.sink.split.i.i
  %indvars556.i.i = trunc i64 %indvars.iv.next552.i.i to i32
  %.pre.i.i = load float, ptr %i.a, align 16, !tbaa !24
  %.pre595.i.i = load float, ptr %i.b, align 16
  %.pre596.i.i = load float, ptr %i.c, align 16
  %.pre597.i.i = load float, ptr %i.d, align 16
  br label %.preheader436.i.i

.preheader436.i.i:                                ; preds = %.preheader436.loopexit.i.i, %..preheader436.i_crit_edge.i
  %i.pn = phi i32 [ %.pre.i, %..preheader436.i_crit_edge.i ], [ %i.pl, %.preheader436.loopexit.i.i ] ; 2 uses
  %i.po = phi float [ 0.000000e+00, %..preheader436.i_crit_edge.i ], [ %.pre597.i.i, %.preheader436.loopexit.i.i ]
  %i.pp = phi float [ 0.000000e+00, %..preheader436.i_crit_edge.i ], [ %.pre596.i.i, %.preheader436.loopexit.i.i ]
  %i.pq = phi float [ 1.000000e+00, %..preheader436.i_crit_edge.i ], [ %.pre595.i.i, %.preheader436.loopexit.i.i ]
  %i.pr = phi float [ 0.000000e+00, %..preheader436.i_crit_edge.i ], [ %.pre.i.i, %.preheader436.loopexit.i.i ]
  %.1335.lcssa.i.i = phi i32 [ %.0332.i.i, %..preheader436.i_crit_edge.i ], [ %indvars556.i.i, %.preheader436.loopexit.i.i ] ; 2 uses
  %i.ps = icmp samesign ugt i32 %.1335.lcssa.i.i, 1 ; 3 uses
  %wide.trip.count.i.i62.i = zext nneg i32 %.1335.lcssa.i.i to i64 ; 6 uses
  %i.pt = getelementptr [4 x i8], ptr %i.b, i64 %wide.trip.count.i.i62.i
  %i.pu = getelementptr i8, ptr %i.pt, i64 -4
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ee, i64 364 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ee, i64 300
  %i.px = getelementptr [4 x i8], ptr %i.c, i64 %wide.trip.count.i.i62.i
  %i.py = getelementptr i8, ptr %i.px, i64 -4
  %i.pz = getelementptr [4 x i8], ptr %i.d, i64 %wide.trip.count.i.i62.i
  %i.qa = getelementptr i8, ptr %i.pz, i64 -4
  %i.qb = and i32 %i.pn, 4
  %.not380.i.i = icmp eq i32 %i.qb, 0
  %i.qc = and i32 %i.pn, 1
  %.not381.i.i = icmp eq i32 %i.qc, 0
  br label %bb.bh

bb.be:                                            ; preds = %.critedge394.sink.split.i.i, %.lr.ph472.i.i
  %indvars.iv553.i.i = phi i64 [ 0, %.lr.ph472.i.i ], [ %indvars.iv.next554.i.i, %.critedge394.sink.split.i.i ] ; 6 uses
  %indvars.iv551.i.i = phi i64 [ %i.pk, %.lr.ph472.i.i ], [ %indvars.iv.next552.i.i, %.critedge394.sink.split.i.i ] ; 7 uses
  %i.qd = load float, ptr %i.pd, align 8, !tbaa !59
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv553.i.i
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !59
  %i.qg = fmul reassoc nsz arcp contract afn float %i.qf, %i.qd ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv551.i.i
  store float %i.qg, ptr %i.qh, align 4, !tbaa !24
  %i.qi = load float, ptr %i.el, align 4, !tbaa !300
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv553.i.i
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !59
  %i.ql = fmul reassoc nsz arcp contract afn float %i.qi, f0x3C23D70A
  %i.qm = fmul reassoc nsz arcp contract afn float %i.ql, %i.qk
  %i.qn = fadd reassoc nsz arcp contract afn float %i.qm, 1.000000e+00
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv551.i.i
  store float %i.qn, ptr %i.qo, align 4, !tbaa !24
  %i.qp = load float, ptr %i.pf, align 4, !tbaa !304
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %indvars.iv553.i.i
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !59
  %i.qs = fmul reassoc nsz arcp contract afn float %i.qr, %i.qp
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv551.i.i
  store float %i.qs, ptr %i.qt, align 4, !tbaa !24
  %i.qu = load float, ptr %i.ph, align 4, !tbaa !305
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %indvars.iv553.i.i
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !59
  %i.qx = fmul reassoc nsz arcp contract afn float %i.qw, %i.qu
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv551.i.i
  store float %i.qx, ptr %i.qy, align 4, !tbaa !24
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv551.i.i
  store float %i.qg, ptr %i.qz, align 4, !tbaa !24
  br i1 %.not383.i.i, label %.critedge394.sink.split.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ra = load float, ptr %i.en, align 4, !tbaa !306
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv553.i.i
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !59
  %i.rd = fmul reassoc nsz arcp contract afn float %i.rc, f0x3C23D70A
  %i.re = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.rd
  %i.rf = fmul reassoc nsz arcp contract afn float %i.re, %i.ra
  %i.rg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.rf
  br label %.critedge394.sink.split.i.i

.critedge394.sink.split.i.i:                      ; preds = %bb.bf, %bb.be
  %.sink665.i.i = phi float [ %i.rg, %bb.bf ], [ 1.000000e+00, %bb.be ]
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv551.i.i
  store float %.sink665.i.i, ptr %i.rh, align 4, !tbaa !24
  %indvars.iv.next552.i.i = add nuw nsw i64 %indvars.iv551.i.i, 1 ; 2 uses
  %indvars.iv.next554.i.i = add nuw nsw i64 %indvars.iv553.i.i, 1 ; 2 uses
  %i.ri = load i32, ptr %i.kp, align 4, !tbaa !59
  %i.rj = sext i32 %i.ri to i64
  %i.rk = icmp slt i64 %indvars.iv.next554.i.i, %i.rj
  br i1 %i.rk, label %bb.be, label %.preheader436.loopexit.i.i, !llvm.loop !314

bb.bg:                                            ; preds = %.critedge397.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.loopexit.i.i

bb.bh:                                            ; preds = %.critedge397.i.i, %.preheader436.i.i
  %indvars.iv564.i.i = phi i64 [ 0, %.preheader436.i.i ], [ %indvars.iv.next565.i.i, %.critedge397.i.i ] ; 9 uses
  %i.rl = trunc nuw nsw i64 %indvars.iv564.i.i to i32
  %i.rm = uitofp nneg i32 %i.rl to float
  %i.rn = fmul reassoc nnan nsz arcp contract afn float %i.rm, f0x3D888889 ; 11 uses
  %i.ro = fcmp reassoc nsz arcp contract afn olt float %i.rn, %i.pr ; 2 uses
  br i1 %i.ro, label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i64.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bh
  br i1 %i.ps, label %.lr.ph.i.i66.i, label %._crit_edge.i.i63.i

.lr.ph.i.i66.i:                                   ; preds = %.preheader.i.i.i, %bb.bj
  %indvars.iv.i.i67.i = phi i64 [ %indvars.iv.next.i.i68.i, %bb.bj ], [ 1, %.preheader.i.i.i ] ; 4 uses
  %i.rp = add nsw i64 %indvars.iv.i.i67.i, -1     ; 2 uses
  %i.rq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.rp
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !24 ; 3 uses
  %i.rs = fcmp reassoc nsz arcp contract afn ult float %i.rn, %i.rr
  br i1 %i.rs, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i66.i
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i67.i
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !24 ; 2 uses
  %i.rv = fcmp reassoc nsz arcp contract afn ugt float %i.rn, %i.ru
  br i1 %i.rv, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %.lr.ph.i.i66.i
  %indvars.iv.next.i.i68.i = add nuw nsw i64 %indvars.iv.i.i67.i, 1 ; 2 uses
  %exitcond.not.i.i69.i = icmp eq i64 %indvars.iv.next.i.i68.i, %wide.trip.count.i.i62.i
  br i1 %exitcond.not.i.i69.i, label %._crit_edge.i.i63.i, label %.lr.ph.i.i66.i, !llvm.loop !199

bb.bk:                                            ; preds = %bb.bi
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i67.i
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !24
  %i.ry = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.rp
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !24 ; 2 uses
  %i.sa = fsub reassoc nsz arcp contract afn float %i.rx, %i.rz
  %i.sb = fsub reassoc nsz arcp contract afn float %i.ru, %i.rr
  %i.sc = fsub reassoc nsz arcp contract afn float %i.rn, %i.rr
  %i.sd = fmul reassoc nsz arcp contract afn float %i.sa, %i.sc
  %i.se = fdiv reassoc nsz arcp contract afn float %i.sd, %i.sb
  %i.sf = fadd reassoc nsz arcp contract afn float %i.se, %i.rz
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i64.i

._crit_edge.i.i63.i:                              ; preds = %bb.bj, %.preheader.i.i.i
  %i.sg = load float, ptr %i.pu, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i64.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.i64.i: ; preds = %._crit_edge.i.i63.i, %bb.bk, %bb.bh
  %.1.i.i65.i = phi nsz float [ %i.sf, %bb.bk ], [ %i.sg, %._crit_edge.i.i63.i ], [ %i.pq, %bb.bh ] ; 5 uses
  %i.sh = fdiv reassoc nsz arcp contract afn float %i.rn, %.1.i.i65.i
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv564.i.i
  store float %i.sh, ptr %i.si, align 4, !tbaa !24
  br i1 %.not380.i.i, label %bb.bl, label %.preheader435.i.i

.preheader435.i.i:                                ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i64.i
  %invariant.gep474.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv564.i.i ; 3 uses
  store float %.1.i.i65.i, ptr %invariant.gep474.i.i, align 4, !tbaa !24
  %gep475.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep474.i.i, i64 64
  store float %.1.i.i65.i, ptr %gep475.1.i.i, align 4, !tbaa !24
  %gep475.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep474.i.i, i64 128
  store float %.1.i.i65.i, ptr %gep475.2.i.i, align 4, !tbaa !24
  br label %.critedge396.i.i

bb.bl:                                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i64.i
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv564.i.i
  store float 1.000000e+00, ptr %i.sj, align 4, !tbaa !24
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %indvars.iv564.i.i
  store float 1.000000e+00, ptr %i.sk, align 4, !tbaa !24
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv564.i.i
  store float 1.000000e+00, ptr %i.sl, align 4, !tbaa !24
  br label %.critedge396.i.i

.critedge396.i.i:                                 ; preds = %bb.bl, %.preheader435.i.i
  %i.sm = phi float [ %.1.i.i65.i, %.preheader435.i.i ], [ 1.000000e+00, %bb.bl ] ; 2 uses
  br i1 %.not381.i.i, label %.critedge397.i.i, label %bb.bm

bb.bm:                                            ; preds = %.critedge396.i.i
  br i1 %i.ro, label %_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i, label %.preheader.i401.i.i

.preheader.i401.i.i:                              ; preds = %bb.bm
  br i1 %i.ps, label %.lr.ph.i406.i.i, label %._crit_edge.i402.i.i

.lr.ph.i406.i.i:                                  ; preds = %.preheader.i401.i.i, %bb.bo
  %indvars.iv.i407.i.i = phi i64 [ %indvars.iv.next.i408.i.i, %bb.bo ], [ 1, %.preheader.i401.i.i ] ; 4 uses
  %i.sn = add nsw i64 %indvars.iv.i407.i.i, -1    ; 2 uses
  %i.so = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.sn
  %i.sp = load float, ptr %i.so, align 4, !tbaa !24 ; 3 uses
  %i.sq = fcmp reassoc nsz arcp contract afn ult float %i.rn, %i.sp
  br i1 %i.sq, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i406.i.i
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i407.i.i
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !24 ; 2 uses
  %i.st = fcmp reassoc nsz arcp contract afn ugt float %i.rn, %i.ss
  br i1 %i.st, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn, %.lr.ph.i406.i.i
  %indvars.iv.next.i408.i.i = add nuw nsw i64 %indvars.iv.i407.i.i, 1 ; 2 uses
  %exitcond.not.i409.i.i = icmp eq i64 %indvars.iv.next.i408.i.i, %wide.trip.count.i.i62.i
  br i1 %exitcond.not.i409.i.i, label %._crit_edge.i402.i.i, label %.lr.ph.i406.i.i, !llvm.loop !199

bb.bp:                                            ; preds = %bb.bn
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i407.i.i
  %i.sv = load float, ptr %i.su, align 4, !tbaa !24
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.sn
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !24 ; 2 uses
  %i.sy = fsub reassoc nsz arcp contract afn float %i.sv, %i.sx
  %i.sz = fsub reassoc nsz arcp contract afn float %i.ss, %i.sp
  %i.ta = fsub reassoc nsz arcp contract afn float %i.rn, %i.sp
  %i.tb = fmul reassoc nsz arcp contract afn float %i.sy, %i.ta
  %i.tc = fdiv reassoc nsz arcp contract afn float %i.tb, %i.sz
  %i.td = fadd reassoc nsz arcp contract afn float %i.tc, %i.sx
  br label %.preheader.i411.i.i

._crit_edge.i402.i.i:                             ; preds = %bb.bo, %.preheader.i401.i.i
  %i.te = load float, ptr %i.py, align 4, !tbaa !24
  br label %.preheader.i411.i.i

.preheader.i411.i.i:                              ; preds = %._crit_edge.i402.i.i, %bb.bp
  %.1.i403.i.i = phi nsz float [ %i.td, %bb.bp ], [ %i.te, %._crit_edge.i402.i.i ] ; 2 uses
  br i1 %i.ps, label %.lr.ph.i416.i.i, label %._crit_edge.i412.i.i

.lr.ph.i416.i.i:                                  ; preds = %.preheader.i411.i.i, %bb.br
  %indvars.iv.i417.i.i = phi i64 [ %indvars.iv.next.i418.i.i, %bb.br ], [ 1, %.preheader.i411.i.i ] ; 4 uses
  %i.tf = add nsw i64 %indvars.iv.i417.i.i, -1    ; 2 uses
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.tf
  %i.th = load float, ptr %i.tg, align 4, !tbaa !24 ; 3 uses
  %i.ti = fcmp reassoc nsz arcp contract afn ult float %i.rn, %i.th
  br i1 %i.ti, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i416.i.i
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i417.i.i
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !24 ; 2 uses
  %i.tl = fcmp reassoc nsz arcp contract afn ugt float %i.rn, %i.tk
  br i1 %i.tl, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq, %.lr.ph.i416.i.i
  %indvars.iv.next.i418.i.i = add nuw nsw i64 %indvars.iv.i417.i.i, 1 ; 2 uses
  %exitcond.not.i419.i.i = icmp eq i64 %indvars.iv.next.i418.i.i, %wide.trip.count.i.i62.i
  br i1 %exitcond.not.i419.i.i, label %._crit_edge.i412.i.i, label %.lr.ph.i416.i.i, !llvm.loop !199

bb.bs:                                            ; preds = %bb.bq
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i417.i.i
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !24
  %i.to = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.tf
  %i.tp = load float, ptr %i.to, align 4, !tbaa !24 ; 2 uses
  %i.tq = fsub reassoc nsz arcp contract afn float %i.tn, %i.tp
  %i.tr = fsub reassoc nsz arcp contract afn float %i.tk, %i.th
  %i.ts = fsub reassoc nsz arcp contract afn float %i.rn, %i.th
  %i.tt = fmul reassoc nsz arcp contract afn float %i.tq, %i.ts
  %i.tu = fdiv reassoc nsz arcp contract afn float %i.tt, %i.tr
  %i.tv = fadd reassoc nsz arcp contract afn float %i.tu, %i.tp
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i

._crit_edge.i412.i.i:                             ; preds = %bb.br, %.preheader.i411.i.i
  %i.tw = load float, ptr %i.qa, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i: ; preds = %._crit_edge.i412.i.i, %bb.bs, %bb.bm
  %.1.i403432.i.i = phi float [ %.1.i403.i.i, %bb.bs ], [ %.1.i403.i.i, %._crit_edge.i412.i.i ], [ %i.pp, %bb.bm ]
  %.1.i413.i.i = phi nsz float [ %i.tv, %bb.bs ], [ %i.tw, %._crit_edge.i412.i.i ], [ %i.po, %bb.bm ]
  %i.tx = fadd reassoc nsz arcp contract afn float %.1.i403432.i.i, 1.000000e+00
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv564.i.i
  %i.tz = fmul reassoc nsz arcp contract afn float %i.tx, %i.sm
  store float %i.tz, ptr %i.ty, align 4, !tbaa !24
  %i.ua = fadd reassoc nsz arcp contract afn float %.1.i413.i.i, 1.000000e+00
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv564.i.i
  %i.uc = fmul reassoc nsz arcp contract afn float %i.ua, %i.sm
  store float %i.uc, ptr %i.ub, align 4, !tbaa !24
  br label %.critedge397.i.i

.critedge397.i.i:                                 ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit420.i.i, %.critedge396.i.i
  %indvars.iv.next565.i.i = add nuw nsw i64 %indvars.iv564.i.i, 1 ; 2 uses
  %exitcond567.not.i.i = icmp eq i64 %indvars.iv.next565.i.i, 16
  br i1 %exitcond567.not.i.i, label %bb.bg, label %bb.bh, !llvm.loop !315

bb.bt:                                            ; preds = %bb.by, %.preheader438.i.i
  %indvars.iv547.i.i = phi i64 [ 0, %.preheader438.i.i ], [ %indvars.iv.next548.i.i, %bb.by ] ; 8 uses
  %i.ud = trunc nuw nsw i64 %indvars.iv547.i.i to i32
  %i.ue = uitofp nneg i32 %i.ud to float
  %i.uf = fmul reassoc nnan nsz arcp contract afn float %i.ue, f0x3D888889 ; 8 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv547.i.i
  store float %i.uf, ptr %i.ug, align 4, !tbaa !24
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv547.i.i
  store float %i.uf, ptr %i.uh, align 4, !tbaa !24
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv547.i.i ; 2 uses
  store float 1.000000e+00, ptr %i.ui, align 4, !tbaa !24
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv547.i.i ; 2 uses
  store float 1.000000e+00, ptr %i.uj, align 4, !tbaa !24
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv547.i.i ; 3 uses
  store float 1.000000e+00, ptr %i.uk, align 4, !tbaa !24
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv547.i.i ; 2 uses
  store float 1.000000e+00, ptr %i.ul, align 4, !tbaa !24
  %square374.i.i = fmul reassoc nnan nsz arcp contract afn float %i.uf, %i.uf ; 2 uses
  %i.um = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.uf, i32 4) ; 2 uses
  %i.un = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.uf, i32 6) ; 2 uses
  %i.uo = load i32, ptr %i.ks, align 4, !tbaa !59
  %.not375.i.i = icmp eq i32 %i.uo, 0
  br i1 %.not375.i.i, label %._crit_edge.thread.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.up = load i32, ptr %i.t, align 4, !tbaa !267
  %i.uq = and i32 %i.up, 5
  %.not376.i.i = icmp eq i32 %i.uq, 0
  br i1 %.not376.i.i, label %._crit_edge.thread.i.i, label %.preheader437.i.i

.preheader437.i.i:                                ; preds = %bb.bu
  %i.ur = load i32, ptr %i.kp, align 4, !tbaa !59
  %i.us = icmp sgt i32 %i.ur, 0
  br i1 %i.us, label %.lr.ph.i.i.preheader, label %._crit_edge.thread.i.i

.lr.ph.i.i.preheader:                             ; preds = %.preheader437.i.i
  %i.ut = insertelement <2 x float> poison, float %i.um, i64 0
  %i.uu = insertelement <2 x float> %i.ut, float %i.un, i64 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.uv = icmp eq i32 %i.vn, 1
  br i1 %i.uv, label %bb.bv, label %._crit_edge.thread.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv544.i.i = phi i64 [ %indvars.iv.next545.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.uw = getelementptr inbounds nuw [24 x i8], ptr %i.kt, i64 %indvars.iv544.i.i ; 3 uses
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !59
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !59
  %i.va = fmul reassoc nsz arcp contract afn float %i.uz, %square374.i.i
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.vc = load <2 x float>, ptr %i.vb, align 4, !tbaa !59
  %i.vd = fmul reassoc nsz arcp contract afn <2 x float> %i.vc, %i.uu ; 2 uses
  %i.ve = load float, ptr %i.el, align 4, !tbaa !300
  %i.vf = fadd reassoc nsz arcp contract afn float %i.ux, -1.000000e+00
  %i.vg = fadd reassoc nsz arcp contract afn float %i.vf, %i.va
  %i.vh = extractelement <2 x float> %i.vd, i64 0
  %i.vi = fadd reassoc nsz arcp contract afn float %i.vg, %i.vh
  %i.vj = extractelement <2 x float> %i.vd, i64 1
  %i.vk = fadd reassoc nsz arcp contract afn float %i.vi, %i.vj
  %i.vl = fmul reassoc nsz arcp contract afn float %i.vk, %i.ve
  %i.vm = fadd reassoc nsz arcp contract afn float %i.vl, 1.000000e+00
  %gep.i.i = getelementptr inbounds nuw [64 x i8], ptr %i.uk, i64 %indvars.iv544.i.i
  store float %i.vm, ptr %gep.i.i, align 4, !tbaa !24
  %indvars.iv.next545.i.i = add nuw nsw i64 %indvars.iv544.i.i, 1 ; 2 uses
  %i.vn = load i32, ptr %i.kp, align 4, !tbaa !59 ; 2 uses
  %i.vo = sext i32 %i.vn to i64
  %i.vp = icmp slt i64 %indvars.iv.next545.i.i, %i.vo
  br i1 %i.vp, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !316

bb.bv:                                            ; preds = %._crit_edge.i.i
  %i.vq = load float, ptr %i.uk, align 4, !tbaa !24 ; 2 uses
  store float %i.vq, ptr %i.uj, align 4, !tbaa !24
  store float %i.vq, ptr %i.ui, align 4, !tbaa !24
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.bv, %._crit_edge.i.i, %.preheader437.i.i, %bb.bu, %bb.bt
  %i.vr = load i32, ptr %i.ku, align 8, !tbaa !59
  %.not377.i.i = icmp eq i32 %i.vr, 0
  br i1 %.not377.i.i, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge.thread.i.i
  %i.vs = load i32, ptr %i.t, align 4, !tbaa !267
  %i.vt = and i32 %i.vs, 2
  %.not378.i.i = icmp eq i32 %i.vt, 0
  br i1 %.not378.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.vu = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.uf, i32 8)
  %i.vv = load <4 x float>, ptr %i.kv, align 8, !tbaa !59
  %i.vw = insertelement <4 x float> poison, float %square374.i.i, i64 0
  %i.vx = insertelement <4 x float> %i.vw, float %i.um, i64 1
  %i.vy = insertelement <4 x float> %i.vx, float %i.un, i64 2
  %i.vz = insertelement <4 x float> %i.vy, float %i.vu, i64 3
  %i.wa = fmul reassoc nsz arcp contract afn <4 x float> %i.vv, %i.vz
  %i.wb = load float, ptr %i.kw, align 8, !tbaa !59
  %i.wc = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.uf, i32 10)
  %i.wd = fmul reassoc nsz arcp contract afn float %i.wb, %i.wc
  %op.rdx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.wd, <4 x float> %i.wa)
  %i.we = load float, ptr %i.en, align 4, !tbaa !306
  %i.wf = fmul reassoc nsz arcp contract afn float %op.rdx, %i.we
  %i.wg = fadd reassoc nsz arcp contract afn float %i.wf, 1.000000e+00
  %i.wh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.wg
  store float %i.wh, ptr %i.ul, align 4, !tbaa !24
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %._crit_edge.thread.i.i
  %indvars.iv.next548.i.i = add nuw nsw i64 %indvars.iv547.i.i, 1 ; 2 uses
  %exitcond550.not.i.i = icmp eq i64 %indvars.iv.next548.i.i, 16
  br i1 %exitcond550.not.i.i, label %.loopexit.i.i, label %bb.bt, !llvm.loop !317

bb.bz:                                            ; preds = %bb.aw
  %i.wi = load i32, ptr %i.kp, align 4, !tbaa !59
  %.not.i.i = icmp eq i32 %i.wi, 0
  br i1 %.not.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.wj = getelementptr inbounds nuw i8, ptr %i.eh, i64 688
  %i.wk = load <4 x float>, ptr %i.wj, align 8, !tbaa !59
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.wl = phi <4 x float> [ %i.wk, %bb.ca ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.bz ] ; 8 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.eh, i64 704
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !59
  %.not366.i.i = icmp eq i32 %i.wn, 0
  br i1 %.not366.i.i, label %vector.memcheck, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.wo = getelementptr inbounds nuw i8, ptr %i.eh, i64 708
  %i.wp = load <4 x float>, ptr %i.wo, align 4, !tbaa !59
  %i.wq = getelementptr inbounds nuw i8, ptr %i.eh, i64 724
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !59
  %i.ws = getelementptr inbounds nuw i8, ptr %i.eh, i64 728
  %i.wt = load float, ptr %i.ws, align 8, !tbaa !59
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.cc, %bb.cb
  %.0346.i.i = phi nsz float [ %i.wr, %bb.cc ], [ 0.000000e+00, %bb.cb ] ; 2 uses
  %.0345.i.i = phi nsz float [ %i.wt, %bb.cc ], [ 0.000000e+00, %bb.cb ] ; 2 uses
  %i.wu = phi <4 x float> [ %i.wp, %bb.cc ], [ zeroinitializer, %bb.cb ] ; 8 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ee, i64 364 ; 3 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ee, i64 300 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.0, i64 312 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.0, i64 316 ; 2 uses
  %i.wz = load i32, ptr %i.t, align 4, !tbaa !267 ; 2 uses
  %i.xa = and i32 %i.wz, 4
  %.not368.i.i = icmp ne i32 %i.xa, 0             ; 4 uses
  %.not369.i.i = trunc i32 %i.wz to i1            ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ee, i64 492
  %scevgep391 = getelementptr i8, ptr %.0, i64 320
  %bound0 = icmp ult ptr %i.kl, %scevgep391
  %bound1 = icmp ult ptr %i.el, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %vector.memcheck
  %i.xb = extractelement <4 x float> %i.wl, i64 3 ; 2 uses
  %i.xc = extractelement <4 x float> %i.wl, i64 2
  %i.xd = extractelement <4 x float> %i.wl, i64 1
  %i.xe = extractelement <4 x float> %i.wl, i64 0
  %i.xf = extractelement <4 x float> %i.wu, i64 2
  %i.xg = extractelement <4 x float> %i.wu, i64 1
  %i.xh = extractelement <4 x float> %i.wu, i64 0
  %i.xi = extractelement <4 x float> %i.wu, i64 3
  br label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
end_hunk_3
begin_hunk_4_@commit_params:bb.a
  %i.yj = fadd reassoc nsz arcp contract afn <8 x float> %i.yi, %broadcast.splat401
  %i.yk = fmul reassoc nsz arcp contract afn <8 x float> %i.yj, %i.xz
  %i.yl = fadd reassoc nsz arcp contract afn <8 x float> %i.yk, %broadcast.splat399
  %i.ym = fmul reassoc nsz arcp contract afn <8 x float> %i.yl, %i.xy
  %i.yn = fmul reassoc nsz arcp contract afn <8 x float> %i.ym, %wide.masked.gather419
  %i.yo = fdiv reassoc nsz arcp contract afn <8 x float> %i.yn, <float 0.000000e+00, float f0x3D888889, float f0x3E088889, float f0x3E4CCCCE, float f0x3E888889, float f0x3EAAAAAB, float f0x3ECCCCCE, float f0x3EEEEEF0>
  %i.yp = fadd reassoc nsz arcp contract afn <8 x float> %i.yo, %predphi
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.yp, ptr align 4 %i.wv, <8 x i1> %i.xx), !tbaa !24, !alias.scope !318, !noalias !321
  store <8 x float> splat (float 1.000000e+00), ptr %i.ko, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ee, i64 204
  store <8 x float> <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00>, ptr %i.yq, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.yr = getelementptr i8, ptr %i.ee, i64 140
  store <8 x float> <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00>, ptr %i.yr, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.ys = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat409, <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00> ; 2 uses
  %i.yt = fmul reassoc nsz arcp contract afn <8 x float> %i.ys, %i.ys ; 3 uses
  %i.yu = fmul reassoc nsz arcp contract afn <8 x float> %i.yt, %broadcast.splat411
  %i.yv = fadd reassoc nsz arcp contract afn <8 x float> %i.yu, %broadcast.splat413
  %i.yw = fmul reassoc nsz arcp contract afn <8 x float> %i.yv, %i.yt
  %i.yx = fadd reassoc nsz arcp contract afn <8 x float> %i.yw, %broadcast.splat415
  %i.yy = fmul reassoc nsz arcp contract afn <8 x float> %i.yx, %i.yt
  %i.yz = fadd reassoc nsz arcp contract afn <8 x float> %i.yy, splat (float 1.000000e+00)
  %i.za = fmul reassoc nsz arcp contract afn <8 x float> %i.yz, %broadcast.splat409
  %wide.masked.gather.1 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat417, <8 x i1> %i.xk, <8 x float> poison), !tbaa !300, !alias.scope !321
  %i.zb = fadd reassoc nsz arcp contract afn <8 x float> %i.za, splat (float -1.000000e+00)
  %i.zc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather.1, %i.zb
  %i.zd = fadd reassoc nsz arcp contract afn <8 x float> %i.zc, splat (float 1.000000e+00)
  %predphi.1 = select i1 %.not368.i.i, <8 x float> %i.zd, <8 x float> splat (float 1.000000e+00) ; 6 uses
  %i.ze = getelementptr i8, ptr %i.ee, i64 396    ; 2 uses
  store <8 x float> %predphi.1, ptr %i.ze, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ee, i64 332
  store <8 x float> %predphi.1, ptr %i.zf, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.zg = getelementptr i8, ptr %i.ee, i64 268    ; 2 uses
  store <8 x float> %predphi.1, ptr %i.zg, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  %i.zh = select i1 %.not369.i.i, <8 x i1> splat (i1 true), <8 x i1> zeroinitializer ; 4 uses
  %i.zi = fmul reassoc nsz arcp contract afn <8 x float> %predphi.1, <float f0x3F088889, float 6.000000e-01, float f0x3F2AAAAB, float f0x3F3BBBBC, float f0x3F4CCCCE, float f0x3F5DDDDF, float f0x3F6EEEF0, float 1.000000e+00> ; 4 uses
  %i.zj = fmul reassoc nsz arcp contract afn <8 x float> %i.zi, %i.zi ; 4 uses
  %wide.masked.gather418.1 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat405, <8 x i1> %i.zh, <8 x float> poison), !tbaa !304, !alias.scope !321
  %i.zk = fmul reassoc nsz arcp contract afn <8 x float> %i.zj, %broadcast.splat397
  %i.zl = fadd reassoc nsz arcp contract afn <8 x float> %i.zk, %broadcast.splat395
  %i.zm = fmul reassoc nsz arcp contract afn <8 x float> %i.zl, %i.zj
  %i.zn = fadd reassoc nsz arcp contract afn <8 x float> %i.zm, %broadcast.splat393
  %i.zo = fmul reassoc nsz arcp contract afn <8 x float> %i.zn, %i.zi
  %i.zp = fmul reassoc nsz arcp contract afn <8 x float> %i.zo, %wide.masked.gather418.1
  %i.zq = fmul reassoc nsz arcp contract afn <8 x float> %i.zp, <float f0x3FEFFFFF, float f0x3FD55555, float 1.500000e+00, float f0x3FAE8BA3, float f0x3F9FFFFF, float f0x3F93B13A, float f0x3F892492, float 1.000000e+00>
  %i.zr = fadd reassoc nsz arcp contract afn <8 x float> %i.zq, %predphi.1
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.zr, ptr align 4 %i.zg, <8 x i1> %i.zh), !tbaa !24, !alias.scope !318, !noalias !321
  %wide.masked.gather419.1 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat407, <8 x i1> %i.zh, <8 x float> poison), !tbaa !305, !alias.scope !321
  %i.zs = fmul reassoc nsz arcp contract afn <8 x float> %i.zj, %broadcast.splat403
  %i.zt = fadd reassoc nsz arcp contract afn <8 x float> %i.zs, %broadcast.splat401
  %i.zu = fmul reassoc nsz arcp contract afn <8 x float> %i.zt, %i.zj
  %i.zv = fadd reassoc nsz arcp contract afn <8 x float> %i.zu, %broadcast.splat399
  %i.zw = fmul reassoc nsz arcp contract afn <8 x float> %i.zv, %i.zi
  %i.zx = fmul reassoc nsz arcp contract afn <8 x float> %i.zw, %wide.masked.gather419.1
  %i.zy = fmul reassoc nsz arcp contract afn <8 x float> %i.zx, <float f0x3FEFFFFF, float f0x3FD55555, float 1.500000e+00, float f0x3FAE8BA3, float f0x3F9FFFFF, float f0x3F93B13A, float f0x3F892492, float 1.000000e+00>
  %i.zz = fadd reassoc nsz arcp contract afn <8 x float> %i.zy, %predphi.1
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.zz, ptr align 4 %i.ze, <8 x i1> %i.zh), !tbaa !24, !alias.scope !318, !noalias !321
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.ee, i64 460
  store <8 x float> splat (float 1.000000e+00), ptr %i.aaa, align 4, !tbaa !24, !alias.scope !318, !noalias !321
  br label %.loopexit.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %.critedge400.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.critedge400.i.i ], [ 0, %scalar.ph.preheader ] ; 8 uses
  %i.aab = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.aac = uitofp nneg i32 %i.aab to float
  %i.aad = fmul reassoc nnan nsz arcp contract afn float %i.aac, f0x3D888889 ; 7 uses
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv.i.i
  store float %i.aad, ptr %i.aae, align 4, !tbaa !24
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv.i.i
  store float %i.aad, ptr %i.aaf, align 4, !tbaa !24
  br i1 %.not368.i.i, label %bb.cd, label %.critedge399.i.i

bb.cd:                                            ; preds = %scalar.ph
  %i.aag = fmul reassoc nsz arcp contract afn float %i.aad, %i.xb ; 2 uses
  %square.i.i = fmul reassoc nsz arcp contract afn float %i.aag, %i.aag ; 3 uses
  %i.aah = fmul reassoc nsz arcp contract afn float %square.i.i, %i.xc
  %i.aai = fadd reassoc nsz arcp contract afn float %i.aah, %i.xd
  %i.aaj = fmul reassoc nsz arcp contract afn float %i.aai, %square.i.i
  %i.aak = fadd reassoc nsz arcp contract afn float %i.aaj, %i.xe
  %i.aal = fmul reassoc nsz arcp contract afn float %i.aak, %square.i.i
  %i.aam = fadd reassoc nsz arcp contract afn float %i.aal, 1.000000e+00
  %i.aan = fmul reassoc nsz arcp contract afn float %i.aam, %i.xb
  %i.aao = load float, ptr %i.el, align 4, !tbaa !300
  %i.aap = fadd reassoc nsz arcp contract afn float %i.aan, -1.000000e+00
  %i.aaq = fmul reassoc nsz arcp contract afn float %i.aao, %i.aap
  %i.aar = fadd reassoc nsz arcp contract afn float %i.aaq, 1.000000e+00
  br label %.critedge399.i.i

.critedge399.i.i:                                 ; preds = %bb.cd, %scalar.ph
  %.sink669.i.i = phi float [ %i.aar, %bb.cd ], [ 1.000000e+00, %scalar.ph ] ; 6 uses
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %indvars.iv.i.i ; 2 uses
  store float %.sink669.i.i, ptr %i.aas, align 4, !tbaa !24
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %indvars.iv.i.i
  store float %.sink669.i.i, ptr %i.aat, align 4, !tbaa !24
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv.i.i ; 2 uses
  store float %.sink669.i.i, ptr %i.aau, align 4, !tbaa !24
  %i.aav = fcmp reassoc nsz arcp contract afn ogt float %i.aad, 0.000000e+00
  %or.cond.i.i = select i1 %.not369.i.i, i1 %i.aav, i1 false
  br i1 %or.cond.i.i, label %bb.ce, label %.critedge400.i.i

bb.ce:                                            ; preds = %.critedge399.i.i
  %i.aaw = fmul reassoc nsz arcp contract afn float %.sink669.i.i, %i.aad ; 4 uses
  %square370.i.i = fmul reassoc nsz arcp contract afn float %i.aaw, %i.aaw ; 4 uses
  %i.aax = load float, ptr %i.wx, align 4, !tbaa !304
  %i.aay = fmul reassoc nsz arcp contract afn float %square370.i.i, %i.xf
  %i.aaz = fadd reassoc nsz arcp contract afn float %i.aay, %i.xg
  %i.aba = fmul reassoc nsz arcp contract afn float %i.aaz, %square370.i.i
  %i.abb = fadd reassoc nsz arcp contract afn float %i.aba, %i.xh
  %i.abc = fmul reassoc nsz arcp contract afn float %i.abb, %i.aaw
  %i.abd = fmul reassoc nsz arcp contract afn float %i.abc, %i.aax
  %i.abe = fdiv reassoc nsz arcp contract afn float %i.abd, %i.aad
  %i.abf = fadd reassoc nsz arcp contract afn float %i.abe, %.sink669.i.i
  store float %i.abf, ptr %i.aau, align 4, !tbaa !24
  %i.abg = load float, ptr %i.wy, align 4, !tbaa !305
  %i.abh = fmul reassoc nsz arcp contract afn float %square370.i.i, %.0345.i.i
  %i.abi = fadd reassoc nsz arcp contract afn float %i.abh, %.0346.i.i
  %i.abj = fmul reassoc nsz arcp contract afn float %i.abi, %square370.i.i
  %i.abk = fadd reassoc nsz arcp contract afn float %i.abj, %i.xi
  %i.abl = fmul reassoc nsz arcp contract afn float %i.abk, %i.aaw
  %i.abm = fmul reassoc nsz arcp contract afn float %i.abl, %i.abg
  %i.abn = fdiv reassoc nsz arcp contract afn float %i.abm, %i.aad
  %i.abo = fadd reassoc nsz arcp contract afn float %i.abn, %.sink669.i.i
  store float %i.abo, ptr %i.aas, align 4, !tbaa !24
  br label %.critedge400.i.i

.critedge400.i.i:                                 ; preds = %bb.ce, %.critedge399.i.i
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv.i.i
  store float 1.000000e+00, ptr %i.abp, align 4, !tbaa !24
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i56.i = icmp eq i64 %indvars.iv.next.i.i, 16
  br i1 %exitcond.not.i56.i, label %.loopexit.i.i, label %scalar.ph, !llvm.loop !323

.loopexit.i.i:                                    ; preds = %.critedge400.i.i, %bb.by, %.critedge392.sink.split.i.i, %vector.body, %middle.block462, %bb.bg, %bb.ax, %bb.aw
  %.0327.i.i = phi i32 [ 0, %bb.aw ], [ 16, %bb.bg ], [ %i.kx, %bb.ax ], [ 16, %vector.body ], [ %i.kx, %middle.block462 ], [ 16, %bb.by ], [ %i.kx, %.critedge392.sink.split.i.i ], [ 16, %.critedge400.i.i ] ; 8 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.eh, i64 1508
  %i.abr = load <2 x i32>, ptr %i.abq, align 4, !tbaa !38
  %i.abs = sitofp <2 x i32> %i.abr to <2 x float>
  %i.abt = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.abs, splat (float 5.000000e-01) ; 2 uses
  %i.abu = extractelement <2 x float> %i.abt, i64 0 ; 3 uses
  %i.abv = extractelement <2 x float> %i.abt, i64 1 ; 3 uses
  %i.abw = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.abu, float noundef %i.abv) #32
  %i.abx = fcmp reassoc nsz arcp contract afn olt float %i.abu, %i.abv
  %i.aby = select reassoc nsz arcp contract afn i1 %i.abx, float %i.abu, float %i.abv
  %i.abz = fdiv reassoc nsz arcp contract afn float %i.aby, %i.abw ; 2 uses
  %i.aca = fmul reassoc nsz arcp contract afn float %i.abz, f0x3BA4A9CF
  %i.acb = fsub reassoc nsz arcp contract afn float f0x3BA4A9CF, %i.aca
  %i.acc = load float, ptr %i.kl, align 4, !tbaa !24
  %i.acd = icmp sgt i32 %.0327.i.i, 1
  %wide.trip.count.i425.i.i = zext i32 %.0327.i.i to i64 ; 6 uses
  %i.ace = sext i32 %.0327.i.i to i64             ; 3 uses
  %invariant.gep491.i.i = getelementptr [4 x i8], ptr %i.kn, i64 %i.ace ; 3 uses
  %i.acf = getelementptr i8, ptr %invariant.gep491.i.i, i64 -4 ; 2 uses
  %i.acg = getelementptr i8, ptr %invariant.gep491.i.i, i64 60
  %i.ach = getelementptr i8, ptr %invariant.gep491.i.i, i64 124
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ee, i64 300 ; 4 uses
  %i.acj = getelementptr [4 x i8], ptr %i.aci, i64 %i.ace
  %i.ack = getelementptr i8, ptr %i.acj, i64 -4
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ee, i64 364 ; 4 uses
  %i.acm = getelementptr [4 x i8], ptr %i.acl, i64 %i.ace
  %i.acn = getelementptr i8, ptr %i.acm, i64 -4
  br label %.preheader434.i.i

.preheader434.i.i:                                ; preds = %.split484.us.i.i, %.loopexit.i.i
  %.0330494.int.i.i = phi i32 [ 0, %.loopexit.i.i ], [ %.int.i59.i, %.split484.us.i.i ] ; 2 uses
  %.0331493.i.i = phi float [ 0.000000e+00, %.loopexit.i.i ], [ %.us-phi.i58.i, %.split484.us.i.i ] ; 6 uses
  %indvar.conv.i57.i = uitofp nneg i32 %.0330494.int.i.i to float
  %i.aco = fmul reassoc nsz arcp contract afn float %i.acb, %indvar.conv.i57.i
  %i.acp = fadd reassoc nsz arcp contract afn float %i.aco, %i.abz ; 10 uses
  %i.acq = fcmp reassoc nsz arcp contract afn olt float %i.acp, %i.acc
  br i1 %i.acq, label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us.preheader.i.i, label %.preheader434.split.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit430.us.preheader.i.i: ; preds = %.preheader434.i.i
  %i.acr = load float, ptr %i.kn, align 4, !tbaa !24 ; 2 uses
  %i.acs = fcmp reassoc nsz arcp contract afn ogt float %.0331493.i.i, %i.acr
  %i.act = select reassoc nsz arcp contract afn i1 %i.acs, float %.0331493.i.i, float %i.acr ; 2 uses
  %i.acu = load float, ptr %i.aci, align 4, !tbaa !24 ; 2 uses
  %i.acv = fcmp reassoc nsz arcp contract afn ogt float %i.act, %i.acu
  %i.acw = select reassoc nsz arcp contract afn i1 %i.acv, float %i.act, float %i.acu ; 2 uses
  %i.acx = load float, ptr %i.acl, align 4, !tbaa !24 ; 2 uses
  %i.acy = fcmp reassoc nsz arcp contract afn ogt float %i.acw, %i.acx
  %i.acz = select reassoc nsz arcp contract afn i1 %i.acy, float %i.acw, float %i.acx
  br label %.split484.us.i.i

.preheader434.split.i.i:                          ; preds = %.preheader434.i.i
  br i1 %i.acd, label %.lr.ph.i426.us.i.i, label %.preheader.i421.preheader.i.i

.preheader.i421.preheader.i.i:                    ; preds = %.preheader434.split.i.i
  %i.ada = load float, ptr %i.acf, align 4, !tbaa !24 ; 2 uses
  %i.adb = fcmp reassoc nsz arcp contract afn ogt float %.0331493.i.i, %i.ada
  %i.adc = select reassoc nsz arcp contract afn i1 %i.adb, float %.0331493.i.i, float %i.ada ; 2 uses
  %i.add = load float, ptr %i.acg, align 4, !tbaa !24 ; 2 uses
  %i.ade = fcmp reassoc nsz arcp contract afn ogt float %i.adc, %i.add
  %i.adf = select reassoc nsz arcp contract afn i1 %i.ade, float %i.adc, float %i.add ; 2 uses
  %i.adg = load float, ptr %i.ach, align 4, !tbaa !24 ; 2 uses
  %i.adh = fcmp reassoc nsz arcp contract afn ogt float %i.adf, %i.adg
  %i.adi = select reassoc nsz arcp contract afn i1 %i.adh, float %i.adf, float %i.adg
  br label %.split484.us.i.i

.lr.ph.i426.us.i.i:                               ; preds = %.preheader434.split.i.i, %bb.cg
  %indvars.iv.i427.us.i.i = phi i64 [ %indvars.iv.next.i428.us.i.i, %bb.cg ], [ 1, %.preheader434.split.i.i ] ; 4 uses
  %i.adj = add nsw i64 %indvars.iv.i427.us.i.i, -1 ; 2 uses
  %i.adk = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.adj
  %i.adl = load float, ptr %i.adk, align 4, !tbaa !24 ; 3 uses
  %i.adm = fcmp reassoc nsz arcp contract afn ult float %i.acp, %i.adl
  br i1 %i.adm, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i426.us.i.i
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv.i427.us.i.i
  %i.ado = load float, ptr %i.adn, align 4, !tbaa !24 ; 2 uses
  %i.adp = fcmp reassoc nsz arcp contract afn ugt float %i.acp, %i.ado
  br i1 %i.adp, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %.lr.ph.i426.us.i.i
  %indvars.iv.next.i428.us.i.i = add nuw nsw i64 %indvars.iv.i427.us.i.i, 1 ; 2 uses
  %exitcond.not.i429.us.i.i = icmp eq i64 %indvars.iv.next.i428.us.i.i, %wide.trip.count.i425.i.i
  br i1 %exitcond.not.i429.us.i.i, label %._crit_edge.i422.loopexit.us.i.i, label %.lr.ph.i426.us.i.i, !llvm.loop !199

bb.ch:                                            ; preds = %bb.cf
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv.i427.us.i.i
  %i.adr = load float, ptr %i.adq, align 4, !tbaa !24
  %i.ads = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %i.adj
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !24 ; 2 uses
  %i.adu = fsub reassoc nsz arcp contract afn float %i.adr, %i.adt
  %i.adv = fsub reassoc nsz arcp contract afn float %i.ado, %i.adl
  %i.adw = fsub reassoc nsz arcp contract afn float %i.acp, %i.adl
  %i.adx = fmul reassoc nsz arcp contract afn float %i.adu, %i.adw
  %i.ady = fdiv reassoc nsz arcp contract afn float %i.adx, %i.adv
  %i.adz = fadd reassoc nsz arcp contract afn float %i.ady, %i.adt
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.i.i: ; preds = %._crit_edge.i422.loopexit.us.i.i, %bb.ch
  %.1.i423.us488.i.i = phi nsz float [ %i.adz, %bb.ch ], [ %i.afq, %._crit_edge.i422.loopexit.us.i.i ] ; 2 uses
  %i.aea = fcmp reassoc nsz arcp contract afn ogt float %.0331493.i.i, %.1.i423.us488.i.i
  %i.aeb = select reassoc nsz arcp contract afn i1 %i.aea, float %.0331493.i.i, float %.1.i423.us488.i.i ; 2 uses
  br label %.lr.ph.i426.us.1.i.i

.lr.ph.i426.us.1.i.i:                             ; preds = %bb.ck, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.i.i
  %indvars.iv.i427.us.1.i.i = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.i.i ], [ %indvars.iv.next.i428.us.1.i.i, %bb.ck ] ; 4 uses
  %i.aec = add nsw i64 %indvars.iv.i427.us.1.i.i, -1 ; 2 uses
  %i.aed = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.aec
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !24 ; 3 uses
  %i.aef = fcmp reassoc nsz arcp contract afn ult float %i.acp, %i.aee
  br i1 %i.aef, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.i426.us.1.i.i
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv.i427.us.1.i.i
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !24 ; 2 uses
  %i.aei = fcmp reassoc nsz arcp contract afn ugt float %i.acp, %i.aeh
  br i1 %i.aei, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %indvars.iv.i427.us.1.i.i
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !24
  %i.ael = getelementptr inbounds [4 x i8], ptr %i.aci, i64 %i.aec
  %i.aem = load float, ptr %i.ael, align 4, !tbaa !24 ; 2 uses
  %i.aen = fsub reassoc nsz arcp contract afn float %i.aek, %i.aem
  %i.aeo = fsub reassoc nsz arcp contract afn float %i.aeh, %i.aee
  %i.aep = fsub reassoc nsz arcp contract afn float %i.acp, %i.aee
  %i.aeq = fmul reassoc nsz arcp contract afn float %i.aen, %i.aep
  %i.aer = fdiv reassoc nsz arcp contract afn float %i.aeq, %i.aeo
  %i.aes = fadd reassoc nsz arcp contract afn float %i.aer, %i.aem
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i

bb.ck:                                            ; preds = %bb.ci, %.lr.ph.i426.us.1.i.i
  %indvars.iv.next.i428.us.1.i.i = add nuw nsw i64 %indvars.iv.i427.us.1.i.i, 1 ; 2 uses
  %exitcond.not.i429.us.1.i.i = icmp eq i64 %indvars.iv.next.i428.us.1.i.i, %wide.trip.count.i425.i.i
  br i1 %exitcond.not.i429.us.1.i.i, label %._crit_edge.i422.loopexit.us.1.i.i, label %.lr.ph.i426.us.1.i.i, !llvm.loop !199

._crit_edge.i422.loopexit.us.1.i.i:               ; preds = %bb.ck
  %i.aet = load float, ptr %i.ack, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i: ; preds = %._crit_edge.i422.loopexit.us.1.i.i, %bb.cj
  %.1.i423.us488.1.i.i = phi nsz float [ %i.aes, %bb.cj ], [ %i.aet, %._crit_edge.i422.loopexit.us.1.i.i ] ; 2 uses
  %i.aeu = fcmp reassoc nsz arcp contract afn ogt float %i.aeb, %.1.i423.us488.1.i.i
  %i.aev = select reassoc nsz arcp contract afn i1 %i.aeu, float %i.aeb, float %.1.i423.us488.1.i.i ; 2 uses
  br label %.lr.ph.i426.us.2.i.i

.lr.ph.i426.us.2.i.i:                             ; preds = %bb.cn, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i
  %indvars.iv.i427.us.2.i.i = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.1.i.i ], [ %indvars.iv.next.i428.us.2.i.i, %bb.cn ] ; 4 uses
  %i.aew = add nsw i64 %indvars.iv.i427.us.2.i.i, -1 ; 2 uses
  %i.aex = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.aew
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !24 ; 3 uses
  %i.aez = fcmp reassoc nsz arcp contract afn ult float %i.acp, %i.aey
  br i1 %i.aez, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i426.us.2.i.i
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv.i427.us.2.i.i
  %i.afb = load float, ptr %i.afa, align 4, !tbaa !24 ; 2 uses
  %i.afc = fcmp reassoc nsz arcp contract afn ugt float %i.acp, %i.afb
  br i1 %i.afc, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.acl, i64 %indvars.iv.i427.us.2.i.i
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !24
  %i.aff = getelementptr inbounds [4 x i8], ptr %i.acl, i64 %i.aew
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !24 ; 2 uses
  %i.afh = fsub reassoc nsz arcp contract afn float %i.afe, %i.afg
  %i.afi = fsub reassoc nsz arcp contract afn float %i.afb, %i.aey
  %i.afj = fsub reassoc nsz arcp contract afn float %i.acp, %i.aey
  %i.afk = fmul reassoc nsz arcp contract afn float %i.afh, %i.afj
  %i.afl = fdiv reassoc nsz arcp contract afn float %i.afk, %i.afi
  %i.afm = fadd reassoc nsz arcp contract afn float %i.afl, %i.afg
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.2.i.i

bb.cn:                                            ; preds = %bb.cl, %.lr.ph.i426.us.2.i.i
  %indvars.iv.next.i428.us.2.i.i = add nuw nsw i64 %indvars.iv.i427.us.2.i.i, 1 ; 2 uses
  %exitcond.not.i429.us.2.i.i = icmp eq i64 %indvars.iv.next.i428.us.2.i.i, %wide.trip.count.i425.i.i
  br i1 %exitcond.not.i429.us.2.i.i, label %._crit_edge.i422.loopexit.us.2.i.i, label %.lr.ph.i426.us.2.i.i, !llvm.loop !199

._crit_edge.i422.loopexit.us.2.i.i:               ; preds = %bb.cn
  %i.afn = load float, ptr %i.acn, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.2.i.i

_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.2.i.i: ; preds = %._crit_edge.i422.loopexit.us.2.i.i, %bb.cm
  %.1.i423.us488.2.i.i = phi nsz float [ %i.afm, %bb.cm ], [ %i.afn, %._crit_edge.i422.loopexit.us.2.i.i ] ; 2 uses
  %i.afo = fcmp reassoc nsz arcp contract afn ogt float %i.aev, %.1.i423.us488.2.i.i
  %i.afp = select reassoc nsz arcp contract afn i1 %i.afo, float %i.aev, float %.1.i423.us488.2.i.i
  br label %.split484.us.i.i

._crit_edge.i422.loopexit.us.i.i:                 ; preds = %bb.cg
  %i.afq = load float, ptr %i.acf, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.i.i

.preheader.i60.i:                                 ; preds = %.split484.us.i.i
  %i.afr = icmp sgt i32 %.0327.i.i, 0
  br i1 %i.afr, label %.lr.ph499.i.i.preheader, label %.sink.split.i41

.lr.ph499.i.i.preheader:                          ; preds = %.preheader.i60.i
  %min.iters.check464 = icmp ult i32 %.0327.i.i, 8
  br i1 %min.iters.check464, label %.lr.ph499.i.i.preheader518, label %vector.ph465

vector.ph465:                                     ; preds = %.lr.ph499.i.i.preheader
  %n.vec466 = and i64 %wide.trip.count.i425.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert467 = insertelement <8 x float> poison, float %.us-phi.i58.i, i64 0
  %broadcast.splat468 = shufflevector <8 x float> %broadcast.splatinsert467, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.afs = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat468
  %i.aft = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat468
  %i.afu = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat468
  br label %vector.body469

vector.body469:                                   ; preds = %vector.body469, %vector.ph465
  %index470 = phi i64 [ 0, %vector.ph465 ], [ %index.next474, %vector.body469 ] ; 3 uses
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %index470 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.afv, align 4, !tbaa !24
  %i.afw = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat468
  store <8 x float> %i.afw, ptr %i.afv, align 4, !tbaa !24
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %index470 ; 4 uses
  %wide.load471 = load <8 x float>, ptr %i.afx, align 4, !tbaa !24
  %i.afy = fmul reassoc nsz arcp contract afn <8 x float> %wide.load471, %i.afs
  store <8 x float> %i.afy, ptr %i.afx, align 4, !tbaa !24
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afx, i64 64 ; 2 uses
  %wide.load472 = load <8 x float>, ptr %i.afz, align 4, !tbaa !24
  %i.aga = fmul reassoc nsz arcp contract afn <8 x float> %wide.load472, %i.aft
  store <8 x float> %i.aga, ptr %i.afz, align 4, !tbaa !24
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afx, i64 128 ; 2 uses
  %wide.load473 = load <8 x float>, ptr %i.agb, align 4, !tbaa !24
  %i.agc = fmul reassoc nsz arcp contract afn <8 x float> %wide.load473, %i.afu
  store <8 x float> %i.agc, ptr %i.agb, align 4, !tbaa !24
  %index.next474 = add nuw i64 %index470, 8       ; 2 uses
  %i.agd = icmp eq i64 %index.next474, %n.vec466
  br i1 %i.agd, label %middle.block475, label %vector.body469, !llvm.loop !324

middle.block475:                                  ; preds = %vector.body469
  %cmp.n476 = icmp eq i64 %n.vec466, %wide.trip.count.i425.i.i
  br i1 %cmp.n476, label %.sink.split.i41, label %.lr.ph499.i.i.preheader518

.lr.ph499.i.i.preheader518:                       ; preds = %.lr.ph499.i.i.preheader, %middle.block475
  %indvars.iv589.i.i.ph = phi i64 [ 0, %.lr.ph499.i.i.preheader ], [ %n.vec466, %middle.block475 ]
  %i.age = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.us-phi.i58.i
  %i.agf = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.us-phi.i58.i
  %i.agg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.us-phi.i58.i
  br label %.lr.ph499.i.i

.split484.us.i.i:                                 ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.2.i.i, %.preheader.i421.preheader.i.i, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us.preheader.i.i
  %.us-phi.i58.i = phi float [ %i.afp, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us487.2.i.i ], [ %i.acz, %_ZL26_interpolate_linear_splinePKfS0_if.exit430.us.preheader.i.i ], [ %i.adi, %.preheader.i421.preheader.i.i ] ; 6 uses
  %.int.i59.i = add nuw nsw i32 %.0330494.int.i.i, 1 ; 2 uses
  %exitcond584.not.i.i = icmp eq i32 %.int.i59.i, 200
  br i1 %exitcond584.not.i.i, label %.preheader.i60.i, label %.preheader434.i.i, !llvm.loop !325

.lr.ph499.i.i:                                    ; preds = %.lr.ph499.i.i.preheader518, %.lr.ph499.i.i
  %indvars.iv589.i.i = phi i64 [ %indvars.iv.next590.i.i, %.lr.ph499.i.i ], [ %indvars.iv589.i.i.ph, %.lr.ph499.i.i.preheader518 ] ; 3 uses
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv589.i.i ; 2 uses
  %i.agi = load float, ptr %i.agh, align 4, !tbaa !24
  %i.agj = fmul reassoc nsz arcp contract afn float %i.agi, %.us-phi.i58.i
  store float %i.agj, ptr %i.agh, align 4, !tbaa !24
  %invariant.gep495.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv589.i.i ; 4 uses
  %i.agk = load float, ptr %invariant.gep495.i.i, align 4, !tbaa !24
  %i.agl = fmul reassoc nsz arcp contract afn float %i.agk, %i.age
  store float %i.agl, ptr %invariant.gep495.i.i, align 4, !tbaa !24
  %gep496.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep495.i.i, i64 64 ; 2 uses
  %i.agm = load float, ptr %gep496.1.i.i, align 4, !tbaa !24
  %i.agn = fmul reassoc nsz arcp contract afn float %i.agm, %i.agf
  store float %i.agn, ptr %gep496.1.i.i, align 4, !tbaa !24
  %gep496.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep495.i.i, i64 128 ; 2 uses
  %i.ago = load float, ptr %gep496.2.i.i, align 4, !tbaa !24
  %i.agp = fmul reassoc nsz arcp contract afn float %i.ago, %i.agg
  store float %i.agp, ptr %gep496.2.i.i, align 4, !tbaa !24
  %indvars.iv.next590.i.i = add nuw nsw i64 %indvars.iv589.i.i, 1 ; 2 uses
  %exitcond593.not.i.i = icmp eq i64 %indvars.iv.next590.i.i, %wide.trip.count.i425.i.i
  br i1 %exitcond593.not.i.i, label %.sink.split.i41, label %.lr.ph499.i.i, !llvm.loop !326

.sink.split.i41:                                  ; preds = %.lr.ph499.i.i, %middle.block475, %.preheader.i60.i, %bb.av
  %.0327.i.sink.i = phi i32 [ %i.kk, %bb.av ], [ %.0327.i.i, %.preheader.i60.i ], [ %.0327.i.i, %middle.block475 ], [ %.0327.i.i, %.lr.ph499.i.i ]
  store i32 %.0327.i.sink.i, ptr %i.ej, align 8, !tbaa !196
  br label %bb.co

bb.co:                                            ; preds = %.sink.split.i41, %bb.y
  %i.agq = getelementptr inbounds nuw i8, ptr %.0, i64 328
  %i.agr = load float, ptr %i.agq, align 4, !tbaa !327 ; 3 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.ee, i64 96
  %i.agt = fcmp reassoc nsz arcp contract afn olt float %i.agr, 1.000000e-01
  %i.agu = fcmp reassoc nsz arcp contract afn ogt float %i.agr, 2.000000e+00
  %or.cond53.i = or i1 %i.agt, %i.agu
  %spec.store.select.i = select i1 %or.cond53.i, float 1.000000e+00, float %i.agr
  store float %spec.store.select.i, ptr %i.ags, align 8
  %i.agv = load ptr, ptr %i.w, align 8, !tbaa !187
  %i.agw = load i32, ptr %i.agv, align 16, !tbaa !291
  %i.agx = icmp ne i32 %i.agw, 0
  %i.agy = icmp ne ptr %i.eg, null
  %or.cond.i42 = select i1 %i.agx, i1 %i.agy, i1 false
  br i1 %or.cond.i42, label %bb.cp, label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit

bb.cp:                                            ; preds = %bb.co
  %i.agz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !124
  %i.ahb = getelementptr i8, ptr %i.aha, i64 644
  %.val54.i = load i32, ptr %i.ahb, align 4, !tbaa !125
  %i.ahc = and i32 %.val54.i, 4
  %.not51.i = icmp eq i32 %i.ahc, 0
  br i1 %.not51.i, label %_ZL17_commit_params_lfP15dt_iop_module_tP20dt_iop_lens_params_tP18dt_dev_pixelpipe_tP22dt_dev_pixelpipe_iop_t.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ahd = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ahe = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull %i.ahd) #30 ; 0 uses
  %i.ahf = load i32, ptr %i.ej, align 8, !tbaa !196 ; 2 uses
  %i.ahg = icmp sgt i32 %i.ahf, 0
  br i1 %i.ahg, label %.lr.ph.i71.i, label %_ZL21_check_corrections_mdP18dt_iop_lens_data_t.exit.i

.lr.ph.i71.i:                                     ; preds = %bb.cq
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ee, i64 428
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ee, i64 236
  %wide.trip.count.i72.i = zext nneg i32 %i.ahf to i64
  br label %bb.cr

._crit_edge.loopexit.i.i:                         ; preds = %bb.cu
  %i.ahj = icmp ne i32 %.1.i.i, 0
  %i.ahk = icmp ne <2 x i32> %i.aih, zeroinitializer
  br label %_ZL21_check_corrections_mdP18dt_iop_lens_data_t.exit.i

bb.cr:                                            ; preds = %bb.cu, %.lr.ph.i71.i
  %indvars.iv.i73.i = phi i64 [ 0, %.lr.ph.i71.i ], [ %indvars.iv.next.i76.i, %bb.cu ] ; 3 uses
  %.03145.i.i = phi i32 [ 0, %.lr.ph.i71.i ], [ %.1.i.i, %bb.cu ]
  %i.ahl = phi <2 x i32> [ zeroinitializer, %.lr.ph.i71.i ], [ %i.aih, %bb.cu ]
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.ahh, i64 %indvars.iv.i73.i
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !24
  %invariant.gep.i74.i = getelementptr inbounds nuw [4 x i8], ptr %i.ahi, i64 %indvars.iv.i73.i ; 3 uses
  %i.aho = load float, ptr %invariant.gep.i74.i, align 4, !tbaa !24 ; 3 uses
  %gep.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i74.i, i64 64
  %i.ahp = load float, ptr %gep.1.i.i, align 4, !tbaa !24 ; 3 uses
  %i.ahq = insertelement <2 x float> poison, float %i.aho, i64 0
  %i.ahr = insertelement <2 x float> %i.ahq, float %i.ahp, i64 1
  %i.ahs = fadd reassoc nsz arcp contract afn <2 x float> %i.ahr, splat (float -1.000000e+00)
  %i.aht = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ahs)
  %i.ahu = fcmp reassoc nsz arcp contract afn uge <2 x float> %i.aht, splat (float 1.000000e-07) ; 2 uses
  %i.ahv = extractelement <2 x i1> %i.ahu, i64 0
  %i.ahw = extractelement <2 x i1> %i.ahu, i64 1
  %i.ahx = or i1 %i.ahv, %i.ahw
  %gep.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i74.i, i64 128
  %i.ahy = load float, ptr %gep.2.i.i, align 4, !tbaa !24 ; 3 uses
  %i.ahz = insertelement <2 x float> poison, float %i.ahn, i64 0
  %i.aia = insertelement <2 x float> %i.ahz, float %i.ahy, i64 1
  %i.aib = fadd reassoc nsz arcp contract afn <2 x float> %i.aia, splat (float -1.000000e+00)
  %i.aic = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aib)
  %i.aid = fcmp reassoc nsz arcp contract afn uge <2 x float> %i.aic, splat (float 1.000000e-07) ; 2 uses
  %i.aie = extractelement <2 x i1> %i.aid, i64 1
  %i.aif = or i1 %i.aie, %i.ahx
  %i.aig = insertelement <2 x i1> %i.aid, i1 %i.aif, i64 1
  %i.aih = select <2 x i1> %i.aig, <2 x i32> splat (i32 1), <2 x i32> %i.ahl ; 2 uses
  %i.aii = fcmp reassoc nsz arcp contract afn une float %i.aho, %i.ahp
  br i1 %i.aii, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aij = fcmp reassoc nsz arcp contract afn une float %i.aho, %i.ahy
  %i.aik = fcmp reassoc nsz arcp contract afn une float %i.ahp, %i.ahy
  %or.cond.i75.i = or i1 %i.aij, %i.aik
  br i1 %or.cond.i75.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.1.i.i = phi i32 [ 1, %bb.ct ], [ %.03145.i.i, %bb.cs ] ; 2 uses
  %indvars.iv.next.i76.i = add nuw nsw i64 %indvars.iv.i73.i, 1 ; 2 uses
  %exitcond.not.i77.i = icmp eq i64 %indvars.iv.next.i76.i, %wide.trip.count.i72.i
  br i1 %exitcond.not.i77.i, label %._crit_edge.loopexit.i.i, label %bb.cr, !llvm.loop !328
end_hunk_4
