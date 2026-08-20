inline.NumInlined: 48
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 42
begin_hunk_0_@CVode:bb.a
  %i.bal = fcmp olt double %i.bah, %i.bak
  %.0298..1.i.i.i = select i1 %i.bal, double %i.bah, double %i.bak ; 2 uses
  %i.bam = fcmp ogt double %i.baj, %i.bak
  %i.ban = select i1 %i.bam, double %i.baj, double %i.bak ; 2 uses
  %gep.2.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 96
  %i.bao = load double, ptr %gep.2.i.i.i, align 8, !tbaa !25 ; 10 uses
  %i.bap = fcmp olt double %.0298..1.i.i.i, %i.bao
  %.0298..2.i.i.i = select i1 %i.bap, double %.0298..1.i.i.i, double %i.bao ; 2 uses
  %i.baq = fcmp ogt double %i.ban, %i.bao
  %i.bar = select i1 %i.baq, double %i.ban, double %i.bao ; 2 uses
  %gep.3.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 128
  %i.bas = load double, ptr %gep.3.i.i.i, align 8, !tbaa !25 ; 9 uses
  %i.bat = fcmp olt double %.0298..2.i.i.i, %i.bas
  %.0298..3.i.i.i = select i1 %i.bat, double %.0298..2.i.i.i, double %i.bas ; 2 uses
  %i.bau = fcmp ogt double %i.bar, %i.bas
  %i.bav = select i1 %i.bau, double %i.bar, double %i.bas ; 2 uses
  %gep.4.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 160
  %i.baw = load double, ptr %gep.4.i.i.i, align 8, !tbaa !25 ; 7 uses
  %i.bax = fcmp olt double %.0298..3.i.i.i, %i.baw
  %.0298..4.i.i.i = select i1 %i.bax, double %.0298..3.i.i.i, double %i.baw
  %i.bay = fcmp ogt double %i.bav, %i.baw
  %i.baz = select i1 %i.bay, double %i.bav, double %i.baw ; 4 uses
  %i.bba = fmul double %i.baz, 1.000000e-10
  %i.bbb = fcmp olt double %.0298..4.i.i.i, %i.bba
  br i1 %i.bbb, label %cvSLdet.exit.thread.i.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.bbc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i128.i
  store double %i.baz, ptr %i.bbc, align 8, !tbaa !25
  %i.bbd = fmul double %i.baz, %i.baz
  %i.bbe = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i128.i
  store double %i.bbd, ptr %i.bbe, align 8, !tbaa !25
  %i.bbf = fdiv double %i.bah, %i.bak             ; 3 uses
  %i.bbg = fadd double %i.bbf, 0.000000e+00
  %i.bbh = fdiv double %i.bak, %i.bao             ; 3 uses
  %i.bbi = fadd double %i.bbg, %i.bbh
  %i.bbj = fdiv double %i.bao, %i.bas             ; 3 uses
  %i.bbk = fadd double %i.bbi, %i.bbj
  %i.bbl = fdiv double %i.bas, %i.baw             ; 3 uses
  %i.bbm = fadd double %i.bbk, %i.bbl
  %i.bbn = fmul double %i.bbm, 2.500000e-01       ; 2 uses
  %i.bbo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i128.i
  store double %i.bbn, ptr %i.bbo, align 8, !tbaa !25
  %i.bbp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i128.i
  %i.bbq = call double @llvm.fmuladd.f64(double %i.bbf, double %i.bbf, double 0.000000e+00)
  %i.bbr = call double @llvm.fmuladd.f64(double %i.bbh, double %i.bbh, double %i.bbq)
  %i.bbs = call double @llvm.fmuladd.f64(double %i.bbj, double %i.bbj, double %i.bbr)
  %i.bbt = call double @llvm.fmuladd.f64(double %i.bbl, double %i.bbl, double %i.bbs)
  %i.bbu = insertelement <2 x double> poison, double %i.bbn, i64 0
  %i.bbv = insertelement <2 x double> %i.bbu, double %i.bak, i64 1 ; 2 uses
  %i.bbw = fneg <2 x double> %i.bbv
  %i.bbx = fmul <2 x double> %i.bbv, %i.bbw
  %i.bby = insertelement <2 x double> poison, double %i.bbt, i64 0
  %i.bbz = insertelement <2 x double> %i.bby, double %i.bah, i64 1
  %i.bca = insertelement <2 x double> <double 2.500000e-01, double poison>, double %i.bao, i64 1
  %i.bcb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bbz, <2 x double> %i.bca, <2 x double> %i.bbx) ; 2 uses
  %i.bcc = extractelement <2 x double> %i.bcb, i64 0
  %i.bcd = call double @llvm.fabs.f64(double %i.bcc)
  store double %i.bcd, ptr %i.bbp, align 8, !tbaa !25
  %i.bce = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv.i.i128.i
  %i.bcf = extractelement <2 x double> %i.bcb, i64 1 ; 2 uses
  store double %i.bcf, ptr %i.bce, align 8, !tbaa !25
  %i.bcg = fneg double %i.bas
  %i.bch = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv.i.i128.i
  %i.bci = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %indvars.iv.i.i128.i
  store double 0.000000e+00, ptr %i.bci, align 8, !tbaa !25
  %i.bcj = insertelement <2 x double> poison, double %i.bah, i64 0
  %i.bck = insertelement <2 x double> %i.bcj, double %i.bao, i64 1
  %i.bcl = insertelement <2 x double> poison, double %i.bcg, i64 0
  %i.bcm = shufflevector <2 x double> %i.bcl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bcn = fmul <2 x double> %i.bck, %i.bcm
  %i.bco = insertelement <2 x double> poison, double %i.bak, i64 0
  %i.bcp = shufflevector <2 x double> %i.bco, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bcq = insertelement <2 x double> poison, double %i.bao, i64 0
  %i.bcr = insertelement <2 x double> %i.bcq, double %i.baw, i64 1
  %i.bcs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bcp, <2 x double> %i.bcr, <2 x double> %i.bcn) ; 2 uses
  %i.bct = extractelement <2 x double> %i.bcs, i64 0 ; 2 uses
  store double %i.bct, ptr %i.bch, align 8, !tbaa !25
  %i.bcu = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %indvars.iv.i.i128.i
  %i.bcv = extractelement <2 x double> %i.bcs, i64 1 ; 2 uses
  store double %i.bcv, ptr %i.bcu, align 8, !tbaa !25
  %i.bcw = fneg double %i.baw
  %i.bcx = fmul double %i.bao, %i.bcw
  %i.bcy = call double @llvm.fmuladd.f64(double %i.bas, double %i.bas, double %i.bcx) ; 2 uses
  %i.bcz = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %indvars.iv.i.i128.i
  store double %i.bcy, ptr %i.bcz, align 8, !tbaa !25
  %invariant.gep352.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i128.i ; 5 uses
  %gep353.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 32
  store double %i.bcy, ptr %gep353.i.i.i, align 8, !tbaa !25
  %gep353.1.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 64
  store double %i.bcv, ptr %gep353.1.i.i.i, align 8, !tbaa !25
  %gep353.2.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 96
  store double 0.000000e+00, ptr %gep353.2.i.i.i, align 8, !tbaa !25
  %gep353.3.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 128
  store double %i.bct, ptr %gep353.3.i.i.i, align 8, !tbaa !25
  %gep353.4.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 160
  store double %i.bcf, ptr %gep353.4.i.i.i, align 8, !tbaa !25
  %indvars.iv.next.i.i129.i = add nuw nsw i64 %indvars.iv.i.i128.i, 1 ; 2 uses
  %exitcond.not.i.i130.i = icmp eq i64 %indvars.iv.next.i.i129.i, 4
  br i1 %exitcond.not.i.i130.i, label %bb.hu, label %bb.hs

bb.hu:                                            ; preds = %bb.ht
  %i.bda = load double, ptr %i.nm, align 8, !tbaa !25 ; 4 uses
  %i.bdb = load double, ptr %i.nn, align 16, !tbaa !25 ; 4 uses
  %i.bdc = load double, ptr %i.no, align 8, !tbaa !25 ; 4 uses
  %i.bdd = fcmp olt double %i.bdb, %i.bdc
  %i.bde = select i1 %i.bdd, double %i.bdb, double %i.bdc ; 2 uses
  %i.bdf = fcmp olt double %i.bda, %i.bde
  %..i.i131.i = select i1 %i.bdf, double %i.bda, double %i.bde
  %i.bdg = fcmp olt double %..i.i131.i, 1.000000e-08
  br i1 %i.bdg, label %bb.hv, label %bb.hx

bb.hv:                                            ; preds = %bb.hu
  %i.bdh = fcmp ogt double %i.bdb, %i.bdc
  %i.bdi = select i1 %i.bdh, double %i.bdb, double %i.bdc ; 2 uses
  %i.bdj = fcmp ogt double %i.bda, %i.bdi
  %i.bdk = select i1 %i.bdj, double %i.bda, double %i.bdi
  %i.bdl = fcmp ogt double %i.bdk, 2.500000e-07
  br i1 %i.bdl, label %cvSLdet.exit.thread.i.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.bdm = load double, ptr %i.oo, align 8, !tbaa !25 ; 2 uses
  %i.bdn = load double, ptr %i.op, align 16, !tbaa !25 ; 2 uses
  %i.bdo = fadd double %i.bdm, %i.bdn
  %i.bdp = load double, ptr %i.oq, align 8, !tbaa !25 ; 2 uses
  %i.bdq = fadd double %i.bdo, %i.bdp
  %i.bdr = fdiv double %i.bdq, 3.000000e+00       ; 4 uses
  %i.bds = fsub double %i.bdm, %i.bdr
  %i.bdt = call double @llvm.fabs.f64(double %i.bds) ; 2 uses
  %i.bdu = fsub double %i.bdn, %i.bdr
  %i.bdv = call double @llvm.fabs.f64(double %i.bdu) ; 2 uses
  %i.bdw = fcmp ogt double %i.bdt, %i.bdv
  %i.bdx = select i1 %i.bdw, double %i.bdt, double %i.bdv ; 2 uses
  %i.bdy = fsub double %i.bdp, %i.bdr
  %i.bdz = call double @llvm.fabs.f64(double %i.bdy) ; 2 uses
  %i.bea = fcmp ogt double %i.bdx, %i.bdz
  %i.beb = select i1 %i.bea, double %i.bdx, double %i.bdz
  %i.bec = fcmp ogt double %i.beb, 5.000000e-04
  br i1 %i.bec, label %cvSLdet.exit.thread.i.i, label %bb.ic

bb.hx:                                            ; preds = %bb.hu
  %i.bed = load double, ptr %i.np, align 8, !tbaa !25 ; 3 uses
  %i.bee = call double @llvm.fabs.f64(double %i.bed)
  %i.bef = load double, ptr %i.nq, align 8, !tbaa !25 ; 2 uses
  %i.beg = fmul double %i.bef, 1.000000e-10       ; 2 uses
  %i.beh = fcmp olt double %i.bee, %i.beg
  br i1 %i.beh, label %cvSLdet.exit.thread.i.i, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.bei = load double, ptr %i.nr, align 16, !tbaa !25
  %i.bej = fneg double %i.bei
  %i.bek = fdiv double %i.bej, %i.bed             ; 3 uses
  %i.bel = load double, ptr %i.ns, align 16, !tbaa !25
  %i.bem = load double, ptr %i.nt, align 8, !tbaa !25 ; 2 uses
  %i.ben = call double @llvm.fmuladd.f64(double %i.bek, double %i.bem, double %i.bel) ; 2 uses
  %i.beo = call double @llvm.fabs.f64(double %i.ben)
  %i.bep = load double, ptr %i.nu, align 16, !tbaa !25 ; 4 uses
  %i.beq = fmul double %i.bep, 1.000000e-10       ; 2 uses
  %i.ber = fcmp olt double %i.beo, %i.beq
  br i1 %i.ber, label %cvSLdet.exit.thread.i.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.bes = load double, ptr %i.nv, align 8, !tbaa !25
  %i.bet = fneg double %i.bes
  %i.beu = fdiv double %i.bet, %i.bed             ; 3 uses
  %i.bev = load double, ptr %i.nw, align 8, !tbaa !25 ; 2 uses
  %i.bew = load double, ptr %i.nx, align 8, !tbaa !25
  %i.bex = call double @llvm.fmuladd.f64(double %i.beu, double %i.bev, double %i.bew)
  %i.bey = load double, ptr %i.ny, align 8, !tbaa !25
  %i.bez = call double @llvm.fmuladd.f64(double %i.beu, double %i.bem, double %i.bey)
  %i.bfa = load double, ptr %i.nz, align 16, !tbaa !25
  %i.bfb = call double @llvm.fmuladd.f64(double %i.bek, double %i.bev, double %i.bfa)
  %i.bfc = fneg double %i.bez
  %i.bfd = fdiv double %i.bfc, %i.ben             ; 2 uses
  %i.bfe = call double @llvm.fmuladd.f64(double %i.bfd, double %i.bfb, double %i.bex) ; 2 uses
  %i.bff = call double @llvm.fabs.f64(double %i.bfe)
  %i.bfg = load double, ptr %i.oa, align 8, !tbaa !25 ; 4 uses
  %i.bfh = fmul double %i.bfg, 1.000000e-10       ; 2 uses
  %i.bfi = fcmp olt double %i.bff, %i.bfh
  br i1 %i.bfi, label %cvSLdet.exit.thread.i.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.bfj = load <2 x double>, ptr %i.ob, align 8
  %i.bfk = load <2 x double>, ptr %i.oc, align 16, !tbaa !25
  %i.bfl = insertelement <2 x double> poison, double %i.bek, i64 0
  %i.bfm = insertelement <2 x double> %i.bfl, double %i.beu, i64 1
  %i.bfn = shufflevector <2 x double> %i.bfj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bfo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bfm, <2 x double> %i.bfn, <2 x double> %i.bfk) ; 2 uses
  %i.bfp = extractelement <2 x double> %i.bfo, i64 0
  %i.bfq = extractelement <2 x double> %i.bfo, i64 1
  %i.bfr = call double @llvm.fmuladd.f64(double %i.bfd, double %i.bfp, double %i.bfq)
  %i.bfs = fneg double %i.bfr
  %i.bft = fdiv double %i.bfs, %i.bfe             ; 9 uses
  %i.bfu = fcmp olt double %i.bft, 1.000000e-10
  %i.bfv = fcmp ogt double %i.bft, 1.000000e+02
  %or.cond.i.i132.i = or i1 %i.bfu, %i.bfv
  br i1 %or.cond.i.i132.i, label %cvSLdet.exit.thread.i.i, label %.preheader338.i.i.i

.preheader338.i.i.i:                              ; preds = %bb.ia
  %i.bfw = fmul double %i.bft, %i.bft             ; 2 uses
  %i.bfx = load <2 x double>, ptr %i.od, align 8, !tbaa !25 ; 5 uses
  %i.bfy = load <2 x double>, ptr %i.oe, align 8, !tbaa !25 ; 6 uses
  %i.bfz = load <2 x double>, ptr %i.of, align 8, !tbaa !25 ; 6 uses
  %i.bga = load <2 x double>, ptr %i.og, align 8, !tbaa !25 ; 6 uses
  %i.bgb = insertelement <2 x double> poison, double %i.bft, i64 0
  %i.bgc = shufflevector <2 x double> %i.bgb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bgd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bgc, <2 x double> %i.bga, <2 x double> %i.bfz)
  %i.bge = insertelement <2 x double> poison, double %i.bfw, i64 0
  %i.bgf = shufflevector <2 x double> %i.bge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bgg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bgf, <2 x double> %i.bgd, <2 x double> %i.bfy)
  %i.bgh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bgc, <2 x double> %i.bgg, <2 x double> %i.bfx) ; 2 uses
  %i.bgi = load double, ptr %i.oh, align 8, !tbaa !25 ; 3 uses
  %i.bgj = load double, ptr %i.oi, align 8, !tbaa !25 ; 4 uses
  %i.bgk = load double, ptr %i.oj, align 8, !tbaa !25 ; 4 uses
  %i.bgl = load double, ptr %i.ok, align 8, !tbaa !25 ; 4 uses
  %i.bgm = call double @llvm.fmuladd.f64(double %i.bft, double %i.bgl, double %i.bgk)
  %i.bgn = call double @llvm.fmuladd.f64(double %i.bfw, double %i.bgm, double %i.bgj)
  %i.bgo = call double @llvm.fmuladd.f64(double %i.bft, double %i.bgn, double %i.bgi) ; 2 uses
  %i.bgp = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bgh)
  %i.bgq = insertelement <2 x double> poison, double %i.bef, i64 0 ; 2 uses
  %i.bgr = insertelement <2 x double> %i.bgq, double %i.bep, i64 1 ; 2 uses
  %i.bgs = fdiv <2 x double> %i.bgp, %i.bgr       ; 2 uses
  %i.bgt = extractelement <2 x double> %i.bgs, i64 0 ; 2 uses
  %i.bgu = fcmp ogt double %i.bgt, 0.000000e+00
  %.1293.i.i.i = select i1 %i.bgu, double %i.bgt, double 0.000000e+00 ; 2 uses
  %i.bgv = extractelement <2 x double> %i.bgs, i64 1 ; 2 uses
  %i.bgw = fcmp ogt double %i.bgv, %.1293.i.i.i
  %.1293.1.i.i.i = select i1 %i.bgw, double %i.bgv, double %.1293.i.i.i ; 2 uses
  %i.bgx = call double @llvm.fabs.f64(double %i.bgo)
  %i.bgy = fdiv double %i.bgx, %i.bfg             ; 2 uses
  %i.bgz = fcmp ogt double %i.bgy, %.1293.1.i.i.i
  %.1293.2.i.i.i = select i1 %i.bgz, double %i.bgy, double %.1293.1.i.i.i
  %i.bha = fcmp olt double %.1293.2.i.i.i, 1.000000e-03
  br i1 %i.bha, label %bb.ic, label %.preheader335.i.i.i.preheader

.preheader335.i.i.i.preheader:                    ; preds = %.preheader338.i.i.i
  %i.bhb = insertelement <2 x double> poison, double %i.beg, i64 0
  %i.bhc = insertelement <2 x double> %i.bhb, double %i.beq, i64 1
  %i.bhd = shufflevector <2 x double> %i.bga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bhe = shufflevector <2 x double> %i.bfz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bhf = shufflevector <2 x double> %i.bfy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bhg = shufflevector <2 x double> %i.bfx, <2 x double> poison, <2 x i32> zeroinitializer
  %5 = extractelement <2 x double> %i.bfz, i64 1
  %6 = extractelement <2 x double> %i.bga, i64 1
  %i.bhh = extractelement <2 x double> %i.bfy, i64 1
  %i.bhi = shufflevector <2 x double> %i.bgq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bhj = shufflevector <2 x double> %i.bga, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bhk = shufflevector <2 x double> %i.bfz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bhl = shufflevector <2 x double> %i.bfy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bhm = shufflevector <2 x double> %i.bfx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bhn = insertelement <2 x double> poison, double %i.bep, i64 1
  %i.bho = insertelement <2 x double> poison, double %i.bgl, i64 0
  %i.bhp = shufflevector <2 x double> %i.bho, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bhq = insertelement <2 x double> poison, double %i.bgk, i64 0
  %i.bhr = shufflevector <2 x double> %i.bhq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bhs = insertelement <2 x double> poison, double %i.bgj, i64 0
  %i.bht = shufflevector <2 x double> %i.bhs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bhu = insertelement <2 x double> poison, double %i.bgi, i64 0
  %i.bhv = shufflevector <2 x double> %i.bhu, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = extractelement <2 x double> %i.bfz, i64 0
  %8 = extractelement <2 x double> %i.bga, i64 0
  %9 = extractelement <2 x double> %i.bfy, i64 0
  %10 = extractelement <2 x double> %i.bfx, i64 0
  %i.bhw = insertelement <2 x double> poison, double %i.bfg, i64 0
  %i.bhx = shufflevector <2 x double> %i.bhw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bhy = insertelement <2 x double> poison, double %i.bep, i64 0
  %i.bhz = insertelement <2 x double> %i.bhy, double %i.bfg, i64 1
  br label %.preheader335.i.i.i

.preheader335.i.i.i:                              ; preds = %.preheader335.i.i.i.preheader, %.preheader.i.i133.i
  %.sroa.10.0.i.i.i = phi double [ %i.blh, %.preheader.i.i133.i ], [ %i.bgo, %.preheader335.i.i.i.preheader ]
  %.0299376.i.i.i = phi double [ %i.bld, %.preheader.i.i133.i ], [ %i.bft, %.preheader335.i.i.i.preheader ] ; 5 uses
  %.0305375.i.i.i = phi i32 [ %.2307.2.i.i.i, %.preheader.i.i133.i ], [ 0, %.preheader335.i.i.i.preheader ]
  %.0308374.i.i.i = phi i32 [ %i.bli, %.preheader.i.i133.i ], [ 1, %.preheader335.i.i.i.preheader ]
  %i.bia = phi <2 x double> [ %i.blk, %.preheader.i.i133.i ], [ %i.bgh, %.preheader335.i.i.i.preheader ]
  %i.bib = fmul double %.0299376.i.i.i, %.0299376.i.i.i ; 2 uses
  %i.bic = fmul double %.0299376.i.i.i, 4.000000e+00 ; 2 uses
  %i.bid = fneg <2 x double> %i.bia
  %i.bie = fmul double %i.bgl, %i.bic
  %i.bif = fneg double %.sroa.10.0.i.i.i
  %i.big = insertelement <2 x double> poison, double %i.bic, i64 0
  %i.bih = shufflevector <2 x double> %i.big, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bii = fmul <2 x double> %i.bga, %i.bih
  %i.bij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bfz, <2 x double> splat (double 3.000000e+00), <2 x double> %i.bii)
  %i.bik = insertelement <2 x double> poison, double %i.bib, i64 0
  %i.bil = shufflevector <2 x double> %i.bik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bim = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bil, <2 x double> %i.bij, <2 x double> %i.bfy) ; 2 uses
  %i.bin = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bim)
  %i.bio = fcmp ogt <2 x double> %i.bin, %i.bhc
  %i.bip = fdiv <2 x double> %i.bid, %i.bim
  %i.biq = select <2 x i1> %i.bio, <2 x double> %i.bip, <2 x double> zeroinitializer
  %i.bir = insertelement <2 x double> poison, double %.0299376.i.i.i, i64 0
  %i.bis = shufflevector <2 x double> %i.bir, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bit = fadd <2 x double> %i.bis, %i.biq       ; 10 uses
  %i.biu = extractelement <2 x double> %i.bit, i64 0
  store double %i.biu, ptr %i.ol, align 8, !tbaa !25
  %i.biv = extractelement <2 x double> %i.bit, i64 1
  store double %i.biv, ptr %i.om, align 16, !tbaa !25
  %i.biw = fmul <2 x double> %i.bit, %i.bit       ; 3 uses
  %i.bix = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bit, <2 x double> %i.bhd, <2 x double> %i.bhe)
  %i.biy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.biw, <2 x double> %i.bix, <2 x double> %i.bhf)
  %i.biz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bit, <2 x double> %i.biy, <2 x double> %i.bhg) ; 2 uses
  store <2 x double> %i.biz, ptr %gep364.i.i.i, align 8, !tbaa !25
  %i.bja = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.biz)
  %i.bjb = fdiv <2 x double> %i.bja, %i.bhi       ; 3 uses
  %i.bjc = fcmp ogt <2 x double> %i.bjb, zeroinitializer ; 2 uses
  %i.bjd = extractelement <2 x i1> %i.bjc, i64 0
  %i.bje = extractelement <2 x double> %i.bjb, i64 0
  %.1291.i.i.i = select i1 %i.bjd, double %i.bje, double 0.000000e+00 ; 2 uses
  %i.bjf = extractelement <2 x i1> %i.bjc, i64 1
  %i.bjg = extractelement <2 x double> %i.bjb, i64 1
  %.1291.1422.i.i.i = select i1 %i.bjf, double %i.bjg, double 0.000000e+00
  %i.bjh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bit, <2 x double> %i.bhj, <2 x double> %i.bhk)
  %i.bji = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.biw, <2 x double> %i.bjh, <2 x double> %i.bhl)
  %i.bjj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bit, <2 x double> %i.bji, <2 x double> %i.bhm) ; 3 uses
  %i.bjk = extractelement <2 x double> %i.bjj, i64 0
  %i.bjl = call double @llvm.fabs.f64(double %i.bjk)
  %i.bjm = call double @llvm.fmuladd.f64(double %i.bgk, double 3.000000e+00, double %i.bie)
  %i.bjn = call double @llvm.fmuladd.f64(double %i.bib, double %i.bjm, double %i.bgj) ; 2 uses
  %i.bjo = call double @llvm.fabs.f64(double %i.bjn)
  %i.bjp = fcmp ogt double %i.bjo, %i.bfh
  %i.bjq = insertelement <2 x double> poison, double %i.bif, i64 0
  %i.bjr = insertelement <2 x double> %i.bjq, double %i.bjl, i64 1
  %i.bjs = insertelement <2 x double> %i.bhn, double %i.bjn, i64 0
  %i.bjt = fdiv <2 x double> %i.bjr, %i.bjs       ; 2 uses
  %i.bju = extractelement <2 x double> %i.bjt, i64 0
  %.sroa.8.0.i.i.i = select i1 %i.bjp, double %i.bju, double 0.000000e+00
  %i.bjv = fadd double %.0299376.i.i.i, %.sroa.8.0.i.i.i ; 9 uses
  store double %i.bjv, ptr %i.on, align 8, !tbaa !25
  %i.bjw = extractelement <2 x double> %i.bjt, i64 1 ; 2 uses
  %i.bjx = fcmp ogt double %i.bjw, %.1291.i.i.i
  %.1291.1.i.i.i = select i1 %i.bjx, double %i.bjw, double %.1291.i.i.i ; 2 uses
  store <2 x double> %i.bjj, ptr %gep364.1.i.i.i, align 8, !tbaa !25
  %i.bjy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bit, <2 x double> %i.bhp, <2 x double> %i.bhr)
  %i.bjz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.biw, <2 x double> %i.bjy, <2 x double> %i.bht)
  %i.bka = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bit, <2 x double> %i.bjz, <2 x double> %i.bhv) ; 3 uses
  store <2 x double> %i.bka, ptr %gep364.2.i.i.i, align 8, !tbaa !25
  %i.bkb = fmul double %i.bjv, %i.bjv             ; 3 uses
  %11 = call double @llvm.fmuladd.f64(double %i.bjv, double %8, double %7)
  %12 = call double @llvm.fmuladd.f64(double %i.bkb, double %11, double %9)
  %13 = call double @llvm.fmuladd.f64(double %i.bjv, double %12, double %10) ; 2 uses
  store double %13, ptr %gep364.2423.i.i.i, align 8, !tbaa !25
  %i.bkc = insertelement <2 x double> %i.bjj, double %13, i64 0
  %14 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bkc)
  %15 = fdiv <2 x double> %14, %i.bgr             ; 2 uses
  %16 = call double @llvm.fmuladd.f64(double %i.bjv, double %i.bgl, double %i.bgk)
  %17 = call double @llvm.fmuladd.f64(double %i.bkb, double %16, double %i.bgj)
  %18 = call double @llvm.fmuladd.f64(double %i.bjv, double %17, double %i.bgi) ; 2 uses
  store double %18, ptr %gep364.2.2.i.i.i, align 8, !tbaa !25
  %19 = shufflevector <2 x double> %i.bka, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %20 = insertelement <2 x double> %19, double %18, i64 0
  %i.bkd = call <2 x double> @llvm.fabs.v2f64(<2 x double> %20)
  %i.bke = fdiv <2 x double> %i.bkd, %i.bhx       ; 3 uses
  %i.bkf = insertelement <2 x double> <double 0.000000e+00, double poison>, double %.1291.1422.i.i.i, i64 1 ; 2 uses
  %i.bkg = fcmp ogt <2 x double> %15, %i.bkf
  %i.bkh = extractelement <2 x double> %i.bke, i64 1 ; 2 uses
  %i.bki = fcmp ogt double %i.bkh, %.1291.1.i.i.i
  %i.bkj = select <2 x i1> %i.bkg, <2 x double> %15, <2 x double> %i.bkf ; 2 uses
  %.1291.2.i.i.i = select i1 %i.bki, double %i.bkh, double %.1291.1.i.i.i ; 3 uses
  %21 = call double @llvm.fmuladd.f64(double %i.bjv, double %6, double %5)
  %i.bkk = call double @llvm.fmuladd.f64(double %i.bkb, double %21, double %i.bhh)
  %22 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.bjv, i64 0
  %i.bkl = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bkk, i64 0
  %23 = shufflevector <2 x double> %i.bfx, <2 x double> %i.bka, <2 x i32> <i32 1, i32 3>
  %24 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %22, <2 x double> %i.bkl, <2 x double> %23) ; 2 uses
  %25 = extractelement <2 x double> %24, i64 0
  store double %25, ptr %gep364.1.2.i.i.i, align 8, !tbaa !25
  %i.bkm = call <2 x double> @llvm.fabs.v2f64(<2 x double> %24)
  %i.bkn = fdiv <2 x double> %i.bkm, %i.bhz       ; 2 uses
  %i.bko = fcmp ogt <2 x double> %i.bkn, %i.bkj
  %i.bkp = fadd double %.1291.2.i.i.i, 1.000000e+00 ; 2 uses
  %i.bkq = fcmp olt double %.1291.2.i.i.i, %i.bkp ; 2 uses
  %i.bkr = select <2 x i1> %i.bko, <2 x double> %i.bkn, <2 x double> %i.bkj ; 3 uses
  %.2307.i.i.i = select i1 %i.bkq, i32 1, i32 %.0305375.i.i.i
  %.2.i.i.i = select i1 %i.bkq, double %.1291.2.i.i.i, double %i.bkp ; 2 uses
  %i.bks = insertelement <2 x double> %i.bke, double %.2.i.i.i, i64 1
  %i.bkt = fcmp ogt <2 x double> %i.bks, %i.bkr   ; 2 uses
  %i.bku = extractelement <2 x i1> %i.bkt, i64 1
  %.2307.1.i.i.i = select i1 %i.bku, i32 2, i32 %.2307.i.i.i
  %i.bkv = shufflevector <2 x double> %i.bke, <2 x double> %i.bkr, <2 x i32> <i32 0, i32 3>
  %i.bkw = insertelement <2 x double> %i.bkr, double %.2.i.i.i, i64 1
  %i.bkx = select <2 x i1> %i.bkt, <2 x double> %i.bkv, <2 x double> %i.bkw ; 2 uses
  %i.bky = extractelement <2 x double> %i.bkx, i64 0 ; 2 uses
  %i.bkz = extractelement <2 x double> %i.bkx, i64 1 ; 2 uses
  %i.bla = fcmp olt double %i.bky, %i.bkz         ; 2 uses
  %.2307.2.i.i.i = select i1 %i.bla, i32 3, i32 %.2307.1.i.i.i ; 2 uses
  %.2.2.i.i.i = select i1 %i.bla, double %i.bky, double %i.bkz ; 2 uses
  %i.blb = zext nneg i32 %.2307.2.i.i.i to i64    ; 2 uses
  %i.blc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.blb
  %i.bld = load double, ptr %i.blc, align 8, !tbaa !25 ; 2 uses
  %i.ble = fcmp olt double %.2.2.i.i.i, 1.000000e-03
  br i1 %i.ble, label %bb.ib, label %.preheader.i.i133.i

.preheader.i.i133.i:                              ; preds = %.preheader335.i.i.i
  %invariant.gep371.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.blb ; 3 uses
  %gep372.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i.i, i64 32
  %i.blf = load double, ptr %gep372.i.i.i, align 8, !tbaa !25
  %gep372.1.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i.i, i64 64
  %i.blg = load double, ptr %gep372.1.i.i.i, align 8, !tbaa !25
  %gep372.2.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i.i, i64 96
  %i.blh = load double, ptr %gep372.2.i.i.i, align 8, !tbaa !25
  %i.bli = add nuw nsw i32 %.0308374.i.i.i, 1     ; 2 uses
  %exitcond433.not.i.i.i = icmp eq i32 %i.bli, 4
  %i.blj = insertelement <2 x double> poison, double %i.blf, i64 0
  %i.blk = insertelement <2 x double> %i.blj, double %i.blg, i64 1
  br i1 %exitcond433.not.i.i.i, label %bb.ib, label %.preheader335.i.i.i

bb.ib:                                            ; preds = %.preheader.i.i133.i, %.preheader335.i.i.i
  %.0302.i.i.i = phi i32 [ 0, %.preheader.i.i133.i ], [ 3, %.preheader335.i.i.i ]
  %i.bll = fcmp ogt double %.2.2.i.i.i, 1.000000e-03
  br i1 %i.bll, label %cvSLdet.exit.thread.i.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %.preheader338.i.i.i, %bb.hw
  %.1303.i.i.i = phi i32 [ %.0302.i.i.i, %bb.ib ], [ 1, %bb.hw ], [ 2, %.preheader338.i.i.i ] ; 2 uses
  %.2301.i.i.i = phi double [ %i.bld, %bb.ib ], [ %i.bdr, %bb.hw ], [ %i.bft, %.preheader338.i.i.i ] ; 22 uses
  %i.blm = fmul double %.2301.i.i.i, %.2301.i.i.i ; 3 uses
  %i.bln = load double, ptr %i.mu, align 8, !tbaa !25
  %i.blo = fmul double %.2301.i.i.i, %i.bln       ; 2 uses
  %i.blp = load double, ptr %i.mt, align 8, !tbaa !25 ; 2 uses
  %i.blq = fmul double %.2301.i.i.i, %i.blp
  %i.blr = fmul double %.2301.i.i.i, %i.blq       ; 2 uses
  %i.bls = load double, ptr %i.mr, align 8, !tbaa !25
  %i.blt = fmul double %.2301.i.i.i, %i.bls
  %i.blu = fmul double %.2301.i.i.i, %i.blt
  %i.blv = fmul double %.2301.i.i.i, %i.blu
  %i.blw = fsub double %i.blo, %i.blr             ; 4 uses
  %i.blx = fsub double %i.blr, %i.blv
  %i.bly = fsub double %i.blw, %i.blx             ; 2 uses
  %i.blz = call double @llvm.fabs.f64(double %i.blw)
  %i.bma = load double, ptr %i.or, align 8, !tbaa !25
  %i.bmb = fmul double %i.bma, 1.000000e-10
  %i.bmc = fcmp olt double %i.blz, %i.bmb
  br i1 %i.bmc, label %cvSLdet.exit.thread.i.i, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.bmd = load double, ptr %i.mv, align 8, !tbaa !25
  %i.bme = fsub double %i.bmd, %i.blo
  %i.bmf = fsub double %i.bme, %i.blw
  %i.bmg = fsub double %i.bmf, %i.bly
  %i.bmh = fneg double %i.bmg
  %i.bmi = fdiv double %i.bmh, %i.blw             ; 3 uses
  %i.bmj = fcmp olt double %i.bmi, 1.000000e-10
  %i.bmk = fcmp ogt double %i.bmi, 4.000000e+00
  %or.cond3.i.i.i = or i1 %i.bmj, %i.bmk
  br i1 %or.cond3.i.i.i, label %cvSLdet.exit.thread.i.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.bml = fdiv double %i.bly, %i.bmi
  %i.bmm = fdiv double %i.bml, %i.blm
  %i.bmn = fadd double %i.blp, %i.bmm
  %i.bmo = load double, ptr %i.my, align 8, !tbaa !25
  %i.bmp = fmul double %.2301.i.i.i, %i.bmo       ; 2 uses
  %i.bmq = load double, ptr %i.mx, align 8, !tbaa !25 ; 2 uses
  %i.bmr = fmul double %.2301.i.i.i, %i.bmq
  %i.bms = fmul double %.2301.i.i.i, %i.bmr       ; 2 uses
  %i.bmt = load double, ptr %i.mw, align 8, !tbaa !25
  %i.bmu = fmul double %.2301.i.i.i, %i.bmt
  %i.bmv = fmul double %.2301.i.i.i, %i.bmu
  %i.bmw = fmul double %.2301.i.i.i, %i.bmv
  %i.bmx = fsub double %i.bmp, %i.bms             ; 4 uses
  %i.bmy = fsub double %i.bms, %i.bmw
  %i.bmz = fsub double %i.bmx, %i.bmy             ; 2 uses
  %i.bna = call double @llvm.fabs.f64(double %i.bmx)
  %i.bnb = load double, ptr %i.os, align 16, !tbaa !25
  %i.bnc = fmul double %i.bnb, 1.000000e-10
  %i.bnd = fcmp olt double %i.bna, %i.bnc
  br i1 %i.bnd, label %cvSLdet.exit.thread.i.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.bne = load double, ptr %i.mz, align 8, !tbaa !25
  %i.bnf = fsub double %i.bne, %i.bmp
  %i.bng = fsub double %i.bnf, %i.bmx
  %i.bnh = fsub double %i.bng, %i.bmz
  %i.bni = fneg double %i.bnh
  %i.bnj = fdiv double %i.bni, %i.bmx             ; 3 uses
  %i.bnk = fcmp olt double %i.bnj, 1.000000e-10
  %i.bnl = fcmp ogt double %i.bnj, 4.000000e+00
  %or.cond3.1.i.i.i = or i1 %i.bnk, %i.bnl
  br i1 %or.cond3.1.i.i.i, label %cvSLdet.exit.thread.i.i, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.bnm = fdiv double %i.bmz, %i.bnj
  %i.bnn = fdiv double %i.bnm, %i.blm
  %i.bno = fadd double %i.bmq, %i.bnn             ; 3 uses
  %i.bnp = load double, ptr %i.nd, align 8, !tbaa !25
  %i.bnq = fmul double %.2301.i.i.i, %i.bnp       ; 2 uses
  %i.bnr = load double, ptr %i.nc, align 8, !tbaa !25 ; 2 uses
  %i.bns = fmul double %.2301.i.i.i, %i.bnr
  %i.bnt = fmul double %.2301.i.i.i, %i.bns       ; 2 uses
  %i.bnu = load double, ptr %i.na, align 8, !tbaa !25
  %i.bnv = fmul double %.2301.i.i.i, %i.bnu
  %i.bnw = fmul double %.2301.i.i.i, %i.bnv
  %i.bnx = fmul double %.2301.i.i.i, %i.bnw
  %i.bny = fsub double %i.bnq, %i.bnt             ; 4 uses
  %i.bnz = fsub double %i.bnt, %i.bnx
  %i.boa = fsub double %i.bny, %i.bnz             ; 2 uses
  %i.bob = call double @llvm.fabs.f64(double %i.bny)
  %i.boc = load double, ptr %i.ot, align 8, !tbaa !25
  %i.bod = fmul double %i.boc, 1.000000e-10
  %i.boe = fcmp olt double %i.bob, %i.bod
  br i1 %i.boe, label %cvSLdet.exit.thread.i.i, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.bof = load double, ptr %i.ne, align 8, !tbaa !25
  %i.bog = fsub double %i.bof, %i.bnq
  %i.boh = fsub double %i.bog, %i.bny
  %i.boi = fsub double %i.boh, %i.boa
  %i.boj = fneg double %i.boi
  %i.bok = fdiv double %i.boj, %i.bny             ; 3 uses
  %i.bol = fcmp olt double %i.bok, 1.000000e-10
  %i.bom = fcmp ogt double %i.bok, 4.000000e+00
  %or.cond3.2.i.i.i = or i1 %i.bol, %i.bom
  %i.bon = fcmp olt double %i.bno, 1.000000e-10
  %or.cond.i134.i = select i1 %or.cond3.2.i.i.i, i1 true, i1 %i.bon
  br i1 %or.cond.i134.i, label %cvSLdet.exit.thread.i.i, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.boo = fdiv double %i.boa, %i.bok
  %i.bop = fdiv double %i.boo, %i.blm
  %i.boq = fadd double %i.bnr, %i.bop
  %i.bor = fdiv double %i.boq, %i.bno             ; 2 uses
  %i.bos = fdiv double %i.bmn, %i.bno
  %i.bot = mul nuw nsw i32 %i.bab, %i.bab
  %i.bou = add nsw i32 %i.bot, -1
  %i.bov = uitofp nneg i32 %i.bou to double
  %i.bow = add nsw i32 %i.bab, -1                 ; 2 uses
  %i.box = uitofp nneg i32 %i.bow to double
  %i.boy = call double @llvm.fmuladd.f64(double %i.bor, double %i.bos, double -1.000000e+00)
  %i.boz = fmul nnan double %i.bov, -2.500000e-01
  %i.bpa = call double @llvm.fmuladd.f64(double %i.boz, double %i.bor, double %i.boy)
  %i.bpb = fdiv double -2.000000e+00, %i.box
  %i.bpc = call double @llvm.fmuladd.f64(double %i.bpb, double %i.bpa, double 1.000000e+00) ; 2 uses
  %i.bpd = call double @llvm.fabs.f64(double %i.bpc)
  %i.bpe = fcmp olt double %i.bpd, 1.000000e-10
  br i1 %i.bpe, label %cvSLdet.exit.thread.i.i, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.bpf = fdiv double 1.000000e+00, %i.bpc
  %i.bpg = fsub double %i.bpf, %.2301.i.i.i
  %i.bph = call double @llvm.fabs.f64(double %i.bpg)
  %i.bpi = fcmp ule double %i.bph, 1.000000e-02
  %i.bpj = fcmp ogt double %.2301.i.i.i, f0x3FEF5C28F5C28F5C
  %or.cond80.i.i = select i1 %i.bpi, i1 %i.bpj, i1 false
  br i1 %or.cond80.i.i, label %bb.ik, label %cvSLdet.exit.thread.i.i

bb.ik:                                            ; preds = %bb.ij
  %i.bpk = icmp eq i32 %.1303.i.i.i, 1            ; 2 uses
  %spec.store.select.i.i.i = select i1 %i.bpk, i32 4, i32 %.1303.i.i.i ; 2 uses
  %i.bpl = icmp eq i32 %spec.store.select.i.i.i, 3
  br i1 %i.bpl, label %cvSLdet.exit.thread78.i.i, label %cvSLdet.exit.i.i

cvSLdet.exit.thread78.i.i:                        ; preds = %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.il

cvSLdet.exit.thread.i.i:                          ; preds = %bb.hs, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
end_hunk_0
