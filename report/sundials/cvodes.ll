Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes?download=true
inline.NumInlined: 74
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 55
begin_hunk_0_@CVode:bb.a
  %.0298..1.i.i.i = select i1 %i.cav, double %i.car, double %i.cau ; 2 uses
  %i.caw = fcmp ogt double %i.cat, %i.cau
  %i.cax = select i1 %i.caw, double %i.cat, double %i.cau ; 2 uses
  %gep.2.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 96
  %i.cay = load double, ptr %gep.2.i.i.i, align 8, !tbaa !29 ; 10 uses
  %i.caz = fcmp olt double %.0298..1.i.i.i, %i.cay
  %.0298..2.i.i.i = select i1 %i.caz, double %.0298..1.i.i.i, double %i.cay ; 2 uses
  %i.cba = fcmp ogt double %i.cax, %i.cay
  %i.cbb = select i1 %i.cba, double %i.cax, double %i.cay ; 2 uses
  %gep.3.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 128
  %i.cbc = load double, ptr %gep.3.i.i.i, align 8, !tbaa !29 ; 9 uses
  %i.cbd = fcmp olt double %.0298..2.i.i.i, %i.cbc
  %.0298..3.i.i.i = select i1 %i.cbd, double %.0298..2.i.i.i, double %i.cbc ; 2 uses
  %i.cbe = fcmp ogt double %i.cbb, %i.cbc
  %i.cbf = select i1 %i.cbe, double %i.cbb, double %i.cbc ; 2 uses
  %gep.4.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 160
  %i.cbg = load double, ptr %gep.4.i.i.i, align 8, !tbaa !29 ; 7 uses
  %i.cbh = fcmp olt double %.0298..3.i.i.i, %i.cbg
  %.0298..4.i.i.i = select i1 %i.cbh, double %.0298..3.i.i.i, double %i.cbg
  %i.cbi = fcmp ogt double %i.cbf, %i.cbg
  %i.cbj = select i1 %i.cbi, double %i.cbf, double %i.cbg ; 4 uses
  %i.cbk = fmul double %i.cbj, 1.000000e-10
  %i.cbl = fcmp olt double %.0298..4.i.i.i, %i.cbk
  br i1 %i.cbl, label %cvSLdet.exit.thread.i.i, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.cbm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i297.i
  store double %i.cbj, ptr %i.cbm, align 8, !tbaa !29
  %i.cbn = fmul double %i.cbj, %i.cbj
  %i.cbo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i297.i
  store double %i.cbn, ptr %i.cbo, align 8, !tbaa !29
  %i.cbp = fdiv double %i.car, %i.cau             ; 3 uses
  %i.cbq = fadd double %i.cbp, 0.000000e+00
  %i.cbr = fdiv double %i.cau, %i.cay             ; 3 uses
  %i.cbs = fadd double %i.cbq, %i.cbr
  %i.cbt = fdiv double %i.cay, %i.cbc             ; 3 uses
  %i.cbu = fadd double %i.cbs, %i.cbt
  %i.cbv = fdiv double %i.cbc, %i.cbg             ; 3 uses
  %i.cbw = fadd double %i.cbu, %i.cbv
  %i.cbx = fmul double %i.cbw, 2.500000e-01       ; 2 uses
  %i.cby = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i297.i
  store double %i.cbx, ptr %i.cby, align 8, !tbaa !29
  %i.cbz = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i297.i
  %i.cca = call double @llvm.fmuladd.f64(double %i.cbp, double %i.cbp, double 0.000000e+00)
  %i.ccb = call double @llvm.fmuladd.f64(double %i.cbr, double %i.cbr, double %i.cca)
  %i.ccc = call double @llvm.fmuladd.f64(double %i.cbt, double %i.cbt, double %i.ccb)
  %i.ccd = call double @llvm.fmuladd.f64(double %i.cbv, double %i.cbv, double %i.ccc)
  %i.cce = insertelement <2 x double> poison, double %i.cbx, i64 0
  %i.ccf = insertelement <2 x double> %i.cce, double %i.cau, i64 1 ; 2 uses
  %i.ccg = fneg <2 x double> %i.ccf
  %i.cch = fmul <2 x double> %i.ccf, %i.ccg
  %i.cci = insertelement <2 x double> poison, double %i.ccd, i64 0
  %i.ccj = insertelement <2 x double> %i.cci, double %i.car, i64 1
  %i.cck = insertelement <2 x double> <double 2.500000e-01, double poison>, double %i.cay, i64 1
  %i.ccl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ccj, <2 x double> %i.cck, <2 x double> %i.cch) ; 2 uses
  %i.ccm = extractelement <2 x double> %i.ccl, i64 0
  %i.ccn = call double @llvm.fabs.f64(double %i.ccm)
  store double %i.ccn, ptr %i.cbz, align 8, !tbaa !29
  %i.cco = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %indvars.iv.i.i297.i
  %i.ccp = extractelement <2 x double> %i.ccl, i64 1 ; 2 uses
  store double %i.ccp, ptr %i.cco, align 8, !tbaa !29
  %i.ccq = fneg double %i.cbc
  %i.ccr = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %indvars.iv.i.i297.i
  %i.ccs = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv.i.i297.i
  store double 0.000000e+00, ptr %i.ccs, align 8, !tbaa !29
  %i.cct = insertelement <2 x double> poison, double %i.car, i64 0
  %i.ccu = insertelement <2 x double> %i.cct, double %i.cay, i64 1
  %i.ccv = insertelement <2 x double> poison, double %i.ccq, i64 0
  %i.ccw = shufflevector <2 x double> %i.ccv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ccx = fmul <2 x double> %i.ccu, %i.ccw
  %i.ccy = insertelement <2 x double> poison, double %i.cau, i64 0
  %i.ccz = shufflevector <2 x double> %i.ccy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cda = insertelement <2 x double> poison, double %i.cay, i64 0
  %i.cdb = insertelement <2 x double> %i.cda, double %i.cbg, i64 1
  %i.cdc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ccz, <2 x double> %i.cdb, <2 x double> %i.ccx) ; 2 uses
  %i.cdd = extractelement <2 x double> %i.cdc, i64 0 ; 2 uses
  store double %i.cdd, ptr %i.ccr, align 8, !tbaa !29
  %i.cde = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %indvars.iv.i.i297.i
  %i.cdf = extractelement <2 x double> %i.cdc, i64 1 ; 2 uses
  store double %i.cdf, ptr %i.cde, align 8, !tbaa !29
  %i.cdg = fneg double %i.cbg
  %i.cdh = fmul double %i.cay, %i.cdg
  %i.cdi = call double @llvm.fmuladd.f64(double %i.cbc, double %i.cbc, double %i.cdh) ; 2 uses
  %i.cdj = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %indvars.iv.i.i297.i
  store double %i.cdi, ptr %i.cdj, align 8, !tbaa !29
  %invariant.gep352.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i297.i ; 5 uses
  %gep353.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 32
  store double %i.cdi, ptr %gep353.i.i.i, align 8, !tbaa !29
  %gep353.1.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 64
  store double %i.cdf, ptr %gep353.1.i.i.i, align 8, !tbaa !29
  %gep353.2.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 96
  store double 0.000000e+00, ptr %gep353.2.i.i.i, align 8, !tbaa !29
  %gep353.3.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 128
  store double %i.cdd, ptr %gep353.3.i.i.i, align 8, !tbaa !29
  %gep353.4.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i.i, i64 160
  store double %i.ccp, ptr %gep353.4.i.i.i, align 8, !tbaa !29
  %indvars.iv.next.i.i298.i = add nuw nsw i64 %indvars.iv.i.i297.i, 1 ; 2 uses
  %exitcond.not.i.i299.i = icmp eq i64 %indvars.iv.next.i.i298.i, 4
  br i1 %exitcond.not.i.i299.i, label %bb.ng, label %bb.ne

bb.ng:                                            ; preds = %bb.nf
  %i.cdk = load double, ptr %i.vw, align 8, !tbaa !29 ; 4 uses
  %i.cdl = load double, ptr %i.vx, align 16, !tbaa !29 ; 4 uses
  %i.cdm = load double, ptr %i.vy, align 8, !tbaa !29 ; 4 uses
  %i.cdn = fcmp olt double %i.cdl, %i.cdm
  %i.cdo = select i1 %i.cdn, double %i.cdl, double %i.cdm ; 2 uses
  %i.cdp = fcmp olt double %i.cdk, %i.cdo
  %..i.i300.i = select i1 %i.cdp, double %i.cdk, double %i.cdo
  %i.cdq = fcmp olt double %..i.i300.i, 1.000000e-08
  br i1 %i.cdq, label %bb.nh, label %bb.nj

bb.nh:                                            ; preds = %bb.ng
  %i.cdr = fcmp ogt double %i.cdl, %i.cdm
  %i.cds = select i1 %i.cdr, double %i.cdl, double %i.cdm ; 2 uses
  %i.cdt = fcmp ogt double %i.cdk, %i.cds
  %i.cdu = select i1 %i.cdt, double %i.cdk, double %i.cds
  %i.cdv = fcmp ogt double %i.cdu, 2.500000e-07
  br i1 %i.cdv, label %cvSLdet.exit.thread.i.i, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.cdw = load double, ptr %i.wx, align 8, !tbaa !29 ; 2 uses
  %i.cdx = load double, ptr %i.wy, align 16, !tbaa !29 ; 2 uses
  %i.cdy = fadd double %i.cdw, %i.cdx
  %i.cdz = load double, ptr %i.wz, align 8, !tbaa !29 ; 2 uses
  %i.cea = fadd double %i.cdy, %i.cdz
  %i.ceb = fdiv double %i.cea, 3.000000e+00       ; 4 uses
  %i.cec = fsub double %i.cdw, %i.ceb
  %i.ced = call double @llvm.fabs.f64(double %i.cec) ; 2 uses
  %i.cee = fsub double %i.cdx, %i.ceb
  %i.cef = call double @llvm.fabs.f64(double %i.cee) ; 2 uses
  %i.ceg = fcmp ogt double %i.ced, %i.cef
  %i.ceh = select i1 %i.ceg, double %i.ced, double %i.cef ; 2 uses
  %i.cei = fsub double %i.cdz, %i.ceb
  %i.cej = call double @llvm.fabs.f64(double %i.cei) ; 2 uses
  %i.cek = fcmp ogt double %i.ceh, %i.cej
  %i.cel = select i1 %i.cek, double %i.ceh, double %i.cej
  %i.cem = fcmp ogt double %i.cel, 5.000000e-04
  br i1 %i.cem, label %cvSLdet.exit.thread.i.i, label %bb.no

bb.nj:                                            ; preds = %bb.ng
  %i.cen = load double, ptr %i.vz, align 8, !tbaa !29 ; 3 uses
  %i.ceo = call double @llvm.fabs.f64(double %i.cen)
  %i.cep = load double, ptr %i.wa, align 8, !tbaa !29 ; 2 uses
  %i.ceq = fmul double %i.cep, 1.000000e-10       ; 2 uses
  %i.cer = fcmp olt double %i.ceo, %i.ceq
  br i1 %i.cer, label %cvSLdet.exit.thread.i.i, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.ces = load double, ptr %i.wb, align 16, !tbaa !29
  %i.cet = fneg double %i.ces
  %i.ceu = fdiv double %i.cet, %i.cen             ; 3 uses
  %i.cev = load double, ptr %i.wc, align 16, !tbaa !29
  %i.cew = load double, ptr %i.wd, align 8, !tbaa !29 ; 2 uses
  %i.cex = call double @llvm.fmuladd.f64(double %i.ceu, double %i.cew, double %i.cev) ; 2 uses
  %i.cey = call double @llvm.fabs.f64(double %i.cex)
  %i.cez = load double, ptr %i.we, align 16, !tbaa !29 ; 4 uses
  %i.cfa = fmul double %i.cez, 1.000000e-10       ; 2 uses
  %i.cfb = fcmp olt double %i.cey, %i.cfa
  br i1 %i.cfb, label %cvSLdet.exit.thread.i.i, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.cfc = load double, ptr %i.wf, align 8, !tbaa !29
  %i.cfd = fneg double %i.cfc
  %i.cfe = fdiv double %i.cfd, %i.cen             ; 3 uses
  %i.cff = load double, ptr %i.wg, align 8, !tbaa !29 ; 2 uses
  %i.cfg = load double, ptr %i.wh, align 8, !tbaa !29
  %i.cfh = call double @llvm.fmuladd.f64(double %i.cfe, double %i.cff, double %i.cfg)
  %i.cfi = load double, ptr %i.wi, align 8, !tbaa !29
  %i.cfj = call double @llvm.fmuladd.f64(double %i.cfe, double %i.cew, double %i.cfi)
  %i.cfk = load double, ptr %i.wj, align 16, !tbaa !29
  %i.cfl = call double @llvm.fmuladd.f64(double %i.ceu, double %i.cff, double %i.cfk)
  %i.cfm = fneg double %i.cfj
  %i.cfn = fdiv double %i.cfm, %i.cex             ; 2 uses
  %i.cfo = call double @llvm.fmuladd.f64(double %i.cfn, double %i.cfl, double %i.cfh) ; 2 uses
  %i.cfp = call double @llvm.fabs.f64(double %i.cfo)
  %i.cfq = load double, ptr %i.wk, align 8, !tbaa !29 ; 4 uses
  %i.cfr = fmul double %i.cfq, 1.000000e-10       ; 2 uses
  %i.cfs = fcmp olt double %i.cfp, %i.cfr
  br i1 %i.cfs, label %cvSLdet.exit.thread.i.i, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.cft = load <2 x double>, ptr %i.wl, align 8
  %i.cfu = load <2 x double>, ptr %i.wm, align 16, !tbaa !29
  %i.cfv = insertelement <2 x double> poison, double %i.ceu, i64 0
  %i.cfw = insertelement <2 x double> %i.cfv, double %i.cfe, i64 1
  %i.cfx = shufflevector <2 x double> %i.cft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cfy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cfw, <2 x double> %i.cfx, <2 x double> %i.cfu) ; 2 uses
  %i.cfz = extractelement <2 x double> %i.cfy, i64 0
  %i.cga = extractelement <2 x double> %i.cfy, i64 1
  %i.cgb = call double @llvm.fmuladd.f64(double %i.cfn, double %i.cfz, double %i.cga)
  %i.cgc = fneg double %i.cgb
  %i.cgd = fdiv double %i.cgc, %i.cfo             ; 9 uses
  %i.cge = fcmp olt double %i.cgd, 1.000000e-10
  %i.cgf = fcmp ogt double %i.cgd, 1.000000e+02
  %or.cond.i.i301.i = or i1 %i.cge, %i.cgf
  br i1 %or.cond.i.i301.i, label %cvSLdet.exit.thread.i.i, label %.preheader338.i.i.i

.preheader338.i.i.i:                              ; preds = %bb.nm
  %i.cgg = fmul double %i.cgd, %i.cgd             ; 2 uses
  %i.cgh = load <2 x double>, ptr %i.wn, align 8, !tbaa !29 ; 4 uses
  %i.cgi = load <2 x double>, ptr %i.wo, align 8, !tbaa !29 ; 4 uses
  %i.cgj = load <2 x double>, ptr %i.wp, align 8, !tbaa !29 ; 5 uses
  %i.cgk = load <2 x double>, ptr %i.wq, align 8, !tbaa !29 ; 5 uses
  %i.cgl = insertelement <2 x double> poison, double %i.cgd, i64 0
  %i.cgm = shufflevector <2 x double> %i.cgl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cgn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgm, <2 x double> %i.cgk, <2 x double> %i.cgj)
  %i.cgo = insertelement <2 x double> poison, double %i.cgg, i64 0
  %i.cgp = shufflevector <2 x double> %i.cgo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cgq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgp, <2 x double> %i.cgn, <2 x double> %i.cgi)
  %i.cgr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgm, <2 x double> %i.cgq, <2 x double> %i.cgh) ; 2 uses
  %i.cgs = load double, ptr %i.wr, align 8, !tbaa !29 ; 3 uses
  %i.cgt = load double, ptr %i.ws, align 8, !tbaa !29 ; 4 uses
  %i.cgu = load double, ptr %i.wt, align 8, !tbaa !29 ; 4 uses
  %i.cgv = load double, ptr %i.wu, align 8, !tbaa !29 ; 4 uses
  %i.cgw = call double @llvm.fmuladd.f64(double %i.cgd, double %i.cgv, double %i.cgu)
  %i.cgx = call double @llvm.fmuladd.f64(double %i.cgg, double %i.cgw, double %i.cgt)
  %i.cgy = call double @llvm.fmuladd.f64(double %i.cgd, double %i.cgx, double %i.cgs) ; 2 uses
  %i.cgz = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cgr)
  %i.cha = insertelement <2 x double> poison, double %i.cep, i64 0 ; 2 uses
  %i.chb = insertelement <2 x double> %i.cha, double %i.cez, i64 1 ; 2 uses
  %i.chc = fdiv <2 x double> %i.cgz, %i.chb       ; 2 uses
  %i.chd = extractelement <2 x double> %i.chc, i64 0 ; 2 uses
  %i.che = fcmp ogt double %i.chd, 0.000000e+00
  %.1293.i.i.i = select i1 %i.che, double %i.chd, double 0.000000e+00 ; 2 uses
  %i.chf = extractelement <2 x double> %i.chc, i64 1 ; 2 uses
  %i.chg = fcmp ogt double %i.chf, %.1293.i.i.i
  %.1293.1.i.i.i = select i1 %i.chg, double %i.chf, double %.1293.i.i.i ; 2 uses
  %i.chh = call double @llvm.fabs.f64(double %i.cgy)
  %i.chi = fdiv double %i.chh, %i.cfq             ; 2 uses
  %i.chj = fcmp ogt double %i.chi, %.1293.1.i.i.i
  %.1293.2.i.i.i = select i1 %i.chj, double %i.chi, double %.1293.1.i.i.i
  %i.chk = fcmp olt double %.1293.2.i.i.i, 1.000000e-03
  br i1 %i.chk, label %bb.no, label %.preheader335.i.i.i.preheader

.preheader335.i.i.i.preheader:                    ; preds = %.preheader338.i.i.i
  %i.chl = insertelement <2 x double> poison, double %i.ceq, i64 0
  %i.chm = insertelement <2 x double> %i.chl, double %i.cfa, i64 1
  %i.chn = shufflevector <2 x double> %i.cgk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cho = shufflevector <2 x double> %i.cgj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chp = shufflevector <2 x double> %i.cgi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.chq = shufflevector <2 x double> %i.cgh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %5 = extractelement <2 x double> %i.cgh, i64 1
  %i.chr = shufflevector <2 x double> %i.cha, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chs = shufflevector <2 x double> %i.cgk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cht = shufflevector <2 x double> %i.cgj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.chu = shufflevector <2 x double> %i.cgi, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.chv = shufflevector <2 x double> %i.cgh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.chw = insertelement <2 x double> poison, double %i.cez, i64 1
  %i.chx = insertelement <2 x double> poison, double %i.cgv, i64 0
  %i.chy = shufflevector <2 x double> %i.chx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.chz = insertelement <2 x double> poison, double %i.cgu, i64 0
  %i.cia = shufflevector <2 x double> %i.chz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cib = insertelement <2 x double> poison, double %i.cgt, i64 0
  %i.cic = shufflevector <2 x double> %i.cib, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cid = insertelement <2 x double> poison, double %i.cgs, i64 0
  %i.cie = shufflevector <2 x double> %i.cid, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = insertelement <2 x double> %i.chu, double %i.cgu, i64 1
  %i.cif = insertelement <2 x double> poison, double %i.cfq, i64 0
  %i.cig = shufflevector <2 x double> %i.cif, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = insertelement <2 x double> %i.chp, double %i.cgt, i64 0
  %8 = insertelement <2 x double> %i.chq, double %i.cgs, i64 0
  %i.cih = insertelement <2 x double> poison, double %i.cez, i64 0
  %i.cii = insertelement <2 x double> %i.cih, double %i.cfq, i64 1
  br label %.preheader335.i.i.i

.preheader335.i.i.i:                              ; preds = %.preheader335.i.i.i.preheader, %.preheader.i.i303.i
  %.sroa.10.0.i.i.i = phi double [ %i.clt, %.preheader.i.i303.i ], [ %i.cgy, %.preheader335.i.i.i.preheader ]
  %.0299376.i.i.i = phi double [ %i.clp, %.preheader.i.i303.i ], [ %i.cgd, %.preheader335.i.i.i.preheader ] ; 5 uses
  %.0305375.i.i.i = phi i32 [ %.2307.2.i.i.i, %.preheader.i.i303.i ], [ 0, %.preheader335.i.i.i.preheader ]
  %.0308374.i.i.i = phi i32 [ %i.clu, %.preheader.i.i303.i ], [ 1, %.preheader335.i.i.i.preheader ]
  %i.cij = phi <2 x double> [ %i.clw, %.preheader.i.i303.i ], [ %i.cgr, %.preheader335.i.i.i.preheader ]
  %i.cik = fmul double %.0299376.i.i.i, %.0299376.i.i.i ; 2 uses
  %i.cil = fmul double %.0299376.i.i.i, 4.000000e+00 ; 2 uses
  %i.cim = fneg <2 x double> %i.cij
  %i.cin = fmul double %i.cgv, %i.cil
  %i.cio = fneg double %.sroa.10.0.i.i.i
  %i.cip = insertelement <2 x double> poison, double %i.cil, i64 0
  %i.ciq = shufflevector <2 x double> %i.cip, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cir = fmul <2 x double> %i.cgk, %i.ciq
  %i.cis = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cgj, <2 x double> splat (double 3.000000e+00), <2 x double> %i.cir)
  %i.cit = insertelement <2 x double> poison, double %i.cik, i64 0
  %i.ciu = shufflevector <2 x double> %i.cit, <2 x double> poison, <2 x i32> zeroinitializer
  %i.civ = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ciu, <2 x double> %i.cis, <2 x double> %i.cgi) ; 2 uses
  %i.ciw = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.civ)
  %i.cix = fcmp ogt <2 x double> %i.ciw, %i.chm
  %i.ciy = fdiv <2 x double> %i.cim, %i.civ
  %i.ciz = select <2 x i1> %i.cix, <2 x double> %i.ciy, <2 x double> zeroinitializer
  %i.cja = insertelement <2 x double> poison, double %.0299376.i.i.i, i64 0
  %i.cjb = shufflevector <2 x double> %i.cja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cjc = fadd <2 x double> %i.cjb, %i.ciz       ; 9 uses
  store <2 x double> %i.cjc, ptr %i.wv, align 8, !tbaa !29
  %i.cjd = fmul <2 x double> %i.cjc, %i.cjc       ; 3 uses
  %i.cje = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjc, <2 x double> %i.chn, <2 x double> %i.cho)
  %i.cjf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjd, <2 x double> %i.cje, <2 x double> %i.chp)
  %i.cjg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjc, <2 x double> %i.cjf, <2 x double> %i.chq) ; 2 uses
  store <2 x double> %i.cjg, ptr %gep364.i.i.i, align 8, !tbaa !29
  %i.cjh = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cjg)
  %i.cji = fdiv <2 x double> %i.cjh, %i.chr       ; 3 uses
  %i.cjj = fcmp ogt <2 x double> %i.cji, zeroinitializer ; 2 uses
  %i.cjk = extractelement <2 x i1> %i.cjj, i64 0
  %i.cjl = extractelement <2 x double> %i.cji, i64 0
  %.1291.i.i.i = select i1 %i.cjk, double %i.cjl, double 0.000000e+00 ; 2 uses
  %i.cjm = extractelement <2 x i1> %i.cjj, i64 1
  %i.cjn = extractelement <2 x double> %i.cji, i64 1
  %.1291.1422.i.i.i = select i1 %i.cjm, double %i.cjn, double 0.000000e+00
  %i.cjo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjc, <2 x double> %i.chs, <2 x double> %i.cht)
  %i.cjp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjd, <2 x double> %i.cjo, <2 x double> %i.chu)
  %i.cjq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjc, <2 x double> %i.cjp, <2 x double> %i.chv) ; 3 uses
  %i.cjr = extractelement <2 x double> %i.cjq, i64 0
  %i.cjs = call double @llvm.fabs.f64(double %i.cjr)
  %i.cjt = call double @llvm.fmuladd.f64(double %i.cgu, double 3.000000e+00, double %i.cin)
  %i.cju = call double @llvm.fmuladd.f64(double %i.cik, double %i.cjt, double %i.cgt) ; 2 uses
  %i.cjv = call double @llvm.fabs.f64(double %i.cju)
  %i.cjw = fcmp ogt double %i.cjv, %i.cfr
  %i.cjx = insertelement <2 x double> poison, double %i.cio, i64 0
  %i.cjy = insertelement <2 x double> %i.cjx, double %i.cjs, i64 1
  %i.cjz = insertelement <2 x double> %i.chw, double %i.cju, i64 0
  %i.cka = fdiv <2 x double> %i.cjy, %i.cjz       ; 2 uses
  %i.ckb = extractelement <2 x double> %i.cka, i64 0
  %.sroa.8.0.i.i.i = select i1 %i.cjw, double %i.ckb, double 0.000000e+00
  %i.ckc = fadd double %.0299376.i.i.i, %.sroa.8.0.i.i.i ; 6 uses
  store double %i.ckc, ptr %i.ww, align 8, !tbaa !29
  %i.ckd = extractelement <2 x double> %i.cka, i64 1 ; 2 uses
  %i.cke = fcmp ogt double %i.ckd, %.1291.i.i.i
  %.1291.1.i.i.i = select i1 %i.cke, double %i.ckd, double %.1291.i.i.i ; 2 uses
  store <2 x double> %i.cjq, ptr %gep364.1.i.i.i, align 8, !tbaa !29
  %i.ckf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjc, <2 x double> %i.chy, <2 x double> %i.cia)
  %i.ckg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjd, <2 x double> %i.ckf, <2 x double> %i.cic)
  %i.ckh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cjc, <2 x double> %i.ckg, <2 x double> %i.cie) ; 3 uses
  store <2 x double> %i.ckh, ptr %gep364.2.i.i.i, align 8, !tbaa !29
  %i.cki = fmul double %i.ckc, %i.ckc
  %i.ckj = insertelement <2 x double> poison, double %i.ckc, i64 0
  %i.ckk = shufflevector <2 x double> %i.ckj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ckl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ckk, <2 x double> %i.cgk, <2 x double> %i.cgj) ; 2 uses
  %9 = insertelement <2 x double> poison, double %i.cki, i64 0 ; 2 uses
  %i.ckm = insertelement <2 x double> %9, double %i.ckc, i64 1
  %10 = shufflevector <2 x double> %i.ckl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %11 = insertelement <2 x double> %10, double %i.cgv, i64 1
  %i.ckn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ckm, <2 x double> %11, <2 x double> %6) ; 2 uses
  %12 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = shufflevector <2 x double> %i.ckn, <2 x double> %i.ckl, <2 x i32> <i32 1, i32 2>
  %14 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %13, <2 x double> %7)
  %15 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ckk, <2 x double> %14, <2 x double> %8) ; 4 uses
  %16 = extractelement <2 x double> %15, i64 0
  store double %16, ptr %gep364.2.2.i.i.i, align 8, !tbaa !29
  %17 = shufflevector <2 x double> %15, <2 x double> %i.ckh, <2 x i32> <i32 0, i32 2>
  %i.cko = call <2 x double> @llvm.fabs.v2f64(<2 x double> %17)
  %i.ckp = fdiv <2 x double> %i.cko, %i.cig       ; 3 uses
  %i.ckq = extractelement <2 x double> %i.ckp, i64 1 ; 2 uses
  %i.ckr = fcmp ogt double %i.ckq, %.1291.1.i.i.i
  %.1291.2.i.i.i = select i1 %i.ckr, double %i.ckq, double %.1291.1.i.i.i ; 3 uses
  %i.cks = extractelement <2 x double> %15, i64 1
  store double %i.cks, ptr %gep364.2423.i.i.i, align 8, !tbaa !29
  %18 = shufflevector <2 x double> %i.cjq, <2 x double> %15, <2 x i32> <i32 3, i32 1>
  %i.ckt = call <2 x double> @llvm.fabs.v2f64(<2 x double> %18)
  %i.cku = fdiv <2 x double> %i.ckt, %i.chb       ; 2 uses
  %19 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %.1291.1422.i.i.i, i64 1 ; 2 uses
  %i.ckv = fcmp ogt <2 x double> %i.cku, %19
  %i.ckw = select <2 x i1> %i.ckv, <2 x double> %i.cku, <2 x double> %19 ; 2 uses
  %i.ckx = extractelement <2 x double> %i.ckn, i64 0
  %20 = call double @llvm.fmuladd.f64(double %i.ckc, double %i.ckx, double %5) ; 2 uses
  store double %20, ptr %gep364.1.2.i.i.i, align 8, !tbaa !29
  %21 = insertelement <2 x double> %i.ckh, double %20, i64 0
  %i.cky = call <2 x double> @llvm.fabs.v2f64(<2 x double> %21)
  %i.ckz = fdiv <2 x double> %i.cky, %i.cii       ; 2 uses
  %i.cla = fcmp ogt <2 x double> %i.ckz, %i.ckw
  %i.clb = select <2 x i1> %i.cla, <2 x double> %i.ckz, <2 x double> %i.ckw ; 3 uses
  %i.clc = fadd double %.1291.2.i.i.i, 1.000000e+00 ; 2 uses
  %i.cld = fcmp olt double %.1291.2.i.i.i, %i.clc ; 2 uses
  %.2307.i.i.i = select i1 %i.cld, i32 1, i32 %.0305375.i.i.i
  %.2.i.i302.i = select i1 %i.cld, double %.1291.2.i.i.i, double %i.clc ; 2 uses
  %i.cle = insertelement <2 x double> %i.ckp, double %.2.i.i302.i, i64 1
  %i.clf = fcmp ogt <2 x double> %i.cle, %i.clb   ; 2 uses
  %i.clg = extractelement <2 x i1> %i.clf, i64 1
  %.2307.1.i.i.i = select i1 %i.clg, i32 2, i32 %.2307.i.i.i
  %i.clh = shufflevector <2 x double> %i.ckp, <2 x double> %i.clb, <2 x i32> <i32 0, i32 3>
  %i.cli = insertelement <2 x double> %i.clb, double %.2.i.i302.i, i64 1
  %i.clj = select <2 x i1> %i.clf, <2 x double> %i.clh, <2 x double> %i.cli ; 2 uses
  %i.clk = extractelement <2 x double> %i.clj, i64 0 ; 2 uses
  %i.cll = extractelement <2 x double> %i.clj, i64 1 ; 2 uses
  %i.clm = fcmp olt double %i.clk, %i.cll         ; 2 uses
  %.2307.2.i.i.i = select i1 %i.clm, i32 3, i32 %.2307.1.i.i.i ; 2 uses
  %.2.2.i.i.i = select i1 %i.clm, double %i.clk, double %i.cll ; 2 uses
  %i.cln = zext nneg i32 %.2307.2.i.i.i to i64    ; 2 uses
  %i.clo = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cln
  %i.clp = load double, ptr %i.clo, align 8, !tbaa !29 ; 2 uses
  %i.clq = fcmp olt double %.2.2.i.i.i, 1.000000e-03
  br i1 %i.clq, label %bb.nn, label %.preheader.i.i303.i

.preheader.i.i303.i:                              ; preds = %.preheader335.i.i.i
  %invariant.gep371.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cln ; 3 uses
  %gep372.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i.i, i64 32
  %i.clr = load double, ptr %gep372.i.i.i, align 8, !tbaa !29
  %gep372.1.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i.i, i64 64
  %i.cls = load double, ptr %gep372.1.i.i.i, align 8, !tbaa !29
  %gep372.2.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i.i, i64 96
  %i.clt = load double, ptr %gep372.2.i.i.i, align 8, !tbaa !29
  %i.clu = add nuw nsw i32 %.0308374.i.i.i, 1     ; 2 uses
  %exitcond433.not.i.i.i = icmp eq i32 %i.clu, 4
  %i.clv = insertelement <2 x double> poison, double %i.clr, i64 0
  %i.clw = insertelement <2 x double> %i.clv, double %i.cls, i64 1
  br i1 %exitcond433.not.i.i.i, label %bb.nn, label %.preheader335.i.i.i

bb.nn:                                            ; preds = %.preheader.i.i303.i, %.preheader335.i.i.i
  %.0302.i.i.i = phi i32 [ 0, %.preheader.i.i303.i ], [ 3, %.preheader335.i.i.i ]
  %i.clx = fcmp ogt double %.2.2.i.i.i, 1.000000e-03
  br i1 %i.clx, label %cvSLdet.exit.thread.i.i, label %bb.no

bb.no:                                            ; preds = %bb.nn, %.preheader338.i.i.i, %bb.ni
  %.1303.i.i.i = phi i32 [ %.0302.i.i.i, %bb.nn ], [ 1, %bb.ni ], [ 2, %.preheader338.i.i.i ] ; 2 uses
  %.2301.i.i.i = phi double [ %i.clp, %bb.nn ], [ %i.ceb, %bb.ni ], [ %i.cgd, %.preheader338.i.i.i ] ; 22 uses
  %i.cly = fmul double %.2301.i.i.i, %.2301.i.i.i ; 3 uses
  %i.clz = load double, ptr %i.ve, align 8, !tbaa !29
  %i.cma = fmul double %.2301.i.i.i, %i.clz       ; 2 uses
  %i.cmb = load double, ptr %i.vd, align 8, !tbaa !29 ; 2 uses
  %i.cmc = fmul double %.2301.i.i.i, %i.cmb
  %i.cmd = fmul double %.2301.i.i.i, %i.cmc       ; 2 uses
  %i.cme = load double, ptr %i.vb, align 8, !tbaa !29
  %i.cmf = fmul double %.2301.i.i.i, %i.cme
  %i.cmg = fmul double %.2301.i.i.i, %i.cmf
  %i.cmh = fmul double %.2301.i.i.i, %i.cmg
  %i.cmi = fsub double %i.cma, %i.cmd             ; 4 uses
  %i.cmj = fsub double %i.cmd, %i.cmh
  %i.cmk = fsub double %i.cmi, %i.cmj             ; 2 uses
  %i.cml = call double @llvm.fabs.f64(double %i.cmi)
  %i.cmm = load double, ptr %i.xa, align 8, !tbaa !29
  %i.cmn = fmul double %i.cmm, 1.000000e-10
  %i.cmo = fcmp olt double %i.cml, %i.cmn
  br i1 %i.cmo, label %cvSLdet.exit.thread.i.i, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.cmp = load double, ptr %i.vf, align 8, !tbaa !29
  %i.cmq = fsub double %i.cmp, %i.cma
  %i.cmr = fsub double %i.cmq, %i.cmi
  %i.cms = fsub double %i.cmr, %i.cmk
  %i.cmt = fneg double %i.cms
  %i.cmu = fdiv double %i.cmt, %i.cmi             ; 3 uses
  %i.cmv = fcmp olt double %i.cmu, 1.000000e-10
  %i.cmw = fcmp ogt double %i.cmu, 4.000000e+00
  %or.cond3.i.i.i = or i1 %i.cmv, %i.cmw
  br i1 %or.cond3.i.i.i, label %cvSLdet.exit.thread.i.i, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.cmx = fdiv double %i.cmk, %i.cmu
  %i.cmy = fdiv double %i.cmx, %i.cly
  %i.cmz = fadd double %i.cmb, %i.cmy
  %i.cna = load double, ptr %i.vi, align 8, !tbaa !29
  %i.cnb = fmul double %.2301.i.i.i, %i.cna       ; 2 uses
  %i.cnc = load double, ptr %i.vh, align 8, !tbaa !29 ; 2 uses
  %i.cnd = fmul double %.2301.i.i.i, %i.cnc
  %i.cne = fmul double %.2301.i.i.i, %i.cnd       ; 2 uses
  %i.cnf = load double, ptr %i.vg, align 8, !tbaa !29
  %i.cng = fmul double %.2301.i.i.i, %i.cnf
  %i.cnh = fmul double %.2301.i.i.i, %i.cng
  %i.cni = fmul double %.2301.i.i.i, %i.cnh
  %i.cnj = fsub double %i.cnb, %i.cne             ; 4 uses
  %i.cnk = fsub double %i.cne, %i.cni
  %i.cnl = fsub double %i.cnj, %i.cnk             ; 2 uses
  %i.cnm = call double @llvm.fabs.f64(double %i.cnj)
  %i.cnn = load double, ptr %i.xb, align 16, !tbaa !29
  %i.cno = fmul double %i.cnn, 1.000000e-10
  %i.cnp = fcmp olt double %i.cnm, %i.cno
  br i1 %i.cnp, label %cvSLdet.exit.thread.i.i, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.cnq = load double, ptr %i.vj, align 8, !tbaa !29
  %i.cnr = fsub double %i.cnq, %i.cnb
  %i.cns = fsub double %i.cnr, %i.cnj
  %i.cnt = fsub double %i.cns, %i.cnl
  %i.cnu = fneg double %i.cnt
  %i.cnv = fdiv double %i.cnu, %i.cnj             ; 3 uses
  %i.cnw = fcmp olt double %i.cnv, 1.000000e-10
  %i.cnx = fcmp ogt double %i.cnv, 4.000000e+00
  %or.cond3.1.i.i.i = or i1 %i.cnw, %i.cnx
  br i1 %or.cond3.1.i.i.i, label %cvSLdet.exit.thread.i.i, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.cny = fdiv double %i.cnl, %i.cnv
  %i.cnz = fdiv double %i.cny, %i.cly
  %i.coa = fadd double %i.cnc, %i.cnz             ; 3 uses
  %i.cob = load double, ptr %i.vn, align 8, !tbaa !29
  %i.coc = fmul double %.2301.i.i.i, %i.cob       ; 2 uses
  %i.cod = load double, ptr %i.vm, align 8, !tbaa !29 ; 2 uses
  %i.coe = fmul double %.2301.i.i.i, %i.cod
  %i.cof = fmul double %.2301.i.i.i, %i.coe       ; 2 uses
  %i.cog = load double, ptr %i.vk, align 8, !tbaa !29
  %i.coh = fmul double %.2301.i.i.i, %i.cog
  %i.coi = fmul double %.2301.i.i.i, %i.coh
  %i.coj = fmul double %.2301.i.i.i, %i.coi
  %i.cok = fsub double %i.coc, %i.cof             ; 4 uses
  %i.col = fsub double %i.cof, %i.coj
  %i.com = fsub double %i.cok, %i.col             ; 2 uses
  %i.con = call double @llvm.fabs.f64(double %i.cok)
  %i.coo = load double, ptr %i.xc, align 8, !tbaa !29
  %i.cop = fmul double %i.coo, 1.000000e-10
  %i.coq = fcmp olt double %i.con, %i.cop
  br i1 %i.coq, label %cvSLdet.exit.thread.i.i, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.cor = load double, ptr %i.vo, align 8, !tbaa !29
  %i.cos = fsub double %i.cor, %i.coc
  %i.cot = fsub double %i.cos, %i.cok
  %i.cou = fsub double %i.cot, %i.com
  %i.cov = fneg double %i.cou
  %i.cow = fdiv double %i.cov, %i.cok             ; 3 uses
  %i.cox = fcmp olt double %i.cow, 1.000000e-10
  %i.coy = fcmp ogt double %i.cow, 4.000000e+00
  %or.cond3.2.i.i.i = or i1 %i.cox, %i.coy
  %i.coz = fcmp olt double %i.coa, 1.000000e-10
  %or.cond.i304.i = select i1 %or.cond3.2.i.i.i, i1 true, i1 %i.coz
  br i1 %or.cond.i304.i, label %cvSLdet.exit.thread.i.i, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.cpa = fdiv double %i.com, %i.cow
  %i.cpb = fdiv double %i.cpa, %i.cly
  %i.cpc = fadd double %i.cod, %i.cpb
  %i.cpd = fdiv double %i.cpc, %i.coa             ; 2 uses
  %i.cpe = fdiv double %i.cmz, %i.coa
  %i.cpf = mul nuw nsw i32 %i.cal, %i.cal
  %i.cpg = add nsw i32 %i.cpf, -1
  %i.cph = uitofp nneg i32 %i.cpg to double
  %i.cpi = add nsw i32 %i.cal, -1                 ; 2 uses
  %i.cpj = uitofp nneg i32 %i.cpi to double
  %i.cpk = call double @llvm.fmuladd.f64(double %i.cpd, double %i.cpe, double -1.000000e+00)
  %i.cpl = fmul nnan double %i.cph, -2.500000e-01
  %i.cpm = call double @llvm.fmuladd.f64(double %i.cpl, double %i.cpd, double %i.cpk)
  %i.cpn = fdiv double -2.000000e+00, %i.cpj
  %i.cpo = call double @llvm.fmuladd.f64(double %i.cpn, double %i.cpm, double 1.000000e+00) ; 2 uses
  %i.cpp = call double @llvm.fabs.f64(double %i.cpo)
  %i.cpq = fcmp olt double %i.cpp, 1.000000e-10
  br i1 %i.cpq, label %cvSLdet.exit.thread.i.i, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.cpr = fdiv double 1.000000e+00, %i.cpo
  %i.cps = fsub double %i.cpr, %.2301.i.i.i
  %i.cpt = call double @llvm.fabs.f64(double %i.cps)
  %i.cpu = fcmp ule double %i.cpt, 1.000000e-02
  %i.cpv = fcmp ogt double %.2301.i.i.i, f0x3FEF5C28F5C28F5C
  %or.cond80.i.i = select i1 %i.cpu, i1 %i.cpv, i1 false
  br i1 %or.cond80.i.i, label %bb.nw, label %cvSLdet.exit.thread.i.i

bb.nw:                                            ; preds = %bb.nv
  %i.cpw = icmp eq i32 %.1303.i.i.i, 1            ; 2 uses
  %spec.store.select.i.i.i = select i1 %i.cpw, i32 4, i32 %.1303.i.i.i ; 2 uses
  %i.cpx = icmp eq i32 %spec.store.select.i.i.i, 3
  br i1 %i.cpx, label %cvSLdet.exit.thread78.i.i, label %cvSLdet.exit.i.i

cvSLdet.exit.thread78.i.i:                        ; preds = %bb.nw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.nx

cvSLdet.exit.thread.i.i:                          ; preds = %bb.ne, %bb.nv, %bb.nu, %bb.nt, %bb.ns, %bb.nr, %bb.nq, %bb.np, %bb.no, %bb.nn, %bb.nm, %bb.nl, %bb.nk, %bb.nj, %bb.ni, %bb.nh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
end_hunk_0
