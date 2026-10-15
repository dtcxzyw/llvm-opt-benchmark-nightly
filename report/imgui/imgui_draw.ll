Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZL19stbtt_GetGlyphShapePK14stbtt_fontinfoiPP12stbtt_vertex:bb.a
bb.aq:                                            ; preds = %bb.ap
  br i1 %.not355.i, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ib = add nsw i32 %.0329.i49, 1
  %i.ic = sext i32 %.0329.i49 to i64
  %i.id = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.ic ; 5 uses
  %i.ie = add nsw i32 %.0302.i55, %i.ew
  %i.if = lshr i32 %i.ie, 1
  %i.ig = add nsw i32 %.0300.i58, %i.ez
  %i.ih = lshr i32 %i.ig, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  store i8 3, ptr %i.ii, align 2, !tbaa !514
  %i.ij = trunc i32 %i.if to i16
  store i16 %i.ij, ptr %i.id, align 2, !tbaa !519
  %i.ik = trunc i32 %i.ih to i16
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  store i16 %i.ik, ptr %i.il, align 2, !tbaa !520
  %i.im = trunc nsw i32 %.0302.i55 to i16
  %i.in = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  store i16 %i.im, ptr %i.in, align 2, !tbaa !515
  %i.io = trunc nsw i32 %.0300.i58 to i16
  %i.ip = getelementptr inbounds nuw i8, ptr %i.id, i64 6
  store i16 %i.io, ptr %i.ip, align 2, !tbaa !516
  br label %bb.aw

bb.as:                                            ; preds = %bb.ap
  %i.iq = sext i32 %.0329.i49 to i64
  %i.ir = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.iq ; 7 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 12 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 2 ; 2 uses
  br i1 %.not355.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i8 3, ptr %i.is, align 2, !tbaa !514
  store i16 %i.ev, ptr %i.ir, align 2, !tbaa !519
  store i16 %i.ey, ptr %i.it, align 2, !tbaa !520
  %i.iu = trunc nsw i32 %.0302.i55 to i16
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store i16 %i.iu, ptr %i.iv, align 2, !tbaa !515
  %i.iw = trunc nsw i32 %.0300.i58 to i16
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  store i8 2, ptr %i.is, align 2, !tbaa !514
  store i16 %i.ev, ptr %i.ir, align 2, !tbaa !519
  store i16 %i.ey, ptr %i.it, align 2, !tbaa !520
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store i16 0, ptr %i.ix, align 2, !tbaa !515
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sink = phi i16 [ 0, %bb.au ], [ %i.iw, %bb.at ]
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 6
  store i16 %.sink, ptr %i.iy, align 2, !tbaa !516
  %.3332.i = add nsw i32 %.0329.i49, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ar, %bb.aq, %bb.ao
  %.4333.i = phi i32 [ %i.hh, %bb.ao ], [ %.3332.i, %bb.av ], [ %i.ib, %bb.ar ], [ %.0329.i49, %bb.aq ] ; 7 uses
  %.5321.i = phi i32 [ %.4320.i, %bb.ao ], [ %.3319.i50, %bb.av ], [ %.3319.i50, %bb.ar ], [ %.3319.i50, %bb.aq ] ; 2 uses
  %.1315.i = phi i32 [ %i.hz, %bb.ao ], [ %.0314.i51, %bb.av ], [ %.0314.i51, %bb.ar ], [ %.0314.i51, %bb.aq ]
  %.1313.i = phi i32 [ %i.hy, %bb.ao ], [ %.0312.i52, %bb.av ], [ %.0312.i52, %bb.ar ], [ %.0312.i52, %bb.aq ]
  %.not27.i = phi i1 [ true, %bb.ao ], [ true, %bb.av ], [ false, %bb.ar ], [ false, %bb.aq ] ; 2 uses
  %.1311.i = phi i32 [ 0, %bb.ao ], [ 0, %bb.av ], [ 1, %bb.ar ], [ 1, %bb.aq ]
  %.1309.i = phi i32 [ %i.go, %bb.ao ], [ %.0308.i54, %bb.av ], [ %.0308.i54, %bb.ar ], [ %.0308.i54, %bb.aq ] ; 2 uses
  %.1303.i = phi i32 [ %.0302.i55, %bb.ao ], [ %.0302.i55, %bb.av ], [ %i.ew, %bb.ar ], [ %i.ew, %bb.aq ] ; 4 uses
  %.1301.i = phi i32 [ %.0300.i58, %bb.ao ], [ %.0300.i58, %bb.av ], [ %i.ez, %bb.ar ], [ %i.ez, %bb.aq ] ; 4 uses
  %.2299.i = phi i32 [ %.1298.i, %bb.ao ], [ %.0297.i61, %bb.av ], [ %.0297.i61, %bb.ar ], [ %.0297.i61, %bb.aq ] ; 3 uses
  %.2296.i = phi i32 [ %.1295.i, %bb.ao ], [ %.0294.i62, %bb.av ], [ %.0294.i62, %bb.ar ], [ %.0294.i62, %bb.aq ] ; 3 uses
  %.2293.i = phi i32 [ %.1292.i, %bb.ao ], [ %.0291.i63, %bb.av ], [ %.0291.i63, %bb.ar ], [ %.0291.i63, %bb.aq ] ; 3 uses
  %.2290.i = phi i32 [ %.1289.i, %bb.ao ], [ %.0288.i65, %bb.av ], [ %.0288.i65, %bb.ar ], [ %.0288.i65, %bb.aq ] ; 3 uses
  %i.iz = add nsw i32 %.5321.i, 1
  %.not353.i.not = icmp slt i32 %.5321.i, %i.bk
  br i1 %.not353.i.not, label %.preheader, label %bb.ax, !llvm.loop !880

bb.ax:                                            ; preds = %bb.aw
  %.not.i8 = icmp eq i32 %.1309.i, 0
  br i1 %.not.i8, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not27.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ja = add nsw i32 %.4333.i, 1
  %i.jb = sext i32 %.4333.i to i64
  %i.jc = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.jb ; 5 uses
  %i.jd = add nsw i32 %.2293.i, %.1303.i
  %i.je = lshr i32 %i.jd, 1
  %i.jf = add nsw i32 %.2290.i, %.1301.i
  %i.jg = lshr i32 %i.jf, 1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 12
  store i8 3, ptr %i.jh, align 2, !tbaa !514
  %i.ji = trunc i32 %i.je to i16
  store i16 %i.ji, ptr %i.jc, align 2, !tbaa !519
  %i.jj = trunc i32 %i.jg to i16
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jc, i64 2
  store i16 %i.jj, ptr %i.jk, align 2, !tbaa !520
  %i.jl = trunc nsw i32 %.1303.i to i16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  store i16 %i.jl, ptr %i.jm, align 2, !tbaa !515
  %i.jn = trunc nsw i32 %.1301.i to i16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jc, i64 6
  store i16 %i.jn, ptr %i.jo, align 2, !tbaa !516
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0.i9 = phi i32 [ %i.ja, %bb.az ], [ %.4333.i, %bb.ay ] ; 2 uses
  %i.jp = sext i32 %.0.i9 to i64                  ; 2 uses
  %i.jq = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.jp ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  store i8 3, ptr %i.jr, align 2, !tbaa !514
  %i.js = trunc i32 %.2299.i to i16
  store i16 %i.js, ptr %i.jq, align 2, !tbaa !519
  %i.jt = trunc i32 %.2296.i to i16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 2
  store i16 %i.jt, ptr %i.ju, align 2, !tbaa !520
  %i.jv = trunc nsw i32 %.2293.i to i16
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  store i16 %i.jv, ptr %i.jw, align 2, !tbaa !515
  %i.jx = trunc nsw i32 %.2290.i to i16
  br label %bb.be

bb.bb:                                            ; preds = %bb.ax
  %i.jy = sext i32 %.4333.i to i64                ; 3 uses
  %i.jz = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.jy ; 6 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 12 ; 2 uses
  %i.kb = trunc i32 %.2299.i to i16               ; 2 uses
  %i.kc = trunc i32 %.2296.i to i16               ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 2 ; 2 uses
  br i1 %.not27.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i8 3, ptr %i.ka, align 2, !tbaa !514
  store i16 %i.kb, ptr %i.jz, align 2, !tbaa !519
  store i16 %i.kc, ptr %i.kd, align 2, !tbaa !520
  %i.ke = trunc nsw i32 %.1303.i to i16
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  store i16 %i.ke, ptr %i.kf, align 2, !tbaa !515
  %i.kg = trunc nsw i32 %.1301.i to i16
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  store i8 2, ptr %i.ka, align 2, !tbaa !514
  store i16 %i.kb, ptr %i.jz, align 2, !tbaa !519
  store i16 %i.kc, ptr %i.kd, align 2, !tbaa !520
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  store i16 0, ptr %i.kh, align 2, !tbaa !515
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.ba
  %i.ki = phi i64 [ %i.jy, %bb.bc ], [ %i.jy, %bb.bd ], [ %i.jp, %bb.ba ]
  %.sink.i = phi i16 [ %i.kg, %bb.bc ], [ 0, %bb.bd ], [ %i.jx, %bb.ba ]
  %.1.in.i = phi i32 [ %.4333.i, %bb.bc ], [ %.4333.i, %bb.bd ], [ %.0.i9, %bb.ba ]
  %i.kj = getelementptr inbounds [14 x i8], ptr %i.bo, i64 %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 6
  store i16 %.sink.i, ptr %i.kk, align 2, !tbaa !516
  %.1.i = add nsw i32 %.1.in.i, 1
  br label %.thread28

bb.bf:                                            ; preds = %bb.h
  %i.kl = icmp slt i16 %i.av, 0
  br i1 %i.kl, label %bb.bg, label %.thread28

bb.bg:                                            ; preds = %bb.bf
  %i.km = getelementptr inbounds nuw i8, ptr %i.as, i64 10
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bz
  %.0273.i38 = phi ptr [ %i.km, %bb.bg ], [ %.2275.i, %bb.bz ] ; 9 uses
  %.0278.i37 = phi ptr [ null, %bb.bg ], [ %.1279.i, %bb.bz ] ; 6 uses
  %.6.i36 = phi i32 [ 0, %bb.bg ], [ %.7.i, %bb.bz ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store ptr null, ptr %i.a, align 8, !tbaa !427
  %i.kn = getelementptr i8, ptr %.0273.i38, i64 1
  %.0273.val392.i = load i8, ptr %i.kn, align 1, !tbaa !50 ; 2 uses
  %i.ko = zext i8 %.0273.val392.i to i32          ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 2
  %.val390.i = load i8, ptr %i.kp, align 1, !tbaa !50
  %i.kq = getelementptr i8, ptr %.0273.i38, i64 3
  %.val391.i = load i8, ptr %i.kq, align 1, !tbaa !50
  %i.kr = zext i8 %.val390.i to i32
  %i.ks = shl nuw nsw i32 %i.kr, 8
  %i.kt = zext i8 %.val391.i to i32
  %i.ku = or disjoint i32 %i.ks, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 4 ; 2 uses
  %i.kw = and i32 %i.ko, 2
  %.not342.i = icmp eq i32 %i.kw, 0
  br i1 %.not342.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kx = and i32 %i.ko, 1
  %.not343.i = icmp eq i32 %i.kx, 0
  %i.ky = load i8, ptr %i.kv, align 1, !tbaa !50  ; 2 uses
  br i1 %.not343.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kz = getelementptr i8, ptr %.0273.i38, i64 5
  %i.la = getelementptr i8, ptr %.0273.i38, i64 7
  %.val387.i = load i8, ptr %i.la, align 1, !tbaa !50
  %i.lb = load <2 x i8>, ptr %i.kz, align 1, !tbaa !50
  %5 = shufflevector <2 x i8> %i.lb, <2 x i8> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lc = insertelement <2 x i8> %5, i8 %i.ky, i64 1
  %i.ld = zext <2 x i8> %i.lc to <2 x i16>
  %i.le = shl nuw <2 x i16> %i.ld, splat (i16 8)
  %i.lf = insertelement <2 x i8> %5, i8 %.val387.i, i64 0
  %i.lg = zext <2 x i8> %i.lf to <2 x i16>
  %i.lh = or disjoint <2 x i16> %i.le, %i.lg
  %i.li = sitofp <2 x i16> %i.lh to <2 x float>
  %i.lj = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 8
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.lk = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 5
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !50
  %i.lm = insertelement <2 x i8> poison, i8 %i.ll, i64 0
  %i.ln = insertelement <2 x i8> %i.lm, i8 %i.ky, i64 1
  %i.lo = sitofp <2 x i8> %i.ln to <2 x float>
  %i.lp = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 6
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bh
  %.1274.i = phi ptr [ %i.lj, %bb.bj ], [ %i.lp, %bb.bk ], [ %i.kv, %bb.bh ] ; 11 uses
  %i.lq = phi <2 x float> [ %i.li, %bb.bj ], [ %i.lo, %bb.bk ], [ zeroinitializer, %bb.bh ] ; 3 uses
  %6 = shufflevector <2 x float> %i.lq, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.lr = and i32 %i.ko, 8
  %.not344.i = icmp eq i32 %i.lr, 0
  br i1 %.not344.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.1274.val384.i = load i8, ptr %.1274.i, align 1, !tbaa !50
  %i.ls = getelementptr i8, ptr %.1274.i, i64 1
  %.1274.val385.i = load i8, ptr %i.ls, align 1, !tbaa !50
  %i.lt = zext i8 %.1274.val384.i to i16
  %i.lu = shl nuw i16 %i.lt, 8
  %i.lv = zext i8 %.1274.val385.i to i16
  %i.lw = or disjoint i16 %i.lu, %i.lv
  %i.lx = sitofp i16 %i.lw to float
  %i.ly = fmul nnan float %i.lx, f0x38800000      ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.1274.i, i64 2
  %i.ma = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ly, i64 1
  %i.mb = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ly, i64 0
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl
  %i.mc = and i32 %i.ko, 64
  %.not345.i = icmp eq i32 %i.mc, 0
  br i1 %.not345.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.md = getelementptr i8, ptr %.1274.i, i64 1
  %i.me = getelementptr inbounds nuw i8, ptr %.1274.i, i64 2
  %i.mf = getelementptr i8, ptr %.1274.i, i64 3
  %.1274.val382.i = load i8, ptr %.1274.i, align 1, !tbaa !50
  %.1274.val383.i = load i8, ptr %i.md, align 1, !tbaa !50
  %i.mg = zext i8 %.1274.val382.i to i16
  %i.mh = shl nuw i16 %i.mg, 8
  %i.mi = zext i8 %.1274.val383.i to i16
  %i.mj = or disjoint i16 %i.mh, %i.mi
  %.val380.i = load i8, ptr %i.me, align 1, !tbaa !50
  %.val381.i = load i8, ptr %i.mf, align 1, !tbaa !50
  %i.mk = zext i8 %.val380.i to i16
  %i.ml = shl nuw i16 %i.mk, 8
  %i.mm = zext i8 %.val381.i to i16
  %i.mn = or disjoint i16 %i.ml, %i.mm
  %i.mo = insertelement <2 x i16> poison, i16 %i.mj, i64 0
  %i.mp = insertelement <2 x i16> %i.mo, i16 %i.mn, i64 1
  %i.mq = sitofp <2 x i16> %i.mp to <2 x float>
  %i.mr = fmul nnan <2 x float> %i.mq, splat (float f0x38800000) ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.1274.i, i64 4
  %7 = shufflevector <2 x float> <float 0.000000e+00, float poison>, <2 x float> %i.mr, <2 x i32> <i32 0, i32 2>
  %8 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.mr, <2 x i32> <i32 3, i32 1>
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  %.not346.i = icmp sgt i8 %.0273.val392.i, -1
  br i1 %.not346.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %9 = load <8 x i8>, ptr %.1274.i, align 1, !tbaa !50 ; 4 uses
  %10 = shufflevector <8 x i8> %9, <8 x i8> poison, <2 x i32> <i32 4, i32 0>
  %11 = zext <2 x i8> %10 to <2 x i16>
  %12 = shl nuw <2 x i16> %11, splat (i16 8)
  %13 = shufflevector <8 x i8> %9, <8 x i8> poison, <2 x i32> <i32 5, i32 1>
  %14 = zext <2 x i8> %13 to <2 x i16>
  %15 = or disjoint <2 x i16> %12, %14
  %i.mt = sitofp <2 x i16> %15 to <2 x float>
  %16 = shufflevector <8 x i8> %9, <8 x i8> poison, <2 x i32> <i32 6, i32 2>
  %17 = zext <2 x i8> %16 to <2 x i16>
  %18 = shl nuw <2 x i16> %17, splat (i16 8)
  %19 = shufflevector <8 x i8> %9, <8 x i8> poison, <2 x i32> <i32 7, i32 3>
  %20 = zext <2 x i8> %19 to <2 x i16>
  %21 = or disjoint <2 x i16> %18, %20
  %i.mu = sitofp <2 x i16> %21 to <2 x float>
  %22 = fmul nnan <2 x float> %i.mt, splat (float f0x38800000)
  %i.mv = fmul nnan <2 x float> %i.mu, splat (float f0x38800000)
  %i.mw = getelementptr inbounds nuw i8, ptr %.1274.i, i64 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bm
  %.2275.i = phi ptr [ %i.lz, %bb.bm ], [ %i.ms, %bb.bo ], [ %i.mw, %bb.bq ], [ %.1274.i, %bb.bp ]
  %i.mx = phi <2 x float> [ %i.ma, %bb.bm ], [ %7, %bb.bo ], [ %22, %bb.bq ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.bp ] ; 6 uses
  %i.my = phi <2 x float> [ %i.mb, %bb.bm ], [ %8, %bb.bo ], [ %i.mv, %bb.bq ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.bp ] ; 6 uses
  %i.mz = fmul nnan <2 x float> %i.my, %i.my
  %i.na = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mx, <2 x float> %i.mx, <2 x float> %i.mz)
  %23 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.na) ; 3 uses
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.nb = call fastcc noundef i32 @_ZL19stbtt_GetGlyphShapePK14stbtt_fontinfoiPP12stbtt_vertex(ptr noundef %0, i32 noundef %i.ku, ptr noundef %i.a), !inline_history !876 ; 4 uses
  %i.nc = icmp sgt i32 %i.nb, 0
  br i1 %i.nc, label %.preheader32, label %bb.bz

.preheader32:                                     ; preds = %bb.br
  %i.nd = load ptr, ptr %i.a, align 8, !tbaa !427 ; 13 uses
  %wide.trip.count = zext nneg i32 %i.nb to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.nb, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader32
  %i.ne = and i64 %wide.trip.count, 7             ; 2 uses
  %i.nf = icmp eq i64 %i.ne, 0
  %i.ng = select i1 %i.nf, i64 8, i64 %i.ne
  %n.vec = sub nsw i64 %wide.trip.count, %i.ng    ; 2 uses
  %broadcast.splat.a = shufflevector <2 x float> %i.mx, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat96 = shufflevector <2 x float> %i.mx, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat98 = shufflevector <2 x float> %i.lq, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat100 = shufflevector <2 x float> %23, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat102 = shufflevector <2 x float> %i.my, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat104 = shufflevector <2 x float> %i.my, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat106 = shufflevector <2 x float> %i.lq, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat108 = shufflevector <2 x float> %23, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %i.nh = getelementptr inbounds nuw [14 x i8], ptr %i.nd, i64 %index ; 5 uses
  %i.ni = getelementptr inbounds nuw [14 x i8], ptr %i.nd, i64 %index ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 14 ; 2 uses
  %i.nk = getelementptr inbounds nuw [14 x i8], ptr %i.nd, i64 %index ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 28 ; 2 uses
  %i.nm = getelementptr inbounds nuw [14 x i8], ptr %i.nd, i64 %index ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 42 ; 2 uses
  %i.no = getelementptr inbounds nuw [14 x i8], ptr %i.nd, i64 %index ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 56 ; 2 uses
  %i.nq = getelementptr inbounds nuw [14 x i8], ptr %i.nd, i64 %index ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 70 ; 2 uses
  %i.ns = getelementptr inbounds nuw [14 x i8], ptr %i.nd, i64 %index ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 84 ; 2 uses
  %i.nu = getelementptr inbounds nuw [14 x i8], ptr %i.nd, i64 %index ; 4 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 98 ; 2 uses
  %i.nw = load i16, ptr %i.nh, align 2, !tbaa !519
  %i.nx = load i16, ptr %i.nj, align 2, !tbaa !519
  %i.ny = load i16, ptr %i.nl, align 2, !tbaa !519
  %i.nz = load i16, ptr %i.nn, align 2, !tbaa !519
  %i.oa = load i16, ptr %i.np, align 2, !tbaa !519
  %i.ob = load i16, ptr %i.nr, align 2, !tbaa !519
  %i.oc = load i16, ptr %i.nt, align 2, !tbaa !519
  %i.od = load i16, ptr %i.nv, align 2, !tbaa !519
  %i.oe = insertelement <8 x i16> poison, i16 %i.nw, i64 0
  %i.of = insertelement <8 x i16> %i.oe, i16 %i.nx, i64 1
  %i.og = insertelement <8 x i16> %i.of, i16 %i.ny, i64 2
  %i.oh = insertelement <8 x i16> %i.og, i16 %i.nz, i64 3
  %i.oi = insertelement <8 x i16> %i.oh, i16 %i.oa, i64 4
  %i.oj = insertelement <8 x i16> %i.oi, i16 %i.ob, i64 5
  %i.ok = insertelement <8 x i16> %i.oj, i16 %i.oc, i64 6
  %i.ol = insertelement <8 x i16> %i.ok, i16 %i.od, i64 7
  %i.om = getelementptr inbounds nuw i8, ptr %i.nh, i64 2
  %i.on = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nk, i64 30
  %i.op = getelementptr inbounds nuw i8, ptr %i.nm, i64 44
  %i.oq = getelementptr inbounds nuw i8, ptr %i.no, i64 58 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.nq, i64 72 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.ns, i64 86 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nu, i64 100 ; 2 uses
  %i.ou = load i16, ptr %i.om, align 2, !tbaa !520
  %i.ov = load i16, ptr %i.on, align 2, !tbaa !520
  %i.ow = load i16, ptr %i.oo, align 2, !tbaa !520
  %i.ox = load i16, ptr %i.op, align 2, !tbaa !520
  %i.oy = load i16, ptr %i.oq, align 2, !tbaa !520
  %i.oz = load i16, ptr %i.or, align 2, !tbaa !520
  %i.pa = load i16, ptr %i.os, align 2, !tbaa !520
  %i.pb = load i16, ptr %i.ot, align 2, !tbaa !520
  %i.pc = insertelement <8 x i16> poison, i16 %i.ou, i64 0
  %i.pd = insertelement <8 x i16> %i.pc, i16 %i.ov, i64 1
  %i.pe = insertelement <8 x i16> %i.pd, i16 %i.ow, i64 2
  %i.pf = insertelement <8 x i16> %i.pe, i16 %i.ox, i64 3
  %i.pg = insertelement <8 x i16> %i.pf, i16 %i.oy, i64 4
  %i.ph = insertelement <8 x i16> %i.pg, i16 %i.oz, i64 5
  %i.pi = insertelement <8 x i16> %i.ph, i16 %i.pa, i64 6
  %i.pj = insertelement <8 x i16> %i.pi, i16 %i.pb, i64 7
  %i.pk = sitofp <8 x i16> %i.ol to <8 x float>   ; 2 uses
  %i.pl = sitofp <8 x i16> %i.pj to <8 x float>   ; 2 uses
  %i.pm = fmul nnan <8 x float> %broadcast.splat.a, %i.pl
  %i.pn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat96, <8 x float> %i.pk, <8 x float> %i.pm)
  %i.po = fadd <8 x float> %broadcast.splat98, %i.pn
  %i.pp = fmul <8 x float> %broadcast.splat100, %i.po
  %i.pq = fptosi <8 x float> %i.pp to <8 x i16>   ; 8 uses
  %i.pr = extractelement <8 x i16> %i.pq, i64 4
  store i16 %i.pr, ptr %i.np, align 2, !tbaa !519
  %i.ps = extractelement <8 x i16> %i.pq, i64 5
  store i16 %i.ps, ptr %i.nr, align 2, !tbaa !519
  %i.pt = extractelement <8 x i16> %i.pq, i64 6
  store i16 %i.pt, ptr %i.nt, align 2, !tbaa !519
  %i.pu = extractelement <8 x i16> %i.pq, i64 7
  store i16 %i.pu, ptr %i.nv, align 2, !tbaa !519
  %i.pv = fmul nnan <8 x float> %broadcast.splat102, %i.pl
  %i.pw = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat104, <8 x float> %i.pk, <8 x float> %i.pv)
  %i.px = fadd <8 x float> %broadcast.splat106, %i.pw
  %i.py = fmul <8 x float> %broadcast.splat108, %i.px
  %i.pz = fptosi <8 x float> %i.py to <8 x i16>   ; 8 uses
  %i.qa = extractelement <8 x i16> %i.pz, i64 4
  store i16 %i.qa, ptr %i.oq, align 2, !tbaa !520
  %i.qb = extractelement <8 x i16> %i.pz, i64 5
  store i16 %i.qb, ptr %i.or, align 2, !tbaa !520
  %i.qc = extractelement <8 x i16> %i.pz, i64 6
  store i16 %i.qc, ptr %i.os, align 2, !tbaa !520
  %i.qd = extractelement <8 x i16> %i.pz, i64 7
  store i16 %i.qd, ptr %i.ot, align 2, !tbaa !520
  %i.qe = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ni, i64 18
  %i.qg = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %i.qh = getelementptr inbounds nuw i8, ptr %i.nm, i64 46
  %i.qi = getelementptr inbounds nuw i8, ptr %i.no, i64 60 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.nq, i64 74 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ns, i64 88 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.nu, i64 102 ; 2 uses
  %i.qm = load i16, ptr %i.qe, align 2, !tbaa !515
  %i.qn = load i16, ptr %i.qf, align 2, !tbaa !515
  %i.qo = load i16, ptr %i.qg, align 2, !tbaa !515
  %i.qp = load i16, ptr %i.qh, align 2, !tbaa !515
  %i.qq = load i16, ptr %i.qi, align 2, !tbaa !515
  %i.qr = load i16, ptr %i.qj, align 2, !tbaa !515
  %i.qs = load i16, ptr %i.qk, align 2, !tbaa !515
  %i.qt = load i16, ptr %i.ql, align 2, !tbaa !515
  %i.qu = insertelement <8 x i16> poison, i16 %i.qm, i64 0
  %i.qv = insertelement <8 x i16> %i.qu, i16 %i.qn, i64 1
  %i.qw = insertelement <8 x i16> %i.qv, i16 %i.qo, i64 2
  %i.qx = insertelement <8 x i16> %i.qw, i16 %i.qp, i64 3
  %i.qy = insertelement <8 x i16> %i.qx, i16 %i.qq, i64 4
  %i.qz = insertelement <8 x i16> %i.qy, i16 %i.qr, i64 5
  %i.ra = insertelement <8 x i16> %i.qz, i16 %i.qs, i64 6
  %i.rb = insertelement <8 x i16> %i.ra, i16 %i.qt, i64 7
  %i.rc = getelementptr inbounds nuw i8, ptr %i.nh, i64 6
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ni, i64 20
  %i.re = getelementptr inbounds nuw i8, ptr %i.nk, i64 34
  %i.rf = getelementptr inbounds nuw i8, ptr %i.nm, i64 48
  %i.rg = getelementptr inbounds nuw i8, ptr %i.no, i64 62 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.nq, i64 76 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ns, i64 90 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.nu, i64 104 ; 2 uses
  %i.rk = load i16, ptr %i.rc, align 2, !tbaa !516
  %i.rl = load i16, ptr %i.rd, align 2, !tbaa !516
  %i.rm = load i16, ptr %i.re, align 2, !tbaa !516
  %i.rn = load i16, ptr %i.rf, align 2, !tbaa !516
  %i.ro = load i16, ptr %i.rg, align 2, !tbaa !516
  %i.rp = load i16, ptr %i.rh, align 2, !tbaa !516
  %i.rq = load i16, ptr %i.ri, align 2, !tbaa !516
  %i.rr = load i16, ptr %i.rj, align 2, !tbaa !516
  %i.rs = insertelement <8 x i16> poison, i16 %i.rk, i64 0
  %i.rt = insertelement <8 x i16> %i.rs, i16 %i.rl, i64 1
  %i.ru = insertelement <8 x i16> %i.rt, i16 %i.rm, i64 2
  %i.rv = insertelement <8 x i16> %i.ru, i16 %i.rn, i64 3
  %i.rw = insertelement <8 x i16> %i.rv, i16 %i.ro, i64 4
  %i.rx = insertelement <8 x i16> %i.rw, i16 %i.rp, i64 5
  %i.ry = insertelement <8 x i16> %i.rx, i16 %i.rq, i64 6
  %i.rz = insertelement <8 x i16> %i.ry, i16 %i.rr, i64 7
  %i.sa = sitofp <8 x i16> %i.rb to <8 x float>   ; 2 uses
  %i.sb = sitofp <8 x i16> %i.rz to <8 x float>   ; 2 uses
  %i.sc = fmul nnan <8 x float> %broadcast.splat.a, %i.sb
  %i.sd = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat96, <8 x float> %i.sa, <8 x float> %i.sc)
  %i.se = fadd <8 x float> %broadcast.splat98, %i.sd
  %i.sf = fmul <8 x float> %broadcast.splat100, %i.se
  %i.sg = fptosi <8 x float> %i.sf to <8 x i16>   ; 8 uses
  %i.sh = extractelement <8 x i16> %i.sg, i64 4
  store i16 %i.sh, ptr %i.qi, align 2, !tbaa !515
  %i.si = extractelement <8 x i16> %i.sg, i64 5
  store i16 %i.si, ptr %i.qj, align 2, !tbaa !515
  %i.sj = extractelement <8 x i16> %i.sg, i64 6
  store i16 %i.sj, ptr %i.qk, align 2, !tbaa !515
  %i.sk = extractelement <8 x i16> %i.sg, i64 7
  store i16 %i.sk, ptr %i.ql, align 2, !tbaa !515
  %i.sl = fmul nnan <8 x float> %broadcast.splat102, %i.sb
  %i.sm = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat104, <8 x float> %i.sa, <8 x float> %i.sl)
  %i.sn = fadd <8 x float> %broadcast.splat106, %i.sm
  %i.so = fmul <8 x float> %broadcast.splat108, %i.sn
  %i.sp = fptosi <8 x float> %i.so to <8 x i16>   ; 8 uses
  %i.sq = shufflevector <8 x i16> %i.pq, <8 x i16> %i.pz, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.sr = shufflevector <8 x i16> %i.sg, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ss = shufflevector <4 x i16> %i.sq, <4 x i16> %i.sr, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.st = shufflevector <8 x i16> %i.sp, <8 x i16> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.su = shufflevector <4 x i16> %i.ss, <4 x i16> %i.st, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i16> %i.su, ptr %i.nh, align 2, !tbaa !243
  %i.sv = shufflevector <8 x i16> %i.pq, <8 x i16> %i.pz, <4 x i32> <i32 1, i32 9, i32 poison, i32 poison>
  %i.sw = shufflevector <8 x i16> %i.sg, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.sx = shufflevector <4 x i16> %i.sv, <4 x i16> %i.sw, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.sy = shufflevector <8 x i16> %i.sp, <8 x i16> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.sz = shufflevector <4 x i16> %i.sx, <4 x i16> %i.sy, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i16> %i.sz, ptr %i.nj, align 2, !tbaa !243
  %i.ta = shufflevector <8 x i16> %i.pq, <8 x i16> %i.pz, <4 x i32> <i32 2, i32 10, i32 poison, i32 poison>
  %i.tb = shufflevector <8 x i16> %i.sg, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.tc = shufflevector <4 x i16> %i.ta, <4 x i16> %i.tb, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.td = shufflevector <8 x i16> %i.sp, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.te = shufflevector <4 x i16> %i.tc, <4 x i16> %i.td, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i16> %i.te, ptr %i.nl, align 2, !tbaa !243
  %i.tf = shufflevector <8 x i16> %i.pq, <8 x i16> %i.pz, <4 x i32> <i32 3, i32 11, i32 poison, i32 poison>
  %i.tg = shufflevector <8 x i16> %i.sg, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.th = shufflevector <4 x i16> %i.tf, <4 x i16> %i.tg, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.ti = shufflevector <8 x i16> %i.sp, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 3>
  %i.tj = shufflevector <4 x i16> %i.th, <4 x i16> %i.ti, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i16> %i.tj, ptr %i.nn, align 2, !tbaa !243
  %i.tk = extractelement <8 x i16> %i.sp, i64 4
  store i16 %i.tk, ptr %i.rg, align 2, !tbaa !516
  %i.tl = extractelement <8 x i16> %i.sp, i64 5
  store i16 %i.tl, ptr %i.rh, align 2, !tbaa !516
  %i.tm = extractelement <8 x i16> %i.sp, i64 6
  store i16 %i.tm, ptr %i.ri, align 2, !tbaa !516
  %i.tn = extractelement <8 x i16> %i.sp, i64 7
  store i16 %i.tn, ptr %i.rj, align 2, !tbaa !516
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.to = icmp eq i64 %index.next, %n.vec
  br i1 %i.to, label %scalar.ph.preheader, label %vector.body, !llvm.loop !881

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader32
  %indvars.iv.ph = phi i64 [ 0, %.preheader32 ], [ %n.vec, %vector.body ]
  %25 = shufflevector <2 x float> %i.mx, <2 x float> %i.my, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %26 = shufflevector <2 x float> %i.mx, <2 x float> %i.my, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.tp = getelementptr inbounds nuw [14 x i8], ptr %i.nd, i64 %indvars.iv ; 2 uses
  %i.tq = load <4 x i16>, ptr %i.tp, align 2, !tbaa !243 ; 2 uses
  %i.tr = shufflevector <4 x i16> %i.tq, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ts = sitofp <4 x i16> %i.tr to <4 x float>
  %i.tt = shufflevector <4 x i16> %i.tq, <4 x i16> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.tu = sitofp <4 x i16> %i.tt to <4 x float>
  %i.tv = fmul nnan <4 x float> %25, %i.tu
  %i.tw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %i.ts, <4 x float> %i.tv)
  %i.tx = fadd <4 x float> %6, %i.tw
  %i.ty = fmul <4 x float> %24, %i.tx
  %i.tz = fptosi <4 x float> %i.ty to <4 x i16>
  store <4 x i16> %i.tz, ptr %i.tp, align 2, !tbaa !243
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.bs, label %scalar.ph, !llvm.loop !882

bb.bs:                                            ; preds = %scalar.ph
  %i.ua = add nuw nsw i32 %i.nb, %.6.i36          ; 2 uses
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = mul nuw nsw i64 %i.ub, 14
  %i.ud = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.uc), !inline_history !876 ; 5 uses
  %.not347.i = icmp eq ptr %i.ud, null
  br i1 %.not347.i, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %.not348.i = icmp eq ptr %.0278.i37, null
  br i1 %.not348.i, label %bb.ca, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.0278.i37), !inline_history !876
  br label %bb.ca

bb.bv:                                            ; preds = %bb.bs
  %i.ue = icmp sgt i32 %.6.i36, 0
  %i.uf = icmp ne ptr %.0278.i37, null            ; 2 uses
  %or.cond.i = select i1 %i.ue, i1 %i.uf, i1 false
  %i.ug = zext nneg i32 %.6.i36 to i64            ; 3 uses
  br i1 %or.cond.i, label %.thread22, label %bb.bw

.thread22:                                        ; preds = %bb.bv
  %i.uh = mul nuw nsw i64 %i.ug, 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ud, ptr nonnull align 2 %.0278.i37, i64 %i.uh, i1 false)
  %i.ui = getelementptr inbounds nuw [14 x i8], ptr %i.ud, i64 %i.ug
  %i.uj = mul nuw nsw i64 %wide.trip.count, 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ui, ptr nonnull align 2 %i.nd, i64 %i.uj, i1 false)
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.uk = getelementptr inbounds nuw [14 x i8], ptr %i.ud, i64 %i.ug
  %i.ul = mul nuw nsw i64 %wide.trip.count, 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.uk, ptr nonnull align 2 %i.nd, i64 %i.ul, i1 false)
  br i1 %i.uf, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.thread22, %bb.bw
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.0278.i37), !inline_history !876
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.nd), !inline_history !876
  br label %bb.bz

bb.bz:                                            ; preds = %bb.br, %bb.by
  %.7.i = phi i32 [ %i.ua, %bb.by ], [ %.6.i36, %bb.br ] ; 2 uses
  %.1279.i = phi ptr [ %i.ud, %bb.by ], [ %.0278.i37, %bb.br ] ; 2 uses
  %i.um = and i32 %i.ko, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %.not.i = icmp eq i32 %i.um, 0
  br i1 %.not.i, label %.thread28, label %bb.bh, !llvm.loop !883

bb.ca:                                            ; preds = %bb.bu, %bb.bt
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.nd), !inline_history !876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit

.thread28:                                        ; preds = %bb.bz, %bb.be, %bb.bf
  %.10.i = phi i32 [ %.1.i, %bb.be ], [ 0, %bb.bf ], [ %.7.i, %bb.bz ]
  %.4282.i = phi ptr [ %i.bo, %bb.be ], [ null, %bb.bf ], [ %.1279.i, %bb.bz ]
  store ptr %.4282.i, ptr %2, align 8, !tbaa !427
  br label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit

bb.cb:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store i32 1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.un = call fastcc noundef i32 @_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %3)
  %.not.i7 = icmp eq i32 %i.un, 0
  br i1 %.not.i7, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.uo = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.up = load i32, ptr %i.uo, align 8, !tbaa !544
  %i.uq = sext i32 %i.up to i64
  %i.ur = mul nsw i64 %i.uq, 14
  %i.us = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ur) ; 2 uses
  store ptr %i.us, ptr %2, align 8, !tbaa !427
  %i.ut = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.us, ptr %i.ut, align 8, !tbaa !545
  %i.uu = call fastcc noundef i32 @_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx(ptr noundef nonnull readonly %0, i32 noundef %1, ptr noundef %4)
  %.not7.i = icmp eq i32 %i.uu, 0
  br i1 %.not7.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.uv = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !544
  br label %_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit

bb.ce:                                            ; preds = %bb.cc, %bb.cb
  store ptr null, ptr %2, align 8, !tbaa !427
  br label %_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit

_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit: ; preds = %bb.cd, %bb.ce
  %.0.i = phi i32 [ %i.uw, %bb.cd ], [ 0, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit

_ZL22stbtt__GetGlyphShapeTTPK14stbtt_fontinfoiPP12stbtt_vertex.exit: ; preds = %bb.ca, %bb.i, %.thread28, %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit, %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit.thread, %_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit
  %.0 = phi i32 [ %.0.i, %_ZL22stbtt__GetGlyphShapeT2PK14stbtt_fontinfoiPP12stbtt_vertex.exit ], [ 0, %bb.ca ], [ %.10.i, %.thread28 ], [ 0, %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit.thread ], [ 0, %_ZL20stbtt__GetGlyfOffsetPK14stbtt_fontinfoi.exit ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9) unnamed_addr #34 {
bb.a:
  %i.a = icmp sgt i32 %9, 16
  br i1 %i.a, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = insertelement <2 x float> poison, float %4, i64 0
  %i.c = insertelement <2 x float> %i.b, float %5, i64 1 ; 2 uses
  %i.d = insertelement <2 x float> poison, float %2, i64 0
  %i.e = insertelement <2 x float> %i.d, float %3, i64 1 ; 2 uses
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.c, <2 x float> splat (float 2.000000e+00), <2 x float> %i.e)
  %i.g = insertelement <2 x float> poison, float %6, i64 0
  %i.h = insertelement <2 x float> %i.g, float %7, i64 1 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse
  %.tr5767 = phi i32 [ %i.aa, %tailrecurse ], [ %9, %.lr.ph.preheader ]
  %.tr5164 = phi float [ %i.p, %tailrecurse ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.tr5063 = phi float [ %i.t, %tailrecurse ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.i = phi <2 x float> [ %i.ae, %tailrecurse ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.j = phi <2 x float> [ %i.af, %tailrecurse ], [ %i.f, %.lr.ph.preheader ]
  %i.k = phi <2 x float> [ %i.m, %tailrecurse ], [ %i.e, %.lr.ph.preheader ]
  %i.l = fadd <2 x float> %i.h, %i.j
  %i.m = fmul <2 x float> %i.l, splat (float 2.500000e-01) ; 4 uses
  %i.n = fadd float %7, %.tr5164
  %i.o = fmul float %i.n, 5.000000e-01
  %i.p = extractelement <2 x float> %i.m, i64 1   ; 3 uses
  %i.q = fsub float %i.o, %i.p                    ; 2 uses
  %i.r = fadd float %6, %.tr5063
  %i.s = fmul float %i.r, 5.000000e-01
  %i.t = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  %i.u = fsub float %i.s, %i.t                    ; 2 uses
  %i.v = fmul float %i.q, %i.q
  %i.w = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.v)
  %i.x = fcmp ogt float %i.w, %8
  br i1 %i.x, label %tailrecurse, label %bb.b

tailrecurse:                                      ; preds = %.lr.ph
  %i.y = fadd <2 x float> %i.k, %i.i
  %i.z = fmul <2 x float> %i.y, splat (float 5.000000e-01) ; 2 uses
  %i.aa = add nsw i32 %.tr5767, 1                 ; 3 uses
  %i.ab = extractelement <2 x float> %i.z, i64 0
  %i.ac = extractelement <2 x float> %i.z, i64 1
  tail call fastcc void @_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi(ptr noundef %0, ptr noundef %1, float noundef %.tr5063, float noundef %.tr5164, float noundef %i.ab, float noundef %i.ac, float noundef %i.t, float noundef %i.p, float noundef %8, i32 noundef %i.aa)
  %i.ad = fadd <2 x float> %i.h, %i.i
  %i.ae = fmul <2 x float> %i.ad, splat (float 5.000000e-01) ; 2 uses
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> splat (float 2.000000e+00), <2 x float> %i.m)
  %exitcond = icmp eq i32 %i.aa, 17
  br i1 %exitcond, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.ag = load i32, ptr %1, align 4, !tbaa !258   ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ah ; 2 uses
  store float %6, ptr %i.ai, align 4, !tbaa !548
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store float %7, ptr %i.aj, align 4, !tbaa !522
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit

_ZL16stbtt__add_pointP12stbtt__pointiff.exit:     ; preds = %bb.b, %bb.c
  %i.ak = add nsw i32 %i.ag, 1
  store i32 %i.ak, ptr %1, align 4, !tbaa !258
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, i32 noundef %11) unnamed_addr #34 {
bb.a:
  %smax = tail call i32 @llvm.smax.i32(i32 %11, i32 17)
  %exitcond108 = icmp sgt i32 %11, 16
  br i1 %exitcond108, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = insertelement <2 x float> poison, float %4, i64 0 ; 2 uses
  %i.b = insertelement <2 x float> %i.a, float %5, i64 1
  %i.c = insertelement <2 x float> poison, float %6, i64 0
  %i.d = insertelement <2 x float> %i.c, float %7, i64 1
  %i.e = insertelement <2 x float> poison, float %2, i64 0 ; 2 uses
  %i.f = insertelement <2 x float> %i.e, float %3, i64 1
end_hunk_0
begin_hunk_1_@_ZN18ImFontAtlasBuilderD2Ev:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !526  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN12ImGuiStorageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %_ZN12ImGuiStorageD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #39
  unreachable

_ZN12ImGuiStorageD2Ev.exit:                       ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !376  ; 3 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !487  ; 2 uses
  %i.i = sext i32 %i.h to i64
  %.idx.i = shl nsw i64 %i.i, 3
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.h, 0
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %bb.f
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !376
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN12ImGuiStorageD2Ev.exit
  %i.k = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.g, %_ZN12ImGuiStorageD2Ev.exit ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZN14ImStableVectorI11ImFontBakedLi32EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.k)
          to label %_ZN14ImStableVectorI11ImFontBakedLi32EED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #39
  unreachable

.lr.ph.i:                                         ; preds = %_ZN12ImGuiStorageD2Ev.exit, %bb.f
  %.09.i = phi ptr [ %i.o, %bb.f ], [ %i.g, %_ZN12ImGuiStorageD2Ev.exit ] ; 2 uses
  %i.n = load ptr, ptr %.09.i, align 8, !tbaa !377
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.n)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.j
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #39
  unreachable

_ZN14ImStableVectorI11ImFontBakedLi32EED2Ev.exit: ; preds = %._crit_edge.i, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !78   ; 2 uses
  %.not.i2 = icmp eq ptr %i.s, null
  br i1 %.not.i2, label %_ZN8ImVectorIhED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN14ImStableVectorI11ImFontBakedLi32EED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.s)
          to label %_ZN8ImVectorIhED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #39
  unreachable

_ZN8ImVectorIhED2Ev.exit:                         ; preds = %_ZN14ImStableVectorI11ImFontBakedLi32EED2Ev.exit, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !439  ; 2 uses
  %.not.i3 = icmp eq ptr %i.w, null
  br i1 %.not.i3, label %_ZN8ImVectorI20ImFontAtlasRectEntryED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN8ImVectorIhED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.w)
          to label %_ZN8ImVectorI20ImFontAtlasRectEntryED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #39
  unreachable

_ZN8ImVectorI20ImFontAtlasRectEntryED2Ev.exit:    ; preds = %_ZN8ImVectorIhED2Ev.exit, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !331 ; 2 uses
  %.not.i4 = icmp eq ptr %i.aa, null
  br i1 %.not.i4, label %_ZN8ImVectorI13ImTextureRectED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN8ImVectorI20ImFontAtlasRectEntryED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.aa)
          to label %_ZN8ImVectorI13ImTextureRectED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #39
  unreachable

_ZN8ImVectorI13ImTextureRectED2Ev.exit:           ; preds = %_ZN8ImVectorI20ImFontAtlasRectEntryED2Ev.exit, %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !494 ; 2 uses
  %.not.i5 = icmp eq ptr %i.ae, null
  br i1 %.not.i5, label %_ZN8ImVectorI10stbrp_nodeED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN8ImVectorI13ImTextureRectED2Ev.exit
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ae)
          to label %_ZN8ImVectorI10stbrp_nodeED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #39
  unreachable

_ZN8ImVectorI10stbrp_nodeED2Ev.exit:              ; preds = %_ZN8ImVectorI13ImTextureRectED2Ev.exit, %bb.n
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #35

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #34 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #36 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { nounwind }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!20, !21}
!llvm.ident = !{!22}
!llvm.errno.tbaa = !{!27}

!0 = distinct !{!0, !46}
!1 = distinct !{!1, !46}
!2 = distinct !{!2, !46}
!3 = distinct !{!3, !46}
!4 = distinct !{!4, !46}
!5 = distinct !{!5, !46}
!6 = distinct !{!6, !46}
!7 = distinct !{!7, !46}
!8 = distinct !{!8, !46}
!9 = distinct !{!9, !46}
!10 = distinct !{!10, !46}
!11 = distinct !{!11, !46}
!12 = distinct !{!12, !46}
!13 = distinct !{!13, !46, !410}
!14 = distinct !{!14, !46, !410}
!15 = distinct !{!15, !46}
!16 = distinct !{null}
!17 = distinct !{!17, !46}
!18 = distinct !{!18, !46}
!19 = distinct !{!19, !46}
!20 = !{i32 8, !"PIC Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 2}
!22 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!23 = !{!"Simple C++ TBAA"}
!24 = !{!"omnipotent char", !23, i64 0}
!25 = !{!"int", !24, i64 0}
!26 = !{!"__libc_errno", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!"float", !24, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !29, i64 12, i64 4, !29}
!31 = !{!"_ZTS6ImVec4", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12}
!32 = !{!31, !28, i64 8}
!33 = !{!"_ZTS6ImVec2", !28, i64 0, !28, i64 4}
!34 = !{!"any pointer", !24, i64 0}
!35 = !{!"p1 _ZTS6ImVec4", !34, i64 0}
!36 = !{!"p1 _ZTS11ImFontAtlas", !34, i64 0}
!37 = !{!"p1 _ZTS6ImFont", !34, i64 0}
!38 = !{!"p1 _ZTS6ImVec2", !34, i64 0}
!39 = !{!"_ZTS8ImVectorI6ImVec2E", !25, i64 0, !25, i64 4, !38, i64 8}
!40 = !{!"any p2 pointer", !34, i64 0}
!41 = !{!"p2 _ZTS10ImDrawList", !40, i64 0}
!42 = !{!"_ZTS8ImVectorIP10ImDrawListE", !25, i64 0, !25, i64 4, !41, i64 8}
!43 = !{!"p1 _ZTS12ImGuiContext", !34, i64 0}
!44 = !{!"_ZTS20ImDrawListSharedData", !33, i64 0, !35, i64 8, !36, i64 16, !37, i64 24, !28, i64 32, !28, i64 36, !28, i64 40, !28, i64 44, !28, i64 48, !25, i64 52, !31, i64 56, !39, i64 72, !42, i64 88, !43, i64 104, !24, i64 112, !28, i64 496, !24, i64 500}
!45 = !{!44, !28, i64 48}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!39, !38, i64 8}
!48 = !{!42, !41, i64 8}
!49 = !{!44, !28, i64 44}
!50 = !{!24, !24, i64 0}
!51 = !{!44, !28, i64 496}
!52 = !{!"llvm.loop.peeled.count", i32 1}
!53 = !{!"p1 _ZTS9ImDrawCmd", !34, i64 0}
!54 = !{!"_ZTS8ImVectorI9ImDrawCmdE", !25, i64 0, !25, i64 4, !53, i64 8}
!55 = !{!"p1 short", !34, i64 0}
!56 = !{!"_ZTS8ImVectorItE", !25, i64 0, !25, i64 4, !55, i64 8}
!57 = !{!"p1 _ZTS10ImDrawVert", !34, i64 0}
!58 = !{!"_ZTS8ImVectorI10ImDrawVertE", !25, i64 0, !25, i64 4, !57, i64 8}
!59 = !{!"p1 _ZTS20ImDrawListSharedData", !34, i64 0}
!60 = !{!"p1 _ZTS13ImTextureData", !34, i64 0}
!61 = !{!"long long", !24, i64 0}
!62 = !{!"_ZTS12ImTextureRef", !60, i64 0, !61, i64 8}
!63 = !{!"_ZTS15ImDrawCmdHeader", !31, i64 0, !62, i64 16, !25, i64 32}
!64 = !{!"p1 _ZTS13ImDrawChannel", !34, i64 0}
!65 = !{!"_ZTS8ImVectorI13ImDrawChannelE", !25, i64 0, !25, i64 4, !64, i64 8}
!66 = !{!"_ZTS18ImDrawListSplitter", !25, i64 0, !25, i64 4, !65, i64 8}
!67 = !{!"_ZTS8ImVectorI6ImVec4E", !25, i64 0, !25, i64 4, !35, i64 8}
!68 = !{!"p1 _ZTS12ImTextureRef", !34, i64 0}
!69 = !{!"_ZTS8ImVectorI12ImTextureRefE", !25, i64 0, !25, i64 4, !68, i64 8}
!70 = !{!"p1 omnipotent char", !34, i64 0}
!71 = !{!"_ZTS8ImVectorIhE", !25, i64 0, !25, i64 4, !70, i64 8}
!72 = !{!"_ZTS10ImDrawList", !54, i64 0, !56, i64 16, !58, i64 32, !25, i64 48, !25, i64 52, !59, i64 56, !57, i64 64, !55, i64 72, !39, i64 80, !63, i64 96, !66, i64 136, !67, i64 160, !69, i64 176, !71, i64 192, !28, i64 208, !70, i64 216}
!73 = !{!72, !59, i64 56}
!74 = !{!42, !25, i64 0}
!75 = !{!"p1 _ZTS10ImDrawList", !34, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!42, !25, i64 4}
!78 = !{!71, !70, i64 8}
!79 = !{!69, !68, i64 8}
!80 = !{!67, !35, i64 8}
!81 = !{!65, !64, i64 8}
!82 = !{!58, !57, i64 8}
!83 = !{!56, !55, i64 8}
!84 = !{!54, !53, i64 8}
!85 = !{!54, !25, i64 4}
!86 = !{!54, !25, i64 0}
!87 = !{!56, !25, i64 4}
!88 = !{!56, !25, i64 0}
!89 = !{!58, !25, i64 4}
!90 = !{!58, !25, i64 0}
!91 = !{!72, !25, i64 48}
!92 = !{!72, !25, i64 52}
!93 = !{!67, !25, i64 4}
!94 = !{!67, !25, i64 0}
!95 = !{!69, !25, i64 4}
!96 = !{!69, !25, i64 0}
!97 = !{!71, !25, i64 4}
!98 = !{!71, !25, i64 0}
!99 = !{!39, !25, i64 4}
!100 = !{!39, !25, i64 0}
!101 = !{!66, !25, i64 0}
!102 = !{!66, !25, i64 4}
!103 = !{!72, !28, i64 208}
!104 = !{!72, !25, i64 0}
!105 = !{!72, !53, i64 8}
!106 = !{!"_ZTS9ImDrawCmd", !31, i64 0, !62, i64 16, !25, i64 32, !25, i64 36, !25, i64 40, !34, i64 48, !34, i64 56, !25, i64 64, !25, i64 68}
!107 = !{!106, !25, i64 40}
!108 = !{!106, !34, i64 48}
!109 = !{!106, !25, i64 36}
!110 = !{!72, !25, i64 16}
!111 = !{!72, !55, i64 24}
!112 = !{!"llvm.loop.unroll.disable"}
!113 = !{!72, !55, i64 72}
!114 = !{!60, !60, i64 0}
!115 = !{!61, !61, i64 0}
!116 = !{i64 0, i64 8, !114, i64 8, i64 8, !115}
!117 = !{!72, !25, i64 128}
!118 = !{!66, !25, i64 8}
!119 = !{!65, !25, i64 4}
!120 = !{!65, !25, i64 0}
!121 = !{!44, !43, i64 104}
!122 = !{!"bool", !24, i64 0}
!123 = !{!"double", !24, i64 0}
!124 = !{!"_ZTS16ImGuiMouseSource", !24, i64 0}
!125 = !{!"short", !24, i64 0}
!126 = !{!"_ZTS7ImGuiIO", !25, i64 0, !25, i64 4, !33, i64 8, !33, i64 16, !28, i64 24, !28, i64 28, !70, i64 32, !70, i64 40, !34, i64 48, !36, i64 56, !37, i64 64, !122, i64 72, !122, i64 73, !122, i64 74, !122, i64 75, !122, i64 76, !122, i64 77, !122, i64 78, !122, i64 79, !122, i64 80, !122, i64 81, !122, i64 82, !122, i64 83, !25, i64 84, !122, i64 88, !122, i64 89, !122, i64 90, !122, i64 91, !122, i64 92, !122, i64 93, !25, i64 96, !122, i64 100, !122, i64 101, !28, i64 104, !28, i64 108, !28, i64 112, !28, i64 116, !28, i64 120, !28, i64 124, !28, i64 128, !122, i64 132, !122, i64 133, !122, i64 134, !122, i64 135, !122, i64 136, !122, i64 137, !122, i64 138, !122, i64 139, !122, i64 140, !122, i64 141, !70, i64 144, !70, i64 152, !34, i64 160, !34, i64 168, !34, i64 176, !122, i64 184, !122, i64 185, !122, i64 186, !122, i64 187, !122, i64 188, !122, i64 189, !122, i64 190, !28, i64 192, !25, i64 196, !25, i64 200, !25, i64 204, !25, i64 208, !33, i64 212, !43, i64 224, !33, i64 232, !24, i64 240, !28, i64 248, !28, i64 252, !124, i64 256, !122, i64 260, !122, i64 261, !122, i64 262, !122, i64 263, !25, i64 264, !24, i64 268, !122, i64 2748, !33, i64 2752, !24, i64 2760, !24, i64 2800, !24, i64 2840, !24, i64 2845, !24, i64 2850, !24, i64 2860, !24, i64 2870, !24, i64 2880, !24, i64 2920, !24, i64 2925, !122, i64 2930, !122, i64 2931, !24, i64 2932, !24, i64 2952, !24, i64 2972, !28, i64 2992, !122, i64 2996, !122, i64 2997, !125, i64 2998, !56, i64 3000, !28, i64 3016, !34, i64 3024, !34, i64 3032, !34, i64 3040}
!127 = !{!"p2 _ZTS13ImTextureData", !40, i64 0}
!128 = !{!"_ZTS8ImVectorIP13ImTextureDataE", !25, i64 0, !25, i64 4, !127, i64 8}
!129 = !{!"_ZTS15ImGuiPlatformIO", !34, i64 0, !34, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !125, i64 56, !25, i64 60, !25, i64 64, !25, i64 68, !34, i64 72, !34, i64 80, !34, i64 88, !34, i64 96, !128, i64 104}
!130 = !{!"_ZTS8ImGuiDir", !24, i64 0}
!131 = !{!"_ZTS10ImGuiStyle", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !33, i64 20, !28, i64 28, !28, i64 32, !28, i64 36, !33, i64 40, !33, i64 48, !130, i64 56, !28, i64 60, !28, i64 64, !28, i64 68, !28, i64 72, !33, i64 76, !28, i64 84, !28, i64 88, !33, i64 92, !33, i64 100, !33, i64 108, !33, i64 116, !28, i64 124, !28, i64 128, !28, i64 132, !28, i64 136, !28, i64 140, !28, i64 144, !28, i64 148, !28, i64 152, !28, i64 156, !28, i64 160, !28, i64 164, !28, i64 168, !28, i64 172, !28, i64 176, !28, i64 180, !28, i64 184, !28, i64 188, !28, i64 192, !28, i64 196, !33, i64 200, !25, i64 208, !28, i64 212, !28, i64 216, !28, i64 220, !28, i64 224, !28, i64 228, !28, i64 232, !28, i64 236, !28, i64 240, !130, i64 244, !33, i64 248, !33, i64 256, !28, i64 264, !28, i64 268, !28, i64 272, !33, i64 276, !33, i64 284, !33, i64 292, !33, i64 300, !28, i64 308, !122, i64 312, !122, i64 313, !122, i64 314, !28, i64 316, !28, i64 320, !24, i64 324, !28, i64 1300, !28, i64 1304, !28, i64 1308, !25, i64 1312, !25, i64 1316, !28, i64 1320, !28, i64 1324}
!132 = !{!"p2 _ZTS11ImFontAtlas", !40, i64 0}
!133 = !{!"_ZTS8ImVectorIP11ImFontAtlasE", !25, i64 0, !25, i64 4, !132, i64 8}
!134 = !{!"p1 _ZTS11ImFontBaked", !34, i64 0}
!135 = !{!"p1 _ZTS15ImGuiInputEvent", !34, i64 0}
!136 = !{!"_ZTS8ImVectorI15ImGuiInputEventE", !25, i64 0, !25, i64 4, !135, i64 8}
!137 = !{!"p2 _ZTS11ImGuiWindow", !40, i64 0}
!138 = !{!"_ZTS8ImVectorIP11ImGuiWindowE", !25, i64 0, !25, i64 4, !137, i64 8}
!139 = !{!"p1 _ZTS20ImGuiWindowStackData", !34, i64 0}
!140 = !{!"_ZTS8ImVectorI20ImGuiWindowStackDataE", !25, i64 0, !25, i64 4, !139, i64 8}
!141 = !{!"p1 _ZTS16ImGuiStoragePair", !34, i64 0}
!142 = !{!"_ZTS8ImVectorI16ImGuiStoragePairE", !25, i64 0, !25, i64 4, !141, i64 8}
!143 = !{!"_ZTS12ImGuiStorage", !142, i64 0}
!144 = !{!"p1 _ZTS11ImGuiWindow", !34, i64 0}
!145 = !{!"_ZTS16ImGuiInputSource", !24, i64 0}
!146 = !{!"_ZTS24ImGuiDeactivatedItemData", !25, i64 0, !25, i64 4, !122, i64 8, !122, i64 9}
!147 = !{!"_ZTS20ImGuiDataTypeStorage", !24, i64 0}
!148 = !{!"_ZTS10ImBitArrayILi155ELin512EE", !24, i64 0}
!149 = !{!"p1 _ZTS19ImGuiKeyRoutingData", !34, i64 0}
!150 = !{!"_ZTS8ImVectorI19ImGuiKeyRoutingDataE", !25, i64 0, !25, i64 4, !149, i64 8}
!151 = !{!"_ZTS20ImGuiKeyRoutingTable", !24, i64 0, !150, i64 312, !150, i64 328}
end_hunk_1
