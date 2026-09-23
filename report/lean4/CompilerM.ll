Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/CompilerM?download=true
inline.NumInlined: 3280
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lean_once_cell_t = type { i32, i32 }

@l_Lean_Compiler_LCNF_instAddMessageContextCompilerM = local_unnamed_addr global ptr @l_Lean_Compiler_LCNF_instAddMessageContextCompilerM___closed__0_value, align 8
@l_Lean_Compiler_LCNF_instInhabitedNormFVarResult_default = local_unnamed_addr global ptr @l_Lean_Compiler_LCNF_instInhabitedNormFVarResult_default___closed__0_value, align 8
@l_Lean_Compiler_LCNF_instInhabitedNormFVarResult = local_unnamed_addr global ptr @l_Lean_Compiler_LCNF_instInhabitedNormFVarResult_default___closed__0_value, align 8
@l_Lean_Compiler_LCNF_instAddMessageContextCompilerM___lam__0___closed__2 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_instAddMessageContextCompilerM___lam__0___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_getType___closed__1 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_getType___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_getParam___closed__1 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_getParam___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_getLetDecl___closed__1 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_getLetDecl___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_getFunDecl___closed__1 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_getFunDecl___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_instInhabitedExpr = external local_unnamed_addr global ptr, align 8
@l_Lean_Compiler_LCNF_erasedExpr = external local_unnamed_addr global ptr, align 8
@l___private_Lean_Compiler_LCNF_CompilerM_0__Lean_Compiler_LCNF_normExprImp_go___closed__3 = internal global ptr null, align 8
@l___private_Lean_Compiler_LCNF_CompilerM_0__Lean_Compiler_LCNF_normExprImp_go___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_instMonadCompilerM___closed__1 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_instMonadCompilerM___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_instInhabitedCacheExtension_default___closed__0 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_instInhabitedCacheExtension_default___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_CacheExtension_register___redArg___lam__0___closed__3 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_CacheExtension_register___redArg___lam__0___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_CacheExtension_register___redArg___closed__3 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_CacheExtension_register___redArg___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_CacheExtension_insert___redArg___closed__2 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_CacheExtension_insert___redArg___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_Compiler_LCNF_instInhabitedPhase_default = local_unnamed_addr global i8 0, align 1
@l_Lean_Compiler_LCNF_instInhabitedPhase = local_unnamed_addr global i8 0, align 1
@l_Lean_Compiler_LCNF_CompilerM_instInhabitedState_default = local_unnamed_addr global ptr null, align 8
@l_Lean_Compiler_LCNF_CompilerM_instInhabitedState = local_unnamed_addr global ptr null, align 8
@l_Lean_Compiler_LCNF_CompilerM_instInhabitedContext_default = local_unnamed_addr global ptr null, align 8
@l_Lean_Compiler_LCNF_CompilerM_instInhabitedContext = local_unnamed_addr global ptr null, align 8
@l_Lean_Compiler_LCNF_instMonadCompilerM = local_unnamed_addr global ptr null, align 8
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_Compiler_LCNF_instAddMessageContextCompilerM___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Compiler_LCNF_instAddMessageContextCompilerM___lam__0___boxed, i16 6, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Compiler_LCNF_instInhabitedNormFVarResult_default___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 0 }, [1 x ptr] [ptr inttoptr (i64 1 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_instAddMessageContextCompilerM___lam__0___closed__1 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_instAddMessageContextCompilerM___lam__0___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_instAddMessageContextCompilerM___lam__0___closed__0 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_instAddMessageContextCompilerM___lam__0___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_getType___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [23 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 23, i64 23, i64 22, [23 x i8] c"unknown free variable \00" }>, align 8
@l_Lean_Compiler_LCNF_getParam___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [19 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 19, i64 19, i64 18, [19 x i8] c"unknown parameter \00" }>, align 8
@l_Lean_Compiler_LCNF_getLetDecl___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [25 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 25, i64 25, i64 24, [25 x i8] c"unknown let-declaration \00" }>, align 8
@l_Lean_Compiler_LCNF_getFunDecl___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [24 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 24, i64 24, i64 23, [24 x i8] c"unknown local function \00" }, align 8
@l___private_Lean_Compiler_LCNF_CompilerM_0__Lean_Compiler_LCNF_normExprImp_go___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [34 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 34, i64 34, i64 33, [34 x i8] c"unreachable code has been reached\00" }>, align 8
@l___private_Lean_Compiler_LCNF_CompilerM_0__Lean_Compiler_LCNF_normExprImp_go___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [74 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 74, i64 74, i64 73, [74 x i8] c"_private.Lean.Compiler.LCNF.CompilerM.0.Lean.Compiler.LCNF.normExprImp.go\00" }>, align 8
@l___private_Lean_Compiler_LCNF_CompilerM_0__Lean_Compiler_LCNF_normExprImp_go___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [29 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 29, i64 29, i64 28, [29 x i8] c"Lean.Compiler.LCNF.CompilerM\00" }>, align 8
@l_Lean_Compiler_LCNF_addSubst___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_instBEqFVarId_beq___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Compiler_LCNF_addSubst___redArg___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_instHashableFVarId_hash___boxed, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Compiler_LCNF_mkParam___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Compiler_LCNF_mkParam___closed__0_value, ptr inttoptr (i64 6531178163111358628 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_mkParam___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [3 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 3, i64 3, i64 2, [3 x i8] c"_y\00" }>, align 8
@l_Lean_Compiler_LCNF_mkLetDecl___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Compiler_LCNF_mkLetDecl___closed__0_value, ptr inttoptr (i64 7699194985028780469 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_mkLetDecl___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [3 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 3, i64 3, i64 2, [3 x i8] c"_x\00" }>, align 8
@l_Lean_Compiler_LCNF_mkFunDecl___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Compiler_LCNF_mkFunDecl___closed__0_value, ptr inttoptr (i64 -6129307001861619203 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_mkFunDecl___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [3 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 3, i64 3, i64 2, [3 x i8] c"_f\00" }>, align 8
@l_Lean_Compiler_LCNF_instMonadCompilerM___closed__0 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_instMonadCompilerM___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_instMonadCompilerM___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Core_instMonadCoreM___lam__0___boxed, i16 5, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Compiler_LCNF_instMonadCompilerM___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Core_instMonadCoreM___lam__1___boxed, i16 7, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Compiler_LCNF_instMonadCompilerM___closed__4_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Compiler_LCNF_instMonadCompilerM___lam__0___boxed, i16 7, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Compiler_LCNF_instMonadCompilerM___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Compiler_LCNF_instMonadCompilerM___lam__1___boxed, i16 9, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Compiler_LCNF_mkFreshJpName___redArg___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Compiler_LCNF_mkFreshJpName___redArg___closed__0_value, ptr inttoptr (i64 -5488490826322459303 to ptr)] }, align 8
@l_Lean_Compiler_LCNF_mkFreshJpName___redArg___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [4 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 4, i64 4, i64 3, [4 x i8] c"_jp\00" }>, align 8
@l_Lean_Compiler_LCNF_CacheExtension_register___redArg___lam__0___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [22 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 22, i64 22, i64 21, [22 x i8] c"key is not in the map\00" }>, align 8
@l_Lean_Compiler_LCNF_CacheExtension_register___redArg___lam__0___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [29 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 29, i64 29, i64 28, [29 x i8] c"Lean.PersistentHashMap.find!\00" }>, align 8
@l_Lean_Compiler_LCNF_CacheExtension_register___redArg___lam__0___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [28 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 28, i64 28, i64 27, [28 x i8] c"Lean.Data.PersistentHashMap\00" }>, align 8
@l_Lean_Compiler_LCNF_CacheExtension_register___redArg___lam__1___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Compiler_LCNF_CacheExtension_register___redArg___closed__2 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_CacheExtension_register___redArg___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_CacheExtension_register___redArg___closed__1 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_CacheExtension_register___redArg___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_CacheExtension_register___redArg___closed__0 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_CacheExtension_register___redArg___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_CacheExtension_insert___redArg___closed__1 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_CacheExtension_insert___redArg___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_CacheExtension_insert___redArg___closed__0 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_CacheExtension_insert___redArg___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_CompilerM_instInhabitedState_default___closed__3 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_CompilerM_instInhabitedState_default___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_CompilerM_instInhabitedState_default___closed__2 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_CompilerM_instInhabitedState_default___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_CompilerM_instInhabitedState_default___closed__1 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_CompilerM_instInhabitedState_default___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_CompilerM_instInhabitedState_default___closed__0 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_CompilerM_instInhabitedState_default___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_CompilerM_instInhabitedContext_default___closed__0 = internal global ptr null, align 8
@l_Lean_Compiler_LCNF_CompilerM_instInhabitedContext_default___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Compiler_LCNF_instInhabitedConfigOptions_default = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Compiler_LCNF_Phase_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #0 {
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
define noundef nonnull ptr @l_Lean_Compiler_LCNF_Phase_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit

l_Lean_Compiler_LCNF_Phase_ctorIdx.exit:          ; preds = %bb.a, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Compiler_LCNF_Phase_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #0 {
  switch i8 %0, label %3 [
    i8 0, label %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit
    i8 1, label %2
  ]

2:                                                ; preds = %1
  br label %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit

3:                                                ; preds = %1
  br label %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit

l_Lean_Compiler_LCNF_Phase_ctorIdx.exit:          ; preds = %1, %2, %3
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %1 ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Compiler_LCNF_Phase_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Lean_Compiler_LCNF_Phase_toCtorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Lean_Compiler_LCNF_Phase_toCtorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Lean_Compiler_LCNF_Phase_toCtorIdx.exit

l_Lean_Compiler_LCNF_Phase_toCtorIdx.exit:        ; preds = %bb.a, %1, %2
  %.0.i.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Compiler_LCNF_Phase_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Compiler_LCNF_Phase_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Compiler_LCNF_Phase_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %4, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %4, align 4, !tbaa !10
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Compiler_LCNF_Phase_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit9

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %4, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !10
  br label %lean_dec.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i10 = icmp eq i32 %i.f, 0
  br i1 %.not.i10, label %lean_dec.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit9

lean_dec.exit9:                                   ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit9
  %i.k = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i11 = icmp eq i32 %i.k, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Compiler_LCNF_Phase_base_elim___redArg(ptr noundef returned %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !10
end_hunk_0
begin_hunk_1_@l_Lean_Compiler_LCNF_Phase_impure_elim___redArg___boxed:bb.a
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Compiler_LCNF_Phase_impure_elim(ptr nofree noundef readnone captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %3, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %3, align 4, !tbaa !10
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Compiler_LCNF_Phase_impure_elim___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %3, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %3, align 4, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %3, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i6 = icmp eq i32 %i.f, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 3) i8 @l_Lean_Compiler_LCNF_Phase_ofNat(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %lean_nat_le.exit, label %lean_nat_le.exit.thread, !prof !13

lean_nat_le.exit:                                 ; preds = %bb.a
  %i.c = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #7
  br i1 %i.c, label %bb.b, label %.critedge.i10

lean_nat_le.exit.thread:                          ; preds = %bb.a
  %.not = icmp ugt ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %lean_nat_le.exit.thread
  %i.d = icmp ule ptr %0, inttoptr (i64 3 to ptr)
  br label %lean_nat_le.exit12

.critedge.i10:                                    ; preds = %lean_nat_le.exit
  %i.e = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 3 to ptr)) #7
  br label %lean_nat_le.exit12

lean_nat_le.exit12:                               ; preds = %.thread, %.critedge.i10
  %.0.i11 = phi i1 [ %i.d, %.thread ], [ %i.e, %.critedge.i10 ]
  %. = select i1 %.0.i11, i8 1, i8 2
  br label %bb.b

bb.b:                                             ; preds = %lean_nat_le.exit.thread, %lean_nat_le.exit, %lean_nat_le.exit12
  %.1 = phi i8 [ %., %lean_nat_le.exit12 ], [ 0, %lean_nat_le.exit ], [ 0, %lean_nat_le.exit.thread ]
  ret i8 %.1
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Compiler_LCNF_Phase_ofNat___boxed(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %lean_nat_le.exit.i, label %lean_nat_le.exit.thread.i, !prof !13

lean_nat_le.exit.i:                               ; preds = %bb.a
  %i.c = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #7
  br i1 %i.c, label %l_Lean_Compiler_LCNF_Phase_ofNat.exit.thread, label %l_Lean_Compiler_LCNF_Phase_ofNat.exit.thread11

lean_nat_le.exit.thread.i:                        ; preds = %bb.a
  %.not.i4 = icmp ugt ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not.i4, label %l_Lean_Compiler_LCNF_Phase_ofNat.exit, label %lean_dec.exit

l_Lean_Compiler_LCNF_Phase_ofNat.exit.thread11:   ; preds = %lean_nat_le.exit.i
  %i.d = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 3 to ptr)) #7
  %i.e = select i1 %i.d, i64 3, i64 5
  br label %l_Lean_Compiler_LCNF_Phase_ofNat.exit.thread

l_Lean_Compiler_LCNF_Phase_ofNat.exit:            ; preds = %lean_nat_le.exit.thread.i
  %.not = icmp ugt ptr %0, inttoptr (i64 3 to ptr)
  %i.f = select i1 %.not, i64 5, i64 3
  br label %lean_dec.exit

l_Lean_Compiler_LCNF_Phase_ofNat.exit.thread:     ; preds = %lean_nat_le.exit.i, %l_Lean_Compiler_LCNF_Phase_ofNat.exit.thread11
  %.1.i8 = phi i64 [ %i.e, %l_Lean_Compiler_LCNF_Phase_ofNat.exit.thread11 ], [ 1, %lean_nat_le.exit.i ] ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %l_Lean_Compiler_LCNF_Phase_ofNat.exit.thread
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.c:                                             ; preds = %l_Lean_Compiler_LCNF_Phase_ofNat.exit.thread
  %.not.i3 = icmp eq i32 %i.g, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_nat_le.exit.thread.i, %l_Lean_Compiler_LCNF_Phase_ofNat.exit, %bb.d, %bb.c, %bb.b
  %.1.i7 = phi i64 [ %.1.i8, %bb.d ], [ %.1.i8, %bb.c ], [ %.1.i8, %bb.b ], [ %i.f, %l_Lean_Compiler_LCNF_Phase_ofNat.exit ], [ 1, %lean_nat_le.exit.thread.i ]
  %i.j = inttoptr i64 %.1.i7 to ptr
  ret ptr %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Lean_Compiler_LCNF_instDecidableEqPhase(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  switch i8 %0, label %4 [
    i8 0, label %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit
    i8 1, label %3
  ]

3:                                                ; preds = %2
  br label %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit

4:                                                ; preds = %2
  br label %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit

l_Lean_Compiler_LCNF_Phase_ctorIdx.exit:          ; preds = %2, %3, %4
  %.0.i12 = phi ptr [ inttoptr (i64 5 to ptr), %4 ], [ inttoptr (i64 3 to ptr), %3 ], [ inttoptr (i64 1 to ptr), %2 ]
  switch i8 %1, label %6 [
    i8 0, label %lean_dec.exit
    i8 1, label %5
  ]

5:                                                ; preds = %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit
  br label %lean_dec.exit

6:                                                ; preds = %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %6, %5, %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit
  %.0.i13 = phi ptr [ inttoptr (i64 5 to ptr), %6 ], [ inttoptr (i64 3 to ptr), %5 ], [ inttoptr (i64 1 to ptr), %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit ]
  %i.a = icmp eq ptr %.0.i12, %.0.i13
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Compiler_LCNF_instDecidableEqPhase___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %1 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  switch i8 %i.c, label %3 [
    i8 0, label %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit.i
    i8 1, label %2
  ]

2:                                                ; preds = %bb.a
  br label %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit.i

3:                                                ; preds = %bb.a
  br label %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit.i

l_Lean_Compiler_LCNF_Phase_ctorIdx.exit.i:        ; preds = %3, %2, %bb.a
  %.0.i12.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  switch i8 %i.f, label %5 [
    i8 0, label %l_Lean_Compiler_LCNF_instDecidableEqPhase.exit
    i8 1, label %4
  ]

4:                                                ; preds = %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit.i
  br label %l_Lean_Compiler_LCNF_instDecidableEqPhase.exit

5:                                                ; preds = %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit.i
  br label %l_Lean_Compiler_LCNF_instDecidableEqPhase.exit

l_Lean_Compiler_LCNF_instDecidableEqPhase.exit:   ; preds = %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit.i, %4, %5
  %.0.i13.i = phi ptr [ inttoptr (i64 5 to ptr), %5 ], [ inttoptr (i64 3 to ptr), %4 ], [ inttoptr (i64 1 to ptr), %l_Lean_Compiler_LCNF_Phase_ctorIdx.exit.i ]
  %6 = icmp eq ptr %.0.i12.i, %.0.i13.i
  %7 = select i1 %6, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Lean_Compiler_LCNF_Phase_toPurity(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %0, 2
  %. = zext i1 %i.a to i8
  ret i8 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Compiler_LCNF_Phase_toPurity___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 510
  %i.c = icmp eq i64 %i.b, 4
  %i.d = select i1 %i.c, i64 3, i64 1
  %i.e = inttoptr i64 %i.d to ptr
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Compiler_LCNF_instMonadCompilerM___lam__0(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #2 {
bb.a:
  tail call void @lean_inc_heartbeat() #7
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !10
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !15
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc nonnull ptr @lean_alloc_ctor(i32 noundef range(i32 0, 14) %0, i32 noundef range(i32 1, 11) %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #3 {
lean_usize_add_checked.exit:
  %i.a = shl nuw nsw i32 %1, 3
  %narrow = add nuw nsw i32 %i.a, 8
  %i.b = or disjoint i32 %narrow, %2              ; 2 uses
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = and i64 %i.c, 248
  %i.e = and i64 %i.c, 3
  %.not.i.i = icmp eq i64 %i.e, 0
  %i.f = select i1 %.not.i.i, i64 0, i64 8
  %i.g = add nuw nsw i64 %i.f, %i.d               ; 3 uses
  tail call void @lean_inc_heartbeat() #7
  %i.h = tail call noalias ptr @mi_malloc_small(i64 noundef %i.g) #7 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.a, label %lean_alloc_small_object.exit.i

bb.a:                                             ; preds = %lean_usize_add_checked.exit
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_small_object.exit.i:                   ; preds = %lean_usize_add_checked.exit
  %i.j = trunc nuw nsw i64 %i.g to i32            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, -65536
  %i.n = or disjoint i32 %i.m, %i.j               ; 2 uses
  store i32 %i.n, ptr %i.k, align 4
  %i.o = icmp samesign ult i32 %i.b, %i.j
  br i1 %i.o, label %bb.b, label %lean_alloc_ctor_memory.exit

bb.b:                                             ; preds = %lean_alloc_small_object.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  store i64 0, ptr %i.q, align 8, !tbaa !17
  %.pre = load i32, ptr %i.k, align 4
  br label %lean_alloc_ctor_memory.exit

lean_alloc_ctor_memory.exit:                      ; preds = %lean_alloc_small_object.exit.i, %bb.b
  %i.r = phi i32 [ %i.n, %lean_alloc_small_object.exit.i ], [ %.pre, %bb.b ]
  store i32 1, ptr %i.h, align 4, !tbaa !10
  %i.s = shl nuw nsw i32 %0, 24
  %i.t = and i32 %i.r, 65535
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = shl nuw nsw i32 %1, 16
  %i.w = or disjoint i32 %i.u, %i.v
  store i32 %i.w, ptr %i.k, align 4
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Compiler_LCNF_instMonadCompilerM___lam__0___boxed(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree readnone captures(none) %6) #2 {
bb.a:
  tail call void @lean_inc_heartbeat() #7
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %l_Lean_Compiler_LCNF_instMonadCompilerM___lam__0.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

l_Lean_Compiler_LCNF_instMonadCompilerM___lam__0.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !10
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !15
  %i.e = ptrtoint ptr %5 to i64
  %i.f = and i64 %i.e, 1
  %.not.i11 = icmp eq i64 %i.f, 0
  br i1 %.not.i11, label %bb.c, label %lean_dec.exit12

bb.c:                                             ; preds = %l_Lean_Compiler_LCNF_instMonadCompilerM___lam__0.exit
  %i.g = load i32, ptr %5, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit12

bb.e:                                             ; preds = %bb.c
  %.not.i13 = icmp eq i32 %i.g, 0
  br i1 %.not.i13, label %lean_dec.exit12, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit12

lean_dec.exit12:                                  ; preds = %bb.f, %bb.e, %bb.d, %l_Lean_Compiler_LCNF_instMonadCompilerM___lam__0.exit
  %i.j = load i32, ptr %4, align 4, !tbaa !10     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %lean_dec.exit12
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %4, align 4, !tbaa !10
  br label %lean_dec_ref.exit19

bb.h:                                             ; preds = %lean_dec.exit12
  %.not.i18 = icmp eq i32 %i.j, 0
  br i1 %.not.i18, label %lean_dec_ref.exit19, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec_ref.exit19

lean_dec_ref.exit19:                              ; preds = %bb.g, %bb.h, %bb.i
  %i.m = ptrtoint ptr %3 to i64
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec_ref.exit19
  %i.o = load i32, ptr %3, align 4, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i14 = icmp eq i32 %i.o, 0
  br i1 %.not.i14, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec_ref.exit19
  %i.r = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.n, label %bb.o, !prof !11

bb.n:                                             ; preds = %lean_dec.exit
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %2, align 4, !tbaa !10
  br label %lean_dec_ref.exit17

bb.o:                                             ; preds = %lean_dec.exit
  %.not.i16 = icmp eq i32 %i.r, 0
  br i1 %.not.i16, label %lean_dec_ref.exit17, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec_ref.exit17

lean_dec_ref.exit17:                              ; preds = %bb.n, %bb.o, %bb.p
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Compiler_LCNF_instMonadCompilerM___lam__1(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #2 {
bb.a:
end_hunk_1
