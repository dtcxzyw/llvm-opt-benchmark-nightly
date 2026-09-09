Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cvodes?download=true
inline.NumInlined: 100
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@cvStep:bb.a
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cvo = load double, ptr %i.cvn, align 8, !tbaa !53 ; 4 uses
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cvq = load double, ptr %i.cvp, align 16, !tbaa !53 ; 4 uses
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cvs = load double, ptr %i.cvr, align 8, !tbaa !53 ; 4 uses
  %i.cvt = fcmp olt double %i.cvq, %i.cvs
  %i.cvu = select i1 %i.cvt, double %i.cvq, double %i.cvs ; 2 uses
  %i.cvv = fcmp olt double %i.cvo, %i.cvu
  %..i.i300 = select i1 %i.cvv, double %i.cvo, double %i.cvu
  %i.cvw = fcmp olt double %..i.i300, 1.000000e-08
  br i1 %i.cvw, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.cvx = fcmp ogt double %i.cvq, %i.cvs
  %i.cvy = select i1 %i.cvx, double %i.cvq, double %i.cvs ; 2 uses
  %i.cvz = fcmp ogt double %i.cvo, %i.cvy
  %i.cwa = select i1 %i.cvz, double %i.cvo, double %i.cvy
  %i.cwb = fcmp ogt double %i.cwa, 2.500000e-07
  br i1 %i.cwb, label %cvSLdet.exit.thread.i, label %.loopexit333.loopexit.i.i

.loopexit333.loopexit.i.i:                        ; preds = %bb.jh
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cwd = load double, ptr %i.cwc, align 8, !tbaa !53 ; 2 uses
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cwf = load double, ptr %i.cwe, align 16, !tbaa !53 ; 2 uses
  %i.cwg = fadd double %i.cwd, %i.cwf
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cwi = load double, ptr %i.cwh, align 8, !tbaa !53 ; 2 uses
  %i.cwj = fadd double %i.cwg, %i.cwi
  %i.cwk = fdiv double %i.cwj, 3.000000e+00       ; 4 uses
  %i.cwl = fsub double %i.cwd, %i.cwk
  %i.cwm = tail call double @SUNRabs(double noundef %i.cwl) #12 ; 0 uses
  %i.cwn = fsub double %i.cwf, %i.cwk
  %i.cwo = tail call double @SUNRabs(double noundef %i.cwn) #12 ; 0 uses
  %i.cwp = fsub double %i.cwi, %i.cwk
  %i.cwq = tail call double @SUNRabs(double noundef %i.cwp) #12 ; 0 uses
  br label %.loopexit333.i.i

bb.ji:                                            ; preds = %bb.jg
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.cws = load double, ptr %i.cwr, align 8, !tbaa !53 ; 3 uses
  %i.cwt = tail call double @SUNRabs(double noundef %i.cws) #12
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cwv = load double, ptr %i.cwu, align 8, !tbaa !53 ; 3 uses
  %i.cww = fmul double %i.cwv, 1.000000e-10       ; 2 uses
  %i.cwx = fcmp olt double %i.cwt, %i.cww
  br i1 %i.cwx, label %cvSLdet.exit.thread.i, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.cwz = load double, ptr %i.cwy, align 16, !tbaa !53
  %i.cxa = fneg double %i.cwz
  %i.cxb = fdiv double %i.cxa, %i.cws             ; 3 uses
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.cxd = load double, ptr %i.cxc, align 16, !tbaa !53
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.cxf = load double, ptr %i.cxe, align 8, !tbaa !53 ; 2 uses
  %i.cxg = tail call double @llvm.fmuladd.f64(double %i.cxb, double %i.cxf, double %i.cxd) ; 2 uses
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.cxi = load double, ptr %i.cxh, align 16, !tbaa !53
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.cxk = load double, ptr %i.cxj, align 8, !tbaa !53 ; 2 uses
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.cxn = load <2 x double>, ptr %i.cxm, align 8
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.cxp = load double, ptr %i.cxo, align 8, !tbaa !53
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.cxr = load double, ptr %i.cxq, align 8, !tbaa !53
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.cxt = load double, ptr %i.cxs, align 8, !tbaa !53
  %i.cxu = load <2 x double>, ptr %i.cxl, align 16, !tbaa !53
  %i.cxv = tail call double @SUNRabs(double noundef %i.cxg) #12
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cxx = load double, ptr %i.cxw, align 16, !tbaa !53 ; 5 uses
  %i.cxy = fmul double %i.cxx, 1.000000e-10       ; 2 uses
  %i.cxz = fcmp olt double %i.cxv, %i.cxy
  br i1 %i.cxz, label %cvSLdet.exit.thread.i, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
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
  %i.cyk = load double, ptr %i.cyj, align 8, !tbaa !53 ; 5 uses
  %i.cyl = fmul double %i.cyk, 1.000000e-10       ; 2 uses
  %i.cym = fcmp olt double %i.cyi, %i.cyl
  br i1 %i.cym, label %cvSLdet.exit.thread.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
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

.preheader338.i.i:                                ; preds = %bb.jl
  %i.cyy = fmul double %i.cyv, %i.cyv             ; 2 uses
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.cza = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.czb = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.czc = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.czd = load <2 x double>, ptr %i.cyz, align 8, !tbaa !53 ; 5 uses
  %i.cze = load <2 x double>, ptr %i.cza, align 8, !tbaa !53 ; 6 uses
  %i.czf = load <2 x double>, ptr %i.czb, align 8, !tbaa !53 ; 6 uses
  %i.czg = load <2 x double>, ptr %i.czc, align 8, !tbaa !53 ; 6 uses
  %i.czh = insertelement <2 x double> poison, double %i.cyv, i64 0
  %i.czi = shufflevector <2 x double> %i.czh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.czj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czi, <2 x double> %i.czg, <2 x double> %i.czf)
  %i.czk = insertelement <2 x double> poison, double %i.cyy, i64 0
  %i.czl = shufflevector <2 x double> %i.czk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.czm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czl, <2 x double> %i.czj, <2 x double> %i.cze)
  %i.czn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czi, <2 x double> %i.czm, <2 x double> %i.czd) ; 3 uses
  %i.czo = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.czp = load double, ptr %i.czo, align 8, !tbaa !53 ; 3 uses
  %i.czq = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.czr = load double, ptr %i.czq, align 8, !tbaa !53 ; 4 uses
  %i.czs = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.czt = load double, ptr %i.czs, align 8, !tbaa !53 ; 4 uses
  %i.czu = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.czv = load double, ptr %i.czu, align 8, !tbaa !53 ; 4 uses
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
  %i.dbq = shufflevector <2 x double> %i.czd, <2 x double> %i.czf, <2 x i32> <i32 0, i32 3>
  %i.dbr = insertelement <2 x double> poison, double %i.cxx, i64 1
  br label %.preheader335.i.i

.preheader335.i.i:                                ; preds = %.preheader.i.i303, %.preheader336.i.i
  %.sroa.10.0.i.i = phi double [ %i.czy, %.preheader336.i.i ], [ %i.dfy, %.preheader.i.i303 ]
  %.0298376.i.i = phi double [ %i.cyv, %.preheader336.i.i ], [ %i.dfu, %.preheader.i.i303 ] ; 2 uses
  %.0304375.i.i = phi i32 [ 0, %.preheader336.i.i ], [ %.2306.2.i.i, %.preheader.i.i303 ]
  %.0307374.i.i = phi i32 [ 1, %.preheader336.i.i ], [ %i.dfz, %.preheader.i.i303 ]
  %i.dbs = phi <2 x double> [ %i.czn, %.preheader336.i.i ], [ %i.dgb, %.preheader.i.i303 ]
  %1 = insertelement <2 x double> poison, double %.0298376.i.i, i64 0 ; 2 uses
  %2 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %3 = insertelement <2 x double> %1, double 4.000000e+00, i64 1
  %4 = fmul <2 x double> %2, %3                   ; 4 uses
  %i.dbt = fneg <2 x double> %i.dbs
  %5 = extractelement <2 x double> %4, i64 1
  %i.dbu = fmul double %i.czv, %5
  %6 = extractelement <2 x double> %4, i64 0
  %7 = fneg double %.sroa.10.0.i.i
  %8 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dbv = fmul <2 x double> %i.czg, %8
  %i.dbw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czf, <2 x double> splat (double 3.000000e+00), <2 x double> %i.dbv)
  %i.dbx = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dby = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dbx, <2 x double> %i.dbw, <2 x double> %i.cze) ; 3 uses
  %i.dbz = extractelement <2 x double> %i.dby, i64 0
  %i.dca = tail call double @SUNRabs(double noundef %i.dbz) #12
  %i.dcb = extractelement <2 x double> %i.dby, i64 1
  %i.dcc = tail call double @SUNRabs(double noundef %i.dcb) #12
  %i.dcd = insertelement <2 x double> poison, double %i.dca, i64 0
  %i.dce = insertelement <2 x double> %i.dcd, double %i.dcc, i64 1
  %i.dcf = fcmp ogt <2 x double> %i.dce, %i.dap
  %i.dcg = fdiv <2 x double> %i.dbt, %i.dby
  %i.dch = select <2 x i1> %i.dcf, <2 x double> %i.dcg, <2 x double> zeroinitializer
  %i.dci = fadd <2 x double> %2, %i.dch           ; 10 uses
  %i.dcj = extractelement <2 x double> %i.dci, i64 0
  store double %i.dcj, ptr %i.dal, align 8, !tbaa !53
  %i.dck = extractelement <2 x double> %i.dci, i64 1
  store double %i.dck, ptr %i.dam, align 16, !tbaa !53
  %i.dcl = fmul <2 x double> %i.dci, %i.dci       ; 3 uses
  %i.dcm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dci, <2 x double> %i.daq, <2 x double> %i.dar)
  %i.dcn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcl, <2 x double> %i.dcm, <2 x double> %i.das)
  %i.dco = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dci, <2 x double> %i.dcn, <2 x double> %i.dat) ; 3 uses
  %i.dcp = extractelement <2 x double> %i.dco, i64 0
  %i.dcq = extractelement <2 x double> %i.dco, i64 1
  %i.dcr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dci, <2 x double> %i.daz, <2 x double> %i.dba)
  %i.dcs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcl, <2 x double> %i.dcr, <2 x double> %i.dbb)
  %i.dct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dci, <2 x double> %i.dcs, <2 x double> %i.dbc) ; 3 uses
  %i.dcu = extractelement <2 x double> %i.dct, i64 0
  %i.dcv = tail call double @llvm.fmuladd.f64(double %i.czt, double 3.000000e+00, double %i.dbu)
  %i.dcw = tail call double @llvm.fmuladd.f64(double %6, double %i.dcv, double %i.czr) ; 2 uses
  %i.dcx = tail call double @SUNRabs(double noundef %i.dcw) #12
  %i.dcy = fcmp ogt double %i.dcx, %i.cyl
  %i.dcz = tail call double @SUNRabs(double noundef %i.dcp) #12
  %i.dda = tail call double @SUNRabs(double noundef %i.dcu) #12
  %i.ddb = insertelement <2 x double> poison, double %7, i64 0
  %i.ddc = insertelement <2 x double> %i.ddb, double %i.dda, i64 1
  %i.ddd = insertelement <2 x double> %i.dbr, double %i.dcw, i64 0
  %i.dde = fdiv <2 x double> %i.ddc, %i.ddd       ; 2 uses
  %i.ddf = extractelement <2 x double> %i.dde, i64 0
  %.sroa.8.0.i.i = select i1 %i.dcy, double %i.ddf, double 0.000000e+00
  %i.ddg = fadd double %.0298376.i.i, %.sroa.8.0.i.i ; 8 uses
  store double %i.ddg, ptr %i.dan, align 8, !tbaa !53
  %i.ddh = extractelement <2 x double> %i.dct, i64 1
  %i.ddi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dci, <2 x double> %i.dbe, <2 x double> %i.dbg)
  %i.ddj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcl, <2 x double> %i.ddi, <2 x double> %i.dbi)
  %i.ddk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dci, <2 x double> %i.ddj, <2 x double> %i.dbk) ; 3 uses
  %i.ddl = extractelement <2 x double> %i.ddk, i64 0
  %i.ddm = tail call double @SUNRabs(double noundef %i.ddl) #12
  store <2 x double> %i.dco, ptr %gep364.i.i, align 8, !tbaa !53
  %i.ddn = tail call double @SUNRabs(double noundef %i.dcq) #12
  %i.ddo = insertelement <2 x double> poison, double %i.ddn, i64 0
  %i.ddp = insertelement <2 x double> %i.ddo, double %i.dcz, i64 1
  %i.ddq = fdiv <2 x double> %i.ddp, %i.dbp       ; 3 uses
  %i.ddr = fcmp ogt <2 x double> %i.ddq, zeroinitializer ; 2 uses
  %i.dds = extractelement <2 x i1> %i.ddr, i64 1
  %i.ddt = extractelement <2 x double> %i.ddq, i64 1
  %.1290.i.i = select i1 %i.dds, double %i.ddt, double 0.000000e+00 ; 2 uses
  %i.ddu = extractelement <2 x double> %i.dde, i64 1 ; 2 uses
  %i.ddv = fcmp ogt double %i.ddu, %.1290.i.i
  %.1290.1.i.i = select i1 %i.ddv, double %i.ddu, double %.1290.i.i ; 2 uses
  %i.ddw = extractelement <2 x i1> %i.ddr, i64 0
  %i.ddx = extractelement <2 x double> %i.ddq, i64 0
  %.1290.1421.i.i = select i1 %i.ddw, double %i.ddx, double 0.000000e+00
  store <2 x double> %i.dct, ptr %gep364.1.i.i, align 8, !tbaa !53
  %i.ddy = tail call double @SUNRabs(double noundef %i.ddh) #12
  store <2 x double> %i.ddk, ptr %gep364.2.i.i, align 8, !tbaa !53
  %i.ddz = extractelement <2 x double> %i.ddk, i64 1
  %i.dea = tail call double @SUNRabs(double noundef %i.ddz) #12
  %i.deb = fmul double %i.ddg, %i.ddg             ; 3 uses
  %i.dec = tail call double @llvm.fmuladd.f64(double %i.ddg, double %i.dau, double %i.dav)
  %i.ded = tail call double @llvm.fmuladd.f64(double %i.deb, double %i.dec, double %i.daw)
  %i.dee = insertelement <2 x double> poison, double %i.ddg, i64 0
  %i.def = shufflevector <2 x double> %i.dee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.deg = insertelement <2 x double> %i.czg, double %i.ded, i64 0
  %i.deh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.def, <2 x double> %i.deg, <2 x double> %i.dbq) ; 2 uses
  %i.dei = extractelement <2 x double> %i.deh, i64 0 ; 2 uses
  store double %i.dei, ptr %gep364.2422.i.i, align 8, !tbaa !53
  %i.dej = tail call double @SUNRabs(double noundef %i.dei) #12
  %i.dek = extractelement <2 x double> %i.deh, i64 1
  %i.del = tail call double @llvm.fmuladd.f64(double %i.deb, double %i.dek, double %i.dax)
  %i.dem = tail call double @llvm.fmuladd.f64(double %i.ddg, double %i.del, double %i.day) ; 2 uses
  store double %i.dem, ptr %gep364.1.2.i.i, align 8, !tbaa !53
  %i.den = tail call double @SUNRabs(double noundef %i.dem) #12
  %i.deo = tail call double @llvm.fmuladd.f64(double %i.ddg, double %i.czv, double %i.czt)
  %i.dep = tail call double @llvm.fmuladd.f64(double %i.deb, double %i.deo, double %i.czr)
  %i.deq = tail call double @llvm.fmuladd.f64(double %i.ddg, double %i.dep, double %i.czp) ; 2 uses
  store double %i.deq, ptr %gep364.2.2.i.i, align 8, !tbaa !53
  %i.der = tail call double @SUNRabs(double noundef %i.deq) #12
  %i.des = fdiv double %i.der, %i.cyk             ; 2 uses
  %i.det = insertelement <2 x double> poison, double %i.dej, i64 0
  %i.deu = insertelement <2 x double> %i.det, double %i.ddy, i64 1
  %i.dev = fdiv <2 x double> %i.deu, %i.dbm       ; 2 uses
  %i.dew = fdiv double %i.ddm, %i.cyk             ; 2 uses
  %i.dex = insertelement <2 x double> <double 0.000000e+00, double poison>, double %.1290.1421.i.i, i64 1 ; 2 uses
  %i.dey = fcmp ogt <2 x double> %i.dev, %i.dex
  %i.dez = fcmp ogt double %i.dew, %.1290.1.i.i
  %i.dfa = select <2 x i1> %i.dey, <2 x double> %i.dev, <2 x double> %i.dex ; 2 uses
  %.1290.2.i.i = select i1 %i.dez, double %i.dew, double %.1290.1.i.i ; 3 uses
  %i.dfb = insertelement <2 x double> poison, double %i.den, i64 0
  %i.dfc = insertelement <2 x double> %i.dfb, double %i.dea, i64 1
  %i.dfd = fdiv <2 x double> %i.dfc, %i.dbo       ; 2 uses
  %i.dfe = fcmp ogt <2 x double> %i.dfd, %i.dfa
  %i.dff = fadd double %.1290.2.i.i, 1.000000e+00 ; 2 uses
  %i.dfg = fcmp olt double %.1290.2.i.i, %i.dff   ; 2 uses
  %i.dfh = select <2 x i1> %i.dfe, <2 x double> %i.dfd, <2 x double> %i.dfa ; 3 uses
  %.2306.i.i = select i1 %i.dfg, i32 1, i32 %.0304375.i.i
  %.2.i.i302 = select i1 %i.dfg, double %.1290.2.i.i, double %i.dff ; 2 uses
  %i.dfi = insertelement <2 x double> poison, double %i.des, i64 0
  %i.dfj = insertelement <2 x double> %i.dfi, double %.2.i.i302, i64 1
  %i.dfk = fcmp ogt <2 x double> %i.dfj, %i.dfh   ; 2 uses
  %i.dfl = extractelement <2 x i1> %i.dfk, i64 1
  %.2306.1.i.i = select i1 %i.dfl, i32 2, i32 %.2306.i.i
  %i.dfm = insertelement <2 x double> %i.dfh, double %i.des, i64 0
  %i.dfn = insertelement <2 x double> %i.dfh, double %.2.i.i302, i64 1
  %i.dfo = select <2 x i1> %i.dfk, <2 x double> %i.dfm, <2 x double> %i.dfn ; 2 uses
  %i.dfp = extractelement <2 x double> %i.dfo, i64 0 ; 2 uses
  %i.dfq = extractelement <2 x double> %i.dfo, i64 1 ; 2 uses
  %i.dfr = fcmp olt double %i.dfp, %i.dfq         ; 2 uses
  %.2306.2.i.i = select i1 %i.dfr, i32 3, i32 %.2306.1.i.i ; 2 uses
  %.2.2.i.i = select i1 %i.dfr, double %i.dfp, double %i.dfq ; 2 uses
  %i.dfs = zext nneg i32 %.2306.2.i.i to i64      ; 2 uses
  %i.dft = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dfs
  %i.dfu = load double, ptr %i.dft, align 8, !tbaa !53 ; 2 uses
  %i.dfv = fcmp olt double %.2.2.i.i, 1.000000e-03
  br i1 %i.dfv, label %bb.jm, label %.preheader.i.i303

.preheader.i.i303:                                ; preds = %.preheader335.i.i
  %invariant.gep371.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.dfs ; 3 uses
  %gep372.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 32
  %i.dfw = load double, ptr %gep372.i.i, align 8, !tbaa !53
  %gep372.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 64
  %i.dfx = load double, ptr %gep372.1.i.i, align 8, !tbaa !53
  %gep372.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 96
  %i.dfy = load double, ptr %gep372.2.i.i, align 8, !tbaa !53
  %i.dfz = add nuw nsw i32 %.0307374.i.i, 1       ; 2 uses
  %exitcond432.not.i.i = icmp eq i32 %i.dfz, 4
  %i.dga = insertelement <2 x double> poison, double %i.dfw, i64 0
  %i.dgb = insertelement <2 x double> %i.dga, double %i.dfx, i64 1
  br i1 %exitcond432.not.i.i, label %bb.jm, label %.preheader335.i.i, !llvm.loop !375

bb.jm:                                            ; preds = %.preheader.i.i303, %.preheader335.i.i
  %.0301.i.i = phi i32 [ 0, %.preheader.i.i303 ], [ 3, %.preheader335.i.i ]
  %i.dgc = fcmp ogt double %.2.2.i.i, 1.000000e-03
  br i1 %i.dgc, label %cvSLdet.exit.thread.i, label %.loopexit333.i.i

.loopexit333.i.i:                                 ; preds = %bb.jm, %.preheader338.i.i, %.loopexit333.loopexit.i.i
  %.1302.i.i = phi i32 [ 2, %.preheader338.i.i ], [ %.0301.i.i, %bb.jm ], [ 1, %.loopexit333.loopexit.i.i ] ; 2 uses
  %.2300.i.i = phi double [ %i.cyv, %.preheader338.i.i ], [ %i.dfu, %bb.jm ], [ %i.cwk, %.loopexit333.loopexit.i.i ] ; 22 uses
  %i.dgd = fmul double %.2300.i.i, %.2300.i.i     ; 3 uses
  %i.dge = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.dgf = load double, ptr %i.dge, align 8, !tbaa !53
  %i.dgg = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.dgh = load double, ptr %i.dgg, align 8, !tbaa !53
  %i.dgi = fmul double %.2300.i.i, %i.dgh         ; 2 uses
  %i.dgj = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.dgk = load double, ptr %i.dgj, align 8, !tbaa !53
  %i.dgl = fmul double %.2300.i.i, %i.dgk
  %i.dgm = fmul double %.2300.i.i, %i.dgl         ; 2 uses
  %i.dgn = getelementptr inbounds nuw i8, ptr %0, i64 1992
  %i.dgo = load double, ptr %i.dgn, align 8, !tbaa !53
  %i.dgp = fmul double %.2300.i.i, %i.dgo
  %i.dgq = fmul double %.2300.i.i, %i.dgp
  %i.dgr = fmul double %.2300.i.i, %i.dgq
  %i.dgs = fsub double %i.dgi, %i.dgm             ; 4 uses
  %i.dgt = fsub double %i.dgm, %i.dgr
  %i.dgu = fsub double %i.dgs, %i.dgt             ; 2 uses
  %i.dgv = tail call double @SUNRabs(double noundef %i.dgs) #12
  %i.dgw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dgx = load double, ptr %i.dgw, align 8, !tbaa !53
  %i.dgy = fmul double %i.dgx, 1.000000e-10
  %i.dgz = fcmp olt double %i.dgv, %i.dgy
  br i1 %i.dgz, label %cvSLdet.exit.thread.i, label %bb.jn

bb.jn:                                            ; preds = %.loopexit333.i.i
  %i.dha = fsub double %i.dgf, %i.dgi
  %i.dhb = fsub double %i.dha, %i.dgs
  %i.dhc = fsub double %i.dhb, %i.dgu
  %i.dhd = fneg double %i.dhc
  %i.dhe = fdiv double %i.dhd, %i.dgs             ; 3 uses
  %i.dhf = fcmp olt double %i.dhe, 1.000000e-10
  %i.dhg = fcmp ogt double %i.dhe, 4.000000e+00
  %or.cond3.i.i = or i1 %i.dhf, %i.dhg
  br i1 %or.cond3.i.i, label %cvSLdet.exit.thread.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.dhh = fdiv double %i.dgu, %i.dhe
  %i.dhi = fdiv double %i.dhh, %i.dgd
  %i.dhj = load double, ptr %i.dgj, align 8, !tbaa !53
  %i.dhk = fadd double %i.dhi, %i.dhj
  %i.dhl = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.dhm = load double, ptr %i.dhl, align 8, !tbaa !53
  %i.dhn = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.dho = load double, ptr %i.dhn, align 8, !tbaa !53
  %i.dhp = fmul double %.2300.i.i, %i.dho         ; 2 uses
  %i.dhq = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.dhr = load double, ptr %i.dhq, align 8, !tbaa !53
  %i.dhs = fmul double %.2300.i.i, %i.dhr
  %i.dht = fmul double %.2300.i.i, %i.dhs         ; 2 uses
  %i.dhu = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.dhv = load double, ptr %i.dhu, align 8, !tbaa !53
  %i.dhw = fmul double %.2300.i.i, %i.dhv
  %i.dhx = fmul double %.2300.i.i, %i.dhw
  %i.dhy = fmul double %.2300.i.i, %i.dhx
  %i.dhz = fsub double %i.dhp, %i.dht             ; 4 uses
  %i.dia = fsub double %i.dht, %i.dhy
  %i.dib = fsub double %i.dhz, %i.dia             ; 2 uses
  %i.dic = tail call double @SUNRabs(double noundef %i.dhz) #12
  %i.did = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.die = load double, ptr %i.did, align 16, !tbaa !53
  %i.dif = fmul double %i.die, 1.000000e-10
  %i.dig = fcmp olt double %i.dic, %i.dif
  br i1 %i.dig, label %cvSLdet.exit.thread.i, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.dih = fsub double %i.dhm, %i.dhp
  %i.dii = fsub double %i.dih, %i.dhz
  %i.dij = fsub double %i.dii, %i.dib
  %i.dik = fneg double %i.dij
  %i.dil = fdiv double %i.dik, %i.dhz             ; 3 uses
  %i.dim = fcmp olt double %i.dil, 1.000000e-10
  %i.din = fcmp ogt double %i.dil, 4.000000e+00
  %or.cond3.1.i.i = or i1 %i.dim, %i.din
  br i1 %or.cond3.1.i.i, label %cvSLdet.exit.thread.i, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.dio = fdiv double %i.dib, %i.dil
  %i.dip = fdiv double %i.dio, %i.dgd
  %i.diq = load double, ptr %i.dhq, align 8, !tbaa !53
  %i.dir = fadd double %i.dip, %i.diq             ; 3 uses
  %i.dis = getelementptr inbounds nuw i8, ptr %0, i64 1912
  %i.dit = load double, ptr %i.dis, align 8, !tbaa !53
  %i.diu = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.div = load double, ptr %i.diu, align 8, !tbaa !53
  %i.diw = fmul double %.2300.i.i, %i.div         ; 2 uses
  %i.dix = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 2 uses
end_hunk_0
