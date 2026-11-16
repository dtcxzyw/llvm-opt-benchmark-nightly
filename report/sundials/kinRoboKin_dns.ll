Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/kinRoboKin_dns?download=true
inline.NumInlined: 15
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@main:bb.a
  %i.ap = call i32 @KINSetConstraints(ptr noundef nonnull %i.w, ptr noundef nonnull %i.r) #7 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %check_retval.exit68, label %bb.h

check_retval.exit68:                              ; preds = %bb.g
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.as = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.7, i32 noundef %i.ap) #8 ; 0 uses
  br label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.at = call i32 @KINSetFuncNormTol(ptr noundef nonnull %i.w, double noundef 1.000000e-05) #7 ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %check_retval.exit70, label %bb.i

check_retval.exit70:                              ; preds = %bb.h
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.aw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, i32 noundef %i.at) #8 ; 0 uses
  br label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ax = call i32 @KINSetScaledStepTol(ptr noundef nonnull %i.w, double noundef 1.000000e-05) #7 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %check_retval.exit72, label %bb.j

check_retval.exit72:                              ; preds = %bb.i
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.ba = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.9, i32 noundef %i.ax) #8 ; 0 uses
  br label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.bc = call ptr @SUNDenseMatrix(i64 noundef 24, i64 noundef 24, ptr noundef %i.bb) #7 ; 4 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %check_retval.exit74, label %bb.k

check_retval.exit74:                              ; preds = %bb.j
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.bf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.10) #8 ; 0 uses
  br label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.bh = call ptr @SUNLinSol_Dense(ptr noundef nonnull %i.h, ptr noundef nonnull %i.bc, ptr noundef %i.bg) #7 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %check_retval.exit76, label %bb.l

check_retval.exit76:                              ; preds = %bb.k
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.bk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.11) #8 ; 0 uses
  br label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bl = call i32 @KINSetLinearSolver(ptr noundef nonnull %i.w, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bc) #7 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %check_retval.exit78, label %bb.m

check_retval.exit78:                              ; preds = %bb.l
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.bo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bn, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.12, i32 noundef %i.bl) #8 ; 0 uses
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bp = call i32 @KINSetJacFn(ptr noundef nonnull %i.w, ptr noundef nonnull @jac) #7 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %check_retval.exit80, label %bb.n

check_retval.exit80:                              ; preds = %bb.m
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.bs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.13, i32 noundef %i.bp) #8 ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bt = call i32 @KINSetMaxSetupCalls(ptr noundef nonnull %i.w, i64 noundef 1) #7 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %check_retval.exit82, label %bb.o

check_retval.exit82:                              ; preds = %bb.n
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.bw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bv, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.14, i32 noundef %i.bt) #8 ; 0 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  call void @N_VConst(double noundef 1.000000e+00, ptr noundef nonnull %i.h) #7
  %i.bx = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !17 ; 4 uses
  store <2 x double> splat (double f0x3FE6A09E667F3BCD), ptr %i.bz, align 8, !tbaa !19
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  store <2 x double> splat (double f0x3FE6A09E667F3BCD), ptr %i.ca, align 8, !tbaa !19
  %i.cb = getelementptr i8, ptr %i.bz, i64 32
  store <2 x double> splat (double f0x3FE6A09E667F3BCD), ptr %i.cb, align 8, !tbaa !19
  %i.cc = getelementptr i8, ptr %i.bz, i64 48
  store <2 x double> splat (double f0x3FE6A09E667F3BCD), ptr %i.cc, align 8, !tbaa !19
  %puts53 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  call fastcc void @PrintOutput(ptr noundef nonnull %i.h)
  call void @N_VConst(double noundef 1.000000e+00, ptr noundef nonnull %i.m) #7
  %i.cd = call i32 @KINSol(ptr noundef nonnull %i.w, ptr noundef nonnull %i.h, i32 noundef 1, ptr noundef nonnull %i.m, ptr noundef nonnull %i.m) #7 ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %check_retval.exit84, label %bb.p

check_retval.exit84:                              ; preds = %bb.o
  %i.cf = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.cg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.16, i32 noundef %i.cd) #8 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %puts55 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  call fastcc void @PrintOutput(ptr noundef nonnull %i.h)
  %puts56 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.ch = load ptr, ptr @stdout, align 8, !tbaa !21
  %i.ci = call i32 @KINPrintAllStats(ptr noundef nonnull %i.w, ptr noundef %i.ch, i32 noundef 0) #7 ; 0 uses
  %i.cj = call noalias ptr @fopen(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) ; 2 uses
  %i.ck = call i32 @KINPrintAllStats(ptr noundef nonnull %i.w, ptr noundef %i.cj, i32 noundef 1) #7 ; 0 uses
  %i.cl = call i32 @fclose(ptr noundef %i.cj)     ; 0 uses
  call void @N_VDestroy(ptr noundef nonnull %i.h) #7
  call void @N_VDestroy(ptr noundef nonnull %i.m) #7
  call void @N_VDestroy(ptr noundef nonnull %i.r) #7
  call void @KINFree(ptr noundef nonnull %i.b) #7
  %i.cm = call i32 @SUNLinSolFree(ptr noundef nonnull %i.bh) #7 ; 0 uses
  call void @SUNMatDestroy(ptr noundef nonnull %i.bc) #7
  %i.cn = call i32 @SUNContext_Free(ptr noundef nonnull %i.a) #7 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %check_retval.exit84, %check_retval.exit82, %check_retval.exit80, %check_retval.exit78, %check_retval.exit76, %check_retval.exit74, %check_retval.exit72, %check_retval.exit70, %check_retval.exit68, %check_retval.exit66, %check_retval.exit64, %check_retval.exit62, %check_retval.exit60, %check_retval.exit58, %check_retval.exit, %bb.p
  %.037 = phi i32 [ 0, %bb.p ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit58 ], [ 1, %check_retval.exit60 ], [ 1, %check_retval.exit62 ], [ 1, %check_retval.exit64 ], [ 1, %check_retval.exit66 ], [ 1, %check_retval.exit68 ], [ 1, %check_retval.exit70 ], [ 1, %check_retval.exit72 ], [ 1, %check_retval.exit74 ], [ 1, %check_retval.exit76 ], [ 1, %check_retval.exit78 ], [ 1, %check_retval.exit80 ], [ 1, %check_retval.exit82 ], [ 1, %check_retval.exit84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.037
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @KINCreate(ptr noundef) local_unnamed_addr #3

declare i32 @KINInit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @func(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #7 ; 11 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #7 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.m = load <4 x double>, ptr %i.a, align 8, !tbaa !19 ; 8 uses
  %i.n = load double, ptr %i.g, align 8, !tbaa !19 ; 2 uses
  %i.o = load double, ptr %i.d, align 8, !tbaa !19 ; 3 uses
  %i.p = insertelement <2 x double> poison, double %i.o, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.r = fmul <2 x double> %i.q, <double 4.731000e-03, double 2.238000e-01>
  %i.s = shufflevector <4 x double> %i.m, <4 x double> poison, <2 x i32> zeroinitializer
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> <double 3.578000e-01, double f0xBFE864C2F837B4A2>, <2 x double> %i.r) ; 2 uses
  %i.u = extractelement <2 x double> %i.t, i64 0
  %i.v = shufflevector <4 x double> %i.m, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.w = fmul <2 x double> %i.v, %i.v
  %i.x = shufflevector <4 x double> %i.m, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.x, <2 x double> %i.w)
  %i.z = load <4 x double>, ptr %i.h, align 8, !tbaa !19 ; 6 uses
  %i.aa = load double, ptr %i.l, align 8, !tbaa !19 ; 3 uses
  %i.ab = load double, ptr %i.i, align 8, !tbaa !19 ; 2 uses
  %i.ac = extractelement <4 x double> %i.z, i64 2
  %i.ad = fneg double %i.ac
  %i.ae = shufflevector <4 x double> %i.z, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.af = fmul <2 x double> %i.ae, %i.ae
  %i.ag = shufflevector <4 x double> %i.z, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.ag, <2 x double> %i.af)
  %i.ai = shufflevector <4 x double> %i.m, <4 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = fmul <2 x double> %i.ai, <double 4.731000e-03, double 2.238000e-01>
  %i.ak = fmul <2 x double> %i.q, <double -3.578000e-01, double f0x3FE864C2F837B4A2>
  %i.al = shufflevector <4 x double> %i.z, <4 x double> poison, <2 x i32> <i32 2, i32 poison> ; 2 uses
  %i.am = insertelement <2 x double> %i.al, double %i.ad, i64 1
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> <double -1.238000e-01, double 2.638000e-01>, <2 x double> %i.am)
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> <double -1.637000e-03, double -7.745000e-02>, <2 x double> %i.an)
  %i.ap = insertelement <2 x double> poison, double %i.n, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> <double f0xBFEDE1B089A02752, double -6.734000e-01>, <2 x double> %i.ao)
  %i.as = shufflevector <4 x double> %i.m, <4 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.as, <2 x double> %i.ar)
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.as, <2 x double> %i.at)
  %i.av = fadd <2 x double> %i.au, <double -3.571000e-01, double -6.022000e-01>
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.aa, double %i.u)
  %i.ba = shufflevector <2 x double> %i.t, <2 x double> %i.y, <4 x i32> <i32 poison, i32 1, i32 2, i32 3>
  %3 = insertelement <4 x double> %i.ba, double %i.az, i64 0
  %4 = fadd <4 x double> %3, <double -0.000000e+00, double 3.461000e-01, double -1.000000e+00, double -1.000000e+00>
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.be = load <2 x double>, ptr %i.c, align 8, !tbaa !19
  %i.bf = shufflevector <2 x double> %i.ah, <2 x double> %i.be, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bg = fadd <4 x double> %i.bf, <double -0.000000e+00, double -0.000000e+00, double -1.000000e+00, double -1.000000e+00>
  %i.bh = shufflevector <4 x double> %i.m, <4 x double> <double 1.000000e+00, double 1.000000e+00, double poison, double poison>, <4 x i32> <i32 4, i32 5, i32 0, i32 poison>
  %i.bi = insertelement <4 x double> %i.bh, double %i.o, i64 3
  %i.bj = fsub <4 x double> %i.bg, %i.bi
  %i.bk = load <4 x double>, ptr %i.e, align 8, !tbaa !19
  %i.bl = fadd <4 x double> %i.bk, splat (double -1.000000e+00)
  %i.bm = shufflevector <4 x double> %i.m, <4 x double> %i.z, <4 x i32> <i32 2, i32 poison, i32 4, i32 poison>
  %i.bn = insertelement <4 x double> %i.bm, double %i.n, i64 1
  %i.bo = insertelement <4 x double> %i.bn, double %i.ab, i64 3 ; 2 uses
  %i.bp = fsub <4 x double> %i.bl, %i.bo
  %i.bq = load <4 x double>, ptr %i.j, align 8, !tbaa !19
  %i.br = fadd <4 x double> %i.bq, splat (double -1.000000e+00) ; 2 uses
  %i.bs = shufflevector <4 x double> %i.z, <4 x double> %i.m, <4 x i32> <i32 2, i32 poison, i32 4, i32 poison>
  %i.bt = insertelement <4 x double> %i.bs, double %i.aa, i64 1 ; 2 uses
  %i.bu = insertelement <4 x double> %i.bt, double %i.o, i64 3
  %i.bv = fsub <4 x double> %i.br, %i.bt
  %i.bw = fadd <4 x double> %i.br, %i.bu
  %i.bx = shufflevector <4 x double> %i.bw, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.by = shufflevector <4 x double> %i.bv, <4 x double> %i.bx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bz = load <4 x double>, ptr %i.f, align 8, !tbaa !19
  %i.ca = fadd <4 x double> %i.bz, splat (double -1.000000e+00)
  %i.cb = fadd <4 x double> %i.bo, %i.ca
  %i.cc = load <2 x double>, ptr %i.k, align 8, !tbaa !19
  %i.cd = fadd <2 x double> %i.cc, splat (double -1.000000e+00)
  %i.ce = insertelement <2 x double> %i.al, double %i.aa, i64 1
  %i.cf = fadd <2 x double> %i.ce, %i.cd
  store <2 x double> %i.av, ptr %i.b, align 8, !tbaa !19
  store <4 x double> %4, ptr %i.aw, align 8, !tbaa !19
  store <4 x double> %i.bp, ptr %i.ax, align 8, !tbaa !19
  store <4 x double> %i.cb, ptr %i.ay, align 8, !tbaa !19
  store <4 x double> %i.bj, ptr %i.bb, align 8, !tbaa !19
  store <4 x double> %i.by, ptr %i.bc, align 8, !tbaa !19
  store <2 x double> %i.cf, ptr %i.bd, align 8, !tbaa !19
  ret i32 0
}

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @KINSetConstraints(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @KINSetFuncNormTol(ptr noundef, double noundef) local_unnamed_addr #3

declare i32 @KINSetScaledStepTol(ptr noundef, double noundef) local_unnamed_addr #3

declare ptr @SUNDenseMatrix(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @SUNLinSol_Dense(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @KINSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @KINSetJacFn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @jac(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5) #0 {
.preheader.preheader:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #7 ; 7 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !19 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load double, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load double, ptr %i.h, align 8, !tbaa !19 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = load double, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.m = load double, ptr %i.l, align 8, !tbaa !19 ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30   ; 31 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31   ; 6 uses
  %i.r = getelementptr i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 6 uses
  %i.t = fmul double %i.d, -3.578000e-01
  %i.u = getelementptr i8, ptr %i.p, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31   ; 4 uses
  %i.w = getelementptr i8, ptr %i.p, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31   ; 4 uses
  %i.y = getelementptr i8, ptr %i.p, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 3 uses
  %i.aa = insertelement <2 x double> poison, double %i.b, i64 0
  %i.ab = insertelement <2 x double> <double poison, double 2.638000e-01>, double %i.t, i64 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ae = fmul double %i.d, f0x3FE864C2F837B4A2
  %i.af = insertelement <2 x double> <double -7.745000e-02, double poison>, double %i.ae, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.al = getelementptr i8, ptr %i.p, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = getelementptr i8, ptr %i.p, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ar = fmul double %i.b, 2.000000e+00
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.at = fmul double %i.d, 2.000000e+00
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.aw = load <2 x double>, ptr %i.e, align 8, !tbaa !19 ; 4 uses
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> <double 4.731000e-03, double -3.578000e-01>, <2 x double> <double -1.238000e-01, double -1.637000e-03>) ; 2 uses
  %i.az = extractelement <2 x double> %i.ay, i64 0
  store double %i.az, ptr %i.q, align 8, !tbaa !19
  %i.ba = extractelement <2 x double> %i.ay, i64 1
  store double %i.ba, ptr %i.s, align 8, !tbaa !19
  %i.bb = shufflevector <2 x double> %i.aa, <2 x double> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> <double 4.731000e-03, double 2.238000e-01>, <2 x double> %i.ab) ; 2 uses
  %i.bd = extractelement <2 x double> %i.bc, i64 0
  store double %i.bd, ptr %i.v, align 8, !tbaa !19
  store double f0xBFEDE1B089A02752, ptr %i.x, align 8, !tbaa !19
  store double 1.000000e+00, ptr %i.z, align 8, !tbaa !19
  %i.be = extractelement <2 x double> %i.bc, i64 1
  store double %i.be, ptr %i.ac, align 8, !tbaa !19
  %i.bf = insertelement <2 x double> %i.aw, double %i.b, i64 1
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> <double f0x3FE864C2F837B4A2, double 2.238000e-01>, <2 x double> %i.af) ; 2 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0
  store double %i.bh, ptr %i.ad, align 8, !tbaa !19
  %i.bi = extractelement <2 x double> %i.bg, i64 1
  store double %i.bi, ptr %i.ag, align 8, !tbaa !19
  store double -6.734000e-01, ptr %i.ah, align 8, !tbaa !19
  store double -1.000000e+00, ptr %i.ai, align 8, !tbaa !19
  store double 3.578000e-01, ptr %i.aj, align 8, !tbaa !19
  store double 4.731000e-03, ptr %i.ak, align 8, !tbaa !19
  store double %i.m, ptr %i.an, align 8, !tbaa !19
  %i.bj = load ptr, ptr %i.ao, align 8, !tbaa !31 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store double %i.i, ptr %i.bk, align 8, !tbaa !19
  store double f0xBFE864C2F837B4A2, ptr %i.ap, align 8, !tbaa !19
  store double 2.238000e-01, ptr %i.aq, align 8, !tbaa !19
  store double %i.ar, ptr %i.as, align 8, !tbaa !19
  store double %i.at, ptr %i.au, align 8, !tbaa !19
  %i.bl = fmul <2 x double> %i.aw, splat (double 2.000000e+00) ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0
  store double %i.bm, ptr %i.av, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.bo = extractelement <2 x double> %i.bl, i64 1
  store double %i.bo, ptr %i.bn, align 8, !tbaa !19
  %i.bp = fmul double %i.g, 2.000000e+00
  %i.bq = getelementptr i8, ptr %i.p, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !31 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store double %i.bp, ptr %i.bs, align 8, !tbaa !19
  %i.bt = fmul double %i.i, 2.000000e+00
  %i.bu = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store double %i.bt, ptr %i.bu, align 8, !tbaa !19
  %i.bv = fmul double %i.k, 2.000000e+00
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store double %i.bv, ptr %i.bw, align 8, !tbaa !19
  %i.bx = fmul double %i.m, 2.000000e+00
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  store double %i.bx, ptr %i.by, align 8, !tbaa !19
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store double -1.000000e+00, ptr %i.bz, align 8, !tbaa !19
  %i.ca = getelementptr i8, ptr %i.p, i64 64
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !31
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  store double 1.000000e+00, ptr %i.cc, align 8, !tbaa !19
  %i.cd = getelementptr i8, ptr %i.p, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store double -1.000000e+00, ptr %i.ce, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !31
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  store double 1.000000e+00, ptr %i.ch, align 8, !tbaa !19
  %i.ci = getelementptr i8, ptr %i.p, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store double -1.000000e+00, ptr %i.cj, align 8, !tbaa !19
  %i.ck = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !31
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  store double 1.000000e+00, ptr %i.cm, align 8, !tbaa !19
  %i.cn = getelementptr i8, ptr %i.p, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  store double -1.000000e+00, ptr %i.co, align 8, !tbaa !19
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !31
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 88
  store double 1.000000e+00, ptr %i.cr, align 8, !tbaa !19
  %i.cs = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  store double -1.000000e+00, ptr %i.cs, align 8, !tbaa !19
  %i.ct = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !31
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  store double 1.000000e+00, ptr %i.cv, align 8, !tbaa !19
  %i.cw = getelementptr i8, ptr %i.p, i64 40
  %i.cx = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  store double -1.000000e+00, ptr %i.cx, align 8, !tbaa !19
  %i.cy = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !31
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 104
end_hunk_0
