Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/flops?download=true
inline.NumInlined: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
._crit_edge378:                                   ; preds = %.lr.ph377, %._crit_edge371
  %.9291.lcssa = phi double [ 0.000000e+00, %._crit_edge371 ], [ %i.xr, %.lr.ph377 ]
  %i.xt = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.xu = load i64, ptr @tnow, align 8, !tbaa !12
  %i.xv = sitofp i64 %i.xu to double
  %i.xw = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.xx = sitofp i64 %i.xw to double
  %i.xy = tail call double @llvm.fmuladd.f64(double %i.xx, double f0x3EB0C6F7A0B5ED8D, double %i.xv) ; 2 uses
  store double %i.xy, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !9
  %i.xz = fsub double %i.xy, %i.wz                ; 2 uses
  store double %i.xz, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !9
  %i.ya = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8, !tbaa !9
  %i.yb = load double, ptr @nulltime, align 8, !tbaa !9
  %i.yc = fneg double %i.yb
  %i.yd = tail call double @llvm.fmuladd.f64(double %i.ya, double %i.xz, double %i.yc) ; 3 uses
  store double %i.yd, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8, !tbaa !9
  %i.ye = load double, ptr @sa, align 8, !tbaa !9 ; 5 uses
  %i.yf = fmul double %i.ye, %i.ye                ; 3 uses
  %i.yg = fneg double %i.wr
  %i.yh = insertelement <2 x double> poison, double %i.wr, i64 0 ; 2 uses
  %i.yi = shufflevector <2 x double> %i.yh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yj = insertelement <2 x double> poison, double %i.ye, i64 0
  %i.yk = insertelement <2 x double> %i.yj, double %i.yf, i64 1
  %i.yl = fadd <2 x double> %i.yi, %i.yk
  %i.ym = insertelement <2 x double> %i.yh, double %i.ye, i64 1
  %i.yn = fdiv <2 x double> %i.ym, %i.yl          ; 2 uses
  %i.yo = extractelement <2 x double> %i.yn, i64 0
  %i.yp = fsub double %i.yg, %i.yo
  %i.yq = extractelement <2 x double> %i.yn, i64 1
  %i.yr = fsub double %i.yp, %i.yq
  %i.ys = tail call double @llvm.fmuladd.f64(double %i.ye, double %i.yf, double %i.wr)
  %i.yt = insertelement <2 x double> poison, double %i.yd, i64 0
  %i.yu = insertelement <2 x double> %i.yt, double %i.yf, i64 1
  %i.yv = insertelement <2 x double> <double 1.200000e+01, double poison>, double %i.ys, i64 1
  %i.yw = fdiv <2 x double> %i.yu, %i.yv          ; 2 uses
  %i.yx = extractelement <2 x double> %i.yw, i64 0 ; 2 uses
  store double %i.yx, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16, !tbaa !9
  %i.yy = extractelement <2 x double> %i.yw, i64 1
  %i.yz = fsub double %i.yr, %i.yy
  %i.za = fmul nnan double %i.ws, 1.800000e+01
  %i.zb = load double, ptr @two, align 8, !tbaa !9
  %i.zc = tail call double @llvm.fmuladd.f64(double %i.zb, double %.9291.lcssa, double %i.yz)
  %i.zd = fmul double %i.za, %i.zc                ; 3 uses
  store double %i.zd, ptr @sa, align 8, !tbaa !9
  %i.ze = fptosi double %i.zd to i64
  %i.zf = mul nsw i64 %i.ze, -2000
  %i.zg = sitofp i64 %i.zf to double
  %i.zh = load double, ptr @scale, align 8, !tbaa !9
  %i.zi = fdiv double %i.zg, %i.zh
  %i.zj = fptosi double %i.zi to i64              ; 4 uses
  %i.zk = fadd double %i.zd, 5.002000e+02         ; 2 uses
  store double %i.zk, ptr @sc, align 8, !tbaa !9
  %i.zl = load double, ptr @one, align 8, !tbaa !9
  %i.zm = fdiv double %i.zl, %i.yx                ; 2 uses
  store double %i.zm, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8, !tbaa !9
  %i.zn = fmul double %i.zk, 1.000000e-30
  %i.zo = fmul double %i.yd, 1.000000e-30
  %i.zp = fmul double %i.zm, 1.000000e-30
  %i.zq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %i.zn, double noundef %i.zo, double noundef %i.zp) ; 0 uses
  %i.zr = load double, ptr @piref, align 8, !tbaa !9
  %i.zs = load double, ptr @three, align 8, !tbaa !9
  %i.zt = sitofp i64 %i.zj to double
  %i.zu = fmul double %i.zs, %i.zt
  %i.zv = fdiv double %i.zr, %i.zu                ; 2 uses
  %i.zw = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !9
  %i.zx = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.zy = load i64, ptr @tnow, align 8, !tbaa !12
  %i.zz = sitofp i64 %i.zy to double
  %i.aaa = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.aab = sitofp i64 %i.aaa to double
  %i.aac = tail call double @llvm.fmuladd.f64(double %i.aab, double f0x3EB0C6F7A0B5ED8D, double %i.zz) ; 3 uses
  store double %i.aac, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !9
  %i.aad = fsub double %i.aac, %i.zw
  store double %i.aad, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !9
  %.not305.not380 = icmp sgt i64 %i.zj, 1
  br i1 %.not305.not380, label %.lr.ph384, label %._crit_edge385

.lr.ph384:                                        ; preds = %._crit_edge378
  %i.aae = load double, ptr @B6, align 8, !tbaa !9
  %i.aaf = load double, ptr @B5, align 8, !tbaa !9
  %i.aag = load double, ptr @B4, align 8, !tbaa !9
  %i.aah = load double, ptr @B3, align 8, !tbaa !9
  %i.aai = load double, ptr @B2, align 8, !tbaa !9
  %i.aaj = load double, ptr @B1, align 8, !tbaa !9
  %i.aak = load double, ptr @one, align 8, !tbaa !9 ; 2 uses
  %i.aal = load double, ptr @A6, align 8, !tbaa !9
  %i.aam = load double, ptr @A5, align 8, !tbaa !9
  %i.aan = load double, ptr @A4, align 8, !tbaa !9
  %i.aao = load double, ptr @A3, align 8, !tbaa !9
  %i.aap = load double, ptr @A2, align 8, !tbaa !9
  %i.aaq = load double, ptr @A1, align 8, !tbaa !9
  %i.aar = insertelement <2 x double> poison, double %i.aaj, i64 0
  %i.aas = insertelement <2 x double> %i.aar, double %i.aam, i64 1
  %i.aat = insertelement <2 x double> poison, double %i.aak, i64 0
  %i.aau = insertelement <2 x double> %i.aat, double %i.aan, i64 1
  %i.aav = insertelement <2 x double> poison, double %i.aal, i64 1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph384, %bb.k
  %.9382 = phi i64 [ 1, %.lr.ph384 ], [ %i.abq, %bb.k ] ; 2 uses
  %.10381 = phi double [ 0.000000e+00, %.lr.ph384 ], [ %i.abp, %bb.k ]
  %i.aaw = uitofp nneg i64 %.9382 to double
  %i.aax = fmul double %i.zv, %i.aaw              ; 3 uses
  %i.aay = fmul double %i.aax, %i.aax             ; 9 uses
  %i.aaz = tail call double @llvm.fmuladd.f64(double %i.aae, double %i.aay, double %i.aaf)
  %i.aba = tail call double @llvm.fmuladd.f64(double %i.aay, double %i.aaz, double %i.aag)
  %i.abb = tail call double @llvm.fmuladd.f64(double %i.aay, double %i.aba, double %i.aah)
  %i.abc = tail call double @llvm.fmuladd.f64(double %i.aay, double %i.abb, double %i.aai)
  %i.abd = insertelement <2 x double> poison, double %i.aay, i64 0
  %i.abe = shufflevector <2 x double> %i.abd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.abf = insertelement <2 x double> %i.aav, double %i.abc, i64 0
  %i.abg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abe, <2 x double> %i.abf, <2 x double> %i.aas)
  %i.abh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abe, <2 x double> %i.abg, <2 x double> %i.aau) ; 3 uses
  %foldExtExtBinop455 = fmul <2 x double> %i.abh, %i.abh
  %i.abi = extractelement <2 x double> %foldExtExtBinop455, i64 0
  %i.abj = fmul double %i.aax, %i.abi
  %i.abk = extractelement <2 x double> %i.abh, i64 1
  %i.abl = tail call double @llvm.fmuladd.f64(double %i.abk, double %i.aay, double %i.aao)
  %i.abm = tail call double @llvm.fmuladd.f64(double %i.abl, double %i.aay, double %i.aap)
  %i.abn = tail call double @llvm.fmuladd.f64(double %i.abm, double %i.aay, double %i.aaq)
  %i.abo = tail call double @llvm.fmuladd.f64(double %i.abn, double %i.aay, double %i.aak)
  %i.abp = tail call double @llvm.fmuladd.f64(double %i.abj, double %i.abo, double %.10381) ; 2 uses
  %i.abq = add nuw nsw i64 %.9382, 1              ; 2 uses
  %exitcond412.not = icmp eq i64 %i.abq, %i.zj
  br i1 %exitcond412.not, label %._crit_edge385, label %bb.k, !llvm.loop !24

._crit_edge385:                                   ; preds = %bb.k, %._crit_edge378
  %.10.lcssa = phi double [ 0.000000e+00, %._crit_edge378 ], [ %i.abp, %bb.k ]
  %i.abr = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.abs = load i64, ptr @tnow, align 8, !tbaa !12
  %i.abt = sitofp i64 %i.abs to double
  %i.abu = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.abv = sitofp i64 %i.abu to double
  %i.abw = tail call double @llvm.fmuladd.f64(double %i.abv, double f0x3EB0C6F7A0B5ED8D, double %i.abt) ; 2 uses
  store double %i.abw, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !9
  %i.abx = fsub double %i.abw, %i.aac             ; 2 uses
  store double %i.abx, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !9
  %i.aby = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8, !tbaa !9
  %i.abz = load double, ptr @nulltime, align 8, !tbaa !9
  %i.aca = fneg double %i.abz
  %i.acb = load double, ptr @three, align 8, !tbaa !9
  %i.acc = load double, ptr @A6, align 8, !tbaa !9
  %i.acd = load double, ptr @A5, align 8, !tbaa !9
  %i.ace = load double, ptr @A4, align 8, !tbaa !9
  %i.acf = load double, ptr @A3, align 8, !tbaa !9
  %i.acg = load double, ptr @A2, align 8, !tbaa !9
  %i.ach = load double, ptr @A1, align 8, !tbaa !9
  %i.aci = load double, ptr @one, align 8, !tbaa !9 ; 3 uses
  %i.acj = load double, ptr @B6, align 8, !tbaa !9
  %i.ack = load double, ptr @B5, align 8, !tbaa !9
  %i.acl = load double, ptr @B4, align 8, !tbaa !9
  %i.acm = load double, ptr @B3, align 8, !tbaa !9
  %i.acn = load double, ptr @B2, align 8, !tbaa !9
  %i.aco = load double, ptr @B1, align 8, !tbaa !9
  %i.acp = tail call double @llvm.fmuladd.f64(double %i.aby, double %i.abx, double %i.aca) ; 3 uses
  store double %i.acp, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16, !tbaa !9
  %i.acq = load double, ptr @piref, align 8, !tbaa !9
  %i.acr = insertelement <2 x double> poison, double %i.acq, i64 0
  %i.acs = insertelement <2 x double> %i.acr, double %i.acp, i64 1
  %i.act = insertelement <2 x double> <double poison, double 3.000000e+01>, double %i.acb, i64 0
  %i.acu = fdiv <2 x double> %i.acs, %i.act       ; 4 uses
  %i.acv = extractelement <2 x double> %i.acu, i64 0
  %foldExtExtBinop457 = fmul <2 x double> %i.acu, %i.acu
  %i.acw = extractelement <2 x double> %foldExtExtBinop457, i64 0 ; 12 uses
  %i.acx = tail call double @llvm.fmuladd.f64(double %i.acc, double %i.acw, double %i.acd)
  %i.acy = tail call double @llvm.fmuladd.f64(double %i.acx, double %i.acw, double %i.ace)
  %i.acz = tail call double @llvm.fmuladd.f64(double %i.acy, double %i.acw, double %i.acf)
  %i.ada = tail call double @llvm.fmuladd.f64(double %i.acz, double %i.acw, double %i.acg)
  %i.adb = tail call double @llvm.fmuladd.f64(double %i.ada, double %i.acw, double %i.ach)
  %i.adc = tail call double @llvm.fmuladd.f64(double %i.adb, double %i.acw, double %i.aci)
  %i.add = fmul double %i.acv, %i.adc
  %i.ade = tail call double @llvm.fmuladd.f64(double %i.acj, double %i.acw, double %i.ack)
  %i.adf = tail call double @llvm.fmuladd.f64(double %i.acw, double %i.ade, double %i.acl)
  %i.adg = tail call double @llvm.fmuladd.f64(double %i.acw, double %i.adf, double %i.acm)
  %i.adh = tail call double @llvm.fmuladd.f64(double %i.acw, double %i.adg, double %i.acn)
  %i.adi = tail call double @llvm.fmuladd.f64(double %i.acw, double %i.adh, double %i.aco)
  %i.adj = tail call double @llvm.fmuladd.f64(double %i.acw, double %i.adi, double %i.aci) ; 2 uses
  %i.adk = fmul double %i.add, %i.adj
  %i.adl = fmul double %i.adj, %i.adk
  %i.adm = extractelement <2 x double> %i.acu, i64 1 ; 2 uses
  store double %i.adm, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8, !tbaa !9
  %i.adn = load double, ptr @two, align 8, !tbaa !9 ; 2 uses
  %i.ado = tail call double @llvm.fmuladd.f64(double %i.adn, double %.10.lcssa, double %i.adl)
  %i.adp = fmul double %i.zv, %i.ado
  %i.adq = fdiv double %i.adp, %i.adn             ; 2 uses
  store double %i.adq, ptr @sa, align 8, !tbaa !9
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8, !tbaa !9
  %i.adr = fadd double %i.adq, f0xBFD2AAAAAAAAAAAB ; 2 uses
  store double %i.adr, ptr @sc, align 8, !tbaa !9
  %i.ads = fdiv double %i.aci, %i.adm             ; 2 uses
  store double %i.ads, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16, !tbaa !9
  %i.adt = fmul double %i.adr, 1.000000e-30
  %i.adu = fmul double %i.acp, 1.000000e-30
  %i.adv = fmul double %i.ads, 1.000000e-30
  %i.adw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %i.adt, double noundef %i.adu, double noundef %i.adv) ; 0 uses
  %i.adx = load double, ptr @five, align 8, !tbaa !9
  %i.ady = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16, !tbaa !9
  %i.adz = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8, !tbaa !9
  %i.aea = fsub double %i.ady, %i.adz
  %i.aeb = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8, !tbaa !9 ; 3 uses
  %0 = load double, ptr @one, align 8, !tbaa !9
  %1 = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16, !tbaa !9
  %2 = fadd double %i.aeb, %1
  %i.aec = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16, !tbaa !9 ; 2 uses
  %i.aed = fadd double %2, %i.aec
  %i.aee = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8, !tbaa !9
  %i.aef = fadd double %i.aed, %i.aee
  %i.aeg = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16, !tbaa !9 ; 2 uses
  %3 = load double, ptr @four, align 8, !tbaa !9
  %i.aeh = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8, !tbaa !9 ; 2 uses
  %4 = insertelement <2 x double> poison, double %i.adx, i64 0
  %5 = insertelement <2 x double> %4, double %3, i64 1
  %6 = insertelement <2 x double> poison, double %i.aea, i64 0
  %7 = insertelement <2 x double> %6, double %i.aeh, i64 1
  %8 = insertelement <2 x double> poison, double %i.aeb, i64 0
  %9 = insertelement <2 x double> poison, double %0, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %11 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16
  %i.aei = insertelement <2 x double> poison, double %i.aef, i64 0
  %i.aej = insertelement <2 x double> %i.aei, double %i.aeb, i64 1
  %i.aek = insertelement <2 x double> poison, double %i.aeg, i64 0
  %12 = insertelement <2 x double> %i.aek, double %i.aec, i64 1
  %13 = fadd <2 x double> %i.aej, %12             ; 2 uses
  %14 = shufflevector <2 x double> %8, <2 x double> %13, <2 x i32> <i32 0, i32 2>
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %7, <2 x double> %14)
  %16 = fdiv <2 x double> %15, <double 5.200000e+01, double 1.520000e+02> ; 3 uses
  %17 = extractelement <2 x double> %16, i64 0
  store double %17, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8, !tbaa !9
  %i.ael = fdiv <2 x double> %10, %16             ; 2 uses
  %18 = shufflevector <2 x double> %i.ael, <2 x double> %16, <2 x i32> <i32 0, i32 3>
  store <2 x double> %18, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16, !tbaa !9
  %19 = insertelement <2 x double> poison, double %i.aeh, i64 0
  %20 = insertelement <2 x double> %19, double %i.aeg, i64 1
  %21 = fadd <2 x double> %13, %20
  %22 = shufflevector <1 x double> %11, <1 x double> poison, <2 x i32> zeroinitializer
  %23 = fadd <2 x double> %21, %22
  %i.aem = fdiv <2 x double> %23, <double 1.460000e+02, double 9.100000e+01> ; 3 uses
  %24 = shufflevector <2 x double> %i.ael, <2 x double> %i.aem, <2 x i32> <i32 1, i32 2>
  store <2 x double> %24, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16, !tbaa !9
  %25 = fdiv <2 x double> %10, %i.aem             ; 2 uses
  %26 = shufflevector <2 x double> %25, <2 x double> %i.aem, <2 x i32> <i32 0, i32 3>
  store <2 x double> %26, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16, !tbaa !9
  %27 = extractelement <2 x double> %25, i64 1
  store double %27, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16, !tbaa !9
  %putchar306 = tail call i32 @putchar(i32 10)    ; 0 uses
  %i.aen = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %i.zj) ; 0 uses
  %i.aeo = load double, ptr @nulltime, align 8, !tbaa !9
  %i.aep = fmul double %i.aeo, 1.000000e-30
  %i.aeq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.aep) ; 0 uses
  %i.aer = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16, !tbaa !9
  %i.aes = fmul double %i.aer, 1.000000e-30
  %i.aet = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %i.aes) ; 0 uses
  %i.aeu = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16, !tbaa !9
  %i.aev = fmul double %i.aeu, 1.000000e-30
  %i.aew = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %i.aev) ; 0 uses
  %i.aex = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16, !tbaa !9
  %i.aey = fmul double %i.aex, 1.000000e-30
  %i.aez = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %i.aey) ; 0 uses
  %i.afa = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16, !tbaa !9
  %i.afb = fmul double %i.afa, 1.000000e-30
  %i.afc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %i.afb) ; 0 uses
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @dtime(ptr nofree noundef captures(none) initializes((8, 16)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !9
  %i.c = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.d = load i64, ptr @tnow, align 8, !tbaa !12
  %i.e = sitofp i64 %i.d to double
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.g = sitofp i64 %i.f to double
  %i.h = tail call double @llvm.fmuladd.f64(double %i.g, double f0x3EB0C6F7A0B5ED8D, double %i.e) ; 2 uses
  store double %i.h, ptr %i.a, align 8, !tbaa !9
  %i.i = fsub double %i.h, %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.i, ptr %i.j, align 8, !tbaa !9
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!"timeval", !10, i64 0, !10, i64 8}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !10, i64 8}
!14 = distinct !{!14, !25}
!15 = distinct !{!15, !25}
!16 = distinct !{!16, !25}
!17 = distinct !{!17, !26}
!18 = distinct !{!18, !25}
!19 = distinct !{!19, !25}
!20 = distinct !{!20, !25}
!21 = distinct !{!21, !25}
!22 = distinct !{!22, !25}
!23 = distinct !{!23, !25}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
