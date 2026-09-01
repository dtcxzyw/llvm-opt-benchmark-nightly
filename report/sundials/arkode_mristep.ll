Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_mristep?download=true
inline.NumInlined: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__func__.MRIStepCreate = private unnamed_addr constant [14 x i8] c"MRIStepCreate\00", align 1
@.str = private unnamed_addr constant [62 x i8] c"/opt-bench/work/sundials/sundials/src/arkode/arkode_mristep.c\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Must specify at least one of fe, fi (both NULL).\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"y0 = NULL illegal.\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"The inner stepper memory is NULL\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"sunctx = NULL illegal.\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"arkode_mem = NULL illegal.\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Allocation of arkode_mem failed.\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Error setting default solver options\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Error creating default Newton solver\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Error attaching default Newton solver\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Error allocating MRIStep storage\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Unable to initialize main ARKODE infrastructure\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"A required inner stepper function is NULL\00", align 1
@__func__.MRIStepReInit = private unnamed_addr constant [14 x i8] c"MRIStepReInit\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"Attempt to call before ARKODE initialized.\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"Unable to reinitialize main ARKODE infrastructure\00", align 1
@__func__.mriStep_Resize = private unnamed_addr constant [15 x i8] c"mriStep_Resize\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Unable to resize vector\00", align 1
@__func__.mriStep_Reset = private unnamed_addr constant [14 x i8] c"mriStep_Reset\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Unable to reset the inner stepper\00", align 1
@__func__.mriStep_ComputeState = private unnamed_addr constant [21 x i8] c"mriStep_ComputeState\00", align 1
@__func__.mriStep_PrintMem = private unnamed_addr constant [17 x i8] c"mriStep_PrintMem\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"MRIStep: q = %i\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"MRIStep: p = %i\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"MRIStep: istage = %i\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"MRIStep: cur_stage = %i\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"MRIStep: stages = %i\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"MRIStep: maxcor = %i\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"MRIStep: msbp = %i\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"MRIStep: predictor = %i\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"MRIStep: convfail = %i\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"MRIStep: stagetypes =\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c" %i\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"MRIStep: nfse = %li\0A\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"MRIStep: nfsi = %li\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"MRIStep: nsetups = %li\0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"MRIStep: nstlp = %li\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"MRIStep: nls_iters = %li\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"MRIStep: nls_fails = %li\0A\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"MRIStep: inner_fails = %li\0A\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"MRIStep: user_linear = %i\0A\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"MRIStep: user_linear_timedep = %i\0A\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"MRIStep: user_explicit = %i\0A\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"MRIStep: user_implicit = %i\0A\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"MRIStep: jcur = %i\0A\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"MRIStep: ownNLS = %i\0A\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"MRIStep: Coupling structure:\0A\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"MRIStep: gamma = %.15g\0A\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"MRIStep: gammap = %.15g\0A\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"MRIStep: gamrat = %.15g\0A\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"MRIStep: crate = %.15g\0A\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"MRIStep: delnrm_p = %.15g\0A\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"MRIStep: eRNrm = %.15g\0A\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"MRIStep: nlscoef = %.15g\0A\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"MRIStep: crdown = %.15g\0A\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"MRIStep: rdiv = %.15g\0A\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"MRIStep: dgmax = %.15g\0A\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"MRIStep: Ae_row =\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c" %.15g\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"MRIStep: Ai_row =\00", align 1
@__func__.mriStep_AttachLinsol = private unnamed_addr constant [21 x i8] c"mriStep_AttachLinsol\00", align 1
@__func__.mriStep_DisableLSetup = private unnamed_addr constant [22 x i8] c"mriStep_DisableLSetup\00", align 1
@__func__.mriStep_GetLmem = private unnamed_addr constant [16 x i8] c"mriStep_GetLmem\00", align 1
@__func__.mriStep_GetImplicitRHS = private unnamed_addr constant [23 x i8] c"mriStep_GetImplicitRHS\00", align 1
@__func__.mriStep_GetGammas = private unnamed_addr constant [18 x i8] c"mriStep_GetGammas\00", align 1
@__func__.mriStep_Init = private unnamed_addr constant [13 x i8] c"mriStep_Init\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"Could not create coupling table\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"Error in coupling table\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"Unknown method type\00", align 1
@.str.59 = private unnamed_addr constant [77 x i8] c"Temporal error estimation cannot be performed without embedding coefficients\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"A memory request failed.\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"Error allocating inner stepper memory\00", align 1
@.str.62 = private unnamed_addr constant [54 x i8] c"Non-trival predictors require an interpolation module\00", align 1
@.str.63 = private unnamed_addr constant [41 x i8] c"The linear solver's init routine failed.\00", align 1
@.str.64 = private unnamed_addr constant [47 x i8] c"Unable to initialize SUNNonlinearSolver object\00", align 1
@.str.65 = private unnamed_addr constant [70 x i8] c"Timestep adaptivity disabled, but missing user-defined fixed stepsize\00", align 1
@.str.66 = private unnamed_addr constant [50 x i8] c"SUNAdaptController type is unsupported by MRIStep\00", align 1
@.str.67 = private unnamed_addr constant [66 x i8] c"Timestep adaptivity enabled, but non-embedded MRI table specified\00", align 1
@.str.68 = private unnamed_addr constant [72 x i8] c"MRI H-TOL SUNAdaptController provided, but unsupported by inner stepper\00", align 1
@__func__.mriStep_ComputeH0 = private unnamed_addr constant [18 x i8] c"mriStep_ComputeH0\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"error calling slow RHS function(s)\00", align 1
@__func__.mriStep_FullRHS = private unnamed_addr constant [16 x i8] c"mriStep_FullRHS\00", align 1
@.str.70 = private unnamed_addr constant [91 x i8] c"Time-stepping module missing fullrhs routine (required by requested solver configuration).\00", align 1
@.str.71 = private unnamed_addr constant [77 x i8] c"At t = %.15g, the right-hand side routine failed in an unrecoverable manner.\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"Unknown full RHS mode\00", align 1
@__func__.mriStep_UpdateF0 = private unnamed_addr constant [17 x i8] c"mriStep_UpdateF0\00", align 1
@__func__.mriStep_TakeStepMRIGARK = private unnamed_addr constant [24 x i8] c"mriStep_TakeStepMRIGARK\00", align 1
@.str.73 = private unnamed_addr constant [49 x i8] c"Unable to reset the inner stepper error estimate\00", align 1
@.str.74 = private unnamed_addr constant [42 x i8] c"Unable to set the inner stepper tolerance\00", align 1
@__func__.mriStep_TakeStepMRISR = private unnamed_addr constant [22 x i8] c"mriStep_TakeStepMRISR\00", align 1
@__func__.mriStep_TakeStepMERK = private unnamed_addr constant [21 x i8] c"mriStep_TakeStepMERK\00", align 1
@.str.75 = private unnamed_addr constant [33 x i8] c"Time step module memory is NULL.\00", align 1
@__func__.mriStep_SetCoupling = private unnamed_addr constant [20 x i8] c"mriStep_SetCoupling\00", align 1
@.str.76 = private unnamed_addr constant [60 x i8] c"No MRI method is available for the requested configuration.\00", align 1
@.str.77 = private unnamed_addr constant [50 x i8] c"An error occurred in constructing coupling table.\00", align 1
@__func__.mriStep_CheckCoupling = private unnamed_addr constant [22 x i8] c"mriStep_CheckCoupling\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"stages < 1!\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"method order < 1\00", align 1
@.str.80 = private unnamed_addr constant [59 x i8] c"embedding order < 1, but ARKodeSetFixedStep was not called\00", align 1
@.str.81 = private unnamed_addr constant [44 x i8] c"Invalid coupling table for an IMEX problem!\00", align 1
@.str.82 = private unnamed_addr constant [48 x i8] c"Invalid coupling table for an explicit problem!\00", align 1
@.str.83 = private unnamed_addr constant [48 x i8] c"Invalid coupling table for an implicit problem!\00", align 1
@.str.84 = private unnamed_addr constant [37 x i8] c"Coupling can be up to ERK (at most)!\00", align 1
@.str.85 = private unnamed_addr constant [38 x i8] c"Coupling can be up to DIRK (at most)!\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"Invalid MERK group index!\00", align 1
@.str.87 = private unnamed_addr constant [44 x i8] c"Duplicated/missing stages from MERK groups!\00", align 1
@.str.88 = private unnamed_addr constant [50 x i8] c"solve-coupled DIRK stages not currently supported\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"Stage times must be sorted.\00", align 1
@.str.90 = private unnamed_addr constant [37 x i8] c"First stage must equal old solution.\00", align 1
@.str.91 = private unnamed_addr constant [34 x i8] c"Final stage time must be equal 1.\00", align 1
@__func__.mriStep_StageERKFast = private unnamed_addr constant [21 x i8] c"mriStep_StageERKFast\00", align 1
@.str.92 = private unnamed_addr constant [40 x i8] c"Failure when evolving the inner stepper\00", align 1
@.str.93 = private unnamed_addr constant [55 x i8] c"Unable to get accumulated error from the inner stepper\00", align 1
@__func__.mriStep_StageDIRKFast = private unnamed_addr constant [22 x i8] c"mriStep_StageDIRKFast\00", align 1
@.str.94 = private unnamed_addr constant [37 x i8] c"This routine is not yet implemented.\00", align 1
@__func__.mriStep_Predict = private unnamed_addr constant [16 x i8] c"mriStep_Predict\00", align 1
@.str.95 = private unnamed_addr constant [32 x i8] c"Interpolation structure is NULL\00", align 1
@__func__.mriStep_StageSetup = private unnamed_addr constant [19 x i8] c"mriStep_StageSetup\00", align 1
@__func__.mriStep_SlowRHS = private unnamed_addr constant [16 x i8] c"mriStep_SlowRHS\00", align 1
@__func__.MRIStepInnerStepper_Create = private unnamed_addr constant [27 x i8] c"MRIStepInnerStepper_Create\00", align 1
@__func__.MRIStepInnerStepper_SetContent = private unnamed_addr constant [31 x i8] c"MRIStepInnerStepper_SetContent\00", align 1
@.str.96 = private unnamed_addr constant [29 x i8] c"Inner stepper memory is NULL\00", align 1
@__func__.MRIStepInnerStepper_GetContent = private unnamed_addr constant [31 x i8] c"MRIStepInnerStepper_GetContent\00", align 1
@__func__.MRIStepInnerStepper_SetEvolveFn = private unnamed_addr constant [32 x i8] c"MRIStepInnerStepper_SetEvolveFn\00", align 1
@.str.97 = private unnamed_addr constant [43 x i8] c"Inner stepper operations structure is NULL\00", align 1
@__func__.MRIStepInnerStepper_SetFullRhsFn = private unnamed_addr constant [33 x i8] c"MRIStepInnerStepper_SetFullRhsFn\00", align 1
@__func__.MRIStepInnerStepper_SetResetFn = private unnamed_addr constant [31 x i8] c"MRIStepInnerStepper_SetResetFn\00", align 1
@__func__.MRIStepInnerStepper_SetAccumulatedErrorGetFn = private unnamed_addr constant [45 x i8] c"MRIStepInnerStepper_SetAccumulatedErrorGetFn\00", align 1
@__func__.MRIStepInnerStepper_SetAccumulatedErrorResetFn = private unnamed_addr constant [47 x i8] c"MRIStepInnerStepper_SetAccumulatedErrorResetFn\00", align 1
@__func__.MRIStepInnerStepper_SetRTolFn = private unnamed_addr constant [30 x i8] c"MRIStepInnerStepper_SetRTolFn\00", align 1
@__func__.MRIStepInnerStepper_AddForcing = private unnamed_addr constant [31 x i8] c"MRIStepInnerStepper_AddForcing\00", align 1
@__func__.MRIStepInnerStepper_GetForcingData = private unnamed_addr constant [35 x i8] c"MRIStepInnerStepper_GetForcingData\00", align 1
@.str.98 = private unnamed_addr constant [26 x i8] c"MRIStepInnerStepper Mem:\0A\00", align 1
@.str.99 = private unnamed_addr constant [42 x i8] c"MRIStepInnerStepper: inner_nforcing = %i\0A\00", align 1
@__func__.mriStep_SetInnerForcing = private unnamed_addr constant [24 x i8] c"mriStep_SetInnerForcing\00", align 1
@switch.table.mriStep_Init = private unnamed_addr constant [5 x ptr] [ptr @mriStep_TakeStepMRIGARK, ptr @mriStep_TakeStepMRIGARK, ptr @mriStep_TakeStepMRIGARK, ptr @mriStep_TakeStepMERK, ptr @mriStep_TakeStepMRISR], align 8
@switch.table.mriStep_SetCoupling = private unnamed_addr constant [4 x i8] c"\D8\D9\CF\D0", align 4
@switch.table.mriStep_SetCoupling.1 = private unnamed_addr constant [4 x i8] c"\D6\CB\CC\CD", align 4
@switch.table.mriStep_SetCoupling.2 = private unnamed_addr constant [5 x i8] c"\D1\D4\C8\CA\DE", align 4
@switch.table.mriStep_SetCoupling.3 = private unnamed_addr constant [4 x i8] c"\D4\C9\CA\DE", align 4

; Function Attrs: nounwind uwtable
define ptr @MRIStepCreate(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %1, null                       ; 2 uses
  %or.cond = and i1 %6, %7
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -22, i32 noundef 51, ptr noundef nonnull @__func__.MRIStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  br label %mriStepInnerStepper_HasRequiredOps.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -22, i32 noundef 59, ptr noundef nonnull @__func__.MRIStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #14
  br label %mriStepInnerStepper_HasRequiredOps.exit

bb.e:                                             ; preds = %bb.c
  %i.c = icmp eq ptr %4, null
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -22, i32 noundef 67, ptr noundef nonnull @__func__.MRIStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  br label %mriStepInnerStepper_HasRequiredOps.exit

bb.g:                                             ; preds = %bb.e
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -22, i32 noundef 75, ptr noundef nonnull @__func__.MRIStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #14
  br label %mriStepInnerStepper_HasRequiredOps.exit

bb.i:                                             ; preds = %bb.g
  %i.d = tail call ptr @arkCreate(ptr noundef nonnull %5) #14 ; 64 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 84, ptr noundef nonnull @__func__.MRIStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #14
  br label %mriStepInnerStepper_HasRequiredOps.exit

bb.k:                                             ; preds = %bb.i
  %i.f = tail call noalias dereferenceable_or_null(528) ptr @calloc(i64 noundef 1, i64 noundef 528) #15 ; 24 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.d, i32 noundef -20, i32 noundef 93, ptr noundef nonnull @__func__.MRIStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #14
  call void @ARKodeFree(ptr noundef nonnull %i.a) #14
  br label %mriStepInnerStepper_HasRequiredOps.exit

bb.m:                                             ; preds = %bb.k
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  store ptr @mriStep_AttachLinsol, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  store ptr @mriStep_DisableLSetup, ptr %i.i, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  store ptr @mriStep_GetLmem, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  store ptr @mriStep_GetImplicitRHS, ptr %i.k, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  store ptr @mriStep_GetGammas, ptr %i.l, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store ptr @mriStep_Init, ptr %i.m, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr @mriStep_FullRHS, ptr %i.n, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store ptr @mriStep_TakeStepMRIGARK, ptr %i.o, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store ptr @mriStep_SetUserData, ptr %i.p, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr @mriStep_PrintAllStats, ptr %i.q, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr @mriStep_WriteParameters, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store ptr null, ptr %i.s, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  store ptr @mriStep_Resize, ptr %i.t, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  store ptr @mriStep_Reset, ptr %i.u, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  store ptr @mriStep_Free, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  store ptr @mriStep_PrintMem, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  store ptr @mriStep_SetDefaults, ptr %i.x, align 8, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 376
  store ptr @mriStep_ComputeState, ptr %i.y, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  store ptr @mriStep_SetOptions, ptr %i.z, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  store ptr @mriStep_SetOrder, ptr %i.aa, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  store ptr @mriStep_SetNonlinearSolver, ptr %i.ab, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  store ptr @mriStep_SetLinear, ptr %i.ac, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  store ptr @mriStep_SetNonlinear, ptr %i.ad, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  store ptr @mriStep_SetNlsRhsFn, ptr %i.ae, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  store ptr @mriStep_SetDeduceImplicitRhs, ptr %i.af, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  store ptr @mriStep_SetNonlinCRDown, ptr %i.ag, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  store ptr @mriStep_SetNonlinRDiv, ptr %i.ah, align 8, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  store ptr @mriStep_SetDeltaGammaMax, ptr %i.ai, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  store ptr @mriStep_SetLSetupFrequency, ptr %i.aj, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 464
  store ptr @mriStep_SetPredictorMethod, ptr %i.ak, align 8, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 472
  store ptr @mriStep_SetMaxNonlinIters, ptr %i.al, align 8, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  store ptr @mriStep_SetNonlinConvCoef, ptr %i.am, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 488
  store ptr @mriStep_SetStagePredictFn, ptr %i.an, align 8, !tbaa !53
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  store ptr @mriStep_GetNumRhsEvals, ptr %i.ao, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 496
  store ptr @mriStep_GetNumLinSolvSetups, ptr %i.ap, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 504
  store ptr @mriStep_GetCurrentGamma, ptr %i.aq, align 8, !tbaa !56
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  store ptr @mriStep_SetAdaptController, ptr %i.ar, align 8, !tbaa !57
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  store ptr @mriStep_GetEstLocalErrors, ptr %i.as, align 8, !tbaa !58
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  store ptr @mriStep_GetNonlinearSystemData, ptr %i.at, align 8, !tbaa !59
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 520
  store ptr @mriStep_GetNumNonlinSolvIters, ptr %i.au, align 8, !tbaa !60
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 528
  store ptr @mriStep_GetNumNonlinSolvConvFails, ptr %i.av, align 8, !tbaa !61
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 536
  store ptr @mriStep_GetNonlinSolvStats, ptr %i.aw, align 8, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 584
  store ptr @mriStep_SetInnerForcing, ptr %i.ax, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store ptr @mriStep_GetStageIndex, ptr %i.ay, align 8, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  store i32 1, ptr %i.az, align 8, !tbaa !65
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  store i32 1, ptr %i.ba, align 8, !tbaa !66
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr %i.f, ptr %i.bb, align 8, !tbaa !67
  %i.bc = tail call i32 @mriStep_SetDefaults(ptr noundef nonnull %i.d) #14 ; 2 uses
  %.not77 = icmp eq i32 %i.bc, 0
  br i1 %.not77, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.d, i32 noundef %i.bc, i32 noundef 152, ptr noundef nonnull @__func__.MRIStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #14
  call void @ARKodeFree(ptr noundef nonnull %i.a) #14
  br label %mriStepInnerStepper_HasRequiredOps.exit

bb.o:                                             ; preds = %bb.m
  store ptr %0, ptr %i.f, align 8, !tbaa !68
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %1, ptr %i.bd, align 8, !tbaa !77
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i32 0, ptr %i.be, align 4, !tbaa !78
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i32 0, ptr %i.bf, align 8, !tbaa !79
  %8 = insertelement <2 x ptr> poison, ptr %0, i64 0
  %9 = insertelement <2 x ptr> %8, ptr %1, i64 1
  %10 = icmp ne <2 x ptr> %9, splat (ptr null)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bh = zext <2 x i1> %10 to <2 x i32>
  store <2 x i32> %i.bh, ptr %i.bg, align 8, !tbaa !80
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 904 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 896 ; 4 uses
  %i.bk = load <2 x i64>, ptr %i.bj, align 8, !tbaa !81
  %i.bl = add nsw <2 x i64> %i.bk, <i64 14, i64 49>
  store <2 x i64> %i.bl, ptr %i.bj, align 8, !tbaa !81
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store ptr null, ptr %i.bm, align 8, !tbaa !82
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 168 ; 2 uses
  store i32 0, ptr %i.bn, align 8, !tbaa !83
  br i1 %7, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.bp = tail call ptr @SUNNonlinSol_Newton(ptr noundef nonnull %3, ptr noundef %i.bo) #14 ; 2 uses
  %.not80 = icmp eq ptr %i.bp, null
  br i1 %.not80, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.d, i32 noundef -20, i32 noundef 186, ptr noundef nonnull @__func__.MRIStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #14
  call void @ARKodeFree(ptr noundef nonnull %i.a) #14
  br label %mriStepInnerStepper_HasRequiredOps.exit

bb.r:                                             ; preds = %bb.p
  %i.bq = tail call i32 @ARKodeSetNonlinearSolver(ptr noundef nonnull %i.d, ptr noundef nonnull %i.bp) #14
  %.not81 = icmp eq i32 %i.bq, 0
  br i1 %.not81, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.d, i32 noundef -20, i32 noundef 194, ptr noundef nonnull @__func__.MRIStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #14
  call void @ARKodeFree(ptr noundef nonnull %i.a) #14
  br label %mriStepInnerStepper_HasRequiredOps.exit

bb.t:                                             ; preds = %bb.r
  store i32 1, ptr %i.bn, align 8, !tbaa !83
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 328
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, i8 0, i64 40, i1 false)
  store double 1.000000e+00, ptr %i.bs, align 8, !tbaa !85
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  store i64 0, ptr %i.bu, align 8, !tbaa !86
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, i8 0, i64 48, i1 false)
  store i32 3, ptr %i.bv, align 8, !tbaa !87
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 512
  %i.bx = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 3, i64 noundef 8) #15 ; 2 uses
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !88
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.d, i32 noundef -20, i32 noundef 230, ptr noundef nonnull @__func__.MRIStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #14
  call void @ARKodeFree(ptr noundef nonnull %i.a) #14
  br label %mriStepInnerStepper_HasRequiredOps.exit

bb.w:                                             ; preds = %bb.u
  %i.bz = load i64, ptr %i.bj, align 8, !tbaa !89
  %i.ca = add nsw i64 %i.bz, 3
  store i64 %i.ca, ptr %i.bj, align 8, !tbaa !89
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 520
  %i.cc = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 3, i64 noundef 8) #15 ; 2 uses
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !90
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.d, i32 noundef -20, i32 noundef 240, ptr noundef nonnull @__func__.MRIStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #14
  call void @ARKodeFree(ptr noundef nonnull %i.a) #14
  br label %mriStepInnerStepper_HasRequiredOps.exit

bb.y:                                             ; preds = %bb.w
  %i.ce = load i64, ptr %i.bi, align 8, !tbaa !91
  %i.cf = add nsw i64 %i.ce, 3
  store i64 %i.cf, ptr %i.bi, align 8, !tbaa !91
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  store <2 x double> splat (double 1.000000e+00), ptr %i.cg, align 8, !tbaa !92
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 408
  store double 1.000000e+00, ptr %i.ch, align 8, !tbaa !93
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 468
  store i32 0, ptr %i.cj, align 4, !tbaa !94
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 472
  store i32 0, ptr %i.ck, align 8, !tbaa !95
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  store ptr null, ptr %i.cl, align 8, !tbaa !96
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 504
  store i32 0, ptr %i.cm, align 8, !tbaa !97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  %i.cn = tail call i32 @arkInit(ptr noundef nonnull %i.d, double noundef %2, ptr noundef nonnull %3, i32 noundef 0) #14 ; 2 uses
  %.not82 = icmp eq i32 %i.cn, 0
  br i1 %.not82, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.d, i32 noundef %i.cn, i32 noundef 266, ptr noundef nonnull @__func__.MRIStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #14
  call void @ARKodeFree(ptr noundef nonnull %i.a) #14
  br label %mriStepInnerStepper_HasRequiredOps.exit

bb.aa:                                            ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  store ptr %4, ptr %i.co, align 8, !tbaa !98
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !99 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %select.unfold, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !102
  %.not.i = icmp eq ptr %i.cs, null
  br i1 %.not.i, label %select.unfold, label %mriStepInnerStepper_HasRequiredOps.exit

select.unfold:                                    ; preds = %bb.ab, %bb.aa
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.d, i32 noundef -22, i32 noundef 279, ptr noundef nonnull @__func__.MRIStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #14
  call void @ARKodeFree(ptr noundef nonnull %i.a) #14
  br label %mriStepInnerStepper_HasRequiredOps.exit

mriStepInnerStepper_HasRequiredOps.exit:          ; preds = %bb.ab, %select.unfold, %bb.z, %bb.x, %bb.v, %bb.s, %bb.q, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.j ], [ null, %bb.l ], [ null, %bb.n ], [ null, %bb.s ], [ null, %bb.v ], [ null, %bb.x ], [ null, %bb.z ], [ null, %select.unfold ], [ null, %bb.h ], [ null, %bb.q ], [ %i.d, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @arkProcessError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @arkCreate(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @ARKodeFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @mriStep_AttachLinsol(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 %5, ptr noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %mriStep_AccessStepMem.exit, label %bb.b

mriStep_AccessStepMem.exit:                       ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 3290, ptr noundef nonnull @__func__.mriStep_AttachLinsol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #14
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104  ; 2 uses
  %.not11 = icmp eq ptr %i.e, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  store ptr %1, ptr %i.g, align 8, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  store ptr %2, ptr %i.h, align 8, !tbaa !106
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  store ptr %3, ptr %i.i, align 8, !tbaa !107
  store ptr %4, ptr %i.d, align 8, !tbaa !104
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store ptr %6, ptr %i.j, align 8, !tbaa !108
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  store i64 0, ptr %i.k, align 8, !tbaa !109
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store i64 0, ptr %i.l, align 8, !tbaa !86
  br label %bb.e

bb.e:                                             ; preds = %mriStep_AccessStepMem.exit, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -21, %mriStep_AccessStepMem.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @mriStep_DisableLSetup(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %mriStep_AccessStepMem.exit, label %bb.b

mriStep_AccessStepMem.exit:                       ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 3290, ptr noundef nonnull @__func__.mriStep_DisableLSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #14
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  store ptr null, ptr %i.d, align 8, !tbaa !106
  br label %bb.c

bb.c:                                             ; preds = %mriStep_AccessStepMem.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @mriStep_GetLmem(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %mriStep_AccessStepMem.exit, label %bb.b

mriStep_AccessStepMem.exit:                       ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 3290, ptr noundef nonnull @__func__.mriStep_GetLmem, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #14
end_hunk_0
begin_hunk_1_@mriStep_TakeStepMRIGARK:bb.a

bb.v:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !149
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !164
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.cx, double noundef 1.000000e+00, ptr noundef %i.da, ptr noundef nonnull %i.cp) #14
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.cx, ptr noundef nonnull %i.cp) #14
  br label %bb.z

bb.x:                                             ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !188
  %.not267 = icmp eq i32 %i.dc, 0
  br i1 %.not267, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.de = load double, ptr %i.dd, align 8, !tbaa !177
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !178
  %i.dh = tail call i32 @mriStep_FullRHS(ptr noundef nonnull %0, double noundef %i.de, ptr noundef %i.dg, ptr noundef nonnull %i.cg, i32 noundef 0)
  %.not268 = icmp eq i32 %i.dh, 0
  br i1 %.not268, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.s, %bb.t, %bb.w, %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 1, ptr %i.di, align 8, !tbaa !188
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !128 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 2
  br i1 %i.dl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.z
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 424 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 520 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 496 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 488 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 504 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %.thread409
  %indvars.iv454 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next455, %.thread409 ] ; 15 uses
  %i.ep = load double, ptr %i.dm, align 8, !tbaa !189
  %i.eq = load ptr, ptr %i.dn, align 8, !tbaa !120
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !190
  %i.et = getelementptr [8 x i8], ptr %i.es, i64 %indvars.iv454
  %i.eu = getelementptr i8, ptr %i.et, i64 -8
  %i.ev = load double, ptr %i.do, align 8, !tbaa !191
  %i.ew = load <2 x double>, ptr %i.eu, align 8, !tbaa !92
  %i.ex = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ey, <2 x double> %i.fa) ; 2 uses
  %i.fc = extractelement <2 x double> %i.fb, i64 1 ; 6 uses
  store double %i.fc, ptr %i.dp, align 8, !tbaa !177
  %i.fd = trunc nuw nsw i64 %indvars.iv454 to i32 ; 5 uses
  store i32 %i.fd, ptr %i.j, align 4, !tbaa !171
  store i32 %i.fd, ptr %i.k, align 8, !tbaa !172
  %i.fe = load ptr, ptr %i.dq, align 8, !tbaa !139
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv454
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !80
  switch i32 %i.fg, label %.thread398 [
    i32 0, label %bb.ab
    i32 1, label %bb.ae
    i32 2, label %bb.af
    i32 3, label %.thread401
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.fh = extractelement <2 x double> %i.fb, i64 0 ; 2 uses
  %i.fi = tail call i32 @mriStep_ComputeInnerForcing(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.fd, double noundef %i.fh, double noundef %i.fc) ; 2 uses
  %.not286 = icmp eq i32 %i.fi, 0
  br i1 %.not286, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.fj = load ptr, ptr %i.dr, align 8, !tbaa !178
  %i.fk = tail call i32 @mriStep_StageERKFast(ptr noundef nonnull %0, ptr noundef nonnull %i.b, double noundef %i.fh, double noundef %i.fc, ptr noundef %i.fj, ptr poison, i32 noundef %.0) ; 2 uses
  %.not287 = icmp eq i32 %i.fk, 0
  br i1 %.not287, label %.thread398, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 4, ptr %2, align 4, !tbaa !80
  br label %bb.ag

bb.ae:                                            ; preds = %bb.aa
  %i.fl = tail call i32 @mriStep_StageERKNoFast(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.fd)
  br label %bb.ag

bb.af:                                            ; preds = %bb.aa
  %i.fm = tail call i32 @mriStep_StageDIRKNoFast(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.fd, ptr noundef nonnull %2)
  br label %bb.ag

.thread401:                                       ; preds = %bb.aa
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 3829, ptr noundef nonnull @__func__.mriStep_StageDIRKFast, ptr noundef nonnull @.str, ptr noundef nonnull @.str.94) #14
  br label %.loopexit

bb.ag:                                            ; preds = %bb.ad, %bb.af, %bb.ae
  %.5 = phi i32 [ %i.fm, %bb.af ], [ %i.fk, %bb.ad ], [ %i.fl, %bb.ae ] ; 2 uses
  %.not288 = icmp eq i32 %.5, 0
  br i1 %.not288, label %.thread398, label %.loopexit

.thread398:                                       ; preds = %bb.ac, %bb.aa, %bb.ag
  %i.fn = load ptr, ptr %i.ds, align 8, !tbaa !192 ; 2 uses
  %.not289 = icmp eq ptr %i.fn, null
  %.pre459 = load ptr, ptr %i.dq, align 8, !tbaa !139 ; 3 uses
  br i1 %.not289, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.thread398
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.pre459, i64 %indvars.iv454
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !80
  %.not290 = icmp eq i32 %i.fp, -1
  br i1 %.not290, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fq = load double, ptr %i.dp, align 8, !tbaa !177
  %i.fr = load ptr, ptr %i.dr, align 8, !tbaa !178
  %i.fs = load ptr, ptr %i.dt, align 8, !tbaa !166
  %i.ft = tail call i32 %i.fn(double noundef %i.fq, ptr noundef %i.fr, ptr noundef %i.fs) #14
  %.not291 = icmp eq i32 %i.ft, 0
  br i1 %.not291, label %._crit_edge457, label %.loopexit

._crit_edge457:                                   ; preds = %bb.ai
  %.pre458 = load ptr, ptr %i.dq, align 8, !tbaa !139
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge457, %bb.ah, %.thread398
  %i.fu = phi ptr [ %.pre458, %._crit_edge457 ], [ %.pre459, %bb.ah ], [ %.pre459, %.thread398 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv454
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !80
  switch i32 %i.fw, label %bb.al [
    i32 -1, label %mriStepInnerStepper_Reset.exit319.thread406
    i32 0, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.fx = load ptr, ptr %i.ds, align 8, !tbaa !192
  %.not294 = icmp eq ptr %i.fx, null
  br i1 %.not294, label %mriStepInnerStepper_Reset.exit319.thread406, label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.fy = load ptr, ptr %i.du, align 8, !tbaa !98 ; 4 uses
  %i.fz = load ptr, ptr %i.dr, align 8, !tbaa !178
  %i.ga = icmp eq ptr %i.fy, null
  br i1 %i.ga, label %mriStepInnerStepper_Reset.exit319.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !99 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %mriStepInnerStepper_Reset.exit319.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !179 ; 2 uses
  %.not.i317 = icmp eq ptr %i.gf, null
  br i1 %.not.i317, label %mriStepInnerStepper_Reset.exit319.thread406, label %mriStepInnerStepper_Reset.exit319

mriStepInnerStepper_Reset.exit319:                ; preds = %bb.an
  %i.gg = tail call i32 %i.gf(ptr noundef nonnull %i.fy, double noundef %i.fc, ptr noundef %i.fz) #14, !inline_history !180 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  store i32 %i.gg, ptr %i.gh, align 8, !tbaa !163
  %.not295 = icmp eq i32 %i.gg, 0
  br i1 %.not295, label %mriStepInnerStepper_Reset.exit319.thread406, label %mriStepInnerStepper_Reset.exit319.thread

mriStepInnerStepper_Reset.exit319.thread:         ; preds = %bb.al, %bb.am, %mriStepInnerStepper_Reset.exit319
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -34, i32 noundef 2034, ptr noundef nonnull @__func__.mriStep_TakeStepMRIGARK, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #14
  br label %.loopexit

mriStepInnerStepper_Reset.exit319.thread406:      ; preds = %bb.an, %bb.aj, %bb.ak, %mriStepInnerStepper_Reset.exit319
  %i.gi = load ptr, ptr %i.dv, align 8, !tbaa !138
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv454
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !80 ; 2 uses
  br i1 %i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %mriStepInnerStepper_Reset.exit319.thread406
  %i.gl = load ptr, ptr %i.dq, align 8, !tbaa !139
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv454
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !80
  %3 = icmp eq i32 %i.go, -1
  %.not296 = icmp eq i32 %i.gk, -1
  %or.cond436.not = select i1 %3, i1 true, i1 %.not296
  br i1 %or.cond436.not, label %.thread409, label %bb.aq

bb.ap:                                            ; preds = %mriStepInnerStepper_Reset.exit319.thread406
  %.not = icmp eq i32 %i.gk, -1
  br i1 %.not, label %.thread409, label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.gp = load ptr, ptr %i.dw, align 8, !tbaa !165 ; 2 uses
  %.not297 = icmp eq ptr %i.gp, null
  br i1 %.not297, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gq = load i32, ptr %i.dx, align 8, !tbaa !143
  %.not298 = icmp eq i32 %i.gq, 0
  br i1 %.not298, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.gr = load i32, ptr %i.dy, align 4, !tbaa !110
  %.not299 = icmp eq i32 %i.gr, 0
  br i1 %.not299, label %.thread409, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gs = load i32, ptr %i.dz, align 8, !tbaa !193
  %.not300 = icmp eq i32 %i.gs, 0
  br i1 %.not300, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gt = load ptr, ptr %i.dq, align 8, !tbaa !139
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv454
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !80
  %.not301 = icmp eq i32 %i.gv, 2
  br i1 %.not301, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.ar
  %i.gw = load double, ptr %i.dp, align 8, !tbaa !177
  %i.gx = load ptr, ptr %i.dr, align 8, !tbaa !178
  %i.gy = load ptr, ptr %i.dt, align 8, !tbaa !166
  %i.gz = tail call i32 %i.gp(double noundef %i.gw, ptr noundef %i.gx, ptr noundef %i.gy) #14
  %.not302 = icmp eq i32 %i.gz, 0
  br i1 %.not302, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.aq
  %.pr = load i32, ptr %i.dy, align 4, !tbaa !110
  %.not303 = icmp eq i32 %.pr, 0
  br i1 %.not303, label %.thread505, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ha = load i32, ptr %i.dz, align 8, !tbaa !193
  %.not304 = icmp eq i32 %i.ha, 0
  br i1 %.not304, label %._crit_edge460, label %bb.ay

._crit_edge460:                                   ; preds = %bb.ax
  %.pre461 = load ptr, ptr %i.dv, align 8, !tbaa !138
  br label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hb = load ptr, ptr %i.dq, align 8, !tbaa !139
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv454
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !80
  %.not305 = icmp eq i32 %i.hd, 2
  %.pre462 = load ptr, ptr %i.dv, align 8, !tbaa !138 ; 2 uses
  br i1 %.not305, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %._crit_edge460, %bb.ay
  %i.he = phi ptr [ %.pre461, %._crit_edge460 ], [ %.pre462, %bb.ay ]
  %i.hf = load ptr, ptr %i.ee, align 8, !tbaa !77
  %i.hg = load double, ptr %i.dp, align 8, !tbaa !177
  %i.hh = load ptr, ptr %i.dr, align 8, !tbaa !178
  %i.hi = load ptr, ptr %i.ed, align 8, !tbaa !148
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv454
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !80
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.hl
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !164
  %i.ho = load ptr, ptr %i.dt, align 8, !tbaa !166
  %i.hp = tail call i32 %i.hf(double noundef %i.hg, ptr noundef %i.hh, ptr noundef %i.hn, ptr noundef %i.ho) #14 ; 2 uses
  %i.hq = load i64, ptr %i.ef, align 8, !tbaa !168
  %i.hr = add nsw i64 %i.hq, 1
  store i64 %i.hr, ptr %i.ef, align 8, !tbaa !168
  %i.hs = icmp slt i32 %i.hp, 0
  br i1 %i.hs, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not306 = icmp eq i32 %i.hp, 0
  br i1 %.not306, label %bb.bb, label %.loopexit

bb.bb:                                            ; preds = %bb.ba
  %i.ht = load i32, ptr %i.eg, align 8, !tbaa !95
  %.not307 = icmp eq i32 %i.ht, 0
  br i1 %.not307, label %.thread505, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hu = load ptr, ptr %i.eh, align 8, !tbaa !88 ; 5 uses
  %i.hv = load ptr, ptr %i.ed, align 8, !tbaa !148
  %i.hw = load ptr, ptr %i.dv, align 8, !tbaa !138
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv454
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !80
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hv, i64 %i.hz ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !164
  %i.ic = load ptr, ptr %i.ei, align 8, !tbaa !90 ; 6 uses
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !164
  store <2 x double> splat (double 1.000000e+00), ptr %i.hu, align 8, !tbaa !92
  %i.id = load ptr, ptr %i.ej, align 8, !tbaa !96 ; 4 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !164
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !164
  %i.ig = load double, ptr %i.ek, align 8, !tbaa !194
  %i.ih = fsub double %i.fc, %i.ig
  %i.ii = load double, ptr %i.el, align 8, !tbaa !195
  %i.ij = fdiv double %i.ih, %i.ii                ; 4 uses
  %i.ik = load i32, ptr %i.em, align 8, !tbaa !97 ; 2 uses
  %i.il = icmp sgt i32 %i.ik, 1
  br i1 %i.il, label %.lr.ph.i.preheader, label %mriStep_ApplyForcing.exit

.lr.ph.i.preheader:                               ; preds = %bb.bc
  %narrow = add nuw i32 %i.ik, 1                  ; 5 uses
  %i.im = zext i32 %narrow to i64                 ; 2 uses
  %xtraiter = and i64 %i.im, 1
  %i.in = icmp eq i32 %narrow, 3
  br i1 %i.in, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %i.io = and i64 %i.im, 4294967294
  %i.ip = add nsw i64 %i.io, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv = phi i64 [ 2, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.02425.i = phi double [ %i.ij, %.lr.ph.i.preheader.new ], [ %i.ja, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv
  store double %.02425.i, ptr %i.iq, align 8, !tbaa !92
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.i
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !164
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv
  store ptr %i.is, ptr %i.it, align 8, !tbaa !164
  %i.iu = fmul double %i.ij, %.02425.i            ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv.next
  store double %i.iu, ptr %i.iv, align 8, !tbaa !92
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !164
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.next
  store ptr %i.iy, ptr %i.iz, align 8, !tbaa !164
  %i.ja = fmul double %i.ij, %i.iu                ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.ip
  br i1 %niter.ncmp.1, label %mriStep_ApplyForcing.exit.loopexit.unr-lcssa, label %.lr.ph.i

mriStep_ApplyForcing.exit.loopexit.unr-lcssa:     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mriStep_ApplyForcing.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %mriStep_ApplyForcing.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.epil.init = phi i64 [ 2, %.lr.ph.i.preheader ], [ %indvars.iv.next.1, %mriStep_ApplyForcing.exit.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %mriStep_ApplyForcing.exit.loopexit.unr-lcssa ]
  %.02425.i.epil.init = phi double [ %i.ij, %.lr.ph.i.preheader ], [ %i.ja, %mriStep_ApplyForcing.exit.loopexit.unr-lcssa ]
  %lcmp.mod509 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod509)
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv.epil.init
  store double %.02425.i.epil.init, ptr %i.jb, align 8, !tbaa !92
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.i.epil.init
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !164
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.epil.init
  store ptr %i.jd, ptr %i.je, align 8, !tbaa !164
  br label %mriStep_ApplyForcing.exit

mriStep_ApplyForcing.exit:                        ; preds = %.lr.ph.i.epil.preheader, %mriStep_ApplyForcing.exit.loopexit.unr-lcssa, %bb.bc
  %.0377 = phi i32 [ 2, %bb.bc ], [ %narrow, %mriStep_ApplyForcing.exit.loopexit.unr-lcssa ], [ %narrow, %.lr.ph.i.epil.preheader ]
  %i.jf = load ptr, ptr %i.ia, align 8, !tbaa !164
  %i.jg = tail call i32 @N_VLinearCombination(i32 noundef %.0377, ptr noundef nonnull %i.hu, ptr noundef nonnull %i.ic, ptr noundef %i.jf) #14 ; 0 uses
  br label %.thread505

bb.bd:                                            ; preds = %bb.ay
  %i.jh = load double, ptr %i.ea, align 8, !tbaa !111
  %i.ji = load ptr, ptr %i.eb, align 8, !tbaa !196
  %i.jj = insertelement <2 x double> poison, double %i.jh, i64 0
  %i.jk = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jl = fdiv <2 x double> <double 1.000000e+00, double -1.000000e+00>, %i.jk ; 2 uses
  %i.jm = load ptr, ptr %i.ec, align 8, !tbaa !167
  %i.jn = load ptr, ptr %i.ed, align 8, !tbaa !148
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.pre462, i64 %indvars.iv454
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !80
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.jq
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !164
  %i.jt = extractelement <2 x double> %i.jl, i64 0
  %i.ju = extractelement <2 x double> %i.jl, i64 1
  tail call void @N_VLinearSum(double noundef %i.jt, ptr noundef %i.ji, double noundef %i.ju, ptr noundef %i.jm, ptr noundef %i.js) #14
  br label %.thread505

.thread505:                                       ; preds = %bb.bd, %mriStep_ApplyForcing.exit, %bb.bb, %bb.aw
  %.pr507 = load i32, ptr %i.dx, align 8, !tbaa !143
  %.not308 = icmp eq i32 %.pr507, 0
  br i1 %.not308, label %.thread409, label %bb.be

bb.be:                                            ; preds = %.thread505
  %i.jv = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.jw = load double, ptr %i.dp, align 8, !tbaa !177
  %i.jx = load ptr, ptr %i.dr, align 8, !tbaa !178
end_hunk_1
begin_hunk_2_@mriStep_SetInnerForcing:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %4, 0
  br i1 %i.d, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !143
  %.not20 = icmp eq i32 %i.f, 0
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 0, ptr %i.g, align 4, !tbaa !78
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 0, ptr %i.h, align 8, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi <2 x i32> [ <i32 0, i32 1>, %bb.e ], [ <i32 1, i32 0>, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 468
  store <2 x i32> %i.i, ptr %i.j, align 4, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  store double %1, ptr %i.k, align 8, !tbaa !194
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  store double %2, ptr %i.l, align 8, !tbaa !195
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store ptr %3, ptr %i.m, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  store i32 %4, ptr %i.n, align 8, !tbaa !97
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 0, ptr %i.o, align 8, !tbaa !188
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !120  ; 2 uses
  %.not21 = icmp eq ptr %i.q, null
  br i1 %.not21, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 464 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !87
  %i.t = sub nsw i32 %i.s, %4
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !127
  %i.w = shl nsw i32 %i.v, 1
  %i.x = add nsw i32 %i.w, 2
  %i.y = icmp slt i32 %i.t, %i.x
  br i1 %i.y, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !88  ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.aa) #14
  %i.ab = load i32, ptr %i.r, align 8, !tbaa !87
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !89
  %i.af = sub nsw i64 %i.ae, %i.ac
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !89
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 520 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !90 ; 2 uses
  %.not23 = icmp eq ptr %i.ah, null
  br i1 %.not23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.ah) #14
  %i.ai = load i32, ptr %i.r, align 8, !tbaa !87
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !91
  %i.am = sub nsw i64 %i.al, %i.aj
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !91
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !120
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !127
  %i.aq = shl nsw i32 %i.ap, 1
  %i.ar = add nuw i32 %4, 2
  %i.as = add i32 %i.ar, %i.aq                    ; 2 uses
  store i32 %i.as, ptr %i.r, align 8, !tbaa !87
  %i.at = sext i32 %i.as to i64                   ; 4 uses
  %i.au = tail call noalias ptr @calloc(i64 noundef %i.at, i64 noundef 8) #15 ; 2 uses
  store ptr %i.au, ptr %i.z, align 8, !tbaa !88
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !89
  %i.ay = add nsw i64 %i.ax, %i.at
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !89
  %i.az = tail call noalias ptr @calloc(i64 noundef %i.at, i64 noundef 8) #15 ; 2 uses
  store ptr %i.az, ptr %i.ag, align 8, !tbaa !90
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !91
  %i.bd = add nsw i64 %i.bc, %i.at
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !91
  br label %bb.p

bb.o:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 468
  store i32 0, ptr %i.be, align 4, !tbaa !94
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  store i32 0, ptr %i.bf, align 8, !tbaa !95
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.bg, align 8, !tbaa !92
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store ptr null, ptr %i.bh, align 8, !tbaa !96
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  store i32 0, ptr %i.bi, align 8, !tbaa !97
  br label %bb.p

bb.p:                                             ; preds = %mriStep_AccessStepMem.exit, %bb.o, %bb.g, %bb.n, %bb.f, %bb.m, %bb.l
  %.0 = phi i32 [ -20, %bb.m ], [ -21, %mriStep_AccessStepMem.exit ], [ -20, %bb.l ], [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.g ], [ 0, %bb.o ]
  ret i32 %.0
}

declare i32 @mriStep_GetStageIndex(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @SUNNonlinSol_Newton(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetNonlinearSolver(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @arkInit(ptr noundef, double noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -22, 1) i32 @mriStepInnerStepper_HasRequiredOps(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !102
  %.not = icmp eq ptr %i.e, null
  %. = select i1 %.not, i32 -22, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -22, %bb.b ], [ -22, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @MRIStepReInit(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 3261, ptr noundef nonnull @__func__.MRIStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #14
  br label %mriStep_AccessARKODEStepMem.exit.thread

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 11 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %mriStep_AccessARKODEStepMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 3270, ptr noundef nonnull @__func__.MRIStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #14
  br label %mriStep_AccessARKODEStepMem.exit.thread

mriStep_AccessARKODEStepMem.exit:                 ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.g = load i32, ptr %i.f, align 8, !tbaa !223
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %mriStep_AccessARKODEStepMem.exit
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -23, i32 noundef 314, ptr noundef nonnull @__func__.MRIStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #14
  br label %mriStep_AccessARKODEStepMem.exit.thread

bb.f:                                             ; preds = %mriStep_AccessARKODEStepMem.exit
  %5 = icmp eq ptr %1, null
  %6 = icmp eq ptr %2, null                       ; 2 uses
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 322, ptr noundef nonnull @__func__.MRIStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  br label %mriStep_AccessARKODEStepMem.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.i = icmp eq ptr %4, null
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 330, ptr noundef nonnull @__func__.MRIStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #14
  br label %mriStep_AccessARKODEStepMem.exit.thread

bb.j:                                             ; preds = %bb.h
  %7 = insertelement <2 x ptr> poison, ptr %1, i64 0
  %8 = insertelement <2 x ptr> %7, ptr %2, i64 1
  %9 = icmp ne <2 x ptr> %8, splat (ptr null)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = zext <2 x i1> %9 to <2 x i32>
  store <2 x i32> %i.k, ptr %i.j, align 8, !tbaa !80
  br i1 %6, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !82
  %.not28 = icmp eq ptr %i.m, null
  br i1 %.not28, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.n = load ptr, ptr %0, align 8, !tbaa !84
  %i.o = tail call ptr @SUNNonlinSol_Newton(ptr noundef nonnull %4, ptr noundef %i.n) #14 ; 2 uses
  %.not29 = icmp eq ptr %i.o, null
  br i1 %.not29, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 346, ptr noundef nonnull @__func__.MRIStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #14
  call void @ARKodeFree(ptr noundef nonnull %i.a) #14
  br label %mriStep_AccessARKODEStepMem.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.p = tail call i32 @ARKodeSetNonlinearSolver(ptr noundef nonnull %0, ptr noundef nonnull %i.o) #14
  %.not30 = icmp eq i32 %i.p, 0
  br i1 %.not30, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 354, ptr noundef nonnull @__func__.MRIStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #14
  call void @ARKodeFree(ptr noundef nonnull %i.a) #14
  br label %mriStep_AccessARKODEStepMem.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i32 1, ptr %i.q, align 8, !tbaa !83
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k, %bb.j
  %i.r = tail call i32 @arkInit(ptr noundef nonnull %0, double noundef %3, ptr noundef nonnull %4, i32 noundef 0) #14 ; 3 uses
  %.not31 = icmp eq i32 %i.r, 0
  br i1 %.not31, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %i.r, i32 noundef 366, ptr noundef nonnull @__func__.MRIStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #14
  br label %mriStep_AccessARKODEStepMem.exit.thread

bb.s:                                             ; preds = %bb.q
  store ptr %1, ptr %i.d, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %i.s, align 8, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 0, ptr %i.t, align 4, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 0, ptr %i.u, align 8, !tbaa !79
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  store i64 0, ptr %i.w, align 8, !tbaa !86
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 48, i1 false)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108  ; 2 uses
  %.not32 = icmp eq ptr %i.y, null
  br i1 %.not32, label %mriStep_AccessARKODEStepMem.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.z = tail call i32 @arkLsInitializeCounters(ptr noundef nonnull %i.y) #14 ; 0 uses
  br label %mriStep_AccessARKODEStepMem.exit.thread

mriStep_AccessARKODEStepMem.exit.thread:          ; preds = %bb.d, %bb.b, %bb.s, %bb.t, %bb.r, %bb.o, %bb.m, %bb.i, %bb.g, %bb.e
  %.0 = phi i32 [ -20, %bb.m ], [ -23, %bb.e ], [ -22, %bb.g ], [ -22, %bb.i ], [ %i.r, %bb.r ], [ 0, %bb.s ], [ -20, %bb.o ], [ 0, %bb.t ], [ -21, %bb.b ], [ -21, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @mriStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 3261, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #14
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %2, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 3270, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.c, ptr %3, align 8, !tbaa !224
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ -21, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

declare i32 @arkLsInitializeCounters(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @mriStep_AccessStepMem(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 3290, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !224
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare void @N_VSpace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @arkResizeVecArray(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @arkResizeVec(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNNonlinSolFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @mriStepInnerStepper_Resize(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !206
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = tail call i32 @arkResizeVecArray(ptr noundef %1, ptr noundef %2, i32 noundef %i.c, ptr noundef %5, ptr noundef nonnull %i.d, i64 noundef %3, ptr noundef nonnull %i.e, i64 noundef %4, ptr noundef nonnull %i.f) #14
  %.not = icmp eq i32 %i.g, 0
  %. = select i1 %.not, i32 -20, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mriStepInnerStepper_Reset(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !179  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0, double noundef %1, ptr noundef %2) #14 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.g, ptr %i.h, align 8, !tbaa !163
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ -22, %bb.b ], [ -22, %bb.a ], [ %i.g, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @MRIStepCoupling_Space(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @MRIStepCoupling_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @arkFreeVec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @arkFreeVecArray(i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare void @MRIStepCoupling_Write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
end_hunk_2
begin_hunk_3_@mriStep_TakeStepMRISR:bb.a
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !181
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !184
  %.not228 = icmp eq ptr %i.bo, null
  br i1 %.not228, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !186
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.bq) #14
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !82
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !186
  %i.bt = tail call i32 @SUNNonlinSolSetup(ptr noundef %i.br, ptr noundef %i.bs, ptr noundef nonnull %0) #14 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not229 = icmp eq i32 %i.bt, 0
  br i1 %.not229, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.k, %bb.m, %mriStepInnerStepper_Reset.exit.thread361
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 468 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !94
  %.not230 = icmp eq i32 %i.bw, 0
  br i1 %.not230, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 640
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !95
  %i.ca = icmp ne i32 %i.bz, 0                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !187 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  %or.cond = select i1 %i.cd, i1 true, i1 %i.ca
  br i1 %or.cond, label %bb.p, label %.thread365

bb.p:                                             ; preds = %.thread, %bb.o
  %i.ce = phi ptr [ %i.bx, %.thread ], [ %i.cb, %bb.o ] ; 2 uses
  %i.cf = phi i1 [ true, %.thread ], [ %i.ca, %bb.o ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !177
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !178
  %i.ck = tail call i32 @mriStep_UpdateF0(ptr noundef nonnull %0, ptr noundef nonnull %i.b, double noundef %i.ch, ptr noundef %i.cj, i32 noundef 0)
  %.not231 = icmp eq i32 %i.ck, 0
  br i1 %.not231, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !187 ; 4 uses
  %i.cm = icmp ne ptr %i.cl, null
  %or.cond3 = select i1 %i.cm, i1 %i.cf, i1 false
  br i1 %or.cond3, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !110
  %.not232 = icmp eq i32 %i.co, 0
  br i1 %.not232, label %thread-pre-split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !143
  %.not233 = icmp eq i32 %i.cq, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !148
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !164 ; 2 uses
  br i1 %.not233, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !149
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !164
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ct, double noundef 1.000000e+00, ptr noundef %i.cw, ptr noundef nonnull %i.cl) #14
  br label %thread-pre-split

bb.u:                                             ; preds = %bb.s
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ct, ptr noundef nonnull %i.cl) #14
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.t, %bb.u, %bb.r
  %.pr = load ptr, ptr %i.ce, align 8, !tbaa !187
  br label %bb.v

bb.v:                                             ; preds = %thread-pre-split, %bb.q
  %i.cx = phi ptr [ %.pr, %thread-pre-split ], [ %i.cl, %bb.q ] ; 2 uses
  %.not234 = icmp eq ptr %i.cx, null
  br i1 %.not234, label %bb.x, label %.thread365

.thread365:                                       ; preds = %bb.o, %bb.v
  %i.cy = phi ptr [ %i.cx, %bb.v ], [ %i.cc, %bb.o ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !188
  %.not235 = icmp eq i32 %i.da, 0
  br i1 %.not235, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread365
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.dc = load double, ptr %i.db, align 8, !tbaa !177
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !178
  %i.df = tail call i32 @mriStep_FullRHS(ptr noundef nonnull %0, double noundef %i.dc, ptr noundef %i.de, ptr noundef nonnull %i.cy, i32 noundef 0)
  %.not236 = icmp eq i32 %i.df, 0
  br i1 %.not236, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %bb.w, %.thread365, %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 1, ptr %i.dg, align 8, !tbaa !188
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 5 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !110
  %.not237 = icmp eq i32 %i.di, 0
  br i1 %.not237, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !143
  %.not238 = icmp eq i32 %i.dk, 0
  br i1 %.not238, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !149
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !164 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !148
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !164
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.dn, double noundef 1.000000e+00, ptr noundef %i.dq, ptr noundef %i.dn) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.dr = load i32, ptr %i.at, align 8, !tbaa !115 ; 2 uses
  %.not239 = icmp eq i32 %i.dr, 0
  br i1 %.not239, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !117
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !128
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !128
  %i.dz = add nsw i32 %i.dy, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ea = phi i32 [ %i.dw, %bb.ac ], [ %i.dz, %bb.ad ] ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ae
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 14 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 3 uses
  %i.eh = getelementptr i8, ptr %0, i64 736       ; 12 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 12 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 520 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 424 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 496 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 488 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 504 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %wide.trip.count425 = zext nneg i32 %i.ea to i64
  %scevgep487 = getelementptr i8, ptr %0, i64 744 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %.thread393
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.thread393 ] ; 5 uses
  %indvars.iv422 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next423, %.thread393 ] ; 32 uses
  %i.fk = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %i.fl = add nuw i64 %i.fk, 16                   ; 2 uses
  %i.fm = add nuw i64 %i.fk, 8                    ; 2 uses
  %i.fn = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %i.fo = add nuw i64 %i.fn, 24                   ; 2 uses
  %i.fp = add nuw i64 %i.fn, 8                    ; 2 uses
  %i.fq = load i32, ptr %i.ec, align 8, !tbaa !128 ; 2 uses
  %i.fr = add nsw i32 %i.fq, -1
  %i.fs = zext i32 %i.fr to i64
  %i.ft = icmp eq i64 %indvars.iv422, %i.fs       ; 2 uses
  %i.fu = zext i32 %i.fq to i64                   ; 2 uses
  %i.fv = icmp eq i64 %indvars.iv422, %i.fu       ; 3 uses
  %i.fw = icmp samesign ugt i64 %indvars.iv422, 1 ; 2 uses
  br i1 %i.fw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fx = load ptr, ptr %i.ed, align 8, !tbaa !241
  %i.fy = load ptr, ptr %i.ee, align 8, !tbaa !178
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.fx, ptr noundef %i.fy) #14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %i.fv, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fz = load ptr, ptr %i.ef, align 8, !tbaa !120
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !190
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv422
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !92
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.ge = phi double [ %i.gd, %bb.ai ], [ 1.000000e+00, %bb.ah ]
  %i.gf = load double, ptr %i.eg, align 8, !tbaa !189 ; 2 uses
  %i.gg = load double, ptr %i.eh, align 8, !tbaa !191
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gg, double %i.gf) ; 2 uses
  store double %i.gh, ptr %i.ei, align 8, !tbaa !177
  %i.gi = trunc nuw nsw i64 %indvars.iv422 to i32 ; 3 uses
  store i32 %i.gi, ptr %i.f, align 4, !tbaa !171
  store i32 %i.gi, ptr %i.g, align 8, !tbaa !172
  %i.gj = tail call i32 @mriStep_ComputeInnerForcing(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %i.gi, double noundef %i.gf, double noundef %i.gh) ; 2 uses
  %.not242 = icmp eq i32 %i.gj, 0
  br i1 %.not242, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %.pre428 = load double, ptr %i.eg, align 8, !tbaa !189 ; 3 uses
  %.pre430 = load ptr, ptr %i.ee, align 8, !tbaa !178 ; 3 uses
  br i1 %i.fw, label %bb.al, label %mriStepInnerStepper_Reset.exit281.thread369

bb.al:                                            ; preds = %bb.ak
  %i.gk = load ptr, ptr %i.ej, align 8, !tbaa !98 ; 4 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %mriStepInnerStepper_Reset.exit281.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !99 ; 2 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %mriStepInnerStepper_Reset.exit281.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !179 ; 2 uses
  %.not.i279 = icmp eq ptr %i.gq, null
  br i1 %.not.i279, label %mriStepInnerStepper_Reset.exit281.thread369, label %mriStepInnerStepper_Reset.exit281

mriStepInnerStepper_Reset.exit281:                ; preds = %bb.an
  %i.gr = tail call i32 %i.gq(ptr noundef nonnull %i.gk, double noundef %.pre428, ptr noundef %.pre430) #14, !inline_history !180 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  store i32 %i.gr, ptr %i.gs, align 8, !tbaa !163
  %.not243 = icmp eq i32 %i.gr, 0
  br i1 %.not243, label %mriStepInnerStepper_Reset.exit281.mriStepInnerStepper_Reset.exit281.thread369_crit_edge, label %mriStepInnerStepper_Reset.exit281.thread

mriStepInnerStepper_Reset.exit281.mriStepInnerStepper_Reset.exit281.thread369_crit_edge: ; preds = %mriStepInnerStepper_Reset.exit281
  %.pre427 = load double, ptr %i.eg, align 8, !tbaa !189
  %.pre429 = load ptr, ptr %i.ee, align 8, !tbaa !178
  br label %mriStepInnerStepper_Reset.exit281.thread369

mriStepInnerStepper_Reset.exit281.thread:         ; preds = %bb.al, %bb.am, %mriStepInnerStepper_Reset.exit281
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -34, i32 noundef 2568, ptr noundef nonnull @__func__.mriStep_TakeStepMRISR, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #14
  br label %.loopexit

mriStepInnerStepper_Reset.exit281.thread369:      ; preds = %mriStepInnerStepper_Reset.exit281.mriStepInnerStepper_Reset.exit281.thread369_crit_edge, %bb.an, %bb.ak
  %i.gt = phi ptr [ %.pre429, %mriStepInnerStepper_Reset.exit281.mriStepInnerStepper_Reset.exit281.thread369_crit_edge ], [ %.pre430, %bb.an ], [ %.pre430, %bb.ak ]
  %i.gu = phi double [ %.pre427, %mriStepInnerStepper_Reset.exit281.mriStepInnerStepper_Reset.exit281.thread369_crit_edge ], [ %.pre428, %bb.an ], [ %.pre428, %bb.ak ]
  %i.gv = load double, ptr %i.ei, align 8, !tbaa !177
  %3 = icmp ne i64 %indvars.iv422, %i.fu
  %narrow = select i1 %.not245, i1 %3, i1 false
  %i.gw = zext i1 %narrow to i32
  %i.gx = tail call i32 @mriStep_StageERKFast(ptr noundef nonnull %0, ptr noundef nonnull %i.b, double noundef %i.gu, double noundef %i.gv, ptr noundef %i.gt, ptr poison, i32 noundef %i.gw) ; 2 uses
  %.not246 = icmp eq i32 %i.gx, 0
  br i1 %.not246, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %mriStepInnerStepper_Reset.exit281.thread369
  store i32 4, ptr %2, align 4, !tbaa !80
  br label %.loopexit

bb.ap:                                            ; preds = %mriStepInnerStepper_Reset.exit281.thread369
  %i.gy = load i32, ptr %i.dh, align 4, !tbaa !110
  %.not247 = icmp eq i32 %i.gy, 0
  br i1 %.not247, label %bb.bd, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gz = load ptr, ptr %i.ef, align 8, !tbaa !120
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !227
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !228
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv422
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !230 ; 7 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv422
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !92
  %i.hh = tail call double @llvm.fabs.f64(double %i.hg)
  %i.hi = fcmp ogt double %i.hh, f0x3D19000000000000
  br i1 %i.hi, label %bb.ar, label %bb.bc

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.fv, label %bb.as, label %._crit_edge431

._crit_edge431:                                   ; preds = %bb.ar
  %.pre432 = load i32, ptr %i.g, align 8, !tbaa !172
  br label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hj = trunc nuw i64 %indvars.iv422 to i32
  %i.hk = add i32 %i.hj, -1                       ; 2 uses
  store i32 %i.hk, ptr %i.g, align 8, !tbaa !172
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge431, %bb.as
  %i.hl = phi i32 [ %.pre432, %._crit_edge431 ], [ %i.hk, %bb.as ]
  %i.hm = load ptr, ptr %i.en, align 8, !tbaa !205
  %i.hn = tail call i32 @mriStep_Predict(ptr noundef nonnull %0, i32 noundef %i.hl, ptr noundef %i.hm) ; 2 uses
  %.not249 = icmp eq i32 %i.hn, 0
  br i1 %.not249, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.ho = load ptr, ptr %i.eo, align 8, !tbaa !242 ; 2 uses
  %.not250 = icmp eq ptr %i.ho, null
  br i1 %.not250, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hp = load double, ptr %i.ei, align 8, !tbaa !177
  %i.hq = load ptr, ptr %i.en, align 8, !tbaa !205
  %i.hr = load ptr, ptr %i.ep, align 8, !tbaa !166
  %i.hs = tail call i32 %i.ho(double noundef %i.hp, ptr noundef %i.hq, ptr noundef %i.hr) #14 ; 2 uses
  %i.ht = icmp slt i32 %i.hs, 0
  br i1 %i.ht, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not251 = icmp eq i32 %i.hs, 0
  br i1 %.not251, label %bb.ax, label %.loopexit

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %i.hu = load ptr, ptr %i.ek, align 8, !tbaa !88 ; 8 uses
  %i.hv = load ptr, ptr %i.ee, align 8, !tbaa !178
  %i.hw = load ptr, ptr %i.el, align 8, !tbaa !90 ; 9 uses
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !164
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, ptr %i.hu, align 8, !tbaa !92
  %i.hx = load ptr, ptr %i.en, align 8, !tbaa !205
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store ptr %i.hx, ptr %i.hy, align 8, !tbaa !164
  %i.hz = load ptr, ptr %i.ef, align 8, !tbaa !120
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !227
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !228
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv422
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !230 ; 6 uses
  %i.if = load ptr, ptr %i.em, align 8, !tbaa !148 ; 6 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv422, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.ax
  %scevgep = getelementptr nuw i8, ptr %i.hu, i64 16 ; 2 uses
  %scevgep486 = getelementptr i8, ptr %i.hu, i64 %i.fo ; 2 uses
  %scevgep488 = getelementptr i8, ptr %i.ie, i64 %i.fp
  %scevgep489 = getelementptr nuw i8, ptr %i.hw, i64 16
  %scevgep490 = getelementptr i8, ptr %i.hw, i64 %i.fo
  %scevgep491 = getelementptr i8, ptr %i.if, i64 %i.fp
  %bound0 = icmp ult ptr %scevgep, %scevgep487
  %bound1 = icmp ult ptr %i.eh, %scevgep486
  %found.conflict = and i1 %bound0, %bound1
  %bound0492 = icmp ult ptr %scevgep, %scevgep488
  %bound1493 = icmp ult ptr %i.ie, %scevgep486
  %found.conflict494 = and i1 %bound0492, %bound1493
  %conflict.rdx = or i1 %found.conflict, %found.conflict494
  %bound0495 = icmp ult ptr %scevgep489, %scevgep491
  %bound1496 = icmp ult ptr %i.if, %scevgep490
  %found.conflict497 = and i1 %bound0495, %bound1496
  %conflict.rdx498 = or i1 %conflict.rdx, %found.conflict497
  br i1 %conflict.rdx498, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv422, 9223372036854775804 ; 3 uses
  %i.ig = load double, ptr %i.eh, align 8, !tbaa !191, !alias.scope !243
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ig, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %index ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %wide.load = load <2 x double>, ptr %i.ih, align 8, !tbaa !92, !alias.scope !246
  %wide.load499 = load <2 x double>, ptr %i.ii, align 8, !tbaa !92, !alias.scope !246
  %i.ij = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ik = fmul <2 x double> %broadcast.splat, %wide.load499
  %i.il = or disjoint i64 %index, 2               ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store <2 x double> %i.ij, ptr %i.im, align 8, !tbaa !92, !alias.scope !248, !noalias !250
  store <2 x double> %i.ik, ptr %i.in, align 8, !tbaa !92, !alias.scope !248, !noalias !250
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %index ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %wide.load500 = load <2 x ptr>, ptr %i.io, align 8, !tbaa !164, !alias.scope !251
  %wide.load501 = load <2 x ptr>, ptr %i.ip, align 8, !tbaa !164, !alias.scope !251
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.il ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store <2 x ptr> %wide.load500, ptr %i.iq, align 8, !tbaa !164, !alias.scope !253, !noalias !251
  store <2 x ptr> %wide.load501, ptr %i.ir, align 8, !tbaa !164, !alias.scope !253, !noalias !251
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.is = icmp eq i64 %index.next, %n.vec
  br i1 %i.is, label %middle.block, label %vector.body, !llvm.loop !255

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv422, %n.vec
  br i1 %cmp.n, label %.loopexit536, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.ax, %middle.block
  %indvars.iv409.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.ax ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter541 = and i64 %indvars.iv422, 1
  %lcmp.mod542.not = icmp eq i64 %xtraiter541, 0
  br i1 %lcmp.mod542.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.it = load double, ptr %i.eh, align 8, !tbaa !191
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv409.ph
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !92
  %i.iw = fmul double %i.it, %i.iv
  %i.ix = or disjoint i64 %indvars.iv409.ph, 2    ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.ix
  store double %i.iw, ptr %i.iy, align 8, !tbaa !92
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv409.ph
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !164
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.ix
  store ptr %i.ja, ptr %i.jb, align 8, !tbaa !164
  %indvars.iv.next410.prol = or disjoint i64 %indvars.iv409.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv409.unr = phi i64 [ %indvars.iv409.ph, %scalar.ph.preheader ], [ %indvars.iv.next410.prol, %scalar.ph.prol ]
  %i.jc = icmp eq i64 %indvar, %indvars.iv409.ph
  br i1 %i.jc, label %.loopexit536, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv409 = phi i64 [ %indvars.iv.next410.1, %scalar.ph ], [ %indvars.iv409.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.jd = load double, ptr %i.eh, align 8, !tbaa !191
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv409
  %i.jf = load double, ptr %i.je, align 8, !tbaa !92
  %i.jg = fmul double %i.jd, %i.jf
  %i.jh = add nuw nsw i64 %indvars.iv409, 2       ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.jh
  store double %i.jg, ptr %i.ji, align 8, !tbaa !92
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv409
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !164
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.jh
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !164
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %i.jm = load double, ptr %i.eh, align 8, !tbaa !191
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv.next410
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !92
  %i.jp = fmul double %i.jm, %i.jo
  %i.jq = add nuw nsw i64 %indvars.iv409, 3       ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.jq
  store double %i.jp, ptr %i.jr, align 8, !tbaa !92
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.next410
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !164
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.jq
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !164
  %indvars.iv.next410.1 = add nuw nsw i64 %indvars.iv409, 2 ; 2 uses
  %exitcond413.not.1 = icmp eq i64 %indvars.iv.next410.1, %indvars.iv422
  br i1 %exitcond413.not.1, label %.loopexit536, label %scalar.ph, !llvm.loop !256

.loopexit536:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.jv = load ptr, ptr %i.eq, align 8, !tbaa !167
  %i.jw = trunc i64 %indvars.iv422 to i32
  %i.jx = add i32 %i.jw, 2
  %i.jy = tail call i32 @N_VLinearCombination(i32 noundef %i.jx, ptr noundef nonnull %i.hu, ptr noundef nonnull %i.hw, ptr noundef %i.jv) #14
end_hunk_3
