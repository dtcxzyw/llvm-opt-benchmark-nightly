Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlarfx?download=true
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@dlarfx_:bb.a
  %i.ws = tail call double @llvm.fmuladd.f64(double %i.wm, double %i.ui, double %i.wa) ; 2 uses
  store double %i.ws, ptr %i.vz, align 8, !tbaa !109
  %indvars.iv.next1552 = add nuw nsw i64 %indvars.iv1551, 1 ; 2 uses
  %exitcond1555.not = icmp eq i64 %indvars.iv.next1552, %wide.trip.count1554
  br i1 %exitcond1555.not, label %.loopexit, label %.lr.ph1472, !llvm.loop !17

bb.k:                                             ; preds = %bb.c
  %i.wt = load double, ptr %4, align 8, !tbaa !109
  %i.wu = load <4 x double>, ptr %3, align 8, !tbaa !109 ; 9 uses
  %i.wv = insertelement <4 x double> poison, double %i.wt, i64 0
  %i.ww = shufflevector <4 x double> %i.wv, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.wx = fmul <4 x double> %i.ww, %i.wu          ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.wz = load <4 x double>, ptr %i.wy, align 8, !tbaa !109 ; 9 uses
  %i.xa = fmul <4 x double> %i.ww, %i.wz          ; 5 uses
  %i.xb = load i32, ptr %2, align 4, !tbaa !107   ; 2 uses
  %.not14351467 = icmp slt i32 %i.xb, 1
  br i1 %.not14351467, label %.loopexit, label %.lr.ph1469.lver.check

.lr.ph1469.lver.check:                            ; preds = %bb.k
  %i.xc = sext i32 %i.a to i64                    ; 2 uses
  %i.xd = add nuw i32 %i.xb, 1
  %wide.trip.count1549 = zext i32 %i.xd to i64    ; 2 uses
  %ident.check3688.not = icmp eq i32 %i.a, 1
  br i1 %ident.check3688.not, label %.lr.ph1469.ph, label %.lr.ph1469.lver.orig.preheader

.lr.ph1469.lver.orig.preheader:                   ; preds = %.lr.ph1469.lver.check
  %i.xe = extractelement <4 x double> %i.wu, i64 0
  %i.xf = extractelement <4 x double> %i.wu, i64 2
  %i.xg = extractelement <4 x double> %i.wu, i64 3
  %i.xh = extractelement <4 x double> %i.wz, i64 0
  %i.xi = extractelement <4 x double> %i.wz, i64 1
  %i.xj = extractelement <4 x double> %i.wz, i64 2
  %i.xk = extractelement <4 x double> %i.wz, i64 3
  br label %.lr.ph1469.lver.orig

.lr.ph1469.lver.orig:                             ; preds = %.lr.ph1469.lver.orig.preheader, %.lr.ph1469.lver.orig
  %indvars.iv1546.lver.orig = phi i64 [ %indvars.iv.next1547.lver.orig, %.lr.ph1469.lver.orig ], [ 1, %.lr.ph1469.lver.orig.preheader ] ; 2 uses
  %i.xl = mul nsw i64 %indvars.iv1546.lver.orig, %i.xc
  %i.xm = getelementptr [8 x i8], ptr %i.c, i64 %i.xl ; 2 uses
  %i.xn = getelementptr i8, ptr %i.xm, i64 8      ; 2 uses
  %i.xo = getelementptr i8, ptr %i.xm, i64 40     ; 2 uses
  %i.xp = load <4 x double>, ptr %i.xn, align 8, !tbaa !109 ; 5 uses
  %foldExtExtBinop3704 = fmul <4 x double> %i.wu, %i.xp
  %i.xq = extractelement <4 x double> %foldExtExtBinop3704, i64 1
  %i.xr = extractelement <4 x double> %i.xp, i64 0
  %i.xs = tail call double @llvm.fmuladd.f64(double %i.xe, double %i.xr, double %i.xq)
  %i.xt = extractelement <4 x double> %i.xp, i64 2
  %i.xu = tail call double @llvm.fmuladd.f64(double %i.xf, double %i.xt, double %i.xs)
  %i.xv = extractelement <4 x double> %i.xp, i64 3
  %i.xw = tail call double @llvm.fmuladd.f64(double %i.xg, double %i.xv, double %i.xu)
  %i.xx = load <4 x double>, ptr %i.xo, align 8, !tbaa !109 ; 5 uses
  %i.xy = extractelement <4 x double> %i.xx, i64 0
  %i.xz = tail call double @llvm.fmuladd.f64(double %i.xh, double %i.xy, double %i.xw)
  %i.ya = extractelement <4 x double> %i.xx, i64 1
  %i.yb = tail call double @llvm.fmuladd.f64(double %i.xi, double %i.ya, double %i.xz)
  %i.yc = extractelement <4 x double> %i.xx, i64 2
  %i.yd = tail call double @llvm.fmuladd.f64(double %i.xj, double %i.yc, double %i.yb)
  %i.ye = extractelement <4 x double> %i.xx, i64 3
  %i.yf = tail call double @llvm.fmuladd.f64(double %i.xk, double %i.ye, double %i.yd)
  %i.yg = fneg double %i.yf
  %i.yh = insertelement <4 x double> poison, double %i.yg, i64 0
  %i.yi = shufflevector <4 x double> %i.yh, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.yj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.yi, <4 x double> %i.wx, <4 x double> %i.xp)
  store <4 x double> %i.yj, ptr %i.xn, align 8, !tbaa !109
  %i.yk = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.yi, <4 x double> %i.xa, <4 x double> %i.xx)
  store <4 x double> %i.yk, ptr %i.xo, align 8, !tbaa !109
  %indvars.iv.next1547.lver.orig = add nuw nsw i64 %indvars.iv1546.lver.orig, 1 ; 2 uses
  %exitcond1550.not.lver.orig = icmp eq i64 %indvars.iv.next1547.lver.orig, %wide.trip.count1549
  br i1 %exitcond1550.not.lver.orig, label %.loopexit, label %.lr.ph1469.lver.orig, !llvm.loop !18

.lr.ph1469.ph:                                    ; preds = %.lr.ph1469.lver.check
  %scevgep3690 = getelementptr i8, ptr %5, i64 48
  %load_initial3691 = load double, ptr %scevgep3690, align 8
  %i.yl = extractelement <4 x double> %i.wu, i64 0
  %i.ym = extractelement <4 x double> %i.wu, i64 2
  %i.yn = extractelement <4 x double> %i.wu, i64 3
  %i.yo = extractelement <4 x double> %i.xa, i64 0
  %i.yp = extractelement <4 x double> %i.xa, i64 1
  %i.yq = extractelement <4 x double> %i.xa, i64 2
  %i.yr = extractelement <4 x double> %i.xa, i64 3
  %i.ys = extractelement <4 x double> %i.wz, i64 0
  %i.yt = extractelement <4 x double> %i.wz, i64 1
  %i.yu = extractelement <4 x double> %i.wz, i64 2
  %i.yv = extractelement <4 x double> %i.wz, i64 3
  br label %.lr.ph1469

.lr.ph1469:                                       ; preds = %.lr.ph1469.ph, %.lr.ph1469
  %store_forwarded3692 = phi double [ %load_initial3691, %.lr.ph1469.ph ], [ %i.zz, %.lr.ph1469 ] ; 2 uses
  %indvars.iv1546 = phi i64 [ 1, %.lr.ph1469.ph ], [ %indvars.iv.next1547, %.lr.ph1469 ] ; 2 uses
  %i.yw = mul nuw nsw i64 %indvars.iv1546, %i.xc
  %i.yx = getelementptr [8 x i8], ptr %i.c, i64 %i.yw ; 5 uses
  %i.yy = getelementptr i8, ptr %i.yx, i64 8      ; 2 uses
  %i.yz = getelementptr i8, ptr %i.yx, i64 40     ; 2 uses
  %i.za = load double, ptr %i.yz, align 8, !tbaa !109 ; 2 uses
  %i.zb = getelementptr i8, ptr %i.yx, i64 48     ; 2 uses
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !109 ; 2 uses
  %i.zd = getelementptr i8, ptr %i.yx, i64 56
  %i.ze = getelementptr i8, ptr %i.yx, i64 64     ; 2 uses
  %i.zf = load double, ptr %i.ze, align 8, !tbaa !109 ; 2 uses
  %i.zg = load <4 x double>, ptr %i.yy, align 8, !tbaa !109 ; 5 uses
  %foldExtExtBinop3706 = fmul <4 x double> %i.wu, %i.zg
  %i.zh = extractelement <4 x double> %foldExtExtBinop3706, i64 1
  %i.zi = extractelement <4 x double> %i.zg, i64 0
  %i.zj = tail call double @llvm.fmuladd.f64(double %i.yl, double %i.zi, double %i.zh)
  %i.zk = extractelement <4 x double> %i.zg, i64 2
  %i.zl = tail call double @llvm.fmuladd.f64(double %i.ym, double %i.zk, double %i.zj)
  %i.zm = extractelement <4 x double> %i.zg, i64 3
  %i.zn = tail call double @llvm.fmuladd.f64(double %i.yn, double %i.zm, double %i.zl)
  %i.zo = tail call double @llvm.fmuladd.f64(double %i.ys, double %i.za, double %i.zn)
  %i.zp = tail call double @llvm.fmuladd.f64(double %i.yt, double %i.zc, double %i.zo)
  %i.zq = tail call double @llvm.fmuladd.f64(double %i.yu, double %store_forwarded3692, double %i.zp)
  %i.zr = tail call double @llvm.fmuladd.f64(double %i.yv, double %i.zf, double %i.zq)
  %i.zs = fneg double %i.zr                       ; 5 uses
  %i.zt = insertelement <4 x double> poison, double %i.zs, i64 0
  %i.zu = shufflevector <4 x double> %i.zt, <4 x double> poison, <4 x i32> zeroinitializer
  %i.zv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.zu, <4 x double> %i.wx, <4 x double> %i.zg)
  store <4 x double> %i.zv, ptr %i.yy, align 8, !tbaa !109
  %i.zw = tail call double @llvm.fmuladd.f64(double %i.zs, double %i.yo, double %i.za)
  store double %i.zw, ptr %i.yz, align 8, !tbaa !109
  %i.zx = tail call double @llvm.fmuladd.f64(double %i.zs, double %i.yp, double %i.zc)
  store double %i.zx, ptr %i.zb, align 8, !tbaa !109
  %i.zy = tail call double @llvm.fmuladd.f64(double %i.zs, double %i.yq, double %store_forwarded3692)
  store double %i.zy, ptr %i.zd, align 8, !tbaa !109
  %i.zz = tail call double @llvm.fmuladd.f64(double %i.zs, double %i.yr, double %i.zf) ; 2 uses
  store double %i.zz, ptr %i.ze, align 8, !tbaa !109
  %indvars.iv.next1547 = add nuw nsw i64 %indvars.iv1546, 1 ; 2 uses
  %exitcond1550.not = icmp eq i64 %indvars.iv.next1547, %wide.trip.count1549
  br i1 %exitcond1550.not, label %.loopexit, label %.lr.ph1469, !llvm.loop !18

bb.l:                                             ; preds = %bb.c
  %i.aaa = load double, ptr %4, align 8, !tbaa !109 ; 2 uses
  %i.aab = load <4 x double>, ptr %3, align 8, !tbaa !109 ; 5 uses
  %i.aac = insertelement <4 x double> poison, double %i.aaa, i64 0
  %i.aad = shufflevector <4 x double> %i.aac, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aae = fmul <4 x double> %i.aad, %i.aab
  %i.aaf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aag = load <4 x double>, ptr %i.aaf, align 8, !tbaa !109 ; 5 uses
  %i.aah = fmul <4 x double> %i.aad, %i.aag
  %i.aai = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.aaj = load double, ptr %i.aai, align 8, !tbaa !109 ; 2 uses
  %i.aak = fmul double %i.aaa, %i.aaj
  %i.aal = load i32, ptr %2, align 4, !tbaa !107  ; 2 uses
  %.not14341464 = icmp slt i32 %i.aal, 1
  br i1 %.not14341464, label %.loopexit, label %.lr.ph1466.preheader

.lr.ph1466.preheader:                             ; preds = %bb.l
  %i.aam = sext i32 %i.a to i64
  %i.aan = add nuw i32 %i.aal, 1
  %wide.trip.count1544 = zext i32 %i.aan to i64
  %i.aao = extractelement <4 x double> %i.aab, i64 0
  %i.aap = extractelement <4 x double> %i.aab, i64 2
  %i.aaq = extractelement <4 x double> %i.aab, i64 3
  %i.aar = extractelement <4 x double> %i.aag, i64 0
  %i.aas = extractelement <4 x double> %i.aag, i64 1
  %i.aat = extractelement <4 x double> %i.aag, i64 2
  %i.aau = extractelement <4 x double> %i.aag, i64 3
  br label %.lr.ph1466

.lr.ph1466:                                       ; preds = %.lr.ph1466.preheader, %.lr.ph1466
  %indvars.iv1541 = phi i64 [ 1, %.lr.ph1466.preheader ], [ %indvars.iv.next1542, %.lr.ph1466 ] ; 2 uses
  %i.aav = mul nsw i64 %indvars.iv1541, %i.aam
  %i.aaw = getelementptr [8 x i8], ptr %i.c, i64 %i.aav ; 3 uses
  %i.aax = getelementptr i8, ptr %i.aaw, i64 8    ; 2 uses
  %i.aay = getelementptr i8, ptr %i.aaw, i64 40   ; 2 uses
  %i.aaz = getelementptr i8, ptr %i.aaw, i64 72   ; 2 uses
  %i.aba = load double, ptr %i.aaz, align 8, !tbaa !109 ; 2 uses
  %i.abb = load <4 x double>, ptr %i.aax, align 8, !tbaa !109 ; 5 uses
  %foldExtExtBinop3708 = fmul <4 x double> %i.aab, %i.abb
  %i.abc = extractelement <4 x double> %foldExtExtBinop3708, i64 1
  %i.abd = extractelement <4 x double> %i.abb, i64 0
  %i.abe = tail call double @llvm.fmuladd.f64(double %i.aao, double %i.abd, double %i.abc)
  %i.abf = extractelement <4 x double> %i.abb, i64 2
  %i.abg = tail call double @llvm.fmuladd.f64(double %i.aap, double %i.abf, double %i.abe)
  %i.abh = extractelement <4 x double> %i.abb, i64 3
  %i.abi = tail call double @llvm.fmuladd.f64(double %i.aaq, double %i.abh, double %i.abg)
  %i.abj = load <4 x double>, ptr %i.aay, align 8, !tbaa !109 ; 5 uses
  %i.abk = extractelement <4 x double> %i.abj, i64 0
  %i.abl = tail call double @llvm.fmuladd.f64(double %i.aar, double %i.abk, double %i.abi)
  %i.abm = extractelement <4 x double> %i.abj, i64 1
  %i.abn = tail call double @llvm.fmuladd.f64(double %i.aas, double %i.abm, double %i.abl)
  %i.abo = extractelement <4 x double> %i.abj, i64 2
  %i.abp = tail call double @llvm.fmuladd.f64(double %i.aat, double %i.abo, double %i.abn)
  %i.abq = extractelement <4 x double> %i.abj, i64 3
  %i.abr = tail call double @llvm.fmuladd.f64(double %i.aau, double %i.abq, double %i.abp)
  %i.abs = tail call double @llvm.fmuladd.f64(double %i.aaj, double %i.aba, double %i.abr)
  %i.abt = fneg double %i.abs                     ; 2 uses
  %i.abu = insertelement <4 x double> poison, double %i.abt, i64 0
  %i.abv = shufflevector <4 x double> %i.abu, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.abv, <4 x double> %i.aae, <4 x double> %i.abb)
  store <4 x double> %i.abw, ptr %i.aax, align 8, !tbaa !109
  %i.abx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.abv, <4 x double> %i.aah, <4 x double> %i.abj)
  store <4 x double> %i.abx, ptr %i.aay, align 8, !tbaa !109
  %i.aby = tail call double @llvm.fmuladd.f64(double %i.abt, double %i.aak, double %i.aba)
  store double %i.aby, ptr %i.aaz, align 8, !tbaa !109
  %indvars.iv.next1542 = add nuw nsw i64 %indvars.iv1541, 1 ; 2 uses
  %exitcond1545.not = icmp eq i64 %indvars.iv.next1542, %wide.trip.count1544
  br i1 %exitcond1545.not, label %.loopexit, label %.lr.ph1466, !llvm.loop !19

bb.m:                                             ; preds = %bb.c
  %i.abz = load double, ptr %4, align 8, !tbaa !109 ; 3 uses
  %i.aca = load <4 x double>, ptr %3, align 8, !tbaa !109 ; 5 uses
  %i.acb = insertelement <4 x double> poison, double %i.abz, i64 0
  %i.acc = shufflevector <4 x double> %i.acb, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acd = fmul <4 x double> %i.acc, %i.aca
  %i.ace = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.acf = load <4 x double>, ptr %i.ace, align 8, !tbaa !109 ; 5 uses
  %i.acg = fmul <4 x double> %i.acc, %i.acf
  %i.ach = getelementptr inbounds nuw i8, ptr %3, i64 64
  %8 = load double, ptr %i.ach, align 8, !tbaa !109 ; 2 uses
  %9 = fmul double %i.abz, %8
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %11 = load double, ptr %10, align 8, !tbaa !109 ; 2 uses
  %12 = fmul double %i.abz, %11
  %i.aci = load i32, ptr %2, align 4, !tbaa !107  ; 2 uses
  %.not14331462 = icmp slt i32 %i.aci, 1
  br i1 %.not14331462, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.acj = sext i32 %i.a to i64
  %i.ack = add nuw i32 %i.aci, 1
  %wide.trip.count = zext i32 %i.ack to i64
  %i.acl = extractelement <4 x double> %i.aca, i64 0
  %i.acm = extractelement <4 x double> %i.aca, i64 2
  %i.acn = extractelement <4 x double> %i.aca, i64 3
  %i.aco = extractelement <4 x double> %i.acf, i64 0
  %i.acp = extractelement <4 x double> %i.acf, i64 1
  %i.acq = extractelement <4 x double> %i.acf, i64 2
  %i.acr = extractelement <4 x double> %i.acf, i64 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.acs = mul nsw i64 %indvars.iv, %i.acj
  %i.act = getelementptr [8 x i8], ptr %i.c, i64 %i.acs ; 4 uses
  %13 = getelementptr i8, ptr %i.act, i64 8       ; 2 uses
  %i.acu = getelementptr i8, ptr %i.act, i64 40   ; 2 uses
  %i.acv = getelementptr i8, ptr %i.act, i64 72   ; 2 uses
  %14 = load double, ptr %i.acv, align 8, !tbaa !109 ; 2 uses
  %i.acw = getelementptr i8, ptr %i.act, i64 80   ; 2 uses
  %15 = load double, ptr %i.acw, align 8, !tbaa !109 ; 2 uses
  %i.acx = load <4 x double>, ptr %13, align 8, !tbaa !109 ; 5 uses
  %foldExtExtBinop3710 = fmul <4 x double> %i.aca, %i.acx
  %i.acy = extractelement <4 x double> %foldExtExtBinop3710, i64 1
  %i.acz = extractelement <4 x double> %i.acx, i64 0
  %i.ada = tail call double @llvm.fmuladd.f64(double %i.acl, double %i.acz, double %i.acy)
  %i.adb = extractelement <4 x double> %i.acx, i64 2
  %i.adc = tail call double @llvm.fmuladd.f64(double %i.acm, double %i.adb, double %i.ada)
  %i.add = extractelement <4 x double> %i.acx, i64 3
  %i.ade = tail call double @llvm.fmuladd.f64(double %i.acn, double %i.add, double %i.adc)
  %i.adf = load <4 x double>, ptr %i.acu, align 8, !tbaa !109 ; 5 uses
  %i.adg = extractelement <4 x double> %i.adf, i64 0
  %i.adh = tail call double @llvm.fmuladd.f64(double %i.aco, double %i.adg, double %i.ade)
  %i.adi = extractelement <4 x double> %i.adf, i64 1
  %i.adj = tail call double @llvm.fmuladd.f64(double %i.acp, double %i.adi, double %i.adh)
  %i.adk = extractelement <4 x double> %i.adf, i64 2
  %i.adl = tail call double @llvm.fmuladd.f64(double %i.acq, double %i.adk, double %i.adj)
  %i.adm = extractelement <4 x double> %i.adf, i64 3
  %i.adn = tail call double @llvm.fmuladd.f64(double %i.acr, double %i.adm, double %i.adl)
  %i.ado = tail call double @llvm.fmuladd.f64(double %8, double %14, double %i.adn)
  %i.adp = tail call double @llvm.fmuladd.f64(double %11, double %15, double %i.ado)
  %i.adq = fneg double %i.adp                     ; 3 uses
  %i.adr = insertelement <4 x double> poison, double %i.adq, i64 0
  %i.ads = shufflevector <4 x double> %i.adr, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.adt = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ads, <4 x double> %i.acd, <4 x double> %i.acx)
  store <4 x double> %i.adt, ptr %13, align 8, !tbaa !109
  %i.adu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ads, <4 x double> %i.acg, <4 x double> %i.adf)
  store <4 x double> %i.adu, ptr %i.acu, align 8, !tbaa !109
  %16 = tail call double @llvm.fmuladd.f64(double %i.adq, double %9, double %14)
  store double %16, ptr %i.acv, align 8, !tbaa !109
  %17 = tail call double @llvm.fmuladd.f64(double %i.adq, double %12, double %15)
  store double %17, ptr %i.acw, align 8, !tbaa !109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !20

bb.n:                                             ; preds = %bb.b
  %i.adv = load i32, ptr %2, align 4, !tbaa !107
  switch i32 %i.adv, label %.loopexit.sink.split [
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 3, label %bb.q
    i32 4, label %bb.r
    i32 5, label %bb.s
    i32 6, label %bb.t
    i32 7, label %bb.u
    i32 8, label %bb.v
    i32 9, label %bb.w
    i32 10, label %bb.x
  ]

bb.o:                                             ; preds = %bb.n
  %i.adw = load double, ptr %4, align 8, !tbaa !109
  %i.adx = load double, ptr %3, align 8, !tbaa !109 ; 2 uses
  %i.ady = fneg double %i.adx
  %i.adz = fmul double %i.adw, %i.ady
  %i.aea = tail call double @llvm.fmuladd.f64(double %i.adz, double %i.adx, double 1.000000e+00) ; 3 uses
  %i.aeb = load i32, ptr %1, align 4, !tbaa !107  ; 5 uses
  %.not14321518 = icmp slt i32 %i.aeb, 1
  br i1 %.not14321518, label %.loopexit, label %iter.check3647

iter.check3647:                                   ; preds = %bb.o
  %i.aec = sext i32 %i.a to i64
  %i.aed = add nuw i32 %i.aeb, 1
  %wide.trip.count1634 = zext i32 %i.aed to i64
  %invariant.gep1780 = getelementptr [8 x i8], ptr %i.c, i64 %i.aec ; 3 uses
  %i.aee = zext nneg i32 %i.aeb to i64            ; 5 uses
  %min.iters.check3629 = icmp ult i32 %i.aeb, 4
  br i1 %min.iters.check3629, label %.lr.ph1520.preheader, label %vector.main.loop.iter.check3630

vector.main.loop.iter.check3630:                  ; preds = %iter.check3647
  %min.iters.check3631 = icmp ult i32 %i.aeb, 16
  br i1 %min.iters.check3631, label %vec.epilog.ph3651, label %vector.ph3632

vector.ph3632:                                    ; preds = %vector.main.loop.iter.check3630
  %i.aef = and i64 %i.aee, 12
  %n.vec3633 = and i64 %i.aee, 2147483632         ; 4 uses
  %i.aeg = or disjoint i64 %n.vec3633, 1
  %broadcast.splatinsert3634 = insertelement <4 x double> poison, double %i.aea, i64 0
  %broadcast.splat3635 = shufflevector <4 x double> %broadcast.splatinsert3634, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body3636

vector.body3636:                                  ; preds = %vector.ph3632, %vector.body3636
  %index3637 = phi i64 [ 0, %vector.ph3632 ], [ %index.next3642, %vector.body3636 ] ; 2 uses
  %i.aeh = getelementptr [8 x i8], ptr %invariant.gep1780, i64 %index3637 ; 4 uses
  %i.aei = getelementptr i8, ptr %i.aeh, i64 8    ; 2 uses
  %i.aej = getelementptr i8, ptr %i.aeh, i64 40   ; 2 uses
  %i.aek = getelementptr i8, ptr %i.aeh, i64 72   ; 2 uses
  %i.ael = getelementptr i8, ptr %i.aeh, i64 104  ; 2 uses
  %wide.load3638 = load <4 x double>, ptr %i.aei, align 8, !tbaa !109
  %wide.load3639 = load <4 x double>, ptr %i.aej, align 8, !tbaa !109
  %wide.load3640 = load <4 x double>, ptr %i.aek, align 8, !tbaa !109
  %wide.load3641 = load <4 x double>, ptr %i.ael, align 8, !tbaa !109
  %i.aem = fmul <4 x double> %broadcast.splat3635, %wide.load3638
  %i.aen = fmul <4 x double> %broadcast.splat3635, %wide.load3639
  %i.aeo = fmul <4 x double> %broadcast.splat3635, %wide.load3640
  %i.aep = fmul <4 x double> %broadcast.splat3635, %wide.load3641
  store <4 x double> %i.aem, ptr %i.aei, align 8, !tbaa !109
  store <4 x double> %i.aen, ptr %i.aej, align 8, !tbaa !109
  store <4 x double> %i.aeo, ptr %i.aek, align 8, !tbaa !109
  store <4 x double> %i.aep, ptr %i.ael, align 8, !tbaa !109
  %index.next3642 = add nuw i64 %index3637, 16    ; 2 uses
  %i.aeq = icmp eq i64 %index.next3642, %n.vec3633
  br i1 %i.aeq, label %middle.block3643, label %vector.body3636, !llvm.loop !21

middle.block3643:                                 ; preds = %vector.body3636
  %cmp.n3644 = icmp eq i64 %n.vec3633, %i.aee
  br i1 %cmp.n3644, label %.loopexit, label %vec.epilog.iter.check3649

vec.epilog.iter.check3649:                        ; preds = %middle.block3643
  %min.epilog.iters.check3650 = icmp eq i64 %i.aef, 0
  br i1 %min.epilog.iters.check3650, label %.lr.ph1520.preheader, label %vec.epilog.ph3651, !prof !113

vec.epilog.ph3651:                                ; preds = %vector.main.loop.iter.check3630, %vec.epilog.iter.check3649
  %vec.epilog.resume.val3645 = phi i64 [ %n.vec3633, %vec.epilog.iter.check3649 ], [ 0, %vector.main.loop.iter.check3630 ]
  %n.vec3652 = and i64 %i.aee, 2147483644         ; 3 uses
  %i.aer = or disjoint i64 %n.vec3652, 1
  %broadcast.splatinsert3653 = insertelement <4 x double> poison, double %i.aea, i64 0
  %broadcast.splat3654 = shufflevector <4 x double> %broadcast.splatinsert3653, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body3655

vec.epilog.vector.body3655:                       ; preds = %vec.epilog.vector.body3655, %vec.epilog.ph3651
  %index3656 = phi i64 [ %vec.epilog.resume.val3645, %vec.epilog.ph3651 ], [ %index.next3658, %vec.epilog.vector.body3655 ] ; 2 uses
  %i.aes = getelementptr [8 x i8], ptr %invariant.gep1780, i64 %index3656
  %i.aet = getelementptr i8, ptr %i.aes, i64 8    ; 2 uses
  %wide.load3657 = load <4 x double>, ptr %i.aet, align 8, !tbaa !109
  %i.aeu = fmul <4 x double> %broadcast.splat3654, %wide.load3657
  store <4 x double> %i.aeu, ptr %i.aet, align 8, !tbaa !109
  %index.next3658 = add nuw i64 %index3656, 4     ; 2 uses
  %i.aev = icmp eq i64 %index.next3658, %n.vec3652
  br i1 %i.aev, label %vec.epilog.middle.block3659, label %vec.epilog.vector.body3655, !llvm.loop !22

vec.epilog.middle.block3659:                      ; preds = %vec.epilog.vector.body3655
  %cmp.n3660 = icmp eq i64 %n.vec3652, %i.aee
  br i1 %cmp.n3660, label %.loopexit, label %.lr.ph1520.preheader

.lr.ph1520.preheader:                             ; preds = %iter.check3647, %vec.epilog.iter.check3649, %vec.epilog.middle.block3659
  %indvars.iv1631.ph = phi i64 [ 1, %iter.check3647 ], [ %i.aeg, %vec.epilog.iter.check3649 ], [ %i.aer, %vec.epilog.middle.block3659 ]
  br label %.lr.ph1520

.lr.ph1520:                                       ; preds = %.lr.ph1520.preheader, %.lr.ph1520
  %indvars.iv1631 = phi i64 [ %indvars.iv.next1632, %.lr.ph1520 ], [ %indvars.iv1631.ph, %.lr.ph1520.preheader ] ; 2 uses
  %gep1781 = getelementptr [8 x i8], ptr %invariant.gep1780, i64 %indvars.iv1631 ; 2 uses
  %i.aew = load double, ptr %gep1781, align 8, !tbaa !109
  %i.aex = fmul double %i.aea, %i.aew
  store double %i.aex, ptr %gep1781, align 8, !tbaa !109
  %indvars.iv.next1632 = add nuw nsw i64 %indvars.iv1631, 1 ; 2 uses
  %exitcond1635.not = icmp eq i64 %indvars.iv.next1632, %wide.trip.count1634
  br i1 %exitcond1635.not, label %.loopexit, label %.lr.ph1520, !llvm.loop !23

bb.p:                                             ; preds = %bb.n
  %i.aey = load double, ptr %3, align 8, !tbaa !109 ; 5 uses
  %i.aez = load double, ptr %4, align 8, !tbaa !109 ; 2 uses
  %i.afa = fmul double %i.aey, %i.aez             ; 4 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.afc = load double, ptr %i.afb, align 8, !tbaa !109 ; 5 uses
  %i.afd = fmul double %i.aez, %i.afc             ; 4 uses
  %i.afe = load i32, ptr %1, align 4, !tbaa !107  ; 6 uses
  %.not14311515 = icmp slt i32 %i.afe, 1
  br i1 %.not14311515, label %.loopexit, label %.lr.ph1517

.lr.ph1517:                                       ; preds = %bb.p
  %i.aff = shl i32 %i.a, 1
  %i.afg = sext i32 %i.a to i64                   ; 2 uses
  %i.afh = sext i32 %i.aff to i64                 ; 2 uses
  %i.afi = add nuw i32 %i.afe, 1
  %wide.trip.count1629 = zext i32 %i.afi to i64   ; 2 uses
  %invariant.gep1776 = getelementptr [8 x i8], ptr %i.c, i64 %i.afg ; 4 uses
  %invariant.gep1778 = getelementptr [8 x i8], ptr %i.c, i64 %i.afh ; 4 uses
  %i.afj = zext nneg i32 %i.afe to i64            ; 2 uses
  %min.iters.check3601 = icmp ult i32 %i.afe, 12
  br i1 %min.iters.check3601, label %scalar.ph3600.preheader, label %vector.memcheck3602

vector.memcheck3602:                              ; preds = %.lr.ph1517
  %i.afk = or i64 %i.afg, %i.b
  %i.afl = shl nsw i64 %i.afk, 3                  ; 2 uses
  %i.afm = getelementptr i8, ptr %5, i64 %i.afl
  %i.afn = getelementptr i8, ptr %i.afm, i64 8
  %i.afo = shl nuw nsw i64 %wide.trip.count1629, 3 ; 2 uses
  %i.afp = getelementptr i8, ptr %5, i64 %i.afl
  %i.afq = getelementptr i8, ptr %i.afp, i64 %i.afo
  %i.afr = add nsw i64 %i.afh, %i.b
  %i.afs = shl nsw i64 %i.afr, 3                  ; 2 uses
  %i.aft = getelementptr i8, ptr %5, i64 %i.afs
  %i.afu = getelementptr i8, ptr %i.aft, i64 8
  %i.afv = getelementptr i8, ptr %5, i64 %i.afs
  %i.afw = getelementptr i8, ptr %i.afv, i64 %i.afo
  %bound03603 = icmp ult ptr %i.afn, %i.afw
  %bound13604 = icmp ult ptr %i.afu, %i.afq
  %found.conflict3605 = and i1 %bound03603, %bound13604
  br i1 %found.conflict3605, label %scalar.ph3600.preheader, label %vector.ph3606

vector.ph3606:                                    ; preds = %vector.memcheck3602
  %n.vec3607 = and i64 %i.afj, 2147483640         ; 3 uses
  %i.afx = or disjoint i64 %n.vec3607, 1
  %broadcast.splatinsert3608 = insertelement <4 x double> poison, double %i.afc, i64 0
  %broadcast.splat3609 = shufflevector <4 x double> %broadcast.splatinsert3608, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3610 = insertelement <4 x double> poison, double %i.aey, i64 0
  %broadcast.splat3611 = shufflevector <4 x double> %broadcast.splatinsert3610, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3612 = insertelement <4 x double> poison, double %i.afa, i64 0
  %broadcast.splat3613 = shufflevector <4 x double> %broadcast.splatinsert3612, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3614 = insertelement <4 x double> poison, double %i.afd, i64 0
  %broadcast.splat3615 = shufflevector <4 x double> %broadcast.splatinsert3614, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body3616

vector.body3616:                                  ; preds = %vector.body3616, %vector.ph3606
  %index3617 = phi i64 [ 0, %vector.ph3606 ], [ %index.next3624, %vector.body3616 ] ; 2 uses
  %i.afy = or disjoint i64 %index3617, 1          ; 2 uses
  %i.afz = getelementptr [8 x i8], ptr %invariant.gep1776, i64 %i.afy ; 3 uses
  %i.aga = getelementptr i8, ptr %i.afz, i64 32   ; 2 uses
  %wide.load3618 = load <4 x double>, ptr %i.afz, align 8, !tbaa !109, !alias.scope !115, !noalias !116 ; 2 uses
  %wide.load3619 = load <4 x double>, ptr %i.aga, align 8, !tbaa !109, !alias.scope !115, !noalias !116 ; 2 uses
  %i.agb = getelementptr [8 x i8], ptr %invariant.gep1778, i64 %i.afy ; 4 uses
  %i.agc = getelementptr i8, ptr %i.agb, i64 32   ; 3 uses
  %wide.load3620 = load <4 x double>, ptr %i.agb, align 8, !tbaa !109, !alias.scope !116
  %wide.load3621 = load <4 x double>, ptr %i.agc, align 8, !tbaa !109, !alias.scope !116
  %i.agd = fmul <4 x double> %broadcast.splat3609, %wide.load3620
  %i.age = fmul <4 x double> %broadcast.splat3609, %wide.load3621
  %i.agf = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3611, <4 x double> %wide.load3618, <4 x double> %i.agd)
  %i.agg = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat3611, <4 x double> %wide.load3619, <4 x double> %i.age)
  %i.agh = fneg <4 x double> %i.agf               ; 2 uses
  %i.agi = fneg <4 x double> %i.agg               ; 2 uses
  %i.agj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.agh, <4 x double> %broadcast.splat3613, <4 x double> %wide.load3618)
  %i.agk = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.agi, <4 x double> %broadcast.splat3613, <4 x double> %wide.load3619)
  store <4 x double> %i.agj, ptr %i.afz, align 8, !tbaa !109, !alias.scope !115, !noalias !116
  store <4 x double> %i.agk, ptr %i.aga, align 8, !tbaa !109, !alias.scope !115, !noalias !116
  %wide.load3622 = load <4 x double>, ptr %i.agb, align 8, !tbaa !109, !alias.scope !116
  %wide.load3623 = load <4 x double>, ptr %i.agc, align 8, !tbaa !109, !alias.scope !116
  %i.agl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.agh, <4 x double> %broadcast.splat3615, <4 x double> %wide.load3622)
  %i.agm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.agi, <4 x double> %broadcast.splat3615, <4 x double> %wide.load3623)
  store <4 x double> %i.agl, ptr %i.agb, align 8, !tbaa !109, !alias.scope !116
  store <4 x double> %i.agm, ptr %i.agc, align 8, !tbaa !109, !alias.scope !116
end_hunk_0
begin_hunk_1_@dlarfx_:bb.a
  %i.bwk = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.bwg, double %i.bwj)
  %i.bwl = getelementptr i8, ptr %i.bwe, i64 24   ; 2 uses
  %i.bwm = load double, ptr %i.bwl, align 8, !tbaa !109 ; 2 uses
  %i.bwn = tail call double @llvm.fmuladd.f64(double %i.gd, double %i.bwm, double %i.bwk)
  %i.bwo = fneg double %i.bwn                     ; 3 uses
  %i.bwp = tail call double @llvm.fmuladd.f64(double %i.bwo, double %i.fy, double %i.bwg)
  store double %i.bwp, ptr %i.bwf, align 8, !tbaa !109
  %i.bwq = tail call double @llvm.fmuladd.f64(double %i.bwo, double %i.gb, double %i.bwi)
  store double %i.bwq, ptr %i.bwh, align 8, !tbaa !109
  %i.bwr = tail call double @llvm.fmuladd.f64(double %i.bwo, double %i.ge, double %i.bwm)
  store double %i.bwr, ptr %i.bwl, align 8, !tbaa !109
  br label %.loopexit

.loopexit.loopexit3726.unr-lcssa:                 ; preds = %.lr.ph1481
  %lcmp.mod3755.not = icmp eq i64 %xtraiter3754, 0
  br i1 %lcmp.mod3755.not, label %.loopexit, label %.lr.ph1481.epil.preheader

.lr.ph1481.epil.preheader:                        ; preds = %.loopexit.loopexit3726.unr-lcssa, %.lr.ph1481.ph
  %store_forwarded3672.epil.init = phi double [ %load_initial3671, %.lr.ph1481.ph ], [ %i.md, %.loopexit.loopexit3726.unr-lcssa ] ; 2 uses
  %indvars.iv1566.epil.init = phi i64 [ 1, %.lr.ph1481.ph ], [ %indvars.iv.next1567.1, %.loopexit.loopexit3726.unr-lcssa ]
  %lcmp.mod3756 = trunc i32 %i.iw to i1
  tail call void @llvm.assume(i1 %lcmp.mod3756)
  %i.bws = mul nuw nsw i64 %indvars.iv1566.epil.init, %i.ix
  %i.bwt = getelementptr [8 x i8], ptr %i.c, i64 %i.bws ; 4 uses
  %i.bwu = getelementptr i8, ptr %i.bwt, i64 8    ; 2 uses
  %i.bwv = load double, ptr %i.bwu, align 8, !tbaa !109 ; 2 uses
  %i.bww = getelementptr i8, ptr %i.bwt, i64 16   ; 2 uses
  %i.bwx = load double, ptr %i.bww, align 8, !tbaa !109 ; 2 uses
  %i.bwy = fmul double %i.kp, %i.bwx
  %i.bwz = tail call double @llvm.fmuladd.f64(double %i.ko, double %i.bwv, double %i.bwy)
  %i.bxa = getelementptr i8, ptr %i.bwt, i64 24
  %i.bxb = tail call double @llvm.fmuladd.f64(double %i.kq, double %store_forwarded3672.epil.init, double %i.bwz)
  %i.bxc = getelementptr i8, ptr %i.bwt, i64 32   ; 2 uses
  %i.bxd = load double, ptr %i.bxc, align 8, !tbaa !109 ; 2 uses
  %i.bxe = tail call double @llvm.fmuladd.f64(double %i.kr, double %i.bxd, double %i.bxb)
  %i.bxf = fneg double %i.bxe                     ; 4 uses
  %i.bxg = tail call double @llvm.fmuladd.f64(double %i.bxf, double %i.kk, double %i.bwv)
  store double %i.bxg, ptr %i.bwu, align 8, !tbaa !109
  %i.bxh = tail call double @llvm.fmuladd.f64(double %i.bxf, double %i.kl, double %i.bwx)
  store double %i.bxh, ptr %i.bww, align 8, !tbaa !109
  %i.bxi = tail call double @llvm.fmuladd.f64(double %i.bxf, double %i.km, double %store_forwarded3672.epil.init)
  store double %i.bxi, ptr %i.bxa, align 8, !tbaa !109
  %i.bxj = tail call double @llvm.fmuladd.f64(double %i.bxf, double %i.kn, double %i.bxd)
  store double %i.bxj, ptr %i.bxc, align 8, !tbaa !109
  br label %.loopexit

.loopexit.loopexit3727.unr-lcssa:                 ; preds = %.lr.ph1481.lver.orig
  %lcmp.mod3750.not = icmp eq i64 %xtraiter3749, 0
  br i1 %lcmp.mod3750.not, label %.loopexit, label %.lr.ph1481.lver.orig.epil.preheader

.lr.ph1481.lver.orig.epil.preheader:              ; preds = %.loopexit.loopexit3727.unr-lcssa, %.lr.ph1481.lver.orig.preheader
  %indvars.iv1566.lver.orig.epil.init = phi i64 [ 1, %.lr.ph1481.lver.orig.preheader ], [ %indvars.iv.next1567.lver.orig.1, %.loopexit.loopexit3727.unr-lcssa ]
  %lcmp.mod3751 = trunc i32 %i.iw to i1
  tail call void @llvm.assume(i1 %lcmp.mod3751)
  %i.bxk = mul nsw i64 %indvars.iv1566.lver.orig.epil.init, %i.ix
  %i.bxl = getelementptr [8 x i8], ptr %i.c, i64 %i.bxk
  %i.bxm = getelementptr i8, ptr %i.bxl, i64 8    ; 2 uses
  %i.bxn = load <4 x double>, ptr %i.bxm, align 8, !tbaa !109 ; 5 uses
  %foldExtExtBinop.epil = fmul <4 x double> %i.is, %i.bxn
  %i.bxo = extractelement <4 x double> %foldExtExtBinop.epil, i64 1
  %i.bxp = extractelement <4 x double> %i.is, i64 0
  %i.bxq = extractelement <4 x double> %i.bxn, i64 0
  %i.bxr = tail call double @llvm.fmuladd.f64(double %i.bxp, double %i.bxq, double %i.bxo)
  %i.bxs = extractelement <4 x double> %i.is, i64 2
  %i.bxt = extractelement <4 x double> %i.bxn, i64 2
  %i.bxu = tail call double @llvm.fmuladd.f64(double %i.bxs, double %i.bxt, double %i.bxr)
  %i.bxv = extractelement <4 x double> %i.is, i64 3
  %i.bxw = extractelement <4 x double> %i.bxn, i64 3
  %i.bxx = tail call double @llvm.fmuladd.f64(double %i.bxv, double %i.bxw, double %i.bxu)
  %i.bxy = fneg double %i.bxx
  %i.bxz = insertelement <4 x double> poison, double %i.bxy, i64 0
  %i.bya = shufflevector <4 x double> %i.bxz, <4 x double> poison, <4 x i32> zeroinitializer
  %i.byb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bya, <4 x double> %i.iv, <4 x double> %i.bxn)
  store <4 x double> %i.byb, ptr %i.bxm, align 8, !tbaa !109
  br label %.loopexit

.loopexit.loopexit3728.unr-lcssa:                 ; preds = %.lr.ph1478
  %lcmp.mod3745.not = icmp eq i64 %xtraiter3744, 0
  br i1 %lcmp.mod3745.not, label %.loopexit, label %.lr.ph1478.epil.preheader

.lr.ph1478.epil.preheader:                        ; preds = %.loopexit.loopexit3728.unr-lcssa, %.lr.ph1478.ph
  %store_forwarded3677.epil.init = phi double [ %load_initial3676, %.lr.ph1478.ph ], [ %i.qj, %.loopexit.loopexit3728.unr-lcssa ] ; 2 uses
  %indvars.iv1561.epil.init = phi i64 [ 1, %.lr.ph1478.ph ], [ %indvars.iv.next1562.1, %.loopexit.loopexit3728.unr-lcssa ]
  %lcmp.mod3746 = trunc i32 %i.mm to i1
  tail call void @llvm.assume(i1 %lcmp.mod3746)
  %i.byc = mul nuw nsw i64 %indvars.iv1561.epil.init, %i.mn
  %i.byd = getelementptr [8 x i8], ptr %i.c, i64 %i.byc ; 5 uses
  %i.bye = getelementptr i8, ptr %i.byd, i64 8    ; 2 uses
  %i.byf = load double, ptr %i.bye, align 8, !tbaa !109 ; 2 uses
  %i.byg = getelementptr i8, ptr %i.byd, i64 16   ; 2 uses
  %i.byh = load double, ptr %i.byg, align 8, !tbaa !109 ; 2 uses
  %i.byi = fmul double %i.on, %i.byh
  %i.byj = tail call double @llvm.fmuladd.f64(double %i.om, double %i.byf, double %i.byi)
  %i.byk = getelementptr i8, ptr %i.byd, i64 24   ; 2 uses
  %i.byl = load double, ptr %i.byk, align 8, !tbaa !109 ; 2 uses
  %i.bym = tail call double @llvm.fmuladd.f64(double %i.oo, double %i.byl, double %i.byj)
  %i.byn = getelementptr i8, ptr %i.byd, i64 32
  %i.byo = tail call double @llvm.fmuladd.f64(double %i.op, double %store_forwarded3677.epil.init, double %i.bym)
  %i.byp = getelementptr i8, ptr %i.byd, i64 40   ; 2 uses
  %i.byq = load double, ptr %i.byp, align 8, !tbaa !109 ; 2 uses
  %i.byr = tail call double @llvm.fmuladd.f64(double %i.mk, double %i.byq, double %i.byo)
  %i.bys = fneg double %i.byr                     ; 5 uses
  %i.byt = tail call double @llvm.fmuladd.f64(double %i.bys, double %i.oi, double %i.byf)
  store double %i.byt, ptr %i.bye, align 8, !tbaa !109
  %i.byu = tail call double @llvm.fmuladd.f64(double %i.bys, double %i.oj, double %i.byh)
  store double %i.byu, ptr %i.byg, align 8, !tbaa !109
  %i.byv = tail call double @llvm.fmuladd.f64(double %i.bys, double %i.ok, double %i.byl)
  store double %i.byv, ptr %i.byk, align 8, !tbaa !109
  %i.byw = tail call double @llvm.fmuladd.f64(double %i.bys, double %i.ol, double %store_forwarded3677.epil.init)
  store double %i.byw, ptr %i.byn, align 8, !tbaa !109
  %i.byx = tail call double @llvm.fmuladd.f64(double %i.bys, double %i.ml, double %i.byq)
  store double %i.byx, ptr %i.byp, align 8, !tbaa !109
  br label %.loopexit

.loopexit.loopexit3729.unr-lcssa:                 ; preds = %.lr.ph1478.lver.orig
  %lcmp.mod3740.not = icmp eq i64 %xtraiter3739, 0
  br i1 %lcmp.mod3740.not, label %.loopexit, label %.lr.ph1478.lver.orig.epil.preheader

.lr.ph1478.lver.orig.epil.preheader:              ; preds = %.loopexit.loopexit3729.unr-lcssa, %.lr.ph1478.lver.orig.preheader
  %indvars.iv1561.lver.orig.epil.init = phi i64 [ 1, %.lr.ph1478.lver.orig.preheader ], [ %indvars.iv.next1562.lver.orig.1, %.loopexit.loopexit3729.unr-lcssa ]
  %lcmp.mod3741 = trunc i32 %i.mm to i1
  tail call void @llvm.assume(i1 %lcmp.mod3741)
  %i.byy = mul nsw i64 %indvars.iv1561.lver.orig.epil.init, %i.mn
  %i.byz = getelementptr [8 x i8], ptr %i.c, i64 %i.byy ; 2 uses
  %i.bza = getelementptr i8, ptr %i.byz, i64 8    ; 2 uses
  %i.bzb = getelementptr i8, ptr %i.byz, i64 40   ; 2 uses
  %i.bzc = load double, ptr %i.bzb, align 8, !tbaa !109 ; 2 uses
  %i.bzd = load <4 x double>, ptr %i.bza, align 8, !tbaa !109 ; 5 uses
  %foldExtExtBinop3694.epil = fmul <4 x double> %i.mf, %i.bzd
  %i.bze = extractelement <4 x double> %foldExtExtBinop3694.epil, i64 1
  %i.bzf = extractelement <4 x double> %i.mf, i64 0
  %i.bzg = extractelement <4 x double> %i.bzd, i64 0
  %i.bzh = tail call double @llvm.fmuladd.f64(double %i.bzf, double %i.bzg, double %i.bze)
  %i.bzi = extractelement <4 x double> %i.mf, i64 2
  %i.bzj = extractelement <4 x double> %i.bzd, i64 2
  %i.bzk = tail call double @llvm.fmuladd.f64(double %i.bzi, double %i.bzj, double %i.bzh)
  %i.bzl = extractelement <4 x double> %i.mf, i64 3
  %i.bzm = extractelement <4 x double> %i.bzd, i64 3
  %i.bzn = tail call double @llvm.fmuladd.f64(double %i.bzl, double %i.bzm, double %i.bzk)
  %i.bzo = tail call double @llvm.fmuladd.f64(double %i.mk, double %i.bzc, double %i.bzn)
  %i.bzp = fneg double %i.bzo                     ; 2 uses
  %i.bzq = insertelement <4 x double> poison, double %i.bzp, i64 0
  %i.bzr = shufflevector <4 x double> %i.bzq, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bzs = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bzr, <4 x double> %i.mi, <4 x double> %i.bzd)
  store <4 x double> %i.bzs, ptr %i.bza, align 8, !tbaa !109
  %i.bzt = tail call double @llvm.fmuladd.f64(double %i.bzp, double %i.ml, double %i.bzc)
  store double %i.bzt, ptr %i.bzb, align 8, !tbaa !109
  br label %.loopexit

.loopexit.loopexit3730.unr-lcssa:                 ; preds = %.lr.ph1475
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph1475.epil.preheader

.lr.ph1475.epil.preheader:                        ; preds = %.loopexit.loopexit3730.unr-lcssa, %.lr.ph1475.ph
  %store_forwarded3682.epil.init = phi double [ %load_initial3681, %.lr.ph1475.ph ], [ %i.tu, %.loopexit.loopexit3730.unr-lcssa ] ; 2 uses
  %indvars.iv1556.epil.init = phi i64 [ 1, %.lr.ph1475.ph ], [ %indvars.iv.next1557.1, %.loopexit.loopexit3730.unr-lcssa ]
  %lcmp.mod3738 = trunc i32 %i.qv to i1
  tail call void @llvm.assume(i1 %lcmp.mod3738)
  %i.bzu = mul nuw nsw i64 %indvars.iv1556.epil.init, %i.qw
  %i.bzv = getelementptr [8 x i8], ptr %i.c, i64 %i.bzu ; 3 uses
  %i.bzw = getelementptr i8, ptr %i.bzv, i64 8    ; 2 uses
  %i.bzx = getelementptr i8, ptr %i.bzv, i64 40
  %i.bzy = getelementptr i8, ptr %i.bzv, i64 48   ; 2 uses
  %i.bzz = load double, ptr %i.bzy, align 8, !tbaa !109 ; 2 uses
  %i.caa = load <4 x double>, ptr %i.bzw, align 8, !tbaa !109 ; 5 uses
  %foldExtExtBinop3698.epil = fmul <4 x double> %i.ql, %i.caa
  %i.cab = extractelement <4 x double> %foldExtExtBinop3698.epil, i64 1
  %i.cac = extractelement <4 x double> %i.caa, i64 0
  %i.cad = tail call double @llvm.fmuladd.f64(double %i.ry, double %i.cac, double %i.cab)
  %i.cae = extractelement <4 x double> %i.caa, i64 2
  %i.caf = tail call double @llvm.fmuladd.f64(double %i.rz, double %i.cae, double %i.cad)
  %i.cag = extractelement <4 x double> %i.caa, i64 3
  %i.cah = tail call double @llvm.fmuladd.f64(double %i.sa, double %i.cag, double %i.caf)
  %i.cai = tail call double @llvm.fmuladd.f64(double %i.qq, double %store_forwarded3682.epil.init, double %i.cah)
  %i.caj = tail call double @llvm.fmuladd.f64(double %i.qt, double %i.bzz, double %i.cai)
  %i.cak = fneg double %i.caj                     ; 3 uses
  %i.cal = insertelement <4 x double> poison, double %i.cak, i64 0
  %i.cam = shufflevector <4 x double> %i.cal, <4 x double> poison, <4 x i32> zeroinitializer
  %i.can = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cam, <4 x double> %i.qo, <4 x double> %i.caa)
  store <4 x double> %i.can, ptr %i.bzw, align 8, !tbaa !109
  %i.cao = tail call double @llvm.fmuladd.f64(double %i.cak, double %i.qr, double %store_forwarded3682.epil.init)
  store double %i.cao, ptr %i.bzx, align 8, !tbaa !109
  %i.cap = tail call double @llvm.fmuladd.f64(double %i.cak, double %i.qu, double %i.bzz)
  store double %i.cap, ptr %i.bzy, align 8, !tbaa !109
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph1466, %.lr.ph1469.lver.orig, %.lr.ph1469, %.lr.ph1472.lver.orig, %.lr.ph1472, %.lr.ph1475.lver.orig, %.lr.ph1475.epil.preheader, %.loopexit.loopexit3730.unr-lcssa, %.lr.ph1478.lver.orig.epil.preheader, %.loopexit.loopexit3729.unr-lcssa, %.lr.ph1478.epil.preheader, %.loopexit.loopexit3728.unr-lcssa, %.lr.ph1481.lver.orig.epil.preheader, %.loopexit.loopexit3727.unr-lcssa, %.lr.ph1481.epil.preheader, %.loopexit.loopexit3726.unr-lcssa, %.lr.ph1484.lver.orig.epil.preheader, %.loopexit.loopexit3725.unr-lcssa, %.lr.ph1484.epil.preheader, %.loopexit.loopexit3724.unr-lcssa, %.loopexit.loopexit3723.unr-lcssa, %.lr.ph1487.lver.orig.epil, %.loopexit.loopexit3722.unr-lcssa, %.lr.ph1487.epil, %.lr.ph1490.prol.loopexit, %.lr.ph1490, %scalar.ph, %scalar.ph2410, %scalar.ph2744, %scalar.ph3010, %scalar.ph3216, %scalar.ph3370, %scalar.ph3480, %scalar.ph3554.prol.loopexit, %scalar.ph3554, %scalar.ph3600.prol.loopexit, %scalar.ph3600, %.lr.ph1520, %middle.block, %vec.epilog.middle.block, %middle.block2247, %middle.block2614, %middle.block2910, %middle.block3142, %middle.block3318, %middle.block3446, %middle.block3534, %middle.block3590, %middle.block3625, %middle.block3643, %vec.epilog.middle.block3659, %.loopexit.sink.split, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.a
  ret void
}

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dlarf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !110, !111, !112}
!9 = distinct !{!9, !110, !111, !112}
!10 = distinct !{!10, !114}
!11 = distinct !{!11, !110, !111}
!12 = distinct !{!12, !110}
!13 = distinct !{!13, !110}
!14 = distinct !{!14, !110}
!15 = distinct !{!15, !110}
!16 = distinct !{!16, !110}
!17 = distinct !{!17, !110}
!18 = distinct !{!18, !110}
!19 = distinct !{!19, !110}
!20 = distinct !{!20, !110}
!21 = distinct !{!21, !110, !111, !112}
!22 = distinct !{!22, !110, !111, !112}
!23 = distinct !{!23, !110, !112, !111}
!24 = distinct !{!24, i1 false, !"LVerDomain"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !110, !111, !112}
!28 = distinct !{!28, !110, !111}
!29 = distinct !{!29, i1 false, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}
!33 = distinct !{!33, !110, !111, !112}
!34 = distinct !{!34, !110, !111}
!35 = distinct !{!35, i1 false, !"LVerDomain"}
!36 = distinct !{!36, !35}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !35}
!39 = distinct !{!39, !35}
!40 = distinct !{!40, !110, !111, !112}
!41 = distinct !{!41, !110, !111}
!42 = distinct !{!42, i1 false, !"LVerDomain"}
!43 = distinct !{!43, !42}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !42}
!46 = distinct !{!46, !42}
!47 = distinct !{!47, !42}
!48 = distinct !{!48, !110, !111, !112}
!49 = distinct !{!49, !110, !111}
!50 = distinct !{!50, i1 false, !"LVerDomain"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = distinct !{!53, !50}
!54 = distinct !{!54, !50}
!55 = distinct !{!55, !50}
!56 = distinct !{!56, !50}
!57 = distinct !{!57, !110, !111, !112}
!58 = distinct !{!58, !110, !111}
!59 = distinct !{!59, i1 false, !"LVerDomain"}
!60 = distinct !{!60, !59}
!61 = distinct !{!61, !59}
!62 = distinct !{!62, !59}
!63 = distinct !{!63, !59}
!64 = distinct !{!64, !59}
!65 = distinct !{!65, !59}
!66 = distinct !{!66, !59}
!67 = distinct !{!67, !110, !111, !112}
!68 = distinct !{!68, !110, !111}
!69 = distinct !{!69, i1 false, !"LVerDomain"}
!70 = distinct !{!70, !69}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !69}
!73 = distinct !{!73, !69}
!74 = distinct !{!74, !69}
!75 = distinct !{!75, !69}
!76 = distinct !{!76, !69}
!77 = distinct !{!77, !69}
!78 = distinct !{!78, !110, !111, !112}
!79 = distinct !{!79, !110, !111}
!80 = distinct !{!80, i1 false, !"LVerDomain"}
!81 = distinct !{!81, !80}
!82 = distinct !{!82, !80}
!83 = distinct !{!83, !80}
!84 = distinct !{!84, !80}
!85 = distinct !{!85, !80}
!86 = distinct !{!86, !80}
!87 = distinct !{!87, !80}
!88 = distinct !{!88, !80}
!89 = distinct !{!89, !80}
!90 = distinct !{!90, !110, !111, !112}
!91 = distinct !{!91, !110, !111}
!92 = distinct !{!92, i1 false, !"LVerDomain"}
!93 = distinct !{!93, !92}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !92}
!96 = distinct !{!96, !92}
!97 = distinct !{!97, !92}
!98 = distinct !{!98, !92}
!99 = distinct !{!99, !92}
!100 = distinct !{!100, !92}
!101 = distinct !{!101, !92}
!102 = distinct !{!102, !92}
!103 = distinct !{!103, !110, !111, !112}
!104 = distinct !{!104, !110, !111}
!105 = distinct !{!105, !114}
!106 = distinct !{!106, !114}
!107 = !{!5, !5, i64 0}
!108 = !{!"double", !4, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!"llvm.loop.mustprogress"}
!111 = !{!"llvm.loop.isvectorized", i32 1}
!112 = !{!"llvm.loop.unroll.runtime.disable"}
!113 = !{!"branch_weights", i32 4, i32 12}
!114 = !{!"llvm.loop.unroll.disable"}
!115 = !{!25}
!116 = !{!26}
!117 = !{!30}
!118 = !{!32, !31}
!119 = !{!32}
!120 = !{!31}
!121 = !{!36}
!122 = !{!39, !38, !37}
!123 = !{!39}
!124 = !{!38, !37}
!125 = !{!38}
!126 = !{!37}
!127 = !{!43}
!128 = !{!47, !46, !45, !44}
!129 = !{!47}
!130 = !{!46, !45, !44}
!131 = !{!46}
!132 = !{!45, !44}
!133 = !{!45}
!134 = !{!44}
!135 = !{!51}
!136 = !{!56, !55, !54, !53, !52}
!137 = !{!56}
!138 = !{!55, !54, !53, !52}
!139 = !{!55}
!140 = !{!54, !53, !52}
!141 = !{!54}
!142 = !{!53, !52}
!143 = !{!53}
!144 = !{!52}
!145 = !{!60}
!146 = !{!66, !65, !64, !63, !62, !61}
!147 = !{!66}
!148 = !{!65, !64, !63, !62, !61}
!149 = !{!65}
!150 = !{!64, !63, !62, !61}
!151 = !{!64}
!152 = !{!63, !62, !61}
!153 = !{!63}
!154 = !{!62, !61}
!155 = !{!62}
!156 = !{!61}
!157 = !{!70}
!158 = !{!77, !76, !75, !74, !73, !72, !71}
!159 = !{!77}
!160 = !{!76, !75, !74, !73, !72, !71}
!161 = !{!76}
!162 = !{!75, !74, !73, !72, !71}
!163 = !{!75}
!164 = !{!74, !73, !72, !71}
!165 = !{!74}
!166 = !{!73, !72, !71}
!167 = !{!73}
!168 = !{!72, !71}
!169 = !{!72}
!170 = !{!71}
!171 = !{!81}
!172 = !{!89, !88, !87, !86, !85, !84, !83, !82}
!173 = !{!89}
!174 = !{!88, !87, !86, !85, !84, !83, !82}
!175 = !{!88}
!176 = !{!87, !86, !85, !84, !83, !82}
!177 = !{!87}
!178 = !{!86, !85, !84, !83, !82}
!179 = !{!86}
!180 = !{!85, !84, !83, !82}
!181 = !{!85}
!182 = !{!84, !83, !82}
!183 = !{!84}
!184 = !{!83, !82}
!185 = !{!83}
!186 = !{!82}
end_hunk_1
