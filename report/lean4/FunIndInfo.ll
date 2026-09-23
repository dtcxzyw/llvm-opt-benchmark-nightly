Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/FunIndInfo?download=true
inline.NumInlined: 803
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lean_once_cell_t = type { i32, i32 }

@l_Lean_Meta_instBEqFunIndParamKind = local_unnamed_addr global ptr @l_Lean_Meta_instBEqFunIndParamKind___closed__0_value, align 8
@l_Lean_Meta_instReprFunIndParamKind = local_unnamed_addr global ptr @l_Lean_Meta_instReprFunIndParamKind___closed__0_value, align 8
@l_Lean_Meta_instInhabitedFunIndInfo_default = local_unnamed_addr global ptr @l_Lean_Meta_instInhabitedFunIndInfo_default___closed__1_value, align 8
@l_Lean_Meta_instInhabitedFunIndInfo = local_unnamed_addr global ptr @l_Lean_Meta_instInhabitedFunIndInfo_default___closed__1_value, align 8
@l_Lean_Meta_instReprFunIndInfo = local_unnamed_addr global ptr @l_Lean_Meta_instReprFunIndInfo___closed__0_value, align 8
@l_Lean_Meta_instReprFunIndParamKind_repr___closed__6 = internal global ptr null, align 8
@l_Lean_Meta_instReprFunIndParamKind_repr___closed__6_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_instReprFunIndParamKind_repr___closed__7 = internal global ptr null, align 8
@l_Lean_Meta_instReprFunIndParamKind_repr___closed__7_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__6 = internal global ptr null, align 8
@l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__6_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__7 = internal global ptr null, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__7_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__10 = internal global ptr null, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__10_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__13 = internal global ptr null, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__13_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__16 = internal global ptr null, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__16_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__19 = internal global ptr null, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__19_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__2 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__5 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__5_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Options_empty = external local_unnamed_addr global ptr, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__7 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__7_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__9 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__9_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__11 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__11_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__13 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__13_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__15 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__15_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__17 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__17_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__19 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__19_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_unknownIdentifierMessageTag = external local_unnamed_addr global ptr, align 8
@l_Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1___redArg___closed__1 = internal global ptr null, align 8
@l_Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1___redArg___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1___redArg___closed__3 = internal global ptr null, align 8
@l_Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1___redArg___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_funIndInfoExt = local_unnamed_addr global ptr null, align 8
@l_Lean_Meta_setFunIndInfo___closed__2 = internal global ptr null, align 8
@l_Lean_Meta_setFunIndInfo___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_setFunIndInfo___closed__6 = internal global ptr null, align 8
@l_Lean_Meta_setFunIndInfo___closed__6_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_Meta_instInhabitedFunIndParamKind_default = local_unnamed_addr global i8 0, align 1
@l_Lean_Meta_instInhabitedFunIndParamKind = local_unnamed_addr global i8 0, align 1
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_Meta_instBEqFunIndParamKind___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Meta_instBEqFunIndParamKind_beq___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Meta_instReprFunIndParamKind___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Meta_instReprFunIndParamKind_repr___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Meta_instInhabitedFunIndInfo_default___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [4 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 40, i8 0, i8 4, i8 0 }, [4 x ptr] [ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_instInhabitedFunIndInfo_default___closed__0_value, ptr @l_Lean_Meta_instInhabitedFunIndInfo_default___closed__0_value] }, align 8
@l_Lean_Meta_instInhabitedFunIndInfo_default___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Meta_instReprFunIndInfo___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Meta_instReprFunIndInfo_repr___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Meta_instReprFunIndParamKind_repr___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Meta_instReprFunIndParamKind_repr___closed__0_value] }, align 8
@l_Lean_Meta_instReprFunIndParamKind_repr___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [34 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 34, i64 34, i64 33, [34 x i8] c"Lean.Meta.FunIndParamKind.dropped\00" }>, align 8
@l_Lean_Meta_instReprFunIndParamKind_repr___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Meta_instReprFunIndParamKind_repr___closed__2_value] }, align 8
@l_Lean_Meta_instReprFunIndParamKind_repr___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [32 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 32, i64 32, i64 31, [32 x i8] c"Lean.Meta.FunIndParamKind.param\00" }, align 8
@l_Lean_Meta_instReprFunIndParamKind_repr___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Meta_instReprFunIndParamKind_repr___closed__4_value] }, align 8
@l_Lean_Meta_instReprFunIndParamKind_repr___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [33 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 33, i64 33, i64 32, [33 x i8] c"Lean.Meta.FunIndParamKind.target\00" }>, align 8
@l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__2_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__1_value] }, align 8
@l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c",\00" }>, align 8
@l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__5 = internal global ptr null, align 8
@l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__5_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [3 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 3, i64 3, i64 2, [3 x i8] c"#[\00" }>, align 8
@l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__7_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__0_value] }, align 8
@l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__8_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__4_value] }, align 8
@l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c"]\00" }>, align 8
@l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__10_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__9_value] }, align 8
@l_Array_repr___at___00Lean_Meta_instReprFunIndInfo_repr_spec__0___closed__9_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [4 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 4, i64 4, i64 3, [4 x i8] c"#[]\00" }>, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__4_value] }, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c" := \00" }>, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__6_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__3_value, ptr @l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__5_value] }, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__2_value] }, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__1_value] }, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [8 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 8, i64 8, i64 7, [8 x i8] c"funName\00" }, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__9_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__8_value] }, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__8_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [11 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 11, i64 11, i64 10, [11 x i8] c"funIndName\00" }>, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__12_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__11_value] }, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__11_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [10 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 10, i64 10, i64 9, [10 x i8] c"levelMask\00" }>, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__15_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__14_value] }, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__14_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [7 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 7, i64 7, i64 6, [7 x i8] c"params\00" }>, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__18 = internal global ptr null, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__18_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [3 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 3, i64 3, i64 2, [3 x i8] c"{ \00" }>, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__20_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__0_value] }, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__21_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__17_value] }, align 8
@l_Lean_Meta_instReprFunIndInfo_repr___redArg___closed__17_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [3 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 3, i64 3, i64 2, [3 x i8] c" }\00" }>, align 8
@l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___lam__0___closed__0_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8
@l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___lam__0___closed__1_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8
@l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___lam__0___closed__2_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 3, i8 0 }, [3 x ptr] [ptr @l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___lam__0___closed__1_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value, ptr @l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___lam__0___closed__1_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value, ptr @l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___lam__0___closed__1_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value] }, align 8
@l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___closed__0_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___lam__0_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2____boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___closed__4_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___closed__4_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value_aux_1, ptr @l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___closed__3_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value, ptr inttoptr (i64 -9004743286419380547 to ptr)] }, align 8
@l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___closed__4_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___closed__4_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value_aux_0, ptr @l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___closed__2_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value, ptr inttoptr (i64 -2997360877542690110 to ptr)] }, align 8
@l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___closed__4_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___closed__1_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___closed__1_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"Lean\00" }>, align 8
@l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___closed__2_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"Meta\00" }>, align 8
@l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___closed__3_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [14 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 14, i64 14, i64 13, [14 x i8] c"funIndInfoExt\00" }>, align 8
@l___private_Lean_Meta_Tactic_FunIndInfo_0__Lean_Meta_initFn___closed__5_00___x40_Lean_Meta_Tactic_FunIndInfo_2193198776____hygCtx___hyg_2__value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 0, i8 3 }, [1 x ptr] zeroinitializer }, align 8
@l_Lean_Meta_getFunInductName___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_getFunInductName___closed__0_value, ptr inttoptr (i64 -7946269859558595683 to ptr)] }, align 8
@l_Lean_Meta_getFunInductName___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [7 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 7, i64 7, i64 6, [7 x i8] c"induct\00" }>, align 8
@l_Lean_Meta_getFunInductName___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_getFunInductName___closed__2_value, ptr inttoptr (i64 -812366470455939902 to ptr)] }, align 8
@l_Lean_Meta_getFunInductName___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [17 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 17, i64 17, i64 16, [17 x i8] c"induct_unfolding\00" }>, align 8
@l_Lean_Meta_getFunCasesName___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_getFunCasesName___closed__0_value, ptr inttoptr (i64 -4525528065107512512 to ptr)] }, align 8
@l_Lean_Meta_getFunCasesName___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [10 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 10, i64 10, i64 9, [10 x i8] c"fun_cases\00" }>, align 8
@l_Lean_Meta_getFunCasesName___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_getFunCasesName___closed__2_value, ptr inttoptr (i64 -5015369169692986452 to ptr)] }, align 8
@l_Lean_Meta_getFunCasesName___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [20 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 20, i64 20, i64 19, [20 x i8] c"fun_cases_unfolding\00" }>, align 8
@l_Lean_Meta_getMutualInductName___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_getMutualInductName___closed__0_value, ptr inttoptr (i64 -6400055949891382491 to ptr)] }, align 8
@l_Lean_Meta_getMutualInductName___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [14 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 14, i64 14, i64 13, [14 x i8] c"mutual_induct\00" }>, align 8
@l_Lean_Meta_getMutualInductName___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_getMutualInductName___closed__2_value, ptr inttoptr (i64 8515751793234623186 to ptr)] }, align 8
@l_Lean_Meta_getMutualInductName___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [24 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 24, i64 24, i64 23, [24 x i8] c"mutual_induct_unfolding\00" }, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__1 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__0 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__4 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__4_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__3 = internal global ptr null, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__6_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [24 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 24, i64 24, i64 23, [24 x i8] c"A private declaration `\00" }, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__8_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [79 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 79, i64 79, i64 78, [79 x i8] c"` (from the current module) exists but would need to be public to access here.\00" }>, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__10_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [23 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 23, i64 23, i64 22, [23 x i8] c"A public declaration `\00" }>, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__12_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [68 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 68, i64 68, i64 67, [68 x i8] c"` exists but is imported privately; consider adding `public import \00" }>, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__14_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [3 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 3, i64 3, i64 2, [3 x i8] c"`.\00" }>, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__16_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [10 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 10, i64 10, i64 9, [10 x i8] c"` (from `\00" }>, align 8
@l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1_spec__2_spec__3_spec__4___redArg___closed__18_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [54 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 54, i64 54, i64 53, [54 x i8] c"`) exists but would need to be public to access here.\00" }>, align 8
@l_Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1___redArg___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [19 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 19, i64 19, i64 18, [19 x i8] c"Unknown constant `\00" }>, align 8
@l_Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getFunInduct_x3f_spec__0_spec__0_spec__1___redArg___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c"`\00" }>, align 8
@l_panic___at___00Lean_Meta_setFunIndInfo_spec__0___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Core_instInhabitedCoreM___lam__0___boxed, i16 3, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Meta_setFunIndInfo___closed__1 = internal global ptr null, align 8
@l_Lean_Meta_setFunIndInfo___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_setFunIndInfo___closed__0 = internal global ptr null, align 8
@l_Lean_Meta_setFunIndInfo___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_setFunIndInfo___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [144 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 144, i64 144, i64 143, [144 x i8] c"assertion violation: !(funIndInfoExt.contains ( __do_lift._@.Lean.Meta.Tactic.FunIndInfo.992483078._hygCtx._hyg.9.0 ) funIndInfo.funIndName)\0A  \00" }, align 8
@l_Lean_Meta_setFunIndInfo___closed__4_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [24 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 24, i64 24, i64 23, [24 x i8] c"Lean.Meta.setFunIndInfo\00" }, align 8
@l_Lean_Meta_setFunIndInfo___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [28 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 28, i64 28, i64 27, [28 x i8] c"Lean.Meta.Tactic.FunIndInfo\00" }>, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Meta_FunIndParamKind_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4 = icmp eq i8 %0, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Meta_FunIndParamKind_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.c, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %i.c, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Meta_FunIndParamKind_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #0 {
l_Lean_Meta_FunIndParamKind_ctorIdx.exit:
  %switch.selectcmp.i = icmp eq i8 %0, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %0, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Meta_FunIndParamKind_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i.i = icmp eq i8 %i.c, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i.i = icmp eq i8 %i.c, 0
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i.i
  ret ptr %switch.select5.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Meta_FunIndParamKind_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #1 {
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
define noundef ptr @l_Lean_Meta_FunIndParamKind_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #2 {
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
define noundef ptr @l_Lean_Meta_FunIndParamKind_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #1 {
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
define noundef ptr @l_Lean_Meta_FunIndParamKind_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #2 {
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
define noundef ptr @l_Lean_Meta_FunIndParamKind_dropped_elim___redArg(ptr noundef returned %0) local_unnamed_addr #1 {
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
begin_hunk_1_@l_Lean_Meta_FunIndParamKind_param_elim___boxed:bb.a
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
define noundef ptr @l_Lean_Meta_FunIndParamKind_target_elim___redArg(ptr noundef returned %0) local_unnamed_addr #1 {
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
define noundef ptr @l_Lean_Meta_FunIndParamKind_target_elim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #2 {
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
define noundef ptr @l_Lean_Meta_FunIndParamKind_target_elim(ptr nofree noundef readnone captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #1 {
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
define noundef ptr @l_Lean_Meta_FunIndParamKind_target_elim___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #2 {
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
define zeroext range(i8 0, 2) i8 @l_Lean_Meta_instBEqFunIndParamKind_beq(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
lean_dec.exit:
  %switch.selectcmp4.i = icmp eq i8 %0, 0         ; 2 uses
  %switch.selectcmp.i = icmp ne i8 %0, 1
  %switch.selectcmp4.i14 = icmp eq i8 %1, 0
  %i.a = icmp eq i8 %1, 1
  %2 = xor i1 %switch.selectcmp.i, %i.a
  %not.switch.selectcmp4.i = xor i1 %switch.selectcmp4.i, true
  %3 = and i1 %2, %not.switch.selectcmp4.i
  %4 = select i1 %switch.selectcmp4.i14, i1 %switch.selectcmp4.i, i1 %3
  %i.b = zext i1 %4 to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Meta_instBEqFunIndParamKind_beq___boxed(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8                     ; 2 uses
  %switch.selectcmp4.i.i = icmp eq i8 %i.c, 0     ; 2 uses
  %switch.selectcmp.i.i = icmp ne i8 %i.c, 1
  %switch.selectcmp4.i14.i = icmp eq i8 %i.f, 0
  %switch.selectcmp.i12.i = icmp eq i8 %i.f, 1
  %2 = xor i1 %switch.selectcmp.i.i, %switch.selectcmp.i12.i
  %not.switch.selectcmp4.i.i = xor i1 %switch.selectcmp4.i.i, true
  %3 = and i1 %2, %not.switch.selectcmp4.i.i
  %4 = select i1 %switch.selectcmp4.i14.i, i1 %switch.selectcmp4.i.i, i1 %3
  %5 = select i1 %4, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_instReprFunIndParamKind_repr(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, 1
  %.not99 = icmp eq i64 %i.b, 0                   ; 3 uses
  switch i8 %0, label %bb.p [
    i8 0, label %bb.b
    i8 1, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not99, label %lean_nat_le.exit, label %.split, !prof !20

.split:                                           ; preds = %bb.b
  %.not116 = icmp ult ptr %1, inttoptr (i64 2049 to ptr)
  br i1 %.not116, label %bb.c, label %bb.f

lean_nat_le.exit:                                 ; preds = %bb.b
  %i.c = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull inttoptr (i64 2049 to ptr), ptr noundef %1) #6
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.split, %lean_nat_le.exit
  %i.d = load atomic i32, ptr @l_Lean_Meta_instReprFunIndParamKind_repr___closed__6_once seq_cst, align 4, !tbaa !14
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @l_Lean_Meta_instReprFunIndParamKind_repr___closed__6, align 8, !tbaa !16
  br label %lean_obj_once.exit

bb.e:                                             ; preds = %bb.c
  %i.g = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_instReprFunIndParamKind_repr___closed__6, ptr noundef nonnull @l_Lean_Meta_instReprFunIndParamKind_repr___closed__6_once, ptr noundef nonnull @_init_l_Lean_Meta_instReprFunIndParamKind_repr___closed__6) #6
  br label %lean_obj_once.exit

bb.f:                                             ; preds = %.split, %lean_nat_le.exit
  %i.h = load atomic i32, ptr @l_Lean_Meta_instReprFunIndParamKind_repr___closed__7_once seq_cst, align 4, !tbaa !14
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr @l_Lean_Meta_instReprFunIndParamKind_repr___closed__7, align 8, !tbaa !16
  br label %lean_obj_once.exit

bb.h:                                             ; preds = %bb.f
  %i.k = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_instReprFunIndParamKind_repr___closed__7, ptr noundef nonnull @l_Lean_Meta_instReprFunIndParamKind_repr___closed__7_once, ptr noundef nonnull @_init_l_Lean_Meta_instReprFunIndParamKind_repr___closed__7) #6
  br label %lean_obj_once.exit

bb.i:                                             ; preds = %bb.a
  br i1 %.not99, label %lean_nat_le.exit69, label %.split106, !prof !20

.split106:                                        ; preds = %bb.i
  %.not = icmp ult ptr %1, inttoptr (i64 2049 to ptr)
  br i1 %.not, label %bb.j, label %bb.m

lean_nat_le.exit69:                               ; preds = %bb.i
  %i.l = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull inttoptr (i64 2049 to ptr), ptr noundef %1) #6
  br i1 %i.l, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.split106, %lean_nat_le.exit69
  %i.m = load atomic i32, ptr @l_Lean_Meta_instReprFunIndParamKind_repr___closed__6_once seq_cst, align 4, !tbaa !14
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.o = load ptr, ptr @l_Lean_Meta_instReprFunIndParamKind_repr___closed__6, align 8, !tbaa !16
  br label %lean_obj_once.exit78

bb.l:                                             ; preds = %bb.j
  %i.p = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_instReprFunIndParamKind_repr___closed__6, ptr noundef nonnull @l_Lean_Meta_instReprFunIndParamKind_repr___closed__6_once, ptr noundef nonnull @_init_l_Lean_Meta_instReprFunIndParamKind_repr___closed__6) #6
  br label %lean_obj_once.exit78

bb.m:                                             ; preds = %.split106, %lean_nat_le.exit69
  %i.q = load atomic i32, ptr @l_Lean_Meta_instReprFunIndParamKind_repr___closed__7_once seq_cst, align 4, !tbaa !14
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.n, label %bb.o, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.s = load ptr, ptr @l_Lean_Meta_instReprFunIndParamKind_repr___closed__7, align 8, !tbaa !16
  br label %lean_obj_once.exit78

bb.o:                                             ; preds = %bb.m
  %i.t = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_instReprFunIndParamKind_repr___closed__7, ptr noundef nonnull @l_Lean_Meta_instReprFunIndParamKind_repr___closed__7_once, ptr noundef nonnull @_init_l_Lean_Meta_instReprFunIndParamKind_repr___closed__7) #6
  br label %lean_obj_once.exit78

bb.p:                                             ; preds = %bb.a
  br i1 %.not99, label %lean_nat_le.exit73, label %.split107, !prof !20

.split107:                                        ; preds = %bb.p
  %.not117 = icmp ult ptr %1, inttoptr (i64 2049 to ptr)
  br i1 %.not117, label %bb.q, label %bb.t

lean_nat_le.exit73:                               ; preds = %bb.p
  %i.u = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull inttoptr (i64 2049 to ptr), ptr noundef %1) #6
  br i1 %i.u, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.split107, %lean_nat_le.exit73
  %i.v = load atomic i32, ptr @l_Lean_Meta_instReprFunIndParamKind_repr___closed__6_once seq_cst, align 4, !tbaa !14
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.x = load ptr, ptr @l_Lean_Meta_instReprFunIndParamKind_repr___closed__6, align 8, !tbaa !16
  br label %lean_obj_once.exit82

bb.s:                                             ; preds = %bb.q
  %i.y = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_instReprFunIndParamKind_repr___closed__6, ptr noundef nonnull @l_Lean_Meta_instReprFunIndParamKind_repr___closed__6_once, ptr noundef nonnull @_init_l_Lean_Meta_instReprFunIndParamKind_repr___closed__6) #6
  br label %lean_obj_once.exit82

bb.t:                                             ; preds = %.split107, %lean_nat_le.exit73
  %i.z = load atomic i32, ptr @l_Lean_Meta_instReprFunIndParamKind_repr___closed__7_once seq_cst, align 4, !tbaa !14
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.u, label %bb.v, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.ab = load ptr, ptr @l_Lean_Meta_instReprFunIndParamKind_repr___closed__7, align 8, !tbaa !16
  br label %lean_obj_once.exit82

bb.v:                                             ; preds = %bb.t
  %i.ac = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_instReprFunIndParamKind_repr___closed__7, ptr noundef nonnull @l_Lean_Meta_instReprFunIndParamKind_repr___closed__7_once, ptr noundef nonnull @_init_l_Lean_Meta_instReprFunIndParamKind_repr___closed__7) #6
  br label %lean_obj_once.exit82

lean_obj_once.exit:                               ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  %.057 = phi ptr [ %i.g, %bb.e ], [ %i.f, %bb.d ], [ %i.j, %bb.g ], [ %i.k, %bb.h ] ; 5 uses
  %i.ad = ptrtoint ptr %.057 to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i63 = icmp eq i64 %i.ae, 0
  br i1 %.not.i63, label %bb.w, label %lean_inc.exit64

bb.w:                                             ; preds = %lean_obj_once.exit
  %.val.i.i = load i32, ptr %.057, align 4, !tbaa !10 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i, 0
  br i1 %i.af, label %bb.x, label %bb.y, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.ag = add nuw i32 %.val.i.i, 1
  store i32 %i.ag, ptr %.057, align 4, !tbaa !10
  br label %lean_inc.exit64

bb.y:                                             ; preds = %bb.w
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit64, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ah = atomicrmw sub ptr %.057, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit64

lean_inc.exit64:                                  ; preds = %bb.z, %bb.y, %bb.x, %lean_obj_once.exit
  tail call void @lean_inc_heartbeat() #6
  %i.ai = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.aa, label %lean_alloc_ctor.exit

bb.aa:                                            ; preds = %lean_inc.exit64
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc.exit64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 1, ptr %i.ai, align 4, !tbaa !10
  store i32 67239960, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.057, ptr %i.al, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr @l_Lean_Meta_instReprFunIndParamKind_repr___closed__1_value, ptr %i.am, align 8, !tbaa !16
  tail call void @lean_inc_heartbeat() #6
  %i.an = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.ab, label %lean_alloc_ctor.exit85

bb.ab:                                            ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_obj_once.exit78:                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.058 = phi ptr [ %i.p, %bb.l ], [ %i.o, %bb.k ], [ %i.s, %bb.n ], [ %i.t, %bb.o ] ; 5 uses
  %i.ap = ptrtoint ptr %.058 to i64
  %i.aq = and i64 %i.ap, 1
  %.not.i61 = icmp eq i64 %i.aq, 0
  br i1 %.not.i61, label %bb.ac, label %lean_inc.exit62

bb.ac:                                            ; preds = %lean_obj_once.exit78
  %.val.i.i86 = load i32, ptr %.058, align 4, !tbaa !10 ; 3 uses
  %i.ar = icmp sgt i32 %.val.i.i86, 0
  br i1 %i.ar, label %bb.ad, label %bb.ae, !prof !11

bb.ad:                                            ; preds = %bb.ac
  %i.as = add nuw i32 %.val.i.i86, 1
  store i32 %i.as, ptr %.058, align 4, !tbaa !10
  br label %lean_inc.exit62

bb.ae:                                            ; preds = %bb.ac
  %.not.i.i87 = icmp eq i32 %.val.i.i86, 0
  br i1 %.not.i.i87, label %lean_inc.exit62, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.at = atomicrmw sub ptr %.058, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit62
end_hunk_1
