Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idas_ls?download=true
inline.NumInlined: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__func__.IDASetLinearSolver = private unnamed_addr constant [19 x i8] c"IDASetLinearSolver\00", align 1
@.str = private unnamed_addr constant [53 x i8] c"/opt-bench/work/sundials/sundials/src/idas/idas_ls.c\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Integrator memory is NULL.\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"LS must be non-NULL\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"LS object is missing a required operation\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"A required vector operation is not implemented.\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"Incompatible inputs: matrix-embedded LS requires NULL matrix\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"Iterative LS object requires 'resid' and 'numiters' routines\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"Incompatible inputs: iterative LS must support ATimes routine\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"Incompatible inputs: matrix-iterative LS requires non-NULL matrix\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Incompatible inputs: direct LS requires non-NULL matrix\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"A memory request failed.\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Error in calling SUNLinSolSetATimes\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"Error in calling SUNLinSolSetPreconditioner\00", align 1
@__func__.IDASetJacFn = private unnamed_addr constant [12 x i8] c"IDASetJacFn\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"Jacobian routine cannot be supplied for NULL SUNMatrix\00", align 1
@__func__.IDASetEpsLin = private unnamed_addr constant [13 x i8] c"IDASetEpsLin\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"eplifac < 0.0 illegal.\00", align 1
@__func__.IDASetLSNormFactor = private unnamed_addr constant [19 x i8] c"IDASetLSNormFactor\00", align 1
@__func__.IDASetLinearSolutionScaling = private unnamed_addr constant [28 x i8] c"IDASetLinearSolutionScaling\00", align 1
@__func__.IDASetIncrementFactor = private unnamed_addr constant [22 x i8] c"IDASetIncrementFactor\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"dqincfac < 0.0 illegal.\00", align 1
@__func__.IDASetPreconditioner = private unnamed_addr constant [21 x i8] c"IDASetPreconditioner\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"SUNLinearSolver object does not support user-supplied preconditioning\00", align 1
@__func__.IDASetJacTimes = private unnamed_addr constant [15 x i8] c"IDASetJacTimes\00", align 1
@.str.17 = private unnamed_addr constant [69 x i8] c"SUNLinearSolver object does not support user-supplied ATimes routine\00", align 1
@__func__.IDASetJacTimesResFn = private unnamed_addr constant [20 x i8] c"IDASetJacTimesResFn\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"Internal finite-difference Jacobian-vector product is disabled.\00", align 1
@__func__.IDAGetJac = private unnamed_addr constant [10 x i8] c"IDAGetJac\00", align 1
@__func__.IDAGetJacCj = private unnamed_addr constant [12 x i8] c"IDAGetJacCj\00", align 1
@__func__.IDAGetJacTime = private unnamed_addr constant [14 x i8] c"IDAGetJacTime\00", align 1
@__func__.IDAGetJacNumSteps = private unnamed_addr constant [18 x i8] c"IDAGetJacNumSteps\00", align 1
@__func__.IDAGetLinWorkSpace = private unnamed_addr constant [19 x i8] c"IDAGetLinWorkSpace\00", align 1
@__func__.IDAGetNumJacEvals = private unnamed_addr constant [18 x i8] c"IDAGetNumJacEvals\00", align 1
@__func__.IDAGetNumPrecEvals = private unnamed_addr constant [19 x i8] c"IDAGetNumPrecEvals\00", align 1
@__func__.IDAGetNumPrecSolves = private unnamed_addr constant [20 x i8] c"IDAGetNumPrecSolves\00", align 1
@__func__.IDAGetNumLinIters = private unnamed_addr constant [18 x i8] c"IDAGetNumLinIters\00", align 1
@__func__.IDAGetNumLinConvFails = private unnamed_addr constant [22 x i8] c"IDAGetNumLinConvFails\00", align 1
@__func__.IDAGetNumJTSetupEvals = private unnamed_addr constant [22 x i8] c"IDAGetNumJTSetupEvals\00", align 1
@__func__.IDAGetNumJtimesEvals = private unnamed_addr constant [21 x i8] c"IDAGetNumJtimesEvals\00", align 1
@__func__.IDAGetNumLinResEvals = private unnamed_addr constant [21 x i8] c"IDAGetNumLinResEvals\00", align 1
@__func__.IDAGetLastLinFlag = private unnamed_addr constant [18 x i8] c"IDAGetLastLinFlag\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"IDALS_SUCCESS\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"IDALS_MEM_NULL\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"IDALS_LMEM_NULL\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"IDALS_ILL_INPUT\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"IDALS_MEM_FAIL\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"IDALS_PMEM_NULL\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"IDALS_JACFUNC_UNRECVR\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"IDALS_JACFUNC_RECVR\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"IDALS_SUNMAT_FAIL\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"IDALS_SUNLS_FAIL\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@__func__.idaLsATimes = private unnamed_addr constant [12 x i8] c"idaLsATimes\00", align 1
@__func__.idaLsPSetup = private unnamed_addr constant [12 x i8] c"idaLsPSetup\00", align 1
@__func__.idaLsPSolve = private unnamed_addr constant [12 x i8] c"idaLsPSolve\00", align 1
@__func__.idaLsDQJac = private unnamed_addr constant [11 x i8] c"idaLsDQJac\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Linear solver memory is NULL.\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"unrecognized matrix type for idaLsDQJac\00", align 1
@__func__.idaLsDQJtimes = private unnamed_addr constant [14 x i8] c"idaLsDQJtimes\00", align 1
@__func__.idaLsInitialize = private unnamed_addr constant [16 x i8] c"idaLsInitialize\00", align 1
@.str.32 = private unnamed_addr constant [53 x i8] c"No Jacobian constructor available for SUNMatrix type\00", align 1
@__func__.idaLsSetup = private unnamed_addr constant [11 x i8] c"idaLsSetup\00", align 1
@.str.33 = private unnamed_addr constant [58 x i8] c"The SUNMatZero routine failed in an unrecoverable manner.\00", align 1
@.str.34 = private unnamed_addr constant [56 x i8] c"The Jacobian routine failed in an unrecoverable manner.\00", align 1
@__func__.idaLsSolve = private unnamed_addr constant [11 x i8] c"idaLsSolve\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"Error in calling SUNLinSolSetScalingVectors\00", align 1
@.str.36 = private unnamed_addr constant [71 x i8] c"The Jacobian x vector setup routine failed in an unrecoverable manner.\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"Failure in SUNLinSol external package\00", align 1
@.str.38 = private unnamed_addr constant [68 x i8] c"The preconditioner solve routine failed in an unrecoverable manner.\00", align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"Unrecognized error return value from SUNLinSolSolve\00", align 1
@__func__.idaLsPerf = private unnamed_addr constant [10 x i8] c"idaLsPerf\00", align 1
@.str.40 = private unnamed_addr constant [106 x i8] c"Warning: at t = %.15g, poor iterative algorithm performance. Nonlinear convergence failure rate is %.15g.\00", align 1
@.str.41 = private unnamed_addr constant [103 x i8] c"Warning: at t = %.15g, poor iterative algorithm performance. Linear convergence failure rate is %.15g.\00", align 1
@__func__.IDASetLinearSolverB = private unnamed_addr constant [20 x i8] c"IDASetLinearSolverB\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"Illegal attempt to call before calling IDAAdjInit.\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"Illegal value for which.\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"IDASetJacFnB\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"IDASetJacFnBS\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"IDASetEpsLinB\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"IDASetLSNormFactorB\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"IDASetLinearSolutionScalingB\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"IDASetIncrementFactorB\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"IDASetPreconditionerB\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"IDASetPreconditionerBS\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"IDASetJacTimesB\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"IDASetJacTimesBS\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"IDASetJacTimesResFnB\00", align 1
@__func__.idaLs_AccessLMemB = private unnamed_addr constant [18 x i8] c"idaLs_AccessLMemB\00", align 1
@.str.55 = private unnamed_addr constant [59 x i8] c"Linear solver memory is NULL for the backward integration.\00", align 1
@__func__.idaLsJacBWrapper = private unnamed_addr constant [17 x i8] c"idaLsJacBWrapper\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"Bad t for interpolation.\00", align 1
@__func__.idaLsJacBSWrapper = private unnamed_addr constant [18 x i8] c"idaLsJacBSWrapper\00", align 1
@__func__.idaLsPrecSetupB = private unnamed_addr constant [16 x i8] c"idaLsPrecSetupB\00", align 1
@__func__.idaLsPrecSetupBS = private unnamed_addr constant [17 x i8] c"idaLsPrecSetupBS\00", align 1
@__func__.idaLsPrecSolveB = private unnamed_addr constant [16 x i8] c"idaLsPrecSolveB\00", align 1
@__func__.idaLsPrecSolveBS = private unnamed_addr constant [17 x i8] c"idaLsPrecSolveBS\00", align 1
@__func__.idaLsJacTimesSetupB = private unnamed_addr constant [20 x i8] c"idaLsJacTimesSetupB\00", align 1
@__func__.idaLsJacTimesSetupBS = private unnamed_addr constant [21 x i8] c"idaLsJacTimesSetupBS\00", align 1
@__func__.idaLsJacTimesVecB = private unnamed_addr constant [18 x i8] c"idaLsJacTimesVecB\00", align 1
@__func__.idaLsJacTimesVecBS = private unnamed_addr constant [19 x i8] c"idaLsJacTimesVecBS\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -9, 1) i32 @IDASetLinearSolver(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, i32 noundef 101, ptr noundef nonnull @__func__.IDASetLinearSolver, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -3, i32 noundef 107, ptr noundef nonnull @__func__.IDASetLinearSolver, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #12
  br label %bb.au

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !120
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !121
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 116, ptr noundef nonnull @__func__.IDASetLinearSolver, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #12
  br label %bb.au

bb.h:                                             ; preds = %bb.f
  %i.j = tail call i32 @SUNLinSolGetType(ptr noundef nonnull %1) #12 ; 5 uses
  %i.k = icmp ne i32 %i.j, 0                      ; 4 uses
  %i.l = zext i1 %i.k to i32
  %i.m = icmp ne i32 %i.j, 1
  %i.n = icmp ne i32 %i.j, 3                      ; 4 uses
  %i.o = and i1 %i.m, %i.n                        ; 2 uses
  %i.p = zext i1 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !122
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !123
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 133, ptr noundef nonnull @__func__.IDASetLinearSolver, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #12
  br label %bb.au

bb.k:                                             ; preds = %bb.i
  %i.aa = icmp eq ptr %2, null                    ; 6 uses
  %or.cond.not = or i1 %i.aa, %i.n
  br i1 %or.cond.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 141, ptr noundef nonnull @__func__.IDASetLinearSolver, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #12
  br label %bb.au

bb.m:                                             ; preds = %bb.k
  br i1 %i.k, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !124
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 151, ptr noundef nonnull @__func__.IDASetLinearSolver, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #12
  br label %bb.au

bb.p:                                             ; preds = %bb.n
  br i1 %i.n, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !125
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !126
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 160, ptr noundef nonnull @__func__.IDASetLinearSolver, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #12
  br label %bb.au

bb.t:                                             ; preds = %bb.r, %bb.p
  %or.cond3 = xor i1 %i.n, %i.o
  br i1 %or.cond3, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 169, ptr noundef nonnull @__func__.IDASetLinearSolver, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #12
  br label %bb.au

bb.w:                                             ; preds = %bb.u, %bb.t
  br i1 %i.aa, label %switch.early.test, label %bb.aa

switch.early.test:                                ; preds = %bb.w
  switch i32 %i.j, label %bb.x [
    i32 3, label %bb.aa
    i32 1, label %bb.aa
  ]

bb.x:                                             ; preds = %switch.early.test
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 176, ptr noundef nonnull @__func__.IDASetLinearSolver, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #12
  br label %bb.au

bb.y:                                             ; preds = %bb.m
  br i1 %i.aa, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 183, ptr noundef nonnull @__func__.IDASetLinearSolver, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #12
  br label %bb.au

bb.aa:                                            ; preds = %switch.early.test, %switch.early.test, %bb.w, %bb.y
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1880 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !127 ; 2 uses
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ar = tail call i32 %i.aq(ptr noundef nonnull %0) #12 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1848
  store ptr @idaLsInitialize, ptr %i.as, align 8, !tbaa !128
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store ptr @idaLsSetup, ptr %i.at, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1864
  store ptr @idaLsSolve, ptr %i.au, align 8, !tbaa !129
  store ptr @idaLsFree, ptr %i.ap, align 8, !tbaa !127
  %i.av = select i1 %i.k, ptr @idaLsPerf, ptr null
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1872
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !130
  %calloc = tail call dereferenceable_or_null(328) ptr @calloc(i64 1, i64 328) ; 30 uses
  %i.ax = icmp eq ptr %calloc, null
  br i1 %i.ax, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -4, i32 noundef 205, ptr noundef nonnull @__func__.IDASetLinearSolver, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #12
  br label %bb.au

bb.ae:                                            ; preds = %bb.ac
  %i.ay = getelementptr inbounds nuw i8, ptr %calloc, i64 32
  store ptr %1, ptr %i.ay, align 8, !tbaa !34
  store i32 %i.l, ptr %calloc, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %calloc, i64 4
  store i32 %i.p, ptr %i.az, align 4, !tbaa !36
  %i.ba = getelementptr inbounds nuw i8, ptr %calloc, i64 40
  store ptr %2, ptr %i.ba, align 8, !tbaa !37
  %not. = xor i1 %i.aa, true
  %.sink129 = zext i1 %not. to i32
  %.sink128 = select i1 %i.aa, ptr null, ptr @idaLsDQJac
  %.sink = select i1 %i.aa, ptr null, ptr %0
  %i.bb = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store i32 %.sink129, ptr %i.bb, align 8, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  store ptr %.sink128, ptr %i.bc, align 8, !tbaa !39
  %i.bd = getelementptr inbounds nuw i8, ptr %calloc, i64 24
  store ptr %.sink, ptr %i.bd, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %calloc, i64 288
  store i32 1, ptr %i.be, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %calloc, i64 296
  store ptr null, ptr %i.bf, align 8, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %calloc, i64 304
  store ptr @idaLsDQJtimes, ptr %i.bg, align 8, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !44
  %i.bj = getelementptr inbounds nuw i8, ptr %calloc, i64 312
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %calloc, i64 320
  store ptr %0, ptr %i.bk, align 8, !tbaa !46
  %i.bl = getelementptr inbounds nuw i8, ptr %calloc, i64 256
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %calloc, i64 280
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %calloc, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, i8 0, i64 64, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %calloc, i64 104
  store double 5.000000e-02, ptr %i.bq, align 8, !tbaa !49
  %i.br = getelementptr inbounds nuw i8, ptr %calloc, i64 120
  store double 1.000000e+00, ptr %i.br, align 8, !tbaa !50
  %i.bs = getelementptr inbounds nuw i8, ptr %calloc, i64 248
  store i32 0, ptr %i.bs, align 8, !tbaa !51
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !29
  %.not124 = icmp eq ptr %i.bv, null
  br i1 %.not124, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bw = tail call i32 @SUNLinSolSetATimes(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull @idaLsATimes) #12
  %.not125 = icmp eq i32 %i.bw, 0
  br i1 %.not125, label %._crit_edge, label %bb.ag

._crit_edge:                                      ; preds = %bb.af
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -9, i32 noundef 258, ptr noundef nonnull @__func__.IDASetLinearSolver, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #12
  tail call void @free(ptr noundef nonnull %calloc) #12
  br label %bb.au

bb.ah:                                            ; preds = %._crit_edge, %bb.ae
  %i.bx = phi ptr [ %.pre, %._crit_edge ], [ %i.bt, %bb.ae ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !52
  %.not126 = icmp eq ptr %i.bz, null
  br i1 %.not126, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ca = tail call i32 @SUNLinSolSetPreconditioner(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #12
  %.not127 = icmp eq i32 %i.ca, 0
  br i1 %.not127, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -9, i32 noundef 272, ptr noundef nonnull @__func__.IDASetLinearSolver, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #12
  tail call void @free(ptr noundef nonnull %calloc) #12
  br label %bb.au

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.cb = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.cc = tail call ptr @N_VClone(ptr noundef %i.cb) #12 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %calloc, i64 48
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !53
  %i.ce = icmp eq ptr %i.cc, null
  br i1 %i.ce, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -4, i32 noundef 284, ptr noundef nonnull @__func__.IDASetLinearSolver, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #12
  tail call void @free(ptr noundef nonnull %calloc) #12
  br label %bb.au

bb.am:                                            ; preds = %bb.ak
  %i.cf = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.cg = tail call ptr @N_VClone(ptr noundef %i.cf) #12 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %calloc, i64 56
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !54
  %i.ci = icmp eq ptr %i.cg, null
  br i1 %i.ci, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -4, i32 noundef 294, ptr noundef nonnull @__func__.IDASetLinearSolver, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #12
  tail call void @N_VDestroy(ptr noundef nonnull %i.cc) #12
  tail call void @free(ptr noundef nonnull %calloc) #12
  br label %bb.au

bb.ao:                                            ; preds = %bb.am
  %i.cj = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.ck = tail call ptr @N_VClone(ptr noundef %i.cj) #12 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %calloc, i64 64
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !55
  %i.cm = icmp eq ptr %i.ck, null
  br i1 %i.cm, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -4, i32 noundef 305, ptr noundef nonnull @__func__.IDASetLinearSolver, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #12
  tail call void @N_VDestroy(ptr noundef nonnull %i.cc) #12
  tail call void @N_VDestroy(ptr noundef nonnull %i.cg) #12
  tail call void @free(ptr noundef nonnull %calloc) #12
  br label %bb.au

bb.aq:                                            ; preds = %bb.ao
  br i1 %i.k, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  %i.cn = tail call i64 @N_VGetLength(ptr noundef nonnull %i.cc) #12
  %i.co = icmp slt i64 %i.cn, 1
  br i1 %i.co, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cp = tail call i64 @N_VGetLength(ptr noundef nonnull %i.cc) #12
  %i.cq = sitofp i64 %i.cp to double
  %i.cr = tail call double @sqrt(double noundef %i.cq) #12
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.cs = phi double [ %i.cr, %bb.as ], [ 0.000000e+00, %bb.ar ]
  %i.ct = getelementptr inbounds nuw i8, ptr %calloc, i64 112
  store double %i.cs, ptr %i.ct, align 8, !tbaa !56
  %i.cu = add i32 %i.j, -1
  %switch.and = and i32 %i.cu, -3
  %switch.selectcmp = icmp ne i32 %switch.and, 0
  %i.cv = zext i1 %switch.selectcmp to i32
  br label %.thread

.thread:                                          ; preds = %bb.aq, %bb.at
  %.sink141 = phi i32 [ 1, %bb.aq ], [ %i.cv, %bb.at ]
  %i.cw = getelementptr inbounds nuw i8, ptr %calloc, i64 96
  store i32 %.sink141, ptr %i.cw, align 8, !tbaa !57
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1888
  store ptr %calloc, ptr %i.cx, align 8, !tbaa !58
  br label %bb.au

bb.au:                                            ; preds = %.thread, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ag, %bb.ad, %bb.z, %bb.x, %bb.v, %bb.s, %bb.o, %bb.l, %bb.j, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -3, %bb.d ], [ -3, %bb.g ], [ -3, %bb.j ], [ -3, %bb.l ], [ -3, %bb.o ], [ -3, %bb.s ], [ -3, %bb.v ], [ -3, %bb.x ], [ -4, %bb.ad ], [ -9, %bb.ag ], [ -9, %bb.aj ], [ -4, %bb.al ], [ -4, %bb.an ], [ -4, %bb.ap ], [ 0, %.thread ], [ -3, %bb.z ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @IDAProcessError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @SUNLinSolGetType(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @idaLsInitialize(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 17 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 1312, ptr noundef nonnull @__func__.idaLsInitialize, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30) #12
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.g, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.g, align 8, !tbaa !38
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !133
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !135
  %.not41 = icmp eq ptr %i.l, null
  br i1 %.not41, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @SUNMatGetID(ptr noundef nonnull %i.e) #12
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.p = tail call i32 @SUNMatGetID(ptr noundef %i.o) #12
end_hunk_0
