Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idaSlCrank_dns?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"SUNContext_Create\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SUNDenseMatrix\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"SUNLinSol_Dense\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"IDASetLinearSolver\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Tolerance parameters:  rtol = %g   atol = %g\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"  t            y1          y2           y3\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"%10.4e %12.4e %12.4e %12.4e %3ld  %1d %12.4e\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Number of steps                    = %ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Number of residual evaluations     = %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Number of Jacobian evaluations     = %ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Number of nonlinear iterations     = %ld\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Number of error test failures      = %ld\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Number of nonlinear conv. failures = %ld\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Number of step solver failures     = %ld\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [55 x i8] c"\0ASUNDIALS_ERROR: %s() failed - returned NULL pointer\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"\0ASUNDIALS_ERROR: %s() failed with retval = %d\0A\0A\00", align 1
@str = private unnamed_addr constant [65 x i8] c"\0AidaSlCrank_dns: Slider-Crank DAE serial example problem for IDA\00", align 1
@str.1 = private unnamed_addr constant [51 x i8] c"Linear solver: DENSE, Jacobian is computed by IDA.\00", align 1
@str.3 = private unnamed_addr constant [22 x i8] c"      | nst  k      h\00", align 1
@str.4 = private unnamed_addr constant [72 x i8] c"-----------------------------------------------------------------------\00", align 1
@str.5 = private unnamed_addr constant [25 x i8] c"\0AFinal Run Statistics: \0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.g = call i32 @SUNContext_Create(i32 noundef 0, ptr noundef nonnull %i.f) #12 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.j = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str, i32 noundef %i.g) #13 ; 0 uses
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #14 ; 7 uses
  store <2 x double> <double 5.000000e-01, double 1.000000e+00>, ptr %i.k, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x double> <double 2.000000e+00, double 1.000000e+00>, ptr %i.l, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store <2 x double> splat (double 1.000000e+00), ptr %i.m, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store <2 x double> splat (double 1.000000e+00), ptr %i.n, align 8, !tbaa !11
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.p = call ptr @N_VNew_Serial(i64 noundef 10, ptr noundef %i.o) #12 ; 9 uses
  %i.q = call ptr @N_VClone(ptr noundef %i.p) #12 ; 4 uses
  %i.r = call ptr @N_VClone(ptr noundef %i.p) #12 ; 4 uses
  call void @setIC(ptr noundef %i.p, ptr noundef %i.q, ptr noundef nonnull %i.k)
  call void @N_VConst(double noundef 1.000000e+00, ptr noundef %i.r) #12
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.x = call ptr @IDACreate(ptr noundef %i.w) #12 ; 13 uses
  store ptr %i.x, ptr %i.d, align 8, !tbaa !32
  %i.y = call i32 @IDAInit(ptr noundef %i.x, ptr noundef nonnull @ressc, double noundef 0.000000e+00, ptr noundef %i.p, ptr noundef %i.q) #12 ; 0 uses
  %i.z = call i32 @IDASStolerances(ptr noundef %i.x, double noundef f0x3EB0C6F7A0B5ED8D, double noundef f0x3EB0C6F7A0B5ED8D) #12 ; 0 uses
  %i.aa = call i32 @IDASetUserData(ptr noundef %i.x, ptr noundef nonnull %i.k) #12 ; 0 uses
  %i.ab = call i32 @IDASetId(ptr noundef %i.x, ptr noundef nonnull %i.r) #12 ; 0 uses
  %i.ac = call i32 @IDASetSuppressAlg(ptr noundef %i.x, i32 noundef 1) #12 ; 0 uses
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.ae = call ptr @SUNDenseMatrix(i64 noundef 10, i64 noundef 10, ptr noundef %i.ad) #12 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %check_retval.exit58, label %bb.c

check_retval.exit58:                              ; preds = %bb.b
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.ah = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1) #13 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.aj = call ptr @SUNLinSol_Dense(ptr noundef %i.p, ptr noundef nonnull %i.ae, ptr noundef %i.ai) #12 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %check_retval.exit60, label %bb.d

check_retval.exit60:                              ; preds = %bb.c
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.am = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2) #13 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.an = call i32 @IDASetLinearSolver(ptr noundef %i.x, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ae) #12 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %check_retval.exit62, label %bb.e

check_retval.exit62:                              ; preds = %bb.d
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.aq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3, i32 noundef %i.an) #13 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  call fastcc void @PrintHeader()
  call fastcc void @PrintOutput(ptr noundef %i.x, double noundef 0.000000e+00, ptr noundef %i.p)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.g
  %.072 = phi i32 [ 1, %bb.e ], [ %i.bj, %bb.g ]  ; 2 uses
  %i.ar = uitofp nneg i32 %.072 to double
  %i.as = fmul nnan double %i.ar, 2.500000e-01
  %i.at = call i32 @IDASolve(ptr noundef %i.x, double noundef %i.as, ptr noundef nonnull %i.e, ptr noundef %i.p, ptr noundef %i.q, i32 noundef 1) #12
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = load double, ptr %i.e, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.aw = call ptr @N_VGetArrayPointer(ptr noundef %i.p) #12 ; 3 uses
  %i.ax = call i32 @IDAGetLastOrder(ptr noundef %i.x, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.ay = call i32 @IDAGetNumSteps(ptr noundef %i.x, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.az = call i32 @IDAGetLastStep(ptr noundef %i.x, ptr noundef nonnull %i.c) #12 ; 0 uses
  %i.ba = load double, ptr %i.aw, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !11
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !20
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !21
  %i.bh = load double, ptr %i.c, align 8, !tbaa !11
  %i.bi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %i.av, double noundef %i.ba, double noundef %i.bc, double noundef %i.be, i64 noundef %i.bf, i32 noundef %i.bg, double noundef %i.bh) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bj = add nuw nsw i32 %.072, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bj, 41
  br i1 %exitcond.not, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.f, %bb.g
  call fastcc void @PrintFinalStats(ptr noundef %i.x)
  call void @free(ptr noundef %i.k) #12
  call void @IDAFree(ptr noundef nonnull %i.d) #12
  %i.bk = call i32 @SUNLinSolFree(ptr noundef nonnull %i.aj) #12 ; 0 uses
  call void @SUNMatDestroy(ptr noundef nonnull %i.ae) #12
  call void @N_VDestroy(ptr noundef %i.p) #12
  call void @N_VDestroy(ptr noundef %i.q) #12
  call void @N_VDestroy(ptr noundef nonnull %i.r) #12
  %i.bl = call i32 @SUNContext_Free(ptr noundef nonnull %i.f) #12 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %check_retval.exit62, %check_retval.exit60, %check_retval.exit58, %check_retval.exit, %bb.h
  %.053 = phi i32 [ 0, %bb.h ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit58 ], [ 1, %check_retval.exit60 ], [ 1, %check_retval.exit62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret i32 %.053
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @setIC(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %0) #12
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %1) #12
  %i.a = load double, ptr %2, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !25
  %i.g = fneg double %i.a
  %i.h = tail call double @asin(double noundef %i.g) #12 ; 4 uses
  %i.i = tail call double @cos(double noundef %i.h) #12 ; 9 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.s = load double, ptr %i.r, align 8, !tbaa !11 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %4 = load double, ptr %i.t, align 8, !tbaa !11  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %5 = load double, ptr %i.u, align 8, !tbaa !11  ; 2 uses
  %i.v = tail call double @sin(double noundef %i.h) #12 ; 5 uses
  %i.w = tail call double @cos(double noundef %i.h) #12 ; 4 uses
  %i.x = fneg double %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %i.w, double f0x3C91A62633145C07, double %i.v)
  %6 = fmul double %i.i, 2.000000e+00
  %7 = fsub double %5, %i.s
  %i.z = fmul double %i.w, 5.000000e-01
  %8 = load double, ptr %i.b, align 8, !tbaa !26
  store double f0x3FF921FB54442D18, ptr %i.l, align 8, !tbaa !11
  store double %i.i, ptr %i.m, align 8, !tbaa !11
  store double %i.h, ptr %i.n, align 8, !tbaa !11
  %9 = load double, ptr %2, align 8, !tbaa !23    ; 8 uses
  %10 = load double, ptr %i.o, align 8, !tbaa !33
  %11 = load double, ptr %i.p, align 8, !tbaa !34
  %12 = load double, ptr %i.q, align 8, !tbaa !27
  %13 = load double, ptr %3, align 8, !tbaa !28   ; 2 uses
  %14 = tail call double @llvm.fmuladd.f64(double %i.v, double f0x3C91A62633145C07, double %i.x) ; 2 uses
  %15 = tail call double @llvm.fmuladd.f64(double %9, double f0x3C91A62633145C07, double %i.w)
  %16 = fneg double %15                           ; 2 uses
  %i.aa = fmul double %i.i, %16
  %17 = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.aa)
  %18 = tail call double @llvm.fmuladd.f64(double %9, double %9, double 1.000000e+00)
  %19 = fmul double %18, 2.500000e-01
  %20 = fadd double %19, %17
  %21 = fmul double %9, %i.y
  %22 = fmul double %21, 5.000000e-01
  %23 = fadd double %22, %20
  %24 = tail call double @sqrt(double noundef %23) #12 ; 3 uses
  %25 = fmul double %4, %16
  %26 = tail call double @llvm.fmuladd.f64(double %6, double %4, double %25)
  %27 = fmul double %9, %i.s
  %28 = tail call double @llvm.fmuladd.f64(double %i.v, double %5, double %27)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.i, double %28, double %26)
  %29 = fmul double %9, %14                       ; 2 uses
  %30 = fmul double %7, %29
  %i.ac = fmul double %30, 5.000000e-01
  %i.ad = fsub double %i.ab, %i.ac
  %i.ae = fmul double %24, 2.000000e+00
  %31 = fdiv double %i.ad, %i.ae
  %32 = fsub double %24, %12
  %33 = fmul double %11, %31
  %34 = tail call double @llvm.fmuladd.f64(double %10, double %32, double %33)
  %35 = fdiv double %34, %24                      ; 2 uses
  %36 = fneg double %35                           ; 2 uses
  %37 = fsub double %i.z, %i.i
  %i.af = fmul double %9, %36
  %i.ag = fmul double %9, f0x3C91A62633145C07
  %i.ah = fmul double %14, 5.000000e-01
  %38 = fmul double %i.ag, 5.000000e-01
  %39 = fadd double %i.i, %i.ah
  %40 = fadd double %38, %37
  %i.ai = fmul double %39, %i.af
  %i.aj = fmul double %i.ai, 5.000000e-01
  %41 = tail call double @llvm.fmuladd.f64(double %35, double %40, double %13)
  %i.ak = fmul double %29, -5.000000e-01
  %42 = tail call double @llvm.fmuladd.f64(double %i.i, double %i.v, double %i.ak)
  %i.al = fmul double %42, %36
  %i.am = fmul double %i.al, 5.000000e-01
  %43 = fneg double %13
  %i.an = tail call double @llvm.fmuladd.f64(double %43, double %i.v, double %i.am)
  %44 = load ptr, ptr %1, align 8, !tbaa !15
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 16
  %46 = load ptr, ptr %45, align 8, !tbaa !19     ; 2 uses
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 24
  %i.ao = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %41, i64 1
  %i.aq = insertelement <2 x double> poison, double %8, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.d, i64 1
  %i.as = fdiv <2 x double> %i.ap, %i.ar
  store <2 x double> %i.as, ptr %47, align 8, !tbaa !11
  %i.at = fdiv double %i.an, %i.f
  %i.au = getelementptr inbounds nuw i8, ptr %46, i64 40
  store double %i.at, ptr %i.au, align 8, !tbaa !11
  ret void
}

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IDACreate(ptr noundef) local_unnamed_addr #2

declare i32 @IDAInit(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ressc(double %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = load double, ptr %4, align 8, !tbaa !23  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !25
  %i.h = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #12 ; 10 uses
  %i.i = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #12 ; 6 uses
  %i.j = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #12 ; 8 uses
  %i.k = load double, ptr %i.h, align 8, !tbaa !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !11 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.s = load double, ptr %i.r, align 8, !tbaa !11 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.u = load double, ptr %i.t, align 8, !tbaa !11 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.w = load double, ptr %i.v, align 8, !tbaa !11 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.y = load double, ptr %i.x, align 8, !tbaa !11 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.aa = load double, ptr %i.z, align 8, !tbaa !11 ; 2 uses
  %i.ab = tail call double @sin(double noundef %i.k) #12 ; 2 uses
  %i.ac = tail call double @cos(double noundef %i.k) #12 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ag = fmul double %i.a, %i.ab                 ; 3 uses
  %i.ah = fneg double %i.ac
  %i.ai = fmul double %i.a, %i.ah                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.at = insertelement <2 x double> poison, double %i.w, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.ac, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.aw = tail call double @sin(double noundef %i.o) #12 ; 4 uses
  %i.ax = tail call double @cos(double noundef %i.o) #12 ; 3 uses
  %i.ay = load double, ptr %4, align 8, !tbaa !23 ; 8 uses
  %i.az = load double, ptr %i.ae, align 8, !tbaa !27
  %i.ba = load double, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !19 ; 6 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !11 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !11 ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !11 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !11 ; 2 uses
  %i.bp = tail call double @sin(double noundef %i.be) #12 ; 4 uses
  %i.bq = tail call double @cos(double noundef %i.be) #12 ; 3 uses
  %i.br = tail call double @sin(double noundef %i.bi) #12 ; 4 uses
  %i.bs = tail call double @cos(double noundef %i.bi) #12 ; 3 uses
  %i.bt = fneg double %i.bp
  %i.bu = insertelement <2 x double> poison, double %i.bs, i64 0 ; 2 uses
  %i.bv = insertelement <2 x double> %i.bu, double %i.bp, i64 1
  %i.bw = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.br, i64 1 ; 2 uses
  %i.by = fmul <2 x double> %i.bv, %i.bx
  %i.bz = shufflevector <2 x double> %i.bx, <2 x double> %i.bu, <2 x i32> <i32 1, i32 2>
  %i.ca = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.cb, <2 x double> %i.by) ; 3 uses
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.bq, double %i.bs)
  %i.ce = fneg double %i.cd                       ; 2 uses
  %i.cf = fmul double %i.bg, %i.ce
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bg, double %i.cf)
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ay, double 1.000000e+00)
  %i.ci = fmul double %i.ch, 2.500000e-01
  %i.cj = fadd double %i.ci, %i.cg
  %i.ck = extractelement <2 x double> %i.cc, i64 1
  %i.cl = fmul double %i.ay, %i.ck
  %i.cm = fmul double %i.cl, 5.000000e-01
  %i.cn = fadd double %i.cm, %i.cj
  %i.co = tail call double @sqrt(double noundef %i.cn) #12 ; 3 uses
  %i.cp = fmul double %i.bg, 2.000000e+00
  %i.cq = fmul double %i.bm, %i.ce
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.bm, double %i.cq)
  %i.cs = fmul double %i.ay, %i.bp
  %i.ct = fmul double %i.bk, %i.cs
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.br, double %i.bo, double %i.ct)
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.cu, double %i.cr)
  %i.cw = extractelement <2 x double> %i.cc, i64 0
  %i.cx = fmul double %i.ay, %i.cw                ; 2 uses
  %i.cy = fsub double %i.bo, %i.bk
  %i.cz = fmul double %i.cy, %i.cx
  %i.da = fmul double %i.cz, 5.000000e-01
  %i.db = fsub double %i.cv, %i.da
  %i.dc = fmul double %i.co, 2.000000e+00
  %i.dd = fdiv double %i.db, %i.dc
  %i.de = fsub double %i.co, %i.az
  %i.df = load <2 x double>, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> %i.cc, <2 x i32> <i32 1, i32 2>
  %i.dh = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.dd, i64 0
  %i.di = fmul <2 x double> %i.dg, %i.dh
  %i.dj = insertelement <2 x double> %i.df, double %i.bg, i64 1
  %i.dk = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.bp, i64 1
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.dl, <2 x double> %i.di) ; 2 uses
  %i.dn = extractelement <2 x double> %i.dm, i64 0
  %i.do = fdiv double %i.dn, %i.co                ; 2 uses
  %i.dp = fneg double %i.do                       ; 2 uses
  %i.dq = fmul double %i.ay, %i.dp
  %i.dr = extractelement <2 x double> %i.dm, i64 1
  %i.ds = fmul double %i.dr, %i.dq
  %i.dt = fmul double %i.bs, 5.000000e-01
  %i.du = fsub double %i.dt, %i.bg
  %i.dv = fmul double %i.ay, %i.bq
  %i.dw = fmul double %i.dv, 5.000000e-01
  %i.dx = fadd double %i.dw, %i.du
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dx, double %i.ba)
  %i.dz = fmul double %i.cx, -5.000000e-01
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.br, double %i.dz)
  %i.eb = fmul double %i.ea, %i.dp
  %i.ec = fmul double %i.eb, 5.000000e-01
  %i.ed = fneg double %i.ba
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.br, double %i.ec)
  %i.ef = load double, ptr %i.i, align 8, !tbaa !11
  %i.eg = fmul double %i.ds, -5.000000e-01
  %i.eh = fneg double %i.dy
  %i.ei = fneg double %i.ee
  %i.ej = fsub double %i.m, %i.ax
  %i.ek = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.a, i64 1
  %i.em = fneg <2 x double> %i.el                 ; 4 uses
  %i.en = extractelement <2 x double> %i.em, i64 0
  %i.eo = fneg double %i.aw
  %i.ep = extractelement <2 x double> %i.em, i64 1
  %i.eq = load <2 x double>, ptr %i.p, align 8, !tbaa !11 ; 3 uses
  %i.er = load double, ptr %i.q, align 8, !tbaa !11
  %i.es = extractelement <2 x double> %i.eq, i64 0 ; 2 uses
  %i.et = fsub double %i.ef, %i.es
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.y, double %i.et)
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.aa, double %i.eu)
  store double %i.ev, ptr %i.j, align 8, !tbaa !11
  %i.ew = load double, ptr %i.aj, align 8, !tbaa !11
  %i.ex = fsub double %i.ew, %i.er
  %i.ey = fadd double %i.y, %i.ex
  store double %i.ey, ptr %i.ak, align 8, !tbaa !11
  %i.ez = load double, ptr %i.al, align 8, !tbaa !11
  %i.fa = fsub double %i.ez, %i.s
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.y, double %i.fa)
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.en, double %i.aa, double %i.fb)
  store double %i.fc, ptr %i.am, align 8, !tbaa !11
  %i.fd = load double, ptr %i.an, align 8, !tbaa !11
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.c, double %i.fd, double %i.eg)
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.u, double %i.fe)
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.w, double %i.ff)
  store double %i.fg, ptr %i.ao, align 8, !tbaa !11
  %i.fh = load double, ptr %i.ap, align 8, !tbaa !11
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.e, double %i.fh, double %i.eh)
  %i.fj = fadd double %i.u, %i.fi
  store double %i.fj, ptr %i.aq, align 8, !tbaa !11
  %i.fk = load double, ptr %i.ar, align 8, !tbaa !11
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.g, double %i.fk, double %i.ei)
  %i.fm = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.fn = insertelement <2 x double> %i.fm, double %i.ag, i64 1
  %i.fo = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.fp = insertelement <2 x double> %i.fo, double %i.u, i64 0
  %i.fq = insertelement <2 x double> %i.eq, double %i.fl, i64 0
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.fp, <2 x double> %i.fq) ; 2 uses
  %i.fs = insertelement <2 x double> %i.fr, double %i.ej, i64 1
  %i.ft = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.au, <2 x double> %i.fs)
  store <2 x double> %i.ft, ptr %i.as, align 8, !tbaa !11
  %i.fu = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fv = insertelement <2 x double> %i.fu, double %i.aw, i64 1
  %i.fw = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.fx = insertelement <2 x double> %i.fw, double %i.s, i64 1
  %i.fy = insertelement <2 x double> %i.fr, double %i.eo, i64 0
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.fx, <2 x double> %i.fy)
  store <2 x double> %i.fz, ptr %i.av, align 8, !tbaa !11
  %i.ga = fmul double %i.ac, %i.ep
  %i.gb = fneg double %i.s
  %i.gc = fmul double %i.ax, %i.gb
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.es, double %i.gc)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store double %i.gd, ptr %i.ge, align 8, !tbaa !11
  ret i32 0
}

declare i32 @IDASStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @IDASetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetId(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetSuppressAlg(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SUNDenseMatrix(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2
end_hunk_0
begin_hunk_1_@llvm.lifetime.end.p0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local void @force(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !23  ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load double, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.f = load double, ptr %i.e, align 8, !tbaa !28 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 6 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !11 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !11 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !11 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.r = load double, ptr %i.q, align 8, !tbaa !11 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.t = load double, ptr %i.s, align 8, !tbaa !11 ; 2 uses
  %i.u = tail call double @sin(double noundef %i.j) #12 ; 4 uses
  %i.v = tail call double @cos(double noundef %i.j) #12 ; 3 uses
  %i.w = tail call double @sin(double noundef %i.n) #12 ; 4 uses
  %i.x = tail call double @cos(double noundef %i.n) #12 ; 3 uses
  %i.y = fneg double %i.u
  %i.z = insertelement <2 x double> poison, double %i.x, i64 0 ; 2 uses
  %i.aa = insertelement <2 x double> %i.z, double %i.u, i64 1
  %i.ab = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.w, i64 1 ; 2 uses
  %i.ad = fmul <2 x double> %i.aa, %i.ac
  %i.ae = shufflevector <2 x double> %i.ac, <2 x double> %i.z, <2 x i32> <i32 1, i32 2>
  %i.af = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ag, <2 x double> %i.ad) ; 3 uses
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.a, double %i.v, double %i.x)
  %i.aj = fneg double %i.ai                       ; 2 uses
  %i.ak = fmul double %i.l, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.ak)
  %i.am = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double 1.000000e+00)
  %i.an = fmul double %i.am, 2.500000e-01
  %i.ao = fadd double %i.an, %i.al
  %i.ap = extractelement <2 x double> %i.ah, i64 1
  %i.aq = fmul double %i.a, %i.ap
  %i.ar = fmul double %i.aq, 5.000000e-01
  %i.as = fadd double %i.ar, %i.ao
  %i.at = tail call double @sqrt(double noundef %i.as) #12 ; 3 uses
  %i.au = fmul double %i.l, 2.000000e+00
  %i.av = fmul double %i.r, %i.aj
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.au, double %i.r, double %i.av)
  %i.ax = fmul double %i.a, %i.u
  %i.ay = fmul double %i.p, %i.ax
  %i.az = tail call double @llvm.fmuladd.f64(double %i.w, double %i.t, double %i.ay)
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.l, double %i.az, double %i.aw)
  %i.bb = extractelement <2 x double> %i.ah, i64 0
  %i.bc = fmul double %i.a, %i.bb                 ; 2 uses
  %i.bd = fsub double %i.t, %i.p
  %i.be = fmul double %i.bd, %i.bc
  %i.bf = fmul double %i.be, 5.000000e-01
  %i.bg = fsub double %i.ba, %i.bf
  %i.bh = fmul double %i.at, 2.000000e+00
  %i.bi = fdiv double %i.bg, %i.bh
  %i.bj = fsub double %i.at, %i.d
  %i.bk = load <2 x double>, ptr %i.b, align 8, !tbaa !11 ; 2 uses
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> %i.ah, <2 x i32> <i32 1, i32 2>
  %i.bm = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.bi, i64 0
  %i.bn = fmul <2 x double> %i.bl, %i.bm
  %i.bo = insertelement <2 x double> %i.bk, double %i.l, i64 1
  %i.bp = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.u, i64 1
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bq, <2 x double> %i.bn) ; 2 uses
  %i.bs = extractelement <2 x double> %i.br, i64 0
  %i.bt = fdiv double %i.bs, %i.at                ; 2 uses
  %i.bu = fneg double %i.bt                       ; 2 uses
  %i.bv = fmul double %i.a, %i.bu
  %i.bw = extractelement <2 x double> %i.br, i64 1
  %i.bx = fmul double %i.bw, %i.bv
  %i.by = fmul double %i.bx, 5.000000e-01
  store double %i.by, ptr %1, align 8, !tbaa !11
  %i.bz = fmul double %i.x, 5.000000e-01
  %i.ca = fsub double %i.bz, %i.l
  %i.cb = fmul double %i.a, %i.v
  %i.cc = fmul double %i.cb, 5.000000e-01
  %i.cd = fadd double %i.cc, %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = fmul double %i.bc, -5.000000e-01
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.l, double %i.w, double %i.cf)
  %i.ch = fmul double %i.cg, %i.bu
  %i.ci = fmul double %i.ch, 5.000000e-01
  %i.cj = fneg double %i.f
  %i.ck = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.cj, i64 1
  %i.cm = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.w, i64 1
  %i.co = insertelement <2 x double> poison, double %i.f, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.ci, i64 1
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.cn, <2 x double> %i.cp)
  store <2 x double> %i.cq, ptr %i.ce, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare i32 @IDAGetLastOrder(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetLastStep(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumResEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumJacEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumNonlinSolvIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumErrTestFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumNonlinSolvConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumStepSolveFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumLinResEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS11SUNContext_", !9, i64 0}
!13 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !9, i64 0}
!14 = !{!"_generic_N_Vector", !9, i64 0, !13, i64 8, !12, i64 16}
!15 = !{!14, !9, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"p1 double", !9, i64 0}
!18 = !{!"_N_VectorContent_Serial", !16, i64 0, !6, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 16}
!20 = !{!16, !16, i64 0}
!21 = !{!6, !6, i64 0}
!22 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!23 = !{!22, !10, i64 0}
!24 = !{!22, !10, i64 24}
!25 = !{!22, !10, i64 16}
!26 = !{!22, !10, i64 8}
!27 = !{!22, !10, i64 48}
!28 = !{!22, !10, i64 56}
!29 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!12, !12, i64 0}
!32 = !{!9, !9, i64 0}
!33 = !{!22, !10, i64 32}
!34 = !{!22, !10, i64 40}
end_hunk_1
