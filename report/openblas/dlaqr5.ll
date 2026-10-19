Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaqr5?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dlaqr5_:bb.a
  %i.wi = add nsw i32 %i.vu, -1
  %i.wj = icmp eq i32 %i.wh, %i.wi
  br i1 %i.wj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.wk = mul i32 %i.vu, %i.bo
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.wl
  %i.wn = add nsw i32 %i.wg, -1
  %i.wo = sext i32 %i.wn to i64                   ; 2 uses
  %i.wp = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.wo
  %i.wq = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.wo
  %i.wr = sext i32 %i.wg to i64                   ; 2 uses
  %i.ws = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.wr
  %i.wt = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.wr
  %i.wu = mul nsw i64 %indvars.iv1602, %i.bw
  %i.wv = getelementptr [8 x i8], ptr %i.s, i64 %i.wu ; 2 uses
  %i.ww = getelementptr i8, ptr %i.wv, i64 8      ; 3 uses
  call void @dlaqr1_(ptr noundef nonnull @c__3, ptr noundef %i.wm, ptr noundef nonnull %10, ptr noundef nonnull %i.wp, ptr noundef nonnull %i.wq, ptr noundef nonnull %i.ws, ptr noundef nonnull %i.wt, ptr noundef %i.ww) #4
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !72
  store double %i.wx, ptr %i.c, align 8, !tbaa !72
  %i.wy = getelementptr i8, ptr %i.wv, i64 16
  call void @dlarfg_(ptr noundef nonnull @c__3, ptr noundef nonnull %i.c, ptr noundef %i.wy, ptr noundef nonnull @c__1, ptr noundef nonnull %i.ww) #4
  %.pre1647 = add nsw i32 %i.wh, 3
  br label %bb.ba

bb.at:                                            ; preds = %bb.ar
  %i.wz = mul nsw i64 %indvars.iv1602, %i.bw
  %i.xa = getelementptr [8 x i8], ptr %i.s, i64 %i.wz ; 3 uses
  %i.xb = getelementptr i8, ptr %i.xa, i64 8      ; 3 uses
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !72
  %i.xd = getelementptr i8, ptr %i.xa, i64 24     ; 4 uses
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !72
  %i.xf = fmul double %i.xc, %i.xe
  %i.xg = add nsw i32 %i.wh, 3                    ; 6 uses
  %i.xh = add i32 %i.wg, %.013681550              ; 3 uses
  %i.xi = mul nsw i32 %i.xh, %i.k                 ; 2 uses
  %i.xj = add nsw i32 %i.xg, %i.xi
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.xk ; 4 uses
  %i.xm = load double, ptr %i.xl, align 8, !tbaa !72
  %i.xn = fneg double %i.xm
  %i.xo = fmul double %i.xf, %i.xn                ; 3 uses
  %i.xp = mul nsw i32 %i.wh, %i.k                 ; 4 uses
  %i.xq = add nsw i32 %i.xg, %i.xp
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.xr ; 6 uses
  store double %i.xo, ptr %i.xs, align 8, !tbaa !72
  %i.xt = getelementptr i8, ptr %i.xa, i64 16     ; 3 uses
  %i.xu = load double, ptr %i.xt, align 8, !tbaa !72
  %i.xv = fmul double %i.xo, %i.xu
  %i.xw = add nsw i32 %i.wh, 1                    ; 3 uses
  %i.xx = mul nsw i32 %i.xw, %i.k                 ; 2 uses
  %i.xy = add nsw i32 %i.xx, %i.xg
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.xz ; 2 uses
  store double %i.xv, ptr %i.ya, align 8, !tbaa !72
  %i.yb = load double, ptr %i.xd, align 8, !tbaa !72
  %i.yc = load double, ptr %i.xl, align 8, !tbaa !72
  %i.yd = call double @llvm.fmuladd.f64(double %i.xo, double %i.yb, double %i.yc)
  store double %i.yd, ptr %i.xl, align 8, !tbaa !72
  %i.ye = add nsw i32 %i.xw, %i.xp
  %i.yf = sext i32 %i.ye to i64
  %i.yg = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.yf ; 5 uses
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !72
  store double %i.yh, ptr %i.a, align 8, !tbaa !72
  %i.yi = add nsw i32 %i.xp, %i.xh
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.yj ; 5 uses
  %i.yl = load double, ptr %i.yk, align 8, !tbaa !72
  store double %i.yl, ptr %i.xt, align 8, !tbaa !72
  %i.ym = load double, ptr %i.xs, align 8, !tbaa !72
  store double %i.ym, ptr %i.xd, align 8, !tbaa !72
  call void @dlarfg_(ptr noundef nonnull @c__3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.xt, ptr noundef nonnull @c__1, ptr noundef nonnull %i.xb) #4
  %i.yn = load double, ptr %i.xs, align 8, !tbaa !72
  %i.yo = fcmp une double %i.yn, 0.000000e+00
  br i1 %i.yo, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.yp = load double, ptr %i.ya, align 8, !tbaa !72
  %i.yq = fcmp une double %i.yp, 0.000000e+00
  br i1 %i.yq, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.yr = load double, ptr %i.xl, align 8, !tbaa !72
  %i.ys = fcmp oeq double %i.yr, 0.000000e+00
  br i1 %i.ys, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.yt = load double, ptr %i.a, align 8, !tbaa !72
  store double %i.yt, ptr %i.yg, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.yk, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.xs, align 8, !tbaa !72
  br label %bb.ba

bb.ax:                                            ; preds = %bb.av
  %i.yu = add nsw i32 %i.xx, %i.xw
  %i.yv = sext i32 %i.yu to i64
  %i.yw = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.yv ; 2 uses
  %i.yx = add nsw i32 %i.wg, -1
  %i.yy = sext i32 %i.yx to i64                   ; 2 uses
  %i.yz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.yy
  %i.za = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.yy
  %i.zb = sext i32 %i.wg to i64                   ; 2 uses
  %i.zc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.zb
  %i.zd = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.zb
  call void @dlaqr1_(ptr noundef nonnull @c__3, ptr noundef %i.yw, ptr noundef nonnull %10, ptr noundef nonnull %i.yz, ptr noundef nonnull %i.za, ptr noundef nonnull %i.zc, ptr noundef nonnull %i.zd, ptr noundef nonnull %i.e) #4
  %i.ze = load double, ptr %i.e, align 16, !tbaa !72
  store double %i.ze, ptr %i.c, align 8, !tbaa !72
  call void @dlarfg_(ptr noundef nonnull @c__3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bp, ptr noundef nonnull @c__1, ptr noundef nonnull %i.e) #4
  %i.zf = load double, ptr %i.yg, align 8, !tbaa !72 ; 2 uses
  %i.zg = load <2 x double>, ptr %i.e, align 16, !tbaa !72 ; 3 uses
  %i.zh = load double, ptr %i.yk, align 8, !tbaa !72 ; 2 uses
  %i.zi = extractelement <2 x double> %i.zg, i64 1 ; 2 uses
  %i.zj = call double @llvm.fmuladd.f64(double %i.zi, double %i.zh, double %i.zf)
  %i.zk = extractelement <2 x double> %i.zg, i64 0
  %i.zl = fmul double %i.zk, %i.zj                ; 3 uses
  %i.zm = fneg double %i.zl
  %i.zn = call double @llvm.fmuladd.f64(double %i.zm, double %i.zi, double %i.zh) ; 3 uses
  %i.zo = fcmp oge double %i.zn, 0.000000e+00
  %i.zp = fneg double %i.zn
  %i.zq = select i1 %i.zo, double %i.zn, double %i.zp
  %i.zr = load double, ptr %i.bq, align 16, !tbaa !72 ; 2 uses
  %i.zs = fmul double %i.zr, %i.zl                ; 3 uses
  %i.zt = fcmp oge double %i.zs, 0.000000e+00
  %i.zu = fneg double %i.zs
  %i.zv = select i1 %i.zt, double %i.zs, double %i.zu
  %i.zw = fadd double %i.zq, %i.zv
  %i.zx = add nsw i32 %i.xp, %i.wh
  %i.zy = sext i32 %i.zx to i64
  %i.zz = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.zy
  %i.aaa = load double, ptr %i.zz, align 8, !tbaa !72 ; 3 uses
  %i.aab = fcmp oge double %i.aaa, 0.000000e+00
  %i.aac = fneg double %i.aaa
  %i.aad = select i1 %i.aab, double %i.aaa, double %i.aac
  %i.aae = load double, ptr %i.yw, align 8, !tbaa !72 ; 3 uses
  %i.aaf = fcmp oge double %i.aae, 0.000000e+00
  %i.aag = fneg double %i.aae
  %i.aah = select i1 %i.aaf, double %i.aae, double %i.aag
  %i.aai = fadd double %i.aad, %i.aah
  %i.aaj = add nsw i32 %i.xi, %i.xh
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aak
  %i.aam = load double, ptr %i.aal, align 8, !tbaa !72 ; 3 uses
  %i.aan = fcmp oge double %i.aam, 0.000000e+00
  %i.aao = fneg double %i.aam
  %i.aap = select i1 %i.aan, double %i.aam, double %i.aao
  %i.aaq = fadd double %i.aai, %i.aap
  %i.aar = fmul double %i.at, %i.aaq
  %i.aas = fcmp ogt double %i.zw, %i.aar
  br i1 %i.aas, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.aat = load double, ptr %i.a, align 8, !tbaa !72
  store double %i.aat, ptr %i.yg, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.yk, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.xs, align 8, !tbaa !72
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.aau = fsub double %i.zf, %i.zl
  store double %i.aau, ptr %i.yg, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.yk, align 8, !tbaa !72
  store double 0.000000e+00, ptr %i.xs, align 8, !tbaa !72
  store <2 x double> %i.zg, ptr %i.xb, align 8, !tbaa !72
  store double %i.zr, ptr %i.xd, align 8, !tbaa !72
  br label %bb.ba

bb.ba:                                            ; preds = %bb.aw, %bb.az, %bb.ay, %bb.as
  %.pre-phi = phi i32 [ %i.xg, %bb.aw ], [ %i.xg, %bb.az ], [ %i.xg, %bb.ay ], [ %.pre1647, %bb.as ] ; 3 uses
  %i.aav = load i32, ptr %5, align 4, !tbaa !70   ; 11 uses
  %i.aaw = call i32 @llvm.smin.i32(i32 %i.aav, i32 %.pre-phi) ; 2 uses
  %.not14701513 = icmp sgt i32 %.013851482, %i.aaw
  %.pre1648 = mul nsw i64 %indvars.iv1602, %i.bw  ; 2 uses
  br i1 %.not14701513, label %.._crit_edge1517_crit_edge, label %.lr.ph1516

.._crit_edge1517_crit_edge:                       ; preds = %bb.ba
  %.pre1650 = add nsw i32 %i.wh, 1                ; 2 uses
  %.pre1652 = mul nsw i32 %.pre1650, %i.k
  %.pre1654 = add i32 %i.wg, %.013681550
  br label %._crit_edge1517

.lr.ph1516:                                       ; preds = %bb.ba
  %i.aax = getelementptr [8 x i8], ptr %i.s, i64 %.pre1648 ; 3 uses
  %i.aay = getelementptr i8, ptr %i.aax, i64 8    ; 2 uses
  %i.aaz = add nsw i32 %i.wh, 1                   ; 3 uses
  %i.aba = mul nsw i32 %i.aaz, %i.k               ; 3 uses
  %i.abb = getelementptr i8, ptr %i.aax, i64 16   ; 3 uses
  %i.abc = add i32 %i.wg, %.013681550             ; 3 uses
  %i.abd = mul nsw i32 %i.abc, %i.k
  %i.abe = getelementptr i8, ptr %i.aax, i64 24   ; 3 uses
  %i.abf = mul nsw i32 %.pre-phi, %i.k
  %i.abg = sext i32 %i.aba to i64
  %i.abh = sext i32 %i.abd to i64
  %i.abi = sext i32 %i.abf to i64
  %i.abj = sext i32 %i.aaw to i64                 ; 3 uses
  %invariant.gep1715 = getelementptr [8 x i8], ptr %i.m, i64 %i.abg ; 2 uses
  %invariant.gep1717 = getelementptr [8 x i8], ptr %i.m, i64 %i.abh ; 2 uses
  %invariant.gep1719 = getelementptr [8 x i8], ptr %i.m, i64 %i.abi ; 2 uses
  %.reass2218 = add i64 %i.abj, %invariant.op     ; 3 uses
  %min.iters.check2004 = icmp ult i64 %.reass2218, 12
  br i1 %min.iters.check2004, label %scalar.ph2003.preheader, label %vector.memcheck1954

vector.memcheck1954:                              ; preds = %.lr.ph1516
  %smax1961 = call i64 @llvm.smax.i64(i64 %i.abj, i64 %i.eg) ; 2 uses
  %i.abk = add i64 %smax1961, %i.l                ; 2 uses
  %i.abl = add i64 %i.abk, %i.vx
  %i.abm = shl nsw i64 %i.abl, 3
  %scevgep1962 = getelementptr i8, ptr %scevgep1960.a, i64 %i.abm ; 3 uses
  %i.abn = add i64 %i.abk, %i.wa
  %i.abo = shl nsw i64 %i.abn, 3
  %scevgep1967 = getelementptr i8, ptr %scevgep1966.a, i64 %i.abo ; 3 uses
  %i.abp = add i64 %smax1961, %i.l
  %i.abq = add i64 %i.abp, %i.wd
  %i.abr = shl nsw i64 %i.abq, 3
  %scevgep1972 = getelementptr i8, ptr %scevgep1971, i64 %i.abr ; 3 uses
  %bound01977 = icmp ult ptr %scevgep1959.a, %scevgep1967
  %bound11978 = icmp ult ptr %scevgep1965, %scevgep1962
  %found.conflict1979 = and i1 %bound01977, %bound11978
  %bound01980 = icmp ult ptr %scevgep1959.a, %scevgep1972
  %bound11981 = icmp ult ptr %scevgep1970, %scevgep1962
  %found.conflict1982 = and i1 %bound01980, %bound11981
  %conflict.rdx1983 = or i1 %found.conflict1979, %found.conflict1982
  %bound01984 = icmp ult ptr %scevgep1959.a, %scevgep1976
  %bound11985 = icmp ult ptr %scevgep1974, %scevgep1962
  %found.conflict1986 = and i1 %bound01984, %bound11985
  %i.abs = or i1 %found.conflict1986, %stride.check1987
  %conflict.rdx1988 = or i1 %conflict.rdx1983, %i.abs
  %bound01989 = icmp ult ptr %scevgep1965, %scevgep1972
  %bound11990 = icmp ult ptr %scevgep1970, %scevgep1967
  %found.conflict1991 = and i1 %bound01989, %bound11990
  %conflict.rdx1992 = or i1 %conflict.rdx1988, %found.conflict1991
  %bound01993 = icmp ult ptr %scevgep1965, %scevgep1976
  %bound11994 = icmp ult ptr %scevgep1974, %scevgep1967
  %found.conflict1995 = and i1 %bound01993, %bound11994
  %conflict.rdx1997 = or i1 %found.conflict1995, %conflict.rdx1992
  %bound01998 = icmp ult ptr %scevgep1970, %scevgep1976
  %bound11999 = icmp ult ptr %scevgep1974, %scevgep1972
  %found.conflict2000 = and i1 %bound01998, %bound11999
  %conflict.rdx2002 = or i1 %found.conflict2000, %conflict.rdx1997
  br i1 %conflict.rdx2002, label %scalar.ph2003.preheader, label %vector.ph2005

vector.ph2005:                                    ; preds = %vector.memcheck1954
  %n.vec2006 = and i64 %.reass2218, -4            ; 3 uses
  %i.abt = add nsw i64 %n.vec2006, %i.eg
  %i.abu = load double, ptr %i.aay, align 8, !tbaa !72, !alias.scope !92
  %broadcast.splatinsert2016 = insertelement <4 x double> poison, double %i.abu, i64 0
  %broadcast.splat2017 = shufflevector <4 x double> %broadcast.splatinsert2016, <4 x double> poison, <4 x i32> zeroinitializer
  %i.abv = load double, ptr %i.abb, align 8, !tbaa !72, !alias.scope !92 ; 2 uses
  %broadcast.splatinsert2011.a = insertelement <4 x double> poison, double %i.abv, i64 0
  %broadcast.splat2012.a = shufflevector <4 x double> %broadcast.splatinsert2011.a, <4 x double> poison, <4 x i32> zeroinitializer
  %i.abw = load double, ptr %i.abe, align 8, !tbaa !72, !alias.scope !92 ; 2 uses
  %broadcast.splatinsert2014.a = insertelement <4 x double> poison, double %i.abw, i64 0
  %broadcast.splat2015.a = shufflevector <4 x double> %broadcast.splatinsert2014.a, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2019 = insertelement <4 x double> poison, double %i.abv, i64 0
  %broadcast.splat2020 = shufflevector <4 x double> %broadcast.splatinsert2019, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2022 = insertelement <4 x double> poison, double %i.abw, i64 0
  %broadcast.splat2023 = shufflevector <4 x double> %broadcast.splatinsert2022, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body2007

vector.body2007:                                  ; preds = %vector.body2007, %vector.ph2005
  %index2008 = phi i64 [ 0, %vector.ph2005 ], [ %index.next2024, %vector.body2007 ] ; 2 uses
  %i.abx = add i64 %index2008, %i.eg              ; 3 uses
  %i.aby = getelementptr [8 x i8], ptr %invariant.gep1715, i64 %i.abx ; 2 uses
  %wide.load2009 = load <4 x double>, ptr %i.aby, align 8, !tbaa !72, !alias.scope !93, !noalias !94 ; 2 uses
  %i.abz = getelementptr [8 x i8], ptr %invariant.gep1717, i64 %i.abx ; 3 uses
  %wide.load2010.a = load <4 x double>, ptr %i.abz, align 8, !tbaa !72, !alias.scope !95, !noalias !96
  %i.aca = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2012.a, <4 x double> %wide.load2010.a, <4 x double> %wide.load2009)
  %i.acb = getelementptr [8 x i8], ptr %invariant.gep1719, i64 %i.abx ; 3 uses
  %wide.load2013.a = load <4 x double>, ptr %i.acb, align 8, !tbaa !72, !alias.scope !97, !noalias !92
  %i.acc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2015.a, <4 x double> %wide.load2013.a, <4 x double> %i.aca)
  %i.acd = fmul <4 x double> %broadcast.splat2017, %i.acc ; 2 uses
  %i.ace = fsub <4 x double> %wide.load2009, %i.acd
  store <4 x double> %i.ace, ptr %i.aby, align 8, !tbaa !72, !alias.scope !93, !noalias !94
  %wide.load2018 = load <4 x double>, ptr %i.abz, align 8, !tbaa !72, !alias.scope !95, !noalias !96
  %i.acf = fneg <4 x double> %i.acd               ; 2 uses
  %i.acg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.acf, <4 x double> %broadcast.splat2020, <4 x double> %wide.load2018)
  store <4 x double> %i.acg, ptr %i.abz, align 8, !tbaa !72, !alias.scope !95, !noalias !96
  %wide.load2021 = load <4 x double>, ptr %i.acb, align 8, !tbaa !72, !alias.scope !97, !noalias !92
  %i.ach = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.acf, <4 x double> %broadcast.splat2023, <4 x double> %wide.load2021)
  store <4 x double> %i.ach, ptr %i.acb, align 8, !tbaa !72, !alias.scope !97, !noalias !92
  %index.next2024 = add nuw i64 %index2008, 4     ; 2 uses
  %i.aci = icmp eq i64 %index.next2024, %n.vec2006
  br i1 %i.aci, label %middle.block2025, label %vector.body2007, !llvm.loop !38

middle.block2025:                                 ; preds = %vector.body2007
  %cmp.n2026 = icmp eq i64 %.reass2218, %n.vec2006
  br i1 %cmp.n2026, label %._crit_edge1517, label %scalar.ph2003.preheader

scalar.ph2003.preheader:                          ; preds = %vector.memcheck1954, %.lr.ph1516, %middle.block2025
  %indvars.iv1599.ph = phi i64 [ %i.eg, %vector.memcheck1954 ], [ %i.eg, %.lr.ph1516 ], [ %i.abt, %middle.block2025 ]
  br label %scalar.ph2003

scalar.ph2003:                                    ; preds = %scalar.ph2003.preheader, %scalar.ph2003
  %indvars.iv1599 = phi i64 [ %indvars.iv.next1600, %scalar.ph2003 ], [ %indvars.iv1599.ph, %scalar.ph2003.preheader ] ; 5 uses
  %i.acj = load double, ptr %i.aay, align 8, !tbaa !72
  %gep1716 = getelementptr [8 x i8], ptr %invariant.gep1715, i64 %indvars.iv1599 ; 2 uses
  %i.ack = load double, ptr %gep1716, align 8, !tbaa !72 ; 2 uses
  %i.acl = load double, ptr %i.abb, align 8, !tbaa !72
  %gep1718 = getelementptr [8 x i8], ptr %invariant.gep1717, i64 %indvars.iv1599 ; 3 uses
  %i.acm = load double, ptr %gep1718, align 8, !tbaa !72
  %i.acn = call double @llvm.fmuladd.f64(double %i.acl, double %i.acm, double %i.ack)
  %i.aco = load double, ptr %i.abe, align 8, !tbaa !72
  %gep1720 = getelementptr [8 x i8], ptr %invariant.gep1719, i64 %indvars.iv1599 ; 3 uses
  %i.acp = load double, ptr %gep1720, align 8, !tbaa !72
  %i.acq = call double @llvm.fmuladd.f64(double %i.aco, double %i.acp, double %i.acn)
  %i.acr = fmul double %i.acj, %i.acq             ; 2 uses
  %i.acs = fsub double %i.ack, %i.acr
  store double %i.acs, ptr %gep1716, align 8, !tbaa !72
  %i.act = load double, ptr %i.abb, align 8, !tbaa !72
  %i.acu = load double, ptr %gep1718, align 8, !tbaa !72
  %i.acv = fneg double %i.acr                     ; 2 uses
  %i.acw = call double @llvm.fmuladd.f64(double %i.acv, double %i.act, double %i.acu)
  store double %i.acw, ptr %gep1718, align 8, !tbaa !72
  %i.acx = load double, ptr %i.abe, align 8, !tbaa !72
  %i.acy = load double, ptr %gep1720, align 8, !tbaa !72
  %i.acz = call double @llvm.fmuladd.f64(double %i.acv, double %i.acx, double %i.acy)
  store double %i.acz, ptr %gep1720, align 8, !tbaa !72
  %indvars.iv.next1600 = add nsw i64 %indvars.iv1599, 1
  %.not1470.not = icmp slt i64 %indvars.iv1599, %i.abj
  br i1 %.not1470.not, label %scalar.ph2003, label %._crit_edge1517, !llvm.loop !39

._crit_edge1517:                                  ; preds = %scalar.ph2003, %middle.block2025, %.._crit_edge1517_crit_edge
  %.pre-phi1655 = phi i32 [ %.pre1654, %.._crit_edge1517_crit_edge ], [ %i.abc, %middle.block2025 ], [ %i.abc, %scalar.ph2003 ]
  %.pre-phi1653 = phi i32 [ %.pre1652, %.._crit_edge1517_crit_edge ], [ %i.aba, %middle.block2025 ], [ %i.aba, %scalar.ph2003 ] ; 5 uses
  %.pre-phi1651 = phi i32 [ %.pre1650, %.._crit_edge1517_crit_edge ], [ %i.aaz, %middle.block2025 ], [ %i.aaz, %scalar.ph2003 ] ; 2 uses
  %i.ada = getelementptr [8 x i8], ptr %i.s, i64 %.pre1648 ; 3 uses
  %i.adb = getelementptr i8, ptr %i.ada, i64 8
  %i.adc = load double, ptr %i.adb, align 8, !tbaa !72
  %i.add = add nsw i32 %.pre-phi1653, %.pre-phi1651
  %i.ade = sext i32 %i.add to i64
  %i.adf = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ade ; 3 uses
  %i.adg = load double, ptr %i.adf, align 8, !tbaa !72 ; 2 uses
  %i.adh = getelementptr i8, ptr %i.ada, i64 16   ; 2 uses
  %i.adi = load double, ptr %i.adh, align 8, !tbaa !72
  %i.adj = add nsw i32 %.pre-phi1655, %.pre-phi1653
  %i.adk = sext i32 %i.adj to i64
  %i.adl = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.adk ; 4 uses
  %i.adm = load double, ptr %i.adl, align 8, !tbaa !72
  %i.adn = call double @llvm.fmuladd.f64(double %i.adi, double %i.adm, double %i.adg)
  %i.ado = getelementptr i8, ptr %i.ada, i64 24   ; 2 uses
  %i.adp = load double, ptr %i.ado, align 8, !tbaa !72
  %i.adq = add nsw i32 %.pre-phi1653, %.pre-phi
  %i.adr = sext i32 %i.adq to i64
  %i.ads = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.adr ; 3 uses
  %i.adt = load double, ptr %i.ads, align 8, !tbaa !72
  %i.adu = call double @llvm.fmuladd.f64(double %i.adp, double %i.adt, double %i.adn)
  %i.adv = fmul double %i.adc, %i.adu             ; 2 uses
  %i.adw = fsub double %i.adg, %i.adv
  store double %i.adw, ptr %i.adf, align 8, !tbaa !72
  %i.adx = load double, ptr %i.adh, align 8, !tbaa !72
  %i.ady = load double, ptr %i.adl, align 8, !tbaa !72
  %i.adz = fneg double %i.adv                     ; 2 uses
  %i.aea = call double @llvm.fmuladd.f64(double %i.adz, double %i.adx, double %i.ady)
  store double %i.aea, ptr %i.adl, align 8, !tbaa !72
  %i.aeb = load double, ptr %i.ado, align 8, !tbaa !72
  %i.aec = load double, ptr %i.ads, align 8, !tbaa !72
  %i.aed = call double @llvm.fmuladd.f64(double %i.adz, double %i.aeb, double %i.aec) ; 4 uses
  store double %i.aed, ptr %i.ads, align 8, !tbaa !72
  %i.aee = load i32, ptr %4, align 4, !tbaa !70   ; 10 uses
  %i.aef = icmp slt i32 %i.wh, %i.aee
  br i1 %i.aef, label %bb.br, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge1517
  %i.aeg = mul nsw i32 %i.wh, %i.k                ; 2 uses
  %i.aeh = add nsw i32 %.pre-phi1651, %i.aeg
  %i.aei = sext i32 %i.aeh to i64
  %i.aej = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aei ; 2 uses
  %i.aek = load double, ptr %i.aej, align 8, !tbaa !72 ; 4 uses
  %i.ael = fcmp une double %i.aek, 0.000000e+00
  br i1 %i.ael, label %bb.bc, label %bb.br

bb.bc:                                            ; preds = %bb.bb
  %i.aem = add nsw i32 %i.aeg, %i.wh
  %i.aen = sext i32 %i.aem to i64
  %i.aeo = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aen
  %i.aep = load double, ptr %i.aeo, align 8, !tbaa !72 ; 4 uses
  %i.aeq = fcmp oge double %i.aep, 0.000000e+00
  %i.aer = fneg double %i.aep
  %i.aes = select i1 %i.aeq, double %i.aep, double %i.aer
  %i.aet = load double, ptr %i.adf, align 8, !tbaa !72 ; 4 uses
  %i.aeu = fcmp oge double %i.aet, 0.000000e+00
  %i.aev = fneg double %i.aet
  %i.aew = select i1 %i.aeu, double %i.aet, double %i.aev ; 5 uses
  %i.aex = fadd double %i.aes, %i.aew             ; 4 uses
  %i.aey = fcmp oeq double %i.aex, 0.000000e+00
  br i1 %i.aey, label %bb.bd, label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  %.not1471.not = icmp sgt i32 %i.wh, %i.aee
  br i1 %.not1471.not, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.aez = add nsw i32 %i.wh, -1
  %i.afa = mul nsw i32 %i.aez, %i.k
  %i.afb = add nsw i32 %i.afa, %i.wh
  %i.afc = sext i32 %i.afb to i64
  %i.afd = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.afc
  %i.afe = load double, ptr %i.afd, align 8, !tbaa !72 ; 3 uses
  %i.aff = fcmp oge double %i.afe, 0.000000e+00
  %i.afg = fneg double %i.afe
  %i.afh = select i1 %i.aff, double %i.afe, double %i.afg
  %i.afi = fadd double %i.aex, %i.afh
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.6 = phi double [ %i.afi, %bb.be ], [ %i.aex, %bb.bd ] ; 2 uses
  %i.afj = add nsw i32 %i.aee, 2
  %.not1472 = icmp slt i32 %i.wh, %i.afj
  br i1 %.not1472, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.afk = add nsw i32 %i.wh, -2
  %i.afl = mul nsw i32 %i.afk, %i.k
  %i.afm = add nsw i32 %i.afl, %i.wh
  %i.afn = sext i32 %i.afm to i64
  %i.afo = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.afn
  %i.afp = load double, ptr %i.afo, align 8, !tbaa !72 ; 3 uses
  %i.afq = fcmp oge double %i.afp, 0.000000e+00
  %i.afr = fneg double %i.afp
  %i.afs = select i1 %i.afq, double %i.afp, double %i.afr
  %i.aft = fadd double %.6, %i.afs
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.7 = phi double [ %i.aft, %bb.bg ], [ %.6, %bb.bf ] ; 2 uses
  %i.afu = add nsw i32 %i.aee, 3
  %.not1473 = icmp slt i32 %i.wh, %i.afu
  br i1 %.not1473, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.afv = add nsw i32 %i.wh, -3
  %i.afw = mul nsw i32 %i.afv, %i.k
  %i.afx = add nsw i32 %i.afw, %i.wh
  %i.afy = sext i32 %i.afx to i64
  %i.afz = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.afy
  %i.aga = load double, ptr %i.afz, align 8, !tbaa !72 ; 3 uses
  %i.agb = fcmp oge double %i.aga, 0.000000e+00
  %i.agc = fneg double %i.aga
  %i.agd = select i1 %i.agb, double %i.aga, double %i.agc
end_hunk_0
begin_hunk_1_@dlaqr5_:bb.a
  %.not1474 = icmp sgt i32 %i.wh, %i.agf
  br i1 %.not1474, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.agg = load double, ptr %i.adl, align 8, !tbaa !72 ; 3 uses
  %i.agh = fcmp oge double %i.agg, 0.000000e+00
  %i.agi = fneg double %i.agg
  %i.agj = select i1 %i.agh, double %i.agg, double %i.agi
  %i.agk = fadd double %.8, %i.agj
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.9 = phi double [ %i.agk, %bb.bk ], [ %.8, %bb.bj ] ; 2 uses
  %i.agl = add nsw i32 %i.aav, -3
  %.not1475 = icmp sgt i32 %i.wh, %i.agl
  %i.agm = fcmp oge double %i.aed, 0.000000e+00
  %i.agn = fneg double %i.aed
  %i.ago = select i1 %i.agm, double %i.aed, double %i.agn
  %i.agp = fadd double %i.ago, %.9
  %.10 = select i1 %.not1475, double %.9, double %i.agp ; 2 uses
  %i.agq = add nsw i32 %i.aav, -4
  %.not1476 = icmp sgt i32 %i.wh, %i.agq
  br i1 %.not1476, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.agr = add nsw i32 %i.wh, 4
  %i.ags = add nsw i32 %i.agr, %.pre-phi1653
  %i.agt = sext i32 %i.ags to i64
  %i.agu = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.agt
  %i.agv = load double, ptr %i.agu, align 8, !tbaa !72 ; 3 uses
  %i.agw = fcmp oge double %i.agv, 0.000000e+00
  %i.agx = fneg double %i.agv
  %i.agy = select i1 %i.agw, double %i.agv, double %i.agx
  %i.agz = fadd double %.10, %i.agy
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm, %bb.bc
  %.11 = phi double [ %i.agz, %bb.bm ], [ %.10, %bb.bl ], [ %i.aex, %bb.bc ]
  %i.aha = fmul double %i.at, %.11                ; 2 uses
  %i.ahb = fcmp oge double %i.aek, 0.000000e+00
  %i.ahc = fneg double %i.aek
  %i.ahd = select i1 %i.ahb, double %i.aek, double %i.ahc ; 5 uses
  %i.ahe = fcmp oge double %i.ay, %i.aha
  %i.ahf = select i1 %i.ahe, double %i.ay, double %i.aha
  %i.ahg = fcmp ugt double %i.ahd, %i.ahf
  br i1 %i.ahg, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ahh = add nsw i32 %.pre-phi1653, %i.wh
  %i.ahi = sext i32 %i.ahh to i64
  %i.ahj = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ahi
  %i.ahk = load double, ptr %i.ahj, align 8, !tbaa !72 ; 3 uses
  %i.ahl = fcmp oge double %i.ahk, 0.000000e+00
  %i.ahm = fneg double %i.ahk
  %i.ahn = select i1 %i.ahl, double %i.ahk, double %i.ahm ; 4 uses
  %i.aho = fcmp oge double %i.ahd, %i.ahn
  %i.ahp = select i1 %i.aho, double %i.ahd, double %i.ahn ; 2 uses
  %i.ahq = fsub double %i.aep, %i.aet             ; 3 uses
  %i.ahr = fcmp oge double %i.ahq, 0.000000e+00
  %i.ahs = fneg double %i.ahq
  %i.aht = select i1 %i.ahr, double %i.ahq, double %i.ahs ; 4 uses
  %i.ahu = fcmp oge double %i.aew, %i.aht
  %i.ahv = select i1 %i.ahu, double %i.aew, double %i.aht ; 2 uses
  %i.ahw = fcmp ole double %i.aew, %i.aht
  %i.ahx = select i1 %i.ahw, double %i.aew, double %i.aht
  %i.ahy = fadd double %i.ahv, %i.ahp             ; 2 uses
  %i.ahz = fdiv double %i.ahv, %i.ahy
  %i.aia = fmul double %i.ahx, %i.ahz             ; 2 uses
  %i.aib = fcmp oeq double %i.aia, 0.000000e+00
  br i1 %i.aib, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aic = fmul double %i.at, %i.aia              ; 2 uses
  %i.aid = fcmp ole double %i.ahd, %i.ahn
  %i.aie = select i1 %i.aid, double %i.ahd, double %i.ahn
  %i.aif = fdiv double %i.ahp, %i.ahy
  %i.aig = fmul double %i.aie, %i.aif
  %i.aih = fcmp oge double %i.ay, %i.aic
  %i.aii = select i1 %i.aih, double %i.ay, double %i.aic
  %i.aij = fcmp ugt double %i.aig, %i.aii
  br i1 %i.aij, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  store double 0.000000e+00, ptr %i.aej, align 8, !tbaa !72
  br label %bb.br

bb.br:                                            ; preds = %bb.bb, %bb.bp, %bb.bq, %bb.bn, %._crit_edge1517
  %indvars.iv.next1603 = add nsw i64 %indvars.iv1602, -1
  %.not1455.not = icmp sgt i64 %indvars.iv1602, %i.vj
  %indvar.next1958 = add i32 %indvar1957, 1
  br i1 %.not1455.not, label %bb.ar, label %._crit_edge1522, !llvm.loop !40

._crit_edge1522:                                  ; preds = %bb.br
  br i1 %i.bn, label %.thread1693, label %bb.bs

._crit_edge1522.thread:                           ; preds = %.loopexit1489
  br i1 %i.bn, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge1522.thread, %._crit_edge1522
  %i.aik = phi i32 [ %i.vg, %._crit_edge1522.thread ], [ %i.aee, %._crit_edge1522 ]
  %i.ail = phi i32 [ %i.vf, %._crit_edge1522.thread ], [ %i.aav, %._crit_edge1522 ]
  %i.aim = phi i32 [ %i.ve, %._crit_edge1522.thread ], [ %i.aav, %._crit_edge1522 ] ; 4 uses
  %i.ain = phi i32 [ %i.vd, %._crit_edge1522.thread ], [ %i.aav, %._crit_edge1522 ] ; 2 uses
  %i.aio = phi i32 [ %i.vc, %._crit_edge1522.thread ], [ %i.aee, %._crit_edge1522 ] ; 2 uses
  %i.aip = phi i32 [ %i.vb, %._crit_edge1522.thread ], [ %i.aee, %._crit_edge1522 ] ; 2 uses
  %i.aiq = load i32, ptr %0, align 4, !tbaa !70
  %.not1456 = icmp eq i32 %i.aiq, 0
  br i1 %.not1456, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.air = load i32, ptr %3, align 4, !tbaa !70
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %i.ais = phi i32 [ %i.aim, %bb.bs ], [ %i.ail, %bb.bt ] ; 2 uses
  %.11388 = phi i32 [ %i.aim, %bb.bs ], [ %i.air, %bb.bt ]
  br i1 %.not14551518, label %.loopexit, label %.lr.ph1531

.thread1693:                                      ; preds = %._crit_edge1522
  %.1477 = call i32 @llvm.smin.i32(i32 %i.dy, i32 %i.aav)
  br label %.lr.ph1531

.lr.ph1531:                                       ; preds = %.thread1693, %bb.bu
  %i.ait = phi i32 [ %i.aav, %.thread1693 ], [ %i.ain, %bb.bu ] ; 5 uses
  %i.aiu = phi i32 [ %i.aee, %.thread1693 ], [ %i.aio, %bb.bu ] ; 11 uses
  %i.aiv = phi i32 [ %i.aee, %.thread1693 ], [ %i.aip, %bb.bu ] ; 9 uses
  %.113881695 = phi i32 [ %.1477, %.thread1693 ], [ %.11388, %bb.bu ] ; 3 uses
  %i.aiw = phi i32 [ %i.aav, %.thread1693 ], [ %i.ais, %bb.bu ] ; 5 uses
  %i.aix = phi i32 [ %i.aav, %.thread1693 ], [ %i.aim, %bb.bu ] ; 5 uses
  %i.aiy = add i32 %.013681550, -2
  %i.aiz = sext i32 %.113881695 to i64            ; 2 uses
  %i.aja = sext i32 %i.ez to i64                  ; 2 uses
  %smin1609 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.aja) ; 7 uses
  %i.ajb = sext i32 %i.ew to i64                  ; 4 uses
  %i.ajc = sext i32 %i.aiu to i64                 ; 2 uses
  %i.ajd = trunc i64 %smin1609 to i32
  %i.aje = shl nsw i32 %i.ajd, 1                  ; 2 uses
  %i.ajf = add i32 %i.ep, %i.aje
  %i.ajg = add i32 %.013681550, %i.aje
  %i.ajh = mul i64 %i.cs, %smin1609
  %scevgep1898.a = getelementptr i8, ptr %scevgep1897, i64 %i.ajh ; 3 uses
  %smin1900 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.ajb)
  %smin1901 = call i64 @llvm.smin.i64(i64 %smin1900, i64 %i.aja)
  %i.aji = mul i64 %i.cu, %smin1901
  %scevgep1902 = getelementptr i8, ptr %scevgep1899, i64 %i.aji ; 3 uses
  %smax1886 = call i64 @llvm.smax.i64(i64 %i.aiz, i64 %i.ajc)
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph1531, %._crit_edge1527
  %indvar1883 = phi i32 [ 0, %.lr.ph1531 ], [ %indvar.next1884, %._crit_edge1527 ] ; 2 uses
  %indvars.iv1610 = phi i64 [ %smin1609, %.lr.ph1531 ], [ %indvars.iv.next1611, %._crit_edge1527 ] ; 4 uses
  %indvars.iv1604 = phi i32 [ %i.fe, %.lr.ph1531 ], [ %indvars.iv.next1605, %._crit_edge1527 ] ; 4 uses
  %i.ajj = sext i32 %indvars.iv1604 to i64        ; 2 uses
  %smax1882 = call i64 @llvm.smax.i64(i64 %i.ajc, i64 %i.ajj) ; 2 uses
  %i.ajk = mul i32 %indvar1883, -2                ; 2 uses
  %i.ajl = add i32 %i.ajf, %i.ajk
  %i.ajm = sext i32 %i.ajl to i64                 ; 2 uses
  %i.ajn = add i64 %smax1882, %i.ajm
  %i.ajo = shl i64 %i.ajn, 3                      ; 2 uses
  %scevgep1885 = getelementptr i8, ptr %scevgep1881.a, i64 %i.ajo ; 3 uses
  %smax1887 = call i64 @llvm.smax.i64(i64 %smax1886, i64 %i.ajj) ; 2 uses
  %i.ajp = add i64 %smax1887, %i.ajm
  %i.ajq = shl nsw i64 %i.ajp, 3                  ; 2 uses
  %scevgep1888.a = getelementptr i8, ptr %9, i64 %i.ajq ; 3 uses
  %i.ajr = add i32 %i.ajg, %i.ajk
  %i.ajs = sext i32 %i.ajr to i64                 ; 2 uses
  %i.ajt = add i64 %smax1882, %i.ajs
  %i.aju = shl i64 %i.ajt, 3
  %scevgep1890.a = getelementptr i8, ptr %scevgep1889.a, i64 %i.aju ; 3 uses
  %i.ajv = add i64 %smax1887, %i.ajs
  %i.ajw = shl nsw i64 %i.ajv, 3
  %scevgep1892.a = getelementptr i8, ptr %scevgep1891.a, i64 %i.ajw ; 3 uses
  %scevgep1894 = getelementptr i8, ptr %scevgep1893.a, i64 %i.ajo ; 3 uses
  %scevgep1896 = getelementptr i8, ptr %scevgep1895.a, i64 %i.ajq ; 3 uses
  %i.ajx = trunc nsw i64 %indvars.iv1610 to i32
  %i.ajy = shl i32 %i.ajx, 1                      ; 2 uses
  %i.ajz = add i32 %i.ajy, %.013681550            ; 2 uses
  %i.aka = call i32 @llvm.smax.i32(i32 %i.aiu, i32 %i.ajz)
  %.not14681523 = icmp sgt i32 %i.aka, %.113881695
  br i1 %.not14681523, label %._crit_edge1527, label %.lr.ph1526

.lr.ph1526:                                       ; preds = %bb.bv
  %i.akb = call i32 @llvm.smax.i32(i32 %i.aiu, i32 %indvars.iv1604)
  %smax1606 = sext i32 %i.akb to i64              ; 5 uses
  %i.akc = add i32 %i.aiy, %i.ajy                 ; 2 uses
  %i.akd = mul nsw i64 %indvars.iv1610, %i.bw
  %i.ake = getelementptr [8 x i8], ptr %i.s, i64 %i.akd ; 3 uses
  %i.akf = getelementptr i8, ptr %i.ake, i64 8    ; 2 uses
  %i.akg = getelementptr i8, ptr %i.ake, i64 16   ; 3 uses
  %i.akh = getelementptr i8, ptr %i.ake, i64 24   ; 3 uses
  %i.aki = sext i32 %i.ajz to i64
  %i.akj = sext i32 %i.akc to i64
  %invariant.gep1721 = getelementptr [8 x i8], ptr %i.m, i64 %i.akj ; 2 uses
  %invariant.gep1723 = getelementptr [8 x i8], ptr %i.m, i64 %i.aki ; 2 uses
  %i.akk = sext i32 %i.akc to i64
  %invariant.gep1725 = getelementptr [8 x i8], ptr %i.m, i64 %i.akk ; 2 uses
  %i.akl = call i32 @llvm.smax.i32(i32 %.113881695, i32 %indvars.iv1604)
  %i.akm = sext i32 %i.akl to i64
  %i.akn = add nsw i64 %i.akm, 1
  %i.ako = sub nsw i64 %i.akn, %smax1606          ; 3 uses
  %min.iters.check1930 = icmp ugt i64 %i.ako, 7
  %or.cond2209 = select i1 %min.iters.check1930, i1 %ident.check.not, i1 false
  br i1 %or.cond2209, label %vector.memcheck1880, label %scalar.ph1929.preheader

vector.memcheck1880:                              ; preds = %.lr.ph1526
  %bound01903 = icmp ult ptr %scevgep1885, %scevgep1892.a
  %bound11904 = icmp ult ptr %scevgep1890.a, %scevgep1888.a
  %found.conflict1905 = and i1 %bound01903, %bound11904
  %bound01906.a = icmp ult ptr %scevgep1885, %scevgep1896
  %bound11907.a = icmp ult ptr %scevgep1894, %scevgep1888.a
  %found.conflict1908.a = and i1 %bound01906.a, %bound11907.a
  %conflict.rdx1909 = or i1 %found.conflict1905, %found.conflict1908.a
  %bound01910 = icmp ult ptr %scevgep1885, %scevgep1902
  %bound11911 = icmp ult ptr %scevgep1898.a, %scevgep1888.a
  %found.conflict1912 = and i1 %bound01910, %bound11911
  %i.akp = or i1 %found.conflict1912, %stride.check1913
  %conflict.rdx1914.a = or i1 %conflict.rdx1909, %i.akp
  %bound01915.a = icmp ult ptr %scevgep1890.a, %scevgep1896
  %bound11916.a = icmp ult ptr %scevgep1894, %scevgep1892.a
  %found.conflict1917.a = and i1 %bound01915.a, %bound11916.a
  %conflict.rdx1918.a = or i1 %conflict.rdx1914.a, %found.conflict1917.a
  %bound01919.a = icmp ult ptr %scevgep1890.a, %scevgep1902
  %bound11920.a = icmp ult ptr %scevgep1898.a, %scevgep1892.a
  %found.conflict1921.a = and i1 %bound01919.a, %bound11920.a
  %conflict.rdx1923 = or i1 %found.conflict1921.a, %conflict.rdx1918.a
  %bound01924 = icmp ult ptr %scevgep1894, %scevgep1902
  %bound11925 = icmp ult ptr %scevgep1898.a, %scevgep1896
  %found.conflict1926 = and i1 %bound01924, %bound11925
  %conflict.rdx1928 = or i1 %found.conflict1926, %conflict.rdx1923
  br i1 %conflict.rdx1928, label %scalar.ph1929.preheader, label %vector.ph1931

vector.ph1931:                                    ; preds = %vector.memcheck1880
  %n.vec1932 = and i64 %i.ako, -2                 ; 3 uses
  %i.akq = add nsw i64 %n.vec1932, %smax1606
  %i.akr = load double, ptr %i.akf, align 8, !tbaa !72, !alias.scope !98
  %broadcast.splatinsert1942.a = insertelement <2 x double> poison, double %i.akr, i64 0
  %broadcast.splat1943.a = shufflevector <2 x double> %broadcast.splatinsert1942.a, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aks = load double, ptr %i.akg, align 8, !tbaa !72, !alias.scope !98 ; 2 uses
  %broadcast.splatinsert1937 = insertelement <2 x double> poison, double %i.aks, i64 0
  %broadcast.splat1938 = shufflevector <2 x double> %broadcast.splatinsert1937, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akt = load double, ptr %i.akh, align 8, !tbaa !72, !alias.scope !98 ; 2 uses
  %broadcast.splatinsert1940 = insertelement <2 x double> poison, double %i.akt, i64 0
  %broadcast.splat1941 = shufflevector <2 x double> %broadcast.splatinsert1940, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1945 = insertelement <2 x double> poison, double %i.aks, i64 0
  %broadcast.splat1946 = shufflevector <2 x double> %broadcast.splatinsert1945, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert1948 = insertelement <2 x double> poison, double %i.akt, i64 0
  %broadcast.splat1949 = shufflevector <2 x double> %broadcast.splatinsert1948, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1933

vector.body1933:                                  ; preds = %vector.body1933, %vector.ph1931
  %index1934 = phi i64 [ 0, %vector.ph1931 ], [ %index.next1950, %vector.body1933 ] ; 2 uses
  %i.aku = add i64 %index1934, %smax1606          ; 3 uses
  %i.akv = getelementptr [8 x i8], ptr %invariant.gep1721, i64 %i.aku
  %i.akw = getelementptr i8, ptr %i.akv, i64 8    ; 2 uses
  %wide.load1935 = load <2 x double>, ptr %i.akw, align 8, !tbaa !72, !alias.scope !99, !noalias !100 ; 2 uses
  %i.akx = getelementptr [8 x i8], ptr %invariant.gep1723, i64 %i.aku ; 3 uses
  %wide.load1936 = load <2 x double>, ptr %i.akx, align 8, !tbaa !72, !alias.scope !101, !noalias !102
  %i.aky = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1938, <2 x double> %wide.load1936, <2 x double> %wide.load1935)
  %i.akz = getelementptr [8 x i8], ptr %invariant.gep1725, i64 %i.aku
  %i.ala = getelementptr i8, ptr %i.akz, i64 24   ; 3 uses
  %wide.load1939 = load <2 x double>, ptr %i.ala, align 8, !tbaa !72, !alias.scope !103, !noalias !98
  %i.alb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1941, <2 x double> %wide.load1939, <2 x double> %i.aky)
  %i.alc = fmul <2 x double> %broadcast.splat1943.a, %i.alb ; 2 uses
  %i.ald = fsub <2 x double> %wide.load1935, %i.alc
  store <2 x double> %i.ald, ptr %i.akw, align 8, !tbaa !72, !alias.scope !99, !noalias !100
  %wide.load1944 = load <2 x double>, ptr %i.akx, align 8, !tbaa !72, !alias.scope !101, !noalias !102
  %i.ale = fneg <2 x double> %i.alc               ; 2 uses
  %i.alf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ale, <2 x double> %broadcast.splat1946, <2 x double> %wide.load1944)
  store <2 x double> %i.alf, ptr %i.akx, align 8, !tbaa !72, !alias.scope !101, !noalias !102
  %wide.load1947 = load <2 x double>, ptr %i.ala, align 8, !tbaa !72, !alias.scope !103, !noalias !98
  %i.alg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ale, <2 x double> %broadcast.splat1949, <2 x double> %wide.load1947)
  store <2 x double> %i.alg, ptr %i.ala, align 8, !tbaa !72, !alias.scope !103, !noalias !98
  %index.next1950 = add nuw i64 %index1934, 2     ; 2 uses
  %i.alh = icmp eq i64 %index.next1950, %n.vec1932
  br i1 %i.alh, label %middle.block1951, label %vector.body1933, !llvm.loop !46

middle.block1951:                                 ; preds = %vector.body1933
  %cmp.n1952 = icmp eq i64 %i.ako, %n.vec1932
  br i1 %cmp.n1952, label %._crit_edge1527, label %scalar.ph1929.preheader

scalar.ph1929.preheader:                          ; preds = %vector.memcheck1880, %.lr.ph1526, %middle.block1951
  %indvars.iv1607.ph = phi i64 [ %smax1606, %vector.memcheck1880 ], [ %smax1606, %.lr.ph1526 ], [ %i.akq, %middle.block1951 ]
  br label %scalar.ph1929

scalar.ph1929:                                    ; preds = %scalar.ph1929.preheader, %scalar.ph1929
  %indvars.iv1607 = phi i64 [ %indvars.iv.next1608, %scalar.ph1929 ], [ %indvars.iv1607.ph, %scalar.ph1929.preheader ] ; 3 uses
  %i.ali = load double, ptr %i.akf, align 8, !tbaa !72
  %i.alj = mul nsw i64 %indvars.iv1607, %i.bt     ; 3 uses
  %gep1722 = getelementptr [8 x i8], ptr %invariant.gep1721, i64 %i.alj
  %i.alk = getelementptr i8, ptr %gep1722, i64 8  ; 2 uses
  %i.all = load double, ptr %i.alk, align 8, !tbaa !72 ; 2 uses
  %i.alm = load double, ptr %i.akg, align 8, !tbaa !72
  %gep1724 = getelementptr [8 x i8], ptr %invariant.gep1723, i64 %i.alj ; 3 uses
  %i.aln = load double, ptr %gep1724, align 8, !tbaa !72
  %i.alo = call double @llvm.fmuladd.f64(double %i.alm, double %i.aln, double %i.all)
  %i.alp = load double, ptr %i.akh, align 8, !tbaa !72
  %gep1726 = getelementptr [8 x i8], ptr %invariant.gep1725, i64 %i.alj
  %i.alq = getelementptr i8, ptr %gep1726, i64 24 ; 3 uses
  %i.alr = load double, ptr %i.alq, align 8, !tbaa !72
  %i.als = call double @llvm.fmuladd.f64(double %i.alp, double %i.alr, double %i.alo)
  %i.alt = fmul double %i.ali, %i.als             ; 2 uses
  %i.alu = fsub double %i.all, %i.alt
  store double %i.alu, ptr %i.alk, align 8, !tbaa !72
  %i.alv = load double, ptr %i.akg, align 8, !tbaa !72
  %i.alw = load double, ptr %gep1724, align 8, !tbaa !72
  %i.alx = fneg double %i.alt                     ; 2 uses
  %i.aly = call double @llvm.fmuladd.f64(double %i.alx, double %i.alv, double %i.alw)
  store double %i.aly, ptr %gep1724, align 8, !tbaa !72
  %i.alz = load double, ptr %i.akh, align 8, !tbaa !72
  %i.ama = load double, ptr %i.alq, align 8, !tbaa !72
  %i.amb = call double @llvm.fmuladd.f64(double %i.alx, double %i.alz, double %i.ama)
  store double %i.amb, ptr %i.alq, align 8, !tbaa !72
  %indvars.iv.next1608 = add nsw i64 %indvars.iv1607, 1
  %.not1468.not = icmp slt i64 %indvars.iv1607, %i.aiz
  br i1 %.not1468.not, label %scalar.ph1929, label %._crit_edge1527, !llvm.loop !47

._crit_edge1527:                                  ; preds = %scalar.ph1929, %middle.block1951, %bb.bv
  %indvars.iv.next1611 = add nsw i64 %indvars.iv1610, -1
  %.not1458.not = icmp sgt i64 %indvars.iv1610, %i.ajb
  %indvars.iv.next1605 = add i32 %indvars.iv1604, -2
  %indvar.next1884 = add i32 %indvar1883, 1
  br i1 %.not1458.not, label %bb.bv, label %._crit_edge1532, !llvm.loop !48

._crit_edge1532:                                  ; preds = %._crit_edge1527
  br i1 %i.bn, label %.preheader, label %bb.bx

.preheader:                                       ; preds = %._crit_edge1532
  br i1 %.not14551518, label %.loopexit, label %.lr.ph1548

.lr.ph1548:                                       ; preds = %.preheader
  %i.amc = add i32 %i.ee, %.013681550
  %i.amd = sub nsw i32 %i.aiv, %.013691572
  %i.ame = load i32, ptr %i.h, align 4, !tbaa !70
  %.reass = add i32 %i.ef, %i.fe
  %i.amf = call i32 @llvm.smin.i32(i32 %i.ame, i32 %.reass) ; 2 uses
  %i.amg = add i32 %i.fd, -1
  %i.amh = add i32 %indvars.iv1594, %i.aiv        ; 2 uses
  %i.ami = zext i32 %i.amf to i64                 ; 3 uses
  %i.amj = sext i32 %i.ez to i64
  %smin1627 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.amj)
  %i.amk = sext i32 %i.ew to i64
  %i.aml = trunc i64 %smin1609 to i32
  %i.amm = shl nsw i32 %i.aml, 1                  ; 3 uses
  %i.amn = add i32 %i.er, %i.amm
  %i.amo = mul i32 %i.t, %i.amn
  %i.amp = add i32 %indvar, %i.amm
  %i.amq = mul i32 %i.t, %i.amp
  %i.amr = add i32 %i.es, %i.amm
  %i.ams = mul i32 %i.t, %i.amr
  %i.amt = mul i64 %i.cb, %smin1609
  %scevgep1766 = getelementptr i8, ptr %scevgep1765, i64 %i.amt ; 3 uses
  %i.amu = mul i64 %i.cd, %i.ajb
  %scevgep1768 = getelementptr i8, ptr %scevgep1767, i64 %i.amu ; 3 uses
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph1548, %._crit_edge1545
  %indvar1750 = phi i32 [ 0, %.lr.ph1548 ], [ %indvar.next1751, %._crit_edge1545 ] ; 2 uses
  %indvars.iv1628 = phi i64 [ %smin1627, %.lr.ph1548 ], [ %indvars.iv.next1629, %._crit_edge1545 ] ; 4 uses
  %indvars.iv1620 = phi i32 [ %i.amg, %.lr.ph1548 ], [ %indvars.iv.next1621, %._crit_edge1545 ] ; 3 uses
  %i.amv = mul i32 %i.by, %indvar1750             ; 3 uses
  %i.amw = add i32 %i.amo, %i.amv
  %i.amx = sext i32 %i.amw to i64                 ; 2 uses
  %smax1752 = call i32 @llvm.smax.i32(i32 %indvars.iv1620, i32 %i.amh)
  %smax1753 = call i32 @llvm.smax.i32(i32 %smax1752, i32 1)
  %i.amy = zext nneg i32 %smax1753 to i64         ; 4 uses
  %i.amz = add nsw i64 %i.amx, %i.amy
  %i.ana = shl nsw i64 %i.amz, 3
  %scevgep1754 = getelementptr i8, ptr %scevgep, i64 %i.ana ; 3 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.ami, i64 %i.amy) ; 3 uses
  %i.anb = add nsw i64 %umax, %i.u
  %i.anc = add nsw i64 %i.anb, %i.amx
  %i.and = shl nsw i64 %i.anc, 3
  %scevgep1756 = getelementptr i8, ptr %scevgep1755, i64 %i.and ; 3 uses
  %i.ane = add i32 %i.amq, %i.amv
  %i.anf = sext i32 %i.ane to i64                 ; 2 uses
  %i.ang = add nsw i64 %i.anf, %i.amy
  %i.anh = shl nsw i64 %i.ang, 3
  %scevgep1758 = getelementptr i8, ptr %scevgep1757, i64 %i.anh ; 3 uses
  %i.ani = add nsw i64 %umax, %i.u
  %i.anj = add nsw i64 %i.ani, %i.anf
  %i.ank = shl nsw i64 %i.anj, 3
  %scevgep1760 = getelementptr i8, ptr %scevgep1759, i64 %i.ank ; 3 uses
  %i.anl = add i32 %i.ams, %i.amv
  %i.anm = sext i32 %i.anl to i64                 ; 2 uses
  %i.ann = add nsw i64 %i.anm, %i.amy
  %i.ano = shl nsw i64 %i.ann, 3
  %scevgep1762 = getelementptr i8, ptr %scevgep1761, i64 %i.ano ; 3 uses
  %i.anp = add nsw i64 %umax, %i.u
  %i.anq = add nsw i64 %i.anp, %i.anm
  %i.anr = shl nsw i64 %i.anq, 3
  %scevgep1764 = getelementptr i8, ptr %scevgep1763, i64 %i.anr ; 3 uses
  %i.ans = trunc nsw i64 %indvars.iv1628 to i32
  %i.ant = shl i32 %i.ans, 1                      ; 2 uses
  %i.anu = add i32 %i.ant, -1
  %i.anv = call i32 @llvm.smax.i32(i32 %i.amd, i32 %i.anu)
  %i.anw = call i32 @llvm.smax.i32(i32 %i.anv, i32 1)
  %.not14661541 = icmp sgt i32 %i.anw, %i.amf
  br i1 %.not14661541, label %._crit_edge1545, label %.lr.ph1544

.lr.ph1544:                                       ; preds = %bb.bw
  %smax1622 = call i32 @llvm.smax.i32(i32 %indvars.iv1620, i32 %i.amh)
  %smax1623 = call i32 @llvm.smax.i32(i32 %smax1622, i32 1)
  %i.anx = zext nneg i32 %smax1623 to i64         ; 6 uses
  %i.any = add i32 %i.amc, %i.ant                 ; 3 uses
  %i.anz = mul nsw i64 %indvars.iv1628, %i.bw
  %i.aoa = getelementptr [8 x i8], ptr %i.s, i64 %i.anz ; 3 uses
  %i.aob = getelementptr i8, ptr %i.aoa, i64 8    ; 2 uses
  %i.aoc = add nsw i32 %i.any, 1
  %i.aod = mul nsw i32 %i.aoc, %i.t
  %i.aoe = getelementptr i8, ptr %i.aoa, i64 16   ; 3 uses
  %i.aof = add nsw i32 %i.any, 2
  %i.aog = mul nsw i32 %i.aof, %i.t
  %i.aoh = getelementptr i8, ptr %i.aoa, i64 24   ; 3 uses
  %i.aoi = add nsw i32 %i.any, 3
  %i.aoj = mul nsw i32 %i.aoi, %i.t
  %i.aok = sext i32 %i.aod to i64
  %i.aol = sext i32 %i.aog to i64
  %i.aom = sext i32 %i.aoj to i64
  %invariant.gep1733 = getelementptr [8 x i8], ptr %i.v, i64 %i.aok ; 2 uses
  %invariant.gep1735 = getelementptr [8 x i8], ptr %i.v, i64 %i.aol ; 2 uses
  %invariant.gep1737 = getelementptr [8 x i8], ptr %i.v, i64 %i.aom ; 2 uses
  %i.aon = call i64 @llvm.umax.i64(i64 %i.ami, i64 %i.anx)
  %i.aoo = add nuw nsw i64 %i.aon, 1
  %i.aop = sub nsw i64 %i.aoo, %i.anx             ; 3 uses
  %min.iters.check = icmp ult i64 %i.aop, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1544
  %bound0 = icmp ult ptr %scevgep1754, %scevgep1760
  %bound1 = icmp ult ptr %scevgep1758, %scevgep1756
  %found.conflict = and i1 %bound0, %bound1
  %bound01769 = icmp ult ptr %scevgep1754, %scevgep1764
  %bound11770 = icmp ult ptr %scevgep1762, %scevgep1756
  %found.conflict1771 = and i1 %bound01769, %bound11770
  %conflict.rdx = or i1 %found.conflict, %found.conflict1771
  %bound01772 = icmp ult ptr %scevgep1754, %scevgep1768
  %bound11773 = icmp ult ptr %scevgep1766, %scevgep1756
  %found.conflict1774 = and i1 %bound01772, %bound11773
  %i.aoq = or i1 %found.conflict1774, %stride.check
  %conflict.rdx1775 = or i1 %conflict.rdx, %i.aoq
  %bound01776 = icmp ult ptr %scevgep1758, %scevgep1764
  %bound11777 = icmp ult ptr %scevgep1762, %scevgep1760
  %found.conflict1778 = and i1 %bound01776, %bound11777
  %conflict.rdx1779 = or i1 %conflict.rdx1775, %found.conflict1778
  %bound01780 = icmp ult ptr %scevgep1758, %scevgep1768
  %bound11781 = icmp ult ptr %scevgep1766, %scevgep1760
  %found.conflict1782 = and i1 %bound01780, %bound11781
  %conflict.rdx1784 = or i1 %found.conflict1782, %conflict.rdx1779
  %bound01785 = icmp ult ptr %scevgep1762, %scevgep1768
  %bound11786 = icmp ult ptr %scevgep1766, %scevgep1764
  %found.conflict1787 = and i1 %bound01785, %bound11786
  %conflict.rdx1789 = or i1 %found.conflict1787, %conflict.rdx1784
  br i1 %conflict.rdx1789, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aop, -4                     ; 3 uses
  %i.aor = add nsw i64 %n.vec, %i.anx
  %i.aos = load double, ptr %i.aob, align 8, !tbaa !72, !alias.scope !104
  %broadcast.splatinsert1794 = insertelement <4 x double> poison, double %i.aos, i64 0
  %broadcast.splat1795 = shufflevector <4 x double> %broadcast.splatinsert1794, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aot = load double, ptr %i.aoe, align 8, !tbaa !72, !alias.scope !104 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aot, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aou = load double, ptr %i.aoh, align 8, !tbaa !72, !alias.scope !104 ; 2 uses
  %broadcast.splatinsert1792 = insertelement <4 x double> poison, double %i.aou, i64 0
  %broadcast.splat1793 = shufflevector <4 x double> %broadcast.splatinsert1792, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1797 = insertelement <4 x double> poison, double %i.aot, i64 0
  %broadcast.splat1798 = shufflevector <4 x double> %broadcast.splatinsert1797, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1800 = insertelement <4 x double> poison, double %i.aou, i64 0
  %broadcast.splat1801 = shufflevector <4 x double> %broadcast.splatinsert1800, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aov = add nuw i64 %index, %i.anx             ; 3 uses
  %i.aow = getelementptr [8 x i8], ptr %invariant.gep1733, i64 %i.aov ; 2 uses
  %wide.load = load <4 x double>, ptr %i.aow, align 8, !tbaa !72, !alias.scope !105, !noalias !106 ; 2 uses
  %i.aox = getelementptr [8 x i8], ptr %invariant.gep1735, i64 %i.aov ; 3 uses
  %wide.load1790 = load <4 x double>, ptr %i.aox, align 8, !tbaa !72, !alias.scope !107, !noalias !108
  %i.aoy = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load1790, <4 x double> %wide.load)
  %i.aoz = getelementptr [8 x i8], ptr %invariant.gep1737, i64 %i.aov ; 3 uses
  %wide.load1791 = load <4 x double>, ptr %i.aoz, align 8, !tbaa !72, !alias.scope !109, !noalias !104
  %i.apa = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1793, <4 x double> %wide.load1791, <4 x double> %i.aoy)
  %i.apb = fmul <4 x double> %broadcast.splat1795, %i.apa ; 2 uses
  %i.apc = fsub <4 x double> %wide.load, %i.apb
  store <4 x double> %i.apc, ptr %i.aow, align 8, !tbaa !72, !alias.scope !105, !noalias !106
  %wide.load1796 = load <4 x double>, ptr %i.aox, align 8, !tbaa !72, !alias.scope !107, !noalias !108
  %i.apd = fneg <4 x double> %i.apb               ; 2 uses
  %i.ape = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.apd, <4 x double> %broadcast.splat1798, <4 x double> %wide.load1796)
  store <4 x double> %i.ape, ptr %i.aox, align 8, !tbaa !72, !alias.scope !107, !noalias !108
  %wide.load1799 = load <4 x double>, ptr %i.aoz, align 8, !tbaa !72, !alias.scope !109, !noalias !104
  %i.apf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.apd, <4 x double> %broadcast.splat1801, <4 x double> %wide.load1799)
  store <4 x double> %i.apf, ptr %i.aoz, align 8, !tbaa !72, !alias.scope !109, !noalias !104
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.apg = icmp eq i64 %index.next, %n.vec
  br i1 %i.apg, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aop, %n.vec
  br i1 %cmp.n, label %._crit_edge1545, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph1544, %middle.block
  %indvars.iv1624.ph = phi i64 [ %i.anx, %vector.memcheck ], [ %i.anx, %.lr.ph1544 ], [ %i.aor, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1624 = phi i64 [ %indvars.iv.next1625, %scalar.ph ], [ %indvars.iv1624.ph, %scalar.ph.preheader ] ; 5 uses
  %i.aph = load double, ptr %i.aob, align 8, !tbaa !72
  %gep1734 = getelementptr [8 x i8], ptr %invariant.gep1733, i64 %indvars.iv1624 ; 2 uses
  %i.api = load double, ptr %gep1734, align 8, !tbaa !72 ; 2 uses
  %i.apj = load double, ptr %i.aoe, align 8, !tbaa !72
  %gep1736 = getelementptr [8 x i8], ptr %invariant.gep1735, i64 %indvars.iv1624 ; 3 uses
  %i.apk = load double, ptr %gep1736, align 8, !tbaa !72
  %i.apl = call double @llvm.fmuladd.f64(double %i.apj, double %i.apk, double %i.api)
  %i.apm = load double, ptr %i.aoh, align 8, !tbaa !72
  %gep1738 = getelementptr [8 x i8], ptr %invariant.gep1737, i64 %indvars.iv1624 ; 3 uses
  %i.apn = load double, ptr %gep1738, align 8, !tbaa !72
  %i.apo = call double @llvm.fmuladd.f64(double %i.apm, double %i.apn, double %i.apl)
  %i.app = fmul double %i.aph, %i.apo             ; 2 uses
  %i.apq = fsub double %i.api, %i.app
  store double %i.apq, ptr %gep1734, align 8, !tbaa !72
  %i.apr = load double, ptr %i.aoe, align 8, !tbaa !72
  %i.aps = load double, ptr %gep1736, align 8, !tbaa !72
  %i.apt = fneg double %i.app                     ; 2 uses
  %i.apu = call double @llvm.fmuladd.f64(double %i.apt, double %i.apr, double %i.aps)
  store double %i.apu, ptr %gep1736, align 8, !tbaa !72
  %i.apv = load double, ptr %i.aoh, align 8, !tbaa !72
  %i.apw = load double, ptr %gep1738, align 8, !tbaa !72
  %i.apx = call double @llvm.fmuladd.f64(double %i.apt, double %i.apv, double %i.apw)
  store double %i.apx, ptr %gep1738, align 8, !tbaa !72
  %indvars.iv.next1625 = add nuw nsw i64 %indvars.iv1624, 1
  %.not1466.not = icmp samesign ult i64 %indvars.iv1624, %i.ami
  br i1 %.not1466.not, label %scalar.ph, label %._crit_edge1545, !llvm.loop !55

._crit_edge1545:                                  ; preds = %scalar.ph, %middle.block, %bb.bw
  %indvars.iv.next1629 = add nsw i64 %indvars.iv1628, -1
  %.not1462.not = icmp sgt i64 %indvars.iv1628, %i.amk
  %indvars.iv.next1621 = add i32 %indvars.iv1620, -2
  %indvar.next1751 = add i32 %indvar1750, 1
  br i1 %.not1462.not, label %bb.bw, label %.loopexit, !llvm.loop !56

bb.bx:                                            ; preds = %._crit_edge1532
  %i.apy = load i32, ptr %1, align 4, !tbaa !70
  %.not1459 = icmp eq i32 %i.apy, 0
  %or.cond = or i1 %.not1459, %.not14551518
  br i1 %or.cond, label %.loopexit, label %.lr.ph1540

.lr.ph1540:                                       ; preds = %bb.bx
  %i.apz = add i32 %.013681550, -2
  %i.aqa = load i32, ptr %12, align 4, !tbaa !70  ; 6 uses
  %i.aqb = load i32, ptr %11, align 4, !tbaa !70  ; 4 uses
  %.not14611533 = icmp sgt i32 %i.aqb, %i.aqa
  br i1 %.not14611533, label %.loopexit, label %.lr.ph1536.preheader

.lr.ph1536.preheader:                             ; preds = %.lr.ph1540
  %i.aqc = sext i32 %i.aqb to i64                 ; 6 uses
  %i.aqd = add i32 %i.aqa, 1
  %i.aqe = sext i32 %i.ez to i64
  %smin1617 = call i64 @llvm.smin.i64(i64 %i.bv, i64 %i.aqe)
  %i.aqf = sext i32 %i.ew to i64
  %i.aqg = shl nsw i64 %i.aqc, 3                  ; 3 uses
  %scevgep1804 = getelementptr i8, ptr %scevgep1803, i64 %i.aqg
  %i.aqh = trunc i64 %smin1609 to i32
  %i.aqi = shl nsw i32 %i.aqh, 1                  ; 3 uses
  %i.aqj = add i32 %i.eq, %i.aqi
  %i.aqk = mul i32 %i.n, %i.aqj
  %i.aql = sub i32 %i.aqa, %i.aqb
  %i.aqm = zext i32 %i.aql to i64
  %i.aqn = add nsw i64 %i.aqc, %i.aqm
  %i.aqo = shl nsw i64 %i.aqn, 3                  ; 3 uses
  %scevgep1811 = getelementptr i8, ptr %scevgep1810.a, i64 %i.aqo
  %scevgep1814 = getelementptr i8, ptr %scevgep1813.a, i64 %i.aqg
  %i.aqp = add i32 %.013681550, %i.aqi
  %i.aqq = mul i32 %i.n, %i.aqp
  %scevgep1817 = getelementptr i8, ptr %scevgep1816.a, i64 %i.aqo
  %scevgep1820 = getelementptr i8, ptr %scevgep1819.a, i64 %i.aqg
  %i.aqr = add i32 %indvars.iv1586, %i.aqi
  %i.aqs = mul i32 %i.n, %i.aqr
  %scevgep1823 = getelementptr i8, ptr %scevgep1822.a, i64 %i.aqo
  %i.aqt = mul i64 %i.ck, %smin1609
  %scevgep1826.a = getelementptr i8, ptr %scevgep1825.a, i64 %i.aqt ; 3 uses
  %i.aqu = mul i64 %i.cm, %i.ajb
  %scevgep1828 = getelementptr i8, ptr %scevgep1827, i64 %i.aqu ; 3 uses
  %i.aqv = sub i32 %i.aqa, %i.aqb                 ; 2 uses
  %i.aqw = zext i32 %i.aqv to i64
  %i.aqx = add nuw nsw i64 %i.aqw, 1              ; 2 uses
  %min.iters.check1856 = icmp ult i32 %i.aqv, 7
  %n.vec1858 = and i64 %i.aqx, 8589934588         ; 3 uses
  %i.aqy = add nsw i64 %n.vec1858, %i.aqc
  %cmp.n1878 = icmp eq i64 %i.aqx, %n.vec1858
  br label %.lr.ph1536

.lr.ph1536:                                       ; preds = %.lr.ph1536.preheader, %._crit_edge1537
  %indvar1807 = phi i32 [ 0, %.lr.ph1536.preheader ], [ %indvar.next1808, %._crit_edge1537 ] ; 2 uses
  %indvars.iv1618 = phi i64 [ %smin1617, %.lr.ph1536.preheader ], [ %indvars.iv.next1619, %._crit_edge1537 ] ; 4 uses
  %i.aqz = trunc nsw i64 %indvars.iv1618 to i32
  %i.ara = shl i32 %i.aqz, 1                      ; 2 uses
  %i.arb = add i32 %i.apz, %i.ara                 ; 2 uses
  %i.arc = mul nsw i64 %indvars.iv1618, %i.bw
  %i.ard = getelementptr [8 x i8], ptr %i.s, i64 %i.arc ; 3 uses
  %i.are = getelementptr i8, ptr %i.ard, i64 8    ; 4 uses
  %i.arf = add nsw i32 %i.arb, 1
  %i.arg = mul nsw i32 %i.arf, %i.n
  %i.arh = getelementptr i8, ptr %i.ard, i64 16   ; 7 uses
  %i.ari = add i32 %i.ara, %.013681550
  %i.arj = mul nsw i32 %i.ari, %i.n
  %i.ark = getelementptr i8, ptr %i.ard, i64 24   ; 7 uses
  %i.arl = add nsw i32 %i.arb, 3
  %i.arm = mul nsw i32 %i.arl, %i.n
  %i.arn = sext i32 %i.arg to i64
  %i.aro = sext i32 %i.arj to i64
  %i.arp = sext i32 %i.arm to i64
  %invariant.gep1727 = getelementptr [8 x i8], ptr %i.p, i64 %i.arn ; 4 uses
  %invariant.gep1729 = getelementptr [8 x i8], ptr %i.p, i64 %i.aro ; 4 uses
  %invariant.gep1731 = getelementptr [8 x i8], ptr %i.p, i64 %i.arp ; 4 uses
  br i1 %min.iters.check1856, label %scalar.ph1855.preheader, label %vector.memcheck1802

vector.memcheck1802:                              ; preds = %.lr.ph1536
  %i.arq = mul i32 %i.cg, %indvar1807             ; 3 uses
  %i.arr = add i32 %i.aqs, %i.arq
  %i.ars = sext i32 %i.arr to i64
  %i.art = shl nsw i64 %i.ars, 3                  ; 2 uses
  %scevgep1824 = getelementptr i8, ptr %scevgep1823, i64 %i.art ; 3 uses
  %scevgep1821 = getelementptr i8, ptr %scevgep1820, i64 %i.art ; 3 uses
  %i.aru = add i32 %i.aqq, %i.arq
  %i.arv = sext i32 %i.aru to i64
  %i.arw = shl nsw i64 %i.arv, 3                  ; 2 uses
  %scevgep1818 = getelementptr i8, ptr %scevgep1817, i64 %i.arw ; 3 uses
  %scevgep1815 = getelementptr i8, ptr %scevgep1814, i64 %i.arw ; 3 uses
  %i.arx = add i32 %i.aqk, %i.arq
  %i.ary = sext i32 %i.arx to i64
  %i.arz = shl nsw i64 %i.ary, 3                  ; 2 uses
  %scevgep1812 = getelementptr i8, ptr %scevgep1811, i64 %i.arz ; 3 uses
  %scevgep1809 = getelementptr i8, ptr %scevgep1804, i64 %i.arz ; 3 uses
  %bound01829 = icmp ult ptr %scevgep1809, %scevgep1818
  %bound11830 = icmp ult ptr %scevgep1815, %scevgep1812
  %found.conflict1831 = and i1 %bound01829, %bound11830
  %bound01832 = icmp ult ptr %scevgep1809, %scevgep1824
  %bound11833 = icmp ult ptr %scevgep1821, %scevgep1812
  %found.conflict1834 = and i1 %bound01832, %bound11833
  %conflict.rdx1835 = or i1 %found.conflict1831, %found.conflict1834
  %bound01836 = icmp ult ptr %scevgep1809, %scevgep1828
  %bound11837 = icmp ult ptr %scevgep1826.a, %scevgep1812
  %found.conflict1838 = and i1 %bound01836, %bound11837
  %i.asa = or i1 %found.conflict1838, %stride.check1839
  %conflict.rdx1840 = or i1 %conflict.rdx1835, %i.asa
  %bound01841 = icmp ult ptr %scevgep1815, %scevgep1824
  %bound11842 = icmp ult ptr %scevgep1821, %scevgep1818
  %found.conflict1843 = and i1 %bound01841, %bound11842
  %conflict.rdx1844 = or i1 %conflict.rdx1840, %found.conflict1843
  %bound01845 = icmp ult ptr %scevgep1815, %scevgep1828
  %bound11846 = icmp ult ptr %scevgep1826.a, %scevgep1818
  %found.conflict1847 = and i1 %bound01845, %bound11846
  %conflict.rdx1849 = or i1 %found.conflict1847, %conflict.rdx1844
  %bound01850 = icmp ult ptr %scevgep1821, %scevgep1828
  %bound11851 = icmp ult ptr %scevgep1826.a, %scevgep1824
  %found.conflict1852 = and i1 %bound01850, %bound11851
  %conflict.rdx1854 = or i1 %found.conflict1852, %conflict.rdx1849
  br i1 %conflict.rdx1854, label %scalar.ph1855.preheader, label %vector.ph1857

vector.ph1857:                                    ; preds = %vector.memcheck1802
  %i.asb = load double, ptr %i.are, align 8, !tbaa !72, !alias.scope !110
  %broadcast.splatinsert1868 = insertelement <4 x double> poison, double %i.asb, i64 0
  %broadcast.splat1869 = shufflevector <4 x double> %broadcast.splatinsert1868, <4 x double> poison, <4 x i32> zeroinitializer
  %i.asc = load double, ptr %i.arh, align 8, !tbaa !72, !alias.scope !110 ; 2 uses
  %broadcast.splatinsert1863 = insertelement <4 x double> poison, double %i.asc, i64 0
  %broadcast.splat1864 = shufflevector <4 x double> %broadcast.splatinsert1863, <4 x double> poison, <4 x i32> zeroinitializer
  %i.asd = load double, ptr %i.ark, align 8, !tbaa !72, !alias.scope !110 ; 2 uses
  %broadcast.splatinsert1866 = insertelement <4 x double> poison, double %i.asd, i64 0
  %broadcast.splat1867 = shufflevector <4 x double> %broadcast.splatinsert1866, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1871 = insertelement <4 x double> poison, double %i.asc, i64 0
  %broadcast.splat1872 = shufflevector <4 x double> %broadcast.splatinsert1871, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1874 = insertelement <4 x double> poison, double %i.asd, i64 0
  %broadcast.splat1875 = shufflevector <4 x double> %broadcast.splatinsert1874, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1859

vector.body1859:                                  ; preds = %vector.body1859, %vector.ph1857
  %index1860 = phi i64 [ 0, %vector.ph1857 ], [ %index.next1876, %vector.body1859 ] ; 2 uses
  %i.ase = add i64 %index1860, %i.aqc             ; 3 uses
  %i.asf = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %i.ase ; 2 uses
  %wide.load1861.a = load <4 x double>, ptr %i.asf, align 8, !tbaa !72, !alias.scope !111, !noalias !112 ; 2 uses
  %i.asg = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %i.ase ; 3 uses
  %wide.load1862 = load <4 x double>, ptr %i.asg, align 8, !tbaa !72, !alias.scope !113, !noalias !114
  %i.ash = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1864, <4 x double> %wide.load1862, <4 x double> %wide.load1861.a)
  %i.asi = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %i.ase ; 3 uses
  %wide.load1865 = load <4 x double>, ptr %i.asi, align 8, !tbaa !72, !alias.scope !115, !noalias !110
  %i.asj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat1867, <4 x double> %wide.load1865, <4 x double> %i.ash)
  %i.ask = fmul <4 x double> %broadcast.splat1869, %i.asj ; 2 uses
  %i.asl = fsub <4 x double> %wide.load1861.a, %i.ask
  store <4 x double> %i.asl, ptr %i.asf, align 8, !tbaa !72, !alias.scope !111, !noalias !112
  %wide.load1870 = load <4 x double>, ptr %i.asg, align 8, !tbaa !72, !alias.scope !113, !noalias !114
  %i.asm = fneg <4 x double> %i.ask               ; 2 uses
  %i.asn = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.asm, <4 x double> %broadcast.splat1872, <4 x double> %wide.load1870)
  store <4 x double> %i.asn, ptr %i.asg, align 8, !tbaa !72, !alias.scope !113, !noalias !114
  %wide.load1873 = load <4 x double>, ptr %i.asi, align 8, !tbaa !72, !alias.scope !115, !noalias !110
  %i.aso = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.asm, <4 x double> %broadcast.splat1875, <4 x double> %wide.load1873)
  store <4 x double> %i.aso, ptr %i.asi, align 8, !tbaa !72, !alias.scope !115, !noalias !110
  %index.next1876 = add nuw i64 %index1860, 4     ; 2 uses
  %i.asp = icmp eq i64 %index.next1876, %n.vec1858
  br i1 %i.asp, label %middle.block1877, label %vector.body1859, !llvm.loop !62

middle.block1877:                                 ; preds = %vector.body1859
  br i1 %cmp.n1878, label %._crit_edge1537, label %scalar.ph1855.preheader

scalar.ph1855.preheader:                          ; preds = %vector.memcheck1802, %.lr.ph1536, %middle.block1877
  %indvars.iv1612.ph = phi i64 [ %i.aqc, %vector.memcheck1802 ], [ %i.aqc, %.lr.ph1536 ], [ %i.aqy, %middle.block1877 ] ; 6 uses
  %i.asq = trunc i64 %indvars.iv1612.ph to i32    ; 2 uses
  %i.asr = add i32 %i.aqa, %i.asq
  %i.ass = and i32 %i.asr, 1
  %lcmp.mod2215.not.not = icmp eq i32 %i.ass, 0
  br i1 %lcmp.mod2215.not.not, label %scalar.ph1855.prol, label %scalar.ph1855.prol.loopexit

scalar.ph1855.prol:                               ; preds = %scalar.ph1855.preheader
  %i.ast = load double, ptr %i.are, align 8, !tbaa !72
  %gep1728.prol = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %indvars.iv1612.ph ; 2 uses
  %i.asu = load double, ptr %gep1728.prol, align 8, !tbaa !72 ; 2 uses
  %i.asv = load double, ptr %i.arh, align 8, !tbaa !72
  %gep1730.prol = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %indvars.iv1612.ph ; 3 uses
  %i.asw = load double, ptr %gep1730.prol, align 8, !tbaa !72
  %i.asx = call double @llvm.fmuladd.f64(double %i.asv, double %i.asw, double %i.asu)
  %i.asy = load double, ptr %i.ark, align 8, !tbaa !72
  %gep1732.prol = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %indvars.iv1612.ph ; 3 uses
  %i.asz = load double, ptr %gep1732.prol, align 8, !tbaa !72
  %i.ata = call double @llvm.fmuladd.f64(double %i.asy, double %i.asz, double %i.asx)
  %i.atb = fmul double %i.ast, %i.ata             ; 2 uses
  %i.atc = fsub double %i.asu, %i.atb
  store double %i.atc, ptr %gep1728.prol, align 8, !tbaa !72
  %i.atd = load double, ptr %i.arh, align 8, !tbaa !72
  %i.ate = load double, ptr %gep1730.prol, align 8, !tbaa !72
  %i.atf = fneg double %i.atb                     ; 2 uses
  %i.atg = call double @llvm.fmuladd.f64(double %i.atf, double %i.atd, double %i.ate)
  store double %i.atg, ptr %gep1730.prol, align 8, !tbaa !72
  %i.ath = load double, ptr %i.ark, align 8, !tbaa !72
  %i.ati = load double, ptr %gep1732.prol, align 8, !tbaa !72
  %i.atj = call double @llvm.fmuladd.f64(double %i.atf, double %i.ath, double %i.ati)
  store double %i.atj, ptr %gep1732.prol, align 8, !tbaa !72
  %indvars.iv.next1613.prol = add nsw i64 %indvars.iv1612.ph, 1
  br label %scalar.ph1855.prol.loopexit

scalar.ph1855.prol.loopexit:                      ; preds = %scalar.ph1855.prol, %scalar.ph1855.preheader
  %indvars.iv1612.unr = phi i64 [ %indvars.iv1612.ph, %scalar.ph1855.preheader ], [ %indvars.iv.next1613.prol, %scalar.ph1855.prol ]
  %i.atk = icmp eq i32 %i.aqa, %i.asq
  br i1 %i.atk, label %._crit_edge1537, label %scalar.ph1855

scalar.ph1855:                                    ; preds = %scalar.ph1855.prol.loopexit, %scalar.ph1855
  %indvars.iv1612 = phi i64 [ %indvars.iv.next1613.1, %scalar.ph1855 ], [ %indvars.iv1612.unr, %scalar.ph1855.prol.loopexit ] ; 5 uses
  %i.atl = load double, ptr %i.are, align 8, !tbaa !72
  %gep1728 = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %indvars.iv1612 ; 2 uses
  %i.atm = load double, ptr %gep1728, align 8, !tbaa !72 ; 2 uses
  %i.atn = load double, ptr %i.arh, align 8, !tbaa !72
  %gep1730 = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %indvars.iv1612 ; 3 uses
  %i.ato = load double, ptr %gep1730, align 8, !tbaa !72
  %i.atp = call double @llvm.fmuladd.f64(double %i.atn, double %i.ato, double %i.atm)
  %i.atq = load double, ptr %i.ark, align 8, !tbaa !72
  %gep1732 = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %indvars.iv1612 ; 3 uses
  %i.atr = load double, ptr %gep1732, align 8, !tbaa !72
  %i.ats = call double @llvm.fmuladd.f64(double %i.atq, double %i.atr, double %i.atp)
  %i.att = fmul double %i.atl, %i.ats             ; 2 uses
  %i.atu = fsub double %i.atm, %i.att
  store double %i.atu, ptr %gep1728, align 8, !tbaa !72
  %i.atv = load double, ptr %i.arh, align 8, !tbaa !72
  %i.atw = load double, ptr %gep1730, align 8, !tbaa !72
  %i.atx = fneg double %i.att                     ; 2 uses
  %i.aty = call double @llvm.fmuladd.f64(double %i.atx, double %i.atv, double %i.atw)
  store double %i.aty, ptr %gep1730, align 8, !tbaa !72
  %i.atz = load double, ptr %i.ark, align 8, !tbaa !72
  %i.aua = load double, ptr %gep1732, align 8, !tbaa !72
  %i.aub = call double @llvm.fmuladd.f64(double %i.atx, double %i.atz, double %i.aua)
  store double %i.aub, ptr %gep1732, align 8, !tbaa !72
  %indvars.iv.next1613 = add nsw i64 %indvars.iv1612, 1 ; 3 uses
  %i.auc = load double, ptr %i.are, align 8, !tbaa !72
  %gep1728.1 = getelementptr [8 x i8], ptr %invariant.gep1727, i64 %indvars.iv.next1613 ; 2 uses
  %i.aud = load double, ptr %gep1728.1, align 8, !tbaa !72 ; 2 uses
  %i.aue = load double, ptr %i.arh, align 8, !tbaa !72
  %gep1730.1 = getelementptr [8 x i8], ptr %invariant.gep1729, i64 %indvars.iv.next1613 ; 3 uses
  %i.auf = load double, ptr %gep1730.1, align 8, !tbaa !72
  %i.aug = call double @llvm.fmuladd.f64(double %i.aue, double %i.auf, double %i.aud)
  %i.auh = load double, ptr %i.ark, align 8, !tbaa !72
  %gep1732.1 = getelementptr [8 x i8], ptr %invariant.gep1731, i64 %indvars.iv.next1613 ; 3 uses
  %i.aui = load double, ptr %gep1732.1, align 8, !tbaa !72
  %i.auj = call double @llvm.fmuladd.f64(double %i.auh, double %i.aui, double %i.aug)
  %i.auk = fmul double %i.auc, %i.auj             ; 2 uses
  %i.aul = fsub double %i.aud, %i.auk
  store double %i.aul, ptr %gep1728.1, align 8, !tbaa !72
  %i.aum = load double, ptr %i.arh, align 8, !tbaa !72
  %i.aun = load double, ptr %gep1730.1, align 8, !tbaa !72
  %i.auo = fneg double %i.auk                     ; 2 uses
  %i.aup = call double @llvm.fmuladd.f64(double %i.auo, double %i.aum, double %i.aun)
  store double %i.aup, ptr %gep1730.1, align 8, !tbaa !72
  %i.auq = load double, ptr %i.ark, align 8, !tbaa !72
  %i.aur = load double, ptr %gep1732.1, align 8, !tbaa !72
  %i.aus = call double @llvm.fmuladd.f64(double %i.auo, double %i.auq, double %i.aur)
  store double %i.aus, ptr %gep1732.1, align 8, !tbaa !72
  %indvars.iv.next1613.1 = add nsw i64 %indvars.iv1612, 2 ; 2 uses
  %lftr.wideiv1615.1 = trunc i64 %indvars.iv.next1613.1 to i32
  %exitcond1616.not.1 = icmp eq i32 %i.aqd, %lftr.wideiv1615.1
  br i1 %exitcond1616.not.1, label %._crit_edge1537, label %scalar.ph1855, !llvm.loop !63

._crit_edge1537:                                  ; preds = %scalar.ph1855.prol.loopexit, %scalar.ph1855, %middle.block1877
  %indvars.iv.next1619 = add nsw i64 %indvars.iv1618, -1
  %.not1460.not = icmp sgt i64 %indvars.iv1618, %i.aqf
  %indvar.next1808 = add i32 %indvar1807, 1
  br i1 %.not1460.not, label %.lr.ph1536, label %.loopexit, !llvm.loop !64

.loopexit:                                        ; preds = %._crit_edge1537, %._crit_edge1545, %bb.bu, %._crit_edge1522.thread, %.lr.ph1540, %.preheader, %bb.bx
  %i.aut = phi i32 [ %i.ait, %._crit_edge1545 ], [ %i.ain, %bb.bu ], [ %i.ait, %.lr.ph1540 ], [ %i.ait, %.preheader ], [ %i.ait, %bb.bx ], [ %i.vd, %._crit_edge1522.thread ], [ %i.ait, %._crit_edge1537 ] ; 2 uses
  %i.auu = phi i32 [ %i.aiv, %._crit_edge1545 ], [ %i.aip, %bb.bu ], [ %i.aiv, %.lr.ph1540 ], [ %i.aiv, %.preheader ], [ %i.aiv, %bb.bx ], [ %i.vb, %._crit_edge1522.thread ], [ %i.aiv, %._crit_edge1537 ]
  %i.auv = phi i32 [ %i.aiw, %._crit_edge1545 ], [ %i.ais, %bb.bu ], [ %i.aiw, %.lr.ph1540 ], [ %i.aiw, %.preheader ], [ %i.aiw, %bb.bx ], [ %i.vd, %._crit_edge1522.thread ], [ %i.aiw, %._crit_edge1537 ]
  %i.auw = phi i32 [ %i.aix, %._crit_edge1545 ], [ %i.aim, %bb.bu ], [ %i.aix, %.lr.ph1540 ], [ %i.aix, %.preheader ], [ %i.aix, %bb.bx ], [ %i.vd, %._crit_edge1522.thread ], [ %i.aix, %._crit_edge1537 ]
  %i.aux = phi i32 [ %i.aiv, %._crit_edge1545 ], [ %i.aio, %bb.bu ], [ %i.aiu, %.lr.ph1540 ], [ %i.aiu, %.preheader ], [ %i.aiu, %bb.bx ], [ %i.vc, %._crit_edge1522.thread ], [ %i.aiu, %._crit_edge1537 ]
  %i.auy = phi i32 [ %i.aiv, %._crit_edge1545 ], [ %i.aik, %bb.bu ], [ %i.aiu, %.lr.ph1540 ], [ %i.aiu, %.preheader ], [ %i.aiu, %bb.bx ], [ %i.vg, %._crit_edge1522.thread ], [ %i.aiu, %._crit_edge1537 ]
  %i.auz = add i32 %.013681550, 1
  %indvars.iv.next1587 = add i32 %indvars.iv1586, 1
  %exitcond1633.not = icmp eq i32 %.013681550, %smin1632
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond1633.not, label %._crit_edge1555, label %bb.m, !llvm.loop !65

._crit_edge1555:                                  ; preds = %.loopexit, %bb.l
  %.pre1645 = phi i32 [ %i.eb, %bb.l ], [ %i.aut, %.loopexit ] ; 2 uses
  br i1 %i.bn, label %bb.by, label %.loopexit1491

bb.by:                                            ; preds = %._crit_edge1555
  %i.ava = load i32, ptr %0, align 4, !tbaa !70
  %.not1427 = icmp eq i32 %i.ava, 0               ; 2 uses
  %.pre1644 = load i32, ptr %4, align 4, !tbaa !70 ; 3 uses
  %spec.select = select i1 %.not1427, ptr %5, ptr %3
  %spec.select1745 = select i1 %.not1427, i32 %.pre1644, i32 1 ; 3 uses
  %.21389 = load i32, ptr %spec.select, align 4, !tbaa !70 ; 4 uses
  %i.avb = sub nsw i32 %.pre1644, %.013691572
  %i.avc = call i32 @llvm.smax.i32(i32 %i.avb, i32 1) ; 7 uses
  %i.avd = sub nsw i32 %i.dy, %.pre1645
  %i.ave = load i32, ptr %i.h, align 4, !tbaa !70
  %i.avf = call i32 @llvm.smax.i32(i32 %i.avd, i32 0)
  %i.avg = add i32 %i.ave, 1
  %i.avh = add nuw i32 %i.avc, %i.avf
  %i.avi = sub i32 %i.avg, %i.avh
  store i32 %i.avi, ptr %i.d, align 4, !tbaa !70
  %i.avj = load i32, ptr %22, align 4, !tbaa !70  ; 2 uses
  %.1478 = call i32 @llvm.smin.i32(i32 %i.dy, i32 %.pre1645) ; 2 uses
  %i.avk = add i32 %.1478, 1                      ; 2 uses
  %i.avl = icmp slt i32 %i.avj, 0                 ; 2 uses
  %i.avm = icmp sge i32 %i.avk, %.21389
  %i.avn = icmp slt i32 %.1478, %.21389
  %.in14291556 = select i1 %i.avl, i1 %i.avm, i1 %i.avn
  br i1 %.in14291556, label %.lr.ph1559, label %._crit_edge1560

.lr.ph1559:                                       ; preds = %bb.by
  %i.avo = add i32 %.21389, 1
  %i.avp = mul i32 %i.avc, %i.br
  %i.avq = sext i32 %i.avp to i64
  %i.avr = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.avq
  %i.avs = add nsw i32 %i.avc, %.013691572
  %i.avt = sext i32 %i.avk to i64
  %i.avu = sext i32 %i.avj to i64
  %i.avv = sext i32 %.21389 to i64                ; 2 uses
  %i.avw = sext i32 %i.avs to i64
  %invariant.gep1739 = getelementptr [8 x i8], ptr %i.m, i64 %i.avw
  br label %bb.bz
end_hunk_1
