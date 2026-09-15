Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/geodsigntest?download=true
inline.NumInlined: 458
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumUnrolled: 76
begin_hunk_0_@geod_geninverse_int:bb.a
  br i1 %i.yh, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.yi = fdiv double %i.sh, %i.se
  %i.yj = fdiv double %.0229, %.0232
  %i.yk = fcmp olt double %i.yi, %i.yj
  br i1 %i.yk, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  br label %bb.bx

bb.bx:                                            ; preds = %bb.br, %bb.bs, %bb.bt, %bb.bv, %bb.bw
  %.1233 = phi double [ %.0232, %bb.bt ], [ %i.se, %bb.bw ], [ %.0232, %bb.bv ], [ %.0232, %bb.bs ], [ %.0232, %bb.br ] ; 2 uses
  %.1227 = phi double [ %.0226, %bb.bt ], [ %.0226, %bb.bw ], [ %.0226, %bb.bv ], [ %i.se, %bb.bs ], [ %i.se, %bb.br ] ; 2 uses
  %i.yl = phi <2 x double> [ %i.sc, %bb.bt ], [ %i.sb, %bb.bw ], [ %i.sc, %bb.bv ], [ %i.sc, %bb.bs ], [ %i.sc, %bb.br ] ; 4 uses
  %i.ym = phi <2 x double> [ %i.sd, %bb.bt ], [ %i.sd, %bb.bw ], [ %i.sd, %bb.bv ], [ %i.sb, %bb.bs ], [ %i.sb, %bb.br ] ; 4 uses
  %i.yn = extractelement <2 x double> %i.ym, i64 1
  %i.yo = extractelement <2 x double> %i.yl, i64 1
  %i.yp = fcmp ogt double %.0439, 0.000000e+00
  %or.cond8 = select i1 %i.sg, i1 %i.yp, i1 false
  br i1 %or.cond8, label %bb.by, label %.thread498

bb.by:                                            ; preds = %bb.bx
  %i.yq = fneg double %i.xu
  %i.yr = fdiv double %i.yq, %.0439               ; 3 uses
  %i.ys = call double @llvm.fabs.f64(double %i.yr)
  %i.yt = fcmp olt double %i.ys, %i.qy
  br i1 %i.yt, label %bb.bz, label %.thread498

bb.bz:                                            ; preds = %bb.by
  %i.yu = call double @sin(double noundef %i.yr) #17 ; 2 uses
  %i.yv = call double @cos(double noundef %i.yr) #17 ; 2 uses
  %i.yw = fmul double %i.sh, %i.yu
  %i.yx = call double @llvm.fmuladd.f64(double %i.se, double %i.yv, double %i.yw) ; 3 uses
  %i.yy = fcmp ule double %i.yx, 0.000000e+00
  br i1 %i.yy, label %.thread498, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.yz = fneg double %i.yu
  %i.za = fmul double %i.se, %i.yz
  %i.zb = call double @llvm.fmuladd.f64(double %i.sh, double %i.yv, double %i.za) ; 2 uses
  %i.zc = call double @hypot(double noundef %i.yx, double noundef %i.zb) #17
  %i.zd = insertelement <2 x double> poison, double %i.zc, i64 0
  %i.ze = shufflevector <2 x double> %i.zd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zf = insertelement <2 x double> poison, double %i.yx, i64 0
  %i.zg = insertelement <2 x double> %i.zf, double %i.zb, i64 1
  %i.zh = fdiv <2 x double> %i.zg, %i.ze
  %i.zi = fcmp ole double %i.xv, %i.qz
  %i.zj = zext i1 %i.zi to i32
  br label %bb.cc

.thread498:                                       ; preds = %bb.bz, %bb.by, %bb.bx
  %i.zk = fadd <2 x double> %i.yl, %i.ym
  %i.zl = fmul <2 x double> %i.zk, splat (double 5.000000e-01) ; 3 uses
  %i.zm = extractelement <2 x double> %i.zl, i64 0
  %i.zn = extractelement <2 x double> %i.zl, i64 1
  %i.zo = call double @hypot(double noundef %i.zm, double noundef %i.zn) #17
  %i.zp = insertelement <2 x double> poison, double %i.zo, i64 0
  %i.zq = shufflevector <2 x double> %i.zp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zr = fdiv <2 x double> %i.zl, %i.zq          ; 5 uses
  %i.zs = extractelement <2 x double> %i.zr, i64 0
  %i.zt = fsub double %.1233, %i.zs
  %i.zu = call double @llvm.fabs.f64(double %i.zt)
  %foldExtExtBinop651 = fsub <2 x double> %i.yl, %i.zr
  %i.zv = extractelement <2 x double> %foldExtExtBinop651, i64 1
  %i.zw = fadd double %i.zv, %i.zu
  %i.zx = fcmp olt double %i.zw, %i.ra
  br i1 %i.zx, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.thread498
  %i.zy = insertelement <2 x double> %i.ym, double %.1227, i64 0
  %i.zz = fsub <2 x double> %i.zr, %i.zy          ; 2 uses
  %i.aaa = extractelement <2 x double> %i.zz, i64 0
  %i.aab = call double @llvm.fabs.f64(double %i.aaa)
  %i.aac = extractelement <2 x double> %i.zz, i64 1
  %i.aad = fadd double %i.aac, %i.aab
  %i.aae = fcmp olt double %i.aad, %i.ra
  %i.aaf = zext i1 %i.aae to i32
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb, %.thread498
  %.4.ph = phi i32 [ %i.zj, %bb.ca ], [ 0, %bb.cb ], [ 0, %.thread498 ]
  %.1219.ph = phi i32 [ 0, %bb.ca ], [ %i.aaf, %bb.cb ], [ 1, %.thread498 ]
  %i.aag = phi <2 x double> [ %i.zh, %bb.ca ], [ %i.zr, %bb.cb ], [ %i.zr, %.thread498 ]
  %i.aah = add i32 %.0235, 1
  br label %bb.bk

bb.cd:                                            ; preds = %bb.bp, %Lambda12.exit
  %i.aai = fdiv double %i.sj, %.0476
  %i.aaj = select i1 %i.pl, double %i.aai, double %i.se ; 2 uses
  %.9 = select i1 %i.u, ptr %i.m, ptr null
  %i.aak = select i1 %i.u, ptr %i.n, ptr null
  call fastcc void @Lengths(ptr noundef nonnull %0, double noundef %i.uo, double noundef %i.ud, double noundef %i.sp, double noundef %i.sq, double noundef %i.et, double noundef %i.tg, double noundef %i.sz, double noundef %i.ev, double noundef %i.dg, double noundef %.0476, ptr noundef nonnull %i.p, ptr noundef %i.q, ptr noundef null, ptr noundef %.9, ptr noundef %i.aak, ptr noundef %i.r)
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aam = load double, ptr %i.aal, align 8, !tbaa !16 ; 2 uses
  %i.aan = load double, ptr %i.q, align 8, !tbaa !10
  %i.aao = fmul double %i.aam, %i.aan             ; 2 uses
  %i.aap = load double, ptr %i.p, align 8, !tbaa !10
  %i.aaq = fmul double %i.aam, %i.aap             ; 2 uses
  %i.aar = load double, ptr @degree, align 8, !tbaa !10
  %i.aas = fdiv double %i.ud, %i.aar              ; 2 uses
  br i1 %.not274, label %.thread523, label %.thread541

.thread523:                                       ; preds = %bb.cd
  %i.aat = fadd double %i.aaq, 0.000000e+00
  %.0211532 = select i1 %.not, double 0.000000e+00, double %i.aat
  %i.aau = fadd double %i.aao, 0.000000e+00
  %.0212533 = select i1 %.not273, double 0.000000e+00, double %i.aau
  %i.aav = insertelement <2 x double> poison, double %i.aaj, i64 0
  %i.aaw = insertelement <2 x double> %i.aav, double %i.sw, i64 1
  br label %bb.cm

.thread541:                                       ; preds = %bb.cd
  %i.aax = call double @sin(double noundef %i.xk) #17 ; 2 uses
  %i.aay = call double @cos(double noundef %i.xk) #17
  %i.aaz = fneg double %i.aax
  %i.aba = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.abb = insertelement <2 x double> %i.aba, double %.1475, i64 1 ; 2 uses
  %i.abc = insertelement <2 x double> poison, double %i.aaz, i64 0
  %i.abd = insertelement <2 x double> %i.abc, double %i.aax, i64 1
  %i.abe = fmul <2 x double> %i.abb, %i.abd
  %i.abf = shufflevector <2 x double> %i.abb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.abg = insertelement <2 x double> poison, double %i.aay, i64 0
  %i.abh = shufflevector <2 x double> %i.abg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abf, <2 x double> %i.abh, <2 x double> %i.abe)
  %i.abj = fadd double %i.aaq, 0.000000e+00
  %.0211550 = select i1 %.not, double 0.000000e+00, double %i.abj
  %i.abk = fadd double %i.aao, 0.000000e+00
  %.0212551 = select i1 %.not273, double 0.000000e+00, double %i.abk
  %i.abl = insertelement <2 x double> poison, double %i.aaj, i64 0
  %i.abm = insertelement <2 x double> %i.abl, double %i.sw, i64 1
  br label %bb.cf

bb.ce:                                            ; preds = %.thread, %bb.bj, %bb.ae
  %i.abn = phi double [ %i.fz, %.thread ], [ %i.rt, %bb.bj ], [ %i.gr, %bb.ae ]
  %i.abo = phi double [ %i.ga, %.thread ], [ %i.ro, %bb.bj ], [ %i.gm, %bb.ae ]
  %i.abp = phi i1 [ false, %.thread ], [ true, %bb.bj ], [ true, %bb.ae ]
  %i.abq = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %.thread ], [ %i.pa, %bb.bj ], [ <double 1.000000e+00, double 0.000000e+00>, %bb.ae ] ; 2 uses
  %i.abr = phi <2 x double> [ %i.gd, %.thread ], [ %i.pi, %bb.bj ], [ <double 1.000000e+00, double 0.000000e+00>, %bb.ae ] ; 4 uses
  %i.abs = phi <2 x double> [ %i.ge, %.thread ], [ %i.sa, %bb.bj ], [ %i.gv, %bb.ae ] ; 2 uses
  %i.abt = extractelement <2 x double> %i.abr, i64 0 ; 3 uses
  %i.abu = fadd double %i.abo, 0.000000e+00
  %.0211 = select i1 %.not, double 0.000000e+00, double %i.abu ; 2 uses
  %i.abv = fadd double %i.abn, 0.000000e+00
  %.0212 = select i1 %.not273, double 0.000000e+00, double %i.abv ; 2 uses
  %i.abw = extractelement <2 x double> %i.abs, i64 1 ; 2 uses
  br i1 %.not274, label %bb.cm, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ce
  %.pre600 = fmul double %i.dg, %i.abt
  %foldExtExtBinop653 = fmul <2 x double> %i.dc, %i.abr
  %.pre601 = extractelement <2 x double> %foldExtExtBinop653, i64 0
  %i.abx = extractelement <2 x double> %i.abs, i64 0
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge, %.thread541
  %.pre-phi602 = phi double [ %.pre601, %._crit_edge ], [ %i.sk, %.thread541 ]
  %.pre-phi = phi double [ %.pre600, %._crit_edge ], [ %i.sj, %.thread541 ] ; 2 uses
  %.0212561 = phi double [ %.0212, %._crit_edge ], [ %.0212551, %.thread541 ]
  %.0211560 = phi double [ %.0211, %._crit_edge ], [ %.0211550, %.thread541 ]
  %.1245557 = phi double [ %i.abx, %._crit_edge ], [ 0.000000e+00, %.thread541 ] ; 2 uses
  %.3251556 = phi double [ %i.abw, %._crit_edge ], [ %i.aas, %.thread541 ]
  %.6553 = phi double [ %i.abt, %._crit_edge ], [ %i.se, %.thread541 ] ; 3 uses
  %i.aby = phi i1 [ %i.abp, %._crit_edge ], [ true, %.thread541 ] ; 2 uses
  %i.abz = phi <2 x double> [ %i.abq, %._crit_edge ], [ %i.abm, %.thread541 ] ; 4 uses
  %i.aca = phi <2 x double> [ %i.abr, %._crit_edge ], [ %i.sb, %.thread541 ] ; 4 uses
  %i.acb = phi <2 x double> [ <double 2.000000e+00, double 0.000000e+00>, %._crit_edge ], [ %i.abi, %.thread541 ] ; 2 uses
  %i.acc = extractelement <2 x double> %i.aca, i64 1 ; 2 uses
  %i.acd = call double @hypot(double noundef %i.acc, double noundef %.pre-phi602) #17 ; 4 uses
  %i.ace = fcmp une double %i.acd, 0.000000e+00
  %i.acf = fcmp une double %.pre-phi, 0.000000e+00
  %or.cond11 = select i1 %i.ace, i1 %i.acf, i1 false
  br i1 %or.cond11, label %SinCosSeries.exit, label %bb.cg

SinCosSeries.exit:                                ; preds = %bb.cf
  %i.acg = fmul double %i.acd, %i.acd
  %i.ach = load double, ptr %i.el, align 8, !tbaa !26
  %i.aci = fmul double %i.acg, %i.ach             ; 3 uses
  %i.acj = fadd double %i.aci, 1.000000e+00
  %i.ack = call double @sqrt(double noundef %i.acj) #17
  %i.acl = fadd double %i.ack, 1.000000e+00
  %i.acm = load double, ptr %0, align 8, !tbaa !12 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aco = load double, ptr %i.acn, align 8, !tbaa !15
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.19.i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.19.i.119.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.19.i.221.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.19.i.323.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.19.i.425.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.19.i.1.1.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.19.i.1.3.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.19.i.2.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.19.i.2.1.i = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.19.i.2.2.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.19.i.3.1.i = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.19.i.4.i = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.acv = fmul double %i.acm, %i.acm
  %i.acw = fmul double %i.acd, %i.acv
  %i.acx = fmul double %.pre-phi, %i.acw
  %i.acy = fmul double %i.aco, %i.acx
  %i.acz = insertelement <2 x double> poison, double %.0476, i64 0
  %i.ada = insertelement <2 x double> %i.acz, double %i.dg, i64 1
  %i.adb = shufflevector <2 x double> %i.abz, <2 x double> %i.aca, <2 x i32> <i32 1, i32 3>
  %i.adc = fmul <2 x double> %i.ada, %i.adb       ; 3 uses
  %i.add = call double @llvm.fmuladd.f64(double %i.acl, double 2.000000e+00, double %i.aci)
  %i.ade = fdiv double %i.aci, %i.add             ; 16 uses
  %i.adf = extractelement <2 x double> %i.adc, i64 1
  %i.adg = call double @hypot(double noundef %i.dd, double noundef %i.adf) #17
  %i.adh = extractelement <2 x double> %i.adc, i64 0
  %i.adi = call double @hypot(double noundef %.0477, double noundef %i.adh) #17
  %i.adj = load double, ptr %i.acp, align 8, !tbaa !10
  %i.adk = load double, ptr %.19.i.i, align 8, !tbaa !10
  %i.adl = call double @llvm.fmuladd.f64(double %i.adj, double %i.ade, double %i.adk)
  %i.adm = load double, ptr %.19.i.119.i, align 8, !tbaa !10
  %i.adn = call double @llvm.fmuladd.f64(double %i.adl, double %i.ade, double %i.adm)
  %i.ado = load double, ptr %.19.i.221.i, align 8, !tbaa !10
  %i.adp = call double @llvm.fmuladd.f64(double %i.adn, double %i.ade, double %i.ado)
  %i.adq = load double, ptr %.19.i.323.i, align 8, !tbaa !10
  %i.adr = call double @llvm.fmuladd.f64(double %i.adp, double %i.ade, double %i.adq)
  %i.ads = load double, ptr %.19.i.425.i, align 8, !tbaa !10
  %i.adt = call double @llvm.fmuladd.f64(double %i.adr, double %i.ade, double %i.ads)
  %i.adu = load double, ptr %.19.i.1.3.i, align 8, !tbaa !10
  %i.adv = fmul double %i.ade, %i.ade             ; 2 uses
  %i.adw = load double, ptr %i.acr, align 8, !tbaa !10
  %i.adx = load double, ptr %.19.i.2.i, align 8, !tbaa !10
  %i.ady = call double @llvm.fmuladd.f64(double %i.adw, double %i.ade, double %i.adx)
  %i.adz = load double, ptr %.19.i.2.1.i, align 8, !tbaa !10
  %i.aea = call double @llvm.fmuladd.f64(double %i.ady, double %i.ade, double %i.adz)
  %i.aeb = load double, ptr %.19.i.2.2.i, align 8, !tbaa !10
  %i.aec = fmul double %i.ade, %i.adv             ; 2 uses
  %i.aed = fmul double %i.ade, %i.aec             ; 2 uses
  %14 = load double, ptr %i.acu, align 8, !tbaa !10
  %15 = load double, ptr %.19.i.4.i, align 8, !tbaa !10
  %i.aee = load double, ptr %i.act, align 8, !tbaa !10
  %i.aef = load double, ptr %.19.i.3.1.i, align 8, !tbaa !10
  %i.aeg = load <2 x double>, ptr %i.acq, align 8, !tbaa !10 ; 2 uses
  %i.aeh = insertelement <2 x double> %i.aeg, double -0.000000e+00, i64 1
  %i.aei = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ade, i64 0 ; 3 uses
  %i.aej = shufflevector <2 x double> %i.aeg, <2 x double> <double poison, double -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.aek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeh, <2 x double> %i.aei, <2 x double> %i.aej)
  %i.ael = load <2 x double>, ptr %.19.i.1.1.i, align 8, !tbaa !10 ; 2 uses
  %i.aem = load <2 x double>, ptr %i.acs, align 8, !tbaa !10 ; 2 uses
  %i.aen = shufflevector <2 x double> %i.ael, <2 x double> %i.aem, <2 x i32> <i32 0, i32 2>
  %i.aeo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aek, <2 x double> %i.aei, <2 x double> %i.aen)
  %i.aep = shufflevector <2 x double> %i.aei, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aeq = shufflevector <2 x double> %i.ael, <2 x double> %i.aem, <2 x i32> <i32 1, i32 3>
  %i.aer = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeo, <2 x double> %i.aep, <2 x double> %i.aeq)
  %16 = insertelement <2 x double> poison, double %i.adu, i64 0
  %i.aes = insertelement <2 x double> %16, double %i.aef, i64 1
  %i.aet = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aer, <2 x double> %i.aep, <2 x double> %i.aes)
  %i.aeu = call double @llvm.fmuladd.f64(double %i.aee, double %i.ade, double %15)
  %i.aev = call double @llvm.fmuladd.f64(double %i.aea, double %i.ade, double %i.aeb)
  %i.aew = fmul double %i.ade, %i.aed
  %i.aex = insertelement <2 x double> poison, double %i.ade, i64 0
  %i.aey = insertelement <2 x double> %i.aex, double %i.aec, i64 1
  %i.aez = fmul <2 x double> %i.aey, %i.aet       ; 2 uses
  %i.afa = fmul double %i.aew, %14
  %i.afb = fmul double %i.aed, %i.aeu
  %i.afc = fmul double %i.adv, %i.aev
  %i.afd = insertelement <2 x double> poison, double %.0477, i64 0
  %i.afe = shufflevector <2 x double> %i.afd, <2 x double> %i.dc, <2 x i32> <i32 0, i32 2>
  %i.aff = insertelement <2 x double> poison, double %i.adi, i64 0
  %i.afg = insertelement <2 x double> %i.aff, double %i.adg, i64 1 ; 2 uses
  %i.afh = fdiv <2 x double> %i.afe, %i.afg       ; 2 uses
  %i.afi = fdiv <2 x double> %i.adc, %i.afg       ; 3 uses
  %i.afj = fsub <2 x double> %i.afi, %i.afh
  %i.afk = fmul <2 x double> %i.afj, splat (double 2.000000e+00)
  %i.afl = fadd <2 x double> %i.afh, %i.afi
  %i.afm = fmul <2 x double> %i.afl, %i.afk       ; 6 uses
  %i.afn = fmul <2 x double> %i.afm, zeroinitializer
  %i.afo = insertelement <2 x double> poison, double %i.afa, i64 0
  %i.afp = shufflevector <2 x double> %i.afo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afq = fadd <2 x double> %i.afn, %i.afp       ; 2 uses
  %i.afr = fmul <2 x double> %i.afm, %i.afq
  %i.afs = insertelement <2 x double> poison, double %i.afb, i64 0
  %i.aft = shufflevector <2 x double> %i.afs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afu = fadd <2 x double> %i.aft, %i.afr       ; 2 uses
  %i.afv = fneg <2 x double> %i.afq
  %i.afw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afm, <2 x double> %i.afu, <2 x double> %i.afv)
  %i.afx = shufflevector <2 x double> %i.aez, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.afy = fadd <2 x double> %i.afw, %i.afx       ; 2 uses
  %i.afz = fneg <2 x double> %i.afu
  %i.aga = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afm, <2 x double> %i.afy, <2 x double> %i.afz)
  %i.agb = insertelement <2 x double> poison, double %i.afc, i64 0
  %i.agc = shufflevector <2 x double> %i.agb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agd = fadd <2 x double> %i.agc, %i.aga       ; 2 uses
  %i.age = fneg <2 x double> %i.afy
  %i.agf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afm, <2 x double> %i.agd, <2 x double> %i.age)
  %i.agg = shufflevector <2 x double> %i.aez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agh = fadd <2 x double> %i.agf, %i.agg       ; 2 uses
  %i.agi = fneg <2 x double> %i.agd
  %i.agj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afm, <2 x double> %i.agh, <2 x double> %i.agi)
  %i.agk = insertelement <2 x double> poison, double %i.adt, i64 0
  %i.agl = shufflevector <2 x double> %i.agk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agm = fadd <2 x double> %i.agl, %i.agj
  %i.agn = fsub <2 x double> %i.agm, %i.agh
  %i.ago = fmul <2 x double> %i.afi, %i.agn       ; 2 uses
  %shift = shufflevector <2 x double> %i.ago, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop655 = fsub <2 x double> %i.ago, %shift
  %i.agp = extractelement <2 x double> %foldExtExtBinop655, i64 0
  %i.agq = fmul double %i.acy, %i.agp
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %SinCosSeries.exit
  %.0213 = phi double [ %i.agq, %SinCosSeries.exit ], [ 0.000000e+00, %bb.cf ]
  %i.agr = extractelement <2 x double> %i.acb, i64 0 ; 2 uses
  %i.ags = fcmp oeq double %i.agr, 2.000000e+00
  %or.cond13 = select i1 %i.aby, i1 %i.ags, i1 false
  %i.agt = extractelement <2 x double> %i.acb, i64 1
  br i1 %or.cond13, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.agu = call double @sin(double noundef %.1245557) #17
  %i.agv = call double @cos(double noundef %.1245557) #17
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.3243 = phi double [ %i.agu, %bb.ch ], [ %i.agr, %bb.cg ]
  %.3239 = phi double [ %i.agv, %bb.ch ], [ %i.agt, %bb.cg ] ; 2 uses
  %i.agw = fcmp ogt double %.3239, -7.071000e-01
  %or.cond15 = select i1 %i.aby, i1 %i.agw, i1 false
  %i.agx = fsub double %.0477, %i.dd
  %i.agy = fcmp olt double %i.agx, 1.750000e+00
  %or.cond570 = select i1 %or.cond15, i1 %i.agy, i1 false
  br i1 %or.cond570, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.agz = fadd nnan double %.3239, 1.000000e+00
  %i.aha = fadd double %i.dg, 1.000000e+00
  %i.ahb = fadd double %.0476, 1.000000e+00
  %i.ahc = insertelement <2 x double> poison, double %i.aha, i64 0
  %i.ahd = shufflevector <2 x double> %i.ahc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahe = insertelement <2 x double> poison, double %i.ahb, i64 0
  %i.ahf = insertelement <2 x double> %i.ahe, double %.0477, i64 1 ; 2 uses
  %i.ahg = fmul <2 x double> %i.ahd, %i.ahf
  %i.ahh = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahi = shufflevector <2 x double> %i.ahf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ahj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahh, <2 x double> %i.ahi, <2 x double> %i.ahg) ; 2 uses
  %i.ahk = extractelement <2 x double> %i.ahj, i64 1
  %i.ahl = fmul double %i.ahk, %.3243
  %i.ahm = extractelement <2 x double> %i.ahj, i64 0
  %i.ahn = fmul double %i.ahm, %i.agz
  %i.aho = call double @atan2(double noundef %i.ahl, double noundef %i.ahn) #17
  %i.ahp = fmul double %i.aho, 2.000000e+00
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.ahq = fneg double %.6553
  %i.ahr = insertelement <2 x double> poison, double %.6553, i64 0
  %i.ahs = insertelement <2 x double> %i.ahr, double %i.ahq, i64 1
  %i.aht = fmul <2 x double> %i.abz, %i.ahs
  %i.ahu = shufflevector <2 x double> %i.aht, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ahv = shufflevector <2 x double> %i.aca, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ahw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abz, <2 x double> %i.ahv, <2 x double> %i.ahu) ; 2 uses
  %i.ahx = extractelement <2 x double> %i.ahw, i64 0 ; 2 uses
  %i.ahy = fcmp oeq double %i.ahx, 0.000000e+00
  %i.ahz = extractelement <2 x double> %i.ahw, i64 1 ; 2 uses
  %i.aia = fcmp olt double %i.ahz, 0.000000e+00
  %or.cond17 = select i1 %i.ahy, i1 %i.aia, i1 false ; 2 uses
  %i.aib = load double, ptr @tiny, align 8
  %i.aic = fmul double %i.acc, %i.aib
  %.0210 = select i1 %or.cond17, double %i.aic, double %i.ahx
  %.0 = select i1 %or.cond17, double -1.000000e+00, double %i.ahz
  %i.aid = call double @atan2(double noundef %.0210, double noundef %.0) #17
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.0215 = phi double [ %i.ahp, %bb.cj ], [ %i.aid, %bb.ck ]
  %i.aie = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aif = load double, ptr %i.aie, align 8, !tbaa !17
  %i.aig = call double @llvm.fmuladd.f64(double %i.aif, double %.0215, double %.0213)
  %i.aih = mul nsw i32 %i.cc, %i.y
  %i.aii = sitofp i32 %i.aih to double
  %i.aij = fmul double %i.aig, %i.aii
  %i.aik = fadd double %i.aij, 0.000000e+00
  br label %bb.cm

bb.cm:                                            ; preds = %.thread523, %bb.cl, %bb.ce
  %.0212540 = phi double [ %.0212561, %bb.cl ], [ %.0212, %bb.ce ], [ %.0212533, %.thread523 ]
  %.0211539 = phi double [ %.0211560, %bb.cl ], [ %.0211, %bb.ce ], [ %.0211532, %.thread523 ]
  %.3251538 = phi double [ %.3251556, %bb.cl ], [ %i.abw, %bb.ce ], [ %i.aas, %.thread523 ]
  %.6535 = phi double [ %.6553, %bb.cl ], [ %i.abt, %bb.ce ], [ %i.se, %.thread523 ] ; 2 uses
  %.1 = phi double [ %i.aik, %bb.cl ], [ 0.000000e+00, %bb.ce ], [ 0.000000e+00, %.thread523 ]
  %i.ail = phi <2 x double> [ %i.abz, %bb.cl ], [ %i.abq, %bb.ce ], [ %i.aaw, %.thread523 ] ; 4 uses
  %i.aim = phi <2 x double> [ %i.aca, %bb.cl ], [ %i.abr, %bb.ce ], [ %i.sb, %.thread523 ] ; 2 uses
  %i.ain = extractelement <2 x double> %i.ail, i64 0
  %i.aio = extractelement <2 x double> %i.ail, i64 1
  br i1 %i.bz, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.aip = extractelement <2 x double> %i.aim, i64 1 ; 2 uses
  br i1 %i.u, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.aiq = load double, ptr %i.m, align 8, !tbaa !10
  %i.air = load double, ptr %i.n, align 8, !tbaa !10
  store double %i.air, ptr %i.m, align 8, !tbaa !10
  store double %i.aiq, ptr %i.n, align 8, !tbaa !10
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.co, %bb.cm
  %.3455 = phi double [ %i.aip, %bb.co ], [ %i.aip, %bb.cn ], [ %i.aio, %bb.cm ]
  %.3450 = phi double [ %.6535, %bb.co ], [ %.6535, %bb.cn ], [ %i.ain, %bb.cm ]
  %i.ais = phi <2 x double> [ %i.ail, %bb.co ], [ %i.ail, %bb.cn ], [ %i.aim, %bb.cm ] ; 2 uses
  %i.ait = extractelement <2 x double> %i.ais, i64 0
  %i.aiu = fmul double %i.ait, %i.z
  %i.aiv = sub nsw i32 0, %i.cc
  %i.aiw = select i1 %i.bz, i32 %i.aiv, i32 %i.cc
  %i.aix = sitofp i32 %i.aiw to double            ; 2 uses
  %i.aiy = extractelement <2 x double> %i.ais, i64 1
  %i.aiz = fmul double %i.aiy, %i.aix
  %i.aja = fmul double %.3455, %i.aix
  store double %i.aiu, ptr %6, align 8, !tbaa !10
  store double %i.aiz, ptr %7, align 8, !tbaa !10
  %.not282 = icmp eq ptr %8, null
  br i1 %.not282, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ajb = fmul double %.3450, %i.z
  store double %i.ajb, ptr %8, align 8, !tbaa !10
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.not283 = icmp eq ptr %9, null
  br i1 %.not283, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store double %i.aja, ptr %9, align 8, !tbaa !10
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  br i1 %.not, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store double %.0211539, ptr %5, align 8, !tbaa !10
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  br i1 %.not273, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store double %.0212540, ptr %10, align 8, !tbaa !10
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  br i1 %i.u, label %bb.cy, label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.s, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ajc = load double, ptr %i.m, align 8, !tbaa !10
  store double %i.ajc, ptr %11, align 8, !tbaa !10
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  br i1 %i.t, label %bb.db, label %bb.dc
end_hunk_0
