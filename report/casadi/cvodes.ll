inline.NumInlined: 100
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@cvStep:bb.a
  %i.cvf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cvc, <2 x double> %i.cve, <2 x double> %i.cva) ; 2 uses
  %i.cvg = extractelement <2 x double> %i.cvf, i64 0 ; 2 uses
  store double %i.cvg, ptr %i.cus, align 8, !tbaa !49
  %i.cvh = getelementptr inbounds nuw [8 x i8], ptr %i.csm, i64 %indvars.iv.i.i297
  %i.cvi = extractelement <2 x double> %i.cvf, i64 1 ; 2 uses
  store double %i.cvi, ptr %i.cvh, align 8, !tbaa !49
  %i.cvj = fneg double %i.cuv
  %i.cvk = fmul double %i.cui, %i.cvj
  %i.cvl = tail call double @llvm.fmuladd.f64(double %i.cuq, double %i.cuq, double %i.cvk) ; 2 uses
  %i.cvm = getelementptr inbounds nuw [8 x i8], ptr %i.csn, i64 %indvars.iv.i.i297
  store double %i.cvl, ptr %i.cvm, align 8, !tbaa !49
  %invariant.gep352.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i297 ; 5 uses
  %gep353.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 32
  store double %i.cvl, ptr %gep353.i.i, align 8, !tbaa !49
  %gep353.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 64
  store double %i.cvi, ptr %gep353.1.i.i, align 8, !tbaa !49
  %gep353.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 96
  store double 0.000000e+00, ptr %gep353.2.i.i, align 8, !tbaa !49
  %gep353.3.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 128
  store double %i.cvg, ptr %gep353.3.i.i, align 8, !tbaa !49
  %gep353.4.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 160
  store double %i.cun, ptr %gep353.4.i.i, align 8, !tbaa !49
  %indvars.iv.next.i.i298 = add nuw nsw i64 %indvars.iv.i.i297, 1 ; 2 uses
  %exitcond.not.i.i299 = icmp eq i64 %indvars.iv.next.i.i298, 4
  br i1 %exitcond.not.i.i299, label %bb.ji, label %bb.jg, !llvm.loop !395

bb.ji:                                            ; preds = %bb.jh
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cvo = load double, ptr %i.cvn, align 8, !tbaa !49 ; 4 uses
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cvq = load double, ptr %i.cvp, align 16, !tbaa !49 ; 4 uses
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cvs = load double, ptr %i.cvr, align 8, !tbaa !49 ; 4 uses
  %i.cvt = fcmp olt double %i.cvq, %i.cvs
  %i.cvu = select i1 %i.cvt, double %i.cvq, double %i.cvs ; 2 uses
  %i.cvv = fcmp olt double %i.cvo, %i.cvu
  %..i.i300 = select i1 %i.cvv, double %i.cvo, double %i.cvu
  %i.cvw = fcmp olt double %..i.i300, 1.000000e-08
  br i1 %i.cvw, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.cvx = fcmp ogt double %i.cvq, %i.cvs
  %i.cvy = select i1 %i.cvx, double %i.cvq, double %i.cvs ; 2 uses
  %i.cvz = fcmp ogt double %i.cvo, %i.cvy
  %i.cwa = select i1 %i.cvz, double %i.cvo, double %i.cvy
  %i.cwb = fcmp ogt double %i.cwa, 2.500000e-07
  br i1 %i.cwb, label %cvSLdet.exit.thread.i, label %.loopexit333.loopexit.i.i

.loopexit333.loopexit.i.i:                        ; preds = %bb.jj
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cwd = load double, ptr %i.cwc, align 8, !tbaa !49 ; 2 uses
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cwf = load double, ptr %i.cwe, align 16, !tbaa !49 ; 2 uses
  %i.cwg = fadd double %i.cwd, %i.cwf
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cwi = load double, ptr %i.cwh, align 8, !tbaa !49 ; 2 uses
  %i.cwj = fadd double %i.cwg, %i.cwi
  %i.cwk = fdiv double %i.cwj, 3.000000e+00       ; 4 uses
  %i.cwl = fsub double %i.cwd, %i.cwk
  %i.cwm = tail call double @SUNRabs(double noundef %i.cwl) #12 ; 0 uses
  %i.cwn = fsub double %i.cwf, %i.cwk
  %i.cwo = tail call double @SUNRabs(double noundef %i.cwn) #12 ; 0 uses
  %i.cwp = fsub double %i.cwi, %i.cwk
  %i.cwq = tail call double @SUNRabs(double noundef %i.cwp) #12 ; 0 uses
  br label %.loopexit333.i.i

bb.jk:                                            ; preds = %bb.ji
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.cws = load double, ptr %i.cwr, align 8, !tbaa !49 ; 3 uses
  %i.cwt = tail call double @SUNRabs(double noundef %i.cws) #12
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cwv = load double, ptr %i.cwu, align 8, !tbaa !49 ; 3 uses
  %i.cww = fmul double %i.cwv, 1.000000e-10       ; 2 uses
  %i.cwx = fcmp olt double %i.cwt, %i.cww
  br i1 %i.cwx, label %cvSLdet.exit.thread.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.cwz = load double, ptr %i.cwy, align 16, !tbaa !49
  %i.cxa = fneg double %i.cwz
  %i.cxb = fdiv double %i.cxa, %i.cws             ; 3 uses
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.cxd = load double, ptr %i.cxc, align 16, !tbaa !49
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.cxf = load double, ptr %i.cxe, align 8, !tbaa !49 ; 2 uses
  %i.cxg = tail call double @llvm.fmuladd.f64(double %i.cxb, double %i.cxf, double %i.cxd) ; 2 uses
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.cxi = load double, ptr %i.cxh, align 16, !tbaa !49
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.cxk = load double, ptr %i.cxj, align 8, !tbaa !49 ; 2 uses
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.cxn = load <2 x double>, ptr %i.cxm, align 8
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.cxp = load double, ptr %i.cxo, align 8, !tbaa !49
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.cxr = load double, ptr %i.cxq, align 8, !tbaa !49
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.cxt = load double, ptr %i.cxs, align 8, !tbaa !49
  %i.cxu = load <2 x double>, ptr %i.cxl, align 16, !tbaa !49
  %i.cxv = tail call double @SUNRabs(double noundef %i.cxg) #12
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cxx = load double, ptr %i.cxw, align 16, !tbaa !49 ; 5 uses
  %i.cxy = fmul double %i.cxx, 1.000000e-10       ; 2 uses
  %i.cxz = fcmp olt double %i.cxv, %i.cxy
  br i1 %i.cxz, label %cvSLdet.exit.thread.i, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.cya = fneg double %i.cxp
  %i.cyb = fdiv double %i.cya, %i.cws             ; 3 uses
  %i.cyc = tail call double @llvm.fmuladd.f64(double %i.cyb, double %i.cxk, double %i.cxt)
  %i.cyd = tail call double @llvm.fmuladd.f64(double %i.cyb, double %i.cxf, double %i.cxr)
  %i.cye = tail call double @llvm.fmuladd.f64(double %i.cxb, double %i.cxk, double %i.cxi)
  %i.cyf = fneg double %i.cyd
  %i.cyg = fdiv double %i.cyf, %i.cxg             ; 2 uses
  %i.cyh = tail call double @llvm.fmuladd.f64(double %i.cyg, double %i.cye, double %i.cyc) ; 2 uses
  %i.cyi = tail call double @SUNRabs(double noundef %i.cyh) #12
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cyk = load double, ptr %i.cyj, align 8, !tbaa !49 ; 5 uses
  %i.cyl = fmul double %i.cyk, 1.000000e-10       ; 2 uses
  %i.cym = fcmp olt double %i.cyi, %i.cyl
  br i1 %i.cym, label %cvSLdet.exit.thread.i, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.cyn = insertelement <2 x double> poison, double %i.cxb, i64 0
  %i.cyo = insertelement <2 x double> %i.cyn, double %i.cyb, i64 1
  %i.cyp = shufflevector <2 x double> %i.cxn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cyq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cyo, <2 x double> %i.cyp, <2 x double> %i.cxu) ; 2 uses
  %i.cyr = extractelement <2 x double> %i.cyq, i64 0
  %i.cys = extractelement <2 x double> %i.cyq, i64 1
  %i.cyt = tail call double @llvm.fmuladd.f64(double %i.cyg, double %i.cyr, double %i.cys)
  %i.cyu = fneg double %i.cyt
  %i.cyv = fdiv double %i.cyu, %i.cyh             ; 9 uses
  %i.cyw = fcmp olt double %i.cyv, 1.000000e-10
  %i.cyx = fcmp ogt double %i.cyv, 1.000000e+02
  %or.cond.i.i301 = or i1 %i.cyw, %i.cyx
  br i1 %or.cond.i.i301, label %cvSLdet.exit.thread.i, label %.preheader338.i.i

.preheader338.i.i:                                ; preds = %bb.jn
  %i.cyy = fmul double %i.cyv, %i.cyv             ; 2 uses
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.cza = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.czb = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.czc = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.czd = load <2 x double>, ptr %i.cyz, align 8, !tbaa !49 ; 5 uses
  %i.cze = load <2 x double>, ptr %i.cza, align 8, !tbaa !49 ; 6 uses
  %i.czf = load <2 x double>, ptr %i.czb, align 8, !tbaa !49 ; 6 uses
  %i.czg = load <2 x double>, ptr %i.czc, align 8, !tbaa !49 ; 6 uses
  %i.czh = insertelement <2 x double> poison, double %i.cyv, i64 0
  %i.czi = shufflevector <2 x double> %i.czh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.czj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czi, <2 x double> %i.czg, <2 x double> %i.czf)
  %i.czk = insertelement <2 x double> poison, double %i.cyy, i64 0
  %i.czl = shufflevector <2 x double> %i.czk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.czm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czl, <2 x double> %i.czj, <2 x double> %i.cze)
  %i.czn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czi, <2 x double> %i.czm, <2 x double> %i.czd) ; 3 uses
  %i.czo = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.czp = load double, ptr %i.czo, align 8, !tbaa !49 ; 3 uses
  %i.czq = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.czr = load double, ptr %i.czq, align 8, !tbaa !49 ; 4 uses
  %i.czs = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.czt = load double, ptr %i.czs, align 8, !tbaa !49 ; 4 uses
  %i.czu = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.czv = load double, ptr %i.czu, align 8, !tbaa !49 ; 4 uses
  %i.czw = tail call double @llvm.fmuladd.f64(double %i.cyv, double %i.czv, double %i.czt)
  %i.czx = tail call double @llvm.fmuladd.f64(double %i.cyy, double %i.czw, double %i.czr)
  %i.czy = tail call double @llvm.fmuladd.f64(double %i.cyv, double %i.czx, double %i.czp) ; 2 uses
  %i.czz = extractelement <2 x double> %i.czn, i64 0
  %i.daa = tail call double @SUNRabs(double noundef %i.czz) #12
  %i.dab = fdiv double %i.daa, %i.cwv             ; 2 uses
  %i.dac = fcmp ogt double %i.dab, 0.000000e+00
  %.1292.i.i = select i1 %i.dac, double %i.dab, double 0.000000e+00 ; 2 uses
  %i.dad = extractelement <2 x double> %i.czn, i64 1
  %i.dae = tail call double @SUNRabs(double noundef %i.dad) #12
  %i.daf = fdiv double %i.dae, %i.cxx             ; 2 uses
  %i.dag = fcmp ogt double %i.daf, %.1292.i.i
  %.1292.1.i.i = select i1 %i.dag, double %i.daf, double %.1292.i.i ; 2 uses
  %i.dah = tail call double @SUNRabs(double noundef %i.czy) #12
  %i.dai = fdiv double %i.dah, %i.cyk             ; 2 uses
  %i.daj = fcmp ogt double %i.dai, %.1292.1.i.i
  %.1292.2.i.i = select i1 %i.daj, double %i.dai, double %.1292.1.i.i
  %i.dak = fcmp olt double %.1292.2.i.i, 1.000000e-03
  br i1 %i.dak, label %.loopexit333.i.i, label %.preheader336.i.i

.preheader336.i.i:                                ; preds = %.preheader338.i.i
  %i.dal = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dam = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dan = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %gep364.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %gep364.1.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %gep364.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %gep364.2422.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %gep364.1.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %gep364.2.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.dao = insertelement <2 x double> poison, double %i.cww, i64 0
  %i.dap = insertelement <2 x double> %i.dao, double %i.cxy, i64 1
  %i.daq = shufflevector <2 x double> %i.czg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dar = shufflevector <2 x double> %i.czf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.das = shufflevector <2 x double> %i.cze, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dat = shufflevector <2 x double> %i.czd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dau = extractelement <2 x double> %i.czg, i64 0
  %i.dav = extractelement <2 x double> %i.czf, i64 0
  %i.daw = extractelement <2 x double> %i.cze, i64 0
  %i.dax = extractelement <2 x double> %i.cze, i64 1
  %i.day = extractelement <2 x double> %i.czd, i64 1
  %i.daz = shufflevector <2 x double> %i.czg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dba = shufflevector <2 x double> %i.czf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dbb = shufflevector <2 x double> %i.cze, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dbc = shufflevector <2 x double> %i.czd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dbd = insertelement <2 x double> poison, double %i.czv, i64 0
  %i.dbe = shufflevector <2 x double> %i.dbd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbf = insertelement <2 x double> poison, double %i.czt, i64 0
  %i.dbg = shufflevector <2 x double> %i.dbf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbh = insertelement <2 x double> poison, double %i.czr, i64 0
  %i.dbi = shufflevector <2 x double> %i.dbh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbj = insertelement <2 x double> poison, double %i.czp, i64 0
  %i.dbk = shufflevector <2 x double> %i.dbj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbl = insertelement <2 x double> poison, double %i.cwv, i64 0 ; 2 uses
  %i.dbm = insertelement <2 x double> %i.dbl, double %i.cxx, i64 1
  %i.dbn = insertelement <2 x double> poison, double %i.cxx, i64 0
  %i.dbo = insertelement <2 x double> %i.dbn, double %i.cyk, i64 1
  %i.dbp = shufflevector <2 x double> %i.dbl, <2 x double> poison, <2 x i32> zeroinitializer
  %1 = shufflevector <2 x double> %i.czd, <2 x double> %i.czf, <2 x i32> <i32 0, i32 3>
  %i.dbq = insertelement <2 x double> poison, double %i.cxx, i64 1
  br label %.preheader335.i.i

.preheader335.i.i:                                ; preds = %.preheader.i.i303, %.preheader336.i.i
  %.sroa.10.0.i.i = phi double [ %i.czy, %.preheader336.i.i ], [ %i.dfz, %.preheader.i.i303 ]
  %.0298376.i.i = phi double [ %i.cyv, %.preheader336.i.i ], [ %i.dfv, %.preheader.i.i303 ] ; 5 uses
  %.0304375.i.i = phi i32 [ 0, %.preheader336.i.i ], [ %.2306.2.i.i, %.preheader.i.i303 ]
  %.0307374.i.i = phi i32 [ 1, %.preheader336.i.i ], [ %i.dga, %.preheader.i.i303 ]
  %i.dbr = phi <2 x double> [ %i.czn, %.preheader336.i.i ], [ %i.dgc, %.preheader.i.i303 ]
  %i.dbs = fmul double %.0298376.i.i, %.0298376.i.i ; 2 uses
  %i.dbt = fmul double %.0298376.i.i, 4.000000e+00 ; 2 uses
  %i.dbu = fneg <2 x double> %i.dbr
  %i.dbv = fmul double %i.czv, %i.dbt
  %i.dbw = fneg double %.sroa.10.0.i.i
  %i.dbx = insertelement <2 x double> poison, double %i.dbt, i64 0
  %i.dby = shufflevector <2 x double> %i.dbx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbz = fmul <2 x double> %i.czg, %i.dby
  %i.dca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czf, <2 x double> splat (double 3.000000e+00), <2 x double> %i.dbz)
  %i.dcb = insertelement <2 x double> poison, double %i.dbs, i64 0
  %i.dcc = shufflevector <2 x double> %i.dcb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dcd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcc, <2 x double> %i.dca, <2 x double> %i.cze) ; 3 uses
  %i.dce = extractelement <2 x double> %i.dcd, i64 0
  %i.dcf = tail call double @SUNRabs(double noundef %i.dce) #12
  %i.dcg = extractelement <2 x double> %i.dcd, i64 1
  %i.dch = tail call double @SUNRabs(double noundef %i.dcg) #12
  %i.dci = insertelement <2 x double> poison, double %i.dcf, i64 0
  %i.dcj = insertelement <2 x double> %i.dci, double %i.dch, i64 1
  %i.dck = fcmp ogt <2 x double> %i.dcj, %i.dap
  %i.dcl = fdiv <2 x double> %i.dbu, %i.dcd
  %i.dcm = select <2 x i1> %i.dck, <2 x double> %i.dcl, <2 x double> zeroinitializer
  %i.dcn = insertelement <2 x double> poison, double %.0298376.i.i, i64 0
  %i.dco = shufflevector <2 x double> %i.dcn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dcp = fadd <2 x double> %i.dco, %i.dcm       ; 10 uses
  %i.dcq = extractelement <2 x double> %i.dcp, i64 0
  store double %i.dcq, ptr %i.dal, align 8, !tbaa !49
  %i.dcr = extractelement <2 x double> %i.dcp, i64 1
  store double %i.dcr, ptr %i.dam, align 16, !tbaa !49
  %i.dcs = fmul <2 x double> %i.dcp, %i.dcp       ; 3 uses
  %i.dct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcp, <2 x double> %i.daq, <2 x double> %i.dar)
  %i.dcu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcs, <2 x double> %i.dct, <2 x double> %i.das)
  %i.dcv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcp, <2 x double> %i.dcu, <2 x double> %i.dat) ; 3 uses
  %i.dcw = extractelement <2 x double> %i.dcv, i64 0
  %i.dcx = extractelement <2 x double> %i.dcv, i64 1
  %i.dcy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcp, <2 x double> %i.daz, <2 x double> %i.dba)
  %i.dcz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcs, <2 x double> %i.dcy, <2 x double> %i.dbb)
  %i.dda = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcp, <2 x double> %i.dcz, <2 x double> %i.dbc) ; 3 uses
  %i.ddb = extractelement <2 x double> %i.dda, i64 0
  %i.ddc = tail call double @llvm.fmuladd.f64(double %i.czt, double 3.000000e+00, double %i.dbv)
  %i.ddd = tail call double @llvm.fmuladd.f64(double %i.dbs, double %i.ddc, double %i.czr) ; 2 uses
  %i.dde = tail call double @SUNRabs(double noundef %i.ddd) #12
  %i.ddf = fcmp ogt double %i.dde, %i.cyl
  %i.ddg = tail call double @SUNRabs(double noundef %i.dcw) #12
  %i.ddh = tail call double @SUNRabs(double noundef %i.ddb) #12
  %i.ddi = insertelement <2 x double> poison, double %i.dbw, i64 0
  %i.ddj = insertelement <2 x double> %i.ddi, double %i.ddh, i64 1
  %i.ddk = insertelement <2 x double> %i.dbq, double %i.ddd, i64 0
  %i.ddl = fdiv <2 x double> %i.ddj, %i.ddk       ; 2 uses
  %i.ddm = extractelement <2 x double> %i.ddl, i64 0
  %.sroa.8.0.i.i = select i1 %i.ddf, double %i.ddm, double 0.000000e+00
  %i.ddn = fadd double %.0298376.i.i, %.sroa.8.0.i.i ; 8 uses
  store double %i.ddn, ptr %i.dan, align 8, !tbaa !49
  %i.ddo = extractelement <2 x double> %i.dda, i64 1
  %i.ddp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcp, <2 x double> %i.dbe, <2 x double> %i.dbg)
  %i.ddq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcs, <2 x double> %i.ddp, <2 x double> %i.dbi)
  %i.ddr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcp, <2 x double> %i.ddq, <2 x double> %i.dbk) ; 3 uses
  %i.dds = extractelement <2 x double> %i.ddr, i64 0
  %i.ddt = tail call double @SUNRabs(double noundef %i.dds) #12
  store <2 x double> %i.dcv, ptr %gep364.i.i, align 8, !tbaa !49
  %i.ddu = tail call double @SUNRabs(double noundef %i.dcx) #12
  %i.ddv = insertelement <2 x double> poison, double %i.ddu, i64 0
  %i.ddw = insertelement <2 x double> %i.ddv, double %i.ddg, i64 1
  %i.ddx = fdiv <2 x double> %i.ddw, %i.dbp       ; 3 uses
  %i.ddy = fcmp ogt <2 x double> %i.ddx, zeroinitializer ; 2 uses
  %i.ddz = extractelement <2 x i1> %i.ddy, i64 1
  %i.dea = extractelement <2 x double> %i.ddx, i64 1
  %.1290.i.i = select i1 %i.ddz, double %i.dea, double 0.000000e+00 ; 2 uses
  %i.deb = extractelement <2 x double> %i.ddl, i64 1 ; 2 uses
  %i.dec = fcmp ogt double %i.deb, %.1290.i.i
  %.1290.1.i.i = select i1 %i.dec, double %i.deb, double %.1290.i.i ; 2 uses
  %i.ded = extractelement <2 x i1> %i.ddy, i64 0
  %i.dee = extractelement <2 x double> %i.ddx, i64 0
  %.1290.1421.i.i = select i1 %i.ded, double %i.dee, double 0.000000e+00
  store <2 x double> %i.dda, ptr %gep364.1.i.i, align 8, !tbaa !49
  %i.def = tail call double @SUNRabs(double noundef %i.ddo) #12
  store <2 x double> %i.ddr, ptr %gep364.2.i.i, align 8, !tbaa !49
  %i.deg = extractelement <2 x double> %i.ddr, i64 1
  %i.deh = tail call double @SUNRabs(double noundef %i.deg) #12
  %i.dei = fmul double %i.ddn, %i.ddn             ; 3 uses
  %i.dej = tail call double @llvm.fmuladd.f64(double %i.ddn, double %i.dau, double %i.dav)
  %i.dek = tail call double @llvm.fmuladd.f64(double %i.dei, double %i.dej, double %i.daw)
  %2 = insertelement <2 x double> poison, double %i.ddn, i64 0
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = insertelement <2 x double> %i.czg, double %i.dek, i64 0
  %5 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> %4, <2 x double> %1) ; 2 uses
  %6 = extractelement <2 x double> %5, i64 0      ; 2 uses
  store double %6, ptr %gep364.2422.i.i, align 8, !tbaa !49
  %i.del = tail call double @SUNRabs(double noundef %6) #12
  %7 = extractelement <2 x double> %5, i64 1
  %i.dem = tail call double @llvm.fmuladd.f64(double %i.dei, double %7, double %i.dax)
  %i.den = tail call double @llvm.fmuladd.f64(double %i.ddn, double %i.dem, double %i.day) ; 2 uses
  store double %i.den, ptr %gep364.1.2.i.i, align 8, !tbaa !49
  %i.deo = tail call double @SUNRabs(double noundef %i.den) #12
  %i.dep = tail call double @llvm.fmuladd.f64(double %i.ddn, double %i.czv, double %i.czt)
  %i.deq = tail call double @llvm.fmuladd.f64(double %i.dei, double %i.dep, double %i.czr)
  %i.der = tail call double @llvm.fmuladd.f64(double %i.ddn, double %i.deq, double %i.czp) ; 2 uses
  store double %i.der, ptr %gep364.2.2.i.i, align 8, !tbaa !49
  %i.des = tail call double @SUNRabs(double noundef %i.der) #12
  %i.det = fdiv double %i.des, %i.cyk             ; 2 uses
  %i.deu = insertelement <2 x double> poison, double %i.del, i64 0
  %i.dev = insertelement <2 x double> %i.deu, double %i.def, i64 1
  %i.dew = fdiv <2 x double> %i.dev, %i.dbm       ; 2 uses
  %i.dex = fdiv double %i.ddt, %i.cyk             ; 2 uses
  %i.dey = insertelement <2 x double> <double 0.000000e+00, double poison>, double %.1290.1421.i.i, i64 1 ; 2 uses
  %i.dez = fcmp ogt <2 x double> %i.dew, %i.dey
  %i.dfa = fcmp ogt double %i.dex, %.1290.1.i.i
  %i.dfb = select <2 x i1> %i.dez, <2 x double> %i.dew, <2 x double> %i.dey ; 2 uses
  %.1290.2.i.i = select i1 %i.dfa, double %i.dex, double %.1290.1.i.i ; 3 uses
  %i.dfc = insertelement <2 x double> poison, double %i.deo, i64 0
  %i.dfd = insertelement <2 x double> %i.dfc, double %i.deh, i64 1
  %i.dfe = fdiv <2 x double> %i.dfd, %i.dbo       ; 2 uses
  %i.dff = fcmp ogt <2 x double> %i.dfe, %i.dfb
  %i.dfg = fadd double %.1290.2.i.i, 1.000000e+00 ; 2 uses
  %i.dfh = fcmp olt double %.1290.2.i.i, %i.dfg   ; 2 uses
  %i.dfi = select <2 x i1> %i.dff, <2 x double> %i.dfe, <2 x double> %i.dfb ; 3 uses
  %.2306.i.i = select i1 %i.dfh, i32 1, i32 %.0304375.i.i
  %.2.i.i302 = select i1 %i.dfh, double %.1290.2.i.i, double %i.dfg ; 2 uses
  %i.dfj = insertelement <2 x double> poison, double %i.det, i64 0
  %i.dfk = insertelement <2 x double> %i.dfj, double %.2.i.i302, i64 1
  %i.dfl = fcmp ogt <2 x double> %i.dfk, %i.dfi   ; 2 uses
  %i.dfm = extractelement <2 x i1> %i.dfl, i64 1
  %.2306.1.i.i = select i1 %i.dfm, i32 2, i32 %.2306.i.i
  %i.dfn = insertelement <2 x double> %i.dfi, double %i.det, i64 0
  %i.dfo = insertelement <2 x double> %i.dfi, double %.2.i.i302, i64 1
  %i.dfp = select <2 x i1> %i.dfl, <2 x double> %i.dfn, <2 x double> %i.dfo ; 2 uses
  %i.dfq = extractelement <2 x double> %i.dfp, i64 0 ; 2 uses
  %i.dfr = extractelement <2 x double> %i.dfp, i64 1 ; 2 uses
  %i.dfs = fcmp olt double %i.dfq, %i.dfr         ; 2 uses
  %.2306.2.i.i = select i1 %i.dfs, i32 3, i32 %.2306.1.i.i ; 2 uses
  %.2.2.i.i = select i1 %i.dfs, double %i.dfq, double %i.dfr ; 2 uses
  %i.dft = zext nneg i32 %.2306.2.i.i to i64      ; 2 uses
  %i.dfu = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dft
  %i.dfv = load double, ptr %i.dfu, align 8, !tbaa !49 ; 2 uses
  %i.dfw = fcmp olt double %.2.2.i.i, 1.000000e-03
  br i1 %i.dfw, label %bb.jo, label %.preheader.i.i303

.preheader.i.i303:                                ; preds = %.preheader335.i.i
  %invariant.gep371.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.dft ; 3 uses
  %gep372.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 32
  %i.dfx = load double, ptr %gep372.i.i, align 8, !tbaa !49
  %gep372.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 64
  %i.dfy = load double, ptr %gep372.1.i.i, align 8, !tbaa !49
  %gep372.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 96
  %i.dfz = load double, ptr %gep372.2.i.i, align 8, !tbaa !49
  %i.dga = add nuw nsw i32 %.0307374.i.i, 1       ; 2 uses
  %exitcond432.not.i.i = icmp eq i32 %i.dga, 4
  %i.dgb = insertelement <2 x double> poison, double %i.dfx, i64 0
  %i.dgc = insertelement <2 x double> %i.dgb, double %i.dfy, i64 1
  br i1 %exitcond432.not.i.i, label %bb.jo, label %.preheader335.i.i, !llvm.loop !396

bb.jo:                                            ; preds = %.preheader.i.i303, %.preheader335.i.i
  %.0301.i.i = phi i32 [ 0, %.preheader.i.i303 ], [ 3, %.preheader335.i.i ]
  %i.dgd = fcmp ogt double %.2.2.i.i, 1.000000e-03
  br i1 %i.dgd, label %cvSLdet.exit.thread.i, label %.loopexit333.i.i

.loopexit333.i.i:                                 ; preds = %bb.jo, %.preheader338.i.i, %.loopexit333.loopexit.i.i
  %.1302.i.i = phi i32 [ 2, %.preheader338.i.i ], [ %.0301.i.i, %bb.jo ], [ 1, %.loopexit333.loopexit.i.i ] ; 2 uses
  %.2300.i.i = phi double [ %i.cyv, %.preheader338.i.i ], [ %i.dfv, %bb.jo ], [ %i.cwk, %.loopexit333.loopexit.i.i ] ; 22 uses
  %i.dge = fmul double %.2300.i.i, %.2300.i.i     ; 3 uses
  %i.dgf = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.dgg = load double, ptr %i.dgf, align 8, !tbaa !49
  %i.dgh = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.dgi = load double, ptr %i.dgh, align 8, !tbaa !49
  %i.dgj = fmul double %.2300.i.i, %i.dgi         ; 2 uses
  %i.dgk = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.dgl = load double, ptr %i.dgk, align 8, !tbaa !49
  %i.dgm = fmul double %.2300.i.i, %i.dgl
  %i.dgn = fmul double %.2300.i.i, %i.dgm         ; 2 uses
  %i.dgo = getelementptr inbounds nuw i8, ptr %0, i64 1992
  %i.dgp = load double, ptr %i.dgo, align 8, !tbaa !49
  %i.dgq = fmul double %.2300.i.i, %i.dgp
  %i.dgr = fmul double %.2300.i.i, %i.dgq
  %i.dgs = fmul double %.2300.i.i, %i.dgr
  %i.dgt = fsub double %i.dgj, %i.dgn             ; 4 uses
  %i.dgu = fsub double %i.dgn, %i.dgs
  %i.dgv = fsub double %i.dgt, %i.dgu             ; 2 uses
  %i.dgw = tail call double @SUNRabs(double noundef %i.dgt) #12
  %i.dgx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dgy = load double, ptr %i.dgx, align 8, !tbaa !49
  %i.dgz = fmul double %i.dgy, 1.000000e-10
  %i.dha = fcmp olt double %i.dgw, %i.dgz
  br i1 %i.dha, label %cvSLdet.exit.thread.i, label %bb.jp

bb.jp:                                            ; preds = %.loopexit333.i.i
  %i.dhb = fsub double %i.dgg, %i.dgj
  %i.dhc = fsub double %i.dhb, %i.dgt
  %i.dhd = fsub double %i.dhc, %i.dgv
  %i.dhe = fneg double %i.dhd
  %i.dhf = fdiv double %i.dhe, %i.dgt             ; 3 uses
  %i.dhg = fcmp olt double %i.dhf, 1.000000e-10
  %i.dhh = fcmp ogt double %i.dhf, 4.000000e+00
  %or.cond3.i.i = or i1 %i.dhg, %i.dhh
  br i1 %or.cond3.i.i, label %cvSLdet.exit.thread.i, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.dhi = fdiv double %i.dgv, %i.dhf
  %i.dhj = fdiv double %i.dhi, %i.dge
  %i.dhk = load double, ptr %i.dgk, align 8, !tbaa !49
  %i.dhl = fadd double %i.dhj, %i.dhk
  %i.dhm = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.dhn = load double, ptr %i.dhm, align 8, !tbaa !49
  %i.dho = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.dhp = load double, ptr %i.dho, align 8, !tbaa !49
  %i.dhq = fmul double %.2300.i.i, %i.dhp         ; 2 uses
  %i.dhr = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.dhs = load double, ptr %i.dhr, align 8, !tbaa !49
  %i.dht = fmul double %.2300.i.i, %i.dhs
  %i.dhu = fmul double %.2300.i.i, %i.dht         ; 2 uses
  %i.dhv = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.dhw = load double, ptr %i.dhv, align 8, !tbaa !49
  %i.dhx = fmul double %.2300.i.i, %i.dhw
  %i.dhy = fmul double %.2300.i.i, %i.dhx
  %i.dhz = fmul double %.2300.i.i, %i.dhy
  %i.dia = fsub double %i.dhq, %i.dhu             ; 4 uses
  %i.dib = fsub double %i.dhu, %i.dhz
  %i.dic = fsub double %i.dia, %i.dib             ; 2 uses
  %i.did = tail call double @SUNRabs(double noundef %i.dia) #12
  %i.die = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dif = load double, ptr %i.die, align 16, !tbaa !49
  %i.dig = fmul double %i.dif, 1.000000e-10
  %i.dih = fcmp olt double %i.did, %i.dig
  br i1 %i.dih, label %cvSLdet.exit.thread.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.dii = fsub double %i.dhn, %i.dhq
  %i.dij = fsub double %i.dii, %i.dia
  %i.dik = fsub double %i.dij, %i.dic
  %i.dil = fneg double %i.dik
  %i.dim = fdiv double %i.dil, %i.dia             ; 3 uses
  %i.din = fcmp olt double %i.dim, 1.000000e-10
  %i.dio = fcmp ogt double %i.dim, 4.000000e+00
  %or.cond3.1.i.i = or i1 %i.din, %i.dio
  br i1 %or.cond3.1.i.i, label %cvSLdet.exit.thread.i, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.dip = fdiv double %i.dic, %i.dim
  %i.diq = fdiv double %i.dip, %i.dge
  %i.dir = load double, ptr %i.dhr, align 8, !tbaa !49
  %i.dis = fadd double %i.diq, %i.dir             ; 3 uses
  %i.dit = getelementptr inbounds nuw i8, ptr %0, i64 1912
  %i.diu = load double, ptr %i.dit, align 8, !tbaa !49
  %i.div = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.diw = load double, ptr %i.div, align 8, !tbaa !49
  %i.dix = fmul double %.2300.i.i, %i.diw         ; 2 uses
  %i.diy = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 2 uses
  %i.diz = load double, ptr %i.diy, align 8, !tbaa !49
  %i.dja = fmul double %.2300.i.i, %i.diz
  %i.djb = fmul double %.2300.i.i, %i.dja         ; 2 uses
  %i.djc = getelementptr inbounds nuw i8, ptr %0, i64 2008
  %i.djd = load double, ptr %i.djc, align 8, !tbaa !49
  %i.dje = fmul double %.2300.i.i, %i.djd
  %i.djf = fmul double %.2300.i.i, %i.dje
  %i.djg = fmul double %.2300.i.i, %i.djf
  %i.djh = fsub double %i.dix, %i.djb             ; 4 uses
  %i.dji = fsub double %i.djb, %i.djg
  %i.djj = fsub double %i.djh, %i.dji             ; 2 uses
  %i.djk = tail call double @SUNRabs(double noundef %i.djh) #12
  %i.djl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.djm = load double, ptr %i.djl, align 8, !tbaa !49
  %i.djn = fmul double %i.djm, 1.000000e-10
  %i.djo = fcmp olt double %i.djk, %i.djn
  br i1 %i.djo, label %cvSLdet.exit.thread.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.djp = fsub double %i.diu, %i.dix
  %i.djq = fsub double %i.djp, %i.djh
  %i.djr = fsub double %i.djq, %i.djj
  %i.djs = fneg double %i.djr
  %i.djt = fdiv double %i.djs, %i.djh             ; 3 uses
  %i.dju = fcmp olt double %i.djt, 1.000000e-10
  %i.djv = fcmp ogt double %i.djt, 4.000000e+00
  %or.cond3.2.i.i = or i1 %i.dju, %i.djv
  %i.djw = fcmp olt double %i.dis, 1.000000e-10
  %or.cond.i304 = select i1 %or.cond3.2.i.i, i1 true, i1 %i.djw
  br i1 %or.cond.i304, label %cvSLdet.exit.thread.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.djx = fdiv double %i.djj, %i.djt
  %i.djy = fdiv double %i.djx, %i.dge
  %i.djz = load double, ptr %i.diy, align 8, !tbaa !49
  %i.dka = fadd double %i.djy, %i.djz
  %i.dkb = fdiv double %i.dka, %i.dis             ; 2 uses
  %i.dkc = fdiv double %i.dhl, %i.dis
  %i.dkd = load i32, ptr %i.bg, align 8, !tbaa !84 ; 3 uses
  %i.dke = mul nsw i32 %i.dkd, %i.dkd
  %i.dkf = add nsw i32 %i.dke, -1
  %i.dkg = sitofp i32 %i.dkf to double
  %i.dkh = sitofp i32 %i.dkd to double
  %i.dki = fadd double %i.dkh, -1.000000e+00
  %i.dkj = tail call double @llvm.fmuladd.f64(double %i.dkb, double %i.dkc, double -1.000000e+00)
end_hunk_0
