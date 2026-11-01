Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZL19stbtt_GetGlyphShapePK14stbtt_fontinfoiPP12stbtt_vertex:bb.a
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  store i8 1, ptr %i.hk, align 2, !tbaa !514
  %i.hl = trunc i32 %.1298.i to i16
  store i16 %i.hl, ptr %i.hj, align 2, !tbaa !519
  %i.hm = trunc i32 %.1295.i to i16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  store i16 %i.hm, ptr %i.hn, align 2, !tbaa !520
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store i16 0, ptr %i.ho, align 2, !tbaa !515
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 6
  store i16 0, ptr %i.hp, align 2, !tbaa !516
  %i.hq = shl nsw i32 %.0314.i51, 1
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds i8, ptr %i.az, i64 %i.hr ; 2 uses
  %.val.i = load i8, ptr %i.hs, align 1, !tbaa !50
  %i.ht = getelementptr i8, ptr %i.hs, i64 1
  %.val368.i = load i8, ptr %i.ht, align 1, !tbaa !50
  %i.hu = zext i8 %.val.i to i32
  %i.hv = shl nuw nsw i32 %i.hu, 8
  %i.hw = zext i8 %.val368.i to i32
  %i.hx = or disjoint i32 %i.hv, %i.hw
  %i.hy = add nuw nsw i32 %i.hx, 1
  %i.hz = add nsw i32 %.0314.i51, 1
  br label %bb.aw

bb.ap:                                            ; preds = %.preheader
  %i.ia = and i8 %i.eu, 1
  %.not354.i = icmp eq i8 %i.ia, 0
  %.not355.i = icmp eq i32 %.0310.i53, 0          ; 2 uses
  br i1 %.not354.i, label %bb.aq, label %bb.as

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
  %5 = load i8, ptr %i.kv, align 1, !tbaa !50     ; 2 uses
  br i1 %.not343.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %6 = getelementptr i8, ptr %.0273.i38, i64 5
  %7 = getelementptr i8, ptr %.0273.i38, i64 7
  %.val387.i = load i8, ptr %7, align 1, !tbaa !50
  %8 = load <2 x i8>, ptr %6, align 1, !tbaa !50
  %9 = shufflevector <2 x i8> %8, <2 x i8> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ky = insertelement <2 x i8> %9, i8 %5, i64 1
  %i.kz = zext <2 x i8> %i.ky to <2 x i16>
  %i.la = shl nuw <2 x i16> %i.kz, splat (i16 8)
  %10 = insertelement <2 x i8> %9, i8 %.val387.i, i64 0
  %i.lb = zext <2 x i8> %10 to <2 x i16>
  %i.lc = or disjoint <2 x i16> %i.la, %i.lb
  %i.ld = sitofp <2 x i16> %i.lc to <2 x float>
  %i.le = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 8
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %11 = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 5
  %12 = load i8, ptr %11, align 1, !tbaa !50
  %13 = insertelement <2 x i8> poison, i8 %12, i64 0
  %14 = insertelement <2 x i8> %13, i8 %5, i64 1
  %i.lf = sitofp <2 x i8> %14 to <2 x float>
  %i.lg = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 6
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bh
  %.1274.i = phi ptr [ %i.le, %bb.bj ], [ %i.lg, %bb.bk ], [ %i.kv, %bb.bh ] ; 11 uses
  %i.lh = phi <2 x float> [ %i.ld, %bb.bj ], [ %i.lf, %bb.bk ], [ zeroinitializer, %bb.bh ] ; 3 uses
  %i.li = shufflevector <2 x float> %i.lh, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.lj = and i32 %i.ko, 8
  %.not344.i = icmp eq i32 %i.lj, 0
  br i1 %.not344.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.1274.val384.i = load i8, ptr %.1274.i, align 1, !tbaa !50
  %i.lk = getelementptr i8, ptr %.1274.i, i64 1
  %.1274.val385.i = load i8, ptr %i.lk, align 1, !tbaa !50
  %i.ll = zext i8 %.1274.val384.i to i16
  %i.lm = shl nuw i16 %i.ll, 8
  %i.ln = zext i8 %.1274.val385.i to i16
  %i.lo = or disjoint i16 %i.lm, %i.ln
  %i.lp = sitofp i16 %i.lo to float
  %i.lq = fmul nnan float %i.lp, f0x38800000      ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.1274.i, i64 2
  %i.ls = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.lq, i64 1
  %i.lt = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lq, i64 0
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl
  %i.lu = and i32 %i.ko, 64
  %.not345.i = icmp eq i32 %i.lu, 0
  br i1 %.not345.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lv = getelementptr i8, ptr %.1274.i, i64 1
  %i.lw = getelementptr inbounds nuw i8, ptr %.1274.i, i64 2
  %i.lx = getelementptr i8, ptr %.1274.i, i64 3
  %.1274.val382.i = load i8, ptr %.1274.i, align 1, !tbaa !50
  %.1274.val383.i = load i8, ptr %i.lv, align 1, !tbaa !50
  %i.ly = zext i8 %.1274.val382.i to i16
  %i.lz = shl nuw i16 %i.ly, 8
  %i.ma = zext i8 %.1274.val383.i to i16
  %i.mb = or disjoint i16 %i.lz, %i.ma
  %.val380.i = load i8, ptr %i.lw, align 1, !tbaa !50
  %.val381.i = load i8, ptr %i.lx, align 1, !tbaa !50
  %i.mc = zext i8 %.val380.i to i16
  %i.md = shl nuw i16 %i.mc, 8
  %i.me = zext i8 %.val381.i to i16
  %i.mf = or disjoint i16 %i.md, %i.me
  %i.mg = insertelement <2 x i16> poison, i16 %i.mb, i64 0
  %i.mh = insertelement <2 x i16> %i.mg, i16 %i.mf, i64 1
  %i.mi = sitofp <2 x i16> %i.mh to <2 x float>
  %i.mj = fmul nnan <2 x float> %i.mi, splat (float f0x38800000) ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.1274.i, i64 4
  %i.ml = shufflevector <2 x float> <float 0.000000e+00, float poison>, <2 x float> %i.mj, <2 x i32> <i32 0, i32 2>
  %i.mm = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.mj, <2 x i32> <i32 3, i32 1>
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  %.not346.i = icmp sgt i8 %.0273.val392.i, -1
  br i1 %.not346.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mn = load <8 x i8>, ptr %.1274.i, align 1, !tbaa !50 ; 4 uses
  %i.mo = shufflevector <8 x i8> %i.mn, <8 x i8> poison, <2 x i32> <i32 4, i32 0>
  %i.mp = zext <2 x i8> %i.mo to <2 x i16>
  %i.mq = shl nuw <2 x i16> %i.mp, splat (i16 8)
  %i.mr = shufflevector <8 x i8> %i.mn, <8 x i8> poison, <2 x i32> <i32 5, i32 1>
  %i.ms = zext <2 x i8> %i.mr to <2 x i16>
  %i.mt = or disjoint <2 x i16> %i.mq, %i.ms
  %i.mu = sitofp <2 x i16> %i.mt to <2 x float>
  %i.mv = shufflevector <8 x i8> %i.mn, <8 x i8> poison, <2 x i32> <i32 6, i32 2>
  %i.mw = zext <2 x i8> %i.mv to <2 x i16>
  %i.mx = shl nuw <2 x i16> %i.mw, splat (i16 8)
  %i.my = shufflevector <8 x i8> %i.mn, <8 x i8> poison, <2 x i32> <i32 7, i32 3>
  %i.mz = zext <2 x i8> %i.my to <2 x i16>
  %i.na = or disjoint <2 x i16> %i.mx, %i.mz
  %i.nb = sitofp <2 x i16> %i.na to <2 x float>
  %i.nc = fmul nnan <2 x float> %i.mu, splat (float f0x38800000)
  %i.nd = fmul nnan <2 x float> %i.nb, splat (float f0x38800000)
  %i.ne = getelementptr inbounds nuw i8, ptr %.1274.i, i64 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bm
  %.2275.i = phi ptr [ %i.lr, %bb.bm ], [ %i.mk, %bb.bo ], [ %i.ne, %bb.bq ], [ %.1274.i, %bb.bp ]
  %i.nf = phi <2 x float> [ %i.ls, %bb.bm ], [ %i.ml, %bb.bo ], [ %i.nc, %bb.bq ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.bp ] ; 6 uses
  %i.ng = phi <2 x float> [ %i.lt, %bb.bm ], [ %i.mm, %bb.bo ], [ %i.nd, %bb.bq ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.bp ] ; 6 uses
  %i.nh = fmul nnan <2 x float> %i.ng, %i.ng
  %i.ni = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nf, <2 x float> %i.nf, <2 x float> %i.nh)
  %i.nj = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ni) ; 3 uses
  %i.nk = shufflevector <2 x float> %i.nj, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.nl = call fastcc noundef i32 @_ZL19stbtt_GetGlyphShapePK14stbtt_fontinfoiPP12stbtt_vertex(ptr noundef %0, i32 noundef %i.ku, ptr noundef %i.a), !inline_history !876 ; 4 uses
  %i.nm = icmp sgt i32 %i.nl, 0
  br i1 %i.nm, label %.preheader32, label %bb.bz

.preheader32:                                     ; preds = %bb.br
  %i.nn = load ptr, ptr %i.a, align 8, !tbaa !427 ; 13 uses
  %wide.trip.count = zext nneg i32 %i.nl to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.nl, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader32
  %i.no = and i64 %wide.trip.count, 7             ; 2 uses
  %i.np = icmp eq i64 %i.no, 0
  %i.nq = select i1 %i.np, i64 8, i64 %i.no
  %n.vec = sub nsw i64 %wide.trip.count, %i.nq    ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %i.nf, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat96 = shufflevector <2 x float> %i.nf, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat98 = shufflevector <2 x float> %i.lh, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat100 = shufflevector <2 x float> %i.nj, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat102 = shufflevector <2 x float> %i.ng, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat104 = shufflevector <2 x float> %i.ng, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat106 = shufflevector <2 x float> %i.lh, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat108 = shufflevector <2 x float> %i.nj, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %i.nr = getelementptr inbounds nuw [14 x i8], ptr %i.nn, i64 %index ; 5 uses
  %i.ns = getelementptr inbounds nuw [14 x i8], ptr %i.nn, i64 %index ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 14 ; 2 uses
  %i.nu = getelementptr inbounds nuw [14 x i8], ptr %i.nn, i64 %index ; 4 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 28 ; 2 uses
  %i.nw = getelementptr inbounds nuw [14 x i8], ptr %i.nn, i64 %index ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 42 ; 2 uses
  %i.ny = getelementptr inbounds nuw [14 x i8], ptr %i.nn, i64 %index ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 56 ; 2 uses
  %i.oa = getelementptr inbounds nuw [14 x i8], ptr %i.nn, i64 %index ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 70 ; 2 uses
  %i.oc = getelementptr inbounds nuw [14 x i8], ptr %i.nn, i64 %index ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 84 ; 2 uses
  %i.oe = getelementptr inbounds nuw [14 x i8], ptr %i.nn, i64 %index ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 98 ; 2 uses
  %i.og = load i16, ptr %i.nr, align 2, !tbaa !519
  %i.oh = load i16, ptr %i.nt, align 2, !tbaa !519
  %i.oi = load i16, ptr %i.nv, align 2, !tbaa !519
  %i.oj = load i16, ptr %i.nx, align 2, !tbaa !519
  %i.ok = load i16, ptr %i.nz, align 2, !tbaa !519
  %i.ol = load i16, ptr %i.ob, align 2, !tbaa !519
  %i.om = load i16, ptr %i.od, align 2, !tbaa !519
  %i.on = load i16, ptr %i.of, align 2, !tbaa !519
  %i.oo = insertelement <8 x i16> poison, i16 %i.og, i64 0
  %i.op = insertelement <8 x i16> %i.oo, i16 %i.oh, i64 1
  %i.oq = insertelement <8 x i16> %i.op, i16 %i.oi, i64 2
  %i.or = insertelement <8 x i16> %i.oq, i16 %i.oj, i64 3
  %i.os = insertelement <8 x i16> %i.or, i16 %i.ok, i64 4
  %i.ot = insertelement <8 x i16> %i.os, i16 %i.ol, i64 5
  %i.ou = insertelement <8 x i16> %i.ot, i16 %i.om, i64 6
  %i.ov = insertelement <8 x i16> %i.ou, i16 %i.on, i64 7
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nr, i64 2
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.oy = getelementptr inbounds nuw i8, ptr %i.nu, i64 30
  %i.oz = getelementptr inbounds nuw i8, ptr %i.nw, i64 44
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ny, i64 58 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oa, i64 72 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oc, i64 86 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oe, i64 100 ; 2 uses
  %i.pe = load i16, ptr %i.ow, align 2, !tbaa !520
  %i.pf = load i16, ptr %i.ox, align 2, !tbaa !520
  %i.pg = load i16, ptr %i.oy, align 2, !tbaa !520
  %i.ph = load i16, ptr %i.oz, align 2, !tbaa !520
  %i.pi = load i16, ptr %i.pa, align 2, !tbaa !520
  %i.pj = load i16, ptr %i.pb, align 2, !tbaa !520
  %i.pk = load i16, ptr %i.pc, align 2, !tbaa !520
  %i.pl = load i16, ptr %i.pd, align 2, !tbaa !520
  %i.pm = insertelement <8 x i16> poison, i16 %i.pe, i64 0
  %i.pn = insertelement <8 x i16> %i.pm, i16 %i.pf, i64 1
  %i.po = insertelement <8 x i16> %i.pn, i16 %i.pg, i64 2
  %i.pp = insertelement <8 x i16> %i.po, i16 %i.ph, i64 3
  %i.pq = insertelement <8 x i16> %i.pp, i16 %i.pi, i64 4
  %i.pr = insertelement <8 x i16> %i.pq, i16 %i.pj, i64 5
  %i.ps = insertelement <8 x i16> %i.pr, i16 %i.pk, i64 6
  %i.pt = insertelement <8 x i16> %i.ps, i16 %i.pl, i64 7
  %i.pu = sitofp <8 x i16> %i.ov to <8 x float>   ; 2 uses
  %i.pv = sitofp <8 x i16> %i.pt to <8 x float>   ; 2 uses
  %i.pw = fmul nnan <8 x float> %broadcast.splat, %i.pv
  %i.px = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat96, <8 x float> %i.pu, <8 x float> %i.pw)
  %i.py = fadd <8 x float> %broadcast.splat98, %i.px
  %i.pz = fmul <8 x float> %broadcast.splat100, %i.py
  %i.qa = fptosi <8 x float> %i.pz to <8 x i16>   ; 8 uses
  %i.qb = extractelement <8 x i16> %i.qa, i64 4
  store i16 %i.qb, ptr %i.nz, align 2, !tbaa !519
  %i.qc = extractelement <8 x i16> %i.qa, i64 5
  store i16 %i.qc, ptr %i.ob, align 2, !tbaa !519
  %i.qd = extractelement <8 x i16> %i.qa, i64 6
  store i16 %i.qd, ptr %i.od, align 2, !tbaa !519
  %i.qe = extractelement <8 x i16> %i.qa, i64 7
  store i16 %i.qe, ptr %i.of, align 2, !tbaa !519
  %i.qf = fmul nnan <8 x float> %broadcast.splat102, %i.pv
  %i.qg = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat104, <8 x float> %i.pu, <8 x float> %i.qf)
  %i.qh = fadd <8 x float> %broadcast.splat106, %i.qg
  %i.qi = fmul <8 x float> %broadcast.splat108, %i.qh
  %i.qj = fptosi <8 x float> %i.qi to <8 x i16>   ; 8 uses
  %i.qk = extractelement <8 x i16> %i.qj, i64 4
  store i16 %i.qk, ptr %i.pa, align 2, !tbaa !520
  %i.ql = extractelement <8 x i16> %i.qj, i64 5
  store i16 %i.ql, ptr %i.pb, align 2, !tbaa !520
  %i.qm = extractelement <8 x i16> %i.qj, i64 6
  store i16 %i.qm, ptr %i.pc, align 2, !tbaa !520
  %i.qn = extractelement <8 x i16> %i.qj, i64 7
  store i16 %i.qn, ptr %i.pd, align 2, !tbaa !520
  %i.qo = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
end_hunk_0
