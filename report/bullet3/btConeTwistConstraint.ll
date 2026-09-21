Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConeTwistConstraint?download=true
inline.NumInlined: 920
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_:bb.a
  %i.xu = fmul nnan float %.sroa.6350.0, %.sroa.6350.0
  %i.xv = extractelement <3 x float> %i.wx, i64 1 ; 2 uses
  %i.xw = call float @llvm.fmuladd.f32(float %i.xv, float %i.xv, float %i.xu)
  %i.xx = call float @llvm.fmuladd.f32(float %.0.i, float %.0.i, float %i.xw)
  %sqrt.i.i.i167 = call noundef float @llvm.sqrt.f32(float %i.xx)
  %i.xy = fdiv float 1.000000e+00, %sqrt.i.i.i167
  %i.xz = insertelement <3 x float> poison, float %i.xy, i64 0
  %i.ya = shufflevector <3 x float> %i.xz, <3 x float> poison, <3 x i32> zeroinitializer
  %i.yb = insertelement <3 x float> %i.wx, float %i.xt, i64 0
  %i.yc = fmul <3 x float> %i.ya, %i.yb
  br label %_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3.exit

_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3.exit: ; preds = %._crit_edge, %bb.l
  %i.yd = phi <3 x float> [ %i.yc, %bb.l ], [ %i.wx, %._crit_edge ] ; 5 uses
  %i.ye = fneg <3 x float> %i.yd                  ; 2 uses
  %i.yf = extractelement <3 x float> %i.yd, i64 2
  %i.yg = fmul float %i.oz, %i.yf
  %i.yh = extractelement <3 x float> %i.yd, i64 1
  %i.yi = call float @llvm.fmuladd.f32(float %i.qj, float %i.yh, float %i.yg)
  %i.yj = extractelement <3 x float> %i.yd, i64 0
  %i.yk = call float @llvm.fmuladd.f32(float %i.pf, float %i.yj, float %i.yi)
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 484
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ym, i8 0, i64 16, i1 false)
  %i.yn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.yo = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.yp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.yq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.yr = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ys = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.yt = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.yu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.yv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.yw = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.yx = fmul <3 x float> %i.pt, %i.ye
  %i.yy = shufflevector <3 x float> %i.yx, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.yz = insertelement <3 x float> poison, float %i.ql, i64 0
  %i.za = shufflevector <3 x float> %i.yz, <3 x float> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.zb = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.za, <3 x float> %i.ye, <3 x float> %i.yy)
  %i.zc = shufflevector <3 x float> %i.zb, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.zd = shufflevector <2 x float> %i.pr, <2 x float> %i.ox, <3 x i32> <i32 0, i32 2, i32 3> ; 2 uses
  %i.ze = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.zd, <3 x float> %i.yd, <3 x float> %i.zc) ; 3 uses
  %i.zf = fmul <3 x float> %i.za, %i.ze
  %i.zg = insertelement <3 x float> poison, float %i.yk, i64 0
  %i.zh = shufflevector <3 x float> %i.zg, <3 x float> poison, <3 x i32> zeroinitializer
  %i.zi = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.zh, <3 x float> %i.pu, <3 x float> %i.zf)
  %i.zj = shufflevector <3 x float> %i.zi, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.zk = shufflevector <3 x float> %i.ze, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.zl = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.zk, <3 x float> %i.pu, <3 x float> %i.zj)
  %i.zm = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ze, <3 x float> %i.zd, <3 x float> %i.zl) ; 4 uses
  %i.zn = shufflevector <3 x float> %i.zm, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.zo = shufflevector <3 x float> %i.zm, <3 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.zp = insertelement <2 x float> %i.zo, float 0.000000e+00, i64 1
  store <2 x float> %i.zn, ptr %i.yl, align 4
  store <2 x float> %i.zp, ptr %.sroa.430.0..sroa_idx, align 4, !tbaa !11
  %i.zq = load <2 x float>, ptr %3, align 4, !tbaa !28 ; 2 uses
  %i.zr = load <2 x float>, ptr %i.yn, align 4, !tbaa !28 ; 2 uses
  %i.zs = load <2 x float>, ptr %i.yo, align 4, !tbaa !28 ; 2 uses
  %i.zt = load float, ptr %i.yp, align 4, !tbaa !28
  %i.zu = load float, ptr %i.yq, align 4, !tbaa !28
  %i.zv = load float, ptr %i.yr, align 4, !tbaa !28
  %i.zw = load <2 x float>, ptr %i.ys, align 4, !tbaa !28 ; 2 uses
  %i.zx = shufflevector <2 x float> %i.zr, <2 x float> %i.zw, <2 x i32> <i32 0, i32 2>
  %i.zy = shufflevector <3 x float> %i.zm, <3 x float> poison, <2 x i32> <i32 2, i32 2> ; 4 uses
  %i.zz = fmul <2 x float> %i.zx, %i.zy
  %i.aaa = load <2 x float>, ptr %4, align 4, !tbaa !28 ; 2 uses
  %i.aab = shufflevector <2 x float> %i.zq, <2 x float> %i.aaa, <2 x i32> <i32 0, i32 2>
  %i.aac = shufflevector <3 x float> %i.zm, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.aad = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aab, <2 x float> %i.aac, <2 x float> %i.zz)
  %i.aae = load <2 x float>, ptr %i.yt, align 4, !tbaa !28 ; 2 uses
  %i.aaf = shufflevector <2 x float> %i.zs, <2 x float> %i.aae, <2 x i32> <i32 0, i32 2>
  %i.aag = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaf, <2 x float> %i.zo, <2 x float> %i.aad)
  %i.aah = shufflevector <2 x float> %i.zr, <2 x float> %i.zw, <2 x i32> <i32 1, i32 3>
  %i.aai = fmul <2 x float> %i.zy, %i.aah
  %i.aaj = shufflevector <2 x float> %i.zq, <2 x float> %i.aaa, <2 x i32> <i32 1, i32 3>
  %i.aak = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaj, <2 x float> %i.aac, <2 x float> %i.aai)
  %i.aal = shufflevector <2 x float> %i.zs, <2 x float> %i.aae, <2 x i32> <i32 1, i32 3>
  %i.aam = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aal, <2 x float> %i.zo, <2 x float> %i.aak)
  %i.aan = load float, ptr %i.yu, align 4, !tbaa !28
  %i.aao = load float, ptr %i.yv, align 4, !tbaa !28
  %i.aap = insertelement <2 x float> poison, float %i.zu, i64 0
  %i.aaq = insertelement <2 x float> %i.aap, float %i.aao, i64 1
  %i.aar = fmul <2 x float> %i.zy, %i.aaq
  %i.aas = insertelement <2 x float> poison, float %i.zt, i64 0
  %i.aat = insertelement <2 x float> %i.aas, float %i.aan, i64 1
  %i.aau = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aat, <2 x float> %i.aac, <2 x float> %i.aar)
  %i.aav = load float, ptr %i.yw, align 4, !tbaa !28
  %i.aaw = insertelement <2 x float> poison, float %i.zv, i64 0
  %i.aax = insertelement <2 x float> %i.aaw, float %i.aav, i64 1
  %i.aay = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aax, <2 x float> %i.zo, <2 x float> %i.aau)
  %i.aaz = fmul <2 x float> %i.zy, %i.aam
  %i.aba = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aac, <2 x float> %i.aag, <2 x float> %i.aaz)
  %i.abb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zo, <2 x float> %i.aay, <2 x float> %i.aba)
  %i.abc = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.abb)
  %i.abd = fdiv float 1.000000e+00, %i.abc
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 516
  store float %i.abd, ptr %i.abe, align 4, !tbaa !48
  br label %bb.ae

bb.m:                                             ; preds = %bb.h, %_Z15shortestArcQuatRK9btVector3S1_.exit
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.abg = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.abh = load float, ptr %i.nr, align 4, !tbaa !28 ; 2 uses
  %i.abi = load float, ptr %i.abf, align 4, !tbaa !28 ; 2 uses
  %i.abj = load float, ptr %i.abg, align 4, !tbaa !28
  %i.abk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.abl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.abm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.abo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !28 ; 3 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.abr = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.abt = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.abw = load float, ptr %i.abt, align 8, !tbaa !28 ; 2 uses
  %i.abx = load float, ptr %i.abu, align 8, !tbaa !28 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.aca = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.acb = load float, ptr %i.aby, align 4, !tbaa !28 ; 2 uses
  %i.acc = load float, ptr %i.abz, align 4, !tbaa !28 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.ace = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.acf = load float, ptr %i.oi, align 4, !tbaa !28
  %i.acg = load float, ptr %i.acd, align 4, !tbaa !28
  %i.ach = load float, ptr %i.ace, align 4, !tbaa !28
  %i.aci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !28
  %i.ack = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.acl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !28
  %i.acn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aco = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !28 ; 2 uses
  %i.acq = load float, ptr %1, align 4, !tbaa !28
  %i.acr = load <2 x float>, ptr %i.abk, align 4, !tbaa !28 ; 2 uses
  %i.acs = load float, ptr %i.abl, align 4, !tbaa !28
  %i.act = load float, ptr %i.abq, align 4, !tbaa !28
  %i.acu = load <2 x float>, ptr %i.abr, align 4, !tbaa !28 ; 3 uses
  %i.acv = load float, ptr %i.abs, align 4, !tbaa !28
  %i.acw = insertelement <2 x float> poison, float %i.abi, i64 0
  %i.acx = shufflevector <2 x float> %i.acw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acy = shufflevector <2 x float> %i.acu, <2 x float> %i.acr, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.acz = fmul <2 x float> %i.acx, %i.acy
  %i.ada = insertelement <2 x float> poison, float %i.act, i64 0
  %i.adb = insertelement <2 x float> %i.ada, float %i.acq, i64 1 ; 3 uses
  %i.adc = insertelement <2 x float> poison, float %i.abh, i64 0
  %i.add = shufflevector <2 x float> %i.adc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ade = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adb, <2 x float> %i.add, <2 x float> %i.acz) ; 2 uses
  %i.adf = shufflevector <2 x float> %i.acu, <2 x float> %i.acr, <2 x i32> <i32 1, i32 3>
  %i.adg = insertelement <2 x float> poison, float %i.abj, i64 0
  %i.adh = shufflevector <2 x float> %i.adg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adf, <2 x float> %i.adh, <2 x float> %i.ade) ; 5 uses
  %i.adj = insertelement <2 x float> %i.acu, float %i.abp, i64 0
  %i.adk = shufflevector <2 x float> %i.ade, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.adl = load <2 x float>, ptr %2, align 4, !tbaa !28 ; 2 uses
  %i.adm = load <2 x float>, ptr %i.ack, align 4, !tbaa !28 ; 2 uses
  %i.adn = load <2 x float>, ptr %i.acn, align 4, !tbaa !28 ; 4 uses
  %i.ado = insertelement <2 x float> poison, float %i.acg, i64 0
  %i.adp = shufflevector <2 x float> %i.ado, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adq = shufflevector <2 x float> %i.adm, <2 x float> %i.adn, <2 x i32> <i32 1, i32 3>
  %i.adr = fmul <2 x float> %i.adp, %i.adq
  %i.ads = shufflevector <2 x float> %i.adn, <2 x float> %i.adl, <2 x i32> <i32 1, i32 3>
  %i.adt = fmul <2 x float> %i.adp, %i.ads
  %i.adu = shufflevector <2 x float> %i.adm, <2 x float> %i.adn, <2 x i32> <i32 0, i32 2>
  %i.adv = insertelement <2 x float> poison, float %i.acf, i64 0
  %i.adw = shufflevector <2 x float> %i.adv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adu, <2 x float> %i.adw, <2 x float> %i.adr)
  %i.ady = shufflevector <2 x float> %i.adn, <2 x float> %i.adl, <2 x i32> <i32 0, i32 2>
  %i.adz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ady, <2 x float> %i.adw, <2 x float> %i.adt)
  %i.aea = insertelement <2 x float> poison, float %i.acm, i64 0
  %i.aeb = insertelement <2 x float> %i.aea, float %i.acp, i64 1
  %i.aec = insertelement <2 x float> poison, float %i.ach, i64 0
  %i.aed = shufflevector <2 x float> %i.aec, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aee = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aeb, <2 x float> %i.aed, <2 x float> %i.adx) ; 7 uses
  %i.aef = insertelement <2 x float> poison, float %i.acp, i64 0
  %i.aeg = insertelement <2 x float> %i.aef, float %i.acj, i64 1
  %i.aeh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aeg, <2 x float> %i.aed, <2 x float> %i.adz) ; 4 uses
  %i.aei = extractelement <2 x float> %i.aee, i64 0 ; 3 uses
  %i.aej = extractelement <2 x float> %i.aeh, i64 1 ; 3 uses
  %i.aek = extractelement <2 x float> %i.aee, i64 1
  %i.ael = load float, ptr %i.abn, align 4, !tbaa !28 ; 3 uses
  %i.aem = load float, ptr %i.abm, align 4, !tbaa !28 ; 3 uses
  %i.aen = fmul float %i.abi, %i.ael
  %i.aeo = fmul float %i.ael, %i.abx
  %i.aep = load <2 x float>, ptr %i.abv, align 8, !tbaa !28 ; 3 uses
  %i.aeq = load float, ptr %i.aca, align 4, !tbaa !28
  %i.aer = call float @llvm.fmuladd.f32(float %i.aem, float %i.abh, float %i.aen)
  %i.aes = insertelement <2 x float> %i.adk, float %i.aer, i64 0
  %i.aet = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adj, <2 x float> %i.adh, <2 x float> %i.aes) ; 4 uses
  %i.aeu = insertelement <2 x float> poison, float %i.abx, i64 0
  %i.aev = shufflevector <2 x float> %i.aeu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aew = fmul <2 x float> %i.acy, %i.aev
  %i.aex = insertelement <2 x float> poison, float %i.abw, i64 0
  %i.aey = shufflevector <2 x float> %i.aex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aez = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adb, <2 x float> %i.aey, <2 x float> %i.aew)
  %11 = call float @llvm.fmuladd.f32(float %i.aem, float %i.abw, float %i.aeo)
  %i.afa = insertelement <2 x float> poison, float %i.acv, i64 0
  %i.afb = insertelement <2 x float> %i.afa, float %i.acs, i64 1 ; 2 uses
  %i.afc = shufflevector <2 x float> %i.aep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afb, <2 x float> %i.afc, <2 x float> %i.aez) ; 3 uses
  %i.afe = extractelement <2 x float> %i.aep, i64 0
  %12 = call noundef float @llvm.fmuladd.f32(float %i.abp, float %i.afe, float %11) ; 2 uses
  %i.aff = insertelement <2 x float> poison, float %i.acc, i64 0
  %i.afg = shufflevector <2 x float> %i.aff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afh = fmul <2 x float> %i.acy, %i.afg
  %i.afi = fmul float %i.ael, %i.acc
  %i.afj = insertelement <2 x float> poison, float %i.acb, i64 0
  %i.afk = shufflevector <2 x float> %i.afj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adb, <2 x float> %i.afk, <2 x float> %i.afh)
  %i.afm = call float @llvm.fmuladd.f32(float %i.aem, float %i.acb, float %i.afi)
  %i.afn = shufflevector <2 x float> %i.aep, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.afo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afb, <2 x float> %i.afn, <2 x float> %i.afl) ; 3 uses
  %i.afp = call noundef float @llvm.fmuladd.f32(float %i.abp, float %i.aeq, float %i.afm) ; 2 uses
  %i.afq = fmul float %i.afp, %i.aei
  %13 = shufflevector <2 x float> %i.aet, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.afr = insertelement <2 x float> %13, float %12, i64 0
  %i.afs = shufflevector <2 x float> %i.aee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aft = fmul <2 x float> %i.afr, %i.afs
  %i.afu = shufflevector <2 x float> %i.aeh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.afv = shufflevector <2 x float> %i.afd, <2 x float> %i.adi, <2 x i32> <i32 1, i32 3>
  %i.afw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afu, <2 x float> %i.afv, <2 x float> %i.aft)
  %i.afx = extractelement <2 x float> %i.afo, i64 1
  %i.afy = call float @llvm.fmuladd.f32(float %i.aej, float %i.afx, float %i.afq)
  %i.afz = shufflevector <2 x float> %i.aee, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aga = shufflevector <2 x float> %i.afd, <2 x float> %i.adi, <2 x i32> <i32 0, i32 2>
  %i.agb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afz, <2 x float> %i.aga, <2 x float> %i.afw) ; 6 uses
  %i.agc = extractelement <2 x float> %i.afo, i64 0
  %i.agd = call noundef float @llvm.fmuladd.f32(float %i.aek, float %i.agc, float %i.afy) ; 7 uses
  %i.age = fcmp olt float %i.vp, %i.vr
  br i1 %i.age, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.agf = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.agg = load float, ptr %i.agf, align 8, !tbaa !45 ; 8 uses
  %i.agh = fcmp olt float %i.agg, %i.vr
  %i.agi = call float @llvm.fabs.f32(float %i.agd)
  %i.agj = fcmp olt float %i.agi, f0x34000000     ; 2 uses
  br i1 %i.agh, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.agk = extractelement <2 x float> %i.agb, i64 0
  %i.agl = call noundef float @llvm.fabs.f32(float %i.agk)
  %i.agm = fcmp olt float %i.agl, f0x34000000
  %or.cond536 = and i1 %i.agm, %i.agj
  br i1 %or.cond536, label %bb.ae, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.d, align 2, !tbaa !33
  %i.agn = fneg <2 x float> %i.aet
  %i.ago = extractelement <2 x float> %i.adi, i64 1
  %i.agp = fneg float %i.ago
  %i.agq = fmul float %i.aei, %i.agp
  %i.agr = extractelement <2 x float> %i.aet, i64 0
  %i.ags = call float @llvm.fmuladd.f32(float %i.aej, float %i.agr, float %i.agq)
  %i.agt = fmul <2 x float> %i.aeh, %i.agn
  %i.agu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aee, <2 x float> %i.adi, <2 x float> %i.agt)
  %i.agv = fneg <2 x float> %i.agu
  %i.agw = fneg float %i.ags
  %.sroa.3.12.vec.insert.i225 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.agw, i64 0
  %i.agx = getelementptr inbounds nuw i8, ptr %0, i64 484
  store <2 x float> %i.agv, ptr %i.agx, align 4
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 492
  store <2 x float> %.sroa.3.12.vec.insert.i225, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !11
  br label %bb.ae

bb.q:                                             ; preds = %bb.n
  %i.agy = extractelement <2 x float> %i.agb, i64 1 ; 5 uses
  %i.agz = call noundef float @llvm.fabs.f32(float %i.agy)
  %i.aha = fcmp olt float %i.agz, f0x34000000
  %or.cond538 = and i1 %i.aha, %i.agj
  %i.ahb = extractelement <2 x float> %i.agb, i64 0 ; 2 uses
  br i1 %or.cond538, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.d, align 2, !tbaa !33
  %i.ahc = fcmp ult float %i.agg, %i.vr
  br i1 %i.ahc, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ahd = call noundef float @atan2f(float noundef %i.agd, float noundef %i.agy) #21 ; 2 uses
  %i.ahe = fcmp ogt float %i.ahd, %i.agg
  br i1 %i.ahe, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ahf = call noundef float @cosf(float noundef %i.agg) #21
  %i.ahg = call noundef float @sinf(float noundef %i.agg) #21
  br label %bb.ac

bb.u:                                             ; preds = %bb.s
  %i.ahh = fneg float %i.agg
  %i.ahi = fcmp olt float %i.ahd, %i.ahh
  br i1 %i.ahi, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.ahj = call noundef float @cosf(float noundef %i.agg) #21
  %i.ahk = call noundef float @sinf(float noundef %i.agg) #21
  %i.ahl = fneg float %i.ahk
  br label %bb.ac

bb.w:                                             ; preds = %bb.m
  %i.ahm = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.agb)
  %i.ahn = fcmp uge <2 x float> %i.ahm, splat (float f0x34000000)
  %i.aho = bitcast <2 x i1> %i.ahn to i2
  %or.cond540 = icmp eq i2 %i.aho, 0
  %i.ahp = extractelement <2 x float> %i.agb, i64 0 ; 4 uses
  %i.ahq = extractelement <2 x float> %i.agb, i64 1 ; 4 uses
  br i1 %or.cond540, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.d, align 2, !tbaa !33
  br i1 %i.vs, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ahr = call noundef float @atan2f(float noundef %i.ahp, float noundef %i.ahq) #21 ; 2 uses
  %i.ahs = fcmp ogt float %i.ahr, %i.vp
  br i1 %i.ahs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.aht = call noundef float @cosf(float noundef %i.vp) #21
  %i.ahu = call noundef float @sinf(float noundef %i.vp) #21
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.ahv = fneg float %i.vp
  %i.ahw = fcmp olt float %i.ahr, %i.ahv
  br i1 %i.ahw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ahx = call noundef float @cosf(float noundef %i.vp) #21
  %i.ahy = call noundef float @sinf(float noundef %i.vp) #21
  %i.ahz = fneg float %i.ahy
  br label %bb.ac

bb.ac:                                            ; preds = %bb.w, %bb.q, %bb.z, %bb.ab, %bb.aa, %bb.t, %bb.v, %bb.u, %bb.x, %bb.r
  %.148 = phi float [ %i.agd, %bb.q ], [ %i.agd, %bb.x ], [ %i.agd, %bb.r ], [ %i.agd, %bb.w ], [ %i.agd, %bb.u ], [ %i.ahg, %bb.t ], [ %i.ahl, %bb.v ], [ 0.000000e+00, %bb.aa ], [ 0.000000e+00, %bb.ab ], [ 0.000000e+00, %bb.z ] ; 2 uses
  %.146 = phi float [ %i.ahb, %bb.q ], [ %i.ahp, %bb.x ], [ %i.ahb, %bb.r ], [ %i.ahp, %bb.w ], [ 0.000000e+00, %bb.u ], [ 0.000000e+00, %bb.t ], [ 0.000000e+00, %bb.v ], [ %i.ahp, %bb.aa ], [ %i.ahz, %bb.ab ], [ %i.ahu, %bb.z ] ; 2 uses
  %.2 = phi float [ %i.agy, %bb.q ], [ %i.ahq, %bb.x ], [ %i.agy, %bb.r ], [ %i.ahq, %bb.w ], [ %i.agy, %bb.u ], [ %i.ahf, %bb.t ], [ %i.ahj, %bb.v ], [ %i.ahq, %bb.aa ], [ %i.ahx, %bb.ab ], [ %i.aht, %bb.z ] ; 2 uses
  %i.aia = insertelement <2 x float> poison, float %.146, i64 0
  %i.aib = shufflevector <2 x float> %i.aia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aic = fmul <2 x float> %i.afd, %i.aib
  %i.aid = fmul float %12, %.146
  %i.aie = extractelement <2 x float> %i.aet, i64 0
  %i.aif = insertelement <2 x float> poison, float %.2, i64 0
  %i.aig = shufflevector <2 x float> %i.aif, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aih = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aig, <2 x float> %i.adi, <2 x float> %i.aic)
  %i.aii = call float @llvm.fmuladd.f32(float %.2, float %i.aie, float %i.aid)
  %i.aij = insertelement <2 x float> poison, float %.148, i64 0
  %i.aik = shufflevector <2 x float> %i.aij, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ail = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aik, <2 x float> %i.afo, <2 x float> %i.aih) ; 4 uses
  %i.aim = call float @llvm.fmuladd.f32(float %.148, float %i.afp, float %i.aii) ; 3 uses
  %i.ain = fmul float %i.aim, %i.aim
  %i.aio = extractelement <2 x float> %i.ail, i64 1 ; 2 uses
  %i.aip = call float @llvm.fmuladd.f32(float %i.aio, float %i.aio, float %i.ain)
  %i.aiq = extractelement <2 x float> %i.ail, i64 0 ; 2 uses
  %i.air = call noundef float @llvm.fmuladd.f32(float %i.aiq, float %i.aiq, float %i.aip)
  %sqrt.i.i228 = call noundef float @llvm.sqrt.f32(float %i.air)
  %i.ais = fdiv float 1.000000e+00, %sqrt.i.i228
  %i.ait = insertelement <2 x float> poison, float %i.ais, i64 0
  %i.aiu = shufflevector <2 x float> %i.ait, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aiv = fmul <2 x float> %i.ail, %i.aiu        ; 2 uses
  %i.aiw = shufflevector <2 x float> %i.ail, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aix = insertelement <2 x float> %i.aiw, float %i.aim, i64 0
  %i.aiy = fmul <2 x float> %i.aix, %i.aiu        ; 2 uses
  %i.aiz = fneg <2 x float> %i.aiy
  %i.aja = shufflevector <2 x float> %i.aee, <2 x float> %i.aeh, <2 x i32> <i32 1, i32 3>
  %i.ajb = fmul <2 x float> %i.aja, %i.aiz
  %i.ajc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aee, <2 x float> %i.aiv, <2 x float> %i.ajb) ; 4 uses
  %i.ajd = extractelement <2 x float> %i.aiv, i64 1
  %i.aje = fneg float %i.ajd
  %i.ajf = fmul float %i.aei, %i.aje
  %i.ajg = extractelement <2 x float> %i.aiy, i64 0
  %i.ajh = call float @llvm.fmuladd.f32(float %i.aej, float %i.ajg, float %i.ajf) ; 3 uses
  %i.aji = fneg <2 x float> %i.ajc                ; 2 uses
  %i.ajj = fneg float %i.ajh                      ; 2 uses
  %.sroa.3.12.vec.insert.i236 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ajj, i64 0
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 484 ; 2 uses
  store <2 x float> %i.aji, ptr %i.ajk, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i236, ptr %.sroa.44.0..sroa_idx, align 4, !tbaa !11
  %foldExtExtBinop576.a = fmul <2 x float> %i.ajc, %i.ajc
  %i.ajl = extractelement <2 x float> %foldExtExtBinop576.a, i64 1
  %i.ajm = extractelement <2 x float> %i.ajc, i64 0 ; 2 uses
  %i.ajn = call float @llvm.fmuladd.f32(float %i.ajm, float %i.ajm, float %i.ajl)
  %i.ajo = call float @llvm.fmuladd.f32(float %i.ajh, float %i.ajh, float %i.ajn)
  %sqrt.i239 = call noundef float @llvm.sqrt.f32(float %i.ajo) ; 3 uses
  store float %sqrt.i239, ptr %i.a, align 8, !tbaa !46
  %i.ajp = call noundef float @llvm.fabs.f32(float %sqrt.i239)
  %i.ajq = fcmp olt float %i.ajp, f0x34000000
  br i1 %i.ajq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ajr = fdiv float 1.000000e+00, %sqrt.i239    ; 2 uses
  %i.ajs = insertelement <2 x float> poison, float %i.ajr, i64 0
  %i.ajt = shufflevector <2 x float> %i.ajs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aju = fmul <2 x float> %i.ajt, %i.aji
  store <2 x float> %i.aju, ptr %i.ajk, align 4, !tbaa !28
  %i.ajv = fmul float %i.ajr, %i.ajj
  store float %i.ajv, ptr %.sroa.44.0..sroa_idx, align 4, !tbaa !28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.o, %bb.p, %bb.ad, %bb.ac, %_ZN21btConeTwistConstraint20computeConeLimitInfoERK12btQuaternionRfR9btVector3S3_.exit, %_ZNK21btConeTwistConstraint33adjustSwingAxisToUseEllipseNormalER9btVector3.exit
  %i.ajw = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.ajx = load float, ptr %i.ajw, align 4, !tbaa !49 ; 5 uses
  %i.ajy = fcmp ult float %i.ajx, 0.000000e+00
  %i.ajz = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  br i1 %i.ajy, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.aka = fcmp olt float %i.vn, -1.000000e+00
  %spec.store.select.i.i.i241 = select i1 %i.aka, float -1.000000e+00, float %i.vn ; 2 uses
  %i.akb = fcmp ogt float %spec.store.select.i.i.i241, 1.000000e+00
  %spec.store.select1.i.i.i242 = select i1 %i.akb, float 1.000000e+00, float %spec.store.select.i.i.i241
  %i.akc = call noundef float @acosf(float noundef %spec.store.select1.i.i.i242) #21
  %i.akd = fmul float %i.akc, 2.000000e+00        ; 3 uses
  store float %i.akd, ptr %i.ajz, align 8, !tbaa !28
  %i.ake = fcmp ogt float %i.akd, f0x40490FDB
  br i1 %i.ake, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.akf = fneg <2 x float> %i.vk
  %i.akg = fneg float %i.vl
  %i.akh = fneg float %i.vn                       ; 3 uses
  %.sroa.3.8.vec.insert.i.i = insertelement <2 x float> poison, float %i.akg, i64 0
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i.i, float %i.akh, i64 1
  %i.aki = fcmp olt float %i.akh, -1.000000e+00
  %spec.store.select.i.i10.i = select i1 %i.aki, float -1.000000e+00, float %i.akh ; 2 uses
  %i.akj = fcmp ogt float %spec.store.select.i.i10.i, 1.000000e+00
  %spec.store.select1.i.i11.i = select i1 %i.akj, float 1.000000e+00, float %spec.store.select.i.i10.i
  %i.akk = call noundef float @acosf(float noundef %spec.store.select1.i.i11.i) #21
  %i.akl = fmul float %i.akk, 2.000000e+00        ; 2 uses
  store float %i.akl, ptr %i.ajz, align 8, !tbaa !28
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.akm = phi float [ %i.akl, %bb.ag ], [ %i.akd, %bb.af ] ; 4 uses
  %.sroa.013.0.i = phi <2 x float> [ %i.akf, %bb.ag ], [ %i.vk, %bb.af ] ; 5 uses
  %.sroa.614.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i, %bb.ag ], [ %.sroa.10371.12.vec.insert, %bb.af ]
  %.sroa.614.8.vec.extract.i = extractelement <2 x float> %.sroa.614.0.i, i64 0 ; 4 uses
  %i.akn = fcmp ogt float %i.akm, f0x34000000
  br i1 %i.akn, label %bb.ai, label %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit

bb.ai:                                            ; preds = %bb.ah
  %.sroa.013.0.vec.extract.i = extractelement <2 x float> %.sroa.013.0.i, i64 0 ; 2 uses
  %foldExtExtBinop578 = fmul <2 x float> %.sroa.013.0.i, %.sroa.013.0.i
  %i.ako = extractelement <2 x float> %foldExtExtBinop578, i64 1
  %i.akp = call float @llvm.fmuladd.f32(float %.sroa.013.0.vec.extract.i, float %.sroa.013.0.vec.extract.i, float %i.ako)
  %i.akq = call noundef float @llvm.fmuladd.f32(float %.sroa.614.8.vec.extract.i, float %.sroa.614.8.vec.extract.i, float %i.akp)
  %sqrt.i.i.i245 = call noundef float @llvm.sqrt.f32(float %i.akq)
  %i.akr = fdiv float 1.000000e+00, %sqrt.i.i.i245 ; 2 uses
  %i.aks = insertelement <2 x float> poison, float %i.akr, i64 0
  %i.akt = shufflevector <2 x float> %i.aks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aku = fmul <2 x float> %.sroa.013.0.i, %i.akt
  %i.akv = fmul float %.sroa.614.8.vec.extract.i, %i.akr
  br label %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit

_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit: ; preds = %bb.ah, %bb.ai
  %.sroa.10.0 = phi float [ %i.akv, %bb.ai ], [ %.sroa.614.8.vec.extract.i, %bb.ah ] ; 6 uses
  %i.akw = phi <2 x float> [ %i.aku, %bb.ai ], [ %.sroa.013.0.i, %bb.ah ] ; 10 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.aky = load float, ptr %i.akx, align 4, !tbaa !91 ; 4 uses
  %i.akz = fmul float %i.ajx, %i.aky
  %i.ala = fcmp ogt float %i.akm, %i.akz
  br i1 %i.ala, label %._crit_edge543, label %bb.aj

._crit_edge543:                                   ; preds = %_ZN21btConeTwistConstraint21computeTwistLimitInfoERK12btQuaternionRfR9btVector3.exit
  store i8 1, ptr %i.c, align 1, !tbaa !32
  %i.alb = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.alc = fcmp olt float %i.akm, %i.ajx
  %i.ald = fcmp olt float %i.aky, f0x3F7FFFFE
  %or.cond541 = and i1 %i.alc, %i.ald
  %i.ale = fneg float %i.ajx                      ; 2 uses
  %i.alf = call float @llvm.fmuladd.f32(float %i.ale, float %i.aky, float %i.akm) ; 2 uses
  %i.alg = call float @llvm.fmuladd.f32(float %i.ale, float %i.aky, float %i.ajx)
  %i.alh = fdiv float %i.alf, %i.alg
  %storemerge542 = select i1 %or.cond541, float %i.alh, float 1.000000e+00
  store float %storemerge542, ptr %i.alb, align 4, !tbaa !50
  %i.ali = getelementptr inbounds nuw i8, ptr %0, i64 532
  store float %i.alf, ptr %i.ali, align 4, !tbaa !51
  %i.alj = extractelement <2 x float> %i.akw, i64 0
  %i.alk = extractelement <2 x float> %i.akw, i64 1
  %i.all = shufflevector <2 x float> %i.akw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.alm = insertelement <2 x float> %i.all, float %.sroa.10.0, i64 0
  %i.aln = fneg <2 x float> %i.alm                ; 2 uses
  %i.alo = fneg float %i.alk                      ; 2 uses
  %i.alp = shufflevector <2 x float> %i.ox, <2 x float> %i.pr, <4 x i32> <i32 0, i32 0, i32 2, i32 1>
  %i.alq = shufflevector <2 x float> %i.akw, <2 x float> %i.aln, <4 x i32> <i32 1, i32 2, i32 poison, i32 3>
  %i.alr = insertelement <4 x float> %i.alq, float %i.alo, i64 2
  %i.als = fmul <4 x float> %i.alp, %i.alr        ; 3 uses
  %i.alt = extractelement <4 x float> %i.als, i64 0
  %i.alu = call float @llvm.fmuladd.f32(float %i.qj, float %i.alj, float %i.alt)
  %i.alv = call float @llvm.fmuladd.f32(float %i.pf, float %.sroa.10.0, float %i.alu) ; 3 uses
  %i.alw = shufflevector <4 x float> %i.als, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.alx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qn, <2 x float> %i.aln, <2 x float> %i.alw)
  %i.aly = extractelement <4 x float> %i.als, i64 3
  %i.alz = call float @llvm.fmuladd.f32(float %i.ql, float %i.alo, float %i.aly)
  %i.ama = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ox, <2 x float> %i.akw, <2 x float> %i.alx) ; 3 uses
  %i.amb = call float @llvm.fmuladd.f32(float %i.qj, float %.sroa.10.0, float %i.alz) ; 3 uses
  %i.amc = fmul float %i.ql, %i.amb
  %i.amd = extractelement <2 x float> %i.ama, i64 1 ; 2 uses
  %i.ame = fmul float %i.ql, %i.amd
  %i.amf = call float @llvm.fmuladd.f32(float %i.alv, float %i.pw, float %i.amc)
  %i.amg = call float @llvm.fmuladd.f32(float %i.alv, float %i.px, float %i.ame)
  %i.amh = extractelement <2 x float> %i.ama, i64 0 ; 2 uses
  %i.ami = call float @llvm.fmuladd.f32(float %i.amh, float %i.px, float %i.amf)
  %i.amj = call float @llvm.fmuladd.f32(float %i.amb, float %i.pv, float %i.amg)
  %i.amk = insertelement <2 x float> poison, float %i.amj, i64 0
  %i.aml = insertelement <2 x float> %i.amk, float %i.ami, i64 1
  %i.amm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ama, <2 x float> %i.ox, <2 x float> %i.aml) ; 5 uses
  %i.amn = fmul float %i.ql, %i.amh
  %i.amo = call float @llvm.fmuladd.f32(float %i.alv, float %i.pv, float %i.amn)
  %i.amp = call float @llvm.fmuladd.f32(float %i.amd, float %i.pw, float %i.amo)
  %i.amq = call float @llvm.fmuladd.f32(float %i.amb, float %i.qj, float %i.amp) ; 9 uses
  %.sroa.3.12.vec.insert.i253 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.amq, i64 0
  %i.amr = getelementptr inbounds nuw i8, ptr %0, i64 500
  store <2 x float> %i.amm, ptr %i.amr, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 508
  store <2 x float> %.sroa.3.12.vec.insert.i253, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !11
  %i.ams = load float, ptr %3, align 4, !tbaa !28
  %i.amt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.amu = load float, ptr %i.amt, align 4, !tbaa !28
  %i.amv = extractelement <2 x float> %i.amm, i64 1 ; 5 uses
  %i.amw = fmul float %i.amu, %i.amv
  %i.amx = extractelement <2 x float> %i.amm, i64 0 ; 5 uses
  %i.amy = call float @llvm.fmuladd.f32(float %i.ams, float %i.amx, float %i.amw)
  %i.amz = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ana = load float, ptr %i.amz, align 4, !tbaa !28
  %i.anb = call noundef float @llvm.fmuladd.f32(float %i.ana, float %i.amq, float %i.amy)
  %i.anc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.and = load float, ptr %i.anc, align 4, !tbaa !28
  %i.ane = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.anf = load float, ptr %i.ane, align 4, !tbaa !28
  %i.ang = fmul float %i.amv, %i.anf
  %i.anh = call float @llvm.fmuladd.f32(float %i.and, float %i.amx, float %i.ang)
  %i.ani = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.anj = load float, ptr %i.ani, align 4, !tbaa !28
  %i.ank = call noundef float @llvm.fmuladd.f32(float %i.anj, float %i.amq, float %i.anh)
  %i.anl = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_0
