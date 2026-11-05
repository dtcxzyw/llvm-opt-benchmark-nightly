Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/edge_drawing?download=true
inline.NumInlined: 1880
inline.NumDeleted: 742
loop-unroll.NumCompletelyUnrolled: 82
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 151
begin_hunk_0_@_ZN2cv8ximgproc15EdgeDrawingImpl10EllipseFitEPdS2_iP15EllipseEquationi:bb.a
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !277 ; 6 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 8 ; 7 uses
  store double 0.000000e+00, ptr %i.yl, align 8, !tbaa !44
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.yi, i64 %indvars.iv45.i211 ; 3 uses
  %i.yn = load double, ptr %i.ym, align 8, !tbaa !44
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  %i.yp = load double, ptr %i.yo, align 8, !tbaa !44
  %i.yq = tail call double @llvm.fmuladd.f64(double %i.yn, double %i.yp, double 0.000000e+00) ; 2 uses
  store double %i.yq, ptr %i.yl, align 8, !tbaa !44
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %indvars.iv45.i211 ; 3 uses
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !44
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !44
  %i.yv = tail call double @llvm.fmuladd.f64(double %i.ys, double %i.yu, double %i.yq) ; 2 uses
  store double %i.yv, ptr %i.yl, align 8, !tbaa !44
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %indvars.iv45.i211 ; 3 uses
  %i.yx = load double, ptr %i.yw, align 8, !tbaa !44
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !44
  %i.za = tail call double @llvm.fmuladd.f64(double %i.yx, double %i.yz, double %i.yv) ; 2 uses
  store double %i.za, ptr %i.yl, align 8, !tbaa !44
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %indvars.iv45.i211 ; 2 uses
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !44
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  %i.ze = load double, ptr %i.zd, align 8, !tbaa !44
  %i.zf = tail call double @llvm.fmuladd.f64(double %i.zc, double %i.ze, double %i.za) ; 2 uses
  store double %i.zf, ptr %i.yl, align 8, !tbaa !44
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %indvars.iv45.i211 ; 2 uses
  %i.zh = load double, ptr %i.zg, align 8, !tbaa !44
  %i.zi = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.zj = load double, ptr %i.zi, align 8, !tbaa !44
  %i.zk = tail call double @llvm.fmuladd.f64(double %i.zh, double %i.zj, double %i.zf) ; 2 uses
  store double %i.zk, ptr %i.yl, align 8, !tbaa !44
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.xy, i64 %indvars.iv45.i211 ; 2 uses
  %i.zm = load double, ptr %i.zl, align 8, !tbaa !44
  %i.zn = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.zo = load double, ptr %i.zn, align 8, !tbaa !44
  %i.zp = tail call double @llvm.fmuladd.f64(double %i.zm, double %i.zo, double %i.zk)
  store double %i.zp, ptr %i.yl, align 8, !tbaa !44
  %i.zq = getelementptr inbounds nuw i8, ptr %i.yk, i64 16 ; 7 uses
  store double 0.000000e+00, ptr %i.zq, align 8, !tbaa !44
  %i.zr = load double, ptr %i.ym, align 8, !tbaa !44
  %i.zs = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  %i.zt = load double, ptr %i.zs, align 8, !tbaa !44
  %i.zu = tail call double @llvm.fmuladd.f64(double %i.zr, double %i.zt, double 0.000000e+00) ; 2 uses
  store double %i.zu, ptr %i.zq, align 8, !tbaa !44
  %i.zv = load double, ptr %i.yr, align 8, !tbaa !44
  %i.zw = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  %i.zx = load double, ptr %i.zw, align 8, !tbaa !44
  %i.zy = tail call double @llvm.fmuladd.f64(double %i.zv, double %i.zx, double %i.zu) ; 2 uses
  store double %i.zy, ptr %i.zq, align 8, !tbaa !44
  %i.zz = load double, ptr %i.yw, align 8, !tbaa !44
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  %i.aab = load double, ptr %i.aaa, align 8, !tbaa !44
  %i.aac = tail call double @llvm.fmuladd.f64(double %i.zz, double %i.aab, double %i.zy) ; 2 uses
  store double %i.aac, ptr %i.zq, align 8, !tbaa !44
  %i.aad = load double, ptr %i.zb, align 8, !tbaa !44
  %i.aae = getelementptr inbounds nuw i8, ptr %i.yb, i64 16
  %i.aaf = load double, ptr %i.aae, align 8, !tbaa !44
  %i.aag = tail call double @llvm.fmuladd.f64(double %i.aad, double %i.aaf, double %i.aac) ; 2 uses
  store double %i.aag, ptr %i.zq, align 8, !tbaa !44
  %i.aah = load double, ptr %i.zg, align 8, !tbaa !44
  %i.aai = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  %i.aaj = load double, ptr %i.aai, align 8, !tbaa !44
  %i.aak = tail call double @llvm.fmuladd.f64(double %i.aah, double %i.aaj, double %i.aag) ; 2 uses
  store double %i.aak, ptr %i.zq, align 8, !tbaa !44
  %i.aal = load double, ptr %i.zl, align 8, !tbaa !44
  %i.aam = getelementptr inbounds nuw i8, ptr %i.xx, i64 16
  %i.aan = load double, ptr %i.aam, align 8, !tbaa !44
  %i.aao = tail call double @llvm.fmuladd.f64(double %i.aal, double %i.aan, double %i.aak)
  store double %i.aao, ptr %i.zq, align 8, !tbaa !44
  %i.aap = getelementptr inbounds nuw i8, ptr %i.yk, i64 24 ; 7 uses
  store double 0.000000e+00, ptr %i.aap, align 8, !tbaa !44
  %i.aaq = load double, ptr %i.ym, align 8, !tbaa !44
  %i.aar = getelementptr inbounds nuw i8, ptr %i.yh, i64 24
  %i.aas = load double, ptr %i.aar, align 8, !tbaa !44
  %i.aat = tail call double @llvm.fmuladd.f64(double %i.aaq, double %i.aas, double 0.000000e+00) ; 2 uses
  store double %i.aat, ptr %i.aap, align 8, !tbaa !44
  %i.aau = load double, ptr %i.yr, align 8, !tbaa !44
  %i.aav = getelementptr inbounds nuw i8, ptr %i.yf, i64 24
  %i.aaw = load double, ptr %i.aav, align 8, !tbaa !44
  %i.aax = tail call double @llvm.fmuladd.f64(double %i.aau, double %i.aaw, double %i.aat) ; 2 uses
  store double %i.aax, ptr %i.aap, align 8, !tbaa !44
  %i.aay = load double, ptr %i.yw, align 8, !tbaa !44
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.yd, i64 24
  %i.aba = load double, ptr %i.aaz, align 8, !tbaa !44
  %i.abb = tail call double @llvm.fmuladd.f64(double %i.aay, double %i.aba, double %i.aax) ; 2 uses
  store double %i.abb, ptr %i.aap, align 8, !tbaa !44
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %.pre389, i64 %indvars.iv45.i211 ; 3 uses
  %i.abd = load double, ptr %i.abc, align 8, !tbaa !44
  %i.abe = load double, ptr %i.wq, align 8, !tbaa !44
  %i.abf = tail call double @llvm.fmuladd.f64(double %i.abd, double %i.abe, double %i.abb) ; 2 uses
  store double %i.abf, ptr %i.aap, align 8, !tbaa !44
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %.pre391, i64 %indvars.iv45.i211 ; 3 uses
  %i.abh = load double, ptr %i.abg, align 8, !tbaa !44
  %i.abi = load double, ptr %i.wr, align 8, !tbaa !44
  %i.abj = tail call double @llvm.fmuladd.f64(double %i.abh, double %i.abi, double %i.abf) ; 2 uses
  store double %i.abj, ptr %i.aap, align 8, !tbaa !44
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %.pre393, i64 %indvars.iv45.i211 ; 3 uses
  %i.abl = load double, ptr %i.abk, align 8, !tbaa !44
  %i.abm = load double, ptr %i.ws, align 8, !tbaa !44
  %i.abn = tail call double @llvm.fmuladd.f64(double %i.abl, double %i.abm, double %i.abj)
  store double %i.abn, ptr %i.aap, align 8, !tbaa !44
  %i.abo = getelementptr inbounds nuw i8, ptr %i.yk, i64 32 ; 7 uses
  store double 0.000000e+00, ptr %i.abo, align 8, !tbaa !44
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.wt, i64 %indvars.iv45.i211 ; 3 uses
  %i.abq = load double, ptr %i.abp, align 8, !tbaa !44
  %i.abr = load double, ptr %i.wv, align 8, !tbaa !44
  %i.abs = tail call double @llvm.fmuladd.f64(double %i.abq, double %i.abr, double 0.000000e+00) ; 2 uses
  store double %i.abs, ptr %i.abo, align 8, !tbaa !44
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %indvars.iv45.i211 ; 3 uses
  %i.abu = load double, ptr %i.abt, align 8, !tbaa !44
  %i.abv = load double, ptr %i.wy, align 8, !tbaa !44
  %i.abw = tail call double @llvm.fmuladd.f64(double %i.abu, double %i.abv, double %i.abs) ; 2 uses
  store double %i.abw, ptr %i.abo, align 8, !tbaa !44
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv45.i211 ; 3 uses
  %i.aby = load double, ptr %i.abx, align 8, !tbaa !44
  %i.abz = load double, ptr %i.xb, align 8, !tbaa !44
  %i.aca = tail call double @llvm.fmuladd.f64(double %i.aby, double %i.abz, double %i.abw) ; 2 uses
  store double %i.aca, ptr %i.abo, align 8, !tbaa !44
  %i.acb = load double, ptr %i.abc, align 8, !tbaa !44
  %i.acc = load double, ptr %i.xc, align 8, !tbaa !44
  %i.acd = tail call double @llvm.fmuladd.f64(double %i.acb, double %i.acc, double %i.aca) ; 2 uses
  store double %i.acd, ptr %i.abo, align 8, !tbaa !44
  %i.ace = load double, ptr %i.abg, align 8, !tbaa !44
  %i.acf = load double, ptr %i.xd, align 8, !tbaa !44
  %i.acg = tail call double @llvm.fmuladd.f64(double %i.ace, double %i.acf, double %i.acd) ; 2 uses
  store double %i.acg, ptr %i.abo, align 8, !tbaa !44
  %i.ach = load double, ptr %i.abk, align 8, !tbaa !44
  %i.aci = load double, ptr %i.xe, align 8, !tbaa !44
  %i.acj = tail call double @llvm.fmuladd.f64(double %i.ach, double %i.aci, double %i.acg)
  store double %i.acj, ptr %i.abo, align 8, !tbaa !44
  %i.ack = getelementptr inbounds nuw i8, ptr %i.yk, i64 40 ; 7 uses
  store double 0.000000e+00, ptr %i.ack, align 8, !tbaa !44
  %i.acl = load double, ptr %i.abp, align 8, !tbaa !44
  %i.acm = load double, ptr %i.xf, align 8, !tbaa !44
  %i.acn = tail call double @llvm.fmuladd.f64(double %i.acl, double %i.acm, double 0.000000e+00) ; 2 uses
  store double %i.acn, ptr %i.ack, align 8, !tbaa !44
  %i.aco = load double, ptr %i.abt, align 8, !tbaa !44
  %i.acp = load double, ptr %i.xg, align 8, !tbaa !44
  %i.acq = tail call double @llvm.fmuladd.f64(double %i.aco, double %i.acp, double %i.acn) ; 2 uses
  store double %i.acq, ptr %i.ack, align 8, !tbaa !44
  %i.acr = load double, ptr %i.abx, align 8, !tbaa !44
  %i.acs = load double, ptr %i.xh, align 8, !tbaa !44
  %i.act = tail call double @llvm.fmuladd.f64(double %i.acr, double %i.acs, double %i.acq) ; 2 uses
  store double %i.act, ptr %i.ack, align 8, !tbaa !44
  %i.acu = load double, ptr %i.abc, align 8, !tbaa !44
  %i.acv = load double, ptr %i.xi, align 8, !tbaa !44
  %i.acw = tail call double @llvm.fmuladd.f64(double %i.acu, double %i.acv, double %i.act) ; 2 uses
  store double %i.acw, ptr %i.ack, align 8, !tbaa !44
  %i.acx = load double, ptr %i.abg, align 8, !tbaa !44
  %i.acy = load double, ptr %i.xj, align 8, !tbaa !44
  %i.acz = tail call double @llvm.fmuladd.f64(double %i.acx, double %i.acy, double %i.acw) ; 2 uses
  store double %i.acz, ptr %i.ack, align 8, !tbaa !44
  %i.ada = load double, ptr %i.abk, align 8, !tbaa !44
  %i.adb = load double, ptr %i.xk, align 8, !tbaa !44
  %i.adc = tail call double @llvm.fmuladd.f64(double %i.ada, double %i.adb, double %i.acz)
  store double %i.adc, ptr %i.ack, align 8, !tbaa !44
  %i.add = getelementptr inbounds nuw i8, ptr %i.yk, i64 48 ; 7 uses
  store double 0.000000e+00, ptr %i.add, align 8, !tbaa !44
  %i.ade = load double, ptr %i.abp, align 8, !tbaa !44
  %i.adf = load double, ptr %i.xl, align 8, !tbaa !44
  %i.adg = tail call double @llvm.fmuladd.f64(double %i.ade, double %i.adf, double 0.000000e+00) ; 2 uses
  store double %i.adg, ptr %i.add, align 8, !tbaa !44
  %i.adh = load double, ptr %i.abt, align 8, !tbaa !44
  %i.adi = load double, ptr %i.xm, align 8, !tbaa !44
  %i.adj = tail call double @llvm.fmuladd.f64(double %i.adh, double %i.adi, double %i.adg) ; 2 uses
  store double %i.adj, ptr %i.add, align 8, !tbaa !44
  %i.adk = load double, ptr %i.abx, align 8, !tbaa !44
  %i.adl = load double, ptr %i.xn, align 8, !tbaa !44
  %i.adm = tail call double @llvm.fmuladd.f64(double %i.adk, double %i.adl, double %i.adj) ; 2 uses
  store double %i.adm, ptr %i.add, align 8, !tbaa !44
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %indvars.iv45.i211
  %i.ado = load double, ptr %i.adn, align 8, !tbaa !44
  %i.adp = load double, ptr %i.xq, align 8, !tbaa !44
  %i.adq = tail call double @llvm.fmuladd.f64(double %i.ado, double %i.adp, double %i.adm) ; 2 uses
  store double %i.adq, ptr %i.add, align 8, !tbaa !44
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %i.xr, i64 %indvars.iv45.i211
  %i.ads = load double, ptr %i.adr, align 8, !tbaa !44
  %i.adt = load double, ptr %i.xt, align 8, !tbaa !44
  %i.adu = tail call double @llvm.fmuladd.f64(double %i.ads, double %i.adt, double %i.adq) ; 2 uses
  store double %i.adu, ptr %i.add, align 8, !tbaa !44
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %indvars.iv45.i211
  %i.adw = load double, ptr %i.adv, align 8, !tbaa !44
  %i.adx = load double, ptr %i.xw, align 8, !tbaa !44
  %i.ady = tail call double @llvm.fmuladd.f64(double %i.adw, double %i.adx, double %i.adu)
  store double %i.ady, ptr %i.add, align 8, !tbaa !44
  %indvars.iv.next46.i221 = add nuw nsw i64 %indvars.iv45.i211, 1 ; 2 uses
  %exitcond49.not.i222 = icmp eq i64 %indvars.iv.next46.i221, 7
  br i1 %exitcond49.not.i222, label %.preheader340.preheader, label %.preheader.i210, !llvm.loop !16

.preheader340.preheader:                          ; preds = %.preheader.i210
  %.pre395 = load ptr, ptr %i.dh, align 8, !tbaa !277 ; 7 uses
  %.pre396 = load ptr, ptr %i.dj, align 8, !tbaa !277 ; 7 uses
  %.pre397 = load ptr, ptr %i.dl, align 8, !tbaa !277 ; 7 uses
  %.pre398 = load ptr, ptr %i.dn, align 8, !tbaa !277 ; 7 uses
  %.pre399 = load ptr, ptr %i.dp, align 8, !tbaa !277 ; 7 uses
  %.pre400 = load ptr, ptr %i.dr, align 8, !tbaa !277 ; 7 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %.pre395, i64 8 ; 3 uses
  %i.aea = load double, ptr %i.adz, align 8, !tbaa !44 ; 2 uses
  %5 = tail call double @llvm.fmuladd.f64(double %i.aea, double %i.aea, double 0.000000e+00)
  %i.aeb = getelementptr inbounds nuw i8, ptr %.pre396, i64 8 ; 3 uses
  %i.aec = load double, ptr %i.aeb, align 8, !tbaa !44 ; 2 uses
  %i.aed = tail call double @llvm.fmuladd.f64(double %i.aec, double %i.aec, double %5)
  %i.aee = getelementptr inbounds nuw i8, ptr %.pre397, i64 8 ; 3 uses
  %i.aef = load double, ptr %i.aee, align 8, !tbaa !44 ; 2 uses
  %i.aeg = tail call double @llvm.fmuladd.f64(double %i.aef, double %i.aef, double %i.aed)
  %i.aeh = getelementptr inbounds nuw i8, ptr %.pre398, i64 8 ; 3 uses
  %i.aei = load double, ptr %i.aeh, align 8, !tbaa !44 ; 2 uses
  %i.aej = tail call double @llvm.fmuladd.f64(double %i.aei, double %i.aei, double %i.aeg)
  %i.aek = getelementptr inbounds nuw i8, ptr %.pre399, i64 8 ; 3 uses
  %i.ael = load double, ptr %i.aek, align 8, !tbaa !44 ; 2 uses
  %i.aem = tail call double @llvm.fmuladd.f64(double %i.ael, double %i.ael, double %i.aej)
  %i.aen = getelementptr inbounds nuw i8, ptr %.pre400, i64 8 ; 3 uses
  %i.aeo = load double, ptr %i.aen, align 8, !tbaa !44 ; 2 uses
  %i.aep = tail call double @llvm.fmuladd.f64(double %i.aeo, double %i.aeo, double %i.aem)
  %i.aeq = tail call double @sqrt(double noundef %i.aep) #42 ; 6 uses
  %i.aer = load double, ptr %i.adz, align 8, !tbaa !44
  %i.aes = fdiv double %i.aer, %i.aeq
  store double %i.aes, ptr %i.adz, align 8, !tbaa !44
  %i.aet = load double, ptr %i.aeb, align 8, !tbaa !44
  %i.aeu = fdiv double %i.aet, %i.aeq
  store double %i.aeu, ptr %i.aeb, align 8, !tbaa !44
  %i.aev = load double, ptr %i.aee, align 8, !tbaa !44
  %i.aew = fdiv double %i.aev, %i.aeq
  store double %i.aew, ptr %i.aee, align 8, !tbaa !44
  %i.aex = load double, ptr %i.aeh, align 8, !tbaa !44
  %i.aey = fdiv double %i.aex, %i.aeq
  store double %i.aey, ptr %i.aeh, align 8, !tbaa !44
  %i.aez = load double, ptr %i.aek, align 8, !tbaa !44
  %i.afa = fdiv double %i.aez, %i.aeq
  store double %i.afa, ptr %i.aek, align 8, !tbaa !44
  %i.afb = load double, ptr %i.aen, align 8, !tbaa !44
  %i.afc = fdiv double %i.afb, %i.aeq
  store double %i.afc, ptr %i.aen, align 8, !tbaa !44
  %i.afd = getelementptr inbounds nuw i8, ptr %.pre395, i64 16 ; 3 uses
  %i.afe = load double, ptr %i.afd, align 8, !tbaa !44 ; 2 uses
  %6 = tail call double @llvm.fmuladd.f64(double %i.afe, double %i.afe, double 0.000000e+00)
  %i.aff = getelementptr inbounds nuw i8, ptr %.pre396, i64 16 ; 3 uses
  %i.afg = load double, ptr %i.aff, align 8, !tbaa !44 ; 2 uses
  %i.afh = tail call double @llvm.fmuladd.f64(double %i.afg, double %i.afg, double %6)
  %i.afi = getelementptr inbounds nuw i8, ptr %.pre397, i64 16 ; 3 uses
  %i.afj = load double, ptr %i.afi, align 8, !tbaa !44 ; 2 uses
  %i.afk = tail call double @llvm.fmuladd.f64(double %i.afj, double %i.afj, double %i.afh)
  %i.afl = getelementptr inbounds nuw i8, ptr %.pre398, i64 16 ; 3 uses
  %i.afm = load double, ptr %i.afl, align 8, !tbaa !44 ; 2 uses
  %i.afn = tail call double @llvm.fmuladd.f64(double %i.afm, double %i.afm, double %i.afk)
  %i.afo = getelementptr inbounds nuw i8, ptr %.pre399, i64 16 ; 3 uses
  %i.afp = load double, ptr %i.afo, align 8, !tbaa !44 ; 2 uses
  %i.afq = tail call double @llvm.fmuladd.f64(double %i.afp, double %i.afp, double %i.afn)
  %i.afr = getelementptr inbounds nuw i8, ptr %.pre400, i64 16 ; 3 uses
  %i.afs = load double, ptr %i.afr, align 8, !tbaa !44 ; 2 uses
  %i.aft = tail call double @llvm.fmuladd.f64(double %i.afs, double %i.afs, double %i.afq)
  %i.afu = tail call double @sqrt(double noundef %i.aft) #42 ; 6 uses
  %i.afv = load double, ptr %i.afd, align 8, !tbaa !44
  %i.afw = fdiv double %i.afv, %i.afu
  store double %i.afw, ptr %i.afd, align 8, !tbaa !44
  %i.afx = load double, ptr %i.aff, align 8, !tbaa !44
  %i.afy = fdiv double %i.afx, %i.afu
  store double %i.afy, ptr %i.aff, align 8, !tbaa !44
  %i.afz = load double, ptr %i.afi, align 8, !tbaa !44
  %i.aga = fdiv double %i.afz, %i.afu
  store double %i.aga, ptr %i.afi, align 8, !tbaa !44
  %i.agb = load double, ptr %i.afl, align 8, !tbaa !44
  %i.agc = fdiv double %i.agb, %i.afu
  store double %i.agc, ptr %i.afl, align 8, !tbaa !44
  %i.agd = load double, ptr %i.afo, align 8, !tbaa !44
  %i.age = fdiv double %i.agd, %i.afu
  store double %i.age, ptr %i.afo, align 8, !tbaa !44
  %i.agf = load double, ptr %i.afr, align 8, !tbaa !44
  %i.agg = fdiv double %i.agf, %i.afu
  store double %i.agg, ptr %i.afr, align 8, !tbaa !44
  %i.agh = getelementptr inbounds nuw i8, ptr %.pre395, i64 24 ; 3 uses
  %i.agi = load double, ptr %i.agh, align 8, !tbaa !44 ; 2 uses
  %7 = tail call double @llvm.fmuladd.f64(double %i.agi, double %i.agi, double 0.000000e+00)
  %i.agj = getelementptr inbounds nuw i8, ptr %.pre396, i64 24 ; 3 uses
  %i.agk = load double, ptr %i.agj, align 8, !tbaa !44 ; 2 uses
  %i.agl = tail call double @llvm.fmuladd.f64(double %i.agk, double %i.agk, double %7)
  %i.agm = getelementptr inbounds nuw i8, ptr %.pre397, i64 24 ; 3 uses
  %i.agn = load double, ptr %i.agm, align 8, !tbaa !44 ; 2 uses
  %i.ago = tail call double @llvm.fmuladd.f64(double %i.agn, double %i.agn, double %i.agl)
  %i.agp = getelementptr inbounds nuw i8, ptr %.pre398, i64 24 ; 3 uses
  %i.agq = load double, ptr %i.agp, align 8, !tbaa !44 ; 2 uses
  %i.agr = tail call double @llvm.fmuladd.f64(double %i.agq, double %i.agq, double %i.ago)
  %i.ags = getelementptr inbounds nuw i8, ptr %.pre399, i64 24 ; 3 uses
  %i.agt = load double, ptr %i.ags, align 8, !tbaa !44 ; 2 uses
  %i.agu = tail call double @llvm.fmuladd.f64(double %i.agt, double %i.agt, double %i.agr)
  %i.agv = getelementptr inbounds nuw i8, ptr %.pre400, i64 24 ; 3 uses
  %i.agw = load double, ptr %i.agv, align 8, !tbaa !44 ; 2 uses
  %i.agx = tail call double @llvm.fmuladd.f64(double %i.agw, double %i.agw, double %i.agu)
  %i.agy = tail call double @sqrt(double noundef %i.agx) #42 ; 6 uses
  %i.agz = load double, ptr %i.agh, align 8, !tbaa !44
  %i.aha = fdiv double %i.agz, %i.agy
  store double %i.aha, ptr %i.agh, align 8, !tbaa !44
  %i.ahb = load double, ptr %i.agj, align 8, !tbaa !44
  %i.ahc = fdiv double %i.ahb, %i.agy
  store double %i.ahc, ptr %i.agj, align 8, !tbaa !44
  %i.ahd = load double, ptr %i.agm, align 8, !tbaa !44
  %i.ahe = fdiv double %i.ahd, %i.agy
  store double %i.ahe, ptr %i.agm, align 8, !tbaa !44
  %i.ahf = load double, ptr %i.agp, align 8, !tbaa !44
  %i.ahg = fdiv double %i.ahf, %i.agy
  store double %i.ahg, ptr %i.agp, align 8, !tbaa !44
  %i.ahh = load double, ptr %i.ags, align 8, !tbaa !44
  %i.ahi = fdiv double %i.ahh, %i.agy
  store double %i.ahi, ptr %i.ags, align 8, !tbaa !44
  %i.ahj = load double, ptr %i.agv, align 8, !tbaa !44
  %i.ahk = fdiv double %i.ahj, %i.agy
  store double %i.ahk, ptr %i.agv, align 8, !tbaa !44
  %i.ahl = getelementptr inbounds nuw i8, ptr %.pre395, i64 32 ; 3 uses
  %i.ahm = load double, ptr %i.ahl, align 8, !tbaa !44 ; 2 uses
  %8 = tail call double @llvm.fmuladd.f64(double %i.ahm, double %i.ahm, double 0.000000e+00)
  %i.ahn = getelementptr inbounds nuw i8, ptr %.pre396, i64 32 ; 3 uses
  %i.aho = load double, ptr %i.ahn, align 8, !tbaa !44 ; 2 uses
  %i.ahp = tail call double @llvm.fmuladd.f64(double %i.aho, double %i.aho, double %8)
  %i.ahq = getelementptr inbounds nuw i8, ptr %.pre397, i64 32 ; 3 uses
  %i.ahr = load double, ptr %i.ahq, align 8, !tbaa !44 ; 2 uses
  %i.ahs = tail call double @llvm.fmuladd.f64(double %i.ahr, double %i.ahr, double %i.ahp)
  %i.aht = getelementptr inbounds nuw i8, ptr %.pre398, i64 32 ; 3 uses
  %i.ahu = load double, ptr %i.aht, align 8, !tbaa !44 ; 2 uses
  %i.ahv = tail call double @llvm.fmuladd.f64(double %i.ahu, double %i.ahu, double %i.ahs)
  %i.ahw = getelementptr inbounds nuw i8, ptr %.pre399, i64 32 ; 3 uses
  %i.ahx = load double, ptr %i.ahw, align 8, !tbaa !44 ; 2 uses
  %i.ahy = tail call double @llvm.fmuladd.f64(double %i.ahx, double %i.ahx, double %i.ahv)
  %i.ahz = getelementptr inbounds nuw i8, ptr %.pre400, i64 32 ; 3 uses
  %i.aia = load double, ptr %i.ahz, align 8, !tbaa !44 ; 2 uses
  %i.aib = tail call double @llvm.fmuladd.f64(double %i.aia, double %i.aia, double %i.ahy)
  %i.aic = tail call double @sqrt(double noundef %i.aib) #42 ; 6 uses
  %i.aid = load double, ptr %i.ahl, align 8, !tbaa !44
  %i.aie = fdiv double %i.aid, %i.aic
  store double %i.aie, ptr %i.ahl, align 8, !tbaa !44
  %i.aif = load double, ptr %i.ahn, align 8, !tbaa !44
  %i.aig = fdiv double %i.aif, %i.aic
  store double %i.aig, ptr %i.ahn, align 8, !tbaa !44
  %i.aih = load double, ptr %i.ahq, align 8, !tbaa !44
  %i.aii = fdiv double %i.aih, %i.aic
  store double %i.aii, ptr %i.ahq, align 8, !tbaa !44
  %i.aij = load double, ptr %i.aht, align 8, !tbaa !44
  %i.aik = fdiv double %i.aij, %i.aic
  store double %i.aik, ptr %i.aht, align 8, !tbaa !44
  %i.ail = load double, ptr %i.ahw, align 8, !tbaa !44
  %i.aim = fdiv double %i.ail, %i.aic
  store double %i.aim, ptr %i.ahw, align 8, !tbaa !44
  %i.ain = load double, ptr %i.ahz, align 8, !tbaa !44
  %i.aio = fdiv double %i.ain, %i.aic
  store double %i.aio, ptr %i.ahz, align 8, !tbaa !44
  %i.aip = getelementptr inbounds nuw i8, ptr %.pre395, i64 40 ; 3 uses
  %i.aiq = load double, ptr %i.aip, align 8, !tbaa !44 ; 2 uses
  %9 = tail call double @llvm.fmuladd.f64(double %i.aiq, double %i.aiq, double 0.000000e+00)
  %i.air = getelementptr inbounds nuw i8, ptr %.pre396, i64 40 ; 3 uses
  %i.ais = load double, ptr %i.air, align 8, !tbaa !44 ; 2 uses
  %i.ait = tail call double @llvm.fmuladd.f64(double %i.ais, double %i.ais, double %9)
  %i.aiu = getelementptr inbounds nuw i8, ptr %.pre397, i64 40 ; 3 uses
  %i.aiv = load double, ptr %i.aiu, align 8, !tbaa !44 ; 2 uses
  %i.aiw = tail call double @llvm.fmuladd.f64(double %i.aiv, double %i.aiv, double %i.ait)
  %i.aix = getelementptr inbounds nuw i8, ptr %.pre398, i64 40 ; 3 uses
  %i.aiy = load double, ptr %i.aix, align 8, !tbaa !44 ; 2 uses
  %i.aiz = tail call double @llvm.fmuladd.f64(double %i.aiy, double %i.aiy, double %i.aiw)
  %i.aja = getelementptr inbounds nuw i8, ptr %.pre399, i64 40 ; 3 uses
  %i.ajb = load double, ptr %i.aja, align 8, !tbaa !44 ; 2 uses
  %i.ajc = tail call double @llvm.fmuladd.f64(double %i.ajb, double %i.ajb, double %i.aiz)
  %i.ajd = getelementptr inbounds nuw i8, ptr %.pre400, i64 40 ; 3 uses
  %i.aje = load double, ptr %i.ajd, align 8, !tbaa !44 ; 2 uses
  %i.ajf = tail call double @llvm.fmuladd.f64(double %i.aje, double %i.aje, double %i.ajc)
  %i.ajg = tail call double @sqrt(double noundef %i.ajf) #42 ; 6 uses
  %i.ajh = load double, ptr %i.aip, align 8, !tbaa !44
  %i.aji = fdiv double %i.ajh, %i.ajg
  store double %i.aji, ptr %i.aip, align 8, !tbaa !44
  %i.ajj = load double, ptr %i.air, align 8, !tbaa !44
  %i.ajk = fdiv double %i.ajj, %i.ajg
  store double %i.ajk, ptr %i.air, align 8, !tbaa !44
  %i.ajl = load double, ptr %i.aiu, align 8, !tbaa !44
  %i.ajm = fdiv double %i.ajl, %i.ajg
  store double %i.ajm, ptr %i.aiu, align 8, !tbaa !44
  %i.ajn = load double, ptr %i.aix, align 8, !tbaa !44
  %i.ajo = fdiv double %i.ajn, %i.ajg
  store double %i.ajo, ptr %i.aix, align 8, !tbaa !44
  %i.ajp = load double, ptr %i.aja, align 8, !tbaa !44
  %i.ajq = fdiv double %i.ajp, %i.ajg
  store double %i.ajq, ptr %i.aja, align 8, !tbaa !44
  %i.ajr = load double, ptr %i.ajd, align 8, !tbaa !44
  %i.ajs = fdiv double %i.ajr, %i.ajg
  store double %i.ajs, ptr %i.ajd, align 8, !tbaa !44
  %i.ajt = getelementptr inbounds nuw i8, ptr %.pre395, i64 48 ; 3 uses
  %i.aju = load double, ptr %i.ajt, align 8, !tbaa !44 ; 2 uses
  %10 = tail call double @llvm.fmuladd.f64(double %i.aju, double %i.aju, double 0.000000e+00)
  %i.ajv = getelementptr inbounds nuw i8, ptr %.pre396, i64 48 ; 3 uses
  %i.ajw = load double, ptr %i.ajv, align 8, !tbaa !44 ; 2 uses
  %i.ajx = tail call double @llvm.fmuladd.f64(double %i.ajw, double %i.ajw, double %10)
  %i.ajy = getelementptr inbounds nuw i8, ptr %.pre397, i64 48 ; 3 uses
  %i.ajz = load double, ptr %i.ajy, align 8, !tbaa !44 ; 2 uses
  %i.aka = tail call double @llvm.fmuladd.f64(double %i.ajz, double %i.ajz, double %i.ajx)
  %i.akb = getelementptr inbounds nuw i8, ptr %.pre398, i64 48 ; 3 uses
  %i.akc = load double, ptr %i.akb, align 8, !tbaa !44 ; 2 uses
  %i.akd = tail call double @llvm.fmuladd.f64(double %i.akc, double %i.akc, double %i.aka)
  %i.ake = getelementptr inbounds nuw i8, ptr %.pre399, i64 48 ; 3 uses
  %i.akf = load double, ptr %i.ake, align 8, !tbaa !44 ; 2 uses
  %i.akg = tail call double @llvm.fmuladd.f64(double %i.akf, double %i.akf, double %i.akd)
  %i.akh = getelementptr inbounds nuw i8, ptr %.pre400, i64 48 ; 3 uses
  %i.aki = load double, ptr %i.akh, align 8, !tbaa !44 ; 2 uses
  %i.akj = tail call double @llvm.fmuladd.f64(double %i.aki, double %i.aki, double %i.akg)
  %i.akk = tail call double @sqrt(double noundef %i.akj) #42 ; 6 uses
  %i.akl = load double, ptr %i.ajt, align 8, !tbaa !44
  %i.akm = fdiv double %i.akl, %i.akk
  store double %i.akm, ptr %i.ajt, align 8, !tbaa !44
  %i.akn = load double, ptr %i.ajv, align 8, !tbaa !44
  %i.ako = fdiv double %i.akn, %i.akk
  store double %i.ako, ptr %i.ajv, align 8, !tbaa !44
  %i.akp = load double, ptr %i.ajy, align 8, !tbaa !44
  %i.akq = fdiv double %i.akp, %i.akk
  store double %i.akq, ptr %i.ajy, align 8, !tbaa !44
  %i.akr = load double, ptr %i.akb, align 8, !tbaa !44
  %i.aks = fdiv double %i.akr, %i.akk
  store double %i.aks, ptr %i.akb, align 8, !tbaa !44
  %i.akt = load double, ptr %i.ake, align 8, !tbaa !44
  %i.aku = fdiv double %i.akt, %i.akk
  store double %i.aku, ptr %i.ake, align 8, !tbaa !44
  %i.akv = load double, ptr %i.akh, align 8, !tbaa !44
  %i.akw = fdiv double %i.akv, %i.akk
  store double %i.akw, ptr %i.akh, align 8, !tbaa !44
  switch i32 %4, label %.lr.ph.i281.preheader [
    i32 0, label %.preheader336.preheader
    i32 1, label %.preheader337.preheader
  ]

.preheader341:                                    ; preds = %bb.c, %.preheader341
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader341 ], [ 1, %bb.c ] ; 3 uses
  %i.akx = add nsw i64 %indvars.iv, -1            ; 2 uses
  %i.aky = getelementptr inbounds [8 x i8], ptr %0, i64 %i.akx
  %i.akz = load double, ptr %i.aky, align 8, !tbaa !44 ; 4 uses
  %i.ala = getelementptr inbounds [8 x i8], ptr %1, i64 %i.akx
  %i.alb = load double, ptr %i.ala, align 8, !tbaa !44 ; 4 uses
  %i.alc = fmul double %i.akz, %i.akz
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !277 ; 6 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  store double %i.alc, ptr %i.alf, align 8, !tbaa !44
  %i.alg = fmul double %i.akz, %i.alb
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ale, i64 16
  store double %i.alg, ptr %i.alh, align 8, !tbaa !44
  %i.ali = fmul double %i.alb, %i.alb
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ale, i64 24
  store double %i.ali, ptr %i.alj, align 8, !tbaa !44
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ale, i64 32
  store double %i.akz, ptr %i.alk, align 8, !tbaa !44
  %i.all = getelementptr inbounds nuw i8, ptr %i.ale, i64 40
  store double %i.alb, ptr %i.all, align 8, !tbaa !44
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ale, i64 48
  store double 1.000000e+00, ptr %i.alm, align 8, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.preheader.i.preheader, label %.preheader341, !llvm.loop !552

.preheader.i.preheader:                           ; preds = %.preheader341
  %i.aln = add nsw i64 %i.b, -1                   ; 18 uses
  %i.alo = add nsw i64 %i.b, -2                   ; 6 uses
  %xtraiter = and i64 %i.aln, 1
  %i.alp = icmp eq i64 %i.alo, 0
  %unroll_iter = and i64 %i.aln, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod528 = trunc i64 %i.aln to i1
  %xtraiter533 = and i64 %i.aln, 1
  %i.alq = icmp eq i64 %i.alo, 0
  %unroll_iter538 = and i64 %i.aln, -2
  %lcmp.mod536.not = icmp eq i64 %xtraiter533, 0
  %lcmp.mod537 = trunc i64 %i.aln to i1
  %xtraiter541 = and i64 %i.aln, 1
  %i.alr = icmp eq i64 %i.alo, 0
  %unroll_iter546 = and i64 %i.aln, -2
  %lcmp.mod544.not = icmp eq i64 %xtraiter541, 0
  %lcmp.mod545 = trunc i64 %i.aln to i1
  %xtraiter549 = and i64 %i.aln, 1
  %i.als = icmp eq i64 %i.alo, 0
  %unroll_iter554 = and i64 %i.aln, -2
  %lcmp.mod552.not = icmp eq i64 %xtraiter549, 0
  %lcmp.mod553 = trunc i64 %i.aln to i1
  %xtraiter557 = and i64 %i.aln, 1
  %i.alt = icmp eq i64 %i.alo, 0
  %unroll_iter562 = and i64 %i.aln, -2
  %lcmp.mod560.not = icmp eq i64 %xtraiter557, 0
  %lcmp.mod561 = trunc i64 %i.aln to i1
  %xtraiter565 = and i64 %i.aln, 1
  %i.alu = icmp eq i64 %i.alo, 0
  %unroll_iter570 = and i64 %i.aln, -2
  %lcmp.mod568.not = icmp eq i64 %xtraiter565, 0
  %lcmp.mod569 = trunc i64 %i.aln to i1
  br label %.preheader.i

.lr.ph.i281.preheader:                            ; preds = %.loopexit, %.preheader340.preheader
  br label %.lr.ph.i281

.preheader337.preheader:                          ; preds = %.preheader340.preheader
  %i.alv = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.alw = load <2 x double>, ptr %i.alv, align 8, !tbaa !44 ; 2 uses
  %i.alx = fcmp olt <2 x double> %i.alw, zeroinitializer
  %i.aly = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.alw)
  %i.alz = fcmp ogt <2 x double> %i.aly, splat (double f0x3BFD83C94FB6D2AC)
  %i.ama = and <2 x i1> %i.alx, %i.alz            ; 2 uses
  %i.amb = extractelement <2 x i1> %i.ama, i64 0
  %.3 = zext i1 %i.amb to i32
  %i.amc = extractelement <2 x i1> %i.ama, i64 1
  %.3.1 = select i1 %i.amc, i32 2, i32 %.3
  %i.amd = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.ame = load <2 x double>, ptr %i.amd, align 8, !tbaa !44 ; 2 uses
  %i.amf = fcmp olt <2 x double> %i.ame, zeroinitializer
  %i.amg = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ame)
  %i.amh = fcmp ogt <2 x double> %i.amg, splat (double f0x3BFD83C94FB6D2AC)
  %i.ami = and <2 x i1> %i.amf, %i.amh            ; 2 uses
  %i.amj = extractelement <2 x i1> %i.ami, i64 0
  %.3.2 = select i1 %i.amj, i32 3, i32 %.3.1
  %i.amk = extractelement <2 x i1> %i.ami, i64 1
  %.3.3 = select i1 %i.amk, i32 4, i32 %.3.2
  %i.aml = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.amm = load <2 x double>, ptr %i.aml, align 8, !tbaa !44 ; 2 uses
  %i.amn = fcmp olt <2 x double> %i.amm, zeroinitializer
  %i.amo = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.amm)
  %i.amp = fcmp ogt <2 x double> %i.amo, splat (double f0x3BFD83C94FB6D2AC)
  %i.amq = and <2 x i1> %i.amn, %i.amp            ; 2 uses
  %i.amr = extractelement <2 x i1> %i.amq, i64 0
  %.3.4 = select i1 %i.amr, i32 5, i32 %.3.3
  %i.ams = extractelement <2 x i1> %i.amq, i64 1
  br i1 %i.ams, label %.preheader, label %.loopexit

.preheader336.preheader:                          ; preds = %.preheader340.preheader
  %i.amt = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.amu = load <2 x double>, ptr %i.amt, align 8, !tbaa !44 ; 2 uses
  %i.amv = fcmp olt <2 x double> %i.amu, splat (double 1.000000e+21)
  %i.amw = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.amu)
  %i.amx = fcmp ogt <2 x double> %i.amw, splat (double f0x3BFD83C94FB6D2AC)
  %i.amy = and <2 x i1> %i.amv, %i.amx            ; 2 uses
  %i.amz = extractelement <2 x i1> %i.amy, i64 0
  %.1123 = zext i1 %i.amz to i32
  %i.ana = extractelement <2 x i1> %i.amy, i64 1
  %.1123.1 = select i1 %i.ana, i32 2, i32 %.1123
  %i.anb = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.anc = load <2 x double>, ptr %i.anb, align 8, !tbaa !44 ; 2 uses
  %i.and = fcmp olt <2 x double> %i.anc, splat (double 1.000000e+21)
  %i.ane = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.anc)
  %i.anf = fcmp ogt <2 x double> %i.ane, splat (double f0x3BFD83C94FB6D2AC)
  %i.ang = and <2 x i1> %i.and, %i.anf            ; 2 uses
  %i.anh = extractelement <2 x i1> %i.ang, i64 0
  %.1123.2 = select i1 %i.anh, i32 3, i32 %.1123.1
  %i.ani = extractelement <2 x i1> %i.ang, i64 1
  %.1123.3 = select i1 %i.ani, i32 4, i32 %.1123.2
  %i.anj = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.ank = load <2 x double>, ptr %i.anj, align 8, !tbaa !44 ; 2 uses
  %i.anl = fcmp olt <2 x double> %i.ank, splat (double 1.000000e+21)
  %i.anm = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ank)
  %i.ann = fcmp ogt <2 x double> %i.anm, splat (double f0x3BFD83C94FB6D2AC)
  %i.ano = and <2 x i1> %i.anl, %i.ann            ; 2 uses
  %i.anp = extractelement <2 x i1> %i.ano, i64 0
  %.1123.4 = select i1 %i.anp, i32 5, i32 %.1123.3
  %i.anq = extractelement <2 x i1> %i.ano, i64 1
  br i1 %i.anq, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader337.preheader, %.preheader336.preheader
  %.4 = phi i32 [ %.1123.4, %.preheader336.preheader ], [ %.3.4, %.preheader337.preheader ] ; 2 uses
  %.not335 = icmp eq i32 %.4, 0
  br i1 %.not335, label %.lr.ph.i281.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader337.preheader, %.preheader336.preheader, %.loopexit
  %.4518 = phi i32 [ %.4, %.loopexit ], [ 6, %.preheader336.preheader ], [ 6, %.preheader337.preheader ]
  %i.anr = zext nneg i32 %.4518 to i64            ; 6 uses
  %i.ans = getelementptr inbounds nuw [8 x i8], ptr %.pre395, i64 %i.anr
  %i.ant = load double, ptr %i.ans, align 8, !tbaa !44
  %i.anu = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.ant, ptr %i.anu, align 8, !tbaa !44
  %i.anv = getelementptr inbounds nuw [8 x i8], ptr %.pre396, i64 %i.anr
  %i.anw = load double, ptr %i.anv, align 8, !tbaa !44
  %i.anx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.anw, ptr %i.anx, align 8, !tbaa !44
  %i.any = getelementptr inbounds nuw [8 x i8], ptr %.pre397, i64 %i.anr
  %i.anz = load double, ptr %i.any, align 8, !tbaa !44
  %i.aoa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.anz, ptr %i.aoa, align 8, !tbaa !44
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %.pre398, i64 %i.anr
  %i.aoc = load double, ptr %i.aob, align 8, !tbaa !44
  %i.aod = getelementptr inbounds nuw i8, ptr %3, i64 32
  store double %i.aoc, ptr %i.aod, align 8, !tbaa !44
  %i.aoe = getelementptr inbounds nuw [8 x i8], ptr %.pre399, i64 %i.anr
  %i.aof = load double, ptr %i.aoe, align 8, !tbaa !44
  %i.aog = getelementptr inbounds nuw i8, ptr %3, i64 40
  store double %i.aof, ptr %i.aog, align 8, !tbaa !44
  %i.aoh = getelementptr inbounds nuw [8 x i8], ptr %.pre400, i64 %i.anr
  %i.aoi = load double, ptr %i.aoh, align 8, !tbaa !44
  %i.aoj = getelementptr inbounds nuw i8, ptr %3, i64 48
end_hunk_0
