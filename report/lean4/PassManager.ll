Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/PassManager?download=true
inline.NumInlined: 866
inline.NumDeleted: 58
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lean_once_cell_t = type { i32, i32 }

@l_Lean_Compiler_LCNF_instToStringPhase = local_unnamed_addr global ptr @l_Lean_Compiler_LCNF_instToStringPhase___closed__0_value, align 8
@l_Lean_Compiler_LCNF_instInhabitedPass = local_unnamed_addr global ptr @l_Lean_Compiler_LCNF_instInhabitedPass___closed__1_value, align 8
@l_Lean_Compiler_LCNF_instInhabitedPassInstaller_default = local_unnamed_addr global ptr @l_Lean_Compiler_LCNF_instInhabitedPassInstaller_default___closed__1_value, align 8
@l_Lean_Compiler_LCNF_instInhabitedPassInstaller = local_unnamed_addr global ptr @l_Lean_Compiler_LCNF_instInhabitedPassInstaller_default___closed__1_value, align 8
@l_Lean_Compiler_LCNF_instInhabitedPassManager_default = local_unnamed_addr global ptr @l_Lean_Compiler_LCNF_instInhabitedPassManager_default___closed__1_value, align 8
@l_Lean_Compiler_LCNF_instInhabitedPassManager = local_unnamed_addr global ptr @l_Lean_Compiler_LCNF_instInhabitedPassManager_default___closed__1_value, align 8
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00__private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassManager_validatePasses_spec__0_spec__0___closed__2 = internal global ptr null, align 8
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00__private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassManager_validatePasses_spec__0_spec__0___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00__private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassManager_validatePasses_spec__0_spec__0___closed__5 = internal global ptr null, align 8
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00__private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassManager_validatePasses_spec__0_spec__0___closed__5_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_WellFounded_opaqueFix_u2083___at___00Lean_Compiler_LCNF_PassInstaller_withEachOccurrence_spec__1___redArg___closed__2 = internal global ptr null, align 8
@l_WellFounded_opaqueFix_u2083___at___00Lean_Compiler_LCNF_PassInstaller_withEachOccurrence_spec__1___redArg___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_Compiler_LCNF_instLTPhase = local_unnamed_addr global ptr null, align 8
@l_Lean_Compiler_LCNF_instLEPhase = local_unnamed_addr global ptr null, align 8
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam = local_unnamed_addr global ptr null, align 8
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_Compiler_LCNF_instToStringPhase___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Compiler_LCNF_instToStringPhase___lam__0___boxed, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Compiler_LCNF_instInhabitedPass___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [4 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 40, i8 0, i8 3, i8 0 }, [4 x ptr] [ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Compiler_LCNF_instInhabitedPass___closed__0_value, ptr null] }, align 8
@l_Lean_Compiler_LCNF_instInhabitedPass___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Compiler_LCNF_instInhabitedPass___lam__0___boxed, i16 6, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Compiler_LCNF_instInhabitedPassInstaller_default___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 1, i8 0 }, [2 x ptr] [ptr @l_Lean_Compiler_LCNF_instInhabitedPassInstaller_default___closed__0_value, ptr null] }, align 8
@l_Lean_Compiler_LCNF_instInhabitedPassInstaller_default___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Compiler_LCNF_instInhabitedPassInstaller_default___lam__0___boxed, i16 4, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Compiler_LCNF_instInhabitedPassManager_default___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [4 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 40, i8 0, i8 4, i8 0 }, [4 x ptr] [ptr @l_Lean_Compiler_LCNF_instInhabitedPassManager_default___closed__0_value, ptr @l_Lean_Compiler_LCNF_instInhabitedPassManager_default___closed__0_value, ptr @l_Lean_Compiler_LCNF_instInhabitedPassManager_default___closed__0_value, ptr @l_Lean_Compiler_LCNF_instInhabitedPassManager_default___closed__0_value] }, align 8
@l_Lean_Compiler_LCNF_instInhabitedPassManager_default___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Compiler_LCNF_instToStringPhase___lam__0___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"base\00" }>, align 8
@l_Lean_Compiler_LCNF_instToStringPhase___lam__0___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"mono\00" }>, align 8
@l_Lean_Compiler_LCNF_instToStringPhase___lam__0___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [7 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 7, i64 7, i64 6, [7 x i8] c"impure\00" }>, align 8
@l_Lean_Compiler_LCNF_Phase_withPurityCheck___redArg___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [31 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 31, i64 31, i64 30, [31 x i8] c"Lean.Compiler.LCNF.PassManager\00" }>, align 8
@l_Lean_Compiler_LCNF_Phase_withPurityCheck___redArg___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [41 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 41, i64 41, i64 40, [41 x i8] c"Lean.Compiler.LCNF.Phase.withPurityCheck\00" }>, align 8
@l_Lean_Compiler_LCNF_Phase_withPurityCheck___redArg___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [17 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 17, i64 17, i64 16, [17 x i8] c"Compiler error: \00" }>, align 8
@l_Lean_Compiler_LCNF_Phase_withPurityCheck___redArg___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [16 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 16, i64 16, i64 15, [16 x i8] c", this is a bug\00" }, align 8
@l_Lean_Compiler_LCNF_Phase_withPurityCheck___redArg___closed__4_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [32 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 32, i64 32, i64 31, [32 x i8] c" is not equivalent to IR phase \00" }, align 8
@l_Lean_Compiler_LCNF_Phase_withPurityCheck___redArg___closed__5_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"pure\00" }>, align 8
@l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_Compiler_LCNF_Pass_mkPerDeclaration_spec__0___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [14 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 14, i64 14, i64 13, [14 x i8] c"LCNF compiler\00" }>, align 8
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00__private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassManager_validatePasses_spec__0_spec__0___closed__1 = internal global ptr null, align 8
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00__private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassManager_validatePasses_spec__0_spec__0___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00__private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassManager_validatePasses_spec__0_spec__0___closed__0 = internal global ptr null, align 8
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00__private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassManager_validatePasses_spec__0_spec__0___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00__private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassManager_validatePasses_spec__0_spec__0___closed__4 = internal global ptr null, align 8
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00__private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassManager_validatePasses_spec__0_spec__0___closed__4_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00__private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassManager_validatePasses_spec__0_spec__0___closed__3 = internal global ptr null, align 8
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00__private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassManager_validatePasses_spec__0_spec__0___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassManager_validatePasses_spec__1___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [12 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 12, i64 12, i64 11, [12 x i8] c" has phase \00" }>, align 8
@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassManager_validatePasses_spec__1___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [18 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 18, i64 18, i64 17, [18 x i8] c" but should have \00" }>, align 8
@l_Lean_Compiler_LCNF_PassManager_findOccurrenceBounds___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 0 }, [2 x ptr] [ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_PassManager_findOccurrenceBounds___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [34 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 34, i64 34, i64 33, [34 x i8] c"Could not find any occurrence of \00" }>, align 8
@l_panic___at___00Lean_Compiler_LCNF_PassInstaller_withEachOccurrence_spec__0___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Core_instInhabitedCoreM___lam__0___boxed, i16 3, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_WellFounded_opaqueFix_u2083___at___00Lean_Compiler_LCNF_PassInstaller_withEachOccurrence_spec__1___redArg___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [15 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 15, i64 15, i64 14, [15 x i8] c"phase mismatch\00" }>, align 8
@l_WellFounded_opaqueFix_u2083___at___00Lean_Compiler_LCNF_PassInstaller_withEachOccurrence_spec__1___redArg___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [52 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 52, i64 52, i64 51, [52 x i8] c"Lean.Compiler.LCNF.PassInstaller.withEachOccurrence\00" }>, align 8
@l_Lean_Compiler_LCNF_PassInstaller_installAfter___lam__1___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [28 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 28, i64 28, i64 27, [28 x i8] c"Tried to insert pass after \00" }>, align 8
@l_Lean_Compiler_LCNF_PassInstaller_installAfter___lam__1___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [14 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 14, i64 14, i64 13, [14 x i8] c", occurrence \00" }>, align 8
@l_Lean_Compiler_LCNF_PassInstaller_installAfter___lam__1___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [6 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 6, i64 6, i64 5, [6 x i8] c" but \00" }>, align 8
@l_Lean_Compiler_LCNF_PassInstaller_installAfter___lam__1___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [25 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 25, i64 25, i64 24, [25 x i8] c" is not in the pass list\00" }>, align 8
@l_Lean_Compiler_LCNF_PassInstaller_replacePass___lam__0___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [18 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 18, i64 18, i64 17, [18 x i8] c"Tried to replace \00" }>, align 8
@l___private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassInstaller_getPassInstallerUnsafe___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassInstaller_getPassInstallerUnsafe___closed__3_value_aux_2, ptr @l___private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassInstaller_getPassInstallerUnsafe___closed__2_value, ptr inttoptr (i64 -2913680343242516114 to ptr)] }, align 8
@l___private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassInstaller_getPassInstallerUnsafe___closed__3_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassInstaller_getPassInstallerUnsafe___closed__3_value_aux_1, ptr @l___private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassInstaller_getPassInstallerUnsafe___closed__1_value, ptr inttoptr (i64 -5175753053215306523 to ptr)] }, align 8
@l___private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassInstaller_getPassInstallerUnsafe___closed__3_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassInstaller_getPassInstallerUnsafe___closed__3_value_aux_0, ptr @l___private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassInstaller_getPassInstallerUnsafe___closed__0_value, ptr inttoptr (i64 8543197020067251012 to ptr)] }, align 8
@l___private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassInstaller_getPassInstallerUnsafe___closed__3_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"Lean\00" }>, align 8
@l___private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassInstaller_getPassInstallerUnsafe___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [9 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 9, i64 9, i64 8, [9 x i8] c"Compiler\00" }>, align 8
@l___private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassInstaller_getPassInstallerUnsafe___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"LCNF\00" }>, align 8
@l___private_Lean_Compiler_LCNF_PassManager_0__Lean_Compiler_LCNF_PassInstaller_getPassInstallerUnsafe___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [14 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 14, i64 14, i64 13, [14 x i8] c"PassInstaller\00" }>, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__58 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__58_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__57 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__57_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__56 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__56_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__55 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__55_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__54 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__54_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__53 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__53_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__52 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__52_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__51 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__51_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__50 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__50_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__47_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 3, i8 1 }, [3 x ptr] [ptr inttoptr (i64 5 to ptr), ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__9_value, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__5_value] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__9_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__8_value, ptr inttoptr (i64 -8591232484422632936 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__8_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"null\00" }>, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__49 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__49_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__48 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__48_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__46 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__46_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__45 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__45_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__13 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__13_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__44 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__44_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__43 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__43_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__42 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__42_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__41 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__41_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__32 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__32_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__40 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__40_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__39 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__39_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__38 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__38_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__37 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__37_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__22 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__22_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__35 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__35_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__36_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__33_value, ptr inttoptr (i64 -7687392943089124116 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__33_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [7 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 7, i64 7, i64 6, [7 x i8] c"decide\00" }>, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__34 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__34_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__21 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__21_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__20_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c"+\00" }>, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__19_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__19_value_aux_2, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__18_value, ptr inttoptr (i64 -8891312273395381784 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__19_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__19_value_aux_1, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__2_value, ptr inttoptr (i64 -102594623773132122 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__19_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__19_value_aux_0, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__1_value, ptr inttoptr (i64 8018486133748762727 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__19_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [7 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 7, i64 7, i64 6, [7 x i8] c"Parser\00" }>, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [7 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 7, i64 7, i64 6, [7 x i8] c"Tactic\00" }>, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__18_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [14 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 14, i64 14, i64 13, [14 x i8] c"posConfigItem\00" }>, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__17_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__17_value_aux_2, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__16_value, ptr inttoptr (i64 -8308301028975179315 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__17_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__17_value_aux_1, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__2_value, ptr inttoptr (i64 -102594623773132122 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__17_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__17_value_aux_0, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__1_value, ptr inttoptr (i64 8018486133748762727 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__17_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__16_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [11 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 11, i64 11, i64 10, [11 x i8] c"configItem\00" }>, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__31 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__31_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__30 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__30_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__29 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__29_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__28 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__28_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__27 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__27_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__25 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__25_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__26_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__23_value, ptr inttoptr (i64 3738010876686032200 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__23_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [6 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 6, i64 6, i64 5, [6 x i8] c"arith\00" }>, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__24 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__24_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__15_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__15_value_aux_2, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__14_value, ptr inttoptr (i64 3488656302031949961 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__15_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__15_value_aux_1, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__2_value, ptr inttoptr (i64 -102594623773132122 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__15_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__15_value_aux_0, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__1_value, ptr inttoptr (i64 8018486133748762727 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__15_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__14_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [10 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 10, i64 10, i64 9, [10 x i8] c"optConfig\00" }>, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__12 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__12_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__10_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"simp\00" }>, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__11_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__11_value_aux_2, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__10_value, ptr inttoptr (i64 -5662826540951335630 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__11_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__11_value_aux_1, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__2_value, ptr inttoptr (i64 -102594623773132122 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__11_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__11_value_aux_0, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__1_value, ptr inttoptr (i64 8018486133748762727 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__11_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__7_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__7_value_aux_2, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__6_value, ptr inttoptr (i64 -1218306686853293345 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__7_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__7_value_aux_1, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__2_value, ptr inttoptr (i64 -102594623773132122 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__7_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__7_value_aux_0, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__1_value, ptr inttoptr (i64 8018486133748762727 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__7_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__6_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [19 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 19, i64 19, i64 18, [19 x i8] c"tacticSeq1Indented\00" }>, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__4_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__4_value_aux_2, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__3_value, ptr inttoptr (i64 8504843326314613972 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__4_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__4_value_aux_1, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__2_value, ptr inttoptr (i64 -102594623773132122 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__4_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__4_value_aux_0, ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__1_value, ptr inttoptr (i64 8018486133748762727 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__4_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_Pass_phaseInv___autoParam___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [10 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 10, i64 10, i64 9, [10 x i8] c"tacticSeq\00" }>, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Compiler_LCNF_Phase_toNat(i8 noundef zeroext %0) local_unnamed_addr #0 {
  switch i8 %0, label %3 [
    i8 0, label %bb.a
    i8 1, label %2
  ]

2:                                                ; preds = %1
  br label %bb.a

3:                                                ; preds = %1
  br label %bb.a

bb.a:                                             ; preds = %1, %3, %2
  %.0 = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %1 ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Compiler_LCNF_Phase_toNat___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Lean_Compiler_LCNF_Phase_toNat.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Lean_Compiler_LCNF_Phase_toNat.exit

2:                                                ; preds = %bb.a
  br label %l_Lean_Compiler_LCNF_Phase_toNat.exit

l_Lean_Compiler_LCNF_Phase_toNat.exit:            ; preds = %bb.a, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Compiler_LCNF_instToStringPhase___lam__0(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr @l_Lean_Compiler_LCNF_instToStringPhase___lam__0___closed__1_value, ptr @l_Lean_Compiler_LCNF_instToStringPhase___lam__0___closed__2_value
  %switch.selectcmp4 = icmp eq i8 %0, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr @l_Lean_Compiler_LCNF_instToStringPhase___lam__0___closed__0_value, ptr %switch.select
  ret ptr %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Compiler_LCNF_instToStringPhase___lam__0___boxed(ptr noundef %0) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.c, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @l_Lean_Compiler_LCNF_instToStringPhase___lam__0___closed__1_value, ptr @l_Lean_Compiler_LCNF_instToStringPhase___lam__0___closed__2_value
  %switch.selectcmp4.i = icmp eq i8 %i.c, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr @l_Lean_Compiler_LCNF_instToStringPhase___lam__0___closed__0_value, ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Compiler_LCNF_Phase_withPurityCheck___redArg(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i8 @l_Lean_Compiler_LCNF_Phase_toPurity(i8 noundef zeroext %1) #4
  %i.b = tail call zeroext i8 @l_Lean_Compiler_LCNF_instDecidableEqPurity(i8 noundef zeroext %i.a, i8 noundef zeroext %2) #4
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %3 to i64
  %i.e = and i64 %i.d, 1
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %lean_dec.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %3, align 4, !tbaa !10     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit

bb.e:                                             ; preds = %bb.c
  %.not.i43 = icmp eq i32 %i.f, 0
  br i1 %.not.i43, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %switch.selectcmp = icmp eq i8 %1, 1
  %switch.select = select i1 %switch.selectcmp, ptr @l_Lean_Compiler_LCNF_instToStringPhase___lam__0___closed__1_value, ptr @l_Lean_Compiler_LCNF_instToStringPhase___lam__0___closed__2_value
  %switch.selectcmp41 = icmp eq i8 %1, 0
  %switch.select42 = select i1 %switch.selectcmp41, ptr @l_Lean_Compiler_LCNF_instToStringPhase___lam__0___closed__0_value, ptr %switch.select
  %i.i = tail call ptr @lean_string_append(ptr noundef nonnull @l_Lean_Compiler_LCNF_Phase_withPurityCheck___redArg___closed__3_value, ptr noundef nonnull %switch.select42) #4
  %i.j = tail call ptr @lean_string_append(ptr noundef %i.i, ptr noundef nonnull @l_Lean_Compiler_LCNF_Phase_withPurityCheck___redArg___closed__4_value) #4
  %i.k = icmp eq i8 %2, 0
  %.039 = select i1 %i.k, ptr @l_Lean_Compiler_LCNF_Phase_withPurityCheck___redArg___closed__5_value, ptr @l_Lean_Compiler_LCNF_instToStringPhase___lam__0___closed__2_value
  %i.l = tail call ptr @lean_string_append(ptr noundef %i.j, ptr noundef nonnull %.039) #4
  %i.m = tail call ptr @lean_string_append(ptr noundef %i.l, ptr noundef nonnull @l_Lean_Compiler_LCNF_Phase_withPurityCheck___redArg___closed__2_value) #4 ; 4 uses
  %i.n = tail call ptr @l_mkPanicMessageWithDecl(ptr noundef nonnull @l_Lean_Compiler_LCNF_Phase_withPurityCheck___redArg___closed__0_value, ptr noundef nonnull @l_Lean_Compiler_LCNF_Phase_withPurityCheck___redArg___closed__1_value, ptr noundef nonnull inttoptr (i64 67 to ptr), ptr noundef nonnull inttoptr (i64 9 to ptr), ptr noundef %i.m) #4
  %i.o = load i32, ptr %i.m, align 4, !tbaa !10   ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %i.m, align 4, !tbaa !10
  br label %lean_dec_ref.exit45

bb.h:                                             ; preds = %lean_dec.exit
  %.not.i44 = icmp eq i32 %i.o, 0
  br i1 %.not.i44, label %lean_dec_ref.exit45, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #4
  br label %lean_dec_ref.exit45

lean_dec_ref.exit45:                              ; preds = %bb.g, %bb.h, %bb.i
  %i.r = tail call ptr @l_panic___redArg(ptr noundef %0, ptr noundef %i.n) #4
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.s = tail call ptr @lean_apply_1(ptr noundef %3, ptr noundef nonnull inttoptr (i64 1 to ptr)) #4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %lean_dec_ref.exit45
  %.1 = phi ptr [ %i.r, %lean_dec_ref.exit45 ], [ %i.s, %bb.j ]
  ret ptr %.1
}

declare zeroext i8 @l_Lean_Compiler_LCNF_Phase_toPurity(i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @l_Lean_Compiler_LCNF_instDecidableEqPurity(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @lean_string_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_mkPanicMessageWithDecl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_panic___redArg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lean_apply_1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Compiler_LCNF_Phase_withPurityCheck___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %2 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  %i.g = tail call ptr @l_Lean_Compiler_LCNF_Phase_withPurityCheck___redArg(ptr noundef %0, i8 noundef zeroext %i.c, i8 noundef zeroext %i.f, ptr noundef %3)
  %i.h = ptrtoint ptr %0 to i64
  %i.i = and i64 %i.h, 1
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i7 = icmp eq i32 %i.j, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Compiler_LCNF_Phase_withPurityCheck(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Compiler_LCNF_Phase_withPurityCheck___redArg(ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Compiler_LCNF_Phase_withPurityCheck___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %3 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  %i.g = tail call ptr @l_Lean_Compiler_LCNF_Phase_withPurityCheck___redArg(ptr noundef %1, i8 noundef zeroext %i.c, i8 noundef zeroext %i.f, ptr noundef %4)
  %i.h = ptrtoint ptr %1 to i64
  %i.i = and i64 %i.h, 1
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i8 = icmp eq i32 %i.j, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Lean_Compiler_LCNF_instDecidableLtPhase(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  switch i8 %0, label %4 [
    i8 0, label %l_Lean_Compiler_LCNF_Phase_toNat.exit
    i8 1, label %3
  ]

3:                                                ; preds = %2
  br label %l_Lean_Compiler_LCNF_Phase_toNat.exit

4:                                                ; preds = %2
  br label %l_Lean_Compiler_LCNF_Phase_toNat.exit

l_Lean_Compiler_LCNF_Phase_toNat.exit:            ; preds = %2, %3, %4
  %.0.i12 = phi ptr [ inttoptr (i64 5 to ptr), %4 ], [ inttoptr (i64 3 to ptr), %3 ], [ inttoptr (i64 1 to ptr), %2 ]
  switch i8 %1, label %6 [
    i8 0, label %lean_dec.exit
    i8 1, label %5
  ]

5:                                                ; preds = %l_Lean_Compiler_LCNF_Phase_toNat.exit
  br label %lean_dec.exit

6:                                                ; preds = %l_Lean_Compiler_LCNF_Phase_toNat.exit
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %6, %5, %l_Lean_Compiler_LCNF_Phase_toNat.exit
  %.0.i13 = phi ptr [ inttoptr (i64 5 to ptr), %6 ], [ inttoptr (i64 3 to ptr), %5 ], [ inttoptr (i64 1 to ptr), %l_Lean_Compiler_LCNF_Phase_toNat.exit ]
  %i.a = icmp samesign ult ptr %.0.i12, %.0.i13
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Compiler_LCNF_instDecidableLtPhase___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %1 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  switch i8 %i.c, label %3 [
    i8 0, label %l_Lean_Compiler_LCNF_Phase_toNat.exit.i
    i8 1, label %2
  ]

2:                                                ; preds = %bb.a
  br label %l_Lean_Compiler_LCNF_Phase_toNat.exit.i

3:                                                ; preds = %bb.a
  br label %l_Lean_Compiler_LCNF_Phase_toNat.exit.i

l_Lean_Compiler_LCNF_Phase_toNat.exit.i:          ; preds = %3, %2, %bb.a
  %.0.i12.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  switch i8 %i.f, label %5 [
    i8 0, label %l_Lean_Compiler_LCNF_instDecidableLtPhase.exit
    i8 1, label %4
  ]

4:                                                ; preds = %l_Lean_Compiler_LCNF_Phase_toNat.exit.i
  br label %l_Lean_Compiler_LCNF_instDecidableLtPhase.exit

5:                                                ; preds = %l_Lean_Compiler_LCNF_Phase_toNat.exit.i
  br label %l_Lean_Compiler_LCNF_instDecidableLtPhase.exit

l_Lean_Compiler_LCNF_instDecidableLtPhase.exit:   ; preds = %l_Lean_Compiler_LCNF_Phase_toNat.exit.i, %4, %5
  %.0.i13.i = phi ptr [ inttoptr (i64 5 to ptr), %5 ], [ inttoptr (i64 3 to ptr), %4 ], [ inttoptr (i64 1 to ptr), %l_Lean_Compiler_LCNF_Phase_toNat.exit.i ]
  %6 = icmp samesign ult ptr %.0.i12.i, %.0.i13.i
  %7 = select i1 %6, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Lean_Compiler_LCNF_instDecidableLePhase(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  switch i8 %0, label %4 [
    i8 0, label %l_Lean_Compiler_LCNF_Phase_toNat.exit
    i8 1, label %3
  ]

3:                                                ; preds = %2
  br label %l_Lean_Compiler_LCNF_Phase_toNat.exit

4:                                                ; preds = %2
  br label %l_Lean_Compiler_LCNF_Phase_toNat.exit

l_Lean_Compiler_LCNF_Phase_toNat.exit:            ; preds = %2, %3, %4
  %.0.i12 = phi ptr [ inttoptr (i64 5 to ptr), %4 ], [ inttoptr (i64 3 to ptr), %3 ], [ inttoptr (i64 1 to ptr), %2 ]
  switch i8 %1, label %6 [
    i8 0, label %lean_dec.exit
    i8 1, label %5
  ]

5:                                                ; preds = %l_Lean_Compiler_LCNF_Phase_toNat.exit
  br label %lean_dec.exit

6:                                                ; preds = %l_Lean_Compiler_LCNF_Phase_toNat.exit
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %6, %5, %l_Lean_Compiler_LCNF_Phase_toNat.exit
  %.0.i13 = phi ptr [ inttoptr (i64 5 to ptr), %6 ], [ inttoptr (i64 3 to ptr), %5 ], [ inttoptr (i64 1 to ptr), %l_Lean_Compiler_LCNF_Phase_toNat.exit ]
  %7 = icmp samesign ule ptr %.0.i12, %.0.i13
  %i.a = zext i1 %7 to i8
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Compiler_LCNF_instDecidableLePhase___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %1 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  switch i8 %i.c, label %3 [
    i8 0, label %l_Lean_Compiler_LCNF_Phase_toNat.exit.i
    i8 1, label %2
  ]

2:                                                ; preds = %bb.a
  br label %l_Lean_Compiler_LCNF_Phase_toNat.exit.i

3:                                                ; preds = %bb.a
  br label %l_Lean_Compiler_LCNF_Phase_toNat.exit.i

l_Lean_Compiler_LCNF_Phase_toNat.exit.i:          ; preds = %3, %2, %bb.a
  %.0.i12.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  switch i8 %i.f, label %5 [
    i8 0, label %l_Lean_Compiler_LCNF_instDecidableLePhase.exit
    i8 1, label %4
  ]

4:                                                ; preds = %l_Lean_Compiler_LCNF_Phase_toNat.exit.i
  br label %l_Lean_Compiler_LCNF_instDecidableLePhase.exit

5:                                                ; preds = %l_Lean_Compiler_LCNF_Phase_toNat.exit.i
  br label %l_Lean_Compiler_LCNF_instDecidableLePhase.exit

l_Lean_Compiler_LCNF_instDecidableLePhase.exit:   ; preds = %l_Lean_Compiler_LCNF_Phase_toNat.exit.i, %4, %5
  %.0.i13.i = phi ptr [ inttoptr (i64 5 to ptr), %5 ], [ inttoptr (i64 3 to ptr), %4 ], [ inttoptr (i64 1 to ptr), %l_Lean_Compiler_LCNF_Phase_toNat.exit.i ]
  %.not = icmp samesign ugt ptr %.0.i12.i, %.0.i13.i
  %6 = select i1 %.not, ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 3 to ptr)
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Compiler_LCNF_instInhabitedPass___lam__0(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #1 {
bb.a:
  tail call void @lean_inc_heartbeat() #4
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !10
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.d, align 8, !tbaa !13
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Compiler_LCNF_instInhabitedPass___lam__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree readnone captures(none) %5) #1 {
bb.a:
  tail call void @lean_inc_heartbeat() #4
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %l_Lean_Compiler_LCNF_instInhabitedPass___lam__0.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

l_Lean_Compiler_LCNF_instInhabitedPass___lam__0.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !10
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.d, align 8, !tbaa !13
  %i.e = ptrtoint ptr %4 to i64
  %i.f = and i64 %i.e, 1
  %.not.i10 = icmp eq i64 %i.f, 0
  br i1 %.not.i10, label %bb.c, label %lean_dec.exit11

bb.c:                                             ; preds = %l_Lean_Compiler_LCNF_instInhabitedPass___lam__0.exit
  %i.g = load i32, ptr %4, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %4, align 4, !tbaa !10
  br label %lean_dec.exit11

bb.e:                                             ; preds = %bb.c
  %.not.i12 = icmp eq i32 %i.g, 0
  br i1 %.not.i12, label %lean_dec.exit11, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.f, %bb.e, %bb.d, %l_Lean_Compiler_LCNF_instInhabitedPass___lam__0.exit
  %i.j = load i32, ptr %3, align 4, !tbaa !10     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %lean_dec.exit11
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %3, align 4, !tbaa !10
  br label %lean_dec_ref.exit18

bb.h:                                             ; preds = %lean_dec.exit11
  %.not.i17 = icmp eq i32 %i.j, 0
  br i1 %.not.i17, label %lean_dec_ref.exit18, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec_ref.exit18

lean_dec_ref.exit18:                              ; preds = %bb.g, %bb.h, %bb.i
  %i.m = ptrtoint ptr %2 to i64
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec_ref.exit18
  %i.o = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i13 = icmp eq i32 %i.o, 0
  br i1 %.not.i13, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec_ref.exit18
  %i.r = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.n, label %bb.o, !prof !11

bb.n:                                             ; preds = %lean_dec.exit
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit16

bb.o:                                             ; preds = %lean_dec.exit
  %.not.i15 = icmp eq i32 %i.r, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.n, %bb.o, %bb.p
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Compiler_LCNF_instInhabitedPassInstaller_default___lam__0(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  tail call void @lean_inc_heartbeat() #4
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !10
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.d, align 8, !tbaa !13
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Compiler_LCNF_instInhabitedPassInstaller_default___lam__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  tail call void @lean_inc_heartbeat() #4
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %l_Lean_Compiler_LCNF_instInhabitedPassInstaller_default___lam__0.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

l_Lean_Compiler_LCNF_instInhabitedPassInstaller_default___lam__0.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !10
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.d, align 8, !tbaa !13
  %i.e = ptrtoint ptr %2 to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.c, label %lean_dec.exit

bb.c:                                             ; preds = %l_Lean_Compiler_LCNF_instInhabitedPassInstaller_default___lam__0.exit
  %i.g = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit

bb.e:                                             ; preds = %bb.c
  %.not.i6 = icmp eq i32 %i.g, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %l_Lean_Compiler_LCNF_instInhabitedPassInstaller_default___lam__0.exit
  %i.j = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %lean_dec.exit
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit8

end_hunk_0
