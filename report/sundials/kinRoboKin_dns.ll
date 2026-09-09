Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/kinRoboKin_dns?download=true
inline.NumInlined: 15
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@main:bb.a
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.r = call ptr @N_VNew_Serial(i64 noundef 24, ptr noundef %i.q) #7 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %check_retval.exit62, label %bb.e

check_retval.exit62:                              ; preds = %bb.d
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.u = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.w = call ptr @KINCreate(ptr noundef %i.v) #7 ; 12 uses
  store ptr %i.w, ptr %i.b, align 8, !tbaa !23
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %check_retval.exit64, label %bb.f

check_retval.exit64:                              ; preds = %bb.e
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.z = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.y, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.aa = call i32 @KINInit(ptr noundef nonnull %i.w, ptr noundef nonnull @func, ptr noundef nonnull %i.h) #7 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %check_retval.exit66, label %bb.g

check_retval.exit66:                              ; preds = %bb.f
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.ad = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.6, i32 noundef %i.aa) #8 ; 0 uses
  br label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef nonnull %i.r) #7
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17 ; 8 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 64
  store <2 x double> splat (double 1.000000e+00), ptr %i.ah, align 8, !tbaa !19
  %i.ai = getelementptr i8, ptr %i.ag, i64 80
  store <2 x double> splat (double 1.000000e+00), ptr %i.ai, align 8, !tbaa !19
  %i.aj = getelementptr i8, ptr %i.ag, i64 96
  store <2 x double> splat (double 1.000000e+00), ptr %i.aj, align 8, !tbaa !19
  %i.ak = getelementptr i8, ptr %i.ag, i64 112
  store <2 x double> splat (double 1.000000e+00), ptr %i.ak, align 8, !tbaa !19
  %i.al = getelementptr i8, ptr %i.ag, i64 128
  store <2 x double> splat (double 1.000000e+00), ptr %i.al, align 8, !tbaa !19
  %i.am = getelementptr i8, ptr %i.ag, i64 144
  store <2 x double> splat (double 1.000000e+00), ptr %i.am, align 8, !tbaa !19
  %i.an = getelementptr i8, ptr %i.ag, i64 160
  store <2 x double> splat (double 1.000000e+00), ptr %i.an, align 8, !tbaa !19
  %i.ao = getelementptr i8, ptr %i.ag, i64 176
  store <2 x double> splat (double 1.000000e+00), ptr %i.ao, align 8, !tbaa !19
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
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #7 ; 12 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #7 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %3 = load <4 x double>, ptr %i.a, align 8, !tbaa !19 ; 8 uses
  %i.p = shufflevector <4 x double> %3, <4 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.q = shufflevector <4 x double> %3, <4 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %4 = shufflevector <4 x double> %3, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.r = fmul <2 x double> %i.p, <double 4.731000e-03, double 2.238000e-01>
  %5 = shufflevector <4 x double> %3, <4 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.s = fmul <2 x double> %i.q, <double -3.578000e-01, double f0x3FE864C2F837B4A2>
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %7 = fmul <2 x double> %i.q, <double 4.731000e-03, double 2.238000e-01>
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> <double 3.578000e-01, double f0xBFE864C2F837B4A2>, <2 x double> %7)
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %11 = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %12 = shufflevector <4 x double> %3, <4 x double> poison, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.v = fmul <2 x double> %12, %12
  %13 = shufflevector <4 x double> %3, <4 x double> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %13, <2 x double> %i.v)
  %i.x = fadd <2 x double> %i.w, splat (double -1.000000e+00)
  %14 = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ab = load <4 x double>, ptr %i.g, align 8, !tbaa !19 ; 6 uses
  %i.ac = load double, ptr %i.m, align 8, !tbaa !19
  %i.ad = load double, ptr %i.j, align 8, !tbaa !19
  %i.ae = extractelement <4 x double> %i.ab, i64 2
  %i.af = fneg double %i.ae
  %i.ag = shufflevector <4 x double> %i.ab, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ah = fmul <2 x double> %i.ag, %i.ag
  %i.ai = shufflevector <4 x double> %i.ab, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ai, <2 x double> %i.ah)
  %i.ak = fadd <2 x double> %i.aj, splat (double -1.000000e+00)
  %i.al = shufflevector <4 x double> %i.ab, <4 x double> poison, <2 x i32> <i32 2, i32 1> ; 2 uses
  %i.am = insertelement <2 x double> %i.al, double %i.af, i64 1
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> <double -1.238000e-01, double 2.638000e-01>, <2 x double> %i.am)
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> <double -1.637000e-03, double -7.745000e-02>, <2 x double> %15)
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> <double f0xBFEDE1B089A02752, double -6.734000e-01>, <2 x double> %i.an)
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %5, <2 x double> %i.ao)
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %5, <2 x double> %16)
  %18 = fadd <2 x double> %17, <double -3.571000e-01, double -6.022000e-01>
  %19 = load <2 x double>, ptr %i.c, align 8, !tbaa !19
  %20 = fadd <2 x double> %19, splat (double -1.000000e+00)
  %21 = shufflevector <4 x double> %3, <4 x double> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %22 = fsub <2 x double> %20, %21
  %23 = shufflevector <4 x double> <double poison, double 1.000000e+00, double poison, double poison>, <4 x double> %i.ab, <2 x i32> <i32 5, i32 1>
  %24 = shufflevector <4 x double> %i.ab, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %25 = insertelement <2 x double> %24, double 3.461000e-01, i64 1
  %26 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %25, <2 x double> %8)
  %i.ap = load <2 x double>, ptr %i.e, align 8, !tbaa !19
  %i.aq = fadd <2 x double> %i.ap, splat (double -1.000000e+00)
  %27 = shufflevector <4 x double> %3, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.ar = fsub <2 x double> %i.aq, %27
  %i.as = load <2 x double>, ptr %i.h, align 8, !tbaa !19
  %i.at = fadd <2 x double> %i.as, splat (double -1.000000e+00)
  %i.au = insertelement <2 x double> %i.ai, double %i.ad, i64 1 ; 2 uses
  %i.av = fsub <2 x double> %i.at, %i.au
  %i.aw = load <2 x double>, ptr %i.k, align 8, !tbaa !19
  %i.ax = fadd <2 x double> %i.aw, splat (double -1.000000e+00)
  %i.ay = insertelement <2 x double> %i.al, double %i.ac, i64 1 ; 2 uses
  %i.az = fsub <2 x double> %i.ax, %i.ay
  %i.ba = load <2 x double>, ptr %i.d, align 8, !tbaa !19
  %i.bb = fadd <2 x double> %i.ba, splat (double -1.000000e+00)
  %i.bc = fadd <2 x double> %21, %i.bb
  %i.bd = load <2 x double>, ptr %i.f, align 8, !tbaa !19
  %i.be = fadd <2 x double> %i.bd, splat (double -1.000000e+00)
  %i.bf = fadd <2 x double> %27, %i.be
  %i.bg = load <2 x double>, ptr %i.i, align 8, !tbaa !19
  %i.bh = fadd <2 x double> %i.bg, splat (double -1.000000e+00)
  %i.bi = fadd <2 x double> %i.au, %i.bh
  %i.bj = load <2 x double>, ptr %i.l, align 8, !tbaa !19
  %i.bk = fadd <2 x double> %i.bj, splat (double -1.000000e+00)
  %i.bl = fadd <2 x double> %i.ay, %i.bk
  store <2 x double> %18, ptr %i.b, align 8, !tbaa !19
  store <2 x double> %22, ptr %i.n, align 8, !tbaa !19
  store <2 x double> %i.bc, ptr %i.o, align 8, !tbaa !19
  store <2 x double> %26, ptr %6, align 8, !tbaa !19
  store <2 x double> %i.ar, ptr %i.t, align 8, !tbaa !19
  store <2 x double> %i.bf, ptr %i.u, align 8, !tbaa !19
  store <2 x double> %14, ptr %9, align 8, !tbaa !19
  store <2 x double> %i.av, ptr %10, align 8, !tbaa !19
  store <2 x double> %i.bi, ptr %11, align 8, !tbaa !19
  store <2 x double> %i.ak, ptr %i.y, align 8, !tbaa !19
  store <2 x double> %i.az, ptr %i.z, align 8, !tbaa !19
  store <2 x double> %i.bl, ptr %i.aa, align 8, !tbaa !19
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
  store double 1.000000e+00, ptr %i.da, align 8, !tbaa !19
  %i.db = getelementptr i8, ptr %i.p, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !31 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 112
  store double -1.000000e+00, ptr %i.dd, align 8, !tbaa !19
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !31
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 112
  store double 1.000000e+00, ptr %i.dg, align 8, !tbaa !19
  %i.dh = getelementptr i8, ptr %i.p, i64 56
  %i.di = getelementptr inbounds nuw i8, ptr %i.bj, i64 120
  store double -1.000000e+00, ptr %i.di, align 8, !tbaa !19
  %i.dj = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !31
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 120
  store double 1.000000e+00, ptr %i.dl, align 8, !tbaa !19
  %i.dm = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 128
  store double 1.000000e+00, ptr %i.dn, align 8, !tbaa !19
  %i.do = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !31
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 128
  store double 1.000000e+00, ptr %i.dq, align 8, !tbaa !19
  %i.dr = load ptr, ptr %i.cd, align 8, !tbaa !31
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 136
  store double 1.000000e+00, ptr %i.ds, align 8, !tbaa !19
  %i.dt = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !31
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 136
  store double 1.000000e+00, ptr %i.dv, align 8, !tbaa !19
  %i.dw = load ptr, ptr %i.ci, align 8, !tbaa !31
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 144
  store double 1.000000e+00, ptr %i.dx, align 8, !tbaa !19
  %i.dy = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !31
end_hunk_0
