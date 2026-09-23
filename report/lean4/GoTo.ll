Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/GoTo?download=true
inline.NumInlined: 1975
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lean_once_cell_t = type { i32, i32 }

@l_Lean_Server_instBEqGoToKind = local_unnamed_addr global ptr @l_Lean_Server_instBEqGoToKind___closed__0_value, align 8
@l_Lean_Server_instToJsonGoToKind = local_unnamed_addr global ptr @l_Lean_Server_instToJsonGoToKind___closed__0_value, align 8
@l_Lean_Server_instFromJsonGoToKind = local_unnamed_addr global ptr @l_Lean_Server_instFromJsonGoToKind___closed__0_value, align 8
@l_Lean_Server_GoToKind_determineTargetExprs___closed__1 = internal global ptr null, align 8
@l_Lean_Server_GoToKind_determineTargetExprs___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Server_getInstanceProjectionArg_x3f___closed__0 = internal global i64 0, align 8
@l_Lean_Server_getInstanceProjectionArg_x3f___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Server_getInstanceProjectionArg_x3f___closed__1 = internal global ptr null, align 8
@l_Lean_Server_getInstanceProjectionArg_x3f___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__2 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__5 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__5_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Options_empty = external local_unnamed_addr global ptr, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__7 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__7_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__9 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__9_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__11 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__11_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__13 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__13_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__15 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__15_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__17 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__17_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__19 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__19_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_unknownIdentifierMessageTag = external local_unnamed_addr global ptr, align 8
@l_Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2___redArg___closed__1 = internal global ptr null, align 8
@l_Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2___redArg___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2___redArg___closed__3 = internal global ptr null, align 8
@l_Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2___redArg___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_declRangeExt = external local_unnamed_addr global ptr, align 8
@l_Lean_instInhabitedDeclarationRanges_default = external local_unnamed_addr global ptr, align 8
@l_Lean_builtinDeclRanges = external local_unnamed_addr global ptr, align 8
@l_Lean_errorExplanationExt = external local_unnamed_addr global ptr, align 8
@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_Server_instBEqGoToKind___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Server_instBEqGoToKind_beq___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Server_instToJsonGoToKind___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Server_instToJsonGoToKind_toJson___boxed, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Server_instFromJsonGoToKind___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Server_instFromJsonGoToKind_fromJson, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Server_instToJsonGoToKind_toJson___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Server_instToJsonGoToKind_toJson___closed__0_value] }, align 8
@l_Lean_Server_instToJsonGoToKind_toJson___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [12 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 12, i64 12, i64 11, [12 x i8] c"declaration\00" }>, align 8
@l_Lean_Server_instToJsonGoToKind_toJson___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Server_instToJsonGoToKind_toJson___closed__2_value] }, align 8
@l_Lean_Server_instToJsonGoToKind_toJson___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [11 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 11, i64 11, i64 10, [11 x i8] c"definition\00" }>, align 8
@l_Lean_Server_instToJsonGoToKind_toJson___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Server_instToJsonGoToKind_toJson___closed__4_value] }, align 8
@l_Lean_Server_instToJsonGoToKind_toJson___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"type\00" }>, align 8
@l_Lean_Server_instFromJsonGoToKind_fromJson___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 0 }, [1 x ptr] [ptr @l_Lean_Server_instFromJsonGoToKind_fromJson___closed__0_value] }, align 8
@l_Lean_Server_instFromJsonGoToKind_fromJson___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [23 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 23, i64 23, i64 22, [23 x i8] c"no inductive tag found\00" }>, align 8
@l_Lean_Server_instFromJsonGoToKind_fromJson___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 0 }, [1 x ptr] [ptr @l_Lean_Server_instFromJsonGoToKind_fromJson___closed__2_value] }, align 8
@l_Lean_Server_instFromJsonGoToKind_fromJson___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [33 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 33, i64 33, i64 32, [33 x i8] c"no inductive constructor matched\00" }>, align 8
@l_Lean_Server_instFromJsonGoToKind_fromJson___closed__4_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 1 }, [1 x ptr] [ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lean_Server_instFromJsonGoToKind_fromJson___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 1 }, [1 x ptr] [ptr inttoptr (i64 1 to ptr)] }, align 8
@l_Lean_Server_instFromJsonGoToKind_fromJson___closed__6_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 1 }, [1 x ptr] [ptr inttoptr (i64 5 to ptr)] }, align 8
@l_Lean_Server_GoToKind_determineTargetExprs___closed__0 = internal global ptr null, align 8
@l_Lean_Server_GoToKind_determineTargetExprs___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Server_GoToKind_determineTargetExprs___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Server_GoToKind_determineTargetExprs___lam__0___boxed, i16 7, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Server_GoToKind_determineTargetExprs___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__1 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__0 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__4 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__4_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__3 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__6_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [24 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 24, i64 24, i64 23, [24 x i8] c"A private declaration `\00" }, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__8_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [79 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 79, i64 79, i64 78, [79 x i8] c"` (from the current module) exists but would need to be public to access here.\00" }>, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__10_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [23 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 23, i64 23, i64 22, [23 x i8] c"A public declaration `\00" }>, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__12_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [68 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 68, i64 68, i64 67, [68 x i8] c"` exists but is imported privately; consider adding `public import \00" }>, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__14_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [3 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 3, i64 3, i64 2, [3 x i8] c"`.\00" }>, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__16_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [10 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 10, i64 10, i64 9, [10 x i8] c"` (from `\00" }>, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4_spec__5___redArg___closed__18_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [54 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 54, i64 54, i64 53, [54 x i8] c"`) exists but would need to be public to access here.\00" }>, align 8
@l_Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2___redArg___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [19 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 19, i64 19, i64 18, [19 x i8] c"Unknown constant `\00" }>, align 8
@l_Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_findModuleOf_x3f___at___00__private_Lean_Server_GoTo_0__Lean_Server_locationLinksFromDecl_declMod_x3f_spec__0_spec__0_spec__1_spec__2___redArg___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c"`\00" }>, align 8
@l_Lean_Server_locationLinksFromDecl___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__4_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__4_value_aux_2, ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__3_value, ptr inttoptr (i64 3187861556840815537 to ptr)] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__4_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__4_value_aux_1, ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__2_value, ptr inttoptr (i64 5561193377245250799 to ptr)] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__4_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__4_value_aux_0, ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__1_value, ptr inttoptr (i64 8018486133748762727 to ptr)] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__4_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"Lean\00" }>, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [7 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 7, i64 7, i64 6, [7 x i8] c"Parser\00" }>, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [7 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 7, i64 7, i64 6, [7 x i8] c"Module\00" }>, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [7 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 7, i64 7, i64 6, [7 x i8] c"import\00" }>, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__12_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__12_value_aux_2, ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__11_value, ptr inttoptr (i64 -5986200243982653754 to ptr)] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__12_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__12_value_aux_1, ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__2_value, ptr inttoptr (i64 5561193377245250799 to ptr)] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__12_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__12_value_aux_0, ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__1_value, ptr inttoptr (i64 8018486133748762727 to ptr)] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__12_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__11_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [7 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 7, i64 7, i64 6, [7 x i8] c"public\00" }>, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__6_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 0 }, [2 x ptr] [ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__5_value, ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__5_value] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 0 }, [2 x ptr] [ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__8_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__8_value_aux_2, ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__7_value, ptr inttoptr (i64 -8960759392515634837 to ptr)] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__8_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__8_value_aux_1, ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__2_value, ptr inttoptr (i64 5561193377245250799 to ptr)] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__8_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__8_value_aux_0, ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__1_value, ptr inttoptr (i64 8018486133748762727 to ptr)] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__8_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__7_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [4 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 4, i64 4, i64 3, [4 x i8] c"all\00" }>, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__10_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__10_value_aux_2, ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__9_value, ptr inttoptr (i64 -1443219949534256039 to ptr)] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__10_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__10_value_aux_1, ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__2_value, ptr inttoptr (i64 5561193377245250799 to ptr)] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__10_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__10_value_aux_0, ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__1_value, ptr inttoptr (i64 8018486133748762727 to ptr)] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__10_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Server_locationLinksFromImport___redArg___closed__9_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"meta\00" }>, align 8
@l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__1_value, ptr inttoptr (i64 -2764641727940637114 to ptr)] }, align 8
@l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [6 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 6, i64 6, i64 5, [6 x i8] c"Delab\00" }>, align 8
@l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__6_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__6_value_aux_2, ptr @l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__5_value, ptr inttoptr (i64 6086138408723263506 to ptr)] }, align 8
@l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__6_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__6_value_aux_1, ptr @l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__4_value, ptr inttoptr (i64 7892421401833366012 to ptr)] }, align 8
@l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__6_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__6_value_aux_0, ptr @l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__3_value, ptr inttoptr (i64 -6936643638764439756 to ptr)] }, align 8
@l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__6_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"Elab\00" }>, align 8
@l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"Term\00" }>, align 8
@l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [8 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 8, i64 8, i64 7, [8 x i8] c"elabApp\00" }, align 8
@l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__8_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__8_value_aux_2, ptr @l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__7_value, ptr inttoptr (i64 252081343774567219 to ptr)] }, align 8
@l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__8_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__8_value_aux_1, ptr @l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__4_value, ptr inttoptr (i64 7892421401833366012 to ptr)] }, align 8
@l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__8_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__8_value_aux_0, ptr @l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__3_value, ptr inttoptr (i64 -6936643638764439756 to ptr)] }, align 8
@l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__8_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Server_locationLinksFromImport___redArg___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__7_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [10 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 10, i64 10, i64 9, [10 x i8] c"elabIdent\00" }>, align 8
@l___private_Lean_Server_GoTo_0__Lean_Server_locationLinksDefault_defaultDeclNames___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Server_GoToKind_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #0 {
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
define noundef nonnull ptr @l_Lean_Server_GoToKind_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Lean_Server_GoToKind_ctorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Lean_Server_GoToKind_ctorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Lean_Server_GoToKind_ctorIdx.exit

l_Lean_Server_GoToKind_ctorIdx.exit:              ; preds = %bb.a, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Server_GoToKind_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #0 {
  switch i8 %0, label %3 [
    i8 0, label %l_Lean_Server_GoToKind_ctorIdx.exit
    i8 1, label %2
  ]

2:                                                ; preds = %1
  br label %l_Lean_Server_GoToKind_ctorIdx.exit

3:                                                ; preds = %1
  br label %l_Lean_Server_GoToKind_ctorIdx.exit

l_Lean_Server_GoToKind_ctorIdx.exit:              ; preds = %1, %2, %3
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %1 ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Server_GoToKind_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Lean_Server_GoToKind_toCtorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Lean_Server_GoToKind_toCtorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Lean_Server_GoToKind_toCtorIdx.exit

l_Lean_Server_GoToKind_toCtorIdx.exit:            ; preds = %bb.a, %1, %2
  %.0.i.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Server_GoToKind_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #1 {
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
define noundef ptr @l_Lean_Server_GoToKind_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #2 {
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Server_GoToKind_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #1 {
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
define noundef ptr @l_Lean_Server_GoToKind_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #2 {
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Server_GoToKind_declaration_elim___redArg(ptr noundef returned %0) local_unnamed_addr #1 {
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
begin_hunk_1_@l_Lean_Server_GoToKind_definition_elim___boxed:bb.a
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %3
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Server_GoToKind_type_elim___redArg(ptr noundef returned %0) local_unnamed_addr #1 {
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
define noundef ptr @l_Lean_Server_GoToKind_type_elim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #2 {
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Server_GoToKind_type_elim(ptr nofree noundef readnone captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #1 {
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
define noundef ptr @l_Lean_Server_GoToKind_type_elim___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #2 {
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Lean_Server_instBEqGoToKind_beq(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  switch i8 %0, label %4 [
    i8 0, label %l_Lean_Server_GoToKind_ctorIdx.exit
    i8 1, label %3
  ]

3:                                                ; preds = %2
  br label %l_Lean_Server_GoToKind_ctorIdx.exit

4:                                                ; preds = %2
  br label %l_Lean_Server_GoToKind_ctorIdx.exit

l_Lean_Server_GoToKind_ctorIdx.exit:              ; preds = %2, %3, %4
  %.0.i12 = phi ptr [ inttoptr (i64 5 to ptr), %4 ], [ inttoptr (i64 3 to ptr), %3 ], [ inttoptr (i64 1 to ptr), %2 ]
  switch i8 %1, label %6 [
    i8 0, label %lean_dec.exit
    i8 1, label %5
  ]

5:                                                ; preds = %l_Lean_Server_GoToKind_ctorIdx.exit
  br label %lean_dec.exit

6:                                                ; preds = %l_Lean_Server_GoToKind_ctorIdx.exit
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %6, %5, %l_Lean_Server_GoToKind_ctorIdx.exit
  %.0.i13 = phi ptr [ inttoptr (i64 5 to ptr), %6 ], [ inttoptr (i64 3 to ptr), %5 ], [ inttoptr (i64 1 to ptr), %l_Lean_Server_GoToKind_ctorIdx.exit ]
  %i.a = icmp eq ptr %.0.i12, %.0.i13
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Server_instBEqGoToKind_beq___boxed(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %1 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  switch i8 %i.c, label %3 [
    i8 0, label %l_Lean_Server_GoToKind_ctorIdx.exit.i
    i8 1, label %2
  ]

2:                                                ; preds = %bb.a
  br label %l_Lean_Server_GoToKind_ctorIdx.exit.i

3:                                                ; preds = %bb.a
  br label %l_Lean_Server_GoToKind_ctorIdx.exit.i

l_Lean_Server_GoToKind_ctorIdx.exit.i:            ; preds = %3, %2, %bb.a
  %.0.i12.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  switch i8 %i.f, label %5 [
    i8 0, label %l_Lean_Server_instBEqGoToKind_beq.exit
    i8 1, label %4
  ]

4:                                                ; preds = %l_Lean_Server_GoToKind_ctorIdx.exit.i
  br label %l_Lean_Server_instBEqGoToKind_beq.exit

5:                                                ; preds = %l_Lean_Server_GoToKind_ctorIdx.exit.i
  br label %l_Lean_Server_instBEqGoToKind_beq.exit

l_Lean_Server_instBEqGoToKind_beq.exit:           ; preds = %l_Lean_Server_GoToKind_ctorIdx.exit.i, %4, %5
  %.0.i13.i = phi ptr [ inttoptr (i64 5 to ptr), %5 ], [ inttoptr (i64 3 to ptr), %4 ], [ inttoptr (i64 1 to ptr), %l_Lean_Server_GoToKind_ctorIdx.exit.i ]
  %6 = icmp eq ptr %.0.i12.i, %.0.i13.i
  %7 = select i1 %6, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Server_instToJsonGoToKind_toJson(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr @l_Lean_Server_instToJsonGoToKind_toJson___closed__3_value, ptr @l_Lean_Server_instToJsonGoToKind_toJson___closed__5_value
  %switch.selectcmp4 = icmp eq i8 %0, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr @l_Lean_Server_instToJsonGoToKind_toJson___closed__1_value, ptr %switch.select
  ret ptr %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Server_instToJsonGoToKind_toJson___boxed(ptr noundef %0) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.c, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @l_Lean_Server_instToJsonGoToKind_toJson___closed__3_value, ptr @l_Lean_Server_instToJsonGoToKind_toJson___closed__5_value
  %switch.selectcmp4.i = icmp eq i8 %i.c, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr @l_Lean_Server_instToJsonGoToKind_toJson___closed__1_value, ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Server_instFromJsonGoToKind_fromJson(ptr noundef %0) #2 {
bb.a:
  %i.a = tail call ptr @l_Lean_Json_getTag_x3f(ptr noundef %0) #6 ; 7 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i32 = icmp eq i64 %i.c, 0
  br i1 %.not.i32, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i, 0
  br i1 %i.h, label %lean_dec.exit24, label %bb.d

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14   ; 20 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 1
  %.not.i = icmp eq i64 %i.l, 0                   ; 4 uses
  br i1 %.not.i, label %bb.e, label %lean_inc.exit

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !10 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !10
  br label %lean_inc.exit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.val.i33 = load i32, ptr %i.a, align 8, !tbaa !10 ; 4 uses
  %i.p = icmp eq i32 %.val.i33, 1
  br i1 %i.p, label %.preheader.i.preheader, label %bb.m

.preheader.i.preheader:                           ; preds = %lean_inc.exit
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !14   ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, 1
  %.not.i.i34 = icmp eq i64 %i.s, 0
  br i1 %.not.i.i34, label %bb.i, label %lean_dec.exit.i

bb.i:                                             ; preds = %.preheader.i.preheader
  %i.t = load i32, ptr %i.q, align 4, !tbaa !10   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !10
  br label %lean_dec.exit.i

bb.k:                                             ; preds = %bb.i
  %.not.i7.i = icmp eq i32 %i.t, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.l, %bb.k, %bb.j, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.a) #6
  br label %lean_dec_ref_known.exit

bb.m:                                             ; preds = %lean_inc.exit
  %i.w = icmp sgt i32 %.val.i33, 1
  br i1 %i.w, label %bb.n, label %bb.o, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.x = add nsw i32 %.val.i33, -1
  store i32 %i.x, ptr %i.a, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.o:                                             ; preds = %bb.m
  %.not.i8.i = icmp eq i32 %.val.i33, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.n, %bb.o, %bb.p
  %i.y = icmp eq ptr %i.j, @l_Lean_Server_instToJsonGoToKind_toJson___closed__4_value
  br i1 %i.y, label %lean_string_dec_eq.exit.thread39, label %bb.q

bb.q:                                             ; preds = %lean_dec_ref_known.exit
  %i.z = getelementptr i8, ptr %i.j, i64 8        ; 3 uses
  %.val7.i.i = load i64, ptr %i.z, align 8, !tbaa !16
  %i.aa = icmp eq i64 %.val7.i.i, 5
  br i1 %i.aa, label %lean_string_dec_eq.exit, label %lean_string_dec_eq.exit.thread

lean_string_dec_eq.exit:                          ; preds = %bb.q
  %i.ab = tail call zeroext i1 @lean_string_eq_cold(ptr noundef nonnull %i.j, ptr noundef nonnull @l_Lean_Server_instToJsonGoToKind_toJson___closed__4_value) #6
  br i1 %i.ab, label %lean_string_dec_eq.exit.thread39, label %lean_string_dec_eq.exit.thread

lean_string_dec_eq.exit.thread:                   ; preds = %bb.q, %lean_string_dec_eq.exit
  %i.ac = icmp eq ptr %i.j, @l_Lean_Server_instToJsonGoToKind_toJson___closed__0_value
  br i1 %i.ac, label %lean_string_dec_eq.exit36.thread40, label %bb.r

bb.r:                                             ; preds = %lean_string_dec_eq.exit.thread
  %.val7.i.i35 = load i64, ptr %i.z, align 8, !tbaa !16
  %i.ad = icmp eq i64 %.val7.i.i35, 12
  br i1 %i.ad, label %lean_string_dec_eq.exit36, label %lean_string_dec_eq.exit36.thread

lean_string_dec_eq.exit36:                        ; preds = %bb.r
  %i.ae = tail call zeroext i1 @lean_string_eq_cold(ptr noundef nonnull %i.j, ptr noundef nonnull @l_Lean_Server_instToJsonGoToKind_toJson___closed__0_value) #6
  br i1 %i.ae, label %lean_string_dec_eq.exit36.thread40, label %lean_string_dec_eq.exit36.thread

lean_string_dec_eq.exit36.thread:                 ; preds = %bb.r, %lean_string_dec_eq.exit36
  %i.af = icmp eq ptr %i.j, @l_Lean_Server_instToJsonGoToKind_toJson___closed__2_value
  br i1 %i.af, label %lean_string_dec_eq.exit38, label %bb.s

bb.s:                                             ; preds = %lean_string_dec_eq.exit36.thread
  %.val7.i.i37 = load i64, ptr %i.z, align 8, !tbaa !16
  %i.ag = icmp eq i64 %.val7.i.i37, 11
  br i1 %i.ag, label %bb.t, label %lean_string_dec_eq.exit38

bb.t:                                             ; preds = %bb.s
  %i.ah = tail call zeroext i1 @lean_string_eq_cold(ptr noundef nonnull %i.j, ptr noundef nonnull @l_Lean_Server_instToJsonGoToKind_toJson___closed__2_value) #6
  %i.ai = select i1 %i.ah, ptr @l_Lean_Server_instFromJsonGoToKind_fromJson___closed__4_value, ptr @l_Lean_Server_instFromJsonGoToKind_fromJson___closed__3_value
  br label %lean_string_dec_eq.exit38

lean_string_dec_eq.exit38:                        ; preds = %lean_string_dec_eq.exit36.thread, %bb.s, %bb.t
  %l_Lean_Server_instFromJsonGoToKind_fromJson___closed__3_value.l_Lean_Server_instFromJsonGoToKind_fromJson___closed__4_value = phi ptr [ @l_Lean_Server_instFromJsonGoToKind_fromJson___closed__4_value, %lean_string_dec_eq.exit36.thread ], [ @l_Lean_Server_instFromJsonGoToKind_fromJson___closed__3_value, %bb.s ], [ %i.ai, %bb.t ] ; 4 uses
  br i1 %.not.i, label %bb.u, label %lean_dec.exit24

bb.u:                                             ; preds = %lean_string_dec_eq.exit38
  %i.aj = load i32, ptr %i.j, align 8, !tbaa !10  ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.v, label %bb.w, !prof !11

bb.v:                                             ; preds = %bb.u
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %i.j, align 8, !tbaa !10
  br label %lean_dec.exit24

bb.w:                                             ; preds = %bb.u
  %.not.i27 = icmp eq i32 %i.aj, 0
  br i1 %.not.i27, label %lean_dec.exit24, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #6
  br label %lean_dec.exit24

lean_string_dec_eq.exit36.thread40:               ; preds = %lean_string_dec_eq.exit.thread, %lean_string_dec_eq.exit36
  br i1 %.not.i, label %bb.y, label %lean_dec.exit24

bb.y:                                             ; preds = %lean_string_dec_eq.exit36.thread40
  %i.am = load i32, ptr %i.j, align 8, !tbaa !10  ; 3 uses
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.ao = add nsw i32 %i.am, -1
end_hunk_1
begin_hunk_2_@l_Lean_Server_isInstanceProjection:bb.a

bb.y:                                             ; preds = %bb.x
  %i.ah = add nsw i32 %.val.i74, -1
  store i32 %i.ah, ptr %i.j, align 4, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.z:                                             ; preds = %bb.x
  %.not.i8.i = icmp eq i32 %.val.i74, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.y, %bb.z, %bb.aa
  br i1 %i.k, label %lean_dec.exit.sink.split, label %bb.ab

bb.ab:                                            ; preds = %lean_dec_ref_known.exit
  tail call void @lean_inc_heartbeat() #6
  %i.ai = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.ac, label %lean_dec.exit.sink.split.sink.split

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

bb.ad:                                            ; preds = %lean_obj_tag.exit
  br i1 %i.k, label %lean_dec.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ak = ptrtoint ptr %i.j to i64
  %i.al = and i64 %i.ak, 1
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %bb.af, label %lean_inc.exit

bb.af:                                            ; preds = %bb.ae
  %.val.i.i77 = load i32, ptr %i.j, align 4, !tbaa !10 ; 3 uses
  %i.am = icmp sgt i32 %.val.i.i77, 0
  br i1 %i.am, label %bb.ag, label %bb.ah, !prof !11

bb.ag:                                            ; preds = %bb.af
  %i.an = add nuw i32 %.val.i.i77, 1
  store i32 %i.an, ptr %i.j, align 4, !tbaa !10
  br label %lean_inc.exit

bb.ah:                                            ; preds = %bb.af
  %.not.i.i78 = icmp eq i32 %.val.i.i77, 0
  br i1 %.not.i.i78, label %lean_inc.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ao = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ae
  br i1 %.not.i69, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %lean_inc.exit
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !10  ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.ak, label %bb.al, !prof !11

bb.ak:                                            ; preds = %bb.aj
  %i.ar = add nsw i32 %i.ap, -1
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !10
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %.not.i66 = icmp eq i32 %i.ap, 0
  br i1 %.not.i66, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #6
  br label %bb.an

bb.an:                                            ; preds = %lean_inc.exit, %bb.ak, %bb.al, %bb.am
  tail call void @lean_inc_heartbeat() #6
  %i.as = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.ao, label %lean_dec.exit.sink.split.sink.split

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_dec.exit.sink.split.sink.split:              ; preds = %bb.an, %bb.ab, %bb.q
  %.sink96 = phi ptr [ %i.w, %bb.q ], [ %i.ai, %bb.ab ], [ %i.as, %bb.an ] ; 3 uses
  %.sink93 = phi i32 [ 65552, %bb.q ], [ 65552, %bb.ab ], [ 16842768, %bb.an ]
  %.sink.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.q ], [ inttoptr (i64 3 to ptr), %bb.ab ], [ %i.j, %bb.an ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sink96, i64 4
  store i32 1, ptr %.sink96, align 4, !tbaa !10
  store i32 %.sink93, ptr %i.au, align 4
  br label %lean_dec.exit.sink.split

lean_dec.exit.sink.split:                         ; preds = %lean_dec.exit.sink.split.sink.split, %lean_dec_ref_known.exit, %bb.p
  %.sink92 = phi ptr [ %.059, %lean_dec_ref_known.exit ], [ %.059, %bb.p ], [ %.sink96, %lean_dec.exit.sink.split.sink.split ] ; 2 uses
  %.sink = phi ptr [ inttoptr (i64 3 to ptr), %lean_dec_ref_known.exit ], [ inttoptr (i64 1 to ptr), %bb.p ], [ %.sink.ph, %lean_dec.exit.sink.split.sink.split ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sink92, i64 8
  store ptr %.sink, ptr %i.av, align 8, !tbaa !14
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit.sink.split, %bb.ad
  %.4 = phi ptr [ %i.a, %bb.ad ], [ %.sink92, %lean_dec.exit.sink.split ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_isInstanceProjection___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @l_Lean_Server_isInstanceProjection(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i10 = icmp eq i64 %i.c, 0
  br i1 %.not.i10, label %bb.b, label %lean_dec.exit11

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %4, align 4, !tbaa !10
  br label %lean_dec.exit11

bb.d:                                             ; preds = %bb.b
  %.not.i12 = icmp eq i32 %i.d, 0
  br i1 %.not.i12, label %lean_dec.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_dec.exit11
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !10
  br label %lean_dec_ref.exit18

bb.g:                                             ; preds = %lean_dec.exit11
  %.not.i17 = icmp eq i32 %i.g, 0
  br i1 %.not.i17, label %lean_dec_ref.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit18

lean_dec_ref.exit18:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %2 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit18
  %i.l = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i13 = icmp eq i32 %i.l, 0
  br i1 %.not.i13, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit18
  %i.o = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit16

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i15 = icmp eq i32 %i.o, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_isInstanceProjectionInfoFor(i8 noundef zeroext %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #2 {
bb.a:
  %switch = icmp ult i8 %0, 2
  br i1 %switch, label %bb.b, label %bb.hw

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 7 uses
  %.val.i.i = load i32, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !10
  br label %lean_inc_ref.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.c, %bb.d, %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 13 uses
  %.val.i.i359 = load i32, ptr %i.g, align 4, !tbaa !10 ; 3 uses
  %i.h = icmp sgt i32 %.val.i.i359, 0
  br i1 %i.h, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_inc_ref.exit
  %i.i = add nuw i32 %.val.i.i359, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !10
  br label %lean_inc_ref.exit361

bb.g:                                             ; preds = %lean_inc_ref.exit
  %.not.i.i360 = icmp eq i32 %.val.i.i359, 0
  br i1 %.not.i.i360, label %lean_inc_ref.exit361, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = atomicrmw sub ptr %i.g, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit361

lean_inc_ref.exit361:                             ; preds = %bb.f, %bb.g, %bb.h
  %i.k = load i32, ptr %1, align 8, !tbaa !10     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %lean_inc_ref.exit361
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %1, align 8, !tbaa !10
  br label %lean_dec_ref.exit355

bb.j:                                             ; preds = %lean_inc_ref.exit361
  %.not.i354 = icmp eq i32 %i.k, 0
  br i1 %.not.i354, label %lean_dec_ref.exit355, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit355

lean_dec_ref.exit355:                             ; preds = %bb.i, %bb.j, %bb.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 8 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 1
  %.not.i228 = icmp eq i64 %i.q, 0                ; 2 uses
  br i1 %.not.i228, label %bb.l, label %lean_inc.exit229

bb.l:                                             ; preds = %lean_dec_ref.exit355
  %.val.i.i362 = load i32, ptr %i.o, align 4, !tbaa !10 ; 3 uses
  %i.r = icmp sgt i32 %.val.i.i362, 0
  br i1 %i.r, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.s = add nuw i32 %.val.i.i362, 1
  store i32 %i.s, ptr %i.o, align 4, !tbaa !10
  br label %lean_inc.exit229

bb.n:                                             ; preds = %bb.l
  %.not.i.i363 = icmp eq i32 %.val.i.i362, 0
  br i1 %.not.i.i363, label %lean_inc.exit229, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = atomicrmw sub ptr %i.o, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit229

lean_inc.exit229:                                 ; preds = %bb.o, %bb.n, %bb.m, %lean_dec_ref.exit355
  %i.u = load i32, ptr %i.b, align 8, !tbaa !10   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %lean_inc.exit229
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !10
  br label %lean_dec_ref.exit353

bb.q:                                             ; preds = %lean_inc.exit229
  %.not.i352 = icmp eq i32 %i.u, 0
  br i1 %.not.i352, label %lean_dec_ref.exit353, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.b) #6
  br label %lean_dec_ref.exit353

lean_dec_ref.exit353:                             ; preds = %bb.p, %bb.q, %bb.r
  %i.x = tail call ptr @l_Lean_Syntax_getPos_x3f(ptr noundef %i.o, i8 noundef zeroext 1) #6 ; 11 uses
  br i1 %.not.i228, label %bb.s, label %lean_dec.exit276

bb.s:                                             ; preds = %lean_dec_ref.exit353
  %i.y = load i32, ptr %i.o, align 4, !tbaa !10   ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.aa = add nsw i32 %i.y, -1
  store i32 %i.aa, ptr %i.o, align 4, !tbaa !10
  br label %lean_dec.exit276

bb.u:                                             ; preds = %bb.s
  %.not.i277 = icmp eq i32 %i.y, 0
  br i1 %.not.i277, label %lean_dec.exit276, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #6
  br label %lean_dec.exit276

lean_dec.exit276:                                 ; preds = %bb.v, %bb.u, %bb.t, %lean_dec_ref.exit353
  %i.ab = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.ac = and i64 %i.ab, 1
  %.not.i365 = icmp eq i64 %i.ac, 0               ; 2 uses
  br i1 %.not.i365, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %lean_dec.exit276
  %i.ad = getelementptr i8, ptr %i.x, i64 4
  %.val.i = load i32, ptr %i.ad, align 4
  %.mask = and i32 %.val.i, -16777216
  %i.ae = icmp eq i32 %.mask, 16777216
  br i1 %i.ae, label %bb.w, label %bb.hl

lean_obj_tag.exit.thread:                         ; preds = %lean_dec.exit276
  %i.af = and i64 %i.ab, 8589934590
  %i.ag = icmp eq i64 %i.af, 2
  br i1 %i.ag, label %bb.w, label %lean_dec.exit

bb.w:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !14 ; 7 uses
  %.val.i.i367 = load i32, ptr %i.ai, align 4, !tbaa !10 ; 3 uses
  %i.aj = icmp sgt i32 %.val.i.i367, 0
  br i1 %i.aj, label %bb.x, label %bb.y, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.ak = add nuw i32 %.val.i.i367, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !10
  br label %lean_inc_ref.exit369

bb.y:                                             ; preds = %bb.w
  %.not.i.i368 = icmp eq i32 %.val.i.i367, 0
  br i1 %.not.i.i368, label %lean_inc_ref.exit369, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.al = atomicrmw sub ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit369

lean_inc_ref.exit369:                             ; preds = %bb.x, %bb.y, %bb.z
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !14 ; 14 uses
  %.val358 = load i32, ptr %i.x, align 8, !tbaa !10
  %i.ao = icmp eq i32 %.val358, 1                 ; 2 uses
  br i1 %i.ao, label %lean_dec.exit274, label %bb.aa

bb.aa:                                            ; preds = %lean_inc_ref.exit369
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = and i64 %i.ap, 1
  %.not.i226 = icmp eq i64 %i.aq, 0
  br i1 %.not.i226, label %bb.ab, label %lean_inc.exit227

bb.ab:                                            ; preds = %bb.aa
  %.val.i.i370 = load i32, ptr %i.an, align 4, !tbaa !10 ; 3 uses
  %i.ar = icmp sgt i32 %.val.i.i370, 0
  br i1 %i.ar, label %bb.ac, label %bb.ad, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.as = add nuw i32 %.val.i.i370, 1
  store i32 %i.as, ptr %i.an, align 4, !tbaa !10
  br label %lean_inc.exit227

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i371 = icmp eq i32 %.val.i.i370, 0
  br i1 %.not.i.i371, label %lean_inc.exit227, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.at = atomicrmw sub ptr %i.an, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit227

lean_inc.exit227:                                 ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  br i1 %.not.i365, label %bb.af, label %lean_dec.exit274

bb.af:                                            ; preds = %lean_inc.exit227
  %i.au = load i32, ptr %i.x, align 8, !tbaa !10  ; 3 uses
  %i.av = icmp sgt i32 %i.au, 1
end_hunk_2
