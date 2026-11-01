Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cvodes?download=true
inline.NumInlined: 100
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@cvStep:bb.a

bb.iy:                                            ; preds = %._crit_edge.i306, %bb.ix
  %i.crx = phi i32 [ %.pr.i, %._crit_edge.i306 ], [ %i.cpq, %bb.ix ] ; 3 uses
  %i.cry = getelementptr inbounds nuw i8, ptr %0, i64 916 ; 2 uses
  %i.crz = load i32, ptr %i.cry, align 4, !tbaa !182
  %.not.i296 = icmp slt i32 %i.crz, %i.crx
  br i1 %.not.i296, label %bb.jw, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.csa = icmp sgt i32 %i.crx, 2
  br i1 %i.csa, label %bb.ja, label %cvBDFStab.exit

bb.ja:                                            ; preds = %bb.iz
  %i.csb = load i32, ptr %i.bxj, align 8, !tbaa !78
  %i.csc = add nuw nsw i32 %i.crx, 5
  %.not75.i = icmp slt i32 %i.csb, %i.csc
  br i1 %.not75.i, label %cvBDFStab.exit, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.csd = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.cse = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.csf = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.csg = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.csh = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.csi = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.csj = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.csk = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.csl = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %i.csm = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.csn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jd, %bb.jb
  %indvars.iv.i.i297 = phi i64 [ 1, %bb.jb ], [ %indvars.iv.next.i.i298, %bb.jd ] ; 17 uses
  %i.cso = getelementptr inbounds nuw [8 x i8], ptr %i.cse, i64 %indvars.iv.i.i297 ; 2 uses
  %i.csp = load double, ptr %i.cso, align 8, !tbaa !53 ; 5 uses
  %invariant.gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.csd, i64 %indvars.iv.i.i297 ; 4 uses
  %i.csq = fcmp olt double %i.csp, 0.000000e+00
  %i.csr = select i1 %i.csq, double 0.000000e+00, double %i.csp ; 2 uses
  %gep.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 64
  %i.css = load double, ptr %gep.1.i.i, align 8, !tbaa !53 ; 6 uses
  %i.cst = fcmp olt double %i.csp, %i.css
  %.0297..1.i.i = select i1 %i.cst, double %i.csp, double %i.css ; 2 uses
  %i.csu = fcmp ogt double %i.csr, %i.css
  %i.csv = select i1 %i.csu, double %i.csr, double %i.css ; 2 uses
  %gep.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 96
  %i.csw = load double, ptr %gep.2.i.i, align 8, !tbaa !53 ; 6 uses
  %i.csx = fcmp olt double %.0297..1.i.i, %i.csw
  %.0297..2.i.i = select i1 %i.csx, double %.0297..1.i.i, double %i.csw ; 2 uses
  %i.csy = fcmp ogt double %i.csv, %i.csw
  %i.csz = select i1 %i.csy, double %i.csv, double %i.csw ; 2 uses
  %gep.3.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 128
  %i.cta = load double, ptr %gep.3.i.i, align 8, !tbaa !53 ; 6 uses
  %i.ctb = fcmp olt double %.0297..2.i.i, %i.cta
  %.0297..3.i.i = select i1 %i.ctb, double %.0297..2.i.i, double %i.cta ; 2 uses
  %i.ctc = fcmp ogt double %i.csz, %i.cta
  %i.ctd = select i1 %i.ctc, double %i.csz, double %i.cta ; 2 uses
  %gep.4.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 160
  %i.cte = load double, ptr %gep.4.i.i, align 8, !tbaa !53 ; 5 uses
  %i.ctf = fcmp olt double %.0297..3.i.i, %i.cte
  %.0297..4.i.i = select i1 %i.ctf, double %.0297..3.i.i, double %i.cte
  %i.ctg = fcmp ogt double %i.ctd, %i.cte
  %i.cth = select i1 %i.ctg, double %i.ctd, double %i.cte ; 4 uses
  %i.cti = fmul double %i.cth, 1.000000e-10
  %i.ctj = fcmp olt double %.0297..4.i.i, %i.cti
  br i1 %i.ctj, label %cvSLdet.exit.thread.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.ctk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i297
  store double %i.cth, ptr %i.ctk, align 8, !tbaa !53
  %i.ctl = fmul double %i.cth, %i.cth
  %i.ctm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i297
  store double %i.ctl, ptr %i.ctm, align 8, !tbaa !53
  %i.ctn = fdiv double %i.csp, %i.css             ; 3 uses
  %i.cto = fadd double %i.ctn, 0.000000e+00
  %i.ctp = tail call double @llvm.fmuladd.f64(double %i.ctn, double %i.ctn, double 0.000000e+00)
  %i.ctq = fdiv double %i.css, %i.csw             ; 3 uses
  %i.ctr = fadd double %i.cto, %i.ctq
  %i.cts = tail call double @llvm.fmuladd.f64(double %i.ctq, double %i.ctq, double %i.ctp)
  %i.ctt = fdiv double %i.csw, %i.cta             ; 3 uses
  %i.ctu = fadd double %i.ctr, %i.ctt
  %i.ctv = tail call double @llvm.fmuladd.f64(double %i.ctt, double %i.ctt, double %i.cts)
  %i.ctw = fdiv double %i.cta, %i.cte             ; 3 uses
  %i.ctx = fadd double %i.ctu, %i.ctw
  %i.cty = tail call double @llvm.fmuladd.f64(double %i.ctw, double %i.ctw, double %i.ctv)
  %i.ctz = fmul double %i.ctx, 2.500000e-01       ; 3 uses
  %i.cua = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i297
  store double %i.ctz, ptr %i.cua, align 8, !tbaa !53
  %i.cub = fneg double %i.ctz
  %i.cuc = fmul double %i.ctz, %i.cub
  %i.cud = tail call double @llvm.fmuladd.f64(double %i.cty, double 2.500000e-01, double %i.cuc)
  %i.cue = tail call double @SUNRabs(double noundef %i.cud) #12
  %i.cuf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i297
  store double %i.cue, ptr %i.cuf, align 8, !tbaa !53
  %i.cug = load double, ptr %i.cso, align 8, !tbaa !53 ; 2 uses
  %i.cuh = getelementptr inbounds nuw [8 x i8], ptr %i.csf, i64 %indvars.iv.i.i297
  %i.cui = load double, ptr %i.cuh, align 8, !tbaa !53 ; 4 uses
  %i.cuj = getelementptr inbounds nuw [8 x i8], ptr %i.csg, i64 %indvars.iv.i.i297
  %i.cuk = load double, ptr %i.cuj, align 8, !tbaa !53 ; 3 uses
  %i.cul = fneg double %i.cuk
  %i.cum = fmul double %i.cuk, %i.cul
  %i.cun = tail call double @llvm.fmuladd.f64(double %i.cug, double %i.cui, double %i.cum) ; 2 uses
  %i.cuo = getelementptr inbounds nuw [8 x i8], ptr %i.csh, i64 %indvars.iv.i.i297
  store double %i.cun, ptr %i.cuo, align 8, !tbaa !53
  %i.cup = getelementptr inbounds nuw [8 x i8], ptr %i.csi, i64 %indvars.iv.i.i297
  %i.cuq = load double, ptr %i.cup, align 8, !tbaa !53 ; 3 uses
  %i.cur = fneg double %i.cuq
  %i.cus = getelementptr inbounds nuw [8 x i8], ptr %i.csj, i64 %indvars.iv.i.i297
  %i.cut = getelementptr inbounds nuw [8 x i8], ptr %i.csk, i64 %indvars.iv.i.i297
  store double 0.000000e+00, ptr %i.cut, align 8, !tbaa !53
  %i.cuu = getelementptr inbounds nuw [8 x i8], ptr %i.csl, i64 %indvars.iv.i.i297
  %i.cuv = load double, ptr %i.cuu, align 8, !tbaa !53 ; 2 uses
  %i.cuw = insertelement <2 x double> poison, double %i.cug, i64 0
  %i.cux = insertelement <2 x double> %i.cuw, double %i.cui, i64 1
  %i.cuy = insertelement <2 x double> poison, double %i.cur, i64 0
  %i.cuz = shufflevector <2 x double> %i.cuy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cva = fmul <2 x double> %i.cux, %i.cuz
  %i.cvb = insertelement <2 x double> poison, double %i.cuk, i64 0
  %i.cvc = shufflevector <2 x double> %i.cvb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cvd = insertelement <2 x double> poison, double %i.cui, i64 0
  %i.cve = insertelement <2 x double> %i.cvd, double %i.cuv, i64 1
  %i.cvf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cvc, <2 x double> %i.cve, <2 x double> %i.cva) ; 2 uses
  %i.cvg = extractelement <2 x double> %i.cvf, i64 0 ; 2 uses
  store double %i.cvg, ptr %i.cus, align 8, !tbaa !53
  %i.cvh = getelementptr inbounds nuw [8 x i8], ptr %i.csm, i64 %indvars.iv.i.i297
  %i.cvi = extractelement <2 x double> %i.cvf, i64 1 ; 2 uses
  store double %i.cvi, ptr %i.cvh, align 8, !tbaa !53
  %i.cvj = fneg double %i.cuv
  %i.cvk = fmul double %i.cui, %i.cvj
  %i.cvl = tail call double @llvm.fmuladd.f64(double %i.cuq, double %i.cuq, double %i.cvk) ; 2 uses
  %i.cvm = getelementptr inbounds nuw [8 x i8], ptr %i.csn, i64 %indvars.iv.i.i297
  store double %i.cvl, ptr %i.cvm, align 8, !tbaa !53
  %invariant.gep352.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i297 ; 5 uses
  %gep353.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 32
  store double %i.cvl, ptr %gep353.i.i, align 8, !tbaa !53
  %gep353.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 64
  store double %i.cvi, ptr %gep353.1.i.i, align 8, !tbaa !53
  %gep353.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 96
  store double 0.000000e+00, ptr %gep353.2.i.i, align 8, !tbaa !53
  %gep353.3.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 128
  store double %i.cvg, ptr %gep353.3.i.i, align 8, !tbaa !53
  %gep353.4.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 160
  store double %i.cun, ptr %gep353.4.i.i, align 8, !tbaa !53
  %indvars.iv.next.i.i298 = add nuw nsw i64 %indvars.iv.i.i297, 1 ; 2 uses
  %exitcond.not.i.i299 = icmp eq i64 %indvars.iv.next.i.i298, 4
  br i1 %exitcond.not.i.i299, label %bb.je, label %bb.jc, !llvm.loop !374

bb.je:                                            ; preds = %bb.jd
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
  br i1 %i.cvw, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.cvx = fcmp ogt double %i.cvq, %i.cvs
  %i.cvy = select i1 %i.cvx, double %i.cvq, double %i.cvs ; 2 uses
  %i.cvz = fcmp ogt double %i.cvo, %i.cvy
  %i.cwa = select i1 %i.cvz, double %i.cvo, double %i.cvy
  %i.cwb = fcmp ogt double %i.cwa, 2.500000e-07
  br i1 %i.cwb, label %cvSLdet.exit.thread.i, label %.loopexit333.loopexit.i.i

.loopexit333.loopexit.i.i:                        ; preds = %bb.jf
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

bb.jg:                                            ; preds = %bb.je
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.cws = load double, ptr %i.cwr, align 8, !tbaa !53 ; 3 uses
  %i.cwt = tail call double @SUNRabs(double noundef %i.cws) #12
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.cwv = load double, ptr %i.cwu, align 8, !tbaa !53 ; 3 uses
  %i.cww = fmul double %i.cwv, 1.000000e-10       ; 2 uses
  %i.cwx = fcmp olt double %i.cwt, %i.cww
  br i1 %i.cwx, label %cvSLdet.exit.thread.i, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
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
  %i.cxn = load <1 x double>, ptr %i.cxm, align 8
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.cxp = load double, ptr %i.cxo, align 8, !tbaa !53
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.cxr = load double, ptr %i.cxq, align 8, !tbaa !53
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.cxt = load double, ptr %i.cxs, align 8, !tbaa !53
  %i.cxu = load <2 x double>, ptr %i.cxl, align 16, !tbaa !53
  %i.cxv = tail call double @SUNRabs(double noundef %i.cxg) #12
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cxx = load double, ptr %i.cxw, align 16, !tbaa !53
  %i.cxy = load <2 x double>, ptr %i.cwu, align 8, !tbaa !53
  %i.cxz = fmul double %i.cxx, 1.000000e-10       ; 2 uses
  %i.cya = fcmp olt double %i.cxv, %i.cxz
  br i1 %i.cya, label %cvSLdet.exit.thread.i, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.cyb = fneg double %i.cxp
  %i.cyc = fdiv double %i.cyb, %i.cws             ; 3 uses
  %i.cyd = tail call double @llvm.fmuladd.f64(double %i.cyc, double %i.cxk, double %i.cxt)
  %i.cye = tail call double @llvm.fmuladd.f64(double %i.cyc, double %i.cxf, double %i.cxr)
  %i.cyf = tail call double @llvm.fmuladd.f64(double %i.cxb, double %i.cxk, double %i.cxi)
  %i.cyg = fneg double %i.cye
  %i.cyh = fdiv double %i.cyg, %i.cxg             ; 2 uses
  %i.cyi = tail call double @llvm.fmuladd.f64(double %i.cyh, double %i.cyf, double %i.cyd) ; 2 uses
  %i.cyj = tail call double @SUNRabs(double noundef %i.cyi) #12
  %i.cyk = load <2 x double>, ptr %i.cxw, align 16, !tbaa !53 ; 4 uses
  %i.cyl = extractelement <2 x double> %i.cyk, i64 1 ; 2 uses
  %i.cym = fmul double %i.cyl, 1.000000e-10       ; 2 uses
  %i.cyn = fcmp olt double %i.cyj, %i.cym
  br i1 %i.cyn, label %cvSLdet.exit.thread.i, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.cyo = insertelement <2 x double> poison, double %i.cxb, i64 0
  %i.cyp = insertelement <2 x double> %i.cyo, double %i.cyc, i64 1
  %i.cyq = shufflevector <1 x double> %i.cxn, <1 x double> poison, <2 x i32> zeroinitializer
  %i.cyr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cyp, <2 x double> %i.cyq, <2 x double> %i.cxu) ; 2 uses
  %i.cys = extractelement <2 x double> %i.cyr, i64 0
  %i.cyt = extractelement <2 x double> %i.cyr, i64 1
  %i.cyu = tail call double @llvm.fmuladd.f64(double %i.cyh, double %i.cys, double %i.cyt)
  %i.cyv = fneg double %i.cyu
  %i.cyw = fdiv double %i.cyv, %i.cyi             ; 9 uses
  %i.cyx = fcmp olt double %i.cyw, 1.000000e-10
  %i.cyy = fcmp ogt double %i.cyw, 1.000000e+02
  %or.cond.i.i301 = or i1 %i.cyx, %i.cyy
  br i1 %or.cond.i.i301, label %cvSLdet.exit.thread.i, label %.preheader338.i.i

.preheader338.i.i:                                ; preds = %bb.jj
  %i.cyz = fmul double %i.cyw, %i.cyw             ; 2 uses
  %i.cza = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.czb = load double, ptr %i.cza, align 8, !tbaa !53 ; 3 uses
  %i.czc = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.czd = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.cze = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.czf = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.czg = load <2 x double>, ptr %i.czc, align 8, !tbaa !53 ; 7 uses
  %i.czh = load <2 x double>, ptr %i.czd, align 8, !tbaa !53 ; 7 uses
  %i.czi = load <2 x double>, ptr %i.cze, align 8, !tbaa !53 ; 6 uses
  %i.czj = extractelement <2 x double> %i.czh, i64 0
  %i.czk = extractelement <2 x double> %i.czi, i64 0
  %i.czl = tail call double @llvm.fmuladd.f64(double %i.cyw, double %i.czk, double %i.czj)
  %i.czm = extractelement <2 x double> %i.czg, i64 0
  %i.czn = tail call double @llvm.fmuladd.f64(double %i.cyz, double %i.czl, double %i.czm)
  %i.czo = tail call double @llvm.fmuladd.f64(double %i.cyw, double %i.czn, double %i.czb) ; 2 uses
  %i.czp = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.czq = load double, ptr %i.czp, align 8, !tbaa !53 ; 4 uses
  %i.czr = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.czs = load double, ptr %i.czr, align 8, !tbaa !53 ; 4 uses
  %i.czt = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.czu = load double, ptr %i.czt, align 8, !tbaa !53 ; 4 uses
  %i.czv = load <2 x double>, ptr %i.czf, align 16, !tbaa !53 ; 5 uses
  %i.czw = insertelement <2 x double> poison, double %i.cyw, i64 0
  %i.czx = shufflevector <2 x double> %i.czw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.czy = shufflevector <2 x double> %i.czi, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.czz = insertelement <2 x double> %i.czy, double %i.czu, i64 1
  %i.daa = shufflevector <2 x double> %i.czh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dab = insertelement <2 x double> %i.daa, double %i.czs, i64 1
  %i.dac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czx, <2 x double> %i.czz, <2 x double> %i.dab)
  %i.dad = insertelement <2 x double> poison, double %i.cyz, i64 0
  %i.dae = shufflevector <2 x double> %i.dad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.daf = shufflevector <2 x double> %i.czg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dag = insertelement <2 x double> %i.daf, double %i.czq, i64 1
  %i.dah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dae, <2 x double> %i.dac, <2 x double> %i.dag)
  %i.dai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czx, <2 x double> %i.dah, <2 x double> %i.czv) ; 3 uses
  %i.daj = tail call double @SUNRabs(double noundef %i.czo) #12
  %1 = fdiv double %i.daj, %i.cwv                 ; 2 uses
  %2 = fcmp ogt double %1, 0.000000e+00
  %.1292.i.i = select i1 %2, double %1, double 0.000000e+00 ; 2 uses
  %i.dak = extractelement <2 x double> %i.dai, i64 0
  %3 = tail call double @SUNRabs(double noundef %i.dak) #12
  %4 = extractelement <2 x double> %i.cyk, i64 0  ; 2 uses
  %5 = fdiv double %3, %4                         ; 2 uses
  %i.dal = fcmp ogt double %5, %.1292.i.i
  %.1292.1.i.i = select i1 %i.dal, double %5, double %.1292.i.i ; 2 uses
  %i.dam = extractelement <2 x double> %i.dai, i64 1
  %i.dan = tail call double @SUNRabs(double noundef %i.dam) #12
  %i.dao = fdiv double %i.dan, %i.cyl             ; 2 uses
  %i.dap = fcmp ogt double %i.dao, %.1292.1.i.i
  %.1292.2.i.i = select i1 %i.dap, double %i.dao, double %.1292.1.i.i
  %i.daq = fcmp olt double %.1292.2.i.i, 1.000000e-03
  br i1 %i.daq, label %.loopexit333.i.i, label %.preheader336.i.i

.preheader336.i.i:                                ; preds = %.preheader338.i.i
  %i.dar = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.das = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dat = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %gep364.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %gep364.1.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %gep364.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %gep364.1.1.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %gep364.2.1.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %gep364.2422.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %gep364.2.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.dau = extractelement <2 x double> %i.czh, i64 1 ; 2 uses
  %i.dav = extractelement <2 x double> %i.czi, i64 1 ; 2 uses
  %i.daw = extractelement <2 x double> %i.czg, i64 1 ; 2 uses
  %i.dax = insertelement <2 x double> %i.czv, double %i.czs, i64 1
  %i.day = insertelement <2 x double> poison, double %i.cxz, i64 0
  %i.daz = insertelement <2 x double> %i.day, double %i.cym, i64 1
  %i.dba = shufflevector <2 x double> %i.czv, <2 x double> %i.czh, <2 x i32> <i32 1, i32 2>
  %i.dbb = shufflevector <2 x double> %i.czg, <2 x double> %i.czh, <2 x i32> <i32 0, i32 3>
  %i.dbc = insertelement <2 x double> %i.czg, double %i.czb, i64 0
  %i.dbd = shufflevector <2 x double> %i.czi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbe = shufflevector <2 x double> %i.czh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbf = shufflevector <2 x double> %i.czg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbg = insertelement <2 x double> poison, double %i.czb, i64 0
  %i.dbh = shufflevector <2 x double> %i.dbg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbi = shufflevector <2 x double> %i.czv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbj = insertelement <2 x double> poison, double %i.cwv, i64 0
  %i.dbk = shufflevector <2 x double> %i.dbj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbl = insertelement <2 x double> poison, double %i.czq, i64 0
  %i.dbm = shufflevector <2 x double> %i.dbl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbn = shufflevector <2 x double> %i.czv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dbo = shufflevector <2 x double> %i.cyk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dbp = insertelement <2 x double> poison, double %i.czu, i64 0
  %i.dbq = shufflevector <2 x double> %i.dbp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbr = insertelement <2 x double> poison, double %i.czs, i64 0
  %i.dbs = shufflevector <2 x double> %i.dbr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dbt = insertelement <2 x double> poison, double %i.czu, i64 1
  br label %.preheader335.i.i

.preheader335.i.i:                                ; preds = %.preheader.i.i303, %.preheader336.i.i
  %.sroa.2448.0.i.i = phi double [ %i.czo, %.preheader336.i.i ], [ %i.dgs, %.preheader.i.i303 ]
  %.0298376.i.i = phi double [ %i.cyw, %.preheader336.i.i ], [ %i.dgq, %.preheader.i.i303 ] ; 5 uses
  %.0304375.i.i = phi i32 [ 0, %.preheader336.i.i ], [ %.2306.2.i.i, %.preheader.i.i303 ]
  %.0307374.i.i = phi i32 [ 1, %.preheader336.i.i ], [ %i.dgv, %.preheader.i.i303 ]
  %i.dbu = phi <2 x double> [ %i.dai, %.preheader336.i.i ], [ %i.dgx, %.preheader.i.i303 ]
  %i.dbv = fmul double %.0298376.i.i, %.0298376.i.i ; 2 uses
  %i.dbw = fmul double %.0298376.i.i, 4.000000e+00 ; 2 uses
  %i.dbx = fneg double %.sroa.2448.0.i.i
  %i.dby = insertelement <2 x double> poison, double %i.dbw, i64 0
  %i.dbz = shufflevector <2 x double> %i.dby, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dca = fmul <2 x double> %i.czi, %i.dbz
  %i.dcb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czh, <2 x double> splat (double 3.000000e+00), <2 x double> %i.dca)
  %i.dcc = insertelement <2 x double> poison, double %i.dbv, i64 0
  %i.dcd = shufflevector <2 x double> %i.dcc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dcd, <2 x double> %i.dcb, <2 x double> %i.czg) ; 3 uses
  %i.dcf = extractelement <2 x double> %i.dce, i64 0 ; 2 uses
  %i.dcg = tail call double @SUNRabs(double noundef %i.dcf) #12
  %i.dch = fcmp ogt double %i.dcg, %i.cww
  %i.dci = fdiv double %i.dbx, %i.dcf
  %.sroa.2443.0.i.i = select i1 %i.dch, double %i.dci, double 0.000000e+00
  %i.dcj = fadd double %.0298376.i.i, %.sroa.2443.0.i.i ; 5 uses
  store double %i.dcj, ptr %i.dar, align 8, !tbaa !53
  %i.dck = fneg <2 x double> %i.dbu
  %i.dcl = fmul double %i.czu, %i.dbw
  %i.dcm = tail call double @llvm.fmuladd.f64(double %i.dcj, double %i.dav, double %i.dau)
  %i.dcn = insertelement <2 x double> poison, double %i.dcj, i64 0
  %i.dco = shufflevector <2 x double> %i.dcn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dcp = extractelement <2 x double> %i.dce, i64 1
  %i.dcq = tail call double @SUNRabs(double noundef %i.dcp) #12
  %i.dcr = tail call double @llvm.fmuladd.f64(double %i.czs, double 3.000000e+00, double %i.dcl)
  %i.dcs = tail call double @llvm.fmuladd.f64(double %i.dbv, double %i.dcr, double %i.czq) ; 2 uses
  %i.dct = tail call double @SUNRabs(double noundef %i.dcs) #12
  %i.dcu = insertelement <2 x double> poison, double %i.dcq, i64 0
  %i.dcv = insertelement <2 x double> %i.dcu, double %i.dct, i64 1
  %i.dcw = fcmp ogt <2 x double> %i.dcv, %i.daz
  %i.dcx = shufflevector <2 x double> %i.dce, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dcy = insertelement <2 x double> %i.dcx, double %i.dcs, i64 1
  %i.dcz = fdiv <2 x double> %i.dck, %i.dcy
  %i.dda = select <2 x i1> %i.dcw, <2 x double> %i.dcz, <2 x double> zeroinitializer
  %i.ddb = insertelement <2 x double> poison, double %.0298376.i.i, i64 0
  %i.ddc = shufflevector <2 x double> %i.ddb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ddd = fadd <2 x double> %i.ddc, %i.dda       ; 8 uses
  %i.dde = extractelement <2 x double> %i.ddd, i64 0 ; 2 uses
  store double %i.dde, ptr %i.das, align 16, !tbaa !53
  %i.ddf = extractelement <2 x double> %i.ddd, i64 1 ; 3 uses
  store double %i.ddf, ptr %i.dat, align 8, !tbaa !53
  %i.ddg = shufflevector <2 x double> %i.ddd, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ddh = insertelement <2 x double> %i.ddg, double %i.dcj, i64 0 ; 4 uses
  %i.ddi = fmul <2 x double> %i.ddh, %i.ddh       ; 4 uses
  %i.ddj = extractelement <2 x double> %i.ddi, i64 0
  %i.ddk = tail call double @llvm.fmuladd.f64(double %i.ddj, double %i.dcm, double %i.daw)
  %i.ddl = insertelement <2 x double> %i.dbt, double %i.ddk, i64 0
  %i.ddm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dco, <2 x double> %i.ddl, <2 x double> %i.dax) ; 2 uses
  %i.ddn = extractelement <2 x double> %i.ddm, i64 0 ; 2 uses
  %i.ddo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ddh, <2 x double> %i.dbd, <2 x double> %i.dbe)
  %i.ddp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ddi, <2 x double> %i.ddo, <2 x double> %i.dbf)
  %i.ddq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ddh, <2 x double> %i.ddp, <2 x double> %i.dbh) ; 3 uses
  %i.ddr = extractelement <2 x double> %i.ddq, i64 0
  %i.dds = tail call double @SUNRabs(double noundef %i.ddr) #12
  store double %i.ddn, ptr %gep364.1.i.i, align 8, !tbaa !53
  %i.ddt = tail call double @SUNRabs(double noundef %i.ddn) #12
  %i.ddu = fdiv double %i.ddt, %4                 ; 2 uses
  %i.ddv = extractelement <2 x double> %i.ddq, i64 1
  %i.ddw = tail call double @llvm.fmuladd.f64(double %i.dde, double %i.dav, double %i.dau)
  %i.ddx = extractelement <2 x double> %i.ddi, i64 1 ; 2 uses
  %i.ddy = tail call double @llvm.fmuladd.f64(double %i.ddx, double %i.ddw, double %i.daw)
  %i.ddz = fmul double %i.ddf, %i.ddf             ; 3 uses
  %i.dea = insertelement <2 x double> %i.ddd, double %i.ddz, i64 0
  %i.deb = insertelement <2 x double> %i.ddg, double %i.ddz, i64 1
  %i.dec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ddd, <2 x double> %i.dbq, <2 x double> %i.dbs) ; 2 uses
  %i.ded = extractelement <2 x double> %i.dec, i64 0
  %i.dee = tail call double @llvm.fmuladd.f64(double %i.ddx, double %i.ded, double %i.czq)
  %i.def = insertelement <2 x double> %i.czy, double %i.dee, i64 0
  %i.deg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ddd, <2 x double> %i.def, <2 x double> %i.dba) ; 2 uses
  %i.deh = extractelement <2 x double> %i.deg, i64 0 ; 2 uses
  %i.dei = shufflevector <2 x double> %i.deg, <2 x double> %i.czi, <2 x i32> <i32 1, i32 3>
  %i.dej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dea, <2 x double> %i.dei, <2 x double> %i.dbb)
  %i.dek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.deb, <2 x double> %i.dej, <2 x double> %i.dbc) ; 2 uses
  %i.del = extractelement <2 x double> %i.dek, i64 0 ; 2 uses
  %i.dem = insertelement <2 x double> %i.dek, double %i.ddy, i64 0
  %i.den = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ddd, <2 x double> %i.dem, <2 x double> %i.dbi) ; 3 uses
  %i.deo = extractelement <2 x double> %i.den, i64 0
  %i.dep = extractelement <2 x double> %i.den, i64 1
  %i.deq = insertelement <2 x double> %i.ddi, double %i.ddz, i64 1
  %i.der = shufflevector <2 x double> %i.ddm, <2 x double> %i.dec, <2 x i32> <i32 1, i32 3>
  %i.des = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.deq, <2 x double> %i.der, <2 x double> %i.dbm)
  %i.det = insertelement <2 x double> %i.ddd, double %i.dcj, i64 0
  %i.deu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.det, <2 x double> %i.des, <2 x double> %i.dbn) ; 2 uses
  %i.dev = extractelement <2 x double> %i.deu, i64 0 ; 2 uses
  store double %i.dev, ptr %gep364.2.i.i, align 8, !tbaa !53
  %i.dew = tail call double @SUNRabs(double noundef %i.dev) #12
  store <2 x double> %i.ddq, ptr %gep364.i.i, align 8, !tbaa !53
  %i.dex = tail call double @SUNRabs(double noundef %i.ddv) #12
  %i.dey = insertelement <2 x double> poison, double %i.dex, i64 0
  %i.dez = insertelement <2 x double> %i.dey, double %i.dds, i64 1
  %i.dfa = fdiv <2 x double> %i.dez, %i.dbk       ; 3 uses
  %i.dfb = fcmp ogt <2 x double> %i.dfa, zeroinitializer ; 2 uses
  %i.dfc = extractelement <2 x i1> %i.dfb, i64 1
  %i.dfd = extractelement <2 x double> %i.dfa, i64 1
  %.1290.i.i = select i1 %i.dfc, double %i.dfd, double 0.000000e+00 ; 2 uses
  %i.dfe = fcmp ogt double %i.ddu, %.1290.i.i
  %.1290.1.i.i = select i1 %i.dfe, double %i.ddu, double %.1290.i.i ; 2 uses
  %i.dff = extractelement <2 x i1> %i.dfb, i64 0
  %i.dfg = extractelement <2 x double> %i.dfa, i64 0
  %.1290.1421.i.i = select i1 %i.dff, double %i.dfg, double 0.000000e+00
  %i.dfh = tail call double @SUNRabs(double noundef %i.deo) #12
  store double %i.deh, ptr %gep364.2.1.i.i, align 16, !tbaa !53
  %i.dfi = tail call double @SUNRabs(double noundef %i.deh) #12
  store double %i.del, ptr %gep364.2422.i.i, align 8, !tbaa !53
  %i.dfj = tail call double @SUNRabs(double noundef %i.del) #12
  store <2 x double> %i.den, ptr %gep364.1.1.i.i, align 16, !tbaa !53
  %i.dfk = tail call double @SUNRabs(double noundef %i.dep) #12
  %i.dfl = extractelement <2 x double> %i.deu, i64 1 ; 2 uses
  store double %i.dfl, ptr %gep364.2.2.i.i, align 8, !tbaa !53
  %i.dfm = tail call double @SUNRabs(double noundef %i.dfl) #12
  %i.dfn = insertelement <2 x double> poison, double %i.dfm, i64 0
  %i.dfo = insertelement <2 x double> %i.dfn, double %i.dew, i64 1
  %i.dfp = fdiv <2 x double> %i.dfo, %i.dbo       ; 3 uses
  %i.dfq = extractelement <2 x double> %i.dfp, i64 1 ; 2 uses
  %i.dfr = fcmp ogt double %i.dfq, %.1290.1.i.i
  %.1290.2.i.i = select i1 %i.dfr, double %i.dfq, double %.1290.1.i.i ; 3 uses
  %i.dfs = insertelement <2 x double> poison, double %i.dfj, i64 0
  %i.dft = insertelement <2 x double> %i.dfs, double %i.dfh, i64 1
  %i.dfu = fdiv <2 x double> %i.dft, %i.cxy       ; 2 uses
  %i.dfv = insertelement <2 x double> <double 0.000000e+00, double poison>, double %.1290.1421.i.i, i64 1 ; 2 uses
  %i.dfw = fcmp ogt <2 x double> %i.dfu, %i.dfv
  %i.dfx = select <2 x i1> %i.dfw, <2 x double> %i.dfu, <2 x double> %i.dfv ; 2 uses
  %i.dfy = insertelement <2 x double> poison, double %i.dfk, i64 0
  %i.dfz = insertelement <2 x double> %i.dfy, double %i.dfi, i64 1
  %i.dga = fdiv <2 x double> %i.dfz, %i.cyk       ; 2 uses
  %i.dgb = fcmp ogt <2 x double> %i.dga, %i.dfx
  %i.dgc = select <2 x i1> %i.dgb, <2 x double> %i.dga, <2 x double> %i.dfx ; 3 uses
  %i.dgd = fadd double %.1290.2.i.i, 1.000000e+00 ; 2 uses
  %i.dge = fcmp olt double %.1290.2.i.i, %i.dgd   ; 2 uses
  %.2306.i.i = select i1 %i.dge, i32 1, i32 %.0304375.i.i
  %.2.i.i302 = select i1 %i.dge, double %.1290.2.i.i, double %i.dgd ; 2 uses
  %i.dgf = insertelement <2 x double> %i.dfp, double %.2.i.i302, i64 1
  %i.dgg = fcmp ogt <2 x double> %i.dgf, %i.dgc   ; 2 uses
  %i.dgh = extractelement <2 x i1> %i.dgg, i64 1
  %.2306.1.i.i = select i1 %i.dgh, i32 2, i32 %.2306.i.i
  %i.dgi = shufflevector <2 x double> %i.dfp, <2 x double> %i.dgc, <2 x i32> <i32 0, i32 3>
  %i.dgj = insertelement <2 x double> %i.dgc, double %.2.i.i302, i64 1
  %i.dgk = select <2 x i1> %i.dgg, <2 x double> %i.dgi, <2 x double> %i.dgj ; 2 uses
  %i.dgl = extractelement <2 x double> %i.dgk, i64 0 ; 2 uses
  %i.dgm = extractelement <2 x double> %i.dgk, i64 1 ; 2 uses
  %i.dgn = fcmp olt double %i.dgl, %i.dgm         ; 2 uses
  %.2306.2.i.i = select i1 %i.dgn, i32 3, i32 %.2306.1.i.i ; 2 uses
  %.2.2.i.i = select i1 %i.dgn, double %i.dgl, double %i.dgm ; 2 uses
  %i.dgo = zext nneg i32 %.2306.2.i.i to i64      ; 2 uses
  %i.dgp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dgo
  %i.dgq = load double, ptr %i.dgp, align 8, !tbaa !53 ; 2 uses
  %i.dgr = fcmp olt double %.2.2.i.i, 1.000000e-03
  br i1 %i.dgr, label %bb.jk, label %.preheader.i.i303

.preheader.i.i303:                                ; preds = %.preheader335.i.i
  %invariant.gep371.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.dgo ; 3 uses
  %gep372.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 32
  %i.dgs = load double, ptr %gep372.i.i, align 8, !tbaa !53
  %gep372.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 64
  %i.dgt = load double, ptr %gep372.1.i.i, align 8, !tbaa !53
  %gep372.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep371.i.i, i64 96
  %i.dgu = load double, ptr %gep372.2.i.i, align 8, !tbaa !53
  %i.dgv = add nuw nsw i32 %.0307374.i.i, 1       ; 2 uses
  %exitcond432.not.i.i = icmp eq i32 %i.dgv, 4
  %i.dgw = insertelement <2 x double> poison, double %i.dgt, i64 0
  %i.dgx = insertelement <2 x double> %i.dgw, double %i.dgu, i64 1
  br i1 %exitcond432.not.i.i, label %bb.jk, label %.preheader335.i.i, !llvm.loop !375

bb.jk:                                            ; preds = %.preheader.i.i303, %.preheader335.i.i
  %.0301.i.i = phi i32 [ 0, %.preheader.i.i303 ], [ 3, %.preheader335.i.i ]
  %i.dgy = fcmp ogt double %.2.2.i.i, 1.000000e-03
  br i1 %i.dgy, label %cvSLdet.exit.thread.i, label %.loopexit333.i.i

.loopexit333.i.i:                                 ; preds = %bb.jk, %.preheader338.i.i, %.loopexit333.loopexit.i.i
  %.1302.i.i = phi i32 [ 2, %.preheader338.i.i ], [ %.0301.i.i, %bb.jk ], [ 1, %.loopexit333.loopexit.i.i ] ; 2 uses
  %.2300.i.i = phi double [ %i.cyw, %.preheader338.i.i ], [ %i.dgq, %bb.jk ], [ %i.cwk, %.loopexit333.loopexit.i.i ] ; 22 uses
  %i.dgz = fmul double %.2300.i.i, %.2300.i.i     ; 3 uses
  %i.dha = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.dhb = load double, ptr %i.dha, align 8, !tbaa !53
  %i.dhc = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.dhd = load double, ptr %i.dhc, align 8, !tbaa !53
  %i.dhe = fmul double %.2300.i.i, %i.dhd         ; 2 uses
  %i.dhf = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.dhg = load double, ptr %i.dhf, align 8, !tbaa !53
  %i.dhh = fmul double %.2300.i.i, %i.dhg
  %i.dhi = fmul double %.2300.i.i, %i.dhh         ; 2 uses
  %i.dhj = getelementptr inbounds nuw i8, ptr %0, i64 1992
  %i.dhk = load double, ptr %i.dhj, align 8, !tbaa !53
  %i.dhl = fmul double %.2300.i.i, %i.dhk
  %i.dhm = fmul double %.2300.i.i, %i.dhl
  %i.dhn = fmul double %.2300.i.i, %i.dhm
  %i.dho = fsub double %i.dhe, %i.dhi             ; 4 uses
  %i.dhp = fsub double %i.dhi, %i.dhn
  %i.dhq = fsub double %i.dho, %i.dhp             ; 2 uses
  %i.dhr = tail call double @SUNRabs(double noundef %i.dho) #12
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dht = load double, ptr %i.dhs, align 8, !tbaa !53
  %i.dhu = fmul double %i.dht, 1.000000e-10
  %i.dhv = fcmp olt double %i.dhr, %i.dhu
  br i1 %i.dhv, label %cvSLdet.exit.thread.i, label %bb.jl

bb.jl:                                            ; preds = %.loopexit333.i.i
  %i.dhw = fsub double %i.dhb, %i.dhe
  %i.dhx = fsub double %i.dhw, %i.dho
  %i.dhy = fsub double %i.dhx, %i.dhq
  %i.dhz = fneg double %i.dhy
  %i.dia = fdiv double %i.dhz, %i.dho             ; 3 uses
  %i.dib = fcmp olt double %i.dia, 1.000000e-10
  %i.dic = fcmp ogt double %i.dia, 4.000000e+00
  %or.cond3.i.i = or i1 %i.dib, %i.dic
  br i1 %or.cond3.i.i, label %cvSLdet.exit.thread.i, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.did = fdiv double %i.dhq, %i.dia
  %i.die = fdiv double %i.did, %i.dgz
  %i.dif = load double, ptr %i.dhf, align 8, !tbaa !53
  %i.dig = fadd double %i.die, %i.dif
  %i.dih = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.dii = load double, ptr %i.dih, align 8, !tbaa !53
  %i.dij = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.dik = load double, ptr %i.dij, align 8, !tbaa !53
  %i.dil = fmul double %.2300.i.i, %i.dik         ; 2 uses
  %i.dim = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 2 uses
  %i.din = load double, ptr %i.dim, align 8, !tbaa !53
  %i.dio = fmul double %.2300.i.i, %i.din
  %i.dip = fmul double %.2300.i.i, %i.dio         ; 2 uses
  %i.diq = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.dir = load double, ptr %i.diq, align 8, !tbaa !53
  %i.dis = fmul double %.2300.i.i, %i.dir
  %i.dit = fmul double %.2300.i.i, %i.dis
  %i.diu = fmul double %.2300.i.i, %i.dit
  %i.div = fsub double %i.dil, %i.dip             ; 4 uses
  %i.diw = fsub double %i.dip, %i.diu
  %i.dix = fsub double %i.div, %i.diw             ; 2 uses
  %i.diy = tail call double @SUNRabs(double noundef %i.div) #12
  %i.diz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dja = load double, ptr %i.diz, align 16, !tbaa !53
  %i.djb = fmul double %i.dja, 1.000000e-10
  %i.djc = fcmp olt double %i.diy, %i.djb
  br i1 %i.djc, label %cvSLdet.exit.thread.i, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.djd = fsub double %i.dii, %i.dil
  %i.dje = fsub double %i.djd, %i.div
  %i.djf = fsub double %i.dje, %i.dix
  %i.djg = fneg double %i.djf
  %i.djh = fdiv double %i.djg, %i.div             ; 3 uses
  %i.dji = fcmp olt double %i.djh, 1.000000e-10
  %i.djj = fcmp ogt double %i.djh, 4.000000e+00
  %or.cond3.1.i.i = or i1 %i.dji, %i.djj
  br i1 %or.cond3.1.i.i, label %cvSLdet.exit.thread.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.djk = fdiv double %i.dix, %i.djh
  %i.djl = fdiv double %i.djk, %i.dgz
  %i.djm = load double, ptr %i.dim, align 8, !tbaa !53
  %i.djn = fadd double %i.djl, %i.djm             ; 3 uses
  %i.djo = getelementptr inbounds nuw i8, ptr %0, i64 1912
  %i.djp = load double, ptr %i.djo, align 8, !tbaa !53
  %i.djq = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.djr = load double, ptr %i.djq, align 8, !tbaa !53
  %i.djs = fmul double %.2300.i.i, %i.djr         ; 2 uses
end_hunk_0
