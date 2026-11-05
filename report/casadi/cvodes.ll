Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cvodes?download=true
inline.NumInlined: 100
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@cvStep:bb.a

cvPrepareNextStep.exit:                           ; preds = %bb.hd, %bb.hg, %bb.hj, %bb.hk, %bb.is, %bb.iv, %bb.iw
  %i.cpo = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.cpp = load i32, ptr %i.cpo, align 8, !tbaa !400
  %.not189 = icmp eq i32 %i.cpp, 0
  br i1 %.not189, label %cvBDFStab.exit, label %bb.ix

bb.ix:                                            ; preds = %cvPrepareNextStep.exit
  %i.cpq = load i32, ptr %i.bg, align 8, !tbaa !66 ; 8 uses
  %i.cpr = icmp sgt i32 %i.cpq, 2
  br i1 %i.cpr, label %.lr.ph.preheader.i, label %bb.iy

.lr.ph.preheader.i:                               ; preds = %bb.ix
  %i.cps = getelementptr i8, ptr %0, i64 1992     ; 2 uses
  %i.cpt = getelementptr i8, ptr %0, i64 2024
  %i.cpu = getelementptr i8, ptr %0, i64 1960     ; 2 uses
  %i.cpv = getelementptr i8, ptr %0, i64 1928     ; 2 uses
  %i.cpw = getelementptr i8, ptr %0, i64 1896     ; 2 uses
  %i.cpx = load <2 x double>, ptr %i.cps, align 8, !tbaa !53
  store <2 x double> %i.cpx, ptr %i.cpt, align 8, !tbaa !53
  %i.cpy = load <2 x double>, ptr %i.cpu, align 8, !tbaa !53
  store <2 x double> %i.cpy, ptr %i.cps, align 8, !tbaa !53
  %i.cpz = load <2 x double>, ptr %i.cpv, align 8, !tbaa !53
  store <2 x double> %i.cpz, ptr %i.cpu, align 8, !tbaa !53
  %i.cqa = getelementptr i8, ptr %0, i64 1904
  %i.cqb = load <2 x double>, ptr %i.cpw, align 8, !tbaa !53
  store <2 x double> %i.cqb, ptr %i.cpv, align 8, !tbaa !53
  %i.cqc = getelementptr i8, ptr %0, i64 2008     ; 2 uses
  %i.cqd = load double, ptr %i.cqc, align 8, !tbaa !53
  %i.cqe = getelementptr i8, ptr %0, i64 2040
  store double %i.cqd, ptr %i.cqe, align 8, !tbaa !53
  %i.cqf = getelementptr i8, ptr %0, i64 1976     ; 2 uses
  %i.cqg = load double, ptr %i.cqf, align 8, !tbaa !53
  store double %i.cqg, ptr %i.cqc, align 8, !tbaa !53
  %i.cqh = getelementptr i8, ptr %0, i64 1944     ; 2 uses
  %i.cqi = load double, ptr %i.cqh, align 8, !tbaa !53
  store double %i.cqi, ptr %i.cqf, align 8, !tbaa !53
  %i.cqj = getelementptr i8, ptr %0, i64 1912
  %i.cqk = load double, ptr %i.cqj, align 8, !tbaa !53
  store double %i.cqk, ptr %i.cqh, align 8, !tbaa !53
  %i.cql = add nsw i32 %i.cpq, -1                 ; 2 uses
  %min.iters.check924 = icmp ult i32 %i.cpq, 9
  br i1 %min.iters.check924, label %.lr.ph.i305.preheader, label %vector.ph925

vector.ph925:                                     ; preds = %.lr.ph.preheader.i
  %n.vec926 = and i32 %i.cql, -8                  ; 3 uses
  %i.cqm = or disjoint i32 %n.vec926, 1
  br label %vector.body927

vector.body927:                                   ; preds = %vector.body927, %vector.ph925
  %index928 = phi i32 [ 0, %vector.ph925 ], [ %index.next931, %vector.body927 ]
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph925 ], [ %i.cqn, %vector.body927 ]
  %vec.phi929 = phi <4 x i32> [ splat (i32 1), %vector.ph925 ], [ %i.cqo, %vector.body927 ]
  %vec.ind930 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph925 ], [ %vec.ind.next932, %vector.body927 ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind930, splat (i32 4)
  %i.cqn = mul <4 x i32> %vec.ind930, %vec.phi    ; 2 uses
  %i.cqo = mul <4 x i32> %step.add, %vec.phi929   ; 2 uses
  %index.next931 = add nuw i32 %index928, 8       ; 2 uses
  %vec.ind.next932 = add nuw nsw <4 x i32> %vec.ind930, splat (i32 8)
  %i.cqp = icmp eq i32 %index.next931, %n.vec926
  br i1 %i.cqp, label %middle.block933, label %vector.body927, !llvm.loop !372

middle.block933:                                  ; preds = %vector.body927
  %bin.rdx = mul <4 x i32> %i.cqo, %i.cqn
  %i.cqq = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n934 = icmp eq i32 %i.cql, %n.vec926
  br i1 %cmp.n934, label %._crit_edge.i306, label %.lr.ph.i305.preheader

.lr.ph.i305.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block933
  %.086.i.ph = phi i32 [ 1, %.lr.ph.preheader.i ], [ %i.cqq, %middle.block933 ]
  %.185.i.ph = phi i32 [ 1, %.lr.ph.preheader.i ], [ %i.cqm, %middle.block933 ]
  br label %.lr.ph.i305

.lr.ph.i305:                                      ; preds = %.lr.ph.i305.preheader, %.lr.ph.i305
  %.086.i = phi i32 [ %i.cqr, %.lr.ph.i305 ], [ %.086.i.ph, %.lr.ph.i305.preheader ]
  %.185.i = phi i32 [ %i.cqs, %.lr.ph.i305 ], [ %.185.i.ph, %.lr.ph.i305.preheader ] ; 2 uses
  %i.cqr = mul nuw nsw i32 %.185.i, %.086.i       ; 2 uses
  %i.cqs = add nuw nsw i32 %.185.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cqs, %i.cpq
  br i1 %exitcond.not.i, label %._crit_edge.i306, label %.lr.ph.i305, !llvm.loop !373

._crit_edge.i306:                                 ; preds = %.lr.ph.i305, %middle.block933
  %.lcssa761 = phi i32 [ %i.cqq, %middle.block933 ], [ %i.cqr, %.lr.ph.i305 ] ; 2 uses
  %i.cqt = mul nuw nsw i32 %.lcssa761, %i.cpq     ; 2 uses
  %i.cqu = add nuw nsw i32 %i.cpq, 1
  %i.cqv = mul nuw nsw i32 %i.cqt, %i.cqu
  %i.cqw = uitofp nneg i32 %i.cqv to double
  %i.cqx = load double, ptr %i.do, align 8, !tbaa !383
  %i.cqy = fmul double %i.cqx, %i.cqw
  %i.cqz = load double, ptr %i.bt, align 8, !tbaa !53 ; 2 uses
  %i.cra = fcmp ogt double %i.cqz, 1.000000e-10
  %i.crb = select i1 %i.cra, double %i.cqz, double 1.000000e-10
  %i.crc = uitofp nneg i32 %i.cqt to double
  %i.crd = zext nneg i32 %i.cpq to i64
  %i.cre = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.crd
  %i.crf = load ptr, ptr %i.cre, align 8, !tbaa !50
  %i.crg = load ptr, ptr %i.di, align 8, !tbaa !56
  %i.crh = tail call double @N_VWrmsNorm(ptr noundef %i.crf, ptr noundef %i.crg) #12
  %i.cri = uitofp nneg i32 %.lcssa761 to double
  %i.crj = load i32, ptr %i.bg, align 8, !tbaa !66
  %i.crk = sext i32 %i.crj to i64
  %i.crl = getelementptr [8 x i8], ptr %i.bi, i64 %i.crk
  %i.crm = getelementptr i8, ptr %i.crl, i64 -8
  %i.crn = load ptr, ptr %i.crm, align 8, !tbaa !50
  %i.cro = load ptr, ptr %i.di, align 8, !tbaa !56
  %i.crp = tail call double @N_VWrmsNorm(ptr noundef %i.crn, ptr noundef %i.cro) #12
  %i.crq = fmul double %i.crp, %i.cri             ; 2 uses
  %i.crr = fmul double %i.crq, %i.crq
  store double %i.crr, ptr %i.cpw, align 8, !tbaa !53
  %i.crs = fdiv double %i.cqy, %i.crb
  %i.crt = fmul double %i.crh, %i.crc
  %i.cru = insertelement <2 x double> poison, double %i.crt, i64 0
  %i.crv = insertelement <2 x double> %i.cru, double %i.crs, i64 1 ; 2 uses
  %i.crw = fmul <2 x double> %i.crv, %i.crv
  store <2 x double> %i.crw, ptr %i.cqa, align 8, !tbaa !53
  %.pr.i = load i32, ptr %i.bg, align 8, !tbaa !66
  br label %bb.iy

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
  %1 = tail call double @llvm.fmuladd.f64(double %i.ctn, double %i.ctn, double 0.000000e+00)
  %i.ctp = fdiv double %i.css, %i.csw             ; 3 uses
  %i.ctq = fadd double %i.cto, %i.ctp
  %i.ctr = tail call double @llvm.fmuladd.f64(double %i.ctp, double %i.ctp, double %1)
  %i.cts = fdiv double %i.csw, %i.cta             ; 3 uses
  %i.ctt = fadd double %i.ctq, %i.cts
  %i.ctu = tail call double @llvm.fmuladd.f64(double %i.cts, double %i.cts, double %i.ctr)
  %i.ctv = fdiv double %i.cta, %i.cte             ; 3 uses
  %i.ctw = fadd double %i.ctt, %i.ctv
  %i.ctx = tail call double @llvm.fmuladd.f64(double %i.ctv, double %i.ctv, double %i.ctu)
  %i.cty = fmul double %i.ctw, 2.500000e-01       ; 3 uses
  %i.ctz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i297
  store double %i.cty, ptr %i.ctz, align 8, !tbaa !53
  %i.cua = fneg double %i.cty
  %i.cub = fmul double %i.cty, %i.cua
  %i.cuc = tail call double @llvm.fmuladd.f64(double %i.ctx, double 2.500000e-01, double %i.cub)
  %i.cud = tail call double @SUNRabs(double noundef %i.cuc) #12
  %i.cue = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i297
  store double %i.cud, ptr %i.cue, align 8, !tbaa !53
  %i.cuf = load double, ptr %i.cso, align 8, !tbaa !53 ; 2 uses
  %i.cug = getelementptr inbounds nuw [8 x i8], ptr %i.csf, i64 %indvars.iv.i.i297
  %i.cuh = load double, ptr %i.cug, align 8, !tbaa !53 ; 4 uses
  %i.cui = getelementptr inbounds nuw [8 x i8], ptr %i.csg, i64 %indvars.iv.i.i297
  %i.cuj = load double, ptr %i.cui, align 8, !tbaa !53 ; 3 uses
  %2 = fneg double %i.cuj
  %3 = fmul double %i.cuj, %2
  %4 = tail call double @llvm.fmuladd.f64(double %i.cuf, double %i.cuh, double %3) ; 2 uses
  %i.cuk = getelementptr inbounds nuw [8 x i8], ptr %i.csh, i64 %indvars.iv.i.i297
  store double %4, ptr %i.cuk, align 8, !tbaa !53
  %i.cul = getelementptr inbounds nuw [8 x i8], ptr %i.csi, i64 %indvars.iv.i.i297
  %i.cum = load double, ptr %i.cul, align 8, !tbaa !53 ; 3 uses
  %5 = fneg double %i.cum
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.csj, i64 %indvars.iv.i.i297
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.csk, i64 %indvars.iv.i.i297
  store double 0.000000e+00, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.csl, i64 %indvars.iv.i.i297
  %9 = load double, ptr %8, align 8, !tbaa !53    ; 2 uses
  %i.cun = insertelement <2 x double> poison, double %i.cuf, i64 0
  %i.cuo = insertelement <2 x double> %i.cun, double %i.cuh, i64 1
  %i.cup = insertelement <2 x double> poison, double %5, i64 0
  %i.cuq = shufflevector <2 x double> %i.cup, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = fmul <2 x double> %i.cuo, %i.cuq
  %11 = insertelement <2 x double> poison, double %i.cuj, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = insertelement <2 x double> poison, double %i.cuh, i64 0
  %14 = insertelement <2 x double> %13, double %9, i64 1
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %14, <2 x double> %10) ; 2 uses
  %16 = extractelement <2 x double> %15, i64 0    ; 2 uses
  store double %16, ptr %6, align 8, !tbaa !53
  %i.cur = getelementptr inbounds nuw [8 x i8], ptr %i.csm, i64 %indvars.iv.i.i297
  %17 = extractelement <2 x double> %15, i64 1    ; 2 uses
  store double %17, ptr %i.cur, align 8, !tbaa !53
  %18 = fneg double %9
  %19 = fmul double %i.cuh, %18
  %20 = tail call double @llvm.fmuladd.f64(double %i.cum, double %i.cum, double %19) ; 2 uses
  %i.cus = getelementptr inbounds nuw [8 x i8], ptr %i.csn, i64 %indvars.iv.i.i297
  store double %20, ptr %i.cus, align 8, !tbaa !53
  %invariant.gep352.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i297 ; 5 uses
  %gep353.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 32
  store double %20, ptr %gep353.i.i, align 8, !tbaa !53
  %gep353.1.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 64
  store double %17, ptr %gep353.1.i.i, align 8, !tbaa !53
  %gep353.2.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 96
  store double 0.000000e+00, ptr %gep353.2.i.i, align 8, !tbaa !53
  %gep353.3.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 128
  store double %16, ptr %gep353.3.i.i, align 8, !tbaa !53
  %gep353.4.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep352.i.i, i64 160
  store double %4, ptr %gep353.4.i.i, align 8, !tbaa !53
  %indvars.iv.next.i.i298 = add nuw nsw i64 %indvars.iv.i.i297, 1 ; 2 uses
  %exitcond.not.i.i299 = icmp eq i64 %indvars.iv.next.i.i298, 4
  br i1 %exitcond.not.i.i299, label %bb.je, label %bb.jc, !llvm.loop !374

bb.je:                                            ; preds = %bb.jd
  %i.cut = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cuu = load double, ptr %i.cut, align 8, !tbaa !53 ; 4 uses
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cuw = load double, ptr %i.cuv, align 16, !tbaa !53 ; 4 uses
  %i.cux = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cuy = load double, ptr %i.cux, align 8, !tbaa !53 ; 4 uses
  %i.cuz = fcmp olt double %i.cuw, %i.cuy
  %i.cva = select i1 %i.cuz, double %i.cuw, double %i.cuy ; 2 uses
  %i.cvb = fcmp olt double %i.cuu, %i.cva
  %..i.i300 = select i1 %i.cvb, double %i.cuu, double %i.cva
  %i.cvc = fcmp olt double %..i.i300, 1.000000e-08
  br i1 %i.cvc, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.cvd = fcmp ogt double %i.cuw, %i.cuy
  %i.cve = select i1 %i.cvd, double %i.cuw, double %i.cuy ; 2 uses
  %i.cvf = fcmp ogt double %i.cuu, %i.cve
  %i.cvg = select i1 %i.cvf, double %i.cuu, double %i.cve
  %i.cvh = fcmp ogt double %i.cvg, 2.500000e-07
  br i1 %i.cvh, label %cvSLdet.exit.thread.i, label %.loopexit333.loopexit.i.i

.loopexit333.loopexit.i.i:                        ; preds = %bb.jf
  %i.cvi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cvj = load double, ptr %i.cvi, align 8, !tbaa !53 ; 2 uses
  %i.cvk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cvl = load double, ptr %i.cvk, align 16, !tbaa !53 ; 2 uses
  %i.cvm = fadd double %i.cvj, %i.cvl
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cvo = load double, ptr %i.cvn, align 8, !tbaa !53 ; 2 uses
  %i.cvp = fadd double %i.cvm, %i.cvo
  %i.cvq = fdiv double %i.cvp, 3.000000e+00       ; 4 uses
  %i.cvr = fsub double %i.cvj, %i.cvq
  %i.cvs = tail call double @SUNRabs(double noundef %i.cvr) #12 ; 0 uses
  %i.cvt = fsub double %i.cvl, %i.cvq
  %i.cvu = tail call double @SUNRabs(double noundef %i.cvt) #12 ; 0 uses
  %i.cvv = fsub double %i.cvo, %i.cvq
  %i.cvw = tail call double @SUNRabs(double noundef %i.cvv) #12 ; 0 uses
  br label %.loopexit333.i.i

bb.jg:                                            ; preds = %bb.je
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.cvy = load double, ptr %i.cvx, align 8, !tbaa !53 ; 3 uses
  %i.cvz = tail call double @SUNRabs(double noundef %i.cvy) #12
  %i.cwa = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.cwb = load double, ptr %i.cwa, align 8, !tbaa !53 ; 3 uses
  %i.cwc = fmul double %i.cwb, 1.000000e-10       ; 2 uses
  %i.cwd = fcmp olt double %i.cvz, %i.cwc
  br i1 %i.cwd, label %cvSLdet.exit.thread.i, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.cwf = load double, ptr %i.cwe, align 16, !tbaa !53
  %i.cwg = fneg double %i.cwf
  %i.cwh = fdiv double %i.cwg, %i.cvy             ; 3 uses
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.cwj = load double, ptr %i.cwi, align 16, !tbaa !53
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.cwl = load double, ptr %i.cwk, align 8, !tbaa !53 ; 2 uses
  %i.cwm = tail call double @llvm.fmuladd.f64(double %i.cwh, double %i.cwl, double %i.cwj) ; 2 uses
  %i.cwn = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.cwo = load double, ptr %i.cwn, align 16, !tbaa !53
  %i.cwp = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.cwq = load double, ptr %i.cwp, align 8, !tbaa !53 ; 2 uses
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.cws = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.cwt = load <1 x double>, ptr %i.cws, align 8
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.cwv = load double, ptr %i.cwu, align 8, !tbaa !53
  %i.cww = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.cwx = load double, ptr %i.cww, align 8, !tbaa !53
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.cwz = load double, ptr %i.cwy, align 8, !tbaa !53
  %i.cxa = load <2 x double>, ptr %i.cwr, align 16, !tbaa !53
  %i.cxb = tail call double @SUNRabs(double noundef %i.cwm) #12
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cxd = load double, ptr %i.cxc, align 16, !tbaa !53
  %i.cxe = load <2 x double>, ptr %i.cwa, align 8, !tbaa !53
  %i.cxf = fmul double %i.cxd, 1.000000e-10       ; 2 uses
  %i.cxg = fcmp olt double %i.cxb, %i.cxf
  br i1 %i.cxg, label %cvSLdet.exit.thread.i, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.cxh = fneg double %i.cwv
  %i.cxi = fdiv double %i.cxh, %i.cvy             ; 3 uses
  %i.cxj = tail call double @llvm.fmuladd.f64(double %i.cxi, double %i.cwq, double %i.cwz)
  %i.cxk = tail call double @llvm.fmuladd.f64(double %i.cxi, double %i.cwl, double %i.cwx)
  %i.cxl = tail call double @llvm.fmuladd.f64(double %i.cwh, double %i.cwq, double %i.cwo)
  %i.cxm = fneg double %i.cxk
  %i.cxn = fdiv double %i.cxm, %i.cwm             ; 2 uses
  %i.cxo = tail call double @llvm.fmuladd.f64(double %i.cxn, double %i.cxl, double %i.cxj) ; 2 uses
  %i.cxp = tail call double @SUNRabs(double noundef %i.cxo) #12
  %i.cxq = load <2 x double>, ptr %i.cxc, align 16, !tbaa !53 ; 4 uses
  %i.cxr = extractelement <2 x double> %i.cxq, i64 1 ; 2 uses
  %i.cxs = fmul double %i.cxr, 1.000000e-10       ; 2 uses
  %i.cxt = fcmp olt double %i.cxp, %i.cxs
  br i1 %i.cxt, label %cvSLdet.exit.thread.i, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.cxu = insertelement <2 x double> poison, double %i.cwh, i64 0
  %i.cxv = insertelement <2 x double> %i.cxu, double %i.cxi, i64 1
  %i.cxw = shufflevector <1 x double> %i.cwt, <1 x double> poison, <2 x i32> zeroinitializer
  %i.cxx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cxv, <2 x double> %i.cxw, <2 x double> %i.cxa) ; 2 uses
  %i.cxy = extractelement <2 x double> %i.cxx, i64 0
  %i.cxz = extractelement <2 x double> %i.cxx, i64 1
  %i.cya = tail call double @llvm.fmuladd.f64(double %i.cxn, double %i.cxy, double %i.cxz)
  %i.cyb = fneg double %i.cya
  %i.cyc = fdiv double %i.cyb, %i.cxo             ; 9 uses
  %i.cyd = fcmp olt double %i.cyc, 1.000000e-10
  %i.cye = fcmp ogt double %i.cyc, 1.000000e+02
  %or.cond.i.i301 = or i1 %i.cyd, %i.cye
  br i1 %or.cond.i.i301, label %cvSLdet.exit.thread.i, label %.preheader338.i.i

.preheader338.i.i:                                ; preds = %bb.jj
  %i.cyf = fmul double %i.cyc, %i.cyc             ; 2 uses
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.cyh = load double, ptr %i.cyg, align 8, !tbaa !53 ; 3 uses
  %i.cyi = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.cyk = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.cym = load <2 x double>, ptr %i.cyi, align 8, !tbaa !53 ; 7 uses
  %i.cyn = load <2 x double>, ptr %i.cyj, align 8, !tbaa !53 ; 7 uses
  %i.cyo = load <2 x double>, ptr %i.cyk, align 8, !tbaa !53 ; 6 uses
  %i.cyp = extractelement <2 x double> %i.cyn, i64 0
  %i.cyq = extractelement <2 x double> %i.cyo, i64 0
  %i.cyr = tail call double @llvm.fmuladd.f64(double %i.cyc, double %i.cyq, double %i.cyp)
  %i.cys = extractelement <2 x double> %i.cym, i64 0
  %i.cyt = tail call double @llvm.fmuladd.f64(double %i.cyf, double %i.cyr, double %i.cys)
  %i.cyu = tail call double @llvm.fmuladd.f64(double %i.cyc, double %i.cyt, double %i.cyh) ; 2 uses
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.cyw = load double, ptr %i.cyv, align 8, !tbaa !53 ; 4 uses
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.cyy = load double, ptr %i.cyx, align 8, !tbaa !53 ; 4 uses
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.cza = load double, ptr %i.cyz, align 8, !tbaa !53 ; 4 uses
  %i.czb = load <2 x double>, ptr %i.cyl, align 16, !tbaa !53 ; 5 uses
  %i.czc = insertelement <2 x double> poison, double %i.cyc, i64 0
  %i.czd = shufflevector <2 x double> %i.czc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cze = shufflevector <2 x double> %i.cyo, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.czf = insertelement <2 x double> %i.cze, double %i.cza, i64 1
  %i.czg = shufflevector <2 x double> %i.cyn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.czh = insertelement <2 x double> %i.czg, double %i.cyy, i64 1
  %i.czi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czd, <2 x double> %i.czf, <2 x double> %i.czh)
  %i.czj = insertelement <2 x double> poison, double %i.cyf, i64 0
  %i.czk = shufflevector <2 x double> %i.czj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.czl = shufflevector <2 x double> %i.cym, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.czm = insertelement <2 x double> %i.czl, double %i.cyw, i64 1
  %i.czn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czk, <2 x double> %i.czi, <2 x double> %i.czm)
  %i.czo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.czd, <2 x double> %i.czn, <2 x double> %i.czb) ; 3 uses
  %i.czp = tail call double @SUNRabs(double noundef %i.cyu) #12
  %i.czq = fdiv double %i.czp, %i.cwb             ; 2 uses
  %i.czr = fcmp ogt double %i.czq, 0.000000e+00
  %.1292.i.i = select i1 %i.czr, double %i.czq, double 0.000000e+00 ; 2 uses
  %i.czs = extractelement <2 x double> %i.czo, i64 0
  %i.czt = tail call double @SUNRabs(double noundef %i.czs) #12
  %i.czu = extractelement <2 x double> %i.cxq, i64 0 ; 2 uses
  %i.czv = fdiv double %i.czt, %i.czu             ; 2 uses
  %i.czw = fcmp ogt double %i.czv, %.1292.i.i
  %.1292.1.i.i = select i1 %i.czw, double %i.czv, double %.1292.i.i ; 2 uses
  %i.czx = extractelement <2 x double> %i.czo, i64 1
  %i.czy = tail call double @SUNRabs(double noundef %i.czx) #12
  %i.czz = fdiv double %i.czy, %i.cxr             ; 2 uses
  %i.daa = fcmp ogt double %i.czz, %.1292.1.i.i
  %.1292.2.i.i = select i1 %i.daa, double %i.czz, double %.1292.1.i.i
  %i.dab = fcmp olt double %.1292.2.i.i, 1.000000e-03
  br i1 %i.dab, label %.loopexit333.i.i, label %.preheader336.i.i

.preheader336.i.i:                                ; preds = %.preheader338.i.i
  %i.dac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dae = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %gep364.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %gep364.1.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %gep364.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %gep364.1.1.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %gep364.2.1.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %gep364.2422.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %gep364.2.2.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.daf = extractelement <2 x double> %i.cyn, i64 1 ; 2 uses
  %i.dag = extractelement <2 x double> %i.cyo, i64 1 ; 2 uses
  %i.dah = extractelement <2 x double> %i.cym, i64 1 ; 2 uses
  %i.dai = insertelement <2 x double> %i.czb, double %i.cyy, i64 1
  %i.daj = insertelement <2 x double> poison, double %i.cxf, i64 0
  %i.dak = insertelement <2 x double> %i.daj, double %i.cxs, i64 1
  %i.dal = shufflevector <2 x double> %i.czb, <2 x double> %i.cyn, <2 x i32> <i32 1, i32 2>
  %i.dam = shufflevector <2 x double> %i.cym, <2 x double> %i.cyn, <2 x i32> <i32 0, i32 3>
  %i.dan = insertelement <2 x double> %i.cym, double %i.cyh, i64 0
  %i.dao = shufflevector <2 x double> %i.cyo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dap = shufflevector <2 x double> %i.cyn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.daq = shufflevector <2 x double> %i.cym, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dar = insertelement <2 x double> poison, double %i.cyh, i64 0
  %i.das = shufflevector <2 x double> %i.dar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dat = shufflevector <2 x double> %i.czb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dau = insertelement <2 x double> poison, double %i.cwb, i64 0
  %i.dav = shufflevector <2 x double> %i.dau, <2 x double> poison, <2 x i32> zeroinitializer
end_hunk_0
