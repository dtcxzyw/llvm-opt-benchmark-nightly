Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_arkstep?download=true
inline.NumInlined: 23
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__func__.ARKStepCreate = private unnamed_addr constant [14 x i8] c"ARKStepCreate\00", align 1
@.str = private unnamed_addr constant [62 x i8] c"/opt-bench/work/sundials/sundials/src/arkode/arkode_arkstep.c\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Must specify at least one of fe, fi (both NULL).\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"y0 = NULL illegal.\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"sunctx = NULL illegal.\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"arkode_mem = NULL illegal.\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Allocation of arkode_mem failed.\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Error setting default solver options\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Error creating default Newton solver\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Error attaching default Newton solver\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Unable to initialize main ARKODE infrastructure\00", align 1
@__func__.ARKStepReInit = private unnamed_addr constant [14 x i8] c"ARKStepReInit\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Attempt to call before ARKODE initialized.\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Unable to reinitialize main ARKODE infrastructure\00", align 1
@__func__.arkStep_Resize = private unnamed_addr constant [15 x i8] c"arkStep_Resize\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Unable to resize vector\00", align 1
@__func__.arkStep_ComputeState = private unnamed_addr constant [21 x i8] c"arkStep_ComputeState\00", align 1
@__func__.arkStep_PrintMem = private unnamed_addr constant [17 x i8] c"arkStep_PrintMem\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"ARKStep: q = %i\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"ARKStep: p = %i\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"ARKStep: istage = %i\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"ARKStep: stages = %i\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"ARKStep: maxcor = %i\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"ARKStep: msbp = %i\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"ARKStep: predictor = %i\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"ARKStep: lsolve_type = %i\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"ARKStep: msolve_type = %i\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"ARKStep: convfail = %i\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"ARKStep: nfe = %li\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"ARKStep: nfi = %li\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"ARKStep: nsetups = %li\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"ARKStep: nstlp = %li\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"ARKStep: user_linear = %i\0A\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"ARKStep: user_linear_timedep = %i\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"ARKStep: user_explicit = %i\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"ARKStep: user_implicit = %i\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"ARKStep: jcur = %i\0A\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"ARKStep: explicit Butcher table:\0A\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"ARKStep: implicit Butcher table:\0A\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"ARKStep: gamma = %.15g\0A\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"ARKStep: gammap = %.15g\0A\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"ARKStep: gamrat = %.15g\0A\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"ARKStep: crate = %.15g\0A\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"ARKStep: eRNrm = %.15g\0A\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"ARKStep: nlscoef = %.15g\0A\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"ARKStep: crdown = %.15g\0A\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"ARKStep: rdiv = %.15g\0A\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"ARKStep: dgmax = %.15g\0A\00", align 1
@__func__.arkStep_AttachLinsol = private unnamed_addr constant [21 x i8] c"arkStep_AttachLinsol\00", align 1
@__func__.arkStep_AttachMasssol = private unnamed_addr constant [22 x i8] c"arkStep_AttachMasssol\00", align 1
@__func__.arkStep_GetLmem = private unnamed_addr constant [16 x i8] c"arkStep_GetLmem\00", align 1
@__func__.arkStep_GetMassMem = private unnamed_addr constant [19 x i8] c"arkStep_GetMassMem\00", align 1
@__func__.arkStep_GetImplicitRHS = private unnamed_addr constant [23 x i8] c"arkStep_GetImplicitRHS\00", align 1
@__func__.arkStep_GetGammas = private unnamed_addr constant [18 x i8] c"arkStep_GetGammas\00", align 1
@__func__.arkStep_Init = private unnamed_addr constant [13 x i8] c"arkStep_Init\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"Could not create Butcher table(s)\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"Error in Butcher table(s)\00", align 1
@.str.45 = private unnamed_addr constant [77 x i8] c"Temporal error estimation cannot be performed without embedding coefficients\00", align 1
@.str.46 = private unnamed_addr constant [65 x i8] c"Relaxation cannot be performed when deducing implicit RHS values\00", align 1
@.str.47 = private unnamed_addr constant [54 x i8] c"Non-trival predictors require an interpolation module\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"Incompatible linear and mass matrix solvers\00", align 1
@.str.49 = private unnamed_addr constant [46 x i8] c"The mass matrix solver's init routine failed.\00", align 1
@.str.50 = private unnamed_addr constant [47 x i8] c"The mass matrix solver's setup routine failed.\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"The linear solver's init routine failed.\00", align 1
@.str.52 = private unnamed_addr constant [47 x i8] c"Unable to initialize SUNNonlinearSolver object\00", align 1
@__func__.arkStep_FullRHS = private unnamed_addr constant [16 x i8] c"arkStep_FullRHS\00", align 1
@.str.53 = private unnamed_addr constant [70 x i8] c"At t = %.15g, the pre-RHS function failed in an unrecoverable manner.\00", align 1
@.str.54 = private unnamed_addr constant [77 x i8] c"At t = %.15g, the right-hand side routine failed in an unrecoverable manner.\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"Mass matrix solver failure\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"Unknown full RHS mode\00", align 1
@__func__.arkStep_TakeStep_Z = private unnamed_addr constant [19 x i8] c"arkStep_TakeStep_Z\00", align 1
@.str.57 = private unnamed_addr constant [51 x i8] c"SUNAdjointCheckpointScheme_NeedsSaving returned %d\00", align 1
@.str.58 = private unnamed_addr constant [52 x i8] c"SUNAdjointCheckpointScheme_InsertVector returned %d\00", align 1
@__func__.arkStep_TakeStep_ERK_Adjoint = private unnamed_addr constant [29 x i8] c"arkStep_TakeStep_ERK_Adjoint\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"SUNAdjointStepper_RecomputeFwd returned %d\00", align 1
@.str.60 = private unnamed_addr constant [41 x i8] c"Could not load or recompute missing step\00", align 1
@.str.61 = private unnamed_addr constant [48 x i8] c"The right hand side function failed returned %d\00", align 1
@.str.62 = private unnamed_addr constant [50 x i8] c"SUNAdjointCheckpointScheme_LoadVector returned %d\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"Time step module memory is NULL.\00", align 1
@__func__.arkStep_SetButcherTables = private unnamed_addr constant [25 x i8] c"arkStep_SetButcherTables\00", align 1
@.str.64 = private unnamed_addr constant [46 x i8] c"No ImEx method at requested order, using q=5.\00", align 1
@.str.65 = private unnamed_addr constant [50 x i8] c"No implicit method at requested order, using q=5.\00", align 1
@.str.66 = private unnamed_addr constant [50 x i8] c"No explicit method at requested order, using q=9.\00", align 1
@__func__.arkStep_CheckButcherTables = private unnamed_addr constant [27 x i8] c"arkStep_CheckButcherTables\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"explicit table is NULL!\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"implicit table is NULL!\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"stages < 1!\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"method order < 1!\00", align 1
@.str.71 = private unnamed_addr constant [60 x i8] c"embedding order < 1, but ARKodeSetFixedStep was not called!\00", align 1
@.str.72 = private unnamed_addr constant [62 x i8] c"no implicit embedding, but ARKodeSetFixedStep was not called!\00", align 1
@.str.73 = private unnamed_addr constant [62 x i8] c"no explicit embedding, but ARKodeSetFixedStep was not called!\00", align 1
@.str.74 = private unnamed_addr constant [30 x i8] c"Ae Butcher table is implicit!\00", align 1
@.str.75 = private unnamed_addr constant [30 x i8] c"Ai Butcher table is explicit!\00", align 1
@.str.76 = private unnamed_addr constant [45 x i8] c"Ai Butcher table has entries above diagonal!\00", align 1
@.str.77 = private unnamed_addr constant [74 x i8] c"The Butcher table(s) must be at least second order when using relaxation!\00", align 1
@.str.78 = private unnamed_addr constant [74 x i8] c"The explicit Butcher table has a negative b value but relaxation enabled!\00", align 1
@.str.79 = private unnamed_addr constant [74 x i8] c"The implicit Butcher table has a negative b value but relaxation enabled!\00", align 1
@__func__.arkStep_Predict = private unnamed_addr constant [16 x i8] c"arkStep_Predict\00", align 1
@.str.80 = private unnamed_addr constant [32 x i8] c"Interpolation structure is NULL\00", align 1
@__func__.arkStep_StageSetup = private unnamed_addr constant [19 x i8] c"arkStep_StageSetup\00", align 1
@__func__.arkStep_ComputeSolutions = private unnamed_addr constant [25 x i8] c"arkStep_ComputeSolutions\00", align 1
@__func__.arkStep_ComputeSolutions_MassFixed = private unnamed_addr constant [35 x i8] c"arkStep_ComputeSolutions_MassFixed\00", align 1
@__func__.arkStep_fe_Adj = private unnamed_addr constant [15 x i8] c"arkStep_fe_Adj\00", align 1
@.str.81 = private unnamed_addr constant [66 x i8] c"ARKStep must be using a fixed step to work with SUNAdjointStepper\00", align 1
@.str.82 = private unnamed_addr constant [76 x i8] c"SUNAdjointStepper requires fi = NULL (it only supports explicit RK methods)\00", align 1
@.str.83 = private unnamed_addr constant [77 x i8] c"SUNAdjointStepper requires fe != NULL (it only supports explicit RK methods)\00", align 1
@.str.84 = private unnamed_addr constant [52 x i8] c"SUNAdjointStepper is not compatible with relaxation\00", align 1
@.str.85 = private unnamed_addr constant [68 x i8] c"SUNAdjointStepper is not compatible with non-identity mass matrices\00", align 1
@.str.86 = private unnamed_addr constant [53 x i8] c"SUNAdjointStepper is not compatible with constraints\00", align 1
@.str.87 = private unnamed_addr constant [28 x i8] c"ARKStepCreateAdjointStepper\00", align 1
@.str.88 = private unnamed_addr constant [35 x i8] c"The ARKStep memory pointer is NULL\00", align 1
@.str.89 = private unnamed_addr constant [60 x i8] c"ark_mem provided is not compatible with adjoint calculation\00", align 1
@.str.90 = private unnamed_addr constant [63 x i8] c"Implicit methods are not yet supported by the adjoint stepper.\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"adj_fe cannot be NULL.\00", align 1
@.str.92 = private unnamed_addr constant [58 x i8] c"Incompatible vector type provided for adjoint calculation\00", align 1
@.str.93 = private unnamed_addr constant [25 x i8] c"ARKodeGetNumSteps failed\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"ARKStepCreate returned NULL\00", align 1
@.str.95 = private unnamed_addr constant [26 x i8] c"ARKodeSetFixedStep failed\00", align 1
@.str.96 = private unnamed_addr constant [24 x i8] c"ARKStepSetTables failed\00", align 1
@.str.97 = private unnamed_addr constant [28 x i8] c"ARKodeSetMaxNumSteps failed\00", align 1
@.str.98 = private unnamed_addr constant [40 x i8] c"ARKodeSetAdjointCheckpointScheme failed\00", align 1
@.str.99 = private unnamed_addr constant [30 x i8] c"ARKodeCreateSUNStepper failed\00", align 1
@.str.100 = private unnamed_addr constant [30 x i8] c"SUNStepper_SetReInitFn failed\00", align 1
@.str.101 = private unnamed_addr constant [31 x i8] c"SUNStepper_SetDestroyFn failed\00", align 1
@.str.102 = private unnamed_addr constant [32 x i8] c"SUNAdjointStepper_Create failed\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"SUNAdjointStepper_SetUserData failed\00", align 1
@.str.104 = private unnamed_addr constant [25 x i8] c"ARKodeSetUserData failed\00", align 1
@__func__.arkStep_SetInnerForcing = private unnamed_addr constant [24 x i8] c"arkStep_SetInnerForcing\00", align 1
@__func__.arkStep_RelaxDeltaE = private unnamed_addr constant [20 x i8] c"arkStep_RelaxDeltaE\00", align 1
@.str.105 = private unnamed_addr constant [25 x i8] c"arkStep_SUNStepperReInit\00", align 1
@.str.106 = private unnamed_addr constant [31 x i8] c"ARKStepReInit return an error\0A\00", align 1
@switch.table.arkStep_SetButcherTables = private unnamed_addr constant [4 x i8] c"\0F\02\0D\0E", align 4
@switch.table.arkStep_SetButcherTables.1 = private unnamed_addr constant [4 x i8] c"{hpq", align 4
@switch.table.arkStep_SetButcherTables.2 = private unnamed_addr constant [5 x i8] c"|{suz", align 4
@switch.table.arkStep_SetButcherTables.3 = private unnamed_addr constant [9 x i8] c"\16\19\01\10\1A\12\13\14\15", align 4

; Function Attrs: nounwind uwtable
define noundef ptr @ARKStepCreate(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -22, i32 noundef 57, ptr noundef nonnull @__func__.ARKStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -22, i32 noundef 65, ptr noundef nonnull @__func__.ARKStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #13
  br label %bb.aa

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -22, i32 noundef 72, ptr noundef nonnull @__func__.ARKStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #13
  br label %bb.aa

bb.g:                                             ; preds = %bb.e
  %i.c = tail call ptr @arkCreate(ptr noundef nonnull %4) #13 ; 57 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 81, ptr noundef nonnull @__func__.ARKStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #13
  br label %bb.aa

bb.i:                                             ; preds = %bb.g
  %calloc = tail call dereferenceable_or_null(520) ptr @calloc(i64 1, i64 520) ; 20 uses
  %i.e = icmp eq ptr %calloc, null
  br i1 %i.e, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.c, i32 noundef -20, i32 noundef 91, ptr noundef nonnull @__func__.ARKStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #13
  call void @ARKodeFree(ptr noundef nonnull %i.a) #13
  br label %bb.aa

bb.k:                                             ; preds = %bb.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  store ptr @arkStep_AttachLinsol, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 552
  store ptr @arkStep_AttachMasssol, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store ptr @arkStep_DisableLSetup, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 560
  store ptr @arkStep_DisableMSetup, ptr %i.i, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store ptr @arkStep_GetLmem, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 568
  store ptr @arkStep_GetMassMem, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  store ptr @arkStep_GetImplicitRHS, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  store ptr null, ptr %i.m, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  store ptr @arkStep_GetGammas, ptr %i.n, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store ptr @arkStep_Init, ptr %i.o, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store ptr @arkStep_FullRHS, ptr %i.p, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store ptr @arkStep_TakeStep_Z, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store ptr @arkStep_SetUserData, ptr %i.r, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store ptr @arkStep_PrintAllStats, ptr %i.s, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store ptr @arkStep_WriteParameters, ptr %i.t, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store ptr null, ptr %i.u, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store ptr @arkStep_Resize, ptr %i.v, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store ptr @arkStep_Free, ptr %i.w, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store ptr @arkStep_PrintMem, ptr %i.x, align 8, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store ptr @arkStep_SetDefaults, ptr %i.y, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  store ptr @arkStep_ComputeState, ptr %i.z, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  store ptr @arkStep_SetOptions, ptr %i.aa, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  store ptr @arkStep_SetRelaxFn, ptr %i.ab, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store ptr @arkStep_SetOrder, ptr %i.ac, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  store ptr @arkStep_SetNonlinearSolver, ptr %i.ad, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr @arkStep_SetLinear, ptr %i.ae, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  store ptr @arkStep_SetNonlinear, ptr %i.af, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  store ptr @arkStep_SetAutonomous, ptr %i.ag, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  store ptr @arkStep_SetNlsRhsFn, ptr %i.ah, align 8, !tbaa !49
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 424
  store ptr @arkStep_SetDeduceImplicitRhs, ptr %i.ai, align 8, !tbaa !50
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  store ptr @arkStep_SetNonlinCRDown, ptr %i.aj, align 8, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  store ptr @arkStep_SetNonlinRDiv, ptr %i.ak, align 8, !tbaa !52
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  store ptr @arkStep_SetDeltaGammaMax, ptr %i.al, align 8, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  store ptr @arkStep_SetLSetupFrequency, ptr %i.am, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  store ptr @arkStep_SetPredictorMethod, ptr %i.an, align 8, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  store ptr @arkStep_SetMaxNonlinIters, ptr %i.ao, align 8, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  store ptr @arkStep_SetNonlinConvCoef, ptr %i.ap, align 8, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  store ptr @arkStep_SetStagePredictFn, ptr %i.aq, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store ptr @arkStep_GetNumRhsEvals, ptr %i.ar, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  store ptr @arkStep_GetNumLinSolvSetups, ptr %i.as, align 8, !tbaa !60
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 504
  store ptr @arkStep_GetCurrentGamma, ptr %i.at, align 8, !tbaa !61
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store ptr @arkStep_GetEstLocalErrors, ptr %i.au, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  store ptr @arkStep_GetNonlinearSystemData, ptr %i.av, align 8, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 520
  store ptr @arkStep_GetNumNonlinSolvIters, ptr %i.aw, align 8, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  store ptr @arkStep_GetNumNonlinSolvConvFails, ptr %i.ax, align 8, !tbaa !65
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 536
  store ptr @arkStep_GetNonlinSolvStats, ptr %i.ay, align 8, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  store ptr @arkStep_SetInnerForcing, ptr %i.az, align 8, !tbaa !67
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  store ptr @arkStep_GetStageIndex, ptr %i.ba, align 8, !tbaa !68
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store i32 1, ptr %i.bb, align 8, !tbaa !69
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  store i32 1, ptr %i.bc, align 8, !tbaa !70
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  store i32 1, ptr %i.bd, align 8, !tbaa !71
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  store i32 1, ptr %i.be, align 8, !tbaa !72
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store ptr %calloc, ptr %i.bf, align 8, !tbaa !73
  %i.bg = tail call i32 @arkStep_SetDefaults(ptr noundef nonnull %i.c) #13 ; 2 uses
  %.not71 = icmp eq i32 %i.bg, 0
  br i1 %.not71, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !8
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.bh, i32 noundef %i.bg, i32 noundef 157, ptr noundef nonnull @__func__.ARKStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #13
  call void @ARKodeFree(ptr noundef nonnull %i.a) #13
  br label %bb.aa

bb.m:                                             ; preds = %bb.k
  %7 = insertelement <2 x ptr> poison, ptr %0, i64 0
  %8 = insertelement <2 x ptr> %7, ptr %1, i64 1
  %9 = icmp ne <2 x ptr> %8, splat (ptr null)
  %i.bi = getelementptr inbounds nuw i8, ptr %calloc, i64 28
  %i.bj = getelementptr inbounds nuw i8, ptr %calloc, i64 32
  %i.bk = zext <2 x i1> %9 to <2 x i32>
  store <2 x i32> %i.bk, ptr %i.bi, align 4, !tbaa !74
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !8   ; 11 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %calloc, i64 72
  %i.bn = tail call i32 @arkAllocVec(ptr noundef %i.bl, ptr noundef nonnull %3, ptr noundef nonnull %i.bm) #13
  %.not73 = icmp eq i32 %i.bn, 0
  br i1 %.not73, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @ARKodeFree(ptr noundef nonnull %i.a) #13
  br label %bb.aa

bb.o:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %calloc, i64 80
  %i.bp = tail call i32 @arkAllocVec(ptr noundef %i.bl, ptr noundef nonnull %3, ptr noundef nonnull %i.bo) #13
  %.not74 = icmp eq i32 %i.bp, 0
  br i1 %.not74, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @ARKodeFree(ptr noundef nonnull %i.a) #13
  br label %bb.aa

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %calloc, i64 88
  %i.br = tail call i32 @arkAllocVec(ptr noundef %i.bl, ptr noundef nonnull %3, ptr noundef nonnull %i.bq) #13
  %.not75 = icmp eq i32 %i.br, 0
  br i1 %.not75, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @ARKodeFree(ptr noundef nonnull %i.a) #13
  br label %bb.aa

bb.s:                                             ; preds = %bb.q
  store ptr %0, ptr %calloc, align 8, !tbaa !75
  %i.bs = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store ptr %1, ptr %i.bs, align 8, !tbaa !82
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 896 ; 2 uses
  %i.bu = load <2 x i64>, ptr %i.bt, align 8, !tbaa !83
  %i.bv = add nsw <2 x i64> %i.bu, <i64 10, i64 41>
  store <2 x i64> %i.bv, ptr %i.bt, align 8, !tbaa !83
  %i.bw = getelementptr inbounds nuw i8, ptr %calloc, i64 144 ; 2 uses
  store i32 0, ptr %i.bw, align 8, !tbaa !84
  %i.bx = load i32, ptr %i.bj, align 8, !tbaa !85
  %.not76 = icmp eq i32 %i.bx, 0
  br i1 %.not76, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !86
  %i.bz = tail call ptr @SUNNonlinSol_Newton(ptr noundef nonnull %3, ptr noundef %i.by) #13 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.bl, i32 noundef -20, i32 noundef 203, ptr noundef nonnull @__func__.ARKStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #13
  call void @ARKodeFree(ptr noundef nonnull %i.a) #13
  br label %bb.aa

bb.v:                                             ; preds = %bb.t
  %i.cb = tail call i32 @ARKodeSetNonlinearSolver(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bz) #13
  %.not77 = icmp eq i32 %i.cb, 0
  br i1 %.not77, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.bl, i32 noundef -20, i32 noundef 211, ptr noundef nonnull @__func__.ARKStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #13
  call void @ARKodeFree(ptr noundef nonnull %i.a) #13
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  store i32 1, ptr %i.bw, align 8, !tbaa !84
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %calloc, i64 296
  %i.cd = getelementptr inbounds nuw i8, ptr %calloc, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.cd, align 8, !tbaa !87
  %i.ce = getelementptr inbounds nuw i8, ptr %calloc, i64 344
  %i.cf = getelementptr inbounds nuw i8, ptr %calloc, i64 396
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ce, i8 0, i64 52, i1 false)
  store i32 -1, ptr %i.cf, align 4, !tbaa !88
  %i.cg = getelementptr inbounds nuw i8, ptr %calloc, i64 240
  store double 1.000000e+00, ptr %i.cg, align 8, !tbaa !89
  %i.ch = getelementptr inbounds nuw i8, ptr %calloc, i64 400
  %i.ci = getelementptr inbounds nuw i8, ptr %calloc, i64 264
  store i64 0, ptr %i.ci, align 8, !tbaa !90
  %i.cj = getelementptr inbounds nuw i8, ptr %calloc, i64 488
  store ptr null, ptr %i.cj, align 8, !tbaa !91
  %i.ck = getelementptr inbounds nuw i8, ptr %calloc, i64 496
  store i32 0, ptr %i.ck, align 8, !tbaa !92
  %i.cl = getelementptr inbounds nuw i8, ptr %calloc, i64 288
  store ptr null, ptr %i.cl, align 8, !tbaa !93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.ch, i8 0, i64 68, i1 false)
  %i.cm = tail call i32 @arkInit(ptr noundef nonnull %i.bl, double noundef %2, ptr noundef nonnull %3, i32 noundef 0) #13 ; 2 uses
  %.not78 = icmp eq i32 %i.cm, 0
  br i1 %.not78, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.bl, i32 noundef %i.cm, i32 noundef 266, ptr noundef nonnull @__func__.ARKStepCreate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #13
  call void @ARKodeFree(ptr noundef nonnull %i.a) #13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.w, %bb.u, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.l ], [ null, %bb.u ], [ null, %bb.w ], [ null, %bb.z ], [ null, %bb.f ], [ null, %bb.r ], [ null, %bb.p ], [ null, %bb.n ], [ %i.bl, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @arkProcessError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @arkCreate(ptr noundef) local_unnamed_addr #2

declare void @ARKodeFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @arkStep_AttachLinsol(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 9 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %arkStep_AccessStepMem.exit, label %bb.b

arkStep_AccessStepMem.exit:                       ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 2537, ptr noundef nonnull @__func__.arkStep_AttachLinsol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 320 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94   ; 2 uses
  %.not12 = icmp eq ptr %i.e, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  store ptr %1, ptr %i.g, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  store ptr %2, ptr %i.h, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  store ptr %3, ptr %i.i, align 8, !tbaa !97
  store ptr %4, ptr %i.d, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  store ptr %6, ptr %i.j, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  store i32 %5, ptr %i.k, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i64 0, ptr %i.l, align 8, !tbaa !99
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  store i64 0, ptr %i.m, align 8, !tbaa !90
  br label %bb.e

bb.e:                                             ; preds = %arkStep_AccessStepMem.exit, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -21, %arkStep_AccessStepMem.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @arkStep_AttachMasssol(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 9 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %arkStep_AccessStepMem.exit, label %bb.b

arkStep_AccessStepMem.exit:                       ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 2537, ptr noundef nonnull @__func__.arkStep_AttachMasssol, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 376 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100  ; 2 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  store ptr %1, ptr %i.g, align 8, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  store ptr %2, ptr %i.h, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store ptr %3, ptr %i.i, align 8, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store ptr %4, ptr %i.j, align 8, !tbaa !104
  store ptr %5, ptr %i.d, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store ptr %8, ptr %i.k, align 8, !tbaa !105
end_hunk_0
begin_hunk_1_@arkStep_PrintMem:bb.a
  br i1 %i.c, label %arkStep_AccessStepMem.exit, label %bb.b

arkStep_AccessStepMem.exit:                       ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 2537, ptr noundef nonnull @__func__.arkStep_PrintMem, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !130
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %i.e) #13 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.h = load i32, ptr %i.g, align 4, !tbaa !131
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %i.h) #13 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.k = load i32, ptr %i.j, align 8, !tbaa !182
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %i.k) #13 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.n = load i32, ptr %i.m, align 4, !tbaa !135
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %i.n) #13 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.q = load i32, ptr %i.p, align 8, !tbaa !212
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %i.q) #13 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.t = load i32, ptr %i.s, align 8, !tbaa !213
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %i.t) #13 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.w = load i32, ptr %i.v, align 8, !tbaa !148
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.w) #13 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.z = load i32, ptr %i.y, align 8, !tbaa !87
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %i.z) #13 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 396
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !88
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %i.ac) #13 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !214
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %i.af) #13 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !165
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.23, i64 noundef %i.ai) #13 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !161
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.24, i64 noundef %i.al) #13 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !99
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i64 noundef %i.ao) #13 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !90
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.26, i64 noundef %i.ar) #13 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.au = load i32, ptr %i.at, align 4, !tbaa !215
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %i.au) #13 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !216
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %i.ax) #13 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !134
  %i.bb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %i.ba) #13 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !85
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %i.bd) #13 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !217
  %i.bh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %i.bg) #13 ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !120
  %.not33 = icmp eq ptr %i.bj, null
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bk = tail call i64 @fwrite(ptr nonnull @.str.32, i64 33, i64 1, ptr %1) ; 0 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !120
  tail call void @ARKodeButcherTable_Write(ptr noundef %i.bl, ptr noundef %1) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !119
  %.not34 = icmp eq ptr %i.bn, null
  br i1 %.not34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bo = tail call i64 @fwrite(ptr nonnull @.str.33, i64 33, i64 1, ptr %1) ; 0 uses
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !119
  tail call void @ARKodeButcherTable_Write(ptr noundef %i.bp, ptr noundef %1) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.br = load double, ptr %i.bq, align 8, !tbaa !107
  %i.bs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.34, double noundef %i.br) #13 ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !218
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.35, double noundef %i.bu) #13 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !109
  %i.by = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.36, double noundef %i.bx) #13 ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !219
  %i.cb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.37, double noundef %i.ca) #13 ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !89
  %i.ce = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.38, double noundef %i.cd) #13 ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !162
  %i.ch = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.39, double noundef %i.cg) #13 ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !220
  %i.ck = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.40, double noundef %i.cj) #13 ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !221
  %i.cn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.41, double noundef %i.cm) #13 ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.cp = load double, ptr %i.co, align 8, !tbaa !112
  %i.cq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.42, double noundef %i.cp) #13 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %arkStep_AccessStepMem.exit, %bb.f
  ret void
}

declare i32 @arkStep_SetDefaults(ptr noundef) #2

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @arkStep_ComputeState(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %arkStep_AccessStepMem.exit, label %bb.b

arkStep_AccessStepMem.exit:                       ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 2537, ptr noundef nonnull @__func__.arkStep_ComputeState, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !200
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.e, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %2) #13
  br label %bb.c

bb.c:                                             ; preds = %arkStep_AccessStepMem.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -21, %arkStep_AccessStepMem.exit ]
  ret i32 %.0
}

declare i32 @arkStep_SetOptions(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @arkStep_SetRelaxFn(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @arkStep_SetOrder(ptr noundef, i32 noundef) #2

declare i32 @arkStep_SetNonlinearSolver(ptr noundef, ptr noundef) #2

declare i32 @arkStep_SetLinear(ptr noundef, i32 noundef) #2

declare i32 @arkStep_SetNonlinear(ptr noundef) #2

declare i32 @arkStep_SetAutonomous(ptr noundef, i32 noundef) #2

declare i32 @arkStep_SetNlsRhsFn(ptr noundef, ptr noundef) #2

declare i32 @arkStep_SetDeduceImplicitRhs(ptr noundef, i32 noundef) #2

declare i32 @arkStep_SetNonlinCRDown(ptr noundef, double noundef) #2

declare i32 @arkStep_SetNonlinRDiv(ptr noundef, double noundef) #2

declare i32 @arkStep_SetDeltaGammaMax(ptr noundef, double noundef) #2

declare i32 @arkStep_SetLSetupFrequency(ptr noundef, i32 noundef) #2

declare i32 @arkStep_SetPredictorMethod(ptr noundef, i32 noundef) #2

declare i32 @arkStep_SetMaxNonlinIters(ptr noundef, i32 noundef) #2

declare i32 @arkStep_SetNonlinConvCoef(ptr noundef, double noundef) #2

declare i32 @arkStep_SetStagePredictFn(ptr noundef, ptr noundef) #2

declare i32 @arkStep_GetNumRhsEvals(ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @arkStep_GetNumLinSolvSetups(ptr noundef, ptr noundef) #2

declare i32 @arkStep_GetCurrentGamma(ptr noundef, ptr noundef) #2

declare i32 @arkStep_GetEstLocalErrors(ptr noundef, ptr noundef) #2

declare i32 @arkStep_GetNonlinearSystemData(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @arkStep_GetNumNonlinSolvIters(ptr noundef, ptr noundef) #2

declare i32 @arkStep_GetNumNonlinSolvConvFails(ptr noundef, ptr noundef) #2

declare i32 @arkStep_GetNonlinSolvStats(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @arkStep_SetInnerForcing(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 17 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %arkStep_AccessStepMem.exit, label %bb.b

arkStep_AccessStepMem.exit:                       ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 2537, ptr noundef nonnull @__func__.arkStep_SetInnerForcing, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %4, 0
  br i1 %i.d, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !134  ; 2 uses
  %.not18 = icmp ne i32 %i.f, 0
  %spec.select = zext i1 %.not18 to i32
  %not..not18 = icmp eq i32 %i.f, 0
  %spec.select44 = zext i1 %not..not18 to i32
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 460
  store i32 %spec.select, ptr %5, align 4, !tbaa !166
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  store i32 %spec.select44, ptr %6, align 8, !tbaa !167
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  store double %1, ptr %i.g, align 8, !tbaa !168
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  store double %2, ptr %i.h, align 8, !tbaa !169
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  store ptr %3, ptr %i.i, align 8, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store i32 %4, ptr %i.j, align 8, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 440 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !140  ; 2 uses
  %.not19 = icmp eq ptr %i.l, null
  br i1 %.not19, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !142
  %.not20 = icmp eq ptr %i.n, null
  br i1 %.not20, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 456 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !139
  %i.q = sub nsw i32 %i.p, %4
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 108 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !135
  %i.t = shl nsw i32 %i.s, 1
  %i.u = add nsw i32 %i.t, 2
  %i.v = icmp slt i32 %i.q, %i.u
  br i1 %i.v, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.l) #13
  %i.w = load i32, ptr %i.o, align 8, !tbaa !139
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !141
  %i.aa = sub nsw i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !141
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !142 ; 2 uses
  %.not21 = icmp eq ptr %i.ab, null
  br i1 %.not21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.ab) #13
  %i.ac = load i32, ptr %i.o, align 8, !tbaa !139
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !143
  %i.ag = sub nsw i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !143
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = load i32, ptr %i.r, align 4, !tbaa !135
  %i.ai = shl nsw i32 %i.ah, 1
  %i.aj = add nuw i32 %4, 2
  %i.ak = add i32 %i.aj, %i.ai                    ; 2 uses
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !139
  %i.al = sext i32 %i.ak to i64                   ; 4 uses
  %i.am = tail call noalias ptr @calloc(i64 noundef %i.al, i64 noundef 8) #14 ; 2 uses
  store ptr %i.am, ptr %i.k, align 8, !tbaa !140
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !141
  %i.ap = add nsw i64 %i.ao, %i.al
  store i64 %i.ap, ptr %i.y, align 8, !tbaa !141
  %i.aq = tail call noalias ptr @calloc(i64 noundef %i.al, i64 noundef 8) #14 ; 2 uses
  store ptr %i.aq, ptr %i.m, align 8, !tbaa !142
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !143
  %i.au = add nsw i64 %i.at, %i.al
  store i64 %i.au, ptr %i.as, align 8, !tbaa !143
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 460
  store i32 0, ptr %i.av, align 4, !tbaa !166
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  store i32 0, ptr %i.aw, align 8, !tbaa !167
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.ax, align 8, !tbaa !108
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  store ptr null, ptr %i.ay, align 8, !tbaa !91
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store i32 0, ptr %i.az, align 8, !tbaa !92
  br label %bb.l

bb.l:                                             ; preds = %arkStep_AccessStepMem.exit, %bb.k, %bb.e, %bb.j, %bb.d, %bb.c, %bb.i, %bb.h
  %.0 = phi i32 [ -20, %bb.i ], [ -21, %arkStep_AccessStepMem.exit ], [ -20, %bb.h ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.j ], [ 0, %bb.e ], [ 0, %bb.k ]
  ret i32 %.0
}

declare i32 @arkStep_GetStageIndex(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @arkAllocVec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNNonlinSol_Newton(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeSetNonlinearSolver(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @arkInit(ptr noundef, double noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @ARKStepReInit(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 2508, ptr noundef nonnull @__func__.ARKStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #13
  br label %arkStep_AccessARKODEStepMem.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %arkStep_AccessARKODEStepMem.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 2517, ptr noundef nonnull @__func__.ARKStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %arkStep_AccessARKODEStepMem.exit.thread

arkStep_AccessARKODEStepMem.exit:                 ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.f = load i32, ptr %i.e, align 8, !tbaa !222
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %arkStep_AccessARKODEStepMem.exit
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -23, i32 noundef 300, ptr noundef nonnull @__func__.ARKStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #13
  br label %arkStep_AccessARKODEStepMem.exit.thread

bb.f:                                             ; preds = %arkStep_AccessARKODEStepMem.exit
  %5 = icmp eq ptr %1, null
  %6 = icmp eq ptr %2, null
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 308, ptr noundef nonnull @__func__.ARKStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  br label %arkStep_AccessARKODEStepMem.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.h = icmp eq ptr %4, null
  br i1 %i.h, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 316, ptr noundef nonnull @__func__.ARKStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #13
  br label %arkStep_AccessARKODEStepMem.exit.thread

bb.j:                                             ; preds = %bb.h
  %7 = insertelement <2 x ptr> poison, ptr %1, i64 0
  %8 = insertelement <2 x ptr> %7, ptr %2, i64 1
  %9 = icmp ne <2 x ptr> %8, splat (ptr null)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.j = zext <2 x i1> %9 to <2 x i32>
  store <2 x i32> %i.j, ptr %i.i, align 4, !tbaa !74
  store ptr %1, ptr %i.c, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.k, align 8, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store double 1.000000e+00, ptr %i.l, align 8, !tbaa !89
  %i.m = tail call i32 @arkInit(ptr noundef nonnull %0, double noundef %3, ptr noundef nonnull %4, i32 noundef 0) #13 ; 3 uses
  %.not21 = icmp eq i32 %i.m, 0
  br i1 %.not21, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef 336, ptr noundef nonnull @__func__.ARKStepReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #13
  br label %arkStep_AccessARKODEStepMem.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  store i64 0, ptr %i.o, align 8, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !98   ; 2 uses
  %.not22 = icmp eq ptr %i.q, null
  br i1 %.not22, label %arkStep_AccessARKODEStepMem.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = tail call i32 @arkLsInitializeCounters(ptr noundef nonnull %i.q) #13 ; 0 uses
  br label %arkStep_AccessARKODEStepMem.exit.thread

arkStep_AccessARKODEStepMem.exit.thread:          ; preds = %bb.d, %bb.b, %bb.l, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.0 = phi i32 [ 0, %bb.l ], [ -23, %bb.e ], [ -22, %bb.g ], [ -22, %bb.i ], [ %i.m, %bb.k ], [ 0, %bb.m ], [ -21, %bb.b ], [ -21, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @arkStep_AccessARKODEStepMem(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 2508, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #13
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %2, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 2517, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.c, ptr %3, align 8, !tbaa !223
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ -21, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

declare i32 @arkLsInitializeCounters(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @arkStep_AccessStepMem(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 2537, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !223
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare void @N_VSpace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @arkResizeVec(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNNonlinSolFree(ptr noundef) local_unnamed_addr #2

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ARKodeButcherTable_Space(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ARKodeButcherTable_Free(ptr noundef) local_unnamed_addr #2

declare void @arkFreeVec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare void @ARKodeButcherTable_Write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

declare i32 @arkEwtSetSmallReal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @arkStep_SetButcherTables(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 12 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 2561, ptr noundef nonnull @__func__.arkStep_SetButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !119
  %.not44 = icmp eq ptr %i.i, null
  br i1 %.not44, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !134
  %.not45 = icmp eq i32 %i.k, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !85
  %i.l = icmp eq i32 %.pre, 0                     ; 2 uses
  br i1 %.not45, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.l, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.n = load i32, ptr %i.m, align 8, !tbaa !130
  %switch.tableidx = add i32 %i.n, -2             ; 3 uses
  %i.o = icmp ult i32 %switch.tableidx, 4
  br i1 %i.o, label %switch.lookup, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 2598, ptr noundef nonnull @__func__.arkStep_SetButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.64) #13
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  br i1 %i.l, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.q = load i32, ptr %i.p, align 8, !tbaa !130
  %switch.tableidx71 = add i32 %i.q, -1           ; 2 uses
  %i.r = icmp ult i32 %switch.tableidx71, 5
  br i1 %i.r, label %switch.lookup72, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 2617, ptr noundef nonnull @__func__.arkStep_SetButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.65) #13
  br label %.thread56

.thread:                                          ; preds = %bb.f, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.t = load i32, ptr %i.s, align 8, !tbaa !130
  %switch.tableidx76 = add i32 %i.t, -1           ; 2 uses
  %i.u = icmp ult i32 %switch.tableidx76, 9
  br i1 %i.u, label %switch.lookup77, label %bb.l

bb.l:                                             ; preds = %.thread
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 2639, ptr noundef nonnull @__func__.arkStep_SetButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.66) #13
  br label %.thread60

switch.lookup77:                                  ; preds = %.thread
  %i.v = zext nneg i32 %switch.tableidx76 to i64
  %switch.gep78 = getelementptr inbounds nuw i8, ptr @switch.table.arkStep_SetButcherTables.3, i64 %i.v
  %switch.load79 = load i8, ptr %switch.gep78, align 1
  %switch.ext80 = zext i8 %switch.load79 to i32
  br label %.thread60

.thread60:                                        ; preds = %switch.lookup77, %bb.l
  %.039.ph.ph = phi i32 [ %switch.ext80, %switch.lookup77 ], [ 21, %bb.l ]
end_hunk_1
