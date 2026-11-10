Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZL19stbtt_GetGlyphShapePK14stbtt_fontinfoiPP12stbtt_vertex:bb.a
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
  %.0273.i38 = phi ptr [ %i.km, %bb.bg ], [ %.2275.i, %bb.bz ] ; 6 uses
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
  %i.kv = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 4 ; 4 uses
  %i.kw = and i32 %i.ko, 2
  %.not342.i = icmp eq i32 %i.kw, 0
  br i1 %.not342.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kx = and i32 %i.ko, 1
  %.not343.i = icmp eq i32 %i.kx, 0
  br i1 %.not343.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ky = load i8, ptr %i.kv, align 1, !tbaa !50
  %i.kz = load <4 x i8>, ptr %i.kv, align 1, !tbaa !50 ; 2 uses
  %i.la = shufflevector <4 x i8> %i.kz, <4 x i8> poison, <2 x i32> <i32 2, i32 poison>
  %i.lb = insertelement <2 x i8> %i.la, i8 %i.ky, i64 1
  %i.lc = zext <2 x i8> %i.lb to <2 x i16>
  %i.ld = shl nuw <2 x i16> %i.lc, splat (i16 8)
  %i.le = shufflevector <4 x i8> %i.kz, <4 x i8> poison, <2 x i32> <i32 3, i32 1>
  %i.lf = zext <2 x i8> %i.le to <2 x i16>
  %i.lg = or disjoint <2 x i16> %i.ld, %i.lf
  %i.lh = sitofp <2 x i16> %i.lg to <2 x float>
  %i.li = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 8
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.lj = load <2 x i8>, ptr %i.kv, align 1, !tbaa !50
  %i.lk = shufflevector <2 x i8> %i.lj, <2 x i8> poison, <2 x i32> <i32 1, i32 0>
  %i.ll = sitofp <2 x i8> %i.lk to <2 x float>
  %i.lm = getelementptr inbounds nuw i8, ptr %.0273.i38, i64 6
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bh
  %.1274.i = phi ptr [ %i.li, %bb.bj ], [ %i.lm, %bb.bk ], [ %i.kv, %bb.bh ] ; 11 uses
  %i.ln = phi <2 x float> [ %i.lh, %bb.bj ], [ %i.ll, %bb.bk ], [ zeroinitializer, %bb.bh ] ; 3 uses
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.lp = and i32 %i.ko, 8
  %.not344.i = icmp eq i32 %i.lp, 0
  br i1 %.not344.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.1274.val384.i = load i8, ptr %.1274.i, align 1, !tbaa !50
  %i.lq = getelementptr i8, ptr %.1274.i, i64 1
  %.1274.val385.i = load i8, ptr %i.lq, align 1, !tbaa !50
  %i.lr = zext i8 %.1274.val384.i to i16
  %i.ls = shl nuw i16 %i.lr, 8
  %i.lt = zext i8 %.1274.val385.i to i16
  %i.lu = or disjoint i16 %i.ls, %i.lt
  %i.lv = sitofp i16 %i.lu to float
  %i.lw = fmul nnan float %i.lv, f0x38800000      ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.1274.i, i64 2
  %i.ly = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.lw, i64 1
  %i.lz = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lw, i64 0
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl
  %i.ma = and i32 %i.ko, 64
  %.not345.i = icmp eq i32 %i.ma, 0
  br i1 %.not345.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mb = getelementptr i8, ptr %.1274.i, i64 1
  %i.mc = getelementptr inbounds nuw i8, ptr %.1274.i, i64 2
  %i.md = getelementptr i8, ptr %.1274.i, i64 3
  %.1274.val382.i = load i8, ptr %.1274.i, align 1, !tbaa !50
  %.1274.val383.i = load i8, ptr %i.mb, align 1, !tbaa !50
  %i.me = zext i8 %.1274.val382.i to i16
  %i.mf = shl nuw i16 %i.me, 8
  %i.mg = zext i8 %.1274.val383.i to i16
  %i.mh = or disjoint i16 %i.mf, %i.mg
  %.val380.i = load i8, ptr %i.mc, align 1, !tbaa !50
  %.val381.i = load i8, ptr %i.md, align 1, !tbaa !50
  %i.mi = zext i8 %.val380.i to i16
  %i.mj = shl nuw i16 %i.mi, 8
  %i.mk = zext i8 %.val381.i to i16
  %i.ml = or disjoint i16 %i.mj, %i.mk
  %i.mm = insertelement <2 x i16> poison, i16 %i.mh, i64 0
  %i.mn = insertelement <2 x i16> %i.mm, i16 %i.ml, i64 1
  %i.mo = sitofp <2 x i16> %i.mn to <2 x float>
  %i.mp = fmul nnan <2 x float> %i.mo, splat (float f0x38800000) ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.1274.i, i64 4
  %5 = shufflevector <2 x float> %i.mp, <2 x float> <float 0.000000e+00, float poison>, <2 x i32> <i32 2, i32 0>
  %6 = shufflevector <2 x float> %i.mp, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  %.not346.i = icmp sgt i8 %.0273.val392.i, -1
  br i1 %.not346.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mr = load <8 x i8>, ptr %.1274.i, align 1, !tbaa !50 ; 4 uses
  %i.ms = shufflevector <8 x i8> %i.mr, <8 x i8> poison, <2 x i32> <i32 4, i32 0>
  %i.mt = zext <2 x i8> %i.ms to <2 x i16>
  %i.mu = shl nuw <2 x i16> %i.mt, splat (i16 8)
  %i.mv = shufflevector <8 x i8> %i.mr, <8 x i8> poison, <2 x i32> <i32 5, i32 1>
  %i.mw = zext <2 x i8> %i.mv to <2 x i16>
  %i.mx = or disjoint <2 x i16> %i.mu, %i.mw
  %i.my = sitofp <2 x i16> %i.mx to <2 x float>
  %i.mz = shufflevector <8 x i8> %i.mr, <8 x i8> poison, <2 x i32> <i32 6, i32 2>
  %i.na = zext <2 x i8> %i.mz to <2 x i16>
  %i.nb = shl nuw <2 x i16> %i.na, splat (i16 8)
  %i.nc = shufflevector <8 x i8> %i.mr, <8 x i8> poison, <2 x i32> <i32 7, i32 3>
  %i.nd = zext <2 x i8> %i.nc to <2 x i16>
  %i.ne = or disjoint <2 x i16> %i.nb, %i.nd
  %i.nf = sitofp <2 x i16> %i.ne to <2 x float>
  %i.ng = fmul nnan <2 x float> %i.my, splat (float f0x38800000)
  %i.nh = fmul nnan <2 x float> %i.nf, splat (float f0x38800000)
  %i.ni = getelementptr inbounds nuw i8, ptr %.1274.i, i64 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bm
  %.2275.i = phi ptr [ %i.lx, %bb.bm ], [ %i.mq, %bb.bo ], [ %i.ni, %bb.bq ], [ %.1274.i, %bb.bp ]
  %i.nj = phi <2 x float> [ %i.ly, %bb.bm ], [ %5, %bb.bo ], [ %i.ng, %bb.bq ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.bp ] ; 6 uses
  %i.nk = phi <2 x float> [ %i.lz, %bb.bm ], [ %6, %bb.bo ], [ %i.nh, %bb.bq ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.bp ] ; 6 uses
  %i.nl = fmul nnan <2 x float> %i.nk, %i.nk
  %i.nm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nj, <2 x float> %i.nj, <2 x float> %i.nl)
  %i.nn = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.nm) ; 3 uses
  %i.no = shufflevector <2 x float> %i.nn, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.np = call fastcc noundef i32 @_ZL19stbtt_GetGlyphShapePK14stbtt_fontinfoiPP12stbtt_vertex(ptr noundef %0, i32 noundef %i.ku, ptr noundef %i.a), !inline_history !876 ; 4 uses
  %i.nq = icmp sgt i32 %i.np, 0
  br i1 %i.nq, label %.preheader32, label %bb.bz

.preheader32:                                     ; preds = %bb.br
  %i.nr = load ptr, ptr %i.a, align 8, !tbaa !427 ; 13 uses
  %wide.trip.count = zext nneg i32 %i.np to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.np, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader32
  %i.ns = and i64 %wide.trip.count, 7             ; 2 uses
  %i.nt = icmp eq i64 %i.ns, 0
  %i.nu = select i1 %i.nt, i64 8, i64 %i.ns
  %n.vec = sub nsw i64 %wide.trip.count, %i.nu    ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %i.nj, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat96 = shufflevector <2 x float> %i.nj, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat98 = shufflevector <2 x float> %i.ln, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat100 = shufflevector <2 x float> %i.nn, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat102 = shufflevector <2 x float> %i.nk, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat104 = shufflevector <2 x float> %i.nk, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat106 = shufflevector <2 x float> %i.ln, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat108 = shufflevector <2 x float> %i.nn, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %i.nv = getelementptr inbounds nuw [14 x i8], ptr %i.nr, i64 %index ; 5 uses
  %i.nw = getelementptr inbounds nuw [14 x i8], ptr %i.nr, i64 %index ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 14 ; 2 uses
  %i.ny = getelementptr inbounds nuw [14 x i8], ptr %i.nr, i64 %index ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 28 ; 2 uses
  %i.oa = getelementptr inbounds nuw [14 x i8], ptr %i.nr, i64 %index ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 42 ; 2 uses
  %i.oc = getelementptr inbounds nuw [14 x i8], ptr %i.nr, i64 %index ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 56 ; 2 uses
  %i.oe = getelementptr inbounds nuw [14 x i8], ptr %i.nr, i64 %index ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 70 ; 2 uses
  %i.og = getelementptr inbounds nuw [14 x i8], ptr %i.nr, i64 %index ; 4 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 84 ; 2 uses
  %i.oi = getelementptr inbounds nuw [14 x i8], ptr %i.nr, i64 %index ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 98 ; 2 uses
  %i.ok = load i16, ptr %i.nv, align 2, !tbaa !519
  %i.ol = load i16, ptr %i.nx, align 2, !tbaa !519
  %i.om = load i16, ptr %i.nz, align 2, !tbaa !519
  %i.on = load i16, ptr %i.ob, align 2, !tbaa !519
  %i.oo = load i16, ptr %i.od, align 2, !tbaa !519
  %i.op = load i16, ptr %i.of, align 2, !tbaa !519
  %i.oq = load i16, ptr %i.oh, align 2, !tbaa !519
  %i.or = load i16, ptr %i.oj, align 2, !tbaa !519
  %i.os = insertelement <8 x i16> poison, i16 %i.ok, i64 0
  %i.ot = insertelement <8 x i16> %i.os, i16 %i.ol, i64 1
  %i.ou = insertelement <8 x i16> %i.ot, i16 %i.om, i64 2
  %i.ov = insertelement <8 x i16> %i.ou, i16 %i.on, i64 3
  %i.ow = insertelement <8 x i16> %i.ov, i16 %i.oo, i64 4
  %i.ox = insertelement <8 x i16> %i.ow, i16 %i.op, i64 5
  %i.oy = insertelement <8 x i16> %i.ox, i16 %i.oq, i64 6
  %i.oz = insertelement <8 x i16> %i.oy, i16 %i.or, i64 7
  %i.pa = getelementptr inbounds nuw i8, ptr %i.nv, i64 2
  %i.pb = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ny, i64 30
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oa, i64 44
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oc, i64 58 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oe, i64 72 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.og, i64 86 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oi, i64 100 ; 2 uses
  %i.pi = load i16, ptr %i.pa, align 2, !tbaa !520
  %i.pj = load i16, ptr %i.pb, align 2, !tbaa !520
  %i.pk = load i16, ptr %i.pc, align 2, !tbaa !520
  %i.pl = load i16, ptr %i.pd, align 2, !tbaa !520
  %i.pm = load i16, ptr %i.pe, align 2, !tbaa !520
  %i.pn = load i16, ptr %i.pf, align 2, !tbaa !520
  %i.po = load i16, ptr %i.pg, align 2, !tbaa !520
  %i.pp = load i16, ptr %i.ph, align 2, !tbaa !520
  %i.pq = insertelement <8 x i16> poison, i16 %i.pi, i64 0
  %i.pr = insertelement <8 x i16> %i.pq, i16 %i.pj, i64 1
  %i.ps = insertelement <8 x i16> %i.pr, i16 %i.pk, i64 2
  %i.pt = insertelement <8 x i16> %i.ps, i16 %i.pl, i64 3
  %i.pu = insertelement <8 x i16> %i.pt, i16 %i.pm, i64 4
  %i.pv = insertelement <8 x i16> %i.pu, i16 %i.pn, i64 5
  %i.pw = insertelement <8 x i16> %i.pv, i16 %i.po, i64 6
  %i.px = insertelement <8 x i16> %i.pw, i16 %i.pp, i64 7
  %i.py = sitofp <8 x i16> %i.oz to <8 x float>   ; 2 uses
  %i.pz = sitofp <8 x i16> %i.px to <8 x float>   ; 2 uses
  %i.qa = fmul nnan <8 x float> %broadcast.splat, %i.pz
  %i.qb = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat96, <8 x float> %i.py, <8 x float> %i.qa)
  %i.qc = fadd <8 x float> %broadcast.splat98, %i.qb
  %i.qd = fmul <8 x float> %broadcast.splat100, %i.qc
  %i.qe = fptosi <8 x float> %i.qd to <8 x i16>   ; 8 uses
  %i.qf = extractelement <8 x i16> %i.qe, i64 4
  store i16 %i.qf, ptr %i.od, align 2, !tbaa !519
  %i.qg = extractelement <8 x i16> %i.qe, i64 5
  store i16 %i.qg, ptr %i.of, align 2, !tbaa !519
  %i.qh = extractelement <8 x i16> %i.qe, i64 6
  store i16 %i.qh, ptr %i.oh, align 2, !tbaa !519
  %i.qi = extractelement <8 x i16> %i.qe, i64 7
  store i16 %i.qi, ptr %i.oj, align 2, !tbaa !519
  %i.qj = fmul nnan <8 x float> %broadcast.splat102, %i.pz
  %i.qk = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat104, <8 x float> %i.py, <8 x float> %i.qj)
  %i.ql = fadd <8 x float> %broadcast.splat106, %i.qk
  %i.qm = fmul <8 x float> %broadcast.splat108, %i.ql
  %i.qn = fptosi <8 x float> %i.qm to <8 x i16>   ; 8 uses
  %i.qo = extractelement <8 x i16> %i.qn, i64 4
  store i16 %i.qo, ptr %i.pe, align 2, !tbaa !520
  %i.qp = extractelement <8 x i16> %i.qn, i64 5
  store i16 %i.qp, ptr %i.pf, align 2, !tbaa !520
  %i.qq = extractelement <8 x i16> %i.qn, i64 6
  store i16 %i.qq, ptr %i.pg, align 2, !tbaa !520
  %i.qr = extractelement <8 x i16> %i.qn, i64 7
  store i16 %i.qr, ptr %i.ph, align 2, !tbaa !520
  %i.qs = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  %i.qt = getelementptr inbounds nuw i8, ptr %i.nw, i64 18
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  %i.qv = getelementptr inbounds nuw i8, ptr %i.oa, i64 46
  %i.qw = getelementptr inbounds nuw i8, ptr %i.oc, i64 60 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.oe, i64 74 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.og, i64 88 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.oi, i64 102 ; 2 uses
  %i.ra = load i16, ptr %i.qs, align 2, !tbaa !515
  %i.rb = load i16, ptr %i.qt, align 2, !tbaa !515
  %i.rc = load i16, ptr %i.qu, align 2, !tbaa !515
  %i.rd = load i16, ptr %i.qv, align 2, !tbaa !515
  %i.re = load i16, ptr %i.qw, align 2, !tbaa !515
  %i.rf = load i16, ptr %i.qx, align 2, !tbaa !515
  %i.rg = load i16, ptr %i.qy, align 2, !tbaa !515
  %i.rh = load i16, ptr %i.qz, align 2, !tbaa !515
  %i.ri = insertelement <8 x i16> poison, i16 %i.ra, i64 0
  %i.rj = insertelement <8 x i16> %i.ri, i16 %i.rb, i64 1
  %i.rk = insertelement <8 x i16> %i.rj, i16 %i.rc, i64 2
  %i.rl = insertelement <8 x i16> %i.rk, i16 %i.rd, i64 3
  %i.rm = insertelement <8 x i16> %i.rl, i16 %i.re, i64 4
  %i.rn = insertelement <8 x i16> %i.rm, i16 %i.rf, i64 5
  %i.ro = insertelement <8 x i16> %i.rn, i16 %i.rg, i64 6
  %i.rp = insertelement <8 x i16> %i.ro, i16 %i.rh, i64 7
  %i.rq = getelementptr inbounds nuw i8, ptr %i.nv, i64 6
  %i.rr = getelementptr inbounds nuw i8, ptr %i.nw, i64 20
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ny, i64 34
  %i.rt = getelementptr inbounds nuw i8, ptr %i.oa, i64 48
  %i.ru = getelementptr inbounds nuw i8, ptr %i.oc, i64 62 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.oe, i64 76 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.og, i64 90 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.oi, i64 104 ; 2 uses
  %i.ry = load i16, ptr %i.rq, align 2, !tbaa !516
  %i.rz = load i16, ptr %i.rr, align 2, !tbaa !516
  %i.sa = load i16, ptr %i.rs, align 2, !tbaa !516
  %i.sb = load i16, ptr %i.rt, align 2, !tbaa !516
  %i.sc = load i16, ptr %i.ru, align 2, !tbaa !516
  %i.sd = load i16, ptr %i.rv, align 2, !tbaa !516
  %i.se = load i16, ptr %i.rw, align 2, !tbaa !516
  %i.sf = load i16, ptr %i.rx, align 2, !tbaa !516
  %i.sg = insertelement <8 x i16> poison, i16 %i.ry, i64 0
  %i.sh = insertelement <8 x i16> %i.sg, i16 %i.rz, i64 1
  %i.si = insertelement <8 x i16> %i.sh, i16 %i.sa, i64 2
  %i.sj = insertelement <8 x i16> %i.si, i16 %i.sb, i64 3
  %i.sk = insertelement <8 x i16> %i.sj, i16 %i.sc, i64 4
  %i.sl = insertelement <8 x i16> %i.sk, i16 %i.sd, i64 5
  %i.sm = insertelement <8 x i16> %i.sl, i16 %i.se, i64 6
  %i.sn = insertelement <8 x i16> %i.sm, i16 %i.sf, i64 7
  %i.so = sitofp <8 x i16> %i.rp to <8 x float>   ; 2 uses
  %i.sp = sitofp <8 x i16> %i.sn to <8 x float>   ; 2 uses
  %i.sq = fmul nnan <8 x float> %broadcast.splat, %i.sp
  %i.sr = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat96, <8 x float> %i.so, <8 x float> %i.sq)
  %i.ss = fadd <8 x float> %broadcast.splat98, %i.sr
  %i.st = fmul <8 x float> %broadcast.splat100, %i.ss
  %i.su = fptosi <8 x float> %i.st to <8 x i16>   ; 8 uses
end_hunk_0
