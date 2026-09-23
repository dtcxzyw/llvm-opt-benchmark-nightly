Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/LocalContext?download=true
inline.NumInlined: 3999
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lean_once_cell_t = type { i32, i32 }

@l_Lean_instReprLocalDeclKind = local_unnamed_addr global ptr @l_Lean_instReprLocalDeclKind___closed__0_value, align 8
@l_Lean_instHashableLocalDeclKind = local_unnamed_addr global ptr @l_Lean_instHashableLocalDeclKind___closed__0_value, align 8
@l_Lean_instReprLocalDeclKind_repr___closed__6 = internal global ptr null, align 8
@l_Lean_instReprLocalDeclKind_repr___closed__6_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_instReprLocalDeclKind_repr___closed__7 = internal global ptr null, align 8
@l_Lean_instReprLocalDeclKind_repr___closed__7_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_instInhabitedExpr = external local_unnamed_addr global ptr, align 8
@l_Lean_LocalDecl_value___closed__3 = internal global ptr null, align 8
@l_Lean_LocalDecl_value___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_LocalDecl_value___closed__5 = internal global ptr null, align 8
@l_Lean_LocalDecl_value___closed__5_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_instInhabitedLocalDecl_default = local_unnamed_addr global ptr null, align 8
@l_Lean_LocalDecl_setBinderInfo___closed__2 = internal global ptr null, align 8
@l_Lean_LocalDecl_setBinderInfo___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_instInhabitedLocalContext_default___closed__4 = internal global ptr null, align 8
@l_Lean_instInhabitedLocalContext_default___closed__4_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_LocalContext_mkLocalDecl_spec__0_spec__0___redArg___closed__1 = internal global i64 0, align 8
@l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_LocalContext_mkLocalDecl_spec__0_spec__0___redArg___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_LocalContext_mkLocalDecl_spec__0_spec__0___redArg___closed__2 = internal global ptr null, align 8
@l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_LocalContext_mkLocalDecl_spec__0_spec__0___redArg___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_LocalContext_get_x21___closed__2 = internal global ptr null, align 8
@l_Lean_LocalContext_get_x21___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlFromMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_LocalContext_getFVarIds_spec__0_spec__0___closed__0 = internal global ptr null, align 8
@l___private_Lean_Data_PersistentArray_0__Lean_PersistentArray_foldlFromMAux___at___00Lean_PersistentArray_foldlM___at___00Lean_LocalContext_getFVarIds_spec__0_spec__0___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_LocalContext_mkBinding___lam__0___closed__1 = internal global ptr null, align 8
@l_Lean_LocalContext_mkBinding___lam__0___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_NameSet_empty = external local_unnamed_addr global ptr, align 8
@l_Std_DHashMap_Internal_Raw_u2080_erase___at___00Lean_LocalContext_findFromUserNames_spec__1___redArg___closed__0 = internal global i64 0, align 8
@l_Std_DHashMap_Internal_Raw_u2080_erase___at___00Lean_LocalContext_findFromUserNames_spec__1___redArg___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_instInhabitedLocalDeclKind_default = local_unnamed_addr global i8 0, align 1
@l_Lean_instInhabitedLocalDeclKind = local_unnamed_addr global i8 0, align 1
@l_Lean_instInhabitedLocalDecl = local_unnamed_addr global ptr null, align 8
@l_Lean_instInhabitedLocalContext_default = local_unnamed_addr global ptr null, align 8
@l_Lean_instInhabitedLocalContext = local_unnamed_addr global ptr null, align 8
@l_Lean_LocalContext_empty = local_unnamed_addr global ptr null, align 8
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_instReprLocalDeclKind___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_instReprLocalDeclKind_repr___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_instHashableLocalDeclKind___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_instHashableLocalDeclKind_hash___boxed, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_instReprLocalDeclKind_repr___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_instReprLocalDeclKind_repr___closed__0_value] }, align 8
@l_Lean_instReprLocalDeclKind_repr___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [27 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 27, i64 27, i64 26, [27 x i8] c"Lean.LocalDeclKind.default\00" }>, align 8
@l_Lean_instReprLocalDeclKind_repr___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_instReprLocalDeclKind_repr___closed__2_value] }, align 8
@l_Lean_instReprLocalDeclKind_repr___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [30 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 30, i64 30, i64 29, [30 x i8] c"Lean.LocalDeclKind.implDetail\00" }>, align 8
@l_Lean_instReprLocalDeclKind_repr___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_instReprLocalDeclKind_repr___closed__4_value] }, align 8
@l_Lean_instReprLocalDeclKind_repr___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [27 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 27, i64 27, i64 26, [27 x i8] c"Lean.LocalDeclKind.auxDecl\00" }>, align 8
@l_Lean_LocalDecl_value___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [25 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 25, i64 25, i64 24, [25 x i8] c"let declaration expected\00" }>, align 8
@l_Lean_LocalDecl_value___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [21 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 21, i64 21, i64 20, [21 x i8] c"Lean.LocalDecl.value\00" }>, align 8
@l_Lean_LocalDecl_value___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [35 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 35, i64 35, i64 34, [35 x i8] c"dependent let declaration expected\00" }>, align 8
@l_Lean_LocalDecl_setBinderInfo___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [27 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 27, i64 27, i64 26, [27 x i8] c"unexpected let declaration\00" }>, align 8
@l_Lean_LocalDecl_setBinderInfo___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [29 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 29, i64 29, i64 28, [29 x i8] c"Lean.LocalDecl.setBinderInfo\00" }>, align 8
@l_Lean_instInhabitedLocalContext_default___closed__3 = internal global ptr null, align 8
@l_Lean_instInhabitedLocalContext_default___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_instInhabitedLocalContext_default___closed__1 = internal global ptr null, align 8
@l_Lean_instInhabitedLocalContext_default___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_instInhabitedLocalContext_default___closed__2 = internal global ptr null, align 8
@l_Lean_instInhabitedLocalContext_default___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_instInhabitedLocalContext_default___closed__0 = internal global ptr null, align 8
@l_Lean_instInhabitedLocalContext_default___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_LocalContext_mkLocalDecl_spec__0_spec__0___redArg___closed__0 = internal global i64 0, align 8
@l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_LocalContext_mkLocalDecl_spec__0_spec__0___redArg___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_LocalContext_get_x21___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [22 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 22, i64 22, i64 21, [22 x i8] c"unknown free variable\00" }>, align 8
@l_Lean_LocalContext_get_x21___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [23 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 23, i64 23, i64 22, [23 x i8] c"Lean.LocalContext.get!\00" }>, align 8
@l_Lean_LocalContext_getFVarIds___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8
@l_Lean_LocalDecl_value___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [18 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 18, i64 18, i64 17, [18 x i8] c"Lean.LocalContext\00" }>, align 8
@l_Lean_LocalContext_getFromUserName_x21___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [35 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 35, i64 35, i64 34, [35 x i8] c"Lean.LocalContext.getFromUserName!\00" }>, align 8
@l_Lean_LocalContext_getFromUserName_x21___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [28 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 28, i64 28, i64 27, [28 x i8] c"unknown local declaration `\00" }>, align 8
@l_Lean_LocalContext_getFromUserName_x21___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c"`\00" }>, align 8
@l_Lean_LocalContext_modifyLocalDecl___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_instBEqFVarId_beq___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_LocalContext_modifyLocalDecl___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_instHashableFVarId_hash___boxed, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_LocalContext_foldl___redArg___closed__9_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 0 }, [2 x ptr] [ptr @l_Lean_LocalContext_foldl___redArg___closed__8_value, ptr @l_Lean_LocalContext_foldl___redArg___closed__6_value] }, align 8
@l_Lean_LocalContext_foldl___redArg___closed__8_value = internal constant { { i32, i8, i8, i8, i8 }, [5 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 48, i8 0, i8 5, i8 0 }, [5 x ptr] [ptr @l_Lean_LocalContext_foldl___redArg___closed__7_value, ptr @l_Lean_LocalContext_foldl___redArg___closed__2_value, ptr @l_Lean_LocalContext_foldl___redArg___closed__3_value, ptr @l_Lean_LocalContext_foldl___redArg___closed__4_value, ptr @l_Lean_LocalContext_foldl___redArg___closed__5_value] }, align 8
@l_Lean_LocalContext_foldl___redArg___closed__7_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 0 }, [2 x ptr] [ptr @l_Lean_LocalContext_foldl___redArg___closed__0_value, ptr @l_Lean_LocalContext_foldl___redArg___closed__1_value] }, align 8
@l_Lean_LocalContext_foldl___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Id_instMonad___lam__0, i16 4, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_LocalContext_foldl___redArg___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Id_instMonad___lam__1___boxed, i16 4, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_LocalContext_foldl___redArg___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Id_instMonad___lam__2___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_LocalContext_foldl___redArg___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Id_instMonad___lam__3, i16 4, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_LocalContext_foldl___redArg___closed__4_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Id_instMonad___lam__4___boxed, i16 4, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_LocalContext_foldl___redArg___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Id_instMonad___lam__5___boxed, i16 4, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_LocalContext_foldl___redArg___closed__6_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Id_instMonad___lam__6, i16 4, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_LocalContext_mkBinding___lam__0___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [28 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 28, i64 28, i64 27, [28 x i8] c"Lean.LocalContext.mkBinding\00" }>, align 8
@l_Lean_LocalContext_findFromUserNames___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8
@l_Lean_getLocalHyps___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8
@l_Lean_instInhabitedLocalDecl_default___closed__3 = internal global ptr null, align 8
@l_Lean_instInhabitedLocalDecl_default___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_instInhabitedLocalDecl_default___closed__2 = internal global ptr null, align 8
@l_Lean_instInhabitedLocalDecl_default___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_instInhabitedLocalDecl_default___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_instInhabitedLocalDecl_default___closed__0_value, ptr inttoptr (i64 -903969954754660571 to ptr)] }, align 8
@l_Lean_instInhabitedLocalDecl_default___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [20 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 20, i64 20, i64 19, [20 x i8] c"_inhabitedExprDummy\00" }>, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_LocalDeclKind_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #0 {
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
define noundef nonnull ptr @l_Lean_LocalDeclKind_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Lean_LocalDeclKind_ctorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Lean_LocalDeclKind_ctorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Lean_LocalDeclKind_ctorIdx.exit

l_Lean_LocalDeclKind_ctorIdx.exit:                ; preds = %bb.a, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_LocalDeclKind_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #0 {
  switch i8 %0, label %3 [
    i8 0, label %l_Lean_LocalDeclKind_ctorIdx.exit
    i8 1, label %2
  ]

2:                                                ; preds = %1
  br label %l_Lean_LocalDeclKind_ctorIdx.exit

3:                                                ; preds = %1
  br label %l_Lean_LocalDeclKind_ctorIdx.exit

l_Lean_LocalDeclKind_ctorIdx.exit:                ; preds = %1, %2, %3
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %1 ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_LocalDeclKind_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Lean_LocalDeclKind_toCtorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Lean_LocalDeclKind_toCtorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Lean_LocalDeclKind_toCtorIdx.exit

l_Lean_LocalDeclKind_toCtorIdx.exit:              ; preds = %bb.a, %1, %2
  %.0.i.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_LocalDeclKind_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #1 {
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
define noundef ptr @l_Lean_LocalDeclKind_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #2 {
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_LocalDeclKind_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #1 {
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
define noundef ptr @l_Lean_LocalDeclKind_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #2 {
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #9
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_LocalDeclKind_default_elim___redArg(ptr noundef returned %0) local_unnamed_addr #1 {
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
begin_hunk_1_@l_Lean_instReprLocalDeclKind_repr:bb.a

lean_alloc_ctor.exit85:                           ; preds = %lean_alloc_ctor.exit95, %lean_alloc_ctor.exit89, %lean_alloc_ctor.exit
  %.sink115 = phi ptr [ %i.az, %lean_alloc_ctor.exit89 ], [ %i.an, %lean_alloc_ctor.exit ], [ %i.bl, %lean_alloc_ctor.exit95 ] ; 5 uses
  %.sink108 = phi ptr [ %i.au, %lean_alloc_ctor.exit89 ], [ %i.ai, %lean_alloc_ctor.exit ], [ %i.bg, %lean_alloc_ctor.exit95 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sink115, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sink115, i64 16
  store i64 0, ptr %i.bo, align 8, !tbaa !19
  store i32 1, ptr %.sink115, align 8, !tbaa !10
  store i32 100728856, ptr %i.bn, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.sink115, i64 8
  store ptr %.sink108, ptr %i.bp, align 8, !tbaa !17
  %i.bq = tail call ptr @l_Repr_addAppParen(ptr noundef nonnull %.sink115, ptr noundef %1) #9
  ret ptr %i.bq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Lean_instReprLocalDeclKind_repr___closed__6() #0 {
bb.a:
  ret ptr inttoptr (i64 5 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Lean_instReprLocalDeclKind_repr___closed__7() #0 {
bb.a:
  ret ptr inttoptr (i64 3 to ptr)
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc nonnull ptr @lean_alloc_ctor(i32 noundef range(i32 0, 7) %0, i32 noundef range(i32 0, 6) %1, i32 noundef range(i32 0, 9) %2) unnamed_addr #3 {
lean_usize_add_checked.exit:
  %i.a = shl nuw nsw i32 %1, 3
  %narrow = add nuw nsw i32 %i.a, 8
  %narrow6 = add nuw nsw i32 %narrow, %2          ; 2 uses
  %i.b = zext nneg i32 %narrow6 to i64            ; 2 uses
  %i.c = and i64 %i.b, 248
  %i.d = and i64 %i.b, 7
  %.not.i.i = icmp eq i64 %i.d, 0
  %i.e = select i1 %.not.i.i, i64 0, i64 8
  %i.f = add nuw nsw i64 %i.e, %i.c               ; 3 uses
  tail call void @lean_inc_heartbeat() #9
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef %i.f) #9 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.a, label %lean_alloc_small_object.exit.i

bb.a:                                             ; preds = %lean_usize_add_checked.exit
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_small_object.exit.i:                   ; preds = %lean_usize_add_checked.exit
  %i.i = trunc nuw nsw i64 %i.f to i32            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, -65536
  %i.m = or disjoint i32 %i.l, %i.i               ; 2 uses
  store i32 %i.m, ptr %i.j, align 4
  %i.n = icmp samesign ult i32 %narrow6, %i.i
  br i1 %i.n, label %bb.b, label %lean_alloc_ctor_memory.exit

bb.b:                                             ; preds = %lean_alloc_small_object.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  store i64 0, ptr %i.p, align 8, !tbaa !19
  %.pre = load i32, ptr %i.j, align 4
  br label %lean_alloc_ctor_memory.exit

lean_alloc_ctor_memory.exit:                      ; preds = %lean_alloc_small_object.exit.i, %bb.b
  %i.q = phi i32 [ %i.m, %lean_alloc_small_object.exit.i ], [ %.pre, %bb.b ]
  store i32 1, ptr %i.g, align 4, !tbaa !10
  %i.r = shl nuw nsw i32 %0, 24
  %i.s = and i32 %i.q, 65535
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = shl nuw nsw i32 %1, 16
  %i.v = or disjoint i32 %i.t, %i.u
  store i32 %i.v, ptr %i.j, align 4
  ret ptr %i.g
}

declare ptr @l_Repr_addAppParen(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @l_Lean_instReprLocalDeclKind_repr___boxed(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l_Lean_instReprLocalDeclKind_repr(i8 noundef zeroext %i.c, ptr noundef %1)
  %i.e = ptrtoint ptr %1 to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i4 = icmp eq i32 %i.g, 0
  br i1 %.not.i4, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 3) i8 @l_Lean_LocalDeclKind_ofNat(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %lean_nat_le.exit, label %lean_nat_le.exit.thread, !prof !13

lean_nat_le.exit:                                 ; preds = %bb.a
  %i.c = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #9
  br i1 %i.c, label %bb.b, label %.critedge.i10

lean_nat_le.exit.thread:                          ; preds = %bb.a
  %.not = icmp ugt ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %lean_nat_le.exit.thread
  %i.d = icmp ule ptr %0, inttoptr (i64 3 to ptr)
  br label %lean_nat_le.exit12

.critedge.i10:                                    ; preds = %lean_nat_le.exit
  %i.e = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 3 to ptr)) #9
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
define ptr @l_Lean_LocalDeclKind_ofNat___boxed(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %lean_nat_le.exit.i, label %lean_nat_le.exit.thread.i, !prof !13

lean_nat_le.exit.i:                               ; preds = %bb.a
  %i.c = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #9
  br i1 %i.c, label %l_Lean_LocalDeclKind_ofNat.exit.thread, label %l_Lean_LocalDeclKind_ofNat.exit.thread11

lean_nat_le.exit.thread.i:                        ; preds = %bb.a
  %.not.i4 = icmp ugt ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not.i4, label %l_Lean_LocalDeclKind_ofNat.exit, label %lean_dec.exit

l_Lean_LocalDeclKind_ofNat.exit.thread11:         ; preds = %lean_nat_le.exit.i
  %i.d = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 3 to ptr)) #9
  %i.e = select i1 %i.d, i64 3, i64 5
  br label %l_Lean_LocalDeclKind_ofNat.exit.thread

l_Lean_LocalDeclKind_ofNat.exit:                  ; preds = %lean_nat_le.exit.thread.i
  %.not = icmp ugt ptr %0, inttoptr (i64 3 to ptr)
  %i.f = select i1 %.not, i64 5, i64 3
  br label %lean_dec.exit

l_Lean_LocalDeclKind_ofNat.exit.thread:           ; preds = %lean_nat_le.exit.i, %l_Lean_LocalDeclKind_ofNat.exit.thread11
  %.1.i8 = phi i64 [ %i.e, %l_Lean_LocalDeclKind_ofNat.exit.thread11 ], [ 1, %lean_nat_le.exit.i ] ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %l_Lean_LocalDeclKind_ofNat.exit.thread
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.c:                                             ; preds = %l_Lean_LocalDeclKind_ofNat.exit.thread
  %.not.i3 = icmp eq i32 %i.g, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_nat_le.exit.thread.i, %l_Lean_LocalDeclKind_ofNat.exit, %bb.d, %bb.c, %bb.b
  %.1.i7 = phi i64 [ %.1.i8, %bb.d ], [ %.1.i8, %bb.c ], [ %.1.i8, %bb.b ], [ %i.f, %l_Lean_LocalDeclKind_ofNat.exit ], [ 1, %lean_nat_le.exit.thread.i ]
  %i.j = inttoptr i64 %.1.i7 to ptr
  ret ptr %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Lean_instDecidableEqLocalDeclKind(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  switch i8 %0, label %4 [
    i8 0, label %l_Lean_LocalDeclKind_ctorIdx.exit
    i8 1, label %3
  ]

3:                                                ; preds = %2
  br label %l_Lean_LocalDeclKind_ctorIdx.exit

4:                                                ; preds = %2
  br label %l_Lean_LocalDeclKind_ctorIdx.exit

l_Lean_LocalDeclKind_ctorIdx.exit:                ; preds = %2, %3, %4
  %.0.i12 = phi ptr [ inttoptr (i64 5 to ptr), %4 ], [ inttoptr (i64 3 to ptr), %3 ], [ inttoptr (i64 1 to ptr), %2 ]
  switch i8 %1, label %6 [
    i8 0, label %lean_dec.exit
    i8 1, label %5
  ]

5:                                                ; preds = %l_Lean_LocalDeclKind_ctorIdx.exit
  br label %lean_dec.exit

6:                                                ; preds = %l_Lean_LocalDeclKind_ctorIdx.exit
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %6, %5, %l_Lean_LocalDeclKind_ctorIdx.exit
  %.0.i13 = phi ptr [ inttoptr (i64 5 to ptr), %6 ], [ inttoptr (i64 3 to ptr), %5 ], [ inttoptr (i64 1 to ptr), %l_Lean_LocalDeclKind_ctorIdx.exit ]
  %i.a = icmp eq ptr %.0.i12, %.0.i13
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_instDecidableEqLocalDeclKind___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %1 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  switch i8 %i.c, label %3 [
    i8 0, label %l_Lean_LocalDeclKind_ctorIdx.exit.i
    i8 1, label %2
  ]

2:                                                ; preds = %bb.a
  br label %l_Lean_LocalDeclKind_ctorIdx.exit.i

3:                                                ; preds = %bb.a
  br label %l_Lean_LocalDeclKind_ctorIdx.exit.i

l_Lean_LocalDeclKind_ctorIdx.exit.i:              ; preds = %3, %2, %bb.a
  %.0.i12.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  switch i8 %i.f, label %5 [
    i8 0, label %l_Lean_instDecidableEqLocalDeclKind.exit
    i8 1, label %4
  ]

4:                                                ; preds = %l_Lean_LocalDeclKind_ctorIdx.exit.i
  br label %l_Lean_instDecidableEqLocalDeclKind.exit

5:                                                ; preds = %l_Lean_LocalDeclKind_ctorIdx.exit.i
  br label %l_Lean_instDecidableEqLocalDeclKind.exit

l_Lean_instDecidableEqLocalDeclKind.exit:         ; preds = %l_Lean_LocalDeclKind_ctorIdx.exit.i, %4, %5
  %.0.i13.i = phi ptr [ inttoptr (i64 5 to ptr), %5 ], [ inttoptr (i64 3 to ptr), %4 ], [ inttoptr (i64 1 to ptr), %l_Lean_LocalDeclKind_ctorIdx.exit.i ]
  %6 = icmp eq ptr %.0.i12.i, %.0.i13.i
  %7 = select i1 %6, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 0, 3) i64 @l_Lean_instHashableLocalDeclKind_hash(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, i64 1, i64 2
  %switch.selectcmp5 = icmp eq i8 %0, 0
  %switch.select6 = select i1 %switch.selectcmp5, i64 0, i64 %switch.select
  ret i64 %switch.select6
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_instHashableLocalDeclKind_hash___boxed(ptr noundef %0) #2 {
bb.a:
  tail call void @lean_inc_heartbeat() #9
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %lean_box_uint64.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_box_uint64.exit:                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = lshr i64 %i.c, 1
  %i.e = trunc i64 %i.d to i8                     ; 2 uses
  %switch.selectcmp5.i = icmp eq i8 %i.e, 0
  %switch.selectcmp.i = icmp eq i8 %i.e, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i64 1, i64 2
  %switch.select6.i = select i1 %switch.selectcmp5.i, i64 0, i64 %switch.select.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !10
  store i32 16, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %switch.select6.i, ptr %i.g, align 8, !tbaa !19
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @l_Lean_LocalDecl_ctorIdx(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = icmp eq i32 %.0.i, 0
  %spec.select = select i1 %i.g, ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 3 to ptr)
  ret ptr %spec.select
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_LocalDecl_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %l_Lean_LocalDecl_ctorIdx.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24
  br label %l_Lean_LocalDecl_ctorIdx.exit

l_Lean_LocalDecl_ctorIdx.exit:                    ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %l_Lean_LocalDecl_ctorIdx.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.e:                                             ; preds = %l_Lean_LocalDecl_ctorIdx.exit
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.d, %bb.e, %bb.f
  %i.j = icmp eq i32 %.0.i.i, 0
  %spec.select.i = select i1 %i.j, ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 3 to ptr)
  ret ptr %spec.select.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_LocalDecl_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i56 = icmp eq i64 %i.b, 0
  br i1 %.not.i56, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = icmp eq i32 %.0.i, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 9 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 1
  %.not.i54 = icmp eq i64 %i.k, 0                 ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.an

bb.d:                                             ; preds = %lean_obj_tag.exit
  br i1 %.not.i54, label %bb.e, label %lean_inc.exit55

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i, 0
  br i1 %i.l, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw i32 %.val.i.i, 1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !10
  br label %lean_inc.exit55

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit55, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit55

lean_inc.exit55:                                  ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17   ; 5 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 1
  %.not.i52 = icmp eq i64 %i.r, 0
  br i1 %.not.i52, label %bb.i, label %lean_inc.exit53

bb.i:                                             ; preds = %lean_inc.exit55
  %.val.i.i57 = load i32, ptr %i.p, align 4, !tbaa !10 ; 3 uses
  %i.s = icmp sgt i32 %.val.i.i57, 0
  br i1 %i.s, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.t = add nuw i32 %.val.i.i57, 1
  store i32 %i.t, ptr %i.p, align 4, !tbaa !10
  br label %lean_inc.exit53

bb.k:                                             ; preds = %bb.i
  %.not.i.i58 = icmp eq i32 %.val.i.i57, 0
  br i1 %.not.i.i58, label %lean_inc.exit53, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = atomicrmw sub ptr %i.p, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit53

lean_inc.exit53:                                  ; preds = %bb.l, %bb.k, %bb.j, %lean_inc.exit55
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17   ; 5 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, 1
  %.not.i50 = icmp eq i64 %i.y, 0
  br i1 %.not.i50, label %bb.m, label %lean_inc.exit51

bb.m:                                             ; preds = %lean_inc.exit53
  %.val.i.i60 = load i32, ptr %i.w, align 4, !tbaa !10 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i60, 0
  br i1 %i.z, label %bb.n, label %bb.o, !prof !11

bb.n:                                             ; preds = %bb.m
end_hunk_1
