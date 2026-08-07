inline.NumInlined: 76
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 86
begin_hunk_0_@DoNNetIteration:bb.a
  %i.zc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sa, <2 x double> %i.ym, <2 x double> %i.zb)
  %i.zd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ta, <2 x double> %i.yp, <2 x double> %i.zc)
  %i.ze = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tw, <2 x double> %i.ys, <2 x double> %i.zd)
  %i.zf = fmul <2 x double> %i.nd, %i.yx
  %i.zg = fmul <2 x double> %i.zf, %i.ze          ; 3 uses
  store <2 x double> %i.zg, ptr getelementptr inbounds nuw (i8, ptr @mid_error, i64 16), align 16, !tbaa !80
  %i.zh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> %i.xw, <2 x double> zeroinitializer)
  %i.zi = fsub <2 x double> splat (double 1.000000e+00), %i.nl
  %i.zj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.on, <2 x double> %i.ya, <2 x double> %i.zh)
  %i.zk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pn, <2 x double> %i.yd, <2 x double> %i.zj)
  %i.zl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qj, <2 x double> %i.yg, <2 x double> %i.zk)
  %i.zm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rj, <2 x double> %i.yj, <2 x double> %i.zl)
  %i.zn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sf, <2 x double> %i.ym, <2 x double> %i.zm)
  %i.zo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tf, <2 x double> %i.yp, <2 x double> %i.zn)
  %i.zp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ub, <2 x double> %i.ys, <2 x double> %i.zo)
  %i.zq = fmul <2 x double> %i.nl, %i.zi
  %i.zr = fmul <2 x double> %i.zq, %i.zp          ; 3 uses
  store <2 x double> %i.zr, ptr getelementptr inbounds nuw (i8, ptr @mid_error, i64 32), align 16, !tbaa !80
  %i.zs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nu, <2 x double> %i.xw, <2 x double> zeroinitializer)
  %i.zt = fsub <2 x double> splat (double 1.000000e+00), %i.nt
  %i.zu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.os, <2 x double> %i.ya, <2 x double> %i.zs)
  %i.zv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ps, <2 x double> %i.yd, <2 x double> %i.zu)
  %i.zw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qo, <2 x double> %i.yg, <2 x double> %i.zv)
  %i.zx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ro, <2 x double> %i.yj, <2 x double> %i.zw)
  %i.zy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sk, <2 x double> %i.ym, <2 x double> %i.zx)
  %i.zz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tk, <2 x double> %i.yp, <2 x double> %i.zy)
  %i.aaa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ug, <2 x double> %i.ys, <2 x double> %i.zz)
  %i.aab = fmul <2 x double> %i.nt, %i.zt
  %i.aac = fmul <2 x double> %i.aab, %i.aaa       ; 3 uses
  store <2 x double> %i.aac, ptr getelementptr inbounds nuw (i8, ptr @mid_error, i64 48), align 16, !tbaa !80
  %broadcast.splat215 = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat217 = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat219 = shufflevector <2 x double> %i.nd, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat221 = shufflevector <2 x double> %i.nd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat223 = shufflevector <2 x double> %i.nl, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat225 = shufflevector <2 x double> %i.nl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat227 = shufflevector <2 x double> %i.nt, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat229 = shufflevector <2 x double> %i.nt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %do_out_error.exit.i
  %index231 = phi i64 [ 0, %do_out_error.exit.i ], [ %index.next234, %vector.body230 ] ; 6 uses
  %i.aad = or disjoint i64 %index231, 1           ; 3 uses
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr @out_error, i64 %index231
  %wide.load232 = load <2 x double>, ptr %i.aae, align 16, !tbaa !80
  %i.aaf = fmul <2 x double> %wide.load232, splat (double f0x3FB70A3D70A3D70A) ; 8 uses
  %i.aag = getelementptr inbounds nuw [64 x i8], ptr @out_wt_change, i64 %index231 ; 8 uses
  %i.aah = getelementptr inbounds nuw [64 x i8], ptr @out_wt_change, i64 %i.aad ; 8 uses
  %i.aai = getelementptr inbounds nuw [64 x i8], ptr @out_wts, i64 %index231 ; 9 uses
  %i.aaj = getelementptr inbounds nuw [64 x i8], ptr @out_wts, i64 %i.aad ; 8 uses
  %i.aak = getelementptr inbounds nuw [64 x i8], ptr @out_wt_cum_change, i64 %index231 ; 9 uses
  %i.aal = getelementptr inbounds nuw [64 x i8], ptr @out_wt_cum_change, i64 %i.aad ; 8 uses
  %i.aam = fmul <2 x double> %broadcast.splat215, %i.aaf
  %i.aan = load double, ptr %i.aag, align 16, !tbaa !80
  %i.aao = load double, ptr %i.aah, align 16, !tbaa !80
  %i.aap = insertelement <2 x double> poison, double %i.aan, i64 0
  %i.aaq = insertelement <2 x double> %i.aap, double %i.aao, i64 1
  %i.aar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaq, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.aam) ; 2 uses
  %i.aas = load double, ptr %i.aai, align 16, !tbaa !80
  %i.aat = load double, ptr %i.aaj, align 16, !tbaa !80
  %i.aau = insertelement <2 x double> poison, double %i.aas, i64 0
  %i.aav = insertelement <2 x double> %i.aau, double %i.aat, i64 1
  %i.aaw = load double, ptr %i.aak, align 16, !tbaa !80
  %i.aax = load double, ptr %i.aal, align 16, !tbaa !80
  %i.aay = insertelement <2 x double> poison, double %i.aaw, i64 0
  %i.aaz = insertelement <2 x double> %i.aay, double %i.aax, i64 1
  %i.aba = fmul <2 x double> %broadcast.splat217, %i.aaf
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  %i.abd = load double, ptr %i.abb, align 8, !tbaa !80
  %i.abe = load double, ptr %i.abc, align 8, !tbaa !80
  %i.abf = insertelement <2 x double> poison, double %i.abd, i64 0
  %i.abg = insertelement <2 x double> %i.abf, double %i.abe, i64 1
  %i.abh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abg, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.aba) ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aai, i64 8
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  %i.abk = load double, ptr %i.abi, align 8, !tbaa !80
  %i.abl = load double, ptr %i.abj, align 8, !tbaa !80
  %i.abm = insertelement <2 x double> poison, double %i.abk, i64 0
  %i.abn = insertelement <2 x double> %i.abm, double %i.abl, i64 1
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aal, i64 8
  %i.abq = load double, ptr %i.abo, align 8, !tbaa !80
  %i.abr = load double, ptr %i.abp, align 8, !tbaa !80
  %i.abs = insertelement <2 x double> poison, double %i.abq, i64 0
  %i.abt = insertelement <2 x double> %i.abs, double %i.abr, i64 1
  %i.abu = fmul <2 x double> %broadcast.splat219, %i.aaf
  %i.abv = getelementptr inbounds nuw i8, ptr %i.aag, i64 16
  %i.abw = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %i.abx = load double, ptr %i.abv, align 16, !tbaa !80
  %i.aby = load double, ptr %i.abw, align 16, !tbaa !80
  %i.abz = insertelement <2 x double> poison, double %i.abx, i64 0
  %i.aca = insertelement <2 x double> %i.abz, double %i.aby, i64 1
  %i.acb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aca, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.abu) ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aai, i64 16
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  %i.ace = load double, ptr %i.acc, align 16, !tbaa !80
  %i.acf = load double, ptr %i.acd, align 16, !tbaa !80
  %i.acg = insertelement <2 x double> poison, double %i.ace, i64 0
  %i.ach = insertelement <2 x double> %i.acg, double %i.acf, i64 1
  %i.aci = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %i.ack = load double, ptr %i.aci, align 16, !tbaa !80
  %i.acl = load double, ptr %i.acj, align 16, !tbaa !80
  %i.acm = insertelement <2 x double> poison, double %i.ack, i64 0
  %i.acn = insertelement <2 x double> %i.acm, double %i.acl, i64 1
  %i.aco = fmul <2 x double> %broadcast.splat221, %i.aaf
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aag, i64 24
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aah, i64 24
  %i.acr = load double, ptr %i.acp, align 8, !tbaa !80
  %i.acs = load double, ptr %i.acq, align 8, !tbaa !80
  %i.act = insertelement <2 x double> poison, double %i.acr, i64 0
  %i.acu = insertelement <2 x double> %i.act, double %i.acs, i64 1
  %i.acv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acu, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.aco) ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.aai, i64 24
  %i.acx = getelementptr inbounds nuw i8, ptr %i.aaj, i64 24
  %i.acy = load double, ptr %i.acw, align 8, !tbaa !80
  %i.acz = load double, ptr %i.acx, align 8, !tbaa !80
  %i.ada = insertelement <2 x double> poison, double %i.acy, i64 0
  %i.adb = insertelement <2 x double> %i.ada, double %i.acz, i64 1
  %i.adc = getelementptr inbounds nuw i8, ptr %i.aak, i64 24
  %i.add = getelementptr inbounds nuw i8, ptr %i.aal, i64 24
  %i.ade = load double, ptr %i.adc, align 8, !tbaa !80
  %i.adf = load double, ptr %i.add, align 8, !tbaa !80
  %i.adg = insertelement <2 x double> poison, double %i.ade, i64 0
  %i.adh = insertelement <2 x double> %i.adg, double %i.adf, i64 1
  %i.adi = fmul <2 x double> %broadcast.splat223, %i.aaf
  %i.adj = getelementptr inbounds nuw i8, ptr %i.aag, i64 32
  %i.adk = getelementptr inbounds nuw i8, ptr %i.aah, i64 32
  %i.adl = load double, ptr %i.adj, align 16, !tbaa !80
  %i.adm = load double, ptr %i.adk, align 16, !tbaa !80
  %i.adn = insertelement <2 x double> poison, double %i.adl, i64 0
  %i.ado = insertelement <2 x double> %i.adn, double %i.adm, i64 1
  %i.adp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ado, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.adi) ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.aai, i64 32
  %i.adr = getelementptr inbounds nuw i8, ptr %i.aaj, i64 32
  %i.ads = load double, ptr %i.adq, align 16, !tbaa !80
  %i.adt = load double, ptr %i.adr, align 16, !tbaa !80
  %i.adu = insertelement <2 x double> poison, double %i.ads, i64 0
  %i.adv = insertelement <2 x double> %i.adu, double %i.adt, i64 1
  %i.adw = getelementptr inbounds nuw i8, ptr %i.aak, i64 32
  %i.adx = getelementptr inbounds nuw i8, ptr %i.aal, i64 32
  %i.ady = load double, ptr %i.adw, align 16, !tbaa !80
  %i.adz = load double, ptr %i.adx, align 16, !tbaa !80
  %i.aea = insertelement <2 x double> poison, double %i.ady, i64 0
  %i.aeb = insertelement <2 x double> %i.aea, double %i.adz, i64 1
  %i.aec = fmul <2 x double> %broadcast.splat225, %i.aaf
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aag, i64 40
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aah, i64 40
  %i.aef = load double, ptr %i.aed, align 8, !tbaa !80
  %i.aeg = load double, ptr %i.aee, align 8, !tbaa !80
  %i.aeh = insertelement <2 x double> poison, double %i.aef, i64 0
  %i.aei = insertelement <2 x double> %i.aeh, double %i.aeg, i64 1
  %i.aej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aei, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.aec) ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aai, i64 40
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aaj, i64 40
  %i.aem = load double, ptr %i.aek, align 8, !tbaa !80
  %i.aen = load double, ptr %i.ael, align 8, !tbaa !80
  %i.aeo = insertelement <2 x double> poison, double %i.aem, i64 0
  %i.aep = insertelement <2 x double> %i.aeo, double %i.aen, i64 1
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aak, i64 40
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aal, i64 40
  %i.aes = load double, ptr %i.aeq, align 8, !tbaa !80
  %i.aet = load double, ptr %i.aer, align 8, !tbaa !80
  %i.aeu = insertelement <2 x double> poison, double %i.aes, i64 0
  %i.aev = insertelement <2 x double> %i.aeu, double %i.aet, i64 1
  %i.aew = fmul <2 x double> %broadcast.splat227, %i.aaf
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aag, i64 48
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aah, i64 48
  %i.aez = load double, ptr %i.aex, align 16, !tbaa !80
  %i.afa = load double, ptr %i.aey, align 16, !tbaa !80
  %i.afb = insertelement <2 x double> poison, double %i.aez, i64 0
  %i.afc = insertelement <2 x double> %i.afb, double %i.afa, i64 1
  %i.afd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afc, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.aew) ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aai, i64 48
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aaj, i64 48
  %i.afg = load double, ptr %i.afe, align 16, !tbaa !80
  %i.afh = load double, ptr %i.aff, align 16, !tbaa !80
  %i.afi = insertelement <2 x double> poison, double %i.afg, i64 0
  %i.afj = insertelement <2 x double> %i.afi, double %i.afh, i64 1
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aak, i64 48
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aal, i64 48
  %i.afm = load double, ptr %i.afk, align 16, !tbaa !80
  %i.afn = load double, ptr %i.afl, align 16, !tbaa !80
  %i.afo = insertelement <2 x double> poison, double %i.afm, i64 0
  %i.afp = insertelement <2 x double> %i.afo, double %i.afn, i64 1
  %i.afq = fmul <2 x double> %broadcast.splat229, %i.aaf
  %i.afr = getelementptr inbounds nuw i8, ptr %i.aag, i64 56
  %i.afs = getelementptr inbounds nuw i8, ptr %i.aah, i64 56
  %i.aft = load double, ptr %i.afr, align 8, !tbaa !80
  %i.afu = load double, ptr %i.afs, align 8, !tbaa !80
  %i.afv = insertelement <2 x double> poison, double %i.aft, i64 0
  %i.afw = insertelement <2 x double> %i.afv, double %i.afu, i64 1
  %i.afx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afw, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.afq) ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.aai, i64 56
  %i.afz = getelementptr inbounds nuw i8, ptr %i.aaj, i64 56
  %i.aga = load double, ptr %i.afy, align 8, !tbaa !80
  %i.agb = load double, ptr %i.afz, align 8, !tbaa !80
  %i.agc = insertelement <2 x double> poison, double %i.aga, i64 0
  %i.agd = insertelement <2 x double> %i.agc, double %i.agb, i64 1
  %1 = fadd <2 x double> %i.aav, %i.aar
  %2 = fadd <2 x double> %i.abn, %i.abh
  %i.age = shufflevector <2 x double> %1, <2 x double> %2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %3 = fadd <2 x double> %i.ach, %i.acb
  %4 = fadd <2 x double> %i.adb, %i.acv
  %i.agf = shufflevector <2 x double> %3, <2 x double> %4, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.agg = shufflevector <4 x double> %i.age, <4 x double> %i.agf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = fadd <2 x double> %i.adv, %i.adp
  %6 = fadd <2 x double> %i.aep, %i.aej
  %i.agh = shufflevector <2 x double> %5, <2 x double> %6, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %7 = fadd <2 x double> %i.afj, %i.afd
  %8 = fadd <2 x double> %i.agd, %i.afx
  %i.agi = shufflevector <2 x double> %7, <2 x double> %8, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.agj = shufflevector <4 x double> %i.agh, <4 x double> %i.agi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x double> %i.agg, <8 x double> %i.agj, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x double> %interleaved.vec, ptr %i.aai, align 16, !tbaa !80
  %i.agk = getelementptr inbounds nuw i8, ptr %i.aak, i64 56
  %i.agl = getelementptr inbounds nuw i8, ptr %i.aal, i64 56
  %i.agm = load double, ptr %i.agk, align 8, !tbaa !80
  %i.agn = load double, ptr %i.agl, align 8, !tbaa !80
  %i.ago = insertelement <2 x double> poison, double %i.agm, i64 0
  %i.agp = insertelement <2 x double> %i.ago, double %i.agn, i64 1
  %9 = fadd <2 x double> %i.aar, %i.aaz
  %10 = fadd <2 x double> %i.abh, %i.abt
  %i.agq = shufflevector <2 x double> %9, <2 x double> %10, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = fadd <2 x double> %i.acb, %i.acn
  %12 = fadd <2 x double> %i.acv, %i.adh
  %i.agr = shufflevector <2 x double> %11, <2 x double> %12, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ags = shufflevector <4 x double> %i.agq, <4 x double> %i.agr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %13 = fadd <2 x double> %i.adp, %i.aeb
  %14 = fadd <2 x double> %i.aej, %i.aev
  %i.agt = shufflevector <2 x double> %13, <2 x double> %14, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %15 = fadd <2 x double> %i.afd, %i.afp
  %16 = fadd <2 x double> %i.afx, %i.agp
  %i.agu = shufflevector <2 x double> %15, <2 x double> %16, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.agv = shufflevector <4 x double> %i.agt, <4 x double> %i.agu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec233 = shufflevector <8 x double> %i.ags, <8 x double> %i.agv, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x double> %interleaved.vec233, ptr %i.aak, align 16, !tbaa !80
  %index.next234 = add nuw i64 %index231, 2       ; 2 uses
  %i.agw = icmp eq i64 %index.next234, 8
  br i1 %i.agw, label %adjust_out_wts.exit.i, label %vector.body230, !llvm.loop !151

adjust_out_wts.exit.i:                            ; preds = %vector.body230
  %i.agx = extractelement <2 x double> %i.yv, i64 0
  %i.agy = fmul double %i.agx, f0x3FB70A3D70A3D70A ; 2 uses
  %broadcast.splatinsert202 = insertelement <2 x double> poison, double %i.agy, i64 0
  %broadcast.splat203 = shufflevector <2 x double> %broadcast.splatinsert202, <2 x double> poison, <2 x i32> zeroinitializer ; 17 uses
  %wide.load206 = load <2 x double>, ptr %i.gd, align 8, !tbaa !80
  %i.agz = fmul <2 x double> %broadcast.splat203, %wide.load206
  %wide.load207 = load <2 x double>, ptr @mid_wt_change, align 16, !tbaa !80
  %i.aha = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.agz) ; 2 uses
  %wide.load208 = load <2 x double>, ptr @mid_wts, align 16, !tbaa !80
  %i.ahb = fadd <2 x double> %wide.load208, %i.aha
  store <2 x double> %i.ahb, ptr @mid_wts, align 16, !tbaa !80
  %wide.load209 = load <2 x double>, ptr @mid_wt_cum_change, align 16, !tbaa !80
  %i.ahc = fadd <2 x double> %i.aha, %wide.load209
  store <2 x double> %i.ahc, ptr @mid_wt_cum_change, align 16, !tbaa !80
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load206.1 = load <2 x double>, ptr %i.ahd, align 8, !tbaa !80
  %i.ahe = fmul <2 x double> %broadcast.splat203, %wide.load206.1
  %wide.load207.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_change, i64 16), align 16, !tbaa !80
  %i.ahf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207.1, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.ahe) ; 2 uses
  %wide.load208.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 16), align 16, !tbaa !80
  %i.ahg = fadd <2 x double> %wide.load208.1, %i.ahf
  store <2 x double> %i.ahg, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 16), align 16, !tbaa !80
  %wide.load209.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 16), align 16, !tbaa !80
  %i.ahh = fadd <2 x double> %i.ahf, %wide.load209.1
  store <2 x double> %i.ahh, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 16), align 16, !tbaa !80
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %wide.load206.2 = load <2 x double>, ptr %i.ahi, align 8, !tbaa !80
  %i.ahj = fmul <2 x double> %broadcast.splat203, %wide.load206.2
  %wide.load207.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_change, i64 32), align 16, !tbaa !80
  %i.ahk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207.2, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.ahj) ; 2 uses
  %wide.load208.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 32), align 16, !tbaa !80
  %i.ahl = fadd <2 x double> %wide.load208.2, %i.ahk
  store <2 x double> %i.ahl, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 32), align 16, !tbaa !80
  %wide.load209.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 32), align 16, !tbaa !80
  %i.ahm = fadd <2 x double> %i.ahk, %wide.load209.2
  store <2 x double> %i.ahm, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 32), align 16, !tbaa !80
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %wide.load206.3 = load <2 x double>, ptr %i.ahn, align 8, !tbaa !80
  %i.aho = fmul <2 x double> %broadcast.splat203, %wide.load206.3
  %wide.load207.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_change, i64 48), align 16, !tbaa !80
  %i.ahp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207.3, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.aho) ; 2 uses
  %wide.load208.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 48), align 16, !tbaa !80
  %i.ahq = fadd <2 x double> %wide.load208.3, %i.ahp
  store <2 x double> %i.ahq, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 48), align 16, !tbaa !80
  %wide.load209.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 48), align 16, !tbaa !80
  %i.ahr = fadd <2 x double> %i.ahp, %wide.load209.3
  store <2 x double> %i.ahr, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 48), align 16, !tbaa !80
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.gd, i64 64
  %wide.load206.4 = load <2 x double>, ptr %i.ahs, align 8, !tbaa !80
  %i.aht = fmul <2 x double> %broadcast.splat203, %wide.load206.4
  %wide.load207.4 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_change, i64 64), align 16, !tbaa !80
  %i.ahu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207.4, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.aht) ; 2 uses
  %wide.load208.4 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 64), align 16, !tbaa !80
  %i.ahv = fadd <2 x double> %wide.load208.4, %i.ahu
  store <2 x double> %i.ahv, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 64), align 16, !tbaa !80
  %wide.load209.4 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 64), align 16, !tbaa !80
  %i.ahw = fadd <2 x double> %i.ahu, %wide.load209.4
  store <2 x double> %i.ahw, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 64), align 16, !tbaa !80
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.gd, i64 80
  %wide.load206.5 = load <2 x double>, ptr %i.ahx, align 8, !tbaa !80
  %i.ahy = fmul <2 x double> %broadcast.splat203, %wide.load206.5
  %wide.load207.5 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_change, i64 80), align 16, !tbaa !80
  %i.ahz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207.5, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.ahy) ; 2 uses
  %wide.load208.5 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 80), align 16, !tbaa !80
  %i.aia = fadd <2 x double> %wide.load208.5, %i.ahz
  store <2 x double> %i.aia, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 80), align 16, !tbaa !80
  %wide.load209.5 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 80), align 16, !tbaa !80
  %i.aib = fadd <2 x double> %i.ahz, %wide.load209.5
  store <2 x double> %i.aib, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 80), align 16, !tbaa !80
  %i.aic = getelementptr inbounds nuw i8, ptr %i.gd, i64 96
  %wide.load206.6 = load <2 x double>, ptr %i.aic, align 8, !tbaa !80
  %i.aid = fmul <2 x double> %broadcast.splat203, %wide.load206.6
  %wide.load207.6 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_change, i64 96), align 16, !tbaa !80
  %i.aie = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207.6, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.aid) ; 2 uses
  %wide.load208.6 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 96), align 16, !tbaa !80
  %i.aif = fadd <2 x double> %wide.load208.6, %i.aie
  store <2 x double> %i.aif, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 96), align 16, !tbaa !80
  %wide.load209.6 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 96), align 16, !tbaa !80
  %i.aig = fadd <2 x double> %i.aie, %wide.load209.6
  store <2 x double> %i.aig, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 96), align 16, !tbaa !80
  %i.aih = getelementptr inbounds nuw i8, ptr %i.gd, i64 112
  %wide.load206.7 = load <2 x double>, ptr %i.aih, align 8, !tbaa !80
  %i.aii = fmul <2 x double> %broadcast.splat203, %wide.load206.7
  %wide.load207.7 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_change, i64 112), align 16, !tbaa !80
  %i.aij = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207.7, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.aii) ; 2 uses
  %wide.load208.7 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 112), align 16, !tbaa !80
  %i.aik = fadd <2 x double> %wide.load208.7, %i.aij
  store <2 x double> %i.aik, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 112), align 16, !tbaa !80
  %wide.load209.7 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 112), align 16, !tbaa !80
  %i.ail = fadd <2 x double> %i.aij, %wide.load209.7
  store <2 x double> %i.ail, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 112), align 16, !tbaa !80
  %i.aim = getelementptr inbounds nuw i8, ptr %i.gd, i64 128
  %wide.load206.8 = load <2 x double>, ptr %i.aim, align 8, !tbaa !80
  %i.ain = fmul <2 x double> %broadcast.splat203, %wide.load206.8
  %wide.load207.8 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_change, i64 128), align 16, !tbaa !80
  %i.aio = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207.8, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.ain) ; 2 uses
  %wide.load208.8 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 128), align 16, !tbaa !80
  %i.aip = fadd <2 x double> %wide.load208.8, %i.aio
  store <2 x double> %i.aip, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 128), align 16, !tbaa !80
  %wide.load209.8 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 128), align 16, !tbaa !80
  %i.aiq = fadd <2 x double> %i.aio, %wide.load209.8
  store <2 x double> %i.aiq, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 128), align 16, !tbaa !80
  %i.air = getelementptr inbounds nuw i8, ptr %i.gd, i64 144
  %wide.load206.9 = load <2 x double>, ptr %i.air, align 8, !tbaa !80
  %i.ais = fmul <2 x double> %broadcast.splat203, %wide.load206.9
  %wide.load207.9 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_change, i64 144), align 16, !tbaa !80
  %i.ait = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207.9, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.ais) ; 2 uses
  %wide.load208.9 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 144), align 16, !tbaa !80
  %i.aiu = fadd <2 x double> %wide.load208.9, %i.ait
  store <2 x double> %i.aiu, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 144), align 16, !tbaa !80
  %wide.load209.9 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 144), align 16, !tbaa !80
  %i.aiv = fadd <2 x double> %i.ait, %wide.load209.9
  store <2 x double> %i.aiv, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 144), align 16, !tbaa !80
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.gd, i64 160
  %wide.load206.10 = load <2 x double>, ptr %i.aiw, align 8, !tbaa !80
  %i.aix = fmul <2 x double> %broadcast.splat203, %wide.load206.10
  %wide.load207.10 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_change, i64 160), align 16, !tbaa !80
  %i.aiy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207.10, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.aix) ; 2 uses
  %wide.load208.10 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 160), align 16, !tbaa !80
  %i.aiz = fadd <2 x double> %wide.load208.10, %i.aiy
  store <2 x double> %i.aiz, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 160), align 16, !tbaa !80
  %wide.load209.10 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 160), align 16, !tbaa !80
  %i.aja = fadd <2 x double> %i.aiy, %wide.load209.10
  store <2 x double> %i.aja, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 160), align 16, !tbaa !80
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.gd, i64 176
  %wide.load206.11 = load <2 x double>, ptr %i.ajb, align 8, !tbaa !80
  %i.ajc = fmul <2 x double> %broadcast.splat203, %wide.load206.11
  %wide.load207.11 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_change, i64 176), align 16, !tbaa !80
  %i.ajd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207.11, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.ajc) ; 2 uses
  %wide.load208.11 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 176), align 16, !tbaa !80
  %i.aje = fadd <2 x double> %wide.load208.11, %i.ajd
  store <2 x double> %i.aje, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 176), align 16, !tbaa !80
  %wide.load209.11 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 176), align 16, !tbaa !80
  %i.ajf = fadd <2 x double> %i.ajd, %wide.load209.11
  store <2 x double> %i.ajf, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 176), align 16, !tbaa !80
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.gd, i64 192
  %wide.load206.12 = load <2 x double>, ptr %i.ajg, align 8, !tbaa !80
  %i.ajh = fmul <2 x double> %broadcast.splat203, %wide.load206.12
  %wide.load207.12 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_change, i64 192), align 16, !tbaa !80
  %i.aji = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207.12, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.ajh) ; 2 uses
  %wide.load208.12 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 192), align 16, !tbaa !80
  %i.ajj = fadd <2 x double> %wide.load208.12, %i.aji
  store <2 x double> %i.ajj, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 192), align 16, !tbaa !80
  %wide.load209.12 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 192), align 16, !tbaa !80
  %i.ajk = fadd <2 x double> %i.aji, %wide.load209.12
  store <2 x double> %i.ajk, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 192), align 16, !tbaa !80
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.gd, i64 208
  %wide.load206.13 = load <2 x double>, ptr %i.ajl, align 8, !tbaa !80
  %i.ajm = fmul <2 x double> %broadcast.splat203, %wide.load206.13
  %wide.load207.13 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_change, i64 208), align 16, !tbaa !80
  %i.ajn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207.13, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.ajm) ; 2 uses
  %wide.load208.13 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 208), align 16, !tbaa !80
  %i.ajo = fadd <2 x double> %wide.load208.13, %i.ajn
  store <2 x double> %i.ajo, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 208), align 16, !tbaa !80
  %wide.load209.13 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 208), align 16, !tbaa !80
  %i.ajp = fadd <2 x double> %i.ajn, %wide.load209.13
  store <2 x double> %i.ajp, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 208), align 16, !tbaa !80
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.gd, i64 224
  %wide.load206.14 = load <2 x double>, ptr %i.ajq, align 8, !tbaa !80
  %i.ajr = fmul <2 x double> %broadcast.splat203, %wide.load206.14
  %wide.load207.14 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_change, i64 224), align 16, !tbaa !80
  %i.ajs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207.14, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.ajr) ; 2 uses
  %wide.load208.14 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 224), align 16, !tbaa !80
  %i.ajt = fadd <2 x double> %wide.load208.14, %i.ajs
  store <2 x double> %i.ajt, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 224), align 16, !tbaa !80
  %wide.load209.14 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 224), align 16, !tbaa !80
  %i.aju = fadd <2 x double> %i.ajs, %wide.load209.14
  store <2 x double> %i.aju, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 224), align 16, !tbaa !80
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.gd, i64 240
  %wide.load206.15 = load <2 x double>, ptr %i.ajv, align 8, !tbaa !80
  %i.ajw = fmul <2 x double> %broadcast.splat203, %wide.load206.15
  %wide.load207.15 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_change, i64 240), align 16, !tbaa !80
  %i.ajx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207.15, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.ajw) ; 2 uses
  %wide.load208.15 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 240), align 16, !tbaa !80
  %i.ajy = fadd <2 x double> %wide.load208.15, %i.ajx
  store <2 x double> %i.ajy, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 240), align 16, !tbaa !80
  %wide.load209.15 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 240), align 16, !tbaa !80
  %i.ajz = fadd <2 x double> %i.ajx, %wide.load209.15
  store <2 x double> %i.ajz, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 240), align 16, !tbaa !80
  %i.aka = getelementptr inbounds nuw i8, ptr %i.gd, i64 256
  %wide.load206.16 = load <2 x double>, ptr %i.aka, align 8, !tbaa !80
  %i.akb = fmul <2 x double> %broadcast.splat203, %wide.load206.16
  %wide.load207.16 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_change, i64 256), align 16, !tbaa !80
  %i.akc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load207.16, <2 x double> splat (double f0x3FB70A3D70A3D70A), <2 x double> %i.akb) ; 2 uses
  %wide.load208.16 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 256), align 16, !tbaa !80
  %i.akd = fadd <2 x double> %wide.load208.16, %i.akc
  store <2 x double> %i.akd, ptr getelementptr inbounds nuw (i8, ptr @mid_wts, i64 256), align 16, !tbaa !80
  %wide.load209.16 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 256), align 16, !tbaa !80
  %i.ake = fadd <2 x double> %i.akc, %wide.load209.16
  store <2 x double> %i.ake, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_cum_change, i64 256), align 16, !tbaa !80
  %i.akf = getelementptr inbounds nuw i8, ptr %i.gd, i64 272
  %i.akg = load double, ptr %i.akf, align 8, !tbaa !80
  %i.akh = fmul double %i.agy, %i.akg
  %i.aki = load double, ptr getelementptr inbounds nuw (i8, ptr @mid_wt_change, i64 272), align 16, !tbaa !80
end_hunk_0
