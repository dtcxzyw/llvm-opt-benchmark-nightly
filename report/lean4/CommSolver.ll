Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/CommSolver?download=true
inline.NumInlined: 3219
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lean_once_cell_t = type { i32, i32 }

@l_Lean_Grind_CommRing_instBEqExpr = local_unnamed_addr global ptr @l_Lean_Grind_CommRing_instBEqExpr___closed__0_value, align 8
@l_Lean_Grind_CommRing_instHashableExpr = local_unnamed_addr global ptr @l_Lean_Grind_CommRing_instHashableExpr___closed__0_value, align 8
@l_Lean_Grind_CommRing_instReprExpr = local_unnamed_addr global ptr @l_Lean_Grind_CommRing_instReprExpr___closed__0_value, align 8
@l_Lean_Grind_CommRing_instBEqPower = local_unnamed_addr global ptr @l_Lean_Grind_CommRing_instBEqPower___closed__0_value, align 8
@l_Lean_Grind_CommRing_instReprPower = local_unnamed_addr global ptr @l_Lean_Grind_CommRing_instReprPower___closed__0_value, align 8
@l_Lean_Grind_CommRing_instInhabitedPower_default = local_unnamed_addr global ptr @l_Lean_Grind_CommRing_instInhabitedPower_default___closed__0_value, align 8
@l_Lean_Grind_CommRing_instInhabitedPower = local_unnamed_addr global ptr @l_Lean_Grind_CommRing_instInhabitedPower_default___closed__0_value, align 8
@l_Lean_Grind_CommRing_instHashablePower = local_unnamed_addr global ptr @l_Lean_Grind_CommRing_instHashablePower___closed__0_value, align 8
@l_Lean_Grind_CommRing_instBEqMon = local_unnamed_addr global ptr @l_Lean_Grind_CommRing_instBEqMon___closed__0_value, align 8
@l_Lean_Grind_CommRing_instReprMon = local_unnamed_addr global ptr @l_Lean_Grind_CommRing_instReprMon___closed__0_value, align 8
@l_Lean_Grind_CommRing_instHashableMon = local_unnamed_addr global ptr @l_Lean_Grind_CommRing_instHashableMon___closed__0_value, align 8
@l_Lean_Grind_CommRing_instBEqPoly = local_unnamed_addr global ptr @l_Lean_Grind_CommRing_instBEqPoly___closed__0_value, align 8
@l_Lean_Grind_CommRing_instReprPoly = local_unnamed_addr global ptr @l_Lean_Grind_CommRing_instReprPoly___closed__0_value, align 8
@l_Lean_Grind_CommRing_instHashablePoly = local_unnamed_addr global ptr @l_Lean_Grind_CommRing_instHashablePoly___closed__0_value, align 8
@l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0 = internal global ptr null, align 8
@l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__3 = internal global ptr null, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__4 = internal global ptr null, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__4_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__7 = internal global ptr null, align 8
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__7_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__14 = internal global ptr null, align 8
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__14_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0 = internal global ptr null, align 8
@l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Grind_CommRing_Poly_pow___closed__0 = internal global ptr null, align 8
@l_Lean_Grind_CommRing_Poly_pow___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Grind_CommRing_Expr_toPoly___closed__0 = internal global ptr null, align 8
@l_Lean_Grind_CommRing_Expr_toPoly___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_Grind_CommRing_instInhabitedExpr_default = local_unnamed_addr global ptr null, align 8
@l_Lean_Grind_CommRing_instInhabitedExpr = local_unnamed_addr global ptr null, align 8
@l_Lean_Grind_CommRing_instInhabitedMon_default = local_unnamed_addr global ptr null, align 8
@l_Lean_Grind_CommRing_instInhabitedMon = local_unnamed_addr global ptr null, align 8
@l_Lean_Grind_CommRing_hugeFuel = local_unnamed_addr global ptr null, align 8
@l_Lean_Grind_CommRing_instInhabitedPoly_default = local_unnamed_addr global ptr null, align 8
@l_Lean_Grind_CommRing_instInhabitedPoly = local_unnamed_addr global ptr null, align 8
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_Grind_CommRing_instBEqExpr___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Grind_CommRing_instBEqExpr_beq___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Grind_CommRing_instHashableExpr___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Grind_CommRing_instHashableExpr_hash___boxed, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Grind_CommRing_instReprExpr___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Grind_CommRing_instReprExpr_repr___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Grind_CommRing_instBEqPower___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Grind_CommRing_instBEqPower_beq___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Grind_CommRing_instReprPower___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Grind_CommRing_instReprPower_repr___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Grind_CommRing_instInhabitedPower_default___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 0 }, [2 x ptr] [ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)] }, align 8
@l_Lean_Grind_CommRing_instHashablePower___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Grind_CommRing_instHashablePower_hash___boxed, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Grind_CommRing_instBEqMon___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Grind_CommRing_instBEqMon_beq___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Grind_CommRing_instReprMon___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Grind_CommRing_instReprMon_repr___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Grind_CommRing_instHashableMon___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Grind_CommRing_instHashableMon_hash___boxed, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Grind_CommRing_instBEqPoly___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Grind_CommRing_instBEqPoly_beq___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Grind_CommRing_instReprPoly___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Grind_CommRing_instReprPoly_repr___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Grind_CommRing_instHashablePoly___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_Grind_CommRing_instHashablePoly_hash___boxed, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__1_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__0_value] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [29 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 29, i64 29, i64 28, [29 x i8] c"Lean.Grind.CommRing.Expr.num\00" }>, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__7_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__6_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__6_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__5_value] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__5_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [33 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 33, i64 33, i64 32, [33 x i8] c"Lean.Grind.CommRing.Expr.natCast\00" }>, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__10_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__9_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__9_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__8_value] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__8_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [33 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 33, i64 33, i64 32, [33 x i8] c"Lean.Grind.CommRing.Expr.intCast\00" }>, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__13_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__12_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__12_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__11_value] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__11_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [29 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 29, i64 29, i64 28, [29 x i8] c"Lean.Grind.CommRing.Expr.var\00" }>, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__16_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__15_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__15_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__14_value] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__14_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [29 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 29, i64 29, i64 28, [29 x i8] c"Lean.Grind.CommRing.Expr.neg\00" }>, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__19_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__18_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__18_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__17_value] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__17_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [29 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 29, i64 29, i64 28, [29 x i8] c"Lean.Grind.CommRing.Expr.add\00" }>, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__22_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__21_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__21_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__20_value] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__20_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [29 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 29, i64 29, i64 28, [29 x i8] c"Lean.Grind.CommRing.Expr.sub\00" }>, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__25_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__24_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__24_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__23_value] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__23_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [29 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 29, i64 29, i64 28, [29 x i8] c"Lean.Grind.CommRing.Expr.mul\00" }>, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__28_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__27_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__27_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__26_value] }, align 8
@l_Lean_Grind_CommRing_instReprExpr_repr___closed__26_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [29 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 29, i64 29, i64 28, [29 x i8] c"Lean.Grind.CommRing.Expr.pow\00" }>, align 8
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__4_value] }, align 8
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c" := \00" }>, align 8
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__6_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__3_value, ptr @l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__5_value] }, align 8
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__2_value] }, align 8
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__1_value] }, align 8
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c"x\00" }>, align 8
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__9_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__8_value] }, align 8
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__8_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c",\00" }>, align 8
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__11_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__10_value] }, align 8
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__10_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c"k\00" }>, align 8
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__13 = internal global ptr null, align 8
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__13_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [3 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 3, i64 3, i64 2, [3 x i8] c"{ \00" }>, align 8
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__15_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__0_value] }, align 8
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__16_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__12_value] }, align 8
@l_Lean_Grind_CommRing_instReprPower_repr___redArg___closed__12_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [3 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 3, i64 3, i64 2, [3 x i8] c" }\00" }>, align 8
@l_Lean_Grind_CommRing_instReprMon_repr___closed__4_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lean_Grind_CommRing_instReprMon_repr___closed__3_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lean_Grind_CommRing_instReprMon_repr___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprMon_repr___closed__2_value] }, align 8
@l_Lean_Grind_CommRing_instReprMon_repr___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [29 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 29, i64 29, i64 28, [29 x i8] c"Lean.Grind.CommRing.Mon.mult\00" }>, align 8
@l_Lean_Grind_CommRing_instReprMon_repr___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprMon_repr___closed__0_value] }, align 8
@l_Lean_Grind_CommRing_instReprMon_repr___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [29 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 29, i64 29, i64 28, [29 x i8] c"Lean.Grind.CommRing.Mon.unit\00" }>, align 8
@l_Lean_Grind_CommRing_instReprPoly_repr___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lean_Grind_CommRing_instReprPoly_repr___closed__1_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lean_Grind_CommRing_instReprPoly_repr___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprPoly_repr___closed__0_value] }, align 8
@l_Lean_Grind_CommRing_instReprPoly_repr___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [29 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 29, i64 29, i64 28, [29 x i8] c"Lean.Grind.CommRing.Poly.num\00" }>, align 8
@l_Lean_Grind_CommRing_instReprPoly_repr___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lean_Grind_CommRing_instReprPoly_repr___closed__4_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lean_Grind_CommRing_instReprPoly_repr___closed__4_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Grind_CommRing_instReprPoly_repr___closed__3_value] }, align 8
@l_Lean_Grind_CommRing_instReprPoly_repr___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [29 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 29, i64 29, i64 28, [29 x i8] c"Lean.Grind.CommRing.Poly.add\00" }>, align 8
@l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__1 = internal global ptr null, align 8
@l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @lean_int_emod(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not21 = icmp eq i64 %i.d, 0
  br i1 %.not21, label %.critedge, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %i.c, 31
  %i.f = ashr i64 %i.e, 32                        ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %lean_int64_to_int.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl i64 %i.a, 31
  %i.i = ashr i64 %i.h, 32
  %i.j = srem i64 %i.i, %i.f                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %.p = tail call i64 @llvm.abs.i64(i64 %i.f, i1 true)
  %i.l = select i1 %i.k, i64 %.p, i64 0
  %.0 = add nsw i64 %i.l, %i.j                    ; 3 uses
  %2 = icmp slt i64 %.0, 2147483648
  br i1 %2, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.m = shl nsw i64 %.0, 1
  %3 = and i64 %i.m, 8589934590
  %i.n = or disjoint i64 %3, 1
  %i.o = inttoptr i64 %i.n to ptr
  br label %lean_int64_to_int.exit

bb.f:                                             ; preds = %bb.d
  %i.p = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0) #7
  br label %lean_int64_to_int.exit

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.q = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %1) #7
  br label %lean_int64_to_int.exit

lean_int64_to_int.exit:                           ; preds = %bb.f, %bb.e, %bb.c, %.critedge
  %.1 = phi ptr [ %i.q, %.critedge ], [ %0, %bb.c ], [ %i.o, %bb.e ], [ %i.p, %bb.f ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @l_Lean_Grind_CommRing_Expr_ctorIdx(ptr noundef %0) local_unnamed_addr #1 {
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
  switch i32 %.0.i, label %bb.k [
    i32 0, label %bb.l
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
  ]

bb.d:                                             ; preds = %lean_obj_tag.exit
  br label %bb.l

bb.e:                                             ; preds = %lean_obj_tag.exit
  br label %bb.l

bb.f:                                             ; preds = %lean_obj_tag.exit
  br label %bb.l

bb.g:                                             ; preds = %lean_obj_tag.exit
  br label %bb.l

bb.h:                                             ; preds = %lean_obj_tag.exit
  br label %bb.l

bb.i:                                             ; preds = %lean_obj_tag.exit
  br label %bb.l

bb.j:                                             ; preds = %lean_obj_tag.exit
  br label %bb.l

bb.k:                                             ; preds = %lean_obj_tag.exit
  br label %bb.l

bb.l:                                             ; preds = %lean_obj_tag.exit, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0 = phi ptr [ inttoptr (i64 17 to ptr), %bb.k ], [ inttoptr (i64 15 to ptr), %bb.j ], [ inttoptr (i64 3 to ptr), %bb.d ], [ inttoptr (i64 5 to ptr), %bb.e ], [ inttoptr (i64 7 to ptr), %bb.f ], [ inttoptr (i64 9 to ptr), %bb.g ], [ inttoptr (i64 11 to ptr), %bb.h ], [ inttoptr (i64 13 to ptr), %bb.i ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l_Lean_Grind_CommRing_Expr_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24
  br label %lean_obj_tag.exit.i

lean_obj_tag.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  switch i32 %.0.i.i, label %bb.k [
    i32 0, label %l_Lean_Grind_CommRing_Expr_ctorIdx.exit
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
  ]

bb.d:                                             ; preds = %lean_obj_tag.exit.i
  br label %l_Lean_Grind_CommRing_Expr_ctorIdx.exit

bb.e:                                             ; preds = %lean_obj_tag.exit.i
  br label %l_Lean_Grind_CommRing_Expr_ctorIdx.exit

bb.f:                                             ; preds = %lean_obj_tag.exit.i
  br label %l_Lean_Grind_CommRing_Expr_ctorIdx.exit

bb.g:                                             ; preds = %lean_obj_tag.exit.i
  br label %l_Lean_Grind_CommRing_Expr_ctorIdx.exit

bb.h:                                             ; preds = %lean_obj_tag.exit.i
  br label %l_Lean_Grind_CommRing_Expr_ctorIdx.exit

bb.i:                                             ; preds = %lean_obj_tag.exit.i
  br label %l_Lean_Grind_CommRing_Expr_ctorIdx.exit

bb.j:                                             ; preds = %lean_obj_tag.exit.i
  br label %l_Lean_Grind_CommRing_Expr_ctorIdx.exit

bb.k:                                             ; preds = %lean_obj_tag.exit.i
  br label %l_Lean_Grind_CommRing_Expr_ctorIdx.exit

l_Lean_Grind_CommRing_Expr_ctorIdx.exit:          ; preds = %lean_obj_tag.exit.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i = phi ptr [ inttoptr (i64 17 to ptr), %bb.k ], [ inttoptr (i64 15 to ptr), %bb.j ], [ inttoptr (i64 3 to ptr), %bb.d ], [ inttoptr (i64 5 to ptr), %bb.e ], [ inttoptr (i64 7 to ptr), %bb.f ], [ inttoptr (i64 9 to ptr), %bb.g ], [ inttoptr (i64 11 to ptr), %bb.h ], [ inttoptr (i64 13 to ptr), %bb.i ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.i ]
  %i.g = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.l, label %bb.m, !prof !10

bb.l:                                             ; preds = %l_Lean_Grind_CommRing_Expr_ctorIdx.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.m:                                             ; preds = %l_Lean_Grind_CommRing_Expr_ctorIdx.exit
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.l, %bb.m, %bb.n
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_CommRing_Expr_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i53 = icmp eq i64 %i.b, 0
  br i1 %.not.i53, label %bb.c, label %bb.b

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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 25 uses
  switch i32 %.0.i, label %bb.co [
    i32 4, label %bb.d
    i32 5, label %bb.p
    i32 6, label %bb.ai
    i32 7, label %bb.bb
    i32 8, label %bb.bu
  ]

bb.d:                                             ; preds = %lean_obj_tag.exit
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !12 ; 3 uses
  %i.i = icmp sgt i32 %.val.i.i, 0
  br i1 %i.i, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw i32 %.val.i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !12
  br label %lean_inc_ref.exit

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.g
end_hunk_0
begin_hunk_1_@l_Lean_Grind_CommRing_Expr_toPoly__nc:bb.a
bb.gk:                                            ; preds = %bb.gi
  %.not.i.i233 = icmp eq i32 %i.jj, 0
  br i1 %.not.i.i233, label %common.ret445, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fx) #7
  br label %common.ret445

bb.gm:                                            ; preds = %.split, %lean_nat_eq.exit
  %i.jm = ptrtoint ptr %.0199 to i64
  %i.jn = and i64 %i.jm, 1
  %.not.i388 = icmp eq i64 %i.jn, 0
  br i1 %.not.i388, label %bb.gn, label %lean_del_object.exit389

bb.gn:                                            ; preds = %bb.gm
  tail call void @lean_free_object(ptr noundef %.0199) #7
  br label %lean_del_object.exit389

lean_del_object.exit389:                          ; preds = %bb.gm, %bb.gn
  br i1 %.not.i264, label %bb.go, label %lean_dec.exit231

bb.go:                                            ; preds = %lean_del_object.exit389
  %i.jo = load i32, ptr %i.fx, align 4, !tbaa !12 ; 3 uses
  %i.jp = icmp sgt i32 %i.jo, 1
  br i1 %i.jp, label %bb.gp, label %bb.gq, !prof !10

bb.gp:                                            ; preds = %bb.go
  %i.jq = add nsw i32 %i.jo, -1
  store i32 %i.jq, ptr %i.fx, align 4, !tbaa !12
  br label %lean_dec.exit231

bb.gq:                                            ; preds = %bb.go
  %.not.i.i229 = icmp eq i32 %i.jo, 0
  br i1 %.not.i.i229, label %lean_dec.exit231, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fx) #7
  br label %lean_dec.exit231

lean_dec.exit231:                                 ; preds = %bb.gp, %bb.gq, %bb.gr, %lean_del_object.exit389
  %i.jr = load i32, ptr %i.h, align 4, !tbaa !12  ; 3 uses
  %i.js = icmp sgt i32 %i.jr, 1
  br i1 %i.js, label %bb.gs, label %bb.gt, !prof !10

bb.gs:                                            ; preds = %lean_dec.exit231
  %i.jt = add nsw i32 %i.jr, -1
  store i32 %i.jt, ptr %i.h, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.gt:                                            ; preds = %lean_dec.exit231
  %.not.i = icmp eq i32 %i.jr, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.h) #7
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.gs, %bb.gt, %bb.gu
  %i.ju = load atomic i32, ptr @l_Lean_Grind_CommRing_Poly_pow___closed__0_once seq_cst, align 4, !tbaa !18
  %i.jv = icmp eq i32 %i.ju, 1
  br i1 %i.jv, label %bb.gv, label %bb.gw, !prof !10

bb.gv:                                            ; preds = %lean_dec_ref.exit
  %i.jw = load ptr, ptr @l_Lean_Grind_CommRing_Poly_pow___closed__0, align 8, !tbaa !14
  br label %common.ret445

bb.gw:                                            ; preds = %lean_dec_ref.exit
  %i.jx = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_Poly_pow___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_Poly_pow___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_Poly_pow___closed__0) #7
  br label %common.ret445

lean_inc.exit210:                                 ; preds = %lean_del_object.exit370, %bb.ez, %bb.fa, %bb.fb, %lean_del_object.exit, %bb.et, %bb.eu, %bb.ev
  %.0197 = phi ptr [ %i.gv, %lean_del_object.exit ], [ %i.gv, %bb.ev ], [ %i.gv, %bb.eu ], [ %i.gv, %bb.et ], [ %i.he, %bb.fb ], [ %i.he, %bb.fa ], [ %i.he, %bb.ez ], [ %i.he, %lean_del_object.exit370 ] ; 5 uses
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.h, i32 noundef 1)
  %i.jy = tail call ptr @l_Int_pow(ptr noundef %.0197, ptr noundef %i.fx) #7
  br i1 %.not.i264, label %bb.gx, label %lean_dec.exit227

bb.gx:                                            ; preds = %lean_inc.exit210
  %i.jz = load i32, ptr %i.fx, align 4, !tbaa !12 ; 3 uses
  %i.ka = icmp sgt i32 %i.jz, 1
  br i1 %i.ka, label %bb.gy, label %bb.gz, !prof !10

bb.gy:                                            ; preds = %bb.gx
  %i.kb = add nsw i32 %i.jz, -1
  store i32 %i.kb, ptr %i.fx, align 4, !tbaa !12
  br label %lean_dec.exit227

bb.gz:                                            ; preds = %bb.gx
  %.not.i.i225 = icmp eq i32 %i.jz, 0
  br i1 %.not.i.i225, label %lean_dec.exit227, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fx) #7
  br label %lean_dec.exit227

lean_dec.exit227:                                 ; preds = %bb.gy, %bb.gz, %bb.ha, %lean_inc.exit210
  %i.kc = ptrtoint ptr %.0197 to i64
  %i.kd = and i64 %i.kc, 1
  %.not.i223 = icmp eq i64 %i.kd, 0
  br i1 %.not.i223, label %bb.hb, label %lean_dec.exit

bb.hb:                                            ; preds = %lean_dec.exit227
  %i.ke = load i32, ptr %.0197, align 4, !tbaa !12 ; 3 uses
  %i.kf = icmp sgt i32 %i.ke, 1
  br i1 %i.kf, label %bb.hc, label %bb.hd, !prof !10

bb.hc:                                            ; preds = %bb.hb
  %i.kg = add nsw i32 %i.ke, -1
  store i32 %i.kg, ptr %.0197, align 4, !tbaa !12
  br label %lean_dec.exit

bb.hd:                                            ; preds = %bb.hb
  %.not.i.i = icmp eq i32 %i.ke, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.he

bb.he:                                            ; preds = %bb.hd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0197) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.hc, %bb.hd, %bb.he, %lean_dec.exit227
  %i.kh = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store ptr %i.jy, ptr %i.ki, align 8, !tbaa !14
  br label %common.ret445
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_CommRing_Poly_normEq0(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0                   ; 2 uses
  %i.c = icmp ult ptr %1, inttoptr (i64 4294967296 to ptr)
  %or.cond.i114 = or i1 %i.c, %.not.i             ; 2 uses
  %i.d = lshr i64 %i.a, 1                         ; 2 uses
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit.backedge, %bb.a
  %.057 = phi ptr [ %0, %bb.a ], [ %i.bn, %lean_dec.exit.backedge ] ; 16 uses
  %i.e = ptrtoint ptr %.057 to i64                ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i92 = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %.not.i92, label %bb.c, label %bb.b

bb.b:                                             ; preds = %lean_dec.exit
  %i.g = lshr i64 %i.e, 1
  %i.h = trunc i64 %i.g to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %lean_dec.exit
  %i.i = getelementptr i8, ptr %.057, i64 4
  %.val.i = load i32, ptr %i.i, align 4
  %i.j = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.h, %bb.b ], [ %i.j, %bb.c ]
  %i.k = icmp eq i32 %.0.i, 0
  %i.l = getelementptr inbounds nuw i8, ptr %.057, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 16 uses
  br i1 %i.k, label %bb.d, label %bb.ag

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.057, i64 8
  br i1 %or.cond.i114, label %lean_nat_to_int.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.d) #7
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %bb.d, %bb.e
  %.1.i = phi ptr [ %1, %bb.d ], [ %i.o, %bb.e ]  ; 6 uses
  %i.p = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.q = and i64 %i.p, 1
  %.not.i94 = icmp eq i64 %i.q, 0
  %.pre148 = ptrtoint ptr %.1.i to i64            ; 2 uses
  %.pre = and i64 %.pre148, 1
  %i.r = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i94, label %lean_int_emod.exit, label %bb.f, !prof !9

bb.f:                                             ; preds = %lean_nat_to_int.exit
  br i1 %i.r, label %lean_int_emod.exit.thread175, label %bb.g, !prof !9

lean_int_emod.exit.thread175:                     ; preds = %bb.f
  %i.s = tail call ptr @lean_int_big_emod(ptr noundef %i.m, ptr noundef %.1.i) #7
  br label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.t = shl i64 %.pre148, 31
  %i.u = ashr i64 %i.t, 32                        ; 3 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %lean_dec.exit91, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = shl i64 %i.p, 31
  %i.x = ashr i64 %i.w, 32
  %i.y = srem i64 %i.x, %i.u                      ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.u, i1 true)
  %i.aa = select i1 %i.z, i64 %.p.i, i64 0
  %.0.i95 = add nsw i64 %i.aa, %i.y               ; 3 uses
  %2 = icmp slt i64 %.0.i95, 2147483648
  br i1 %2, label %bb.i, label %bb.j, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.ab = shl nsw i64 %.0.i95, 1
  %3 = and i64 %i.ab, 8589934590
  %i.ac = or disjoint i64 %3, 1
  %i.ad = inttoptr i64 %i.ac to ptr
  br label %lean_dec.exit91

bb.j:                                             ; preds = %bb.h
  %i.ae = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i95) #7
  br label %lean_dec.exit91

lean_int_emod.exit:                               ; preds = %lean_nat_to_int.exit
  %i.af = tail call ptr @lean_int_big_emod(ptr noundef %i.m, ptr noundef %.1.i) #7 ; 2 uses
  br i1 %i.r, label %bb.k, label %lean_dec.exit91

bb.k:                                             ; preds = %lean_int_emod.exit.thread175, %lean_int_emod.exit
  %i.ag = phi ptr [ %i.s, %lean_int_emod.exit.thread175 ], [ %i.af, %lean_int_emod.exit ] ; 3 uses
  %i.ah = load i32, ptr %.1.i, align 4, !tbaa !12 ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %bb.m, !prof !10

bb.l:                                             ; preds = %bb.k
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %.1.i, align 4, !tbaa !12
  br label %lean_dec.exit91

bb.m:                                             ; preds = %bb.k
  %.not.i.i89 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i89, label %lean_dec.exit91, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #7
  br label %lean_dec.exit91

lean_dec.exit91:                                  ; preds = %bb.j, %bb.i, %bb.g, %bb.l, %bb.m, %bb.n, %lean_int_emod.exit
  %.1.i96174 = phi ptr [ %i.af, %lean_int_emod.exit ], [ %i.ag, %bb.l ], [ %i.ag, %bb.m ], [ %i.ag, %bb.n ], [ %i.ae, %bb.j ], [ %i.ad, %bb.i ], [ %i.m, %bb.g ] ; 6 uses
  %i.ak = load atomic i32, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once seq_cst, align 4, !tbaa !18
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.o, label %bb.p, !prof !10

bb.o:                                             ; preds = %lean_dec.exit91
  %i.am = load ptr, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit

bb.p:                                             ; preds = %lean_dec.exit91
  %i.an = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.o, %bb.p
  %.0.i97 = phi ptr [ %i.am, %bb.o ], [ %i.an, %bb.p ] ; 3 uses
  %i.ao = ptrtoint ptr %.1.i96174 to i64
  %i.ap = ptrtoint ptr %.0.i97 to i64
  %i.aq = and i64 %i.ao, 1                        ; 2 uses
  %i.ar = and i64 %i.aq, %i.ap
  %or.cond.not.i.i = icmp eq i64 %i.ar, 0
  br i1 %or.cond.not.i.i, label %.critedge.i.i, label %bb.q, !prof !15

bb.q:                                             ; preds = %lean_obj_once.exit
  %i.as = icmp eq ptr %.1.i96174, %.0.i97
  br label %lean_int_dec_eq.exit

.critedge.i.i:                                    ; preds = %lean_obj_once.exit
  %i.at = tail call zeroext i1 @lean_int_big_eq(ptr noundef %.1.i96174, ptr noundef %.0.i97) #7
  br label %lean_int_dec_eq.exit

lean_int_dec_eq.exit:                             ; preds = %bb.q, %.critedge.i.i
  %.0.i.i = phi i1 [ %i.as, %bb.q ], [ %i.at, %.critedge.i.i ]
  %.not.i84 = icmp eq i64 %i.aq, 0
  br i1 %.not.i84, label %bb.r, label %lean_dec.exit87

bb.r:                                             ; preds = %lean_int_dec_eq.exit
  %i.au = load i32, ptr %.1.i96174, align 4, !tbaa !12 ; 3 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %bb.s, label %bb.t, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.aw = add nsw i32 %i.au, -1
  store i32 %i.aw, ptr %.1.i96174, align 4, !tbaa !12
  br label %lean_dec.exit87

bb.t:                                             ; preds = %bb.r
  %.not.i.i85 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i85, label %lean_dec.exit87, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i96174) #7
  br label %lean_dec.exit87

lean_dec.exit87:                                  ; preds = %bb.s, %bb.t, %bb.u, %lean_int_dec_eq.exit
  br i1 %.0.i.i, label %bb.v, label %lean_obj_once.exit102

bb.v:                                             ; preds = %lean_dec.exit87
  %.val.i98 = load i32, ptr %.057, align 8, !tbaa !12 ; 4 uses
  %i.ax = icmp eq i32 %.val.i98, 1
  br i1 %i.ax, label %.preheader.i, label %bb.aa

.preheader.i:                                     ; preds = %bb.v
  %i.ay = load ptr, ptr %i.n, align 8, !tbaa !14  ; 4 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = and i64 %i.az, 1
  %.not.i7.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i7.i, label %bb.w, label %lean_dec.exit.i

bb.w:                                             ; preds = %.preheader.i
  %i.bb = load i32, ptr %i.ay, align 4, !tbaa !12 ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %bb.x, label %bb.y, !prof !10

bb.x:                                             ; preds = %bb.w
  %i.bd = add nsw i32 %i.bb, -1
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.y:                                             ; preds = %bb.w
  %.not.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #7
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.z, %bb.y, %bb.x, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %.057) #7
  br label %lean_dec_ref_known.exit

bb.aa:                                            ; preds = %bb.v
  %i.be = icmp sgt i32 %.val.i98, 1
  br i1 %i.be, label %bb.ab, label %bb.ac, !prof !10

bb.ab:                                            ; preds = %bb.aa
  %i.bf = add nsw i32 %.val.i98, -1
  store i32 %i.bf, ptr %.057, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.ac:                                            ; preds = %bb.aa
  %.not.i.i99 = icmp eq i32 %.val.i98, 0
  br i1 %.not.i.i99, label %lean_dec_ref_known.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.057) #7
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.ab, %bb.ac, %bb.ad
  %i.bg = load atomic i32, ptr @l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0_once seq_cst, align 4, !tbaa !18
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.ae, label %bb.af, !prof !10

bb.ae:                                            ; preds = %lean_dec_ref_known.exit
  %i.bi = load ptr, ptr @l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit102

bb.af:                                            ; preds = %lean_dec_ref_known.exit
  %i.bj = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0) #7
  br label %lean_obj_once.exit102

bb.ag:                                            ; preds = %lean_obj_tag.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.057, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !14 ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.057, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !14 ; 6 uses
  %.057.val = load i32, ptr %.057, align 8, !tbaa !12
  %i.bo = icmp eq i32 %.057.val, 1                ; 2 uses
  br i1 %i.bo, label %lean_dec.exit83, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = and i64 %i.bp, 1
  %.not.i65 = icmp eq i64 %i.bq, 0
  br i1 %.not.i65, label %bb.ai, label %lean_inc.exit66

bb.ai:                                            ; preds = %bb.ah
  %.val.i.i = load i32, ptr %i.bn, align 4, !tbaa !12 ; 3 uses
  %i.br = icmp sgt i32 %.val.i.i, 0
  br i1 %i.br, label %bb.aj, label %bb.ak, !prof !10

bb.aj:                                            ; preds = %bb.ai
  %i.bs = add nuw i32 %.val.i.i, 1
  store i32 %i.bs, ptr %i.bn, align 4, !tbaa !12
  br label %lean_inc.exit66

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i103 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i103, label %lean_inc.exit66, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bt = atomicrmw add ptr %i.bn, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit66

lean_inc.exit66:                                  ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah
  %i.bu = ptrtoint ptr %i.bl to i64
  %i.bv = and i64 %i.bu, 1
  %.not.i63 = icmp eq i64 %i.bv, 0
  br i1 %.not.i63, label %bb.am, label %lean_inc.exit64

bb.am:                                            ; preds = %lean_inc.exit66
  %.val.i.i104 = load i32, ptr %i.bl, align 4, !tbaa !12 ; 3 uses
  %i.bw = icmp sgt i32 %.val.i.i104, 0
  br i1 %i.bw, label %bb.an, label %bb.ao, !prof !10

bb.an:                                            ; preds = %bb.am
  %i.bx = add nuw i32 %.val.i.i104, 1
  store i32 %i.bx, ptr %i.bl, align 4, !tbaa !12
  br label %lean_inc.exit64

bb.ao:                                            ; preds = %bb.am
  %.not.i.i105 = icmp eq i32 %.val.i.i104, 0
  br i1 %.not.i.i105, label %lean_inc.exit64, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.by = atomicrmw add ptr %i.bl, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit64

lean_inc.exit64:                                  ; preds = %bb.ap, %bb.ao, %bb.an, %lean_inc.exit66
  %i.bz = ptrtoint ptr %i.m to i64
  %i.ca = and i64 %i.bz, 1
  %.not.i61 = icmp eq i64 %i.ca, 0
  br i1 %.not.i61, label %bb.aq, label %lean_inc.exit62

bb.aq:                                            ; preds = %lean_inc.exit64
  %.val.i.i107 = load i32, ptr %i.m, align 4, !tbaa !12 ; 3 uses
  %i.cb = icmp sgt i32 %.val.i.i107, 0
  br i1 %i.cb, label %bb.ar, label %bb.as, !prof !10

bb.ar:                                            ; preds = %bb.aq
  %i.cc = add nuw i32 %.val.i.i107, 1
  store i32 %i.cc, ptr %i.m, align 4, !tbaa !12
  br label %lean_inc.exit62

bb.as:                                            ; preds = %bb.aq
  %.not.i.i108 = icmp eq i32 %.val.i.i107, 0
  br i1 %.not.i.i108, label %lean_inc.exit62, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cd = atomicrmw add ptr %i.m, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit62

lean_inc.exit62:                                  ; preds = %bb.at, %bb.as, %bb.ar, %lean_inc.exit64
  br i1 %.not.i92, label %bb.au, label %lean_dec.exit83

bb.au:                                            ; preds = %lean_inc.exit62
  %i.ce = load i32, ptr %.057, align 8, !tbaa !12 ; 3 uses
  %i.cf = icmp sgt i32 %i.ce, 1
  br i1 %i.cf, label %bb.av, label %bb.aw, !prof !10

bb.av:                                            ; preds = %bb.au
  %i.cg = add nsw i32 %i.ce, -1
  store i32 %i.cg, ptr %.057, align 8, !tbaa !12
  br label %lean_dec.exit83

bb.aw:                                            ; preds = %bb.au
  %.not.i.i81 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i81, label %lean_dec.exit83, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.057) #7
  br label %lean_dec.exit83

lean_dec.exit83:                                  ; preds = %lean_inc.exit62, %bb.ax, %bb.aw, %bb.av, %bb.ag
  %.056 = phi ptr [ %.057, %bb.ag ], [ inttoptr (i64 1 to ptr), %bb.av ], [ inttoptr (i64 1 to ptr), %bb.aw ], [ inttoptr (i64 1 to ptr), %bb.ax ], [ inttoptr (i64 1 to ptr), %lean_inc.exit62 ] ; 4 uses
  br i1 %.not.i, label %bb.ay, label %lean_inc.exit

bb.ay:                                            ; preds = %lean_dec.exit83
  %.val.i.i110 = load i32, ptr %1, align 4, !tbaa !12 ; 3 uses
  %i.ch = icmp sgt i32 %.val.i.i110, 0
  br i1 %i.ch, label %bb.az, label %bb.ba, !prof !10

bb.az:                                            ; preds = %bb.ay
  %i.ci = add nuw i32 %.val.i.i110, 1
  store i32 %i.ci, ptr %1, align 4, !tbaa !12
  br label %lean_nat_to_int.exit116

bb.ba:                                            ; preds = %bb.ay
  %.not.i.i111 = icmp eq i32 %.val.i.i110, 0
  br i1 %.not.i.i111, label %lean_nat_to_int.exit116, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cj = atomicrmw add ptr %1, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_nat_to_int.exit116

lean_inc.exit:                                    ; preds = %lean_dec.exit83
  br i1 %or.cond.i114, label %lean_nat_to_int.exit116, label %bb.bc

bb.bc:                                            ; preds = %lean_inc.exit
  %i.ck = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.d) #7
  br label %lean_nat_to_int.exit116

lean_nat_to_int.exit116:                          ; preds = %bb.az, %bb.ba, %bb.bb, %lean_inc.exit, %bb.bc
  %.1.i115 = phi ptr [ %1, %lean_inc.exit ], [ %i.ck, %bb.bc ], [ %1, %bb.bb ], [ %1, %bb.ba ], [ %1, %bb.az ] ; 6 uses
  %i.cl = ptrtoint ptr %i.m to i64                ; 2 uses
  %i.cm = and i64 %i.cl, 1
  %.not.i117 = icmp eq i64 %i.cm, 0               ; 2 uses
  %.pre149 = ptrtoint ptr %.1.i115 to i64         ; 2 uses
  %.pre150 = and i64 %.pre149, 1
  %i.cn = icmp eq i64 %.pre150, 0                 ; 2 uses
  br i1 %.not.i117, label %lean_int_emod.exit123, label %bb.bd, !prof !9

bb.bd:                                            ; preds = %lean_nat_to_int.exit116
  br i1 %i.cn, label %lean_int_emod.exit123.thread180, label %bb.be, !prof !9

lean_int_emod.exit123.thread180:                  ; preds = %bb.bd
  %i.co = tail call ptr @lean_int_big_emod(ptr noundef %i.m, ptr noundef %.1.i115) #7
  br label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.cp = shl i64 %.pre149, 31
  %i.cq = ashr i64 %i.cp, 32                      ; 3 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %lean_dec.exit79, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cs = shl i64 %i.cl, 31
  %i.ct = ashr i64 %i.cs, 32
  %i.cu = srem i64 %i.ct, %i.cq                   ; 2 uses
  %i.cv = icmp slt i64 %i.cu, 0
  %.p.i119 = tail call i64 @llvm.abs.i64(i64 %i.cq, i1 true)
  %i.cw = select i1 %i.cv, i64 %.p.i119, i64 0
  %.0.i120 = add nsw i64 %i.cw, %i.cu             ; 3 uses
  %4 = icmp slt i64 %.0.i120, 2147483648
  br i1 %4, label %bb.bg, label %bb.bh, !prof !10

bb.bg:                                            ; preds = %bb.bf
  %i.cx = shl nsw i64 %.0.i120, 1
  %5 = and i64 %i.cx, 8589934590
  %i.cy = or disjoint i64 %5, 1
  %i.cz = inttoptr i64 %i.cy to ptr
  br label %lean_dec.exit79

bb.bh:                                            ; preds = %bb.bf
  %i.da = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i120) #7
  br label %lean_dec.exit79

lean_int_emod.exit123:                            ; preds = %lean_nat_to_int.exit116
  %i.db = tail call ptr @lean_int_big_emod(ptr noundef %i.m, ptr noundef %.1.i115) #7 ; 2 uses
  br i1 %i.cn, label %bb.bi, label %lean_dec.exit79

bb.bi:                                            ; preds = %lean_int_emod.exit123.thread180, %lean_int_emod.exit123
  %i.dc = phi ptr [ %i.co, %lean_int_emod.exit123.thread180 ], [ %i.db, %lean_int_emod.exit123 ] ; 3 uses
  %i.dd = load i32, ptr %.1.i115, align 4, !tbaa !12 ; 3 uses
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %bb.bj, label %bb.bk, !prof !10

bb.bj:                                            ; preds = %bb.bi
  %i.df = add nsw i32 %i.dd, -1
  store i32 %i.df, ptr %.1.i115, align 4, !tbaa !12
  br label %lean_dec.exit79

bb.bk:                                            ; preds = %bb.bi
  %.not.i.i77 = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i77, label %lean_dec.exit79, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i115) #7
  br label %lean_dec.exit79

lean_dec.exit79:                                  ; preds = %bb.bh, %bb.bg, %bb.be, %bb.bj, %bb.bk, %bb.bl, %lean_int_emod.exit123
  %.1.i121179 = phi ptr [ %i.db, %lean_int_emod.exit123 ], [ %i.dc, %bb.bj ], [ %i.dc, %bb.bk ], [ %i.dc, %bb.bl ], [ %i.da, %bb.bh ], [ %i.cz, %bb.bg ], [ %i.m, %bb.be ] ; 6 uses
  %i.dg = load atomic i32, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once seq_cst, align 4, !tbaa !18
  %i.dh = icmp eq i32 %i.dg, 1
  br i1 %i.dh, label %bb.bm, label %bb.bn, !prof !10

bb.bm:                                            ; preds = %lean_dec.exit79
  %i.di = load ptr, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit125

bb.bn:                                            ; preds = %lean_dec.exit79
  %i.dj = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0) #7
  br label %lean_obj_once.exit125

lean_obj_once.exit125:                            ; preds = %bb.bm, %bb.bn
  %.0.i124 = phi ptr [ %i.di, %bb.bm ], [ %i.dj, %bb.bn ] ; 3 uses
  %i.dk = ptrtoint ptr %.1.i121179 to i64
  %i.dl = ptrtoint ptr %.0.i124 to i64
  %i.dm = and i64 %i.dk, 1                        ; 2 uses
  %i.dn = and i64 %i.dm, %i.dl
  %or.cond.not.i.i126 = icmp eq i64 %i.dn, 0
  br i1 %or.cond.not.i.i126, label %.critedge.i.i128, label %bb.bo, !prof !15

bb.bo:                                            ; preds = %lean_obj_once.exit125
  %i.do = icmp eq ptr %.1.i121179, %.0.i124
  br label %lean_int_dec_eq.exit129

.critedge.i.i128:                                 ; preds = %lean_obj_once.exit125
  %i.dp = tail call zeroext i1 @lean_int_big_eq(ptr noundef %.1.i121179, ptr noundef %.0.i124) #7
  br label %lean_int_dec_eq.exit129

lean_int_dec_eq.exit129:                          ; preds = %bb.bo, %.critedge.i.i128
  %.0.i.i127 = phi i1 [ %i.do, %bb.bo ], [ %i.dp, %.critedge.i.i128 ]
  %.not.i72 = icmp eq i64 %i.dm, 0
  br i1 %.not.i72, label %bb.bp, label %lean_dec.exit75

bb.bp:                                            ; preds = %lean_int_dec_eq.exit129
  %i.dq = load i32, ptr %.1.i121179, align 4, !tbaa !12 ; 3 uses
  %i.dr = icmp sgt i32 %i.dq, 1
  br i1 %i.dr, label %bb.bq, label %bb.br, !prof !10

bb.bq:                                            ; preds = %bb.bp
  %i.ds = add nsw i32 %i.dq, -1
  store i32 %i.ds, ptr %.1.i121179, align 4, !tbaa !12
  br label %lean_dec.exit75

bb.br:                                            ; preds = %bb.bp
  %.not.i.i73 = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i73, label %lean_dec.exit75, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i121179) #7
  br label %lean_dec.exit75

lean_dec.exit75:                                  ; preds = %bb.bq, %bb.br, %bb.bs, %lean_int_dec_eq.exit129
  br i1 %.0.i.i127, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %lean_dec.exit75
  %i.dt = tail call ptr @l_Lean_Grind_CommRing_Poly_normEq0(ptr noundef %i.bn, ptr noundef %1) ; 2 uses
  br i1 %i.bo, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.du = getelementptr inbounds nuw i8, ptr %.056, i64 24
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !14
  br label %lean_obj_once.exit102

bb.bv:                                            ; preds = %bb.bt
  tail call void @lean_inc_heartbeat() #7
  %i.dv = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #7 ; 7 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.bw, label %lean_alloc_ctor.exit

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.bv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i32 1, ptr %i.dv, align 4, !tbaa !12
  store i32 16973856, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.m, ptr %i.dy, align 8, !tbaa !14
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store ptr %i.bl, ptr %i.dz, align 8, !tbaa !14
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store ptr %i.dt, ptr %i.ea, align 8, !tbaa !14
  br label %lean_obj_once.exit102

bb.bx:                                            ; preds = %lean_dec.exit75
  %i.eb = ptrtoint ptr %.056 to i64
  %i.ec = and i64 %i.eb, 1
  %.not.i130 = icmp eq i64 %i.ec, 0
  br i1 %.not.i130, label %bb.by, label %lean_del_object.exit

bb.by:                                            ; preds = %bb.bx
  tail call void @lean_free_object(ptr noundef nonnull %.056) #7
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.bx, %bb.by
  %i.ed = ptrtoint ptr %i.bl to i64
  %i.ee = and i64 %i.ed, 1
  %.not.i68 = icmp eq i64 %i.ee, 0
  br i1 %.not.i68, label %bb.bz, label %lean_dec.exit71

bb.bz:                                            ; preds = %lean_del_object.exit
  %i.ef = load i32, ptr %i.bl, align 4, !tbaa !12 ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %bb.ca, label %bb.cb, !prof !10

bb.ca:                                            ; preds = %bb.bz
  %i.eh = add nsw i32 %i.ef, -1
  store i32 %i.eh, ptr %i.bl, align 4, !tbaa !12
  br label %lean_dec.exit71

bb.cb:                                            ; preds = %bb.bz
  %.not.i.i69 = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i69, label %lean_dec.exit71, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bl) #7
  br label %lean_dec.exit71

lean_dec.exit71:                                  ; preds = %bb.ca, %bb.cb, %bb.cc, %lean_del_object.exit
  br i1 %.not.i117, label %bb.cd, label %lean_dec.exit.backedge

lean_dec.exit.backedge:                           ; preds = %lean_dec.exit71, %bb.cg, %bb.cf, %bb.ce
  br label %lean_dec.exit

bb.cd:                                            ; preds = %lean_dec.exit71
  %i.ei = load i32, ptr %i.m, align 4, !tbaa !12  ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %bb.ce, label %bb.cf, !prof !10

bb.ce:                                            ; preds = %bb.cd
  %i.ek = add nsw i32 %i.ei, -1
  store i32 %i.ek, ptr %i.m, align 4, !tbaa !12
  br label %lean_dec.exit.backedge

bb.cf:                                            ; preds = %bb.cd
  %.not.i.i = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i, label %lean_dec.exit.backedge, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #7
  br label %lean_dec.exit.backedge

lean_obj_once.exit102:                            ; preds = %bb.bu, %lean_alloc_ctor.exit, %bb.af, %bb.ae, %lean_dec.exit87
  %.4 = phi ptr [ %i.bj, %bb.af ], [ %.057, %lean_dec.exit87 ], [ %i.bi, %bb.ae ], [ %.056, %bb.bu ], [ %i.dv, %lean_alloc_ctor.exit ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_CommRing_Poly_addConstC(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i85 = icmp eq i64 %i.b, 0                 ; 3 uses
  br i1 %.not.i85, label %bb.c, label %bb.b

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
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14   ; 14 uses
  br i1 %i.g, label %bb.d, label %bb.al

bb.d:                                             ; preds = %lean_obj_tag.exit
  %.val84 = load i32, ptr %0, align 8, !tbaa !12
  %i.j = icmp eq i32 %.val84, 1                   ; 2 uses
  %.pre107 = ptrtoint ptr %i.i to i64             ; 2 uses
  %.pre109 = and i64 %.pre107, 1                  ; 2 uses
  br i1 %i.j, label %lean_dec.exit83, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i65 = icmp eq i64 %.pre109, 0
  br i1 %.not.i65, label %bb.f, label %lean_inc.exit66

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.i, align 4, !tbaa !12 ; 3 uses
  %i.k = icmp sgt i32 %.val.i.i, 0
  br i1 %i.k, label %bb.g, label %bb.h, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.l = add nuw i32 %.val.i.i, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !12
  br label %lean_inc.exit66

bb.h:                                             ; preds = %bb.f
  %.not.i.i86 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i86, label %lean_inc.exit66, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = atomicrmw add ptr %i.i, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit66

lean_inc.exit66:                                  ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i85, label %bb.j, label %lean_dec.exit83

bb.j:                                             ; preds = %lean_inc.exit66
  %i.n = load i32, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.k, label %bb.l, !prof !10

bb.k:                                             ; preds = %bb.j
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %0, align 8, !tbaa !12
  br label %lean_dec.exit83

bb.l:                                             ; preds = %bb.j
  %.not.i.i81 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i81, label %lean_dec.exit83, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit83

lean_dec.exit83:                                  ; preds = %bb.d, %lean_inc.exit66, %bb.m, %bb.l, %bb.k
  %.060 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit66 ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %0, %bb.d ] ; 2 uses
  %.not.i87 = icmp eq i64 %.pre109, 0
  br i1 %.not.i87, label %bb.r, label %bb.n, !prof !9

bb.n:                                             ; preds = %lean_dec.exit83
  %i.q = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.r = and i64 %i.q, 1
  %.not7.i = icmp eq i64 %i.r, 0
  br i1 %.not7.i, label %lean_int_add.exit, label %bb.o, !prof !9

bb.o:                                             ; preds = %bb.n
  %i.s = shl i64 %.pre107, 31
  %i.t = ashr i64 %i.s, 32
  %i.u = shl i64 %i.q, 31
  %i.v = ashr i64 %i.u, 32
  %i.w = add nsw i64 %i.t, %i.v                   ; 3 uses
  %i.x = add nsw i64 %i.w, 2147483648
  %i.y = icmp ult i64 %i.x, 4294967296
  br i1 %i.y, label %bb.p, label %bb.q, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.z = shl nsw i64 %i.w, 1
  %i.aa = and i64 %i.z, 8589934590
  %i.ab = or disjoint i64 %i.aa, 1
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %lean_dec.exit79

bb.q:                                             ; preds = %bb.o
  %i.ad = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.w) #7
  br label %lean_dec.exit79

lean_int_add.exit:                                ; preds = %bb.n
  %i.ae = tail call ptr @lean_int_big_add(ptr noundef %i.i, ptr noundef %1) #7
  br label %lean_dec.exit79

bb.r:                                             ; preds = %lean_dec.exit83
  %i.af = tail call ptr @lean_int_big_add(ptr noundef %i.i, ptr noundef %1) #7 ; 3 uses
  %i.ag = load i32, ptr %i.i, align 4, !tbaa !12  ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %bb.s, label %bb.t, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.ai = add nsw i32 %i.ag, -1
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !12
  br label %lean_dec.exit79

bb.t:                                             ; preds = %bb.r
  %.not.i.i77 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i77, label %lean_dec.exit79, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #7
  br label %lean_dec.exit79

lean_dec.exit79:                                  ; preds = %bb.q, %bb.p, %lean_int_add.exit, %bb.s, %bb.t, %bb.u
  %.0.i88126 = phi ptr [ %i.ae, %lean_int_add.exit ], [ %i.af, %bb.s ], [ %i.af, %bb.t ], [ %i.af, %bb.u ], [ %i.ad, %bb.q ], [ %i.ac, %bb.p ] ; 7 uses
  %i.aj = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ak = and i64 %i.aj, 1
  %.not.i89 = icmp eq i64 %i.ak, 0
  %i.al = icmp ult ptr %2, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.al, %.not.i89
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.v

bb.v:                                             ; preds = %lean_dec.exit79
  %i.am = lshr i64 %i.aj, 1
  %i.an = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.am) #7
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %lean_dec.exit79, %bb.v
  %.1.i = phi ptr [ %2, %lean_dec.exit79 ], [ %i.an, %bb.v ] ; 6 uses
  %i.ao = ptrtoint ptr %.0.i88126 to i64          ; 2 uses
  %i.ap = and i64 %i.ao, 1
  %.not.i90 = icmp eq i64 %i.ap, 0                ; 2 uses
  %.pre111 = ptrtoint ptr %.1.i to i64            ; 2 uses
  %.pre = and i64 %.pre111, 1
  %i.aq = icmp eq i64 %.pre, 0                    ; 2 uses
  br i1 %.not.i90, label %lean_int_emod.exit, label %bb.w, !prof !9

bb.w:                                             ; preds = %lean_nat_to_int.exit
  br i1 %i.aq, label %lean_int_emod.exit.thread131, label %bb.x, !prof !9

lean_int_emod.exit.thread131:                     ; preds = %bb.w
  %i.ar = tail call ptr @lean_int_big_emod(ptr noundef %.0.i88126, ptr noundef %.1.i) #7
  br label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.as = shl i64 %.pre111, 31
  %i.at = ashr i64 %i.as, 32                      ; 3 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %lean_dec.exit71, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = shl i64 %i.ao, 31
  %i.aw = ashr i64 %i.av, 32
  %i.ax = srem i64 %i.aw, %i.at                   ; 2 uses
  %i.ay = icmp slt i64 %i.ax, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.at, i1 true)
  %i.az = select i1 %i.ay, i64 %.p.i, i64 0
  %.0.i91 = add nsw i64 %i.az, %i.ax              ; 3 uses
  %3 = icmp slt i64 %.0.i91, 2147483648
  br i1 %3, label %bb.z, label %bb.aa, !prof !10

bb.z:                                             ; preds = %bb.y
  %i.ba = shl nsw i64 %.0.i91, 1
  %4 = and i64 %i.ba, 8589934590
  %i.bb = or disjoint i64 %4, 1
  %i.bc = inttoptr i64 %i.bb to ptr
  br label %lean_dec.exit71

bb.aa:                                            ; preds = %bb.y
  %i.bd = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i91) #7
  br label %lean_dec.exit71

lean_int_emod.exit:                               ; preds = %lean_nat_to_int.exit
  %i.be = tail call ptr @lean_int_big_emod(ptr noundef %.0.i88126, ptr noundef %.1.i) #7 ; 2 uses
  br i1 %i.aq, label %bb.ab, label %lean_dec.exit75.thread

bb.ab:                                            ; preds = %lean_int_emod.exit.thread131, %lean_int_emod.exit
  %i.bf = phi ptr [ %i.ar, %lean_int_emod.exit.thread131 ], [ %i.be, %lean_int_emod.exit ] ; 2 uses
  %i.bg = load i32, ptr %.1.i, align 4, !tbaa !12 ; 3 uses
  %i.bh = icmp sgt i32 %i.bg, 1
  br i1 %i.bh, label %bb.ac, label %bb.ad, !prof !10

bb.ac:                                            ; preds = %bb.ab
  %i.bi = add nsw i32 %i.bg, -1
  store i32 %i.bi, ptr %.1.i, align 4, !tbaa !12
  br label %lean_dec.exit75

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i73 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i73, label %lean_dec.exit75, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #7
  br label %lean_dec.exit75

lean_dec.exit75:                                  ; preds = %bb.ac, %bb.ad, %bb.ae
  br i1 %.not.i90, label %lean_dec.exit75.thread, label %lean_dec.exit71

lean_dec.exit75.thread:                           ; preds = %lean_int_emod.exit, %lean_dec.exit75
  %.1.i92130135 = phi ptr [ %i.bf, %lean_dec.exit75 ], [ %i.be, %lean_int_emod.exit ] ; 3 uses
  %i.bj = load i32, ptr %.0.i88126, align 4, !tbaa !12 ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.af, label %bb.ag, !prof !10

bb.af:                                            ; preds = %lean_dec.exit75.thread
  %i.bl = add nsw i32 %i.bj, -1
  store i32 %i.bl, ptr %.0.i88126, align 4, !tbaa !12
  br label %lean_dec.exit71

bb.ag:                                            ; preds = %lean_dec.exit75.thread
  %.not.i.i69 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i69, label %lean_dec.exit71, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i88126) #7
  br label %lean_dec.exit71

lean_dec.exit71:                                  ; preds = %bb.x, %bb.z, %bb.aa, %bb.af, %bb.ag, %bb.ah, %lean_dec.exit75
  %.1.i92130134 = phi ptr [ %.1.i92130135, %bb.af ], [ %.1.i92130135, %bb.ag ], [ %.1.i92130135, %bb.ah ], [ %i.bf, %lean_dec.exit75 ], [ %i.bd, %bb.aa ], [ %i.bc, %bb.z ], [ %.0.i88126, %bb.x ] ; 2 uses
  br i1 %i.j, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %lean_dec.exit71
  %i.bm = getelementptr inbounds nuw i8, ptr %.060, i64 8
  store ptr %.1.i92130134, ptr %i.bm, align 8, !tbaa !14
  br label %common.ret138

bb.aj:                                            ; preds = %lean_dec.exit71
  tail call void @lean_inc_heartbeat() #7
  %i.bn = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.ak, label %lean_alloc_ctor.exit

bb.ak:                                            ; preds = %bb.aj
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.aj
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 1, ptr %i.bn, align 4, !tbaa !12
  store i32 65552, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.1.i92130134, ptr %i.bq, align 8, !tbaa !14
  br label %common.ret138

bb.al:                                            ; preds = %lean_obj_tag.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !14 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !14 ; 6 uses
  %.val = load i32, ptr %0, align 8, !tbaa !12
  %i.bv = icmp eq i32 %.val, 1
  br i1 %i.bv, label %bb.bd, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = and i64 %i.bw, 1
  %.not.i63 = icmp eq i64 %i.bx, 0
  br i1 %.not.i63, label %bb.an, label %lean_inc.exit64

bb.an:                                            ; preds = %bb.am
  %.val.i.i94 = load i32, ptr %i.bu, align 4, !tbaa !12 ; 3 uses
  %i.by = icmp sgt i32 %.val.i.i94, 0
  br i1 %i.by, label %bb.ao, label %bb.ap, !prof !10

bb.ao:                                            ; preds = %bb.an
  %i.bz = add nuw i32 %.val.i.i94, 1
  store i32 %i.bz, ptr %i.bu, align 4, !tbaa !12
  br label %lean_inc.exit64

bb.ap:                                            ; preds = %bb.an
  %.not.i.i95 = icmp eq i32 %.val.i.i94, 0
  br i1 %.not.i.i95, label %lean_inc.exit64, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ca = atomicrmw add ptr %i.bu, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit64

lean_inc.exit64:                                  ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %i.cb = ptrtoint ptr %i.bs to i64
  %i.cc = and i64 %i.cb, 1
  %.not.i61 = icmp eq i64 %i.cc, 0
  br i1 %.not.i61, label %bb.ar, label %lean_inc.exit62

bb.ar:                                            ; preds = %lean_inc.exit64
  %.val.i.i97 = load i32, ptr %i.bs, align 4, !tbaa !12 ; 3 uses
  %i.cd = icmp sgt i32 %.val.i.i97, 0
  br i1 %i.cd, label %bb.as, label %bb.at, !prof !10

bb.as:                                            ; preds = %bb.ar
  %i.ce = add nuw i32 %.val.i.i97, 1
  store i32 %i.ce, ptr %i.bs, align 4, !tbaa !12
  br label %lean_inc.exit62

bb.at:                                            ; preds = %bb.ar
  %.not.i.i98 = icmp eq i32 %.val.i.i97, 0
  br i1 %.not.i.i98, label %lean_inc.exit62, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cf = atomicrmw add ptr %i.bs, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit62

lean_inc.exit62:                                  ; preds = %bb.au, %bb.at, %bb.as, %lean_inc.exit64
  %i.cg = ptrtoint ptr %i.i to i64
  %i.ch = and i64 %i.cg, 1
  %.not.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i, label %bb.av, label %lean_inc.exit

bb.av:                                            ; preds = %lean_inc.exit62
  %.val.i.i100 = load i32, ptr %i.i, align 4, !tbaa !12 ; 3 uses
  %i.ci = icmp sgt i32 %.val.i.i100, 0
  br i1 %i.ci, label %bb.aw, label %bb.ax, !prof !10

bb.aw:                                            ; preds = %bb.av
  %i.cj = add nuw i32 %.val.i.i100, 1
  store i32 %i.cj, ptr %i.i, align 4, !tbaa !12
  br label %lean_inc.exit

bb.ax:                                            ; preds = %bb.av
  %.not.i.i101 = icmp eq i32 %.val.i.i100, 0
  br i1 %.not.i.i101, label %lean_inc.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ck = atomicrmw add ptr %i.i, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ay, %bb.ax, %bb.aw, %lean_inc.exit62
  br i1 %.not.i85, label %bb.az, label %bb.be

bb.az:                                            ; preds = %lean_inc.exit
  %i.cl = load i32, ptr %0, align 8, !tbaa !12    ; 3 uses
  %i.cm = icmp sgt i32 %i.cl, 1
  br i1 %i.cm, label %bb.ba, label %bb.bb, !prof !10

bb.ba:                                            ; preds = %bb.az
  %i.cn = add nsw i32 %i.cl, -1
  store i32 %i.cn, ptr %0, align 8, !tbaa !12
  br label %bb.be

bb.bb:                                            ; preds = %bb.az
  %.not.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %bb.be

common.ret138:                                    ; preds = %lean_alloc_ctor.exit103, %lean_alloc_ctor.exit, %bb.ai, %bb.bd
  %common.ret138.op = phi ptr [ %0, %bb.bd ], [ %i.cq, %lean_alloc_ctor.exit103 ], [ %i.bn, %lean_alloc_ctor.exit ], [ %.060, %bb.ai ]
  ret ptr %common.ret138.op

bb.bd:                                            ; preds = %bb.al
  %i.co = tail call ptr @l_Lean_Grind_CommRing_Poly_addConstC(ptr noundef %i.bu, ptr noundef %1, ptr noundef %2)
  store ptr %i.co, ptr %i.bt, align 8, !tbaa !14
  br label %common.ret138

bb.be:                                            ; preds = %lean_inc.exit, %bb.bc, %bb.bb, %bb.ba
  %i.cp = tail call ptr @l_Lean_Grind_CommRing_Poly_addConstC(ptr noundef %i.bu, ptr noundef %1, ptr noundef %2)
  tail call void @lean_inc_heartbeat() #7
  %i.cq = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #7 ; 7 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.bf, label %lean_alloc_ctor.exit103

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable
end_hunk_1
begin_hunk_2_@l_Lean_Grind_CommRing_Poly_insertC_go:bb.a

bb.bc:                                            ; preds = %bb.ba
  %.not.i.i153 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i153, label %lean_dec.exit155, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.by) #7
  br label %lean_dec.exit155

lean_dec.exit155:                                 ; preds = %bb.bb, %bb.bc, %bb.bd, %bb.az
  %i.ce = load ptr, ptr %i.u, align 8, !tbaa !14  ; 4 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = and i64 %i.cf, 1
  %.not.i148 = icmp eq i64 %i.cg, 0
  br i1 %.not.i148, label %bb.be, label %lean_dec.exit151

bb.be:                                            ; preds = %lean_dec.exit155
  %i.ch = load i32, ptr %i.ce, align 4, !tbaa !12 ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, 1
  br i1 %i.ci, label %bb.bf, label %bb.bg, !prof !10

bb.bf:                                            ; preds = %bb.be
  %i.cj = add nsw i32 %i.ch, -1
  store i32 %i.cj, ptr %i.ce, align 4, !tbaa !12
  br label %lean_dec.exit151

bb.bg:                                            ; preds = %bb.be
  %.not.i.i149 = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i149, label %lean_dec.exit151, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ce) #7
  br label %lean_dec.exit151

lean_dec.exit151:                                 ; preds = %bb.bf, %bb.bg, %bb.bh, %lean_dec.exit155
  %i.ck = load ptr, ptr %i.s, align 8, !tbaa !14  ; 4 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = and i64 %i.cl, 1
  %.not.i144 = icmp eq i64 %i.cm, 0
  br i1 %.not.i144, label %bb.bi, label %lean_dec.exit147

bb.bi:                                            ; preds = %lean_dec.exit151
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !12 ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 1
  br i1 %i.co, label %bb.bj, label %bb.bk, !prof !10

bb.bj:                                            ; preds = %bb.bi
  %i.cp = add nsw i32 %i.cn, -1
  store i32 %i.cp, ptr %i.ck, align 4, !tbaa !12
  br label %lean_dec.exit147

bb.bk:                                            ; preds = %bb.bi
  %.not.i.i145 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i145, label %lean_dec.exit147, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ck) #7
  br label %lean_dec.exit147

bb.bm:                                            ; preds = %lean_inc.exit
  br i1 %.not.i177, label %bb.bn, label %lean_dec.exit147

bb.bn:                                            ; preds = %bb.bm
  %i.cq = icmp sgt i32 %.val, 1
  br i1 %i.cq, label %bb.bo, label %bb.bp, !prof !10

bb.bo:                                            ; preds = %bb.bn
  %i.cr = add nsw i32 %.val, -1
  store i32 %i.cr, ptr %3, align 8, !tbaa !12
  br label %lean_dec.exit147

bb.bp:                                            ; preds = %bb.bn
  %.not.i.i141 = icmp eq i32 %.val, 0
  br i1 %.not.i.i141, label %lean_dec.exit147, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit147

lean_dec.exit147:                                 ; preds = %bb.bm, %bb.bq, %bb.bp, %bb.bo, %lean_dec.exit151, %bb.bl, %bb.bk, %bb.bj
  %.0107 = phi ptr [ %3, %lean_dec.exit151 ], [ %3, %bb.bj ], [ %3, %bb.bk ], [ %3, %bb.bl ], [ inttoptr (i64 1 to ptr), %bb.bo ], [ inttoptr (i64 1 to ptr), %bb.bp ], [ inttoptr (i64 1 to ptr), %bb.bq ], [ inttoptr (i64 1 to ptr), %bb.bm ] ; 5 uses
  %i.cs = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ct = and i64 %i.cs, 1                        ; 2 uses
  %i.cu = and i64 %i.ct, %i.bs
  %or.cond.not.not = icmp eq i64 %i.cu, 0
  br i1 %or.cond.not.not, label %.critedge.i, label %bb.br, !prof !15

bb.br:                                            ; preds = %lean_dec.exit147
  %i.cv = shl i64 %i.cs, 31
  %i.cw = ashr i64 %i.cv, 32
  %i.cx = shl i64 %i.bs, 31
  %i.cy = ashr i64 %i.cx, 32
  %i.cz = add nsw i64 %i.cy, %i.cw                ; 3 uses
  %i.da = add nsw i64 %i.cz, 2147483648
  %i.db = icmp ult i64 %i.da, 4294967296
  br i1 %i.db, label %bb.bs, label %bb.bt, !prof !10

bb.bs:                                            ; preds = %bb.br
  %i.dc = shl nsw i64 %i.cz, 1
  %i.dd = and i64 %i.dc, 8589934590
  %i.de = or disjoint i64 %i.dd, 1
  %i.df = inttoptr i64 %i.de to ptr
  br label %lean_int_add.exit

bb.bt:                                            ; preds = %bb.br
  %i.dg = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.cz) #7
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %lean_dec.exit147
  %i.dh = tail call ptr @lean_int_big_add(ptr noundef %2, ptr noundef %i.t) #7
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.bs, %bb.bt, %.critedge.i
  %.0.i193 = phi ptr [ %i.dh, %.critedge.i ], [ %i.df, %bb.bs ], [ %i.dg, %bb.bt ] ; 7 uses
  br i1 %.not.i, label %bb.bu, label %lean_dec.exit139

bb.bu:                                            ; preds = %lean_int_add.exit
  %i.di = load i32, ptr %i.t, align 4, !tbaa !12  ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 1
  br i1 %i.dj, label %bb.bv, label %bb.bw, !prof !10

bb.bv:                                            ; preds = %bb.bu
  %i.dk = add nsw i32 %i.di, -1
  store i32 %i.dk, ptr %i.t, align 4, !tbaa !12
  br label %lean_dec.exit139

bb.bw:                                            ; preds = %bb.bu
  %.not.i.i137 = icmp eq i32 %i.di, 0
  br i1 %.not.i.i137, label %lean_dec.exit139, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.t) #7
  br label %lean_dec.exit139

lean_dec.exit139:                                 ; preds = %bb.bv, %bb.bw, %bb.bx, %lean_int_add.exit
  %.not.i132 = icmp eq i64 %i.ct, 0
  br i1 %.not.i132, label %bb.by, label %lean_dec.exit135

bb.by:                                            ; preds = %lean_dec.exit139
  %i.dl = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.bz, label %bb.ca, !prof !10

bb.bz:                                            ; preds = %bb.by
  %i.dn = add nsw i32 %i.dl, -1
  store i32 %i.dn, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit135

bb.ca:                                            ; preds = %bb.by
  %.not.i.i133 = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i133, label %lean_dec.exit135, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit135

lean_dec.exit135:                                 ; preds = %bb.bz, %bb.ca, %bb.cb, %lean_dec.exit139
  %i.do = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.dp = and i64 %i.do, 1
  %.not.i194 = icmp eq i64 %i.dp, 0
  %i.dq = icmp ult ptr %1, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.dq, %.not.i194
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.cc

bb.cc:                                            ; preds = %lean_dec.exit135
  %i.dr = lshr i64 %i.do, 1
  %i.ds = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.dr) #7
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %lean_dec.exit135, %bb.cc
  %.1.i = phi ptr [ %1, %lean_dec.exit135 ], [ %i.ds, %bb.cc ] ; 6 uses
  %i.dt = ptrtoint ptr %.0.i193 to i64            ; 2 uses
  %i.du = and i64 %i.dt, 1
  %.not.i195 = icmp eq i64 %i.du, 0               ; 2 uses
  %.pre207 = ptrtoint ptr %.1.i to i64            ; 2 uses
  %.pre = and i64 %.pre207, 1
  %i.dv = icmp eq i64 %.pre, 0                    ; 2 uses
  br i1 %.not.i195, label %lean_int_emod.exit, label %bb.cd, !prof !9

bb.cd:                                            ; preds = %lean_nat_to_int.exit
  br i1 %i.dv, label %lean_int_emod.exit.thread244, label %bb.ce, !prof !9

lean_int_emod.exit.thread244:                     ; preds = %bb.cd
  %i.dw = tail call ptr @lean_int_big_emod(ptr noundef %.0.i193, ptr noundef %.1.i) #7
  br label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  %i.dx = shl i64 %.pre207, 31
  %i.dy = ashr i64 %i.dx, 32                      ; 3 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %lean_dec.exit127, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ea = shl i64 %i.dt, 31
  %i.eb = ashr i64 %i.ea, 32
  %i.ec = srem i64 %i.eb, %i.dy                   ; 2 uses
  %i.ed = icmp slt i64 %i.ec, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.dy, i1 true)
  %i.ee = select i1 %i.ed, i64 %.p.i, i64 0
  %.0.i196 = add nsw i64 %i.ee, %i.ec             ; 3 uses
  %4 = icmp slt i64 %.0.i196, 2147483648
  br i1 %4, label %bb.cg, label %bb.ch, !prof !10

bb.cg:                                            ; preds = %bb.cf
  %i.ef = shl nsw i64 %.0.i196, 1
  %5 = and i64 %i.ef, 8589934590
  %i.eg = or disjoint i64 %5, 1
  %i.eh = inttoptr i64 %i.eg to ptr
  br label %lean_dec.exit127

bb.ch:                                            ; preds = %bb.cf
  %i.ei = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i196) #7
  br label %lean_dec.exit127

lean_int_emod.exit:                               ; preds = %lean_nat_to_int.exit
  %i.ej = tail call ptr @lean_int_big_emod(ptr noundef %.0.i193, ptr noundef %.1.i) #7 ; 2 uses
  br i1 %i.dv, label %bb.ci, label %lean_dec.exit131.thread

bb.ci:                                            ; preds = %lean_int_emod.exit.thread244, %lean_int_emod.exit
  %i.ek = phi ptr [ %i.dw, %lean_int_emod.exit.thread244 ], [ %i.ej, %lean_int_emod.exit ] ; 2 uses
  %i.el = load i32, ptr %.1.i, align 4, !tbaa !12 ; 3 uses
  %i.em = icmp sgt i32 %i.el, 1
  br i1 %i.em, label %bb.cj, label %bb.ck, !prof !10

bb.cj:                                            ; preds = %bb.ci
  %i.en = add nsw i32 %i.el, -1
  store i32 %i.en, ptr %.1.i, align 4, !tbaa !12
  br label %lean_dec.exit131

bb.ck:                                            ; preds = %bb.ci
  %.not.i.i129 = icmp eq i32 %i.el, 0
  br i1 %.not.i.i129, label %lean_dec.exit131, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #7
  br label %lean_dec.exit131

lean_dec.exit131:                                 ; preds = %bb.cj, %bb.ck, %bb.cl
  br i1 %.not.i195, label %lean_dec.exit131.thread, label %lean_dec.exit127

lean_dec.exit131.thread:                          ; preds = %lean_int_emod.exit, %lean_dec.exit131
  %.1.i197243248 = phi ptr [ %i.ek, %lean_dec.exit131 ], [ %i.ej, %lean_int_emod.exit ] ; 3 uses
  %i.eo = load i32, ptr %.0.i193, align 4, !tbaa !12 ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 1
  br i1 %i.ep, label %bb.cm, label %bb.cn, !prof !10

bb.cm:                                            ; preds = %lean_dec.exit131.thread
  %i.eq = add nsw i32 %i.eo, -1
  store i32 %i.eq, ptr %.0.i193, align 4, !tbaa !12
  br label %lean_dec.exit127

bb.cn:                                            ; preds = %lean_dec.exit131.thread
  %.not.i.i125 = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i125, label %lean_dec.exit127, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i193) #7
  br label %lean_dec.exit127

lean_dec.exit127:                                 ; preds = %bb.ce, %bb.cg, %bb.ch, %bb.cm, %bb.cn, %bb.co, %lean_dec.exit131
  %.1.i197243247 = phi ptr [ %.1.i197243248, %bb.cm ], [ %.1.i197243248, %bb.cn ], [ %.1.i197243248, %bb.co ], [ %i.ek, %lean_dec.exit131 ], [ %i.ei, %bb.ch ], [ %i.eh, %bb.cg ], [ %.0.i193, %bb.ce ] ; 8 uses
  %i.er = load atomic i32, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once seq_cst, align 4, !tbaa !18
  %i.es = icmp eq i32 %i.er, 1
  br i1 %i.es, label %bb.cp, label %bb.cq, !prof !10

bb.cp:                                            ; preds = %lean_dec.exit127
  %i.et = load ptr, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit

bb.cq:                                            ; preds = %lean_dec.exit127
  %i.eu = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.cp, %bb.cq
  %.0.i199 = phi ptr [ %i.et, %bb.cp ], [ %i.eu, %bb.cq ] ; 3 uses
  %i.ev = ptrtoint ptr %.1.i197243247 to i64
  %i.ew = ptrtoint ptr %.0.i199 to i64
  %i.ex = and i64 %i.ev, 1                        ; 2 uses
  %i.ey = and i64 %i.ex, %i.ew
  %or.cond.not.i.i = icmp eq i64 %i.ey, 0
  br i1 %or.cond.not.i.i, label %lean_int_dec_eq.exit, label %.split, !prof !15

.split:                                           ; preds = %lean_obj_once.exit
  %i.ez = icmp eq ptr %.1.i197243247, %.0.i199
  br i1 %i.ez, label %bb.cv, label %bb.cr

lean_int_dec_eq.exit:                             ; preds = %lean_obj_once.exit
  %i.fa = tail call zeroext i1 @lean_int_big_eq(ptr noundef %.1.i197243247, ptr noundef %.0.i199) #7
  br i1 %i.fa, label %bb.cv, label %bb.cr

bb.cr:                                            ; preds = %.split, %lean_int_dec_eq.exit
  br i1 %i.bx, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.fb = getelementptr inbounds nuw i8, ptr %.0107, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %.0107, i64 16
  store ptr %0, ptr %i.fc, align 8, !tbaa !14
  store ptr %.1.i197243247, ptr %i.fb, align 8, !tbaa !14
  br label %common.ret251

bb.ct:                                            ; preds = %bb.cr
  tail call void @lean_inc_heartbeat() #7
  %i.fd = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #7 ; 7 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.cu, label %lean_alloc_ctor.exit200

bb.cu:                                            ; preds = %bb.ct
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit200:                          ; preds = %bb.ct
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i32 1, ptr %i.fd, align 4, !tbaa !12
  store i32 16973856, ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %.1.i197243247, ptr %i.fg, align 8, !tbaa !14
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store ptr %0, ptr %i.fh, align 8, !tbaa !14
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store ptr %i.x, ptr %i.fi, align 8, !tbaa !14
  br label %common.ret251

bb.cv:                                            ; preds = %.split, %lean_int_dec_eq.exit
  %.not.i120 = icmp eq i64 %i.ex, 0
  br i1 %.not.i120, label %bb.cw, label %lean_dec.exit123

bb.cw:                                            ; preds = %bb.cv
  %i.fj = load i32, ptr %.1.i197243247, align 4, !tbaa !12 ; 3 uses
  %i.fk = icmp sgt i32 %i.fj, 1
  br i1 %i.fk, label %bb.cx, label %bb.cy, !prof !10

bb.cx:                                            ; preds = %bb.cw
  %i.fl = add nsw i32 %i.fj, -1
  store i32 %i.fl, ptr %.1.i197243247, align 4, !tbaa !12
  br label %lean_dec.exit123

bb.cy:                                            ; preds = %bb.cw
  %.not.i.i121 = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i121, label %lean_dec.exit123, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i197243247) #7
  br label %lean_dec.exit123

lean_dec.exit123:                                 ; preds = %bb.cx, %bb.cy, %bb.cz, %bb.cv
  %i.fm = ptrtoint ptr %.0107 to i64
  %i.fn = and i64 %i.fm, 1
  %.not.i201 = icmp eq i64 %i.fn, 0
  br i1 %.not.i201, label %bb.da, label %lean_del_object.exit

bb.da:                                            ; preds = %lean_dec.exit123
  tail call void @lean_free_object(ptr noundef nonnull %.0107) #7
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %lean_dec.exit123, %bb.da
  %i.fo = ptrtoint ptr %0 to i64
  %i.fp = and i64 %i.fo, 1
  %.not.i116 = icmp eq i64 %i.fp, 0
  br i1 %.not.i116, label %bb.db, label %common.ret251

bb.db:                                            ; preds = %lean_del_object.exit
  %i.fq = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.fr = icmp sgt i32 %i.fq, 1
  br i1 %i.fr, label %bb.dc, label %bb.dd, !prof !10

bb.dc:                                            ; preds = %bb.db
  %i.fs = add nsw i32 %i.fq, -1
  store i32 %i.fs, ptr %0, align 4, !tbaa !12
  br label %common.ret251

bb.dd:                                            ; preds = %bb.db
  %.not.i.i117 = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i117, label %common.ret251, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %common.ret251

bb.df:                                            ; preds = %bb.j
  %i.ft = ptrtoint ptr %1 to i64
  %i.fu = and i64 %i.ft, 1
  %.not.i115 = icmp eq i64 %i.fu, 0
  br i1 %.not.i115, label %bb.dg, label %lean_dec.exit

bb.dg:                                            ; preds = %bb.df
  %i.fv = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.fw = icmp sgt i32 %i.fv, 1
  br i1 %i.fw, label %bb.dh, label %bb.di, !prof !10

bb.dh:                                            ; preds = %bb.dg
  %i.fx = add nsw i32 %i.fv, -1
  store i32 %i.fx, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit

bb.di:                                            ; preds = %bb.dg
  %.not.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.dh, %bb.di, %bb.dj, %bb.df
  tail call void @lean_inc_heartbeat() #7
  %i.fy = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #7 ; 7 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.dk, label %lean_alloc_ctor.exit202

bb.dk:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit202:                          ; preds = %lean_dec.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  store i32 1, ptr %i.fy, align 4, !tbaa !12
  store i32 16973856, ptr %i.ga, align 4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr %2, ptr %i.gb, align 8, !tbaa !14
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store ptr %0, ptr %i.gc, align 8, !tbaa !14
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  store ptr %3, ptr %i.gd, align 8, !tbaa !14
  br label %common.ret251
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_CommRing_Poly_insertC(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %3, align 4, !tbaa !12
  br label %lean_nat_to_int.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i30 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i30, label %lean_nat_to_int.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw add ptr %3, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_nat_to_int.exit

lean_inc.exit:                                    ; preds = %bb.a
  %i.f = icmp ult ptr %3, inttoptr (i64 4294967296 to ptr)
  br i1 %i.f, label %lean_nat_to_int.exit, label %bb.f

bb.f:                                             ; preds = %lean_inc.exit
  %i.g = lshr i64 %i.a, 1
  %i.h = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.g) #7
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %lean_inc.exit, %bb.f
  %.1.i = phi ptr [ %3, %lean_inc.exit ], [ %i.h, %bb.f ], [ %3, %bb.e ], [ %3, %bb.d ], [ %3, %bb.c ] ; 6 uses
  %i.i = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i32 = icmp eq i64 %i.j, 0
  %.pre37 = ptrtoint ptr %.1.i to i64             ; 2 uses
  %.pre = and i64 %.pre37, 1
  %i.k = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i32, label %lean_int_emod.exit, label %bb.g, !prof !9

bb.g:                                             ; preds = %lean_nat_to_int.exit
  br i1 %i.k, label %lean_int_emod.exit.thread52, label %bb.h, !prof !9

lean_int_emod.exit.thread52:                      ; preds = %bb.g
  %i.l = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %.1.i) #7
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.m = shl i64 %.pre37, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_dec.exit29, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i = add nsw i64 %i.t, %i.r                  ; 3 uses
  %4 = icmp slt i64 %.0.i, 2147483648
  br i1 %4, label %bb.j, label %bb.k, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.u = shl nsw i64 %.0.i, 1
  %5 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %5, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_dec.exit29

bb.k:                                             ; preds = %bb.i
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i) #7
  br label %lean_dec.exit29

lean_int_emod.exit:                               ; preds = %lean_nat_to_int.exit
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %.1.i) #7 ; 2 uses
  br i1 %i.k, label %bb.l, label %lean_dec.exit29

bb.l:                                             ; preds = %lean_int_emod.exit.thread52, %lean_int_emod.exit
  %i.z = phi ptr [ %i.l, %lean_int_emod.exit.thread52 ], [ %i.y, %lean_int_emod.exit ] ; 3 uses
  %i.aa = load i32, ptr %.1.i, align 4, !tbaa !12 ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %bb.l
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %.1.i, align 4, !tbaa !12
  br label %lean_dec.exit29

bb.n:                                             ; preds = %bb.l
  %.not.i.i27 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i27, label %lean_dec.exit29, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #7
  br label %lean_dec.exit29

lean_dec.exit29:                                  ; preds = %bb.k, %bb.j, %bb.h, %bb.m, %bb.n, %bb.o, %lean_int_emod.exit
  %.1.i3351 = phi ptr [ %i.y, %lean_int_emod.exit ], [ %i.z, %bb.m ], [ %i.z, %bb.n ], [ %i.z, %bb.o ], [ %i.x, %bb.k ], [ %i.w, %bb.j ], [ %0, %bb.h ] ; 7 uses
  %i.ad = load atomic i32, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once seq_cst, align 4, !tbaa !18
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.p, label %bb.q, !prof !10

bb.p:                                             ; preds = %lean_dec.exit29
  %i.af = load ptr, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit

bb.q:                                             ; preds = %lean_dec.exit29
  %i.ag = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.p, %bb.q
  %.0.i34 = phi ptr [ %i.af, %bb.p ], [ %i.ag, %bb.q ] ; 3 uses
  %i.ah = ptrtoint ptr %.1.i3351 to i64
  %i.ai = ptrtoint ptr %.0.i34 to i64
  %i.aj = and i64 %i.ah, 1                        ; 2 uses
  %i.ak = and i64 %i.aj, %i.ai
  %or.cond.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %or.cond.not.i.i, label %lean_int_dec_eq.exit, label %.split, !prof !15

.split:                                           ; preds = %lean_obj_once.exit
  %i.al = icmp eq ptr %.1.i3351, %.0.i34
  br i1 %i.al, label %bb.s, label %bb.r

lean_int_dec_eq.exit:                             ; preds = %lean_obj_once.exit
  %i.am = tail call zeroext i1 @lean_int_big_eq(ptr noundef %.1.i3351, ptr noundef %.0.i34) #7
  br i1 %i.am, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.split, %lean_int_dec_eq.exit
  %i.an = tail call ptr @l_Lean_Grind_CommRing_Poly_insertC_go(ptr noundef %1, ptr noundef %3, ptr noundef %.1.i3351, ptr noundef %2)
  br label %lean_dec.exit

bb.s:                                             ; preds = %.split, %lean_int_dec_eq.exit
  %.not.i22 = icmp eq i64 %i.aj, 0
  br i1 %.not.i22, label %bb.t, label %lean_dec.exit25

bb.t:                                             ; preds = %bb.s
  %i.ao = load i32, ptr %.1.i3351, align 4, !tbaa !12 ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %bb.t
  %i.aq = add nsw i32 %i.ao, -1
  store i32 %i.aq, ptr %.1.i3351, align 4, !tbaa !12
  br label %lean_dec.exit25

bb.v:                                             ; preds = %bb.t
  %.not.i.i23 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i23, label %lean_dec.exit25, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i3351) #7
  br label %lean_dec.exit25

lean_dec.exit25:                                  ; preds = %bb.u, %bb.v, %bb.w, %bb.s
  br i1 %.not.i, label %bb.x, label %lean_dec.exit21

bb.x:                                             ; preds = %lean_dec.exit25
  %i.ar = load i32, ptr %3, align 4, !tbaa !12    ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.y, label %bb.z, !prof !10

bb.y:                                             ; preds = %bb.x
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit21

bb.z:                                             ; preds = %bb.x
  %.not.i.i19 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i19, label %lean_dec.exit21, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit21

lean_dec.exit21:                                  ; preds = %bb.y, %bb.z, %bb.aa, %lean_dec.exit25
  %i.au = ptrtoint ptr %1 to i64
  %i.av = and i64 %i.au, 1
  %.not.i17 = icmp eq i64 %i.av, 0
  br i1 %.not.i17, label %bb.ab, label %lean_dec.exit

bb.ab:                                            ; preds = %lean_dec.exit21
  %i.aw = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.ac, label %bb.ad, !prof !10

bb.ac:                                            ; preds = %bb.ab
  %i.ay = add nsw i32 %i.aw, -1
  store i32 %i.ay, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit21, %bb.ae, %bb.ad, %bb.ac, %bb.r
  %.0 = phi ptr [ %i.an, %bb.r ], [ %2, %bb.ac ], [ %2, %bb.ad ], [ %2, %bb.ae ], [ %2, %lean_dec.exit21 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_CommRing_Poly_insertC___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @l_Lean_Grind_CommRing_Poly_insertC(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_CommRing_Poly_mulConstC_go(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i148 = icmp eq i64 %i.b, 0                ; 2 uses
  %i.c = shl i64 %i.a, 31
  %i.d = ashr i64 %i.c, 32                        ; 2 uses
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0                   ; 2 uses
  %i.g = icmp ult ptr %1, inttoptr (i64 4294967296 to ptr)
  %or.cond.i157 = or i1 %i.g, %.not.i             ; 2 uses
  %i.h = lshr i64 %i.e, 1                         ; 2 uses
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit.backedge, %bb.a
  %.079 = phi ptr [ %2, %bb.a ], [ %i.by, %lean_dec.exit.backedge ] ; 15 uses
  %i.i = ptrtoint ptr %.079 to i64                ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i130 = icmp eq i64 %i.j, 0                ; 3 uses
  br i1 %.not.i130, label %bb.c, label %bb.b

bb.b:                                             ; preds = %lean_dec.exit
  %i.k = lshr i64 %i.i, 1
  %i.l = trunc i64 %i.k to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %lean_dec.exit
  %i.m = getelementptr i8, ptr %.079, i64 4
  %.val.i = load i32, ptr %i.m, align 4
  %i.n = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.l, %bb.b ], [ %i.n, %bb.c ]
  %i.o = icmp eq i32 %.0.i, 0
  %i.p = getelementptr inbounds nuw i8, ptr %.079, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14   ; 20 uses
  br i1 %i.o, label %bb.d, label %bb.al

bb.d:                                             ; preds = %lean_obj_tag.exit
  %.079.val129 = load i32, ptr %.079, align 8, !tbaa !12
  %i.r = icmp eq i32 %.079.val129, 1              ; 2 uses
  br i1 %i.r, label %lean_dec.exit128, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = and i64 %i.s, 1
  %.not.i90 = icmp eq i64 %i.t, 0
  br i1 %.not.i90, label %bb.f, label %lean_inc.exit91

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.q, align 4, !tbaa !12 ; 3 uses
  %i.u = icmp sgt i32 %.val.i.i, 0
  br i1 %i.u, label %bb.g, label %bb.h, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw i32 %.val.i.i, 1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !12
  br label %lean_inc.exit91

bb.h:                                             ; preds = %bb.f
  %.not.i.i131 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i131, label %lean_inc.exit91, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = atomicrmw add ptr %i.q, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit91

lean_inc.exit91:                                  ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i130, label %bb.j, label %lean_dec.exit128

bb.j:                                             ; preds = %lean_inc.exit91
  %i.x = load i32, ptr %.079, align 8, !tbaa !12  ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.k, label %bb.l, !prof !10

bb.k:                                             ; preds = %bb.j
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %.079, align 8, !tbaa !12
  br label %lean_dec.exit128

bb.l:                                             ; preds = %bb.j
  %.not.i.i126 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i126, label %lean_dec.exit128, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.079) #7
  br label %lean_dec.exit128

lean_dec.exit128:                                 ; preds = %lean_inc.exit91, %bb.m, %bb.l, %bb.k, %bb.d
  %.083 = phi ptr [ %.079, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %bb.l ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %lean_inc.exit91 ] ; 2 uses
  %.pre197 = ptrtoint ptr %i.q to i64             ; 2 uses
  %.pre = and i64 %.pre197, 1
  %i.aa = icmp eq i64 %.pre, 0                    ; 2 uses
  br i1 %.not.i148, label %lean_int_mul.exit, label %bb.n, !prof !9

bb.n:                                             ; preds = %lean_dec.exit128
  br i1 %i.aa, label %lean_int_mul.exit.thread237, label %bb.o, !prof !9

lean_int_mul.exit.thread237:                      ; preds = %bb.n
  %i.ab = tail call ptr @lean_int_big_mul(ptr noundef %0, ptr noundef %i.q) #7
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ac = shl i64 %.pre197, 31
  %i.ad = ashr i64 %i.ac, 32
  %i.ae = mul nsw i64 %i.ad, %i.d                 ; 3 uses
  %i.af = add nsw i64 %i.ae, 2147483648
  %i.ag = icmp ult i64 %i.af, 4294967296
  br i1 %i.ag, label %bb.p, label %bb.q, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.ah = shl nsw i64 %i.ae, 1
  %i.ai = and i64 %i.ah, 8589934590
  %i.aj = or disjoint i64 %i.ai, 1
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %lean_dec.exit124

bb.q:                                             ; preds = %bb.o
  %i.al = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ae) #7
  br label %lean_dec.exit124

lean_int_mul.exit:                                ; preds = %lean_dec.exit128
  %i.am = tail call ptr @lean_int_big_mul(ptr noundef %0, ptr noundef %i.q) #7 ; 2 uses
  br i1 %i.aa, label %bb.r, label %lean_dec.exit124

bb.r:                                             ; preds = %lean_int_mul.exit.thread237, %lean_int_mul.exit
  %i.an = phi ptr [ %i.ab, %lean_int_mul.exit.thread237 ], [ %i.am, %lean_int_mul.exit ] ; 3 uses
  %i.ao = load i32, ptr %i.q, align 4, !tbaa !12  ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.s, label %bb.t, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.aq = add nsw i32 %i.ao, -1
  store i32 %i.aq, ptr %i.q, align 4, !tbaa !12
  br label %lean_dec.exit124

bb.t:                                             ; preds = %bb.r
  %.not.i.i122 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i122, label %lean_dec.exit124, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #7
  br label %lean_dec.exit124

lean_dec.exit124:                                 ; preds = %bb.q, %bb.p, %bb.s, %bb.t, %bb.u, %lean_int_mul.exit
  %.0.i133236 = phi ptr [ %i.am, %lean_int_mul.exit ], [ %i.an, %bb.s ], [ %i.an, %bb.t ], [ %i.an, %bb.u ], [ %i.al, %bb.q ], [ %i.ak, %bb.p ] ; 7 uses
  br i1 %or.cond.i157, label %lean_nat_to_int.exit, label %bb.v

bb.v:                                             ; preds = %lean_dec.exit124
  %i.ar = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.h) #7
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %lean_dec.exit124, %bb.v
  %.1.i = phi ptr [ %1, %lean_dec.exit124 ], [ %i.ar, %bb.v ] ; 6 uses
  %i.as = ptrtoint ptr %.0.i133236 to i64         ; 2 uses
  %i.at = and i64 %i.as, 1
  %.not.i135 = icmp eq i64 %i.at, 0               ; 2 uses
  %.pre198 = ptrtoint ptr %.1.i to i64            ; 2 uses
  %.pre199 = and i64 %.pre198, 1
  %i.au = icmp eq i64 %.pre199, 0                 ; 2 uses
  br i1 %.not.i135, label %lean_int_emod.exit, label %bb.w, !prof !9

bb.w:                                             ; preds = %lean_nat_to_int.exit
  br i1 %i.au, label %lean_int_emod.exit.thread242, label %bb.x, !prof !9

lean_int_emod.exit.thread242:                     ; preds = %bb.w
  %i.av = tail call ptr @lean_int_big_emod(ptr noundef %.0.i133236, ptr noundef %.1.i) #7
  br label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.aw = shl i64 %.pre198, 31
  %i.ax = ashr i64 %i.aw, 32                      ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %lean_dec.exit116, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.az = shl i64 %i.as, 31
  %i.ba = ashr i64 %i.az, 32
  %i.bb = srem i64 %i.ba, %i.ax                   ; 2 uses
  %i.bc = icmp slt i64 %i.bb, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.ax, i1 true)
  %i.bd = select i1 %i.bc, i64 %.p.i, i64 0
  %.0.i136 = add nsw i64 %i.bd, %i.bb             ; 3 uses
  %3 = icmp slt i64 %.0.i136, 2147483648
  br i1 %3, label %bb.z, label %bb.aa, !prof !10

bb.z:                                             ; preds = %bb.y
  %i.be = shl nsw i64 %.0.i136, 1
  %4 = and i64 %i.be, 8589934590
  %i.bf = or disjoint i64 %4, 1
  %i.bg = inttoptr i64 %i.bf to ptr
  br label %lean_dec.exit116

bb.aa:                                            ; preds = %bb.y
  %i.bh = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i136) #7
  br label %lean_dec.exit116

lean_int_emod.exit:                               ; preds = %lean_nat_to_int.exit
  %i.bi = tail call ptr @lean_int_big_emod(ptr noundef %.0.i133236, ptr noundef %.1.i) #7 ; 2 uses
  br i1 %i.au, label %bb.ab, label %lean_dec.exit120.thread

bb.ab:                                            ; preds = %lean_int_emod.exit.thread242, %lean_int_emod.exit
  %i.bj = phi ptr [ %i.av, %lean_int_emod.exit.thread242 ], [ %i.bi, %lean_int_emod.exit ] ; 2 uses
  %i.bk = load i32, ptr %.1.i, align 4, !tbaa !12 ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %bb.ac, label %bb.ad, !prof !10

bb.ac:                                            ; preds = %bb.ab
  %i.bm = add nsw i32 %i.bk, -1
  store i32 %i.bm, ptr %.1.i, align 4, !tbaa !12
  br label %lean_dec.exit120

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i118 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i118, label %lean_dec.exit120, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #7
  br label %lean_dec.exit120

lean_dec.exit120:                                 ; preds = %bb.ac, %bb.ad, %bb.ae
  br i1 %.not.i135, label %lean_dec.exit120.thread, label %lean_dec.exit116

lean_dec.exit120.thread:                          ; preds = %lean_int_emod.exit, %lean_dec.exit120
  %.1.i137241246 = phi ptr [ %i.bj, %lean_dec.exit120 ], [ %i.bi, %lean_int_emod.exit ] ; 3 uses
  %i.bn = load i32, ptr %.0.i133236, align 4, !tbaa !12 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.af, label %bb.ag, !prof !10

bb.af:                                            ; preds = %lean_dec.exit120.thread
  %i.bp = add nsw i32 %i.bn, -1
  store i32 %i.bp, ptr %.0.i133236, align 4, !tbaa !12
  br label %lean_dec.exit116

bb.ag:                                            ; preds = %lean_dec.exit120.thread
  %.not.i.i114 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i114, label %lean_dec.exit116, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i133236) #7
  br label %lean_dec.exit116

lean_dec.exit116:                                 ; preds = %bb.x, %bb.z, %bb.aa, %bb.af, %bb.ag, %bb.ah, %lean_dec.exit120
  %.1.i137241245 = phi ptr [ %.1.i137241246, %bb.af ], [ %.1.i137241246, %bb.ag ], [ %.1.i137241246, %bb.ah ], [ %i.bj, %lean_dec.exit120 ], [ %i.bh, %bb.aa ], [ %i.bg, %bb.z ], [ %.0.i133236, %bb.x ] ; 2 uses
  br i1 %i.r, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %lean_dec.exit116
  %i.bq = getelementptr inbounds nuw i8, ptr %.083, i64 8
  store ptr %.1.i137241245, ptr %i.bq, align 8, !tbaa !14
  br label %lean_dec.exit.thread

bb.aj:                                            ; preds = %lean_dec.exit116
  tail call void @lean_inc_heartbeat() #7
  %i.br = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.ak, label %lean_alloc_ctor.exit

bb.ak:                                            ; preds = %bb.aj
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.aj
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 1, ptr %i.br, align 4, !tbaa !12
  store i32 65552, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %.1.i137241245, ptr %i.bu, align 8, !tbaa !14
  br label %lean_dec.exit.thread

bb.al:                                            ; preds = %lean_obj_tag.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %.079, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !14 ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.079, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !14 ; 6 uses
  %.079.val = load i32, ptr %.079, align 8, !tbaa !12
  %i.bz = icmp eq i32 %.079.val, 1                ; 2 uses
  br i1 %i.bz, label %lean_dec.exit112, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = and i64 %i.ca, 1
  %.not.i88 = icmp eq i64 %i.cb, 0
  br i1 %.not.i88, label %bb.an, label %lean_inc.exit89

bb.an:                                            ; preds = %bb.am
  %.val.i.i139 = load i32, ptr %i.by, align 4, !tbaa !12 ; 3 uses
  %i.cc = icmp sgt i32 %.val.i.i139, 0
  br i1 %i.cc, label %bb.ao, label %bb.ap, !prof !10

bb.ao:                                            ; preds = %bb.an
  %i.cd = add nuw i32 %.val.i.i139, 1
  store i32 %i.cd, ptr %i.by, align 4, !tbaa !12
  br label %lean_inc.exit89

bb.ap:                                            ; preds = %bb.an
  %.not.i.i140 = icmp eq i32 %.val.i.i139, 0
  br i1 %.not.i.i140, label %lean_inc.exit89, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ce = atomicrmw add ptr %i.by, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit89

lean_inc.exit89:                                  ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %i.cf = ptrtoint ptr %i.bw to i64
  %i.cg = and i64 %i.cf, 1
  %.not.i86 = icmp eq i64 %i.cg, 0
  br i1 %.not.i86, label %bb.ar, label %lean_inc.exit87

bb.ar:                                            ; preds = %lean_inc.exit89
  %.val.i.i142 = load i32, ptr %i.bw, align 4, !tbaa !12 ; 3 uses
  %i.ch = icmp sgt i32 %.val.i.i142, 0
  br i1 %i.ch, label %bb.as, label %bb.at, !prof !10

bb.as:                                            ; preds = %bb.ar
  %i.ci = add nuw i32 %.val.i.i142, 1
  store i32 %i.ci, ptr %i.bw, align 4, !tbaa !12
  br label %lean_inc.exit87

bb.at:                                            ; preds = %bb.ar
  %.not.i.i143 = icmp eq i32 %.val.i.i142, 0
  br i1 %.not.i.i143, label %lean_inc.exit87, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cj = atomicrmw add ptr %i.bw, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit87

lean_inc.exit87:                                  ; preds = %bb.au, %bb.at, %bb.as, %lean_inc.exit89
  %i.ck = ptrtoint ptr %i.q to i64
  %i.cl = and i64 %i.ck, 1
  %.not.i84 = icmp eq i64 %i.cl, 0
  br i1 %.not.i84, label %bb.av, label %lean_inc.exit85

bb.av:                                            ; preds = %lean_inc.exit87
  %.val.i.i145 = load i32, ptr %i.q, align 4, !tbaa !12 ; 3 uses
  %i.cm = icmp sgt i32 %.val.i.i145, 0
  br i1 %i.cm, label %bb.aw, label %bb.ax, !prof !10

bb.aw:                                            ; preds = %bb.av
  %i.cn = add nuw i32 %.val.i.i145, 1
  store i32 %i.cn, ptr %i.q, align 4, !tbaa !12
  br label %lean_inc.exit85

bb.ax:                                            ; preds = %bb.av
  %.not.i.i146 = icmp eq i32 %.val.i.i145, 0
  br i1 %.not.i.i146, label %lean_inc.exit85, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.co = atomicrmw add ptr %i.q, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit85

lean_inc.exit85:                                  ; preds = %bb.ay, %bb.ax, %bb.aw, %lean_inc.exit87
  br i1 %.not.i130, label %bb.az, label %lean_dec.exit112

bb.az:                                            ; preds = %lean_inc.exit85
  %i.cp = load i32, ptr %.079, align 8, !tbaa !12 ; 3 uses
  %i.cq = icmp sgt i32 %i.cp, 1
  br i1 %i.cq, label %bb.ba, label %bb.bb, !prof !10

bb.ba:                                            ; preds = %bb.az
  %i.cr = add nsw i32 %i.cp, -1
  store i32 %i.cr, ptr %.079, align 8, !tbaa !12
  br label %lean_dec.exit112

bb.bb:                                            ; preds = %bb.az
  %.not.i.i110 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i110, label %lean_dec.exit112, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.079) #7
  br label %lean_dec.exit112

lean_dec.exit112:                                 ; preds = %lean_inc.exit85, %bb.bc, %bb.bb, %bb.ba, %bb.al
  %.076 = phi ptr [ %.079, %bb.al ], [ inttoptr (i64 1 to ptr), %bb.ba ], [ inttoptr (i64 1 to ptr), %bb.bb ], [ inttoptr (i64 1 to ptr), %bb.bc ], [ inttoptr (i64 1 to ptr), %lean_inc.exit85 ] ; 5 uses
  %.pre200 = ptrtoint ptr %i.q to i64             ; 2 uses
  %.pre201 = and i64 %.pre200, 1
  %i.cs = icmp eq i64 %.pre201, 0                 ; 2 uses
  br i1 %.not.i148, label %lean_int_mul.exit152, label %bb.bd, !prof !9

bb.bd:                                            ; preds = %lean_dec.exit112
  br i1 %i.cs, label %lean_int_mul.exit152.thread252, label %bb.be, !prof !9

lean_int_mul.exit152.thread252:                   ; preds = %bb.bd
  %i.ct = tail call ptr @lean_int_big_mul(ptr noundef %0, ptr noundef %i.q) #7
  br label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.cu = shl i64 %.pre200, 31
  %i.cv = ashr i64 %i.cu, 32
  %i.cw = mul nsw i64 %i.cv, %i.d                 ; 3 uses
  %i.cx = add nsw i64 %i.cw, 2147483648
  %i.cy = icmp ult i64 %i.cx, 4294967296
  br i1 %i.cy, label %bb.bf, label %bb.bg, !prof !10

bb.bf:                                            ; preds = %bb.be
  %i.cz = shl nsw i64 %i.cw, 1
  %i.da = and i64 %i.cz, 8589934590
  %i.db = or disjoint i64 %i.da, 1
  %i.dc = inttoptr i64 %i.db to ptr
  br label %lean_dec.exit108

bb.bg:                                            ; preds = %bb.be
  %i.dd = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.cw) #7
  br label %lean_dec.exit108

lean_int_mul.exit152:                             ; preds = %lean_dec.exit112
  %i.de = tail call ptr @lean_int_big_mul(ptr noundef %0, ptr noundef %i.q) #7 ; 2 uses
  br i1 %i.cs, label %bb.bh, label %lean_dec.exit108

bb.bh:                                            ; preds = %lean_int_mul.exit152.thread252, %lean_int_mul.exit152
  %i.df = phi ptr [ %i.ct, %lean_int_mul.exit152.thread252 ], [ %i.de, %lean_int_mul.exit152 ] ; 3 uses
  %i.dg = load i32, ptr %i.q, align 4, !tbaa !12  ; 3 uses
  %i.dh = icmp sgt i32 %i.dg, 1
  br i1 %i.dh, label %bb.bi, label %bb.bj, !prof !10

bb.bi:                                            ; preds = %bb.bh
  %i.di = add nsw i32 %i.dg, -1
  store i32 %i.di, ptr %i.q, align 4, !tbaa !12
  br label %lean_dec.exit108

bb.bj:                                            ; preds = %bb.bh
  %.not.i.i106 = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i106, label %lean_dec.exit108, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #7
  br label %lean_dec.exit108

lean_dec.exit108:                                 ; preds = %bb.bg, %bb.bf, %bb.bi, %bb.bj, %bb.bk, %lean_int_mul.exit152
  %.0.i150251 = phi ptr [ %i.de, %lean_int_mul.exit152 ], [ %i.df, %bb.bi ], [ %i.df, %bb.bj ], [ %i.df, %bb.bk ], [ %i.dd, %bb.bg ], [ %i.dc, %bb.bf ] ; 7 uses
  br i1 %.not.i, label %bb.bl, label %lean_inc.exit

bb.bl:                                            ; preds = %lean_dec.exit108
  %.val.i.i153 = load i32, ptr %1, align 4, !tbaa !12 ; 3 uses
  %i.dj = icmp sgt i32 %.val.i.i153, 0
  br i1 %i.dj, label %bb.bm, label %bb.bn, !prof !10

bb.bm:                                            ; preds = %bb.bl
  %i.dk = add nuw i32 %.val.i.i153, 1
  store i32 %i.dk, ptr %1, align 4, !tbaa !12
  br label %lean_nat_to_int.exit159

bb.bn:                                            ; preds = %bb.bl
  %.not.i.i154 = icmp eq i32 %.val.i.i153, 0
  br i1 %.not.i.i154, label %lean_nat_to_int.exit159, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.dl = atomicrmw add ptr %1, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_nat_to_int.exit159

lean_inc.exit:                                    ; preds = %lean_dec.exit108
  br i1 %or.cond.i157, label %lean_nat_to_int.exit159, label %bb.bp

bb.bp:                                            ; preds = %lean_inc.exit
  %i.dm = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.h) #7
  br label %lean_nat_to_int.exit159

lean_nat_to_int.exit159:                          ; preds = %bb.bm, %bb.bn, %bb.bo, %lean_inc.exit, %bb.bp
  %.1.i158 = phi ptr [ %1, %lean_inc.exit ], [ %i.dm, %bb.bp ], [ %1, %bb.bo ], [ %1, %bb.bn ], [ %1, %bb.bm ] ; 6 uses
  %i.dn = ptrtoint ptr %.0.i150251 to i64         ; 2 uses
  %i.do = and i64 %i.dn, 1
  %.not.i160 = icmp eq i64 %i.do, 0               ; 2 uses
  %.pre202 = ptrtoint ptr %.1.i158 to i64         ; 2 uses
  %.pre203 = and i64 %.pre202, 1
  %i.dp = icmp eq i64 %.pre203, 0                 ; 2 uses
  br i1 %.not.i160, label %lean_int_emod.exit166, label %bb.bq, !prof !9

bb.bq:                                            ; preds = %lean_nat_to_int.exit159
  br i1 %i.dp, label %lean_int_emod.exit166.thread257, label %bb.br, !prof !9

lean_int_emod.exit166.thread257:                  ; preds = %bb.bq
  %i.dq = tail call ptr @lean_int_big_emod(ptr noundef %.0.i150251, ptr noundef %.1.i158) #7
  br label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.dr = shl i64 %.pre202, 31
  %i.ds = ashr i64 %i.dr, 32                      ; 3 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %lean_dec.exit100, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.du = shl i64 %i.dn, 31
  %i.dv = ashr i64 %i.du, 32
  %i.dw = srem i64 %i.dv, %i.ds                   ; 2 uses
  %i.dx = icmp slt i64 %i.dw, 0
  %.p.i162 = tail call i64 @llvm.abs.i64(i64 %i.ds, i1 true)
  %i.dy = select i1 %i.dx, i64 %.p.i162, i64 0
  %.0.i163 = add nsw i64 %i.dy, %i.dw             ; 3 uses
  %5 = icmp slt i64 %.0.i163, 2147483648
  br i1 %5, label %bb.bt, label %bb.bu, !prof !10

bb.bt:                                            ; preds = %bb.bs
  %i.dz = shl nsw i64 %.0.i163, 1
  %6 = and i64 %i.dz, 8589934590
  %i.ea = or disjoint i64 %6, 1
  %i.eb = inttoptr i64 %i.ea to ptr
  br label %lean_dec.exit100

bb.bu:                                            ; preds = %bb.bs
  %i.ec = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i163) #7
  br label %lean_dec.exit100

lean_int_emod.exit166:                            ; preds = %lean_nat_to_int.exit159
  %i.ed = tail call ptr @lean_int_big_emod(ptr noundef %.0.i150251, ptr noundef %.1.i158) #7 ; 2 uses
  br i1 %i.dp, label %bb.bv, label %lean_dec.exit104.thread

bb.bv:                                            ; preds = %lean_int_emod.exit166.thread257, %lean_int_emod.exit166
  %i.ee = phi ptr [ %i.dq, %lean_int_emod.exit166.thread257 ], [ %i.ed, %lean_int_emod.exit166 ] ; 2 uses
  %i.ef = load i32, ptr %.1.i158, align 4, !tbaa !12 ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %bb.bw, label %bb.bx, !prof !10

bb.bw:                                            ; preds = %bb.bv
  %i.eh = add nsw i32 %i.ef, -1
  store i32 %i.eh, ptr %.1.i158, align 4, !tbaa !12
  br label %lean_dec.exit104

bb.bx:                                            ; preds = %bb.bv
  %.not.i.i102 = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i102, label %lean_dec.exit104, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i158) #7
  br label %lean_dec.exit104

lean_dec.exit104:                                 ; preds = %bb.bw, %bb.bx, %bb.by
  br i1 %.not.i160, label %lean_dec.exit104.thread, label %lean_dec.exit100

lean_dec.exit104.thread:                          ; preds = %lean_int_emod.exit166, %lean_dec.exit104
  %.1.i164256261 = phi ptr [ %i.ee, %lean_dec.exit104 ], [ %i.ed, %lean_int_emod.exit166 ] ; 3 uses
  %i.ei = load i32, ptr %.0.i150251, align 4, !tbaa !12 ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %bb.bz, label %bb.ca, !prof !10

bb.bz:                                            ; preds = %lean_dec.exit104.thread
  %i.ek = add nsw i32 %i.ei, -1
  store i32 %i.ek, ptr %.0.i150251, align 4, !tbaa !12
  br label %lean_dec.exit100

bb.ca:                                            ; preds = %lean_dec.exit104.thread
  %.not.i.i98 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i98, label %lean_dec.exit100, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i150251) #7
  br label %lean_dec.exit100

lean_dec.exit100:                                 ; preds = %bb.br, %bb.bt, %bb.bu, %bb.bz, %bb.ca, %bb.cb, %lean_dec.exit104
  %.1.i164256260 = phi ptr [ %.1.i164256261, %bb.bz ], [ %.1.i164256261, %bb.ca ], [ %.1.i164256261, %bb.cb ], [ %i.ee, %lean_dec.exit104 ], [ %i.ec, %bb.bu ], [ %i.eb, %bb.bt ], [ %.0.i150251, %bb.br ] ; 8 uses
  %i.el = load atomic i32, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once seq_cst, align 4, !tbaa !18
  %i.em = icmp eq i32 %i.el, 1
  br i1 %i.em, label %bb.cc, label %bb.cd, !prof !10

bb.cc:                                            ; preds = %lean_dec.exit100
  %i.en = load ptr, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit

bb.cd:                                            ; preds = %lean_dec.exit100
  %i.eo = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.cc, %bb.cd
  %.0.i167 = phi ptr [ %i.en, %bb.cc ], [ %i.eo, %bb.cd ] ; 3 uses
  %i.ep = ptrtoint ptr %.1.i164256260 to i64
  %i.eq = ptrtoint ptr %.0.i167 to i64
  %i.er = and i64 %i.ep, 1                        ; 2 uses
  %i.es = and i64 %i.er, %i.eq
  %or.cond.not.i.i = icmp eq i64 %i.es, 0
  br i1 %or.cond.not.i.i, label %lean_int_dec_eq.exit, label %.split, !prof !15

.split:                                           ; preds = %lean_obj_once.exit
  %i.et = icmp eq ptr %.1.i164256260, %.0.i167
  br i1 %i.et, label %bb.ci, label %bb.ce

lean_int_dec_eq.exit:                             ; preds = %lean_obj_once.exit
  %i.eu = tail call zeroext i1 @lean_int_big_eq(ptr noundef %.1.i164256260, ptr noundef %.0.i167) #7
  br i1 %i.eu, label %bb.ci, label %bb.ce

bb.ce:                                            ; preds = %.split, %lean_int_dec_eq.exit
  %i.ev = tail call ptr @l_Lean_Grind_CommRing_Poly_mulConstC_go(ptr noundef %0, ptr noundef %1, ptr noundef %i.by) ; 2 uses
  br i1 %i.bz, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ew = getelementptr inbounds nuw i8, ptr %.076, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.076, i64 24
  store ptr %i.ev, ptr %i.ex, align 8, !tbaa !14
  store ptr %.1.i164256260, ptr %i.ew, align 8, !tbaa !14
  br label %lean_dec.exit.thread

bb.cg:                                            ; preds = %bb.ce
  tail call void @lean_inc_heartbeat() #7
  %i.ey = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #7 ; 7 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.ch, label %lean_alloc_ctor.exit168

bb.ch:                                            ; preds = %bb.cg
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit168:                          ; preds = %bb.cg
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  store i32 1, ptr %i.ey, align 4, !tbaa !12
  store i32 16973856, ptr %i.fa, align 4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %.1.i164256260, ptr %i.fb, align 8, !tbaa !14
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store ptr %i.bw, ptr %i.fc, align 8, !tbaa !14
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store ptr %i.ev, ptr %i.fd, align 8, !tbaa !14
  br label %lean_dec.exit.thread

bb.ci:                                            ; preds = %.split, %lean_int_dec_eq.exit
  %.not.i93 = icmp eq i64 %i.er, 0
  br i1 %.not.i93, label %bb.cj, label %lean_dec.exit96

bb.cj:                                            ; preds = %bb.ci
  %i.fe = load i32, ptr %.1.i164256260, align 4, !tbaa !12 ; 3 uses
  %i.ff = icmp sgt i32 %i.fe, 1
  br i1 %i.ff, label %bb.ck, label %bb.cl, !prof !10

bb.ck:                                            ; preds = %bb.cj
  %i.fg = add nsw i32 %i.fe, -1
  store i32 %i.fg, ptr %.1.i164256260, align 4, !tbaa !12
  br label %lean_dec.exit96

bb.cl:                                            ; preds = %bb.cj
  %.not.i.i94 = icmp eq i32 %i.fe, 0
  br i1 %.not.i.i94, label %lean_dec.exit96, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i164256260) #7
  br label %lean_dec.exit96

lean_dec.exit96:                                  ; preds = %bb.ck, %bb.cl, %bb.cm, %bb.ci
  %i.fh = ptrtoint ptr %.076 to i64
  %i.fi = and i64 %i.fh, 1
  %.not.i169 = icmp eq i64 %i.fi, 0
  br i1 %.not.i169, label %bb.cn, label %lean_del_object.exit

bb.cn:                                            ; preds = %lean_dec.exit96
  tail call void @lean_free_object(ptr noundef nonnull %.076) #7
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %lean_dec.exit96, %bb.cn
  %i.fj = ptrtoint ptr %i.bw to i64
  %i.fk = and i64 %i.fj, 1
  %.not.i92 = icmp eq i64 %i.fk, 0
  br i1 %.not.i92, label %bb.co, label %lean_dec.exit.backedge

lean_dec.exit.backedge:                           ; preds = %lean_del_object.exit, %bb.cr, %bb.cq, %bb.cp
  br label %lean_dec.exit

bb.co:                                            ; preds = %lean_del_object.exit
  %i.fl = load i32, ptr %i.bw, align 4, !tbaa !12 ; 3 uses
  %i.fm = icmp sgt i32 %i.fl, 1
  br i1 %i.fm, label %bb.cp, label %bb.cq, !prof !10

bb.cp:                                            ; preds = %bb.co
  %i.fn = add nsw i32 %i.fl, -1
  store i32 %i.fn, ptr %i.bw, align 4, !tbaa !12
  br label %lean_dec.exit.backedge

bb.cq:                                            ; preds = %bb.co
  %.not.i.i = icmp eq i32 %i.fl, 0
  br i1 %.not.i.i, label %lean_dec.exit.backedge, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bw) #7
  br label %lean_dec.exit.backedge

lean_dec.exit.thread:                             ; preds = %bb.cf, %lean_alloc_ctor.exit168, %lean_alloc_ctor.exit, %bb.ai
  %.4 = phi ptr [ %i.br, %lean_alloc_ctor.exit ], [ %.083, %bb.ai ], [ %.076, %bb.cf ], [ %i.ey, %lean_alloc_ctor.exit168 ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_CommRing_Poly_mulConstC_go___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @l_Lean_Grind_CommRing_Poly_mulConstC_go(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_CommRing_Poly_mulConstC(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i22 = icmp eq i64 %i.b, 0                 ; 3 uses
  br i1 %.not.i22, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %2, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %2, align 4, !tbaa !12
  br label %lean_nat_to_int.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i40 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i40, label %lean_nat_to_int.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw add ptr %2, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_nat_to_int.exit

lean_inc.exit:                                    ; preds = %bb.a
  %i.f = icmp ult ptr %2, inttoptr (i64 4294967296 to ptr)
  br i1 %i.f, label %lean_nat_to_int.exit, label %bb.f

bb.f:                                             ; preds = %lean_inc.exit
  %i.g = lshr i64 %i.a, 1
  %i.h = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.g) #7
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %lean_inc.exit, %bb.f
  %.1.i = phi ptr [ %2, %lean_inc.exit ], [ %i.h, %bb.f ], [ %2, %bb.e ], [ %2, %bb.d ], [ %2, %bb.c ] ; 6 uses
  %i.i = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i42 = icmp eq i64 %i.j, 0
  %.pre55 = ptrtoint ptr %.1.i to i64             ; 2 uses
  %.pre = and i64 %.pre55, 1
  %i.k = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i42, label %lean_int_emod.exit, label %bb.g, !prof !9

bb.g:                                             ; preds = %lean_nat_to_int.exit
  br i1 %i.k, label %lean_int_emod.exit.thread74, label %bb.h, !prof !9

lean_int_emod.exit.thread74:                      ; preds = %bb.g
  %i.l = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %.1.i) #7
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.m = shl i64 %.pre55, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_dec.exit39, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i = add nsw i64 %i.t, %i.r                  ; 3 uses
  %3 = icmp slt i64 %.0.i, 2147483648
  br i1 %3, label %bb.j, label %bb.k, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.u = shl nsw i64 %.0.i, 1
  %4 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %4, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_dec.exit39

bb.k:                                             ; preds = %bb.i
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i) #7
  br label %lean_dec.exit39

lean_int_emod.exit:                               ; preds = %lean_nat_to_int.exit
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %.1.i) #7 ; 2 uses
  br i1 %i.k, label %bb.l, label %lean_dec.exit39

bb.l:                                             ; preds = %lean_int_emod.exit.thread74, %lean_int_emod.exit
  %i.z = phi ptr [ %i.l, %lean_int_emod.exit.thread74 ], [ %i.y, %lean_int_emod.exit ] ; 3 uses
  %i.aa = load i32, ptr %.1.i, align 4, !tbaa !12 ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %bb.l
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %.1.i, align 4, !tbaa !12
  br label %lean_dec.exit39

bb.n:                                             ; preds = %bb.l
  %.not.i.i37 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i37, label %lean_dec.exit39, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #7
  br label %lean_dec.exit39

lean_dec.exit39:                                  ; preds = %bb.k, %bb.j, %bb.h, %bb.m, %bb.n, %bb.o, %lean_int_emod.exit
  %.1.i4373 = phi ptr [ %i.y, %lean_int_emod.exit ], [ %i.z, %bb.m ], [ %i.z, %bb.n ], [ %i.z, %bb.o ], [ %i.x, %bb.k ], [ %i.w, %bb.j ], [ %0, %bb.h ] ; 11 uses
  %i.ad = load atomic i32, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once seq_cst, align 4, !tbaa !18
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.p, label %bb.q, !prof !10

bb.p:                                             ; preds = %lean_dec.exit39
  %i.af = load ptr, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit

bb.q:                                             ; preds = %lean_dec.exit39
  %i.ag = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.p, %bb.q
  %.0.i44 = phi ptr [ %i.af, %bb.p ], [ %i.ag, %bb.q ] ; 3 uses
  %i.ah = ptrtoint ptr %.1.i4373 to i64
  %i.ai = ptrtoint ptr %.0.i44 to i64
  %i.aj = and i64 %i.ah, 1                        ; 4 uses
  %i.ak = and i64 %i.aj, %i.ai
  %or.cond.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %or.cond.not.i.i, label %lean_int_dec_eq.exit, label %.split, !prof !15

.split:                                           ; preds = %lean_obj_once.exit
  %i.al = icmp eq ptr %.1.i4373, %.0.i44
  br i1 %i.al, label %bb.af, label %bb.r

lean_int_dec_eq.exit:                             ; preds = %lean_obj_once.exit
  %i.am = tail call zeroext i1 @lean_int_big_eq(ptr noundef %.1.i4373, ptr noundef %.0.i44) #7
  br i1 %i.am, label %bb.af, label %bb.r

bb.r:                                             ; preds = %.split, %lean_int_dec_eq.exit
  %i.an = load atomic i32, ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__4_once seq_cst, align 4, !tbaa !18
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.s, label %bb.t, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.ap = load ptr, ptr @l_Lean_Grind_CommRing_instReprExpr_repr___closed__4, align 8, !tbaa !14
  br label %lean_obj_once.exit46

bb.t:                                             ; preds = %bb.r
  %i.aq = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_instReprExpr_repr___closed__4, ptr noundef nonnull @l_Lean_Grind_CommRing_instReprExpr_repr___closed__4_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_instReprExpr_repr___closed__4) #7
  br label %lean_obj_once.exit46

lean_obj_once.exit46:                             ; preds = %bb.s, %bb.t
  %.0.i45 = phi ptr [ %i.ap, %bb.s ], [ %i.aq, %bb.t ] ; 3 uses
  %i.ar = ptrtoint ptr %.0.i45 to i64
  %i.as = and i64 %i.aj, %i.ar
  %or.cond.not.i.i47 = icmp eq i64 %i.as, 0
  br i1 %or.cond.not.i.i47, label %.critedge.i.i49, label %bb.u, !prof !15

bb.u:                                             ; preds = %lean_obj_once.exit46
  %i.at = icmp eq ptr %.1.i4373, %.0.i45
  br label %lean_int_dec_eq.exit50

.critedge.i.i49:                                  ; preds = %lean_obj_once.exit46
  %i.au = tail call zeroext i1 @lean_int_big_eq(ptr noundef %.1.i4373, ptr noundef %.0.i45) #7
  br label %lean_int_dec_eq.exit50

lean_int_dec_eq.exit50:                           ; preds = %bb.u, %.critedge.i.i49
  %.0.i.i48 = phi i1 [ %i.at, %bb.u ], [ %i.au, %.critedge.i.i49 ]
  %.not.i32 = icmp eq i64 %i.aj, 0
  br i1 %.not.i32, label %bb.v, label %lean_dec.exit35

bb.v:                                             ; preds = %lean_int_dec_eq.exit50
  %i.av = load i32, ptr %.1.i4373, align 4, !tbaa !12 ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %bb.w, label %bb.x, !prof !10

bb.w:                                             ; preds = %bb.v
  %i.ax = add nsw i32 %i.av, -1
  store i32 %i.ax, ptr %.1.i4373, align 4, !tbaa !12
  br label %lean_dec.exit35

bb.x:                                             ; preds = %bb.v
  %.not.i.i33 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i33, label %lean_dec.exit35, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i4373) #7
  br label %lean_dec.exit35

lean_dec.exit35:                                  ; preds = %bb.w, %bb.x, %bb.y, %lean_int_dec_eq.exit50
  br i1 %.0.i.i48, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %lean_dec.exit35
  %i.ay = tail call ptr @l_Lean_Grind_CommRing_Poly_mulConstC_go(ptr noundef %0, ptr noundef %2, ptr noundef %1)
  br label %lean_dec.exit31

bb.aa:                                            ; preds = %lean_dec.exit35
  br i1 %.not.i22, label %bb.ab, label %lean_dec.exit31

bb.ab:                                            ; preds = %bb.aa
  %i.az = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ac, label %bb.ad, !prof !10

bb.ac:                                            ; preds = %bb.ab
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit31

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i29 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i29, label %lean_dec.exit31, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit31

bb.af:                                            ; preds = %.split, %lean_int_dec_eq.exit
  %.not.i24 = icmp eq i64 %i.aj, 0
  br i1 %.not.i24, label %bb.ag, label %lean_dec.exit27

bb.ag:                                            ; preds = %bb.af
  %i.bc = load i32, ptr %.1.i4373, align 4, !tbaa !12 ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 1
  br i1 %i.bd, label %bb.ah, label %bb.ai, !prof !10

bb.ah:                                            ; preds = %bb.ag
  %i.be = add nsw i32 %i.bc, -1
  store i32 %i.be, ptr %.1.i4373, align 4, !tbaa !12
  br label %lean_dec.exit27

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i25 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i25, label %lean_dec.exit27, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i4373) #7
  br label %lean_dec.exit27

lean_dec.exit27:                                  ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.af
  br i1 %.not.i22, label %bb.ak, label %lean_dec.exit

bb.ak:                                            ; preds = %lean_dec.exit27
  %i.bf = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 1
  br i1 %i.bg, label %bb.al, label %bb.am, !prof !10

bb.al:                                            ; preds = %bb.ak
  %i.bh = add nsw i32 %i.bf, -1
  store i32 %i.bh, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit

bb.am:                                            ; preds = %bb.ak
  %.not.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.al, %bb.am, %bb.an, %lean_dec.exit27
  %i.bi = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %bb.ao, label %bb.ap, !prof !10

bb.ao:                                            ; preds = %lean_dec.exit
  %i.bk = add nsw i32 %i.bi, -1
  store i32 %i.bk, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.ap:                                            ; preds = %lean_dec.exit
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit
end_hunk_2
begin_hunk_3_@l_Lean_Grind_CommRing_Poly_mulMonC_go:bb.a
  %.not.i162 = icmp eq i64 %i.b, 0
  %i.c = shl i64 %i.a, 31
  %i.d = ashr i64 %i.c, 32                        ; 2 uses
  %i.e = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i85 = icmp eq i64 %i.f, 0                 ; 2 uses
  %i.g = icmp ult ptr %2, inttoptr (i64 4294967296 to ptr)
  %or.cond.i171 = or i1 %i.g, %.not.i85           ; 2 uses
  %i.h = lshr i64 %i.e, 1                         ; 2 uses
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit.backedge, %bb.a
  %.081 = phi ptr [ %3, %bb.a ], [ %i.dd, %lean_dec.exit.backedge ] ; 15 uses
  %i.i = ptrtoint ptr %.081 to i64                ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i136 = icmp eq i64 %i.j, 0                ; 2 uses
  br i1 %.not.i136, label %bb.c, label %bb.b

bb.b:                                             ; preds = %lean_dec.exit
  %i.k = lshr i64 %i.i, 1
  %i.l = trunc i64 %i.k to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %lean_dec.exit
  %i.m = getelementptr i8, ptr %.081, i64 4
  %.val.i = load i32, ptr %i.m, align 4
  %i.n = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.l, %bb.b ], [ %i.n, %bb.c ]
  %i.o = icmp eq i32 %.0.i, 0
  %i.p = getelementptr inbounds nuw i8, ptr %.081, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14   ; 18 uses
  br i1 %i.o, label %bb.d, label %bb.bb

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.081, i64 8
  %i.s = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.t = and i64 %i.s, 1
  %.not.i93 = icmp eq i64 %i.t, 0                 ; 2 uses
  br i1 %.not.i93, label %bb.e, label %lean_inc.exit94

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.q, align 4, !tbaa !12 ; 3 uses
  %i.u = icmp sgt i32 %.val.i.i, 0
  br i1 %i.u, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.v = add nuw i32 %.val.i.i, 1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !12
  br label %lean_inc.exit94

bb.g:                                             ; preds = %bb.e
  %.not.i.i137 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i137, label %lean_inc.exit94, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = atomicrmw add ptr %i.q, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit94

lean_inc.exit94:                                  ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.val.i138 = load i32, ptr %.081, align 8, !tbaa !12 ; 4 uses
  %i.x = icmp eq i32 %.val.i138, 1
  br i1 %i.x, label %.preheader.i, label %bb.m

.preheader.i:                                     ; preds = %lean_inc.exit94
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !14   ; 4 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, 1
  %.not.i7.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i7.i, label %bb.i, label %lean_dec.exit.i

bb.i:                                             ; preds = %.preheader.i
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !12  ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.k:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.y) #7
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.l, %bb.k, %bb.j, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %.081) #7
  br label %lean_dec_ref_known.exit

bb.m:                                             ; preds = %lean_inc.exit94
  %i.ae = icmp sgt i32 %.val.i138, 1
  br i1 %i.ae, label %bb.n, label %bb.o, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.af = add nsw i32 %.val.i138, -1
  store i32 %i.af, ptr %.081, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.o:                                             ; preds = %bb.m
  %.not.i.i139 = icmp eq i32 %.val.i138, 0
  br i1 %.not.i.i139, label %lean_dec_ref_known.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.081) #7
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.n, %bb.o, %bb.p
  %i.ag = and i64 %i.b, %i.s
  %or.cond.not.not = icmp eq i64 %i.ag, 0
  br i1 %or.cond.not.not, label %.critedge.i, label %bb.q, !prof !15

bb.q:                                             ; preds = %lean_dec_ref_known.exit
  %i.ah = shl i64 %i.s, 31
  %i.ai = ashr i64 %i.ah, 32
  %i.aj = mul nsw i64 %i.ai, %i.d                 ; 3 uses
  %i.ak = add nsw i64 %i.aj, 2147483648
  %i.al = icmp ult i64 %i.ak, 4294967296
  br i1 %i.al, label %bb.r, label %bb.s, !prof !10

bb.r:                                             ; preds = %bb.q
  %i.am = shl nsw i64 %i.aj, 1
  %i.an = and i64 %i.am, 8589934590
  %i.ao = or disjoint i64 %i.an, 1
  %i.ap = inttoptr i64 %i.ao to ptr
  br label %lean_int_mul.exit

bb.s:                                             ; preds = %bb.q
  %i.aq = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.aj) #7
  br label %lean_int_mul.exit

.critedge.i:                                      ; preds = %lean_dec_ref_known.exit
  %i.ar = tail call ptr @lean_int_big_mul(ptr noundef %0, ptr noundef %i.q) #7
  br label %lean_int_mul.exit

lean_int_mul.exit:                                ; preds = %bb.r, %bb.s, %.critedge.i
  %.0.i142 = phi ptr [ %i.ar, %.critedge.i ], [ %i.ap, %bb.r ], [ %i.aq, %bb.s ] ; 7 uses
  br i1 %.not.i93, label %bb.t, label %lean_dec.exit135

bb.t:                                             ; preds = %lean_int_mul.exit
  %i.as = load i32, ptr %i.q, align 4, !tbaa !12  ; 3 uses
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %bb.t
  %i.au = add nsw i32 %i.as, -1
  store i32 %i.au, ptr %i.q, align 4, !tbaa !12
  br label %lean_dec.exit135

bb.v:                                             ; preds = %bb.t
  %.not.i.i133 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i133, label %lean_dec.exit135, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #7
  br label %lean_dec.exit135

lean_dec.exit135:                                 ; preds = %bb.u, %bb.v, %bb.w, %lean_int_mul.exit
  br i1 %or.cond.i171, label %lean_nat_to_int.exit, label %bb.x

bb.x:                                             ; preds = %lean_dec.exit135
  %i.av = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.h) #7
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %lean_dec.exit135, %bb.x
  %.1.i = phi ptr [ %2, %lean_dec.exit135 ], [ %i.av, %bb.x ] ; 6 uses
  %i.aw = ptrtoint ptr %.0.i142 to i64            ; 2 uses
  %i.ax = and i64 %i.aw, 1
  %.not.i144 = icmp eq i64 %i.ax, 0               ; 2 uses
  %.pre211 = ptrtoint ptr %.1.i to i64            ; 2 uses
  %.pre = and i64 %.pre211, 1
  %i.ay = icmp eq i64 %.pre, 0                    ; 2 uses
  br i1 %.not.i144, label %lean_int_emod.exit, label %bb.y, !prof !9

bb.y:                                             ; preds = %lean_nat_to_int.exit
  br i1 %i.ay, label %lean_int_emod.exit.thread251, label %bb.z, !prof !9

lean_int_emod.exit.thread251:                     ; preds = %bb.y
  %i.az = tail call ptr @lean_int_big_emod(ptr noundef %.0.i142, ptr noundef %.1.i) #7
  br label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.ba = shl i64 %.pre211, 31
  %i.bb = ashr i64 %i.ba, 32                      ; 3 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %lean_dec.exit127, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bd = shl i64 %i.aw, 31
  %i.be = ashr i64 %i.bd, 32
  %i.bf = srem i64 %i.be, %i.bb                   ; 2 uses
  %i.bg = icmp slt i64 %i.bf, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.bb, i1 true)
  %i.bh = select i1 %i.bg, i64 %.p.i, i64 0
  %.0.i145 = add nsw i64 %i.bh, %i.bf             ; 3 uses
  %4 = icmp slt i64 %.0.i145, 2147483648
  br i1 %4, label %bb.ab, label %bb.ac, !prof !10

bb.ab:                                            ; preds = %bb.aa
  %i.bi = shl nsw i64 %.0.i145, 1
  %5 = and i64 %i.bi, 8589934590
  %i.bj = or disjoint i64 %5, 1
  %i.bk = inttoptr i64 %i.bj to ptr
  br label %lean_dec.exit127

bb.ac:                                            ; preds = %bb.aa
  %i.bl = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i145) #7
  br label %lean_dec.exit127

lean_int_emod.exit:                               ; preds = %lean_nat_to_int.exit
  %i.bm = tail call ptr @lean_int_big_emod(ptr noundef %.0.i142, ptr noundef %.1.i) #7 ; 2 uses
  br i1 %i.ay, label %bb.ad, label %lean_dec.exit131.thread

bb.ad:                                            ; preds = %lean_int_emod.exit.thread251, %lean_int_emod.exit
  %i.bn = phi ptr [ %i.az, %lean_int_emod.exit.thread251 ], [ %i.bm, %lean_int_emod.exit ] ; 2 uses
  %i.bo = load i32, ptr %.1.i, align 4, !tbaa !12 ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %bb.ae, label %bb.af, !prof !10

bb.ae:                                            ; preds = %bb.ad
  %i.bq = add nsw i32 %i.bo, -1
  store i32 %i.bq, ptr %.1.i, align 4, !tbaa !12
  br label %lean_dec.exit131

bb.af:                                            ; preds = %bb.ad
  %.not.i.i129 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i129, label %lean_dec.exit131, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #7
  br label %lean_dec.exit131

lean_dec.exit131:                                 ; preds = %bb.ae, %bb.af, %bb.ag
  br i1 %.not.i144, label %lean_dec.exit131.thread, label %lean_dec.exit127

lean_dec.exit131.thread:                          ; preds = %lean_int_emod.exit, %lean_dec.exit131
  %.1.i146250255 = phi ptr [ %i.bn, %lean_dec.exit131 ], [ %i.bm, %lean_int_emod.exit ] ; 3 uses
  %i.br = load i32, ptr %.0.i142, align 4, !tbaa !12 ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %bb.ah, label %bb.ai, !prof !10

bb.ah:                                            ; preds = %lean_dec.exit131.thread
  %i.bt = add nsw i32 %i.br, -1
  store i32 %i.bt, ptr %.0.i142, align 4, !tbaa !12
  br label %lean_dec.exit127

bb.ai:                                            ; preds = %lean_dec.exit131.thread
  %.not.i.i125 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i125, label %lean_dec.exit127, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i142) #7
  br label %lean_dec.exit127

lean_dec.exit127:                                 ; preds = %bb.z, %bb.ab, %bb.ac, %bb.ah, %bb.ai, %bb.aj, %lean_dec.exit131
  %.1.i146250254 = phi ptr [ %.1.i146250255, %bb.ah ], [ %.1.i146250255, %bb.ai ], [ %.1.i146250255, %bb.aj ], [ %i.bn, %lean_dec.exit131 ], [ %i.bl, %bb.ac ], [ %i.bk, %bb.ab ], [ %.0.i142, %bb.z ] ; 7 uses
  %i.bu = load atomic i32, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once seq_cst, align 4, !tbaa !18
  %i.bv = icmp eq i32 %i.bu, 1
  br i1 %i.bv, label %bb.ak, label %bb.al, !prof !10

bb.ak:                                            ; preds = %lean_dec.exit127
  %i.bw = load ptr, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit

bb.al:                                            ; preds = %lean_dec.exit127
  %i.bx = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.ak, %bb.al
  %.0.i148 = phi ptr [ %i.bw, %bb.ak ], [ %i.bx, %bb.al ] ; 3 uses
  %i.by = ptrtoint ptr %.1.i146250254 to i64
  %i.bz = ptrtoint ptr %.0.i148 to i64
  %i.ca = and i64 %i.by, 1                        ; 2 uses
  %i.cb = and i64 %i.ca, %i.bz
  %or.cond.not.i.i = icmp eq i64 %i.cb, 0
  br i1 %or.cond.not.i.i, label %lean_int_dec_eq.exit, label %.split, !prof !15

.split:                                           ; preds = %lean_obj_once.exit
  %i.cc = icmp eq ptr %.1.i146250254, %.0.i148
  br i1 %i.cc, label %bb.aq, label %bb.am

lean_int_dec_eq.exit:                             ; preds = %lean_obj_once.exit
  %i.cd = tail call zeroext i1 @lean_int_big_eq(ptr noundef %.1.i146250254, ptr noundef %.0.i148) #7
  br i1 %i.cd, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %.split, %lean_int_dec_eq.exit
  %i.ce = load atomic i32, ptr @l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0_once seq_cst, align 4, !tbaa !18
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.an, label %bb.ao, !prof !10

bb.an:                                            ; preds = %bb.am
  %i.cg = load ptr, ptr @l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit150

bb.ao:                                            ; preds = %bb.am
  %i.ch = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0) #7
  br label %lean_obj_once.exit150

lean_obj_once.exit150:                            ; preds = %bb.an, %bb.ao
  %.0.i149 = phi ptr [ %i.cg, %bb.an ], [ %i.ch, %bb.ao ]
  tail call void @lean_inc_heartbeat() #7
  %i.ci = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #7 ; 7 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.ap, label %lean_alloc_ctor.exit

bb.ap:                                            ; preds = %lean_obj_once.exit150
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit150
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 1, ptr %i.ci, align 4, !tbaa !12
  store i32 16973856, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %.1.i146250254, ptr %i.cl, align 8, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %1, ptr %i.cm, align 8, !tbaa !14
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store ptr %.0.i149, ptr %i.cn, align 8, !tbaa !14
  br label %lean_obj_once.exit152

bb.aq:                                            ; preds = %.split, %lean_int_dec_eq.exit
  %.not.i120 = icmp eq i64 %i.ca, 0
  br i1 %.not.i120, label %bb.ar, label %lean_dec.exit123

bb.ar:                                            ; preds = %bb.aq
  %i.co = load i32, ptr %.1.i146250254, align 4, !tbaa !12 ; 3 uses
  %i.cp = icmp sgt i32 %i.co, 1
  br i1 %i.cp, label %bb.as, label %bb.at, !prof !10

bb.as:                                            ; preds = %bb.ar
  %i.cq = add nsw i32 %i.co, -1
  store i32 %i.cq, ptr %.1.i146250254, align 4, !tbaa !12
  br label %lean_dec.exit123

bb.at:                                            ; preds = %bb.ar
  %.not.i.i121 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i121, label %lean_dec.exit123, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i146250254) #7
  br label %lean_dec.exit123

lean_dec.exit123:                                 ; preds = %bb.as, %bb.at, %bb.au, %bb.aq
  %i.cr = ptrtoint ptr %1 to i64
  %i.cs = and i64 %i.cr, 1
  %.not.i116 = icmp eq i64 %i.cs, 0
  br i1 %.not.i116, label %bb.av, label %lean_dec.exit119

bb.av:                                            ; preds = %lean_dec.exit123
  %i.ct = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.cu = icmp sgt i32 %i.ct, 1
  br i1 %i.cu, label %bb.aw, label %bb.ax, !prof !10

bb.aw:                                            ; preds = %bb.av
  %i.cv = add nsw i32 %i.ct, -1
  store i32 %i.cv, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit119

bb.ax:                                            ; preds = %bb.av
  %.not.i.i117 = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i117, label %lean_dec.exit119, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit119

lean_dec.exit119:                                 ; preds = %bb.aw, %bb.ax, %bb.ay, %lean_dec.exit123
  %i.cw = load atomic i32, ptr @l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0_once seq_cst, align 4, !tbaa !18
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %bb.az, label %bb.ba, !prof !10

bb.az:                                            ; preds = %lean_dec.exit119
  %i.cy = load ptr, ptr @l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit152

bb.ba:                                            ; preds = %lean_dec.exit119
  %i.cz = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0) #7
  br label %lean_obj_once.exit152

bb.bb:                                            ; preds = %lean_obj_tag.exit
  %i.da = getelementptr inbounds nuw i8, ptr %.081, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !14 ; 9 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.081, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !14 ; 6 uses
  %.081.val = load i32, ptr %.081, align 8, !tbaa !12
  %i.de = icmp eq i32 %.081.val, 1                ; 2 uses
  br i1 %i.de, label %lean_dec.exit115, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = and i64 %i.df, 1
  %.not.i91 = icmp eq i64 %i.dg, 0
  br i1 %.not.i91, label %bb.bd, label %lean_inc.exit92

bb.bd:                                            ; preds = %bb.bc
  %.val.i.i153 = load i32, ptr %i.dd, align 4, !tbaa !12 ; 3 uses
  %i.dh = icmp sgt i32 %.val.i.i153, 0
  br i1 %i.dh, label %bb.be, label %bb.bf, !prof !10

bb.be:                                            ; preds = %bb.bd
  %i.di = add nuw i32 %.val.i.i153, 1
  store i32 %i.di, ptr %i.dd, align 4, !tbaa !12
  br label %lean_inc.exit92

bb.bf:                                            ; preds = %bb.bd
  %.not.i.i154 = icmp eq i32 %.val.i.i153, 0
  br i1 %.not.i.i154, label %lean_inc.exit92, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dj = atomicrmw add ptr %i.dd, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit92

lean_inc.exit92:                                  ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc
  %i.dk = ptrtoint ptr %i.db to i64
  %i.dl = and i64 %i.dk, 1
  %.not.i89 = icmp eq i64 %i.dl, 0
  br i1 %.not.i89, label %bb.bh, label %lean_inc.exit90

bb.bh:                                            ; preds = %lean_inc.exit92
  %.val.i.i156 = load i32, ptr %i.db, align 4, !tbaa !12 ; 3 uses
  %i.dm = icmp sgt i32 %.val.i.i156, 0
  br i1 %i.dm, label %bb.bi, label %bb.bj, !prof !10

bb.bi:                                            ; preds = %bb.bh
  %i.dn = add nuw i32 %.val.i.i156, 1
  store i32 %i.dn, ptr %i.db, align 4, !tbaa !12
  br label %lean_inc.exit90

bb.bj:                                            ; preds = %bb.bh
  %.not.i.i157 = icmp eq i32 %.val.i.i156, 0
  br i1 %.not.i.i157, label %lean_inc.exit90, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.do = atomicrmw add ptr %i.db, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit90

lean_inc.exit90:                                  ; preds = %bb.bk, %bb.bj, %bb.bi, %lean_inc.exit92
  %i.dp = ptrtoint ptr %i.q to i64
  %i.dq = and i64 %i.dp, 1
  %.not.i87 = icmp eq i64 %i.dq, 0
  br i1 %.not.i87, label %bb.bl, label %lean_inc.exit88

bb.bl:                                            ; preds = %lean_inc.exit90
  %.val.i.i159 = load i32, ptr %i.q, align 4, !tbaa !12 ; 3 uses
  %i.dr = icmp sgt i32 %.val.i.i159, 0
  br i1 %i.dr, label %bb.bm, label %bb.bn, !prof !10

bb.bm:                                            ; preds = %bb.bl
  %i.ds = add nuw i32 %.val.i.i159, 1
  store i32 %i.ds, ptr %i.q, align 4, !tbaa !12
  br label %lean_inc.exit88

bb.bn:                                            ; preds = %bb.bl
  %.not.i.i160 = icmp eq i32 %.val.i.i159, 0
  br i1 %.not.i.i160, label %lean_inc.exit88, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.dt = atomicrmw add ptr %i.q, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit88

lean_inc.exit88:                                  ; preds = %bb.bo, %bb.bn, %bb.bm, %lean_inc.exit90
  br i1 %.not.i136, label %bb.bp, label %lean_dec.exit115

bb.bp:                                            ; preds = %lean_inc.exit88
  %i.du = load i32, ptr %.081, align 8, !tbaa !12 ; 3 uses
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %bb.bq, label %bb.br, !prof !10

bb.bq:                                            ; preds = %bb.bp
  %i.dw = add nsw i32 %i.du, -1
  store i32 %i.dw, ptr %.081, align 8, !tbaa !12
  br label %lean_dec.exit115

bb.br:                                            ; preds = %bb.bp
  %.not.i.i113 = icmp eq i32 %i.du, 0
  br i1 %.not.i.i113, label %lean_dec.exit115, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.081) #7
  br label %lean_dec.exit115

lean_dec.exit115:                                 ; preds = %lean_inc.exit88, %bb.bs, %bb.br, %bb.bq, %bb.bb
  %.080 = phi ptr [ %.081, %bb.bb ], [ inttoptr (i64 1 to ptr), %bb.bq ], [ inttoptr (i64 1 to ptr), %bb.br ], [ inttoptr (i64 1 to ptr), %bb.bs ], [ inttoptr (i64 1 to ptr), %lean_inc.exit88 ] ; 6 uses
  %.pre212 = ptrtoint ptr %i.q to i64             ; 2 uses
  %.pre213 = and i64 %.pre212, 1
  %i.dx = icmp eq i64 %.pre213, 0                 ; 2 uses
  br i1 %.not.i162, label %lean_int_mul.exit166, label %bb.bt, !prof !9

bb.bt:                                            ; preds = %lean_dec.exit115
  br i1 %i.dx, label %lean_int_mul.exit166.thread261, label %bb.bu, !prof !9

lean_int_mul.exit166.thread261:                   ; preds = %bb.bt
  %i.dy = tail call ptr @lean_int_big_mul(ptr noundef %0, ptr noundef %i.q) #7
  br label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.dz = shl i64 %.pre212, 31
  %i.ea = ashr i64 %i.dz, 32
  %i.eb = mul nsw i64 %i.ea, %i.d                 ; 3 uses
  %i.ec = add nsw i64 %i.eb, 2147483648
  %i.ed = icmp ult i64 %i.ec, 4294967296
  br i1 %i.ed, label %bb.bv, label %bb.bw, !prof !10

bb.bv:                                            ; preds = %bb.bu
  %i.ee = shl nsw i64 %i.eb, 1
  %i.ef = and i64 %i.ee, 8589934590
  %i.eg = or disjoint i64 %i.ef, 1
  %i.eh = inttoptr i64 %i.eg to ptr
  br label %lean_dec.exit111

bb.bw:                                            ; preds = %bb.bu
  %i.ei = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.eb) #7
  br label %lean_dec.exit111

lean_int_mul.exit166:                             ; preds = %lean_dec.exit115
  %i.ej = tail call ptr @lean_int_big_mul(ptr noundef %0, ptr noundef %i.q) #7 ; 2 uses
  br i1 %i.dx, label %bb.bx, label %lean_dec.exit111

bb.bx:                                            ; preds = %lean_int_mul.exit166.thread261, %lean_int_mul.exit166
  %i.ek = phi ptr [ %i.dy, %lean_int_mul.exit166.thread261 ], [ %i.ej, %lean_int_mul.exit166 ] ; 3 uses
  %i.el = load i32, ptr %i.q, align 4, !tbaa !12  ; 3 uses
  %i.em = icmp sgt i32 %i.el, 1
  br i1 %i.em, label %bb.by, label %bb.bz, !prof !10

bb.by:                                            ; preds = %bb.bx
  %i.en = add nsw i32 %i.el, -1
  store i32 %i.en, ptr %i.q, align 4, !tbaa !12
  br label %lean_dec.exit111

bb.bz:                                            ; preds = %bb.bx
  %.not.i.i109 = icmp eq i32 %i.el, 0
  br i1 %.not.i.i109, label %lean_dec.exit111, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #7
  br label %lean_dec.exit111

lean_dec.exit111:                                 ; preds = %bb.bw, %bb.bv, %bb.by, %bb.bz, %bb.ca, %lean_int_mul.exit166
  %.0.i164260 = phi ptr [ %i.ej, %lean_int_mul.exit166 ], [ %i.ek, %bb.by ], [ %i.ek, %bb.bz ], [ %i.ek, %bb.ca ], [ %i.ei, %bb.bw ], [ %i.eh, %bb.bv ] ; 7 uses
  br i1 %.not.i85, label %bb.cb, label %lean_inc.exit86

bb.cb:                                            ; preds = %lean_dec.exit111
  %.val.i.i167 = load i32, ptr %2, align 4, !tbaa !12 ; 3 uses
  %i.eo = icmp sgt i32 %.val.i.i167, 0
  br i1 %i.eo, label %bb.cc, label %bb.cd, !prof !10

bb.cc:                                            ; preds = %bb.cb
  %i.ep = add nuw i32 %.val.i.i167, 1
  store i32 %i.ep, ptr %2, align 4, !tbaa !12
  br label %lean_nat_to_int.exit173

bb.cd:                                            ; preds = %bb.cb
  %.not.i.i168 = icmp eq i32 %.val.i.i167, 0
  br i1 %.not.i.i168, label %lean_nat_to_int.exit173, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.eq = atomicrmw add ptr %2, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_nat_to_int.exit173

lean_inc.exit86:                                  ; preds = %lean_dec.exit111
  br i1 %or.cond.i171, label %lean_nat_to_int.exit173, label %bb.cf

bb.cf:                                            ; preds = %lean_inc.exit86
  %i.er = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.h) #7
  br label %lean_nat_to_int.exit173

lean_nat_to_int.exit173:                          ; preds = %bb.cc, %bb.cd, %bb.ce, %lean_inc.exit86, %bb.cf
  %.1.i172 = phi ptr [ %2, %lean_inc.exit86 ], [ %i.er, %bb.cf ], [ %2, %bb.ce ], [ %2, %bb.cd ], [ %2, %bb.cc ] ; 6 uses
  %i.es = ptrtoint ptr %.0.i164260 to i64         ; 2 uses
  %i.et = and i64 %i.es, 1
  %.not.i174 = icmp eq i64 %i.et, 0               ; 2 uses
  %.pre214 = ptrtoint ptr %.1.i172 to i64         ; 2 uses
  %.pre215 = and i64 %.pre214, 1
  %i.eu = icmp eq i64 %.pre215, 0                 ; 2 uses
  br i1 %.not.i174, label %lean_int_emod.exit180, label %bb.cg, !prof !9

bb.cg:                                            ; preds = %lean_nat_to_int.exit173
  br i1 %i.eu, label %lean_int_emod.exit180.thread266, label %bb.ch, !prof !9

lean_int_emod.exit180.thread266:                  ; preds = %bb.cg
  %i.ev = tail call ptr @lean_int_big_emod(ptr noundef %.0.i164260, ptr noundef %.1.i172) #7
  br label %bb.cl

bb.ch:                                            ; preds = %bb.cg
  %i.ew = shl i64 %.pre214, 31
  %i.ex = ashr i64 %i.ew, 32                      ; 3 uses
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %lean_dec.exit103, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ez = shl i64 %i.es, 31
  %i.fa = ashr i64 %i.ez, 32
  %i.fb = srem i64 %i.fa, %i.ex                   ; 2 uses
  %i.fc = icmp slt i64 %i.fb, 0
  %.p.i176 = tail call i64 @llvm.abs.i64(i64 %i.ex, i1 true)
  %i.fd = select i1 %i.fc, i64 %.p.i176, i64 0
  %.0.i177 = add nsw i64 %i.fd, %i.fb             ; 3 uses
  %6 = icmp slt i64 %.0.i177, 2147483648
  br i1 %6, label %bb.cj, label %bb.ck, !prof !10

bb.cj:                                            ; preds = %bb.ci
  %i.fe = shl nsw i64 %.0.i177, 1
  %7 = and i64 %i.fe, 8589934590
  %i.ff = or disjoint i64 %7, 1
  %i.fg = inttoptr i64 %i.ff to ptr
  br label %lean_dec.exit103

bb.ck:                                            ; preds = %bb.ci
  %i.fh = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i177) #7
  br label %lean_dec.exit103

lean_int_emod.exit180:                            ; preds = %lean_nat_to_int.exit173
  %i.fi = tail call ptr @lean_int_big_emod(ptr noundef %.0.i164260, ptr noundef %.1.i172) #7 ; 2 uses
  br i1 %i.eu, label %bb.cl, label %lean_dec.exit107.thread

bb.cl:                                            ; preds = %lean_int_emod.exit180.thread266, %lean_int_emod.exit180
  %i.fj = phi ptr [ %i.ev, %lean_int_emod.exit180.thread266 ], [ %i.fi, %lean_int_emod.exit180 ] ; 2 uses
  %i.fk = load i32, ptr %.1.i172, align 4, !tbaa !12 ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, 1
  br i1 %i.fl, label %bb.cm, label %bb.cn, !prof !10

bb.cm:                                            ; preds = %bb.cl
  %i.fm = add nsw i32 %i.fk, -1
  store i32 %i.fm, ptr %.1.i172, align 4, !tbaa !12
  br label %lean_dec.exit107

bb.cn:                                            ; preds = %bb.cl
  %.not.i.i105 = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i105, label %lean_dec.exit107, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i172) #7
  br label %lean_dec.exit107

lean_dec.exit107:                                 ; preds = %bb.cm, %bb.cn, %bb.co
  br i1 %.not.i174, label %lean_dec.exit107.thread, label %lean_dec.exit103

lean_dec.exit107.thread:                          ; preds = %lean_int_emod.exit180, %lean_dec.exit107
  %.1.i178265270 = phi ptr [ %i.fj, %lean_dec.exit107 ], [ %i.fi, %lean_int_emod.exit180 ] ; 3 uses
  %i.fn = load i32, ptr %.0.i164260, align 4, !tbaa !12 ; 3 uses
  %i.fo = icmp sgt i32 %i.fn, 1
  br i1 %i.fo, label %bb.cp, label %bb.cq, !prof !10

bb.cp:                                            ; preds = %lean_dec.exit107.thread
  %i.fp = add nsw i32 %i.fn, -1
  store i32 %i.fp, ptr %.0.i164260, align 4, !tbaa !12
  br label %lean_dec.exit103

bb.cq:                                            ; preds = %lean_dec.exit107.thread
  %.not.i.i101 = icmp eq i32 %i.fn, 0
  br i1 %.not.i.i101, label %lean_dec.exit103, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i164260) #7
  br label %lean_dec.exit103

lean_dec.exit103:                                 ; preds = %bb.ch, %bb.cj, %bb.ck, %bb.cp, %bb.cq, %bb.cr, %lean_dec.exit107
  %.1.i178265269 = phi ptr [ %.1.i178265270, %bb.cp ], [ %.1.i178265270, %bb.cq ], [ %.1.i178265270, %bb.cr ], [ %i.fj, %lean_dec.exit107 ], [ %i.fh, %bb.ck ], [ %i.fg, %bb.cj ], [ %.0.i164260, %bb.ch ] ; 8 uses
  %i.fq = load atomic i32, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once seq_cst, align 4, !tbaa !18
  %i.fr = icmp eq i32 %i.fq, 1
  br i1 %i.fr, label %bb.cs, label %bb.ct, !prof !10

bb.cs:                                            ; preds = %lean_dec.exit103
  %i.fs = load ptr, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit182

bb.ct:                                            ; preds = %lean_dec.exit103
  %i.ft = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0) #7
  br label %lean_obj_once.exit182

lean_obj_once.exit182:                            ; preds = %bb.cs, %bb.ct
  %.0.i181 = phi ptr [ %i.fs, %bb.cs ], [ %i.ft, %bb.ct ] ; 3 uses
  %i.fu = ptrtoint ptr %.1.i178265269 to i64
  %i.fv = ptrtoint ptr %.0.i181 to i64
  %i.fw = and i64 %i.fu, 1                        ; 2 uses
  %i.fx = and i64 %i.fw, %i.fv
  %or.cond.not.i.i183 = icmp eq i64 %i.fx, 0
  br i1 %or.cond.not.i.i183, label %lean_int_dec_eq.exit186, label %.split273, !prof !15

.split273:                                        ; preds = %lean_obj_once.exit182
  %i.fy = icmp eq ptr %.1.i178265269, %.0.i181
  br i1 %i.fy, label %bb.dc, label %bb.cu

lean_int_dec_eq.exit186:                          ; preds = %lean_obj_once.exit182
  %i.fz = tail call zeroext i1 @lean_int_big_eq(ptr noundef %.1.i178265269, ptr noundef %.0.i181) #7
  br i1 %i.fz, label %bb.dc, label %bb.cu

bb.cu:                                            ; preds = %.split273, %lean_int_dec_eq.exit186
  %i.ga = ptrtoint ptr %1 to i64
  %i.gb = and i64 %i.ga, 1
  %.not.i = icmp eq i64 %i.gb, 0
  br i1 %.not.i, label %bb.cv, label %lean_inc.exit

bb.cv:                                            ; preds = %bb.cu
  %.val.i.i187 = load i32, ptr %1, align 4, !tbaa !12 ; 3 uses
  %i.gc = icmp sgt i32 %.val.i.i187, 0
  br i1 %i.gc, label %bb.cw, label %bb.cx, !prof !10

bb.cw:                                            ; preds = %bb.cv
  %i.gd = add nuw i32 %.val.i.i187, 1
  store i32 %i.gd, ptr %1, align 4, !tbaa !12
  br label %lean_inc.exit

bb.cx:                                            ; preds = %bb.cv
  %.not.i.i188 = icmp eq i32 %.val.i.i187, 0
  br i1 %.not.i.i188, label %lean_inc.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ge = atomicrmw add ptr %1, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cu
  %i.gf = tail call ptr @l_Lean_Grind_CommRing_Mon_mul_go(ptr noundef nonnull inttoptr (i64 2000001 to ptr), ptr noundef %1, ptr noundef %i.db) ; 2 uses
  %i.gg = tail call ptr @l_Lean_Grind_CommRing_Poly_mulMonC_go(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.dd) ; 2 uses
  br i1 %i.de, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %lean_inc.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %.080, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %.080, i64 24
  store ptr %i.gg, ptr %i.gi, align 8, !tbaa !14
  %i.gj = getelementptr inbounds nuw i8, ptr %.080, i64 16
  store ptr %i.gf, ptr %i.gj, align 8, !tbaa !14
  store ptr %.1.i178265269, ptr %i.gh, align 8, !tbaa !14
  br label %lean_obj_once.exit152

bb.da:                                            ; preds = %lean_inc.exit
  tail call void @lean_inc_heartbeat() #7
  %i.gk = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #7 ; 7 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.db, label %lean_alloc_ctor.exit190

bb.db:                                            ; preds = %bb.da
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit190:                          ; preds = %bb.da
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store i32 1, ptr %i.gk, align 4, !tbaa !12
  store i32 16973856, ptr %i.gm, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store ptr %.1.i178265269, ptr %i.gn, align 8, !tbaa !14
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store ptr %i.gf, ptr %i.go, align 8, !tbaa !14
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  store ptr %i.gg, ptr %i.gp, align 8, !tbaa !14
  br label %lean_obj_once.exit152

bb.dc:                                            ; preds = %.split273, %lean_int_dec_eq.exit186
  %.not.i96 = icmp eq i64 %i.fw, 0
  br i1 %.not.i96, label %bb.dd, label %lean_dec.exit99

bb.dd:                                            ; preds = %bb.dc
  %i.gq = load i32, ptr %.1.i178265269, align 4, !tbaa !12 ; 3 uses
  %i.gr = icmp sgt i32 %i.gq, 1
  br i1 %i.gr, label %bb.de, label %bb.df, !prof !10

bb.de:                                            ; preds = %bb.dd
  %i.gs = add nsw i32 %i.gq, -1
  store i32 %i.gs, ptr %.1.i178265269, align 4, !tbaa !12
  br label %lean_dec.exit99

bb.df:                                            ; preds = %bb.dd
  %.not.i.i97 = icmp eq i32 %i.gq, 0
  br i1 %.not.i.i97, label %lean_dec.exit99, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i178265269) #7
  br label %lean_dec.exit99

lean_dec.exit99:                                  ; preds = %bb.de, %bb.df, %bb.dg, %bb.dc
  %i.gt = ptrtoint ptr %.080 to i64
  %i.gu = and i64 %i.gt, 1
  %.not.i191 = icmp eq i64 %i.gu, 0
  br i1 %.not.i191, label %bb.dh, label %lean_del_object.exit

bb.dh:                                            ; preds = %lean_dec.exit99
  tail call void @lean_free_object(ptr noundef nonnull %.080) #7
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %lean_dec.exit99, %bb.dh
  %i.gv = ptrtoint ptr %i.db to i64
  %i.gw = and i64 %i.gv, 1
  %.not.i95 = icmp eq i64 %i.gw, 0
  br i1 %.not.i95, label %bb.di, label %lean_dec.exit.backedge

lean_dec.exit.backedge:                           ; preds = %lean_del_object.exit, %bb.dl, %bb.dk, %bb.dj
  br label %lean_dec.exit

bb.di:                                            ; preds = %lean_del_object.exit
  %i.gx = load i32, ptr %i.db, align 4, !tbaa !12 ; 3 uses
  %i.gy = icmp sgt i32 %i.gx, 1
  br i1 %i.gy, label %bb.dj, label %bb.dk, !prof !10

bb.dj:                                            ; preds = %bb.di
  %i.gz = add nsw i32 %i.gx, -1
  store i32 %i.gz, ptr %i.db, align 4, !tbaa !12
  br label %lean_dec.exit.backedge

bb.dk:                                            ; preds = %bb.di
  %.not.i.i = icmp eq i32 %i.gx, 0
  br i1 %.not.i.i, label %lean_dec.exit.backedge, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.db) #7
  br label %lean_dec.exit.backedge

lean_obj_once.exit152:                            ; preds = %bb.cz, %lean_alloc_ctor.exit190, %bb.ba, %bb.az, %lean_alloc_ctor.exit
  %.4 = phi ptr [ %i.cz, %bb.ba ], [ %i.ci, %lean_alloc_ctor.exit ], [ %i.cy, %bb.az ], [ %.080, %bb.cz ], [ %i.gk, %lean_alloc_ctor.exit190 ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_CommRing_Poly_mulMonC_go___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @l_Lean_Grind_CommRing_Poly_mulMonC_go(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_CommRing_Poly_mulMonC(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i28 = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.i28, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %3, align 4, !tbaa !12
  br label %lean_nat_to_int.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i54 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i54, label %lean_nat_to_int.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw add ptr %3, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_nat_to_int.exit

lean_inc.exit:                                    ; preds = %bb.a
  %i.f = icmp ult ptr %3, inttoptr (i64 4294967296 to ptr)
  br i1 %i.f, label %lean_nat_to_int.exit, label %bb.f

bb.f:                                             ; preds = %lean_inc.exit
  %i.g = lshr i64 %i.a, 1
  %i.h = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.g) #7
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %lean_inc.exit, %bb.f
  %.1.i = phi ptr [ %3, %lean_inc.exit ], [ %i.h, %bb.f ], [ %3, %bb.e ], [ %3, %bb.d ], [ %3, %bb.c ] ; 6 uses
  %i.i = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i56 = icmp eq i64 %i.j, 0
  %.pre63 = ptrtoint ptr %.1.i to i64             ; 2 uses
  %.pre = and i64 %.pre63, 1
  %i.k = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i56, label %lean_int_emod.exit, label %bb.g, !prof !9

bb.g:                                             ; preds = %lean_nat_to_int.exit
  br i1 %i.k, label %lean_int_emod.exit.thread86, label %bb.h, !prof !9

lean_int_emod.exit.thread86:                      ; preds = %bb.g
  %i.l = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %.1.i) #7
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.m = shl i64 %.pre63, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_dec.exit53, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i = add nsw i64 %i.t, %i.r                  ; 3 uses
  %4 = icmp slt i64 %.0.i, 2147483648
  br i1 %4, label %bb.j, label %bb.k, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.u = shl nsw i64 %.0.i, 1
  %5 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %5, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_dec.exit53

bb.k:                                             ; preds = %bb.i
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i) #7
  br label %lean_dec.exit53

lean_int_emod.exit:                               ; preds = %lean_nat_to_int.exit
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %.1.i) #7 ; 2 uses
  br i1 %i.k, label %bb.l, label %lean_dec.exit53

bb.l:                                             ; preds = %lean_int_emod.exit.thread86, %lean_int_emod.exit
  %i.z = phi ptr [ %i.l, %lean_int_emod.exit.thread86 ], [ %i.y, %lean_int_emod.exit ] ; 3 uses
  %i.aa = load i32, ptr %.1.i, align 4, !tbaa !12 ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %bb.l
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %.1.i, align 4, !tbaa !12
  br label %lean_dec.exit53

bb.n:                                             ; preds = %bb.l
  %.not.i.i51 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i51, label %lean_dec.exit53, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #7
  br label %lean_dec.exit53

lean_dec.exit53:                                  ; preds = %bb.k, %bb.j, %bb.h, %bb.m, %bb.n, %bb.o, %lean_int_emod.exit
  %.1.i5785 = phi ptr [ %i.y, %lean_int_emod.exit ], [ %i.z, %bb.m ], [ %i.z, %bb.n ], [ %i.z, %bb.o ], [ %i.x, %bb.k ], [ %i.w, %bb.j ], [ %0, %bb.h ] ; 13 uses
  %i.ad = load atomic i32, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once seq_cst, align 4, !tbaa !18
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.p, label %bb.q, !prof !10

bb.p:                                             ; preds = %lean_dec.exit53
  %i.af = load ptr, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit

bb.q:                                             ; preds = %lean_dec.exit53
  %i.ag = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.p, %bb.q
  %.0.i58 = phi ptr [ %i.af, %bb.p ], [ %i.ag, %bb.q ] ; 3 uses
  %i.ah = ptrtoint ptr %.1.i5785 to i64
  %i.ai = ptrtoint ptr %.0.i58 to i64
  %i.aj = and i64 %i.ah, 1                        ; 4 uses
  %i.ak = and i64 %i.aj, %i.ai
  %or.cond.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %or.cond.not.i.i, label %lean_int_dec_eq.exit, label %.split, !prof !15

.split:                                           ; preds = %lean_obj_once.exit
  %i.al = icmp eq ptr %.1.i5785, %.0.i58
  br i1 %i.al, label %bb.ag, label %bb.r

lean_int_dec_eq.exit:                             ; preds = %lean_obj_once.exit
  %i.am = tail call zeroext i1 @lean_int_big_eq(ptr noundef %.1.i5785, ptr noundef %.0.i58) #7
  br i1 %i.am, label %bb.ag, label %bb.r

bb.r:                                             ; preds = %.split, %lean_int_dec_eq.exit
  %i.an = tail call zeroext i8 @l_Lean_Grind_CommRing_instBEqMon_beq(ptr noundef %1, ptr noundef nonnull inttoptr (i64 1 to ptr))
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %.not.i46 = icmp eq i64 %i.aj, 0
  br i1 %.not.i46, label %bb.t, label %lean_dec.exit49

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %.1.i5785, align 4, !tbaa !12 ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %bb.t
  %i.ar = add nsw i32 %i.ap, -1
  store i32 %i.ar, ptr %.1.i5785, align 4, !tbaa !12
  br label %lean_dec.exit49

bb.v:                                             ; preds = %bb.t
  %.not.i.i47 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i47, label %lean_dec.exit49, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i5785) #7
  br label %lean_dec.exit49

lean_dec.exit49:                                  ; preds = %bb.u, %bb.v, %bb.w, %bb.s
  %i.as = tail call ptr @l_Lean_Grind_CommRing_Poly_mulMonC_go(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %2)
  br label %lean_dec.exit41

bb.x:                                             ; preds = %bb.r
  %i.at = ptrtoint ptr %1 to i64
  %i.au = and i64 %i.at, 1
  %.not.i42 = icmp eq i64 %i.au, 0
  br i1 %.not.i42, label %bb.y, label %lean_dec.exit45

bb.y:                                             ; preds = %bb.x
  %i.av = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %bb.z, label %bb.aa, !prof !10

bb.z:                                             ; preds = %bb.y
  %i.ax = add nsw i32 %i.av, -1
  store i32 %i.ax, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit45

bb.aa:                                            ; preds = %bb.y
  %.not.i.i43 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i43, label %lean_dec.exit45, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit45

lean_dec.exit45:                                  ; preds = %bb.z, %bb.aa, %bb.ab, %bb.x
  %i.ay = tail call ptr @l_Lean_Grind_CommRing_Poly_mulConstC(ptr noundef %.1.i5785, ptr noundef %2, ptr noundef %3) ; 4 uses
  %.not.i38 = icmp eq i64 %i.aj, 0
  br i1 %.not.i38, label %bb.ac, label %lean_dec.exit41

bb.ac:                                            ; preds = %lean_dec.exit45
  %i.az = load i32, ptr %.1.i5785, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ad, label %bb.ae, !prof !10

bb.ad:                                            ; preds = %bb.ac
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %.1.i5785, align 4, !tbaa !12
  br label %lean_dec.exit41

bb.ae:                                            ; preds = %bb.ac
  %.not.i.i39 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i39, label %lean_dec.exit41, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i5785) #7
  br label %lean_dec.exit41

bb.ag:                                            ; preds = %.split, %lean_int_dec_eq.exit
  %.not.i34 = icmp eq i64 %i.aj, 0
  br i1 %.not.i34, label %bb.ah, label %lean_dec.exit37

bb.ah:                                            ; preds = %bb.ag
  %i.bc = load i32, ptr %.1.i5785, align 4, !tbaa !12 ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 1
  br i1 %i.bd, label %bb.ai, label %bb.aj, !prof !10

bb.ai:                                            ; preds = %bb.ah
  %i.be = add nsw i32 %i.bc, -1
  store i32 %i.be, ptr %.1.i5785, align 4, !tbaa !12
  br label %lean_dec.exit37

bb.aj:                                            ; preds = %bb.ah
  %.not.i.i35 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i35, label %lean_dec.exit37, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i5785) #7
  br label %lean_dec.exit37

lean_dec.exit37:                                  ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.ag
  br i1 %.not.i28, label %bb.al, label %lean_dec.exit33

bb.al:                                            ; preds = %lean_dec.exit37
  %i.bf = load i32, ptr %3, align 4, !tbaa !12    ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 1
  br i1 %i.bg, label %bb.am, label %bb.an, !prof !10

bb.am:                                            ; preds = %bb.al
  %i.bh = add nsw i32 %i.bf, -1
  store i32 %i.bh, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit33

bb.an:                                            ; preds = %bb.al
  %.not.i.i31 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i31, label %lean_dec.exit33, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit33

lean_dec.exit33:                                  ; preds = %bb.am, %bb.an, %bb.ao, %lean_dec.exit37
  %i.bi = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %bb.ap, label %bb.aq, !prof !10

bb.ap:                                            ; preds = %lean_dec.exit33
  %i.bk = add nsw i32 %i.bi, -1
  store i32 %i.bk, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.aq:                                            ; preds = %lean_dec.exit33
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec_ref.exit

end_hunk_3
begin_hunk_4_@l_Lean_Grind_CommRing_Poly_mulMonC__nc_go:bb.a
  %i.e = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i41 = icmp eq i64 %i.f, 0                 ; 2 uses
  %i.g = icmp ult ptr %2, inttoptr (i64 4294967296 to ptr)
  %or.cond.i111 = or i1 %i.g, %.not.i41           ; 2 uses
  %i.h = lshr i64 %i.e, 1                         ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br label %bb.b

bb.b:                                             ; preds = %lean_inc.exit, %bb.a
  %.040 = phi ptr [ %4, %bb.a ], [ %i.fd, %lean_inc.exit ] ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.ch, %lean_inc.exit ] ; 15 uses
  %i.k = ptrtoint ptr %.0 to i64                  ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not.i70 = icmp eq i64 %i.l, 0
  br i1 %.not.i70, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = lshr i64 %i.k, 1
  %i.n = trunc i64 %i.m to i32
  br label %lean_obj_tag.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %.0, i64 4
  %.val.i = load i32, ptr %i.o, align 4
  %i.p = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.n, %bb.c ], [ %i.p, %bb.d ]
  %i.q = icmp eq i32 %.0.i, 0
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14   ; 15 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 5 uses
  %i.u = and i64 %i.t, 1
  %.not.i47 = icmp eq i64 %i.u, 0                 ; 4 uses
  br i1 %i.q, label %bb.e, label %bb.al

bb.e:                                             ; preds = %lean_obj_tag.exit
  br i1 %.not.i47, label %bb.f, label %lean_inc.exit48

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.s, align 4, !tbaa !12 ; 3 uses
  %i.v = icmp sgt i32 %.val.i.i, 0
  br i1 %i.v, label %bb.g, label %bb.h, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.w = add nuw i32 %.val.i.i, 1
  store i32 %i.w, ptr %i.s, align 4, !tbaa !12
  br label %lean_inc.exit48

bb.h:                                             ; preds = %bb.f
  %.not.i.i71 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i71, label %lean_inc.exit48, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = atomicrmw add ptr %i.s, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit48

lean_inc.exit48:                                  ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %.val.i72 = load i32, ptr %.0, align 8, !tbaa !12 ; 4 uses
  %i.y = icmp eq i32 %.val.i72, 1
  br i1 %i.y, label %.preheader.i, label %bb.n

.preheader.i:                                     ; preds = %lean_inc.exit48
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !14   ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, 1
  %.not.i7.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i7.i, label %bb.j, label %lean_dec.exit.i

bb.j:                                             ; preds = %.preheader.i
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !12  ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.k, label %bb.l, !prof !10

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %i.ac, -1
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.l:                                             ; preds = %bb.j
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #7
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.m, %bb.l, %bb.k, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %.0) #7
  br label %lean_dec_ref_known.exit

bb.n:                                             ; preds = %lean_inc.exit48
  %i.af = icmp sgt i32 %.val.i72, 1
  br i1 %i.af, label %bb.o, label %bb.p, !prof !10

bb.o:                                             ; preds = %bb.n
  %i.ag = add nsw i32 %.val.i72, -1
  store i32 %i.ag, ptr %.0, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.p:                                             ; preds = %bb.n
  %.not.i.i73 = icmp eq i32 %.val.i72, 0
  br i1 %.not.i.i73, label %lean_dec_ref_known.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0) #7
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.o, %bb.p, %bb.q
  %i.ah = and i64 %i.b, %i.t
  %or.cond.not.not = icmp eq i64 %i.ah, 0
  br i1 %or.cond.not.not, label %.critedge.i, label %bb.r, !prof !15

bb.r:                                             ; preds = %lean_dec_ref_known.exit
  %i.ai = shl i64 %i.t, 31
  %i.aj = ashr i64 %i.ai, 32
  %i.ak = mul nsw i64 %i.aj, %i.d                 ; 3 uses
  %i.al = add nsw i64 %i.ak, 2147483648
  %i.am = icmp ult i64 %i.al, 4294967296
  br i1 %i.am, label %bb.s, label %bb.t, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.an = shl nsw i64 %i.ak, 1
  %i.ao = and i64 %i.an, 8589934590
  %i.ap = or disjoint i64 %i.ao, 1
  %i.aq = inttoptr i64 %i.ap to ptr
  br label %lean_int_mul.exit

bb.t:                                             ; preds = %bb.r
  %i.ar = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ak) #7
  br label %lean_int_mul.exit

.critedge.i:                                      ; preds = %lean_dec_ref_known.exit
  %i.as = tail call ptr @lean_int_big_mul(ptr noundef %0, ptr noundef %i.s) #7
  br label %lean_int_mul.exit

lean_int_mul.exit:                                ; preds = %bb.s, %bb.t, %.critedge.i
  %.0.i76 = phi ptr [ %i.as, %.critedge.i ], [ %i.aq, %bb.s ], [ %i.ar, %bb.t ] ; 7 uses
  br i1 %.not.i47, label %bb.u, label %lean_dec.exit69

bb.u:                                             ; preds = %lean_int_mul.exit
  %i.at = load i32, ptr %i.s, align 4, !tbaa !12  ; 3 uses
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %bb.v, label %bb.w, !prof !10

bb.v:                                             ; preds = %bb.u
  %i.av = add nsw i32 %i.at, -1
  store i32 %i.av, ptr %i.s, align 4, !tbaa !12
  br label %lean_dec.exit69

bb.w:                                             ; preds = %bb.u
  %.not.i.i67 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i67, label %lean_dec.exit69, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.s) #7
  br label %lean_dec.exit69

lean_dec.exit69:                                  ; preds = %bb.v, %bb.w, %bb.x, %lean_int_mul.exit
  br i1 %or.cond.i111, label %lean_nat_to_int.exit, label %bb.y

bb.y:                                             ; preds = %lean_dec.exit69
  %i.aw = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.h) #7
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %lean_dec.exit69, %bb.y
  %.1.i = phi ptr [ %2, %lean_dec.exit69 ], [ %i.aw, %bb.y ] ; 6 uses
  %i.ax = ptrtoint ptr %.0.i76 to i64             ; 2 uses
  %i.ay = and i64 %i.ax, 1
  %.not.i78 = icmp eq i64 %i.ay, 0                ; 2 uses
  %.pre131 = ptrtoint ptr %.1.i to i64            ; 2 uses
  %.pre = and i64 %.pre131, 1
  %i.az = icmp eq i64 %.pre, 0                    ; 2 uses
  br i1 %.not.i78, label %lean_int_emod.exit, label %bb.z, !prof !9

bb.z:                                             ; preds = %lean_nat_to_int.exit
  br i1 %i.az, label %lean_int_emod.exit.thread162, label %bb.aa, !prof !9

lean_int_emod.exit.thread162:                     ; preds = %bb.z
  %i.ba = tail call ptr @lean_int_big_emod(ptr noundef %.0.i76, ptr noundef %.1.i) #7
  br label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.bb = shl i64 %.pre131, 31
  %i.bc = ashr i64 %i.bb, 32                      ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %lean_dec.exit61, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.be = shl i64 %i.ax, 31
  %i.bf = ashr i64 %i.be, 32
  %i.bg = srem i64 %i.bf, %i.bc                   ; 2 uses
  %i.bh = icmp slt i64 %i.bg, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.bc, i1 true)
  %i.bi = select i1 %i.bh, i64 %.p.i, i64 0
  %.0.i79 = add nsw i64 %i.bi, %i.bg              ; 3 uses
  %5 = icmp slt i64 %.0.i79, 2147483648
  br i1 %5, label %bb.ac, label %bb.ad, !prof !10

bb.ac:                                            ; preds = %bb.ab
  %i.bj = shl nsw i64 %.0.i79, 1
  %6 = and i64 %i.bj, 8589934590
  %i.bk = or disjoint i64 %6, 1
  %i.bl = inttoptr i64 %i.bk to ptr
  br label %lean_dec.exit61

bb.ad:                                            ; preds = %bb.ab
  %i.bm = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i79) #7
  br label %lean_dec.exit61

lean_int_emod.exit:                               ; preds = %lean_nat_to_int.exit
  %i.bn = tail call ptr @lean_int_big_emod(ptr noundef %.0.i76, ptr noundef %.1.i) #7 ; 2 uses
  br i1 %i.az, label %bb.ae, label %lean_dec.exit65.thread

bb.ae:                                            ; preds = %lean_int_emod.exit.thread162, %lean_int_emod.exit
  %i.bo = phi ptr [ %i.ba, %lean_int_emod.exit.thread162 ], [ %i.bn, %lean_int_emod.exit ] ; 2 uses
  %i.bp = load i32, ptr %.1.i, align 4, !tbaa !12 ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 1
  br i1 %i.bq, label %bb.af, label %bb.ag, !prof !10

bb.af:                                            ; preds = %bb.ae
  %i.br = add nsw i32 %i.bp, -1
  store i32 %i.br, ptr %.1.i, align 4, !tbaa !12
  br label %lean_dec.exit65

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i63 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i63, label %lean_dec.exit65, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #7
  br label %lean_dec.exit65

lean_dec.exit65:                                  ; preds = %bb.af, %bb.ag, %bb.ah
  br i1 %.not.i78, label %lean_dec.exit65.thread, label %lean_dec.exit61

lean_dec.exit65.thread:                           ; preds = %lean_int_emod.exit, %lean_dec.exit65
  %.1.i80161166 = phi ptr [ %i.bo, %lean_dec.exit65 ], [ %i.bn, %lean_int_emod.exit ] ; 3 uses
  %i.bs = load i32, ptr %.0.i76, align 4, !tbaa !12 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.ai, label %bb.aj, !prof !10

bb.ai:                                            ; preds = %lean_dec.exit65.thread
  %i.bu = add nsw i32 %i.bs, -1
  store i32 %i.bu, ptr %.0.i76, align 4, !tbaa !12
  br label %lean_dec.exit61

bb.aj:                                            ; preds = %lean_dec.exit65.thread
  %.not.i.i59 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i59, label %lean_dec.exit61, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i76) #7
  br label %lean_dec.exit61

lean_dec.exit61:                                  ; preds = %bb.aa, %bb.ac, %bb.ad, %bb.ai, %bb.aj, %bb.ak, %lean_dec.exit65
  %.1.i80161165 = phi ptr [ %.1.i80161166, %bb.ai ], [ %.1.i80161166, %bb.aj ], [ %.1.i80161166, %bb.ak ], [ %i.bo, %lean_dec.exit65 ], [ %i.bm, %bb.ad ], [ %i.bl, %bb.ac ], [ %.0.i76, %bb.aa ]
  %i.bv = tail call ptr @l_Lean_Grind_CommRing_Poly_insert(ptr noundef %.1.i80161165, ptr noundef %1, ptr noundef %.040)
  ret ptr %i.bv

bb.al:                                            ; preds = %lean_obj_tag.exit
  br i1 %.not.i47, label %bb.am, label %lean_inc.exit46

bb.am:                                            ; preds = %bb.al
  %.val.i.i82 = load i32, ptr %i.s, align 4, !tbaa !12 ; 3 uses
  %i.bw = icmp sgt i32 %.val.i.i82, 0
  br i1 %i.bw, label %bb.an, label %bb.ao, !prof !10

bb.an:                                            ; preds = %bb.am
  %i.bx = add nuw i32 %.val.i.i82, 1
  store i32 %i.bx, ptr %i.s, align 4, !tbaa !12
  br label %lean_inc.exit46

bb.ao:                                            ; preds = %bb.am
  %.not.i.i83 = icmp eq i32 %.val.i.i82, 0
  br i1 %.not.i.i83, label %lean_inc.exit46, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.by = atomicrmw add ptr %i.s, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit46

lean_inc.exit46:                                  ; preds = %bb.ap, %bb.ao, %bb.an, %bb.al
  %i.bz = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !14 ; 5 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = and i64 %i.cb, 1
  %.not.i43 = icmp eq i64 %i.cc, 0
  br i1 %.not.i43, label %bb.aq, label %lean_inc.exit44

bb.aq:                                            ; preds = %lean_inc.exit46
  %.val.i.i85 = load i32, ptr %i.ca, align 4, !tbaa !12 ; 3 uses
  %i.cd = icmp sgt i32 %.val.i.i85, 0
  br i1 %i.cd, label %bb.ar, label %bb.as, !prof !10

bb.ar:                                            ; preds = %bb.aq
  %i.ce = add nuw i32 %.val.i.i85, 1
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !12
  br label %lean_inc.exit44

bb.as:                                            ; preds = %bb.aq
  %.not.i.i86 = icmp eq i32 %.val.i.i85, 0
  br i1 %.not.i.i86, label %lean_inc.exit44, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cf = atomicrmw add ptr %i.ca, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit44

lean_inc.exit44:                                  ; preds = %bb.at, %bb.as, %bb.ar, %lean_inc.exit46
  %i.cg = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !14 ; 4 uses
  %.val.i.i88 = load i32, ptr %i.ch, align 4, !tbaa !12 ; 3 uses
  %i.ci = icmp sgt i32 %.val.i.i88, 0
  br i1 %i.ci, label %bb.au, label %bb.av, !prof !10

bb.au:                                            ; preds = %lean_inc.exit44
  %i.cj = add nuw i32 %.val.i.i88, 1
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !12
  br label %lean_inc_ref.exit90

bb.av:                                            ; preds = %lean_inc.exit44
  %.not.i.i89 = icmp eq i32 %.val.i.i88, 0
  br i1 %.not.i.i89, label %lean_inc_ref.exit90, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ck = atomicrmw add ptr %i.ch, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit90

lean_inc_ref.exit90:                              ; preds = %bb.au, %bb.av, %bb.aw
  %.val.i91 = load i32, ptr %.0, align 8, !tbaa !12 ; 4 uses
  %i.cl = icmp eq i32 %.val.i91, 1
  br i1 %i.cl, label %.preheader.i94.preheader, label %bb.bj

.preheader.i94.preheader:                         ; preds = %lean_inc_ref.exit90
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !14  ; 4 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = and i64 %i.cn, 1
  %.not.i7.i96 = icmp eq i64 %i.co, 0
  br i1 %.not.i7.i96, label %bb.ax, label %lean_dec.exit.i97

bb.ax:                                            ; preds = %.preheader.i94.preheader
  %i.cp = load i32, ptr %i.cm, align 4, !tbaa !12 ; 3 uses
  %i.cq = icmp sgt i32 %i.cp, 1
  br i1 %i.cq, label %bb.ay, label %bb.az, !prof !10

bb.ay:                                            ; preds = %bb.ax
  %i.cr = add nsw i32 %i.cp, -1
  store i32 %i.cr, ptr %i.cm, align 4, !tbaa !12
  br label %lean_dec.exit.i97

bb.az:                                            ; preds = %bb.ax
  %.not.i.i.i100 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i100, label %lean_dec.exit.i97, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #7
  br label %lean_dec.exit.i97

lean_dec.exit.i97:                                ; preds = %bb.ba, %bb.az, %bb.ay, %.preheader.i94.preheader
  %i.cs = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !14 ; 4 uses
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = and i64 %i.cu, 1
  %.not.i7.i96.1 = icmp eq i64 %i.cv, 0
  br i1 %.not.i7.i96.1, label %bb.bb, label %lean_dec.exit.i97.1

bb.bb:                                            ; preds = %lean_dec.exit.i97
  %i.cw = load i32, ptr %i.ct, align 4, !tbaa !12 ; 3 uses
  %i.cx = icmp sgt i32 %i.cw, 1
  br i1 %i.cx, label %bb.be, label %bb.bc, !prof !10

bb.bc:                                            ; preds = %bb.bb
  %.not.i.i.i100.1 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i100.1, label %lean_dec.exit.i97.1, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ct) #7
  br label %lean_dec.exit.i97.1

bb.be:                                            ; preds = %bb.bb
  %i.cy = add nsw i32 %i.cw, -1
  store i32 %i.cy, ptr %i.ct, align 4, !tbaa !12
  br label %lean_dec.exit.i97.1

lean_dec.exit.i97.1:                              ; preds = %bb.be, %bb.bd, %bb.bc, %lean_dec.exit.i97
  %i.cz = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !14 ; 4 uses
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = and i64 %i.db, 1
  %.not.i7.i96.2 = icmp eq i64 %i.dc, 0
  br i1 %.not.i7.i96.2, label %bb.bf, label %lean_dec.exit.i97.2

bb.bf:                                            ; preds = %lean_dec.exit.i97.1
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !12 ; 3 uses
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %bb.bi, label %bb.bg, !prof !10

bb.bg:                                            ; preds = %bb.bf
  %.not.i.i.i100.2 = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i.i100.2, label %lean_dec.exit.i97.2, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.da) #7
  br label %lean_dec.exit.i97.2

bb.bi:                                            ; preds = %bb.bf
  %i.df = add nsw i32 %i.dd, -1
  store i32 %i.df, ptr %i.da, align 4, !tbaa !12
  br label %lean_dec.exit.i97.2

lean_dec.exit.i97.2:                              ; preds = %bb.bi, %bb.bh, %bb.bg, %lean_dec.exit.i97.1
  tail call void @lean_free_object(ptr noundef nonnull %.0) #7
  br label %lean_dec_ref_known.exit101

bb.bj:                                            ; preds = %lean_inc_ref.exit90
  %i.dg = icmp sgt i32 %.val.i91, 1
  br i1 %i.dg, label %bb.bk, label %bb.bl, !prof !10

bb.bk:                                            ; preds = %bb.bj
  %i.dh = add nsw i32 %.val.i91, -1
  store i32 %i.dh, ptr %.0, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit101

bb.bl:                                            ; preds = %bb.bj
  %.not.i.i92 = icmp eq i32 %.val.i91, 0
  br i1 %.not.i.i92, label %lean_dec_ref_known.exit101, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0) #7
  br label %lean_dec_ref_known.exit101

lean_dec_ref_known.exit101:                       ; preds = %lean_dec.exit.i97.2, %bb.bk, %bb.bl, %bb.bm
  %i.di = and i64 %i.b, %i.t
  %or.cond124.not.not = icmp eq i64 %i.di, 0
  br i1 %or.cond124.not.not, label %.critedge.i105, label %bb.bn, !prof !15

bb.bn:                                            ; preds = %lean_dec_ref_known.exit101
  %i.dj = shl i64 %i.t, 31
  %i.dk = ashr i64 %i.dj, 32
  %i.dl = mul nsw i64 %i.dk, %i.d                 ; 3 uses
  %i.dm = add nsw i64 %i.dl, 2147483648
  %i.dn = icmp ult i64 %i.dm, 4294967296
  br i1 %i.dn, label %bb.bo, label %bb.bp, !prof !10

bb.bo:                                            ; preds = %bb.bn
  %i.do = shl nsw i64 %i.dl, 1
  %i.dp = and i64 %i.do, 8589934590
  %i.dq = or disjoint i64 %i.dp, 1
  %i.dr = inttoptr i64 %i.dq to ptr
  br label %lean_int_mul.exit106

bb.bp:                                            ; preds = %bb.bn
  %i.ds = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.dl) #7
  br label %lean_int_mul.exit106

.critedge.i105:                                   ; preds = %lean_dec_ref_known.exit101
  %i.dt = tail call ptr @lean_int_big_mul(ptr noundef %0, ptr noundef %i.s) #7
  br label %lean_int_mul.exit106

lean_int_mul.exit106:                             ; preds = %bb.bo, %bb.bp, %.critedge.i105
  %.0.i104 = phi ptr [ %i.dt, %.critedge.i105 ], [ %i.dr, %bb.bo ], [ %i.ds, %bb.bp ] ; 7 uses
  br i1 %.not.i47, label %bb.bq, label %lean_dec.exit57

bb.bq:                                            ; preds = %lean_int_mul.exit106
  %i.du = load i32, ptr %i.s, align 4, !tbaa !12  ; 3 uses
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %bb.br, label %bb.bs, !prof !10

bb.br:                                            ; preds = %bb.bq
  %i.dw = add nsw i32 %i.du, -1
  store i32 %i.dw, ptr %i.s, align 4, !tbaa !12
  br label %lean_dec.exit57

bb.bs:                                            ; preds = %bb.bq
  %.not.i.i55 = icmp eq i32 %i.du, 0
  br i1 %.not.i.i55, label %lean_dec.exit57, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.s) #7
  br label %lean_dec.exit57

lean_dec.exit57:                                  ; preds = %bb.br, %bb.bs, %bb.bt, %lean_int_mul.exit106
  br i1 %.not.i41, label %bb.bu, label %lean_inc.exit42

bb.bu:                                            ; preds = %lean_dec.exit57
  %.val.i.i107 = load i32, ptr %2, align 4, !tbaa !12 ; 3 uses
  %i.dx = icmp sgt i32 %.val.i.i107, 0
  br i1 %i.dx, label %bb.bv, label %bb.bw, !prof !10

bb.bv:                                            ; preds = %bb.bu
  %i.dy = add nuw i32 %.val.i.i107, 1
  store i32 %i.dy, ptr %2, align 4, !tbaa !12
  br label %lean_nat_to_int.exit113

bb.bw:                                            ; preds = %bb.bu
  %.not.i.i108 = icmp eq i32 %.val.i.i107, 0
  br i1 %.not.i.i108, label %lean_nat_to_int.exit113, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.dz = atomicrmw add ptr %2, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_nat_to_int.exit113

lean_inc.exit42:                                  ; preds = %lean_dec.exit57
  br i1 %or.cond.i111, label %lean_nat_to_int.exit113, label %bb.by

bb.by:                                            ; preds = %lean_inc.exit42
  %i.ea = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.h) #7
  br label %lean_nat_to_int.exit113

lean_nat_to_int.exit113:                          ; preds = %bb.bv, %bb.bw, %bb.bx, %lean_inc.exit42, %bb.by
  %.1.i112 = phi ptr [ %2, %lean_inc.exit42 ], [ %i.ea, %bb.by ], [ %2, %bb.bx ], [ %2, %bb.bw ], [ %2, %bb.bv ] ; 6 uses
  %i.eb = ptrtoint ptr %.0.i104 to i64            ; 2 uses
  %i.ec = and i64 %i.eb, 1
  %.not.i114 = icmp eq i64 %i.ec, 0               ; 2 uses
  %.pre132 = ptrtoint ptr %.1.i112 to i64         ; 2 uses
  %.pre133 = and i64 %.pre132, 1
  %i.ed = icmp eq i64 %.pre133, 0                 ; 2 uses
  br i1 %.not.i114, label %lean_int_emod.exit120, label %bb.bz, !prof !9

bb.bz:                                            ; preds = %lean_nat_to_int.exit113
  br i1 %i.ed, label %lean_int_emod.exit120.thread172, label %bb.ca, !prof !9

lean_int_emod.exit120.thread172:                  ; preds = %bb.bz
  %i.ee = tail call ptr @lean_int_big_emod(ptr noundef %.0.i104, ptr noundef %.1.i112) #7
  br label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  %i.ef = shl i64 %.pre132, 31
  %i.eg = ashr i64 %i.ef, 32                      ; 3 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %lean_dec.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ei = shl i64 %i.eb, 31
  %i.ej = ashr i64 %i.ei, 32
  %i.ek = srem i64 %i.ej, %i.eg                   ; 2 uses
  %i.el = icmp slt i64 %i.ek, 0
  %.p.i116 = tail call i64 @llvm.abs.i64(i64 %i.eg, i1 true)
  %i.em = select i1 %i.el, i64 %.p.i116, i64 0
  %.0.i117 = add nsw i64 %i.em, %i.ek             ; 3 uses
  %7 = icmp slt i64 %.0.i117, 2147483648
  br i1 %7, label %bb.cc, label %bb.cd, !prof !10

bb.cc:                                            ; preds = %bb.cb
  %i.en = shl nsw i64 %.0.i117, 1
  %8 = and i64 %i.en, 8589934590
  %i.eo = or disjoint i64 %8, 1
  %i.ep = inttoptr i64 %i.eo to ptr
  br label %lean_dec.exit

bb.cd:                                            ; preds = %bb.cb
  %i.eq = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i117) #7
  br label %lean_dec.exit

lean_int_emod.exit120:                            ; preds = %lean_nat_to_int.exit113
  %i.er = tail call ptr @lean_int_big_emod(ptr noundef %.0.i104, ptr noundef %.1.i112) #7 ; 2 uses
  br i1 %i.ed, label %bb.ce, label %lean_dec.exit53.thread

bb.ce:                                            ; preds = %lean_int_emod.exit120.thread172, %lean_int_emod.exit120
  %i.es = phi ptr [ %i.ee, %lean_int_emod.exit120.thread172 ], [ %i.er, %lean_int_emod.exit120 ] ; 2 uses
  %i.et = load i32, ptr %.1.i112, align 4, !tbaa !12 ; 3 uses
  %i.eu = icmp sgt i32 %i.et, 1
  br i1 %i.eu, label %bb.cf, label %bb.cg, !prof !10

bb.cf:                                            ; preds = %bb.ce
  %i.ev = add nsw i32 %i.et, -1
  store i32 %i.ev, ptr %.1.i112, align 4, !tbaa !12
  br label %lean_dec.exit53

bb.cg:                                            ; preds = %bb.ce
  %.not.i.i51 = icmp eq i32 %i.et, 0
  br i1 %.not.i.i51, label %lean_dec.exit53, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i112) #7
  br label %lean_dec.exit53

lean_dec.exit53:                                  ; preds = %bb.cf, %bb.cg, %bb.ch
  br i1 %.not.i114, label %lean_dec.exit53.thread, label %lean_dec.exit

lean_dec.exit53.thread:                           ; preds = %lean_int_emod.exit120, %lean_dec.exit53
  %.1.i118171176 = phi ptr [ %i.es, %lean_dec.exit53 ], [ %i.er, %lean_int_emod.exit120 ] ; 3 uses
  %i.ew = load i32, ptr %.0.i104, align 4, !tbaa !12 ; 3 uses
  %i.ex = icmp sgt i32 %i.ew, 1
  br i1 %i.ex, label %bb.ci, label %bb.cj, !prof !10

bb.ci:                                            ; preds = %lean_dec.exit53.thread
  %i.ey = add nsw i32 %i.ew, -1
  store i32 %i.ey, ptr %.0.i104, align 4, !tbaa !12
  br label %lean_dec.exit

bb.cj:                                            ; preds = %lean_dec.exit53.thread
  %.not.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i104) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ca, %bb.cc, %bb.cd, %bb.ci, %bb.cj, %bb.ck, %lean_dec.exit53
  %.1.i118171175 = phi ptr [ %.1.i118171176, %bb.ci ], [ %.1.i118171176, %bb.cj ], [ %.1.i118171176, %bb.ck ], [ %i.es, %lean_dec.exit53 ], [ %i.eq, %bb.cd ], [ %i.ep, %bb.cc ], [ %.0.i104, %bb.ca ]
  br i1 %.not.i, label %bb.cl, label %lean_inc.exit

bb.cl:                                            ; preds = %lean_dec.exit
  %.val.i.i121 = load i32, ptr %1, align 4, !tbaa !12 ; 3 uses
  %i.ez = icmp sgt i32 %.val.i.i121, 0
  br i1 %i.ez, label %bb.cm, label %bb.cn, !prof !10

bb.cm:                                            ; preds = %bb.cl
  %i.fa = add nuw i32 %.val.i.i121, 1
  store i32 %i.fa, ptr %1, align 4, !tbaa !12
  br label %lean_inc.exit

bb.cn:                                            ; preds = %bb.cl
  %.not.i.i122 = icmp eq i32 %.val.i.i121, 0
  br i1 %.not.i.i122, label %lean_inc.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.fb = atomicrmw add ptr %1, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.co, %bb.cn, %bb.cm, %lean_dec.exit
  %i.fc = tail call ptr @l_Lean_Grind_CommRing_Mon_mul__nc(ptr noundef %1, ptr noundef %i.ca)
  %i.fd = tail call ptr @l_Lean_Grind_CommRing_Poly_insert(ptr noundef %.1.i118171175, ptr noundef %i.fc, ptr noundef %.040)
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_CommRing_Poly_mulMonC__nc_go___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @l_Lean_Grind_CommRing_Poly_mulMonC__nc_go(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_CommRing_Poly_mulMonC__nc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i29 = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.i29, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %3, align 4, !tbaa !12
  br label %lean_nat_to_int.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i55 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i55, label %lean_nat_to_int.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw add ptr %3, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_nat_to_int.exit

lean_inc.exit:                                    ; preds = %bb.a
  %i.f = icmp ult ptr %3, inttoptr (i64 4294967296 to ptr)
  br i1 %i.f, label %lean_nat_to_int.exit, label %bb.f

bb.f:                                             ; preds = %lean_inc.exit
  %i.g = lshr i64 %i.a, 1
  %i.h = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.g) #7
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %lean_inc.exit, %bb.f
  %.1.i = phi ptr [ %3, %lean_inc.exit ], [ %i.h, %bb.f ], [ %3, %bb.e ], [ %3, %bb.d ], [ %3, %bb.c ] ; 6 uses
  %i.i = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i57 = icmp eq i64 %i.j, 0
  %.pre66 = ptrtoint ptr %.1.i to i64             ; 2 uses
  %.pre = and i64 %.pre66, 1
  %i.k = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i57, label %lean_int_emod.exit, label %bb.g, !prof !9

bb.g:                                             ; preds = %lean_nat_to_int.exit
  br i1 %i.k, label %lean_int_emod.exit.thread89, label %bb.h, !prof !9

lean_int_emod.exit.thread89:                      ; preds = %bb.g
  %i.l = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %.1.i) #7
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.m = shl i64 %.pre66, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_dec.exit54, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i = add nsw i64 %i.t, %i.r                  ; 3 uses
  %4 = icmp slt i64 %.0.i, 2147483648
  br i1 %4, label %bb.j, label %bb.k, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.u = shl nsw i64 %.0.i, 1
  %5 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %5, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_dec.exit54

bb.k:                                             ; preds = %bb.i
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i) #7
  br label %lean_dec.exit54

lean_int_emod.exit:                               ; preds = %lean_nat_to_int.exit
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %.1.i) #7 ; 2 uses
  br i1 %i.k, label %bb.l, label %lean_dec.exit54

bb.l:                                             ; preds = %lean_int_emod.exit.thread89, %lean_int_emod.exit
  %i.z = phi ptr [ %i.l, %lean_int_emod.exit.thread89 ], [ %i.y, %lean_int_emod.exit ] ; 3 uses
  %i.aa = load i32, ptr %.1.i, align 4, !tbaa !12 ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %bb.l
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %.1.i, align 4, !tbaa !12
  br label %lean_dec.exit54

bb.n:                                             ; preds = %bb.l
  %.not.i.i52 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i52, label %lean_dec.exit54, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #7
  br label %lean_dec.exit54

lean_dec.exit54:                                  ; preds = %bb.k, %bb.j, %bb.h, %bb.m, %bb.n, %bb.o, %lean_int_emod.exit
  %.1.i5888 = phi ptr [ %i.y, %lean_int_emod.exit ], [ %i.z, %bb.m ], [ %i.z, %bb.n ], [ %i.z, %bb.o ], [ %i.x, %bb.k ], [ %i.w, %bb.j ], [ %0, %bb.h ] ; 13 uses
  %i.ad = load atomic i32, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once seq_cst, align 4, !tbaa !18
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.p, label %bb.q, !prof !10

bb.p:                                             ; preds = %lean_dec.exit54
  %i.af = load ptr, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit

bb.q:                                             ; preds = %lean_dec.exit54
  %i.ag = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.p, %bb.q
  %.0.i59 = phi ptr [ %i.af, %bb.p ], [ %i.ag, %bb.q ] ; 3 uses
  %i.ah = ptrtoint ptr %.1.i5888 to i64
  %i.ai = ptrtoint ptr %.0.i59 to i64
  %i.aj = and i64 %i.ah, 1                        ; 4 uses
  %i.ak = and i64 %i.aj, %i.ai
  %or.cond.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %or.cond.not.i.i, label %lean_int_dec_eq.exit, label %.split, !prof !15

.split:                                           ; preds = %lean_obj_once.exit
  %i.al = icmp eq ptr %.1.i5888, %.0.i59
  br i1 %i.al, label %bb.ai, label %bb.r

lean_int_dec_eq.exit:                             ; preds = %lean_obj_once.exit
  %i.am = tail call zeroext i1 @lean_int_big_eq(ptr noundef %.1.i5888, ptr noundef %.0.i59) #7
  br i1 %i.am, label %bb.ai, label %bb.r

bb.r:                                             ; preds = %.split, %lean_int_dec_eq.exit
  %i.an = tail call zeroext i8 @l_Lean_Grind_CommRing_instBEqMon_beq(ptr noundef %1, ptr noundef nonnull inttoptr (i64 1 to ptr))
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %.not.i47 = icmp eq i64 %i.aj, 0
  br i1 %.not.i47, label %bb.t, label %lean_dec.exit50

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %.1.i5888, align 4, !tbaa !12 ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.u, label %bb.v, !prof !10

bb.u:                                             ; preds = %bb.t
  %i.ar = add nsw i32 %i.ap, -1
  store i32 %i.ar, ptr %.1.i5888, align 4, !tbaa !12
  br label %lean_dec.exit50

bb.v:                                             ; preds = %bb.t
  %.not.i.i48 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i48, label %lean_dec.exit50, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i5888) #7
  br label %lean_dec.exit50

lean_dec.exit50:                                  ; preds = %bb.u, %bb.v, %bb.w, %bb.s
  %i.as = load atomic i32, ptr @l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0_once seq_cst, align 4, !tbaa !18
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.x, label %bb.y, !prof !10

bb.x:                                             ; preds = %lean_dec.exit50
  %i.au = load ptr, ptr @l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit61

bb.y:                                             ; preds = %lean_dec.exit50
  %i.av = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_instInhabitedPoly_default___closed__0) #7
  br label %lean_obj_once.exit61

lean_obj_once.exit61:                             ; preds = %bb.x, %bb.y
  %.0.i60 = phi ptr [ %i.au, %bb.x ], [ %i.av, %bb.y ]
  %i.aw = tail call ptr @l_Lean_Grind_CommRing_Poly_mulMonC__nc_go(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %.0.i60)
  br label %lean_dec.exit42

bb.z:                                             ; preds = %bb.r
  %i.ax = ptrtoint ptr %1 to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i43 = icmp eq i64 %i.ay, 0
  br i1 %.not.i43, label %bb.aa, label %lean_dec.exit46

bb.aa:                                            ; preds = %bb.z
  %i.az = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ab, label %bb.ac, !prof !10

bb.ab:                                            ; preds = %bb.aa
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit46

bb.ac:                                            ; preds = %bb.aa
  %.not.i.i44 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i44, label %lean_dec.exit46, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit46

lean_dec.exit46:                                  ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.z
  %i.bc = tail call ptr @l_Lean_Grind_CommRing_Poly_mulConstC(ptr noundef %.1.i5888, ptr noundef %2, ptr noundef %3) ; 4 uses
  %.not.i39 = icmp eq i64 %i.aj, 0
  br i1 %.not.i39, label %bb.ae, label %lean_dec.exit42

bb.ae:                                            ; preds = %lean_dec.exit46
  %i.bd = load i32, ptr %.1.i5888, align 4, !tbaa !12 ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 1
  br i1 %i.be, label %bb.af, label %bb.ag, !prof !10

bb.af:                                            ; preds = %bb.ae
  %i.bf = add nsw i32 %i.bd, -1
  store i32 %i.bf, ptr %.1.i5888, align 4, !tbaa !12
  br label %lean_dec.exit42

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i40 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i40, label %lean_dec.exit42, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i5888) #7
  br label %lean_dec.exit42

bb.ai:                                            ; preds = %.split, %lean_int_dec_eq.exit
  %.not.i35 = icmp eq i64 %i.aj, 0
  br i1 %.not.i35, label %bb.aj, label %lean_dec.exit38

bb.aj:                                            ; preds = %bb.ai
  %i.bg = load i32, ptr %.1.i5888, align 4, !tbaa !12 ; 3 uses
  %i.bh = icmp sgt i32 %i.bg, 1
  br i1 %i.bh, label %bb.ak, label %bb.al, !prof !10

bb.ak:                                            ; preds = %bb.aj
  %i.bi = add nsw i32 %i.bg, -1
  store i32 %i.bi, ptr %.1.i5888, align 4, !tbaa !12
  br label %lean_dec.exit38

bb.al:                                            ; preds = %bb.aj
  %.not.i.i36 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i36, label %lean_dec.exit38, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i5888) #7
  br label %lean_dec.exit38

lean_dec.exit38:                                  ; preds = %bb.ak, %bb.al, %bb.am, %bb.ai
  br i1 %.not.i29, label %bb.an, label %lean_dec.exit34

bb.an:                                            ; preds = %lean_dec.exit38
  %i.bj = load i32, ptr %3, align 4, !tbaa !12    ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.ao, label %bb.ap, !prof !10

bb.ao:                                            ; preds = %bb.an
  %i.bl = add nsw i32 %i.bj, -1
  store i32 %i.bl, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit34

bb.ap:                                            ; preds = %bb.an
  %.not.i.i32 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i32, label %lean_dec.exit34, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit34

lean_dec.exit34:                                  ; preds = %bb.ao, %bb.ap, %bb.aq, %lean_dec.exit38
  %i.bm = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.ar, label %bb.as, !prof !10
end_hunk_4
begin_hunk_5_@l_Lean_Grind_CommRing_Poly_combineC:bb.a
bb.n:                                             ; preds = %bb.l
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #7
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.o, %bb.n, %bb.m, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %.0186) #7
  br label %lean_dec_ref_known.exit

bb.p:                                             ; preds = %lean_inc.exit234
  %i.ag = icmp sgt i32 %.val.i340, 1
  br i1 %i.ag, label %bb.q, label %bb.r, !prof !10

bb.q:                                             ; preds = %bb.p
  %i.ah = add nsw i32 %.val.i340, -1
  store i32 %i.ah, ptr %.0186, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.r:                                             ; preds = %bb.p
  %.not.i.i341 = icmp eq i32 %.val.i340, 0
  br i1 %.not.i.i341, label %lean_dec_ref_known.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0186) #7
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.q, %bb.r, %bb.s
  %i.ai = getelementptr inbounds nuw i8, ptr %.0190, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14 ; 10 uses
  %.0190.val333 = load i32, ptr %.0190, align 8, !tbaa !12
  %i.ak = icmp eq i32 %.0190.val333, 1            ; 2 uses
  br i1 %i.ak, label %lean_dec.exit331, label %bb.t

bb.t:                                             ; preds = %lean_dec_ref_known.exit
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = and i64 %i.al, 1
  %.not.i231 = icmp eq i64 %i.am, 0
  br i1 %.not.i231, label %bb.u, label %lean_inc.exit232

bb.u:                                             ; preds = %bb.t
  %.val.i.i343 = load i32, ptr %i.aj, align 4, !tbaa !12 ; 3 uses
  %i.an = icmp sgt i32 %.val.i.i343, 0
  br i1 %i.an, label %bb.v, label %bb.w, !prof !10

bb.v:                                             ; preds = %bb.u
  %i.ao = add nuw i32 %.val.i.i343, 1
  store i32 %i.ao, ptr %i.aj, align 4, !tbaa !12
  br label %lean_inc.exit232

bb.w:                                             ; preds = %bb.u
  %.not.i.i344 = icmp eq i32 %.val.i.i343, 0
  br i1 %.not.i.i344, label %lean_inc.exit232, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ap = atomicrmw add ptr %i.aj, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit232

lean_inc.exit232:                                 ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  br i1 %.not.i335, label %bb.y, label %lean_dec.exit331

bb.y:                                             ; preds = %lean_inc.exit232
  %i.aq = load i32, ptr %.0190, align 8, !tbaa !12 ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 1
  br i1 %i.ar, label %bb.z, label %bb.aa, !prof !10

bb.z:                                             ; preds = %bb.y
  %i.as = add nsw i32 %i.aq, -1
  store i32 %i.as, ptr %.0190, align 8, !tbaa !12
  br label %lean_dec.exit331

bb.aa:                                            ; preds = %bb.y
  %.not.i.i329 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i329, label %lean_dec.exit331, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0190) #7
  br label %lean_dec.exit331

lean_dec.exit331:                                 ; preds = %lean_inc.exit232, %bb.ab, %bb.aa, %bb.z, %lean_dec_ref_known.exit
  %.0197 = phi ptr [ %.0190, %lean_dec_ref_known.exit ], [ inttoptr (i64 1 to ptr), %bb.z ], [ inttoptr (i64 1 to ptr), %bb.aa ], [ inttoptr (i64 1 to ptr), %bb.ab ], [ inttoptr (i64 1 to ptr), %lean_inc.exit232 ] ; 2 uses
  %.pre573 = ptrtoint ptr %i.aj to i64            ; 2 uses
  %.pre = and i64 %.pre573, 1
  %i.at = icmp eq i64 %.pre, 0                    ; 2 uses
  br i1 %.not.i233, label %lean_int_add.exit, label %bb.ac, !prof !9

bb.ac:                                            ; preds = %lean_dec.exit331
  br i1 %i.at, label %lean_int_add.exit.thread647, label %bb.ad, !prof !9

lean_int_add.exit.thread647:                      ; preds = %bb.ac
  %i.au = tail call ptr @lean_int_big_add(ptr noundef %i.t, ptr noundef %i.aj) #7
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.av = shl i64 %i.u, 31
  %i.aw = ashr i64 %i.av, 32
  %i.ax = shl i64 %.pre573, 31
  %i.ay = ashr i64 %i.ax, 32
  %i.az = add nsw i64 %i.ay, %i.aw                ; 3 uses
  %i.ba = add nsw i64 %i.az, 2147483648
  %i.bb = icmp ult i64 %i.ba, 4294967296
  br i1 %i.bb, label %bb.ae, label %bb.af, !prof !10

bb.ae:                                            ; preds = %bb.ad
  %i.bc = shl nsw i64 %i.az, 1
  %i.bd = and i64 %i.bc, 8589934590
  %i.be = or disjoint i64 %i.bd, 1
  %i.bf = inttoptr i64 %i.be to ptr
  br label %lean_dec.exit323

bb.af:                                            ; preds = %bb.ad
  %i.bg = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.az) #7
  br label %lean_dec.exit323

lean_int_add.exit:                                ; preds = %lean_dec.exit331
  %i.bh = tail call ptr @lean_int_big_add(ptr noundef %i.t, ptr noundef %i.aj) #7 ; 2 uses
  br i1 %i.at, label %bb.ag, label %lean_dec.exit327.thread

bb.ag:                                            ; preds = %lean_int_add.exit.thread647, %lean_int_add.exit
  %i.bi = phi ptr [ %i.au, %lean_int_add.exit.thread647 ], [ %i.bh, %lean_int_add.exit ] ; 2 uses
  %i.bj = load i32, ptr %i.aj, align 4, !tbaa !12 ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.ah, label %bb.ai, !prof !10

bb.ah:                                            ; preds = %bb.ag
  %i.bl = add nsw i32 %i.bj, -1
  store i32 %i.bl, ptr %i.aj, align 4, !tbaa !12
  br label %lean_dec.exit327

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i325 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i325, label %lean_dec.exit327, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #7
  br label %lean_dec.exit327

lean_dec.exit327:                                 ; preds = %bb.ah, %bb.ai, %bb.aj
  br i1 %.not.i233, label %lean_dec.exit327.thread, label %lean_dec.exit323

lean_dec.exit327.thread:                          ; preds = %lean_int_add.exit, %lean_dec.exit327
  %.0.i347646651 = phi ptr [ %i.bi, %lean_dec.exit327 ], [ %i.bh, %lean_int_add.exit ] ; 3 uses
  %i.bm = load i32, ptr %i.t, align 4, !tbaa !12  ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.ak, label %bb.al, !prof !10

bb.ak:                                            ; preds = %lean_dec.exit327.thread
  %i.bo = add nsw i32 %i.bm, -1
  store i32 %i.bo, ptr %i.t, align 4, !tbaa !12
  br label %lean_dec.exit323

bb.al:                                            ; preds = %lean_dec.exit327.thread
  %.not.i.i321 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i321, label %lean_dec.exit323, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.t) #7
  br label %lean_dec.exit323

lean_dec.exit323:                                 ; preds = %bb.ae, %bb.af, %bb.ak, %bb.al, %bb.am, %lean_dec.exit327
  %.0.i347646650 = phi ptr [ %.0.i347646651, %bb.ak ], [ %.0.i347646651, %bb.al ], [ %.0.i347646651, %bb.am ], [ %i.bi, %lean_dec.exit327 ], [ %i.bg, %bb.af ], [ %i.bf, %bb.ae ] ; 7 uses
  br i1 %or.cond.i430, label %lean_nat_to_int.exit, label %bb.an

bb.an:                                            ; preds = %lean_dec.exit323
  %i.bp = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.d) #7
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %lean_dec.exit323, %bb.an
  %.1.i = phi ptr [ %2, %lean_dec.exit323 ], [ %i.bp, %bb.an ] ; 6 uses
  %i.bq = ptrtoint ptr %.0.i347646650 to i64      ; 2 uses
  %i.br = and i64 %i.bq, 1
  %.not.i349 = icmp eq i64 %i.br, 0               ; 2 uses
  %.pre574 = ptrtoint ptr %.1.i to i64            ; 2 uses
  %.pre575 = and i64 %.pre574, 1
  %i.bs = icmp eq i64 %.pre575, 0                 ; 2 uses
  br i1 %.not.i349, label %lean_int_emod.exit, label %bb.ao, !prof !9

bb.ao:                                            ; preds = %lean_nat_to_int.exit
  br i1 %i.bs, label %lean_int_emod.exit.thread657, label %bb.ap, !prof !9

lean_int_emod.exit.thread657:                     ; preds = %bb.ao
  %i.bt = tail call ptr @lean_int_big_emod(ptr noundef %.0.i347646650, ptr noundef %.1.i) #7
  br label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.bu = shl i64 %.pre574, 31
  %i.bv = ashr i64 %i.bu, 32                      ; 3 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %lean_dec.exit315, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bx = shl i64 %i.bq, 31
  %i.by = ashr i64 %i.bx, 32
  %i.bz = srem i64 %i.by, %i.bv                   ; 2 uses
  %i.ca = icmp slt i64 %i.bz, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.bv, i1 true)
  %i.cb = select i1 %i.ca, i64 %.p.i, i64 0
  %.0.i350 = add nsw i64 %i.cb, %i.bz             ; 3 uses
  %3 = icmp slt i64 %.0.i350, 2147483648
  br i1 %3, label %bb.ar, label %bb.as, !prof !10

bb.ar:                                            ; preds = %bb.aq
  %i.cc = shl nsw i64 %.0.i350, 1
  %4 = and i64 %i.cc, 8589934590
  %i.cd = or disjoint i64 %4, 1
  %i.ce = inttoptr i64 %i.cd to ptr
  br label %lean_dec.exit315

bb.as:                                            ; preds = %bb.aq
  %i.cf = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i350) #7
  br label %lean_dec.exit315

lean_int_emod.exit:                               ; preds = %lean_nat_to_int.exit
  %i.cg = tail call ptr @lean_int_big_emod(ptr noundef %.0.i347646650, ptr noundef %.1.i) #7 ; 2 uses
  br i1 %i.bs, label %bb.at, label %lean_dec.exit319.thread

bb.at:                                            ; preds = %lean_int_emod.exit.thread657, %lean_int_emod.exit
  %i.ch = phi ptr [ %i.bt, %lean_int_emod.exit.thread657 ], [ %i.cg, %lean_int_emod.exit ] ; 2 uses
  %i.ci = load i32, ptr %.1.i, align 4, !tbaa !12 ; 3 uses
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %bb.au, label %bb.av, !prof !10

bb.au:                                            ; preds = %bb.at
  %i.ck = add nsw i32 %i.ci, -1
  store i32 %i.ck, ptr %.1.i, align 4, !tbaa !12
  br label %lean_dec.exit319

bb.av:                                            ; preds = %bb.at
  %.not.i.i317 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i317, label %lean_dec.exit319, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #7
  br label %lean_dec.exit319

lean_dec.exit319:                                 ; preds = %bb.au, %bb.av, %bb.aw
  br i1 %.not.i349, label %lean_dec.exit319.thread, label %lean_dec.exit315

lean_dec.exit319.thread:                          ; preds = %lean_int_emod.exit, %lean_dec.exit319
  %.1.i351656661 = phi ptr [ %i.ch, %lean_dec.exit319 ], [ %i.cg, %lean_int_emod.exit ] ; 3 uses
  %i.cl = load i32, ptr %.0.i347646650, align 4, !tbaa !12 ; 3 uses
  %i.cm = icmp sgt i32 %i.cl, 1
  br i1 %i.cm, label %bb.ax, label %bb.ay, !prof !10

bb.ax:                                            ; preds = %lean_dec.exit319.thread
  %i.cn = add nsw i32 %i.cl, -1
  store i32 %i.cn, ptr %.0.i347646650, align 4, !tbaa !12
  br label %lean_dec.exit315

bb.ay:                                            ; preds = %lean_dec.exit319.thread
  %.not.i.i313 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i313, label %lean_dec.exit315, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i347646650) #7
  br label %lean_dec.exit315

lean_dec.exit315:                                 ; preds = %bb.ap, %bb.ar, %bb.as, %bb.ax, %bb.ay, %bb.az, %lean_dec.exit319
  %.1.i351656660 = phi ptr [ %.1.i351656661, %bb.ax ], [ %.1.i351656661, %bb.ay ], [ %.1.i351656661, %bb.az ], [ %i.ch, %lean_dec.exit319 ], [ %i.cf, %bb.as ], [ %i.ce, %bb.ar ], [ %.0.i347646650, %bb.ap ] ; 2 uses
  br i1 %i.ak, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %lean_dec.exit315
  %i.co = getelementptr inbounds nuw i8, ptr %.0197, i64 8
  store ptr %.1.i351656660, ptr %i.co, align 8, !tbaa !14
  br label %common.ret874

bb.bb:                                            ; preds = %lean_dec.exit315
  tail call void @lean_inc_heartbeat() #7
  %i.cp = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.bc, label %lean_alloc_ctor.exit

bb.bc:                                            ; preds = %bb.bb
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.bb
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 1, ptr %i.cp, align 4, !tbaa !12
  store i32 65552, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %.1.i351656660, ptr %i.cs, align 8, !tbaa !14
  br label %common.ret874

bb.bd:                                            ; preds = %lean_obj_tag.exit338
  br i1 %.not.i233, label %bb.be, label %lean_inc.exit230

bb.be:                                            ; preds = %bb.bd
  %.val.i.i353 = load i32, ptr %i.t, align 4, !tbaa !12 ; 3 uses
  %i.ct = icmp sgt i32 %.val.i.i353, 0
  br i1 %i.ct, label %bb.bf, label %bb.bg, !prof !10

bb.bf:                                            ; preds = %bb.be
  %i.cu = add nuw i32 %.val.i.i353, 1
  store i32 %i.cu, ptr %i.t, align 4, !tbaa !12
  br label %lean_inc.exit230

bb.bg:                                            ; preds = %bb.be
  %.not.i.i354 = icmp eq i32 %.val.i.i353, 0
  br i1 %.not.i.i354, label %lean_inc.exit230, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cv = atomicrmw add ptr %i.t, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit230

lean_inc.exit230:                                 ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bd
  %.val.i356 = load i32, ptr %.0186, align 8, !tbaa !12 ; 4 uses
  %i.cw = icmp eq i32 %.val.i356, 1
  br i1 %i.cw, label %.preheader.i359, label %bb.bm

.preheader.i359:                                  ; preds = %lean_inc.exit230
  %i.cx = load ptr, ptr %i.s, align 8, !tbaa !14  ; 4 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = and i64 %i.cy, 1
  %.not.i7.i361 = icmp eq i64 %i.cz, 0
  br i1 %.not.i7.i361, label %bb.bi, label %lean_dec.exit.i362

bb.bi:                                            ; preds = %.preheader.i359
  %i.da = load i32, ptr %i.cx, align 4, !tbaa !12 ; 3 uses
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %bb.bj, label %bb.bk, !prof !10

bb.bj:                                            ; preds = %bb.bi
  %i.dc = add nsw i32 %i.da, -1
  store i32 %i.dc, ptr %i.cx, align 4, !tbaa !12
  br label %lean_dec.exit.i362

bb.bk:                                            ; preds = %bb.bi
  %.not.i.i.i365 = icmp eq i32 %i.da, 0
  br i1 %.not.i.i.i365, label %lean_dec.exit.i362, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cx) #7
  br label %lean_dec.exit.i362

lean_dec.exit.i362:                               ; preds = %bb.bl, %bb.bk, %bb.bj, %.preheader.i359
  tail call void @lean_free_object(ptr noundef nonnull %.0186) #7
  br label %lean_dec_ref_known.exit366

bb.bm:                                            ; preds = %lean_inc.exit230
  %i.dd = icmp sgt i32 %.val.i356, 1
  br i1 %i.dd, label %bb.bn, label %bb.bo, !prof !10

bb.bn:                                            ; preds = %bb.bm
  %i.de = add nsw i32 %.val.i356, -1
  store i32 %i.de, ptr %.0186, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit366

bb.bo:                                            ; preds = %bb.bm
  %.not.i.i357 = icmp eq i32 %.val.i356, 0
  br i1 %.not.i.i357, label %lean_dec_ref_known.exit366, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0186) #7
  br label %lean_dec_ref_known.exit366

lean_dec_ref_known.exit366:                       ; preds = %lean_dec.exit.i362, %bb.bn, %bb.bo, %bb.bp
  %i.df = tail call ptr @l_Lean_Grind_CommRing_Poly_addConstC(ptr noundef %.0190, ptr noundef %i.t, ptr noundef %2) ; 4 uses
  br i1 %.not.i233, label %bb.bq, label %common.ret874

bb.bq:                                            ; preds = %lean_dec_ref_known.exit366
  %i.dg = load i32, ptr %i.t, align 4, !tbaa !12  ; 3 uses
  %i.dh = icmp sgt i32 %i.dg, 1
  br i1 %i.dh, label %bb.br, label %bb.bs, !prof !10

bb.br:                                            ; preds = %bb.bq
  %i.di = add nsw i32 %i.dg, -1
  store i32 %i.di, ptr %i.t, align 4, !tbaa !12
  br label %common.ret874

bb.bs:                                            ; preds = %bb.bq
  %.not.i.i309 = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i309, label %common.ret874, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.t) #7
  br label %common.ret874

bb.bu:                                            ; preds = %lean_obj_tag.exit
  br i1 %.not.i335, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dj = lshr i64 %i.l, 1
  %i.dk = trunc i64 %i.dj to i32
  br label %lean_obj_tag.exit370

bb.bw:                                            ; preds = %bb.bu
  %i.dl = getelementptr i8, ptr %.0190, i64 4
  %.val.i369 = load i32, ptr %i.dl, align 4
  %i.dm = lshr i32 %.val.i369, 24
  br label %lean_obj_tag.exit370

lean_obj_tag.exit370:                             ; preds = %bb.bv, %bb.bw
  %.0.i368 = phi i32 [ %i.dk, %bb.bv ], [ %i.dm, %bb.bw ]
  %i.dn = icmp eq i32 %.0.i368, 0
  br i1 %i.dn, label %bb.bx, label %bb.co

bb.bx:                                            ; preds = %lean_obj_tag.exit370
  %i.do = getelementptr inbounds nuw i8, ptr %.0190, i64 8 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !14 ; 8 uses
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = and i64 %i.dq, 1
  %.not.i227 = icmp eq i64 %i.dr, 0               ; 2 uses
  br i1 %.not.i227, label %bb.by, label %lean_inc.exit228

end_hunk_5
begin_hunk_6_@l_Lean_Grind_CommRing_Poly_combineC:bb.a
  %i.im = and i64 %i.il, 1
  %.not.i280 = icmp eq i64 %i.im, 0
  br i1 %.not.i280, label %bb.fk, label %lean_dec.exit283

bb.fk:                                            ; preds = %lean_dec.exit287
  %i.in = load i32, ptr %i.ik, align 4, !tbaa !12 ; 3 uses
  %i.io = icmp sgt i32 %i.in, 1
  br i1 %i.io, label %bb.fl, label %bb.fm, !prof !10

bb.fl:                                            ; preds = %bb.fk
  %i.ip = add nsw i32 %i.in, -1
  store i32 %i.ip, ptr %i.ik, align 4, !tbaa !12
  br label %lean_dec.exit283

bb.fm:                                            ; preds = %bb.fk
  %.not.i.i281 = icmp eq i32 %i.in, 0
  br i1 %.not.i.i281, label %lean_dec.exit283, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ik) #7
  br label %lean_dec.exit283

lean_dec.exit283:                                 ; preds = %bb.fl, %bb.fm, %bb.fn, %lean_dec.exit287
  %i.iq = load ptr, ptr %i.eo, align 8, !tbaa !14 ; 4 uses
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = and i64 %i.ir, 1
  %.not.i276 = icmp eq i64 %i.is, 0
  br i1 %.not.i276, label %bb.fo, label %lean_dec.exit279

bb.fo:                                            ; preds = %lean_dec.exit283
  %i.it = load i32, ptr %i.iq, align 4, !tbaa !12 ; 3 uses
  %i.iu = icmp sgt i32 %i.it, 1
  br i1 %i.iu, label %bb.fp, label %bb.fq, !prof !10

bb.fp:                                            ; preds = %bb.fo
  %i.iv = add nsw i32 %i.it, -1
  store i32 %i.iv, ptr %i.iq, align 4, !tbaa !12
  br label %lean_dec.exit279

bb.fq:                                            ; preds = %bb.fo
  %.not.i.i277 = icmp eq i32 %i.it, 0
  br i1 %.not.i.i277, label %lean_dec.exit279, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.iq) #7
  br label %lean_dec.exit279

bb.fs:                                            ; preds = %lean_dec_ref_known.exit420
  br i1 %.not.i335, label %bb.ft, label %lean_dec.exit279

bb.ft:                                            ; preds = %bb.fs
  %i.iw = icmp sgt i32 %.0190.val, 1
  br i1 %i.iw, label %bb.fu, label %bb.fv, !prof !10

bb.fu:                                            ; preds = %bb.ft
  %i.ix = add nsw i32 %.0190.val, -1
  store i32 %i.ix, ptr %.0190, align 8, !tbaa !12
  br label %lean_dec.exit279

bb.fv:                                            ; preds = %bb.ft
  %.not.i.i273 = icmp eq i32 %.0190.val, 0
  br i1 %.not.i.i273, label %lean_dec.exit279, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0190) #7
  br label %lean_dec.exit279

lean_dec.exit279:                                 ; preds = %bb.fs, %bb.fw, %bb.fv, %bb.fu, %lean_dec.exit283, %bb.fr, %bb.fq, %bb.fp
  %.0200 = phi ptr [ %.0190, %lean_dec.exit283 ], [ %.0190, %bb.fp ], [ %.0190, %bb.fq ], [ %.0190, %bb.fr ], [ inttoptr (i64 1 to ptr), %bb.fu ], [ inttoptr (i64 1 to ptr), %bb.fv ], [ inttoptr (i64 1 to ptr), %bb.fw ], [ inttoptr (i64 1 to ptr), %bb.fs ] ; 6 uses
  %i.iy = and i64 %i.hc, %i.go
  %or.cond.not.not = icmp eq i64 %i.iy, 0
  br i1 %or.cond.not.not, label %.critedge.i424, label %bb.fx, !prof !15

bb.fx:                                            ; preds = %lean_dec.exit279
  %i.iz = shl i64 %i.hb, 31
  %i.ja = ashr i64 %i.iz, 32
  %i.jb = shl i64 %i.go, 31
  %i.jc = ashr i64 %i.jb, 32
  %i.jd = add nsw i64 %i.jc, %i.ja                ; 3 uses
  %i.je = add nsw i64 %i.jd, 2147483648
  %i.jf = icmp ult i64 %i.je, 4294967296
  br i1 %i.jf, label %bb.fy, label %bb.fz, !prof !10

bb.fy:                                            ; preds = %bb.fx
  %i.jg = shl nsw i64 %i.jd, 1
  %i.jh = and i64 %i.jg, 8589934590
  %i.ji = or disjoint i64 %i.jh, 1
  %i.jj = inttoptr i64 %i.ji to ptr
  br label %lean_int_add.exit425

bb.fz:                                            ; preds = %bb.fx
  %i.jk = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.jd) #7
  br label %lean_int_add.exit425

.critedge.i424:                                   ; preds = %lean_dec.exit279
  %i.jl = tail call ptr @lean_int_big_add(ptr noundef %i.ej, ptr noundef %i.ep) #7
  br label %lean_int_add.exit425

lean_int_add.exit425:                             ; preds = %bb.fy, %bb.fz, %.critedge.i424
  %.0.i423 = phi ptr [ %i.jl, %.critedge.i424 ], [ %i.jj, %bb.fy ], [ %i.jk, %bb.fz ] ; 7 uses
  br i1 %.not.i221, label %bb.ga, label %lean_dec.exit271

bb.ga:                                            ; preds = %lean_int_add.exit425
  %i.jm = load i32, ptr %i.ep, align 4, !tbaa !12 ; 3 uses
  %i.jn = icmp sgt i32 %i.jm, 1
  br i1 %i.jn, label %bb.gb, label %bb.gc, !prof !10

bb.gb:                                            ; preds = %bb.ga
  %i.jo = add nsw i32 %i.jm, -1
  store i32 %i.jo, ptr %i.ep, align 4, !tbaa !12
  br label %lean_dec.exit271

bb.gc:                                            ; preds = %bb.ga
  %.not.i.i269 = icmp eq i32 %i.jm, 0
  br i1 %.not.i.i269, label %lean_dec.exit271, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ep) #7
  br label %lean_dec.exit271

lean_dec.exit271:                                 ; preds = %bb.gb, %bb.gc, %bb.gd, %lean_int_add.exit425
  br i1 %.not.i217, label %bb.ge, label %lean_dec.exit267

bb.ge:                                            ; preds = %lean_dec.exit271
  %i.jp = load i32, ptr %i.ej, align 4, !tbaa !12 ; 3 uses
  %i.jq = icmp sgt i32 %i.jp, 1
  br i1 %i.jq, label %bb.gf, label %bb.gg, !prof !10

bb.gf:                                            ; preds = %bb.ge
  %i.jr = add nsw i32 %i.jp, -1
  store i32 %i.jr, ptr %i.ej, align 4, !tbaa !12
  br label %lean_dec.exit267

bb.gg:                                            ; preds = %bb.ge
  %.not.i.i265 = icmp eq i32 %i.jp, 0
  br i1 %.not.i.i265, label %lean_dec.exit267, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ej) #7
  br label %lean_dec.exit267

lean_dec.exit267:                                 ; preds = %bb.gf, %bb.gg, %bb.gh, %lean_dec.exit271
  br i1 %.not.i215, label %bb.gi, label %lean_inc.exit216

bb.gi:                                            ; preds = %lean_dec.exit267
  %.val.i.i426 = load i32, ptr %2, align 4, !tbaa !12 ; 3 uses
  %i.js = icmp sgt i32 %.val.i.i426, 0
  br i1 %i.js, label %bb.gj, label %bb.gk, !prof !10

bb.gj:                                            ; preds = %bb.gi
  %i.jt = add nuw i32 %.val.i.i426, 1
  store i32 %i.jt, ptr %2, align 4, !tbaa !12
  br label %lean_nat_to_int.exit432

bb.gk:                                            ; preds = %bb.gi
  %.not.i.i427 = icmp eq i32 %.val.i.i426, 0
  br i1 %.not.i.i427, label %lean_nat_to_int.exit432, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.ju = atomicrmw add ptr %2, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_nat_to_int.exit432

lean_inc.exit216:                                 ; preds = %lean_dec.exit267
  br i1 %or.cond.i430, label %lean_nat_to_int.exit432, label %bb.gm

bb.gm:                                            ; preds = %lean_inc.exit216
  %i.jv = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.d) #7
  br label %lean_nat_to_int.exit432

lean_nat_to_int.exit432:                          ; preds = %bb.gj, %bb.gk, %bb.gl, %lean_inc.exit216, %bb.gm
  %.1.i431 = phi ptr [ %2, %lean_inc.exit216 ], [ %i.jv, %bb.gm ], [ %2, %bb.gl ], [ %2, %bb.gk ], [ %2, %bb.gj ] ; 6 uses
  %i.jw = ptrtoint ptr %.0.i423 to i64            ; 2 uses
  %i.jx = and i64 %i.jw, 1
  %.not.i433 = icmp eq i64 %i.jx, 0               ; 2 uses
  %.pre576 = ptrtoint ptr %.1.i431 to i64         ; 2 uses
  %.pre577 = and i64 %.pre576, 1
  %i.jy = icmp eq i64 %.pre577, 0                 ; 2 uses
  br i1 %.not.i433, label %lean_int_emod.exit439, label %bb.gn, !prof !9

bb.gn:                                            ; preds = %lean_nat_to_int.exit432
  br i1 %i.jy, label %lean_int_emod.exit439.thread667, label %bb.go, !prof !9

lean_int_emod.exit439.thread667:                  ; preds = %bb.gn
  %i.jz = tail call ptr @lean_int_big_emod(ptr noundef %.0.i423, ptr noundef %.1.i431) #7
  br label %bb.gs

bb.go:                                            ; preds = %bb.gn
  %i.ka = shl i64 %.pre576, 31
  %i.kb = ashr i64 %i.ka, 32                      ; 3 uses
  %i.kc = icmp eq i64 %i.kb, 0
  br i1 %i.kc, label %lean_dec.exit259, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.kd = shl i64 %i.jw, 31
  %i.ke = ashr i64 %i.kd, 32
  %i.kf = srem i64 %i.ke, %i.kb                   ; 2 uses
  %i.kg = icmp slt i64 %i.kf, 0
  %.p.i435 = tail call i64 @llvm.abs.i64(i64 %i.kb, i1 true)
  %i.kh = select i1 %i.kg, i64 %.p.i435, i64 0
  %.0.i436 = add nsw i64 %i.kh, %i.kf             ; 3 uses
  %5 = icmp slt i64 %.0.i436, 2147483648
  br i1 %5, label %bb.gq, label %bb.gr, !prof !10

bb.gq:                                            ; preds = %bb.gp
  %i.ki = shl nsw i64 %.0.i436, 1
  %6 = and i64 %i.ki, 8589934590
  %i.kj = or disjoint i64 %6, 1
  %i.kk = inttoptr i64 %i.kj to ptr
  br label %lean_dec.exit259

bb.gr:                                            ; preds = %bb.gp
  %i.kl = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i436) #7
  br label %lean_dec.exit259

lean_int_emod.exit439:                            ; preds = %lean_nat_to_int.exit432
  %i.km = tail call ptr @lean_int_big_emod(ptr noundef %.0.i423, ptr noundef %.1.i431) #7 ; 2 uses
  br i1 %i.jy, label %bb.gs, label %lean_dec.exit263.thread

bb.gs:                                            ; preds = %lean_int_emod.exit439.thread667, %lean_int_emod.exit439
  %i.kn = phi ptr [ %i.jz, %lean_int_emod.exit439.thread667 ], [ %i.km, %lean_int_emod.exit439 ] ; 2 uses
  %i.ko = load i32, ptr %.1.i431, align 4, !tbaa !12 ; 3 uses
  %i.kp = icmp sgt i32 %i.ko, 1
  br i1 %i.kp, label %bb.gt, label %bb.gu, !prof !10

bb.gt:                                            ; preds = %bb.gs
  %i.kq = add nsw i32 %i.ko, -1
  store i32 %i.kq, ptr %.1.i431, align 4, !tbaa !12
  br label %lean_dec.exit263

bb.gu:                                            ; preds = %bb.gs
  %.not.i.i261 = icmp eq i32 %i.ko, 0
  br i1 %.not.i.i261, label %lean_dec.exit263, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i431) #7
  br label %lean_dec.exit263

lean_dec.exit263:                                 ; preds = %bb.gt, %bb.gu, %bb.gv
  br i1 %.not.i433, label %lean_dec.exit263.thread, label %lean_dec.exit259

lean_dec.exit263.thread:                          ; preds = %lean_int_emod.exit439, %lean_dec.exit263
  %.1.i437666671 = phi ptr [ %i.kn, %lean_dec.exit263 ], [ %i.km, %lean_int_emod.exit439 ] ; 3 uses
  %i.kr = load i32, ptr %.0.i423, align 4, !tbaa !12 ; 3 uses
  %i.ks = icmp sgt i32 %i.kr, 1
  br i1 %i.ks, label %bb.gw, label %bb.gx, !prof !10

bb.gw:                                            ; preds = %lean_dec.exit263.thread
  %i.kt = add nsw i32 %i.kr, -1
  store i32 %i.kt, ptr %.0.i423, align 4, !tbaa !12
  br label %lean_dec.exit259

bb.gx:                                            ; preds = %lean_dec.exit263.thread
  %.not.i.i257 = icmp eq i32 %i.kr, 0
  br i1 %.not.i.i257, label %lean_dec.exit259, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i423) #7
  br label %lean_dec.exit259

lean_dec.exit259:                                 ; preds = %bb.go, %bb.gq, %bb.gr, %bb.gw, %bb.gx, %bb.gy, %lean_dec.exit263
  %.1.i437666670 = phi ptr [ %.1.i437666671, %bb.gw ], [ %.1.i437666671, %bb.gx ], [ %.1.i437666671, %bb.gy ], [ %i.kn, %lean_dec.exit263 ], [ %i.kl, %bb.gr ], [ %i.kk, %bb.gq ], [ %.0.i423, %bb.go ] ; 8 uses
  %i.ku = load atomic i32, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once seq_cst, align 4, !tbaa !18
  %i.kv = icmp eq i32 %i.ku, 1
  br i1 %i.kv, label %bb.gz, label %bb.ha, !prof !10

bb.gz:                                            ; preds = %lean_dec.exit259
  %i.kw = load ptr, ptr @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit

bb.ha:                                            ; preds = %lean_dec.exit259
  %i.kx = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_instInhabitedExpr_default___closed__0) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.gz, %bb.ha
  %.0.i440 = phi ptr [ %i.kw, %bb.gz ], [ %i.kx, %bb.ha ] ; 3 uses
  %i.ky = ptrtoint ptr %.1.i437666670 to i64
  %i.kz = ptrtoint ptr %.0.i440 to i64
  %i.la = and i64 %i.ky, 1                        ; 2 uses
  %i.lb = and i64 %i.la, %i.kz
  %or.cond.not.i.i = icmp eq i64 %i.lb, 0
  br i1 %or.cond.not.i.i, label %lean_int_dec_eq.exit, label %.split, !prof !15

.split:                                           ; preds = %lean_obj_once.exit
  %i.lc = icmp eq ptr %.1.i437666670, %.0.i440
  br i1 %i.lc, label %bb.hf, label %bb.hb

lean_int_dec_eq.exit:                             ; preds = %lean_obj_once.exit
  %i.ld = tail call zeroext i1 @lean_int_big_eq(ptr noundef %.1.i437666670, ptr noundef %.0.i440) #7
  br i1 %i.ld, label %bb.hf, label %bb.hb

bb.hb:                                            ; preds = %.split, %lean_int_dec_eq.exit
  %i.le = tail call ptr @l_Lean_Grind_CommRing_Poly_combineC(ptr noundef nonnull %i.en, ptr noundef nonnull %i.et, ptr noundef %2) ; 2 uses
  br i1 %i.id, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.lf = getelementptr inbounds nuw i8, ptr %.0200, i64 8
  %i.lg = getelementptr inbounds nuw i8, ptr %.0200, i64 24
  store ptr %i.le, ptr %i.lg, align 8, !tbaa !14
  %i.lh = getelementptr inbounds nuw i8, ptr %.0200, i64 16
  store ptr %i.el, ptr %i.lh, align 8, !tbaa !14
  store ptr %.1.i437666670, ptr %i.lf, align 8, !tbaa !14
  br label %common.ret874

bb.hd:                                            ; preds = %bb.hb
  tail call void @lean_inc_heartbeat() #7
  %i.li = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #7 ; 7 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %bb.he, label %lean_alloc_ctor.exit441

bb.he:                                            ; preds = %bb.hd
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit441:                          ; preds = %bb.hd
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  store i32 1, ptr %i.li, align 4, !tbaa !12
  store i32 16973856, ptr %i.lk, align 4
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store ptr %.1.i437666670, ptr %i.ll, align 8, !tbaa !14
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  store ptr %i.el, ptr %i.lm, align 8, !tbaa !14
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  store ptr %i.le, ptr %i.ln, align 8, !tbaa !14
  br label %common.ret874

bb.hf:                                            ; preds = %.split, %lean_int_dec_eq.exit
  %.not.i252 = icmp eq i64 %i.la, 0
  br i1 %.not.i252, label %bb.hg, label %lean_dec.exit255

bb.hg:                                            ; preds = %bb.hf
  %i.lo = load i32, ptr %.1.i437666670, align 4, !tbaa !12 ; 3 uses
  %i.lp = icmp sgt i32 %i.lo, 1
  br i1 %i.lp, label %bb.hh, label %bb.hi, !prof !10

bb.hh:                                            ; preds = %bb.hg
  %i.lq = add nsw i32 %i.lo, -1
  store i32 %i.lq, ptr %.1.i437666670, align 4, !tbaa !12
  br label %lean_dec.exit255

bb.hi:                                            ; preds = %bb.hg
  %.not.i.i253 = icmp eq i32 %i.lo, 0
  br i1 %.not.i.i253, label %lean_dec.exit255, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i437666670) #7
  br label %lean_dec.exit255

lean_dec.exit255:                                 ; preds = %bb.hh, %bb.hi, %bb.hj, %bb.hf
  %i.lr = ptrtoint ptr %.0200 to i64
  %i.ls = and i64 %i.lr, 1
  %.not.i442 = icmp eq i64 %i.ls, 0
  br i1 %.not.i442, label %bb.hk, label %lean_del_object.exit

bb.hk:                                            ; preds = %lean_dec.exit255
  tail call void @lean_free_object(ptr noundef nonnull %.0200) #7
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %lean_dec.exit255, %bb.hk
  br i1 %.not.i219, label %bb.hl, label %lean_dec.exit251.backedge

lean_dec.exit251.backedge:                        ; preds = %lean_del_object.exit, %bb.ho, %bb.hn, %bb.hm
  br label %lean_dec.exit251

bb.hl:                                            ; preds = %lean_del_object.exit
  %i.lt = load i32, ptr %i.el, align 4, !tbaa !12 ; 3 uses
  %i.lu = icmp sgt i32 %i.lt, 1
  br i1 %i.lu, label %bb.hm, label %bb.hn, !prof !10

bb.hm:                                            ; preds = %bb.hl
  %i.lv = add nsw i32 %i.lt, -1
  store i32 %i.lv, ptr %i.el, align 4, !tbaa !12
  br label %lean_dec.exit251.backedge

bb.hn:                                            ; preds = %bb.hl
  %.not.i.i249 = icmp eq i32 %i.lt, 0
  br i1 %.not.i.i249, label %lean_dec.exit251.backedge, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.el) #7
  br label %lean_dec.exit251.backedge

bb.hp:                                            ; preds = %bb.co
  %i.lw = getelementptr inbounds nuw i8, ptr %.0186, i64 16
  %i.lx = getelementptr inbounds nuw i8, ptr %.0186, i64 24 ; 2 uses
  %.val.i.i443 = load i32, ptr %i.en, align 4, !tbaa !12 ; 3 uses
  %i.ly = icmp sgt i32 %.val.i.i443, 0
  br i1 %i.ly, label %bb.hq, label %bb.hr, !prof !10

bb.hq:                                            ; preds = %bb.hp
  %i.lz = add nuw i32 %.val.i.i443, 1
  store i32 %i.lz, ptr %i.en, align 4, !tbaa !12
  br label %lean_inc_ref.exit445

bb.hr:                                            ; preds = %bb.hp
  %.not.i.i444 = icmp eq i32 %.val.i.i443, 0
  br i1 %.not.i.i444, label %lean_inc_ref.exit445, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ma = atomicrmw add ptr %i.en, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit445

lean_inc_ref.exit445:                             ; preds = %bb.hq, %bb.hr, %bb.hs
  %i.mb = ptrtoint ptr %i.el to i64
  %i.mc = and i64 %i.mb, 1
  %.not.i213 = icmp eq i64 %i.mc, 0
  br i1 %.not.i213, label %bb.ht, label %lean_inc.exit214

end_hunk_6
begin_hunk_7_@l_Lean_Grind_CommRing_Poly_powC__nc:bb.a
lean_dec.exit30:                                  ; preds = %.thread, %lean_nat_eq.exit44.thread, %bb.ab, %bb.ac, %bb.ad
  %i.aq = ptrtoint ptr %2 to i64
  %i.ar = and i64 %i.aq, 1
  %.not.i26 = icmp eq i64 %i.ar, 0
  br i1 %.not.i26, label %bb.ae, label %lean_obj_once.exit

bb.ae:                                            ; preds = %lean_dec.exit30
  %i.as = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %bb.af, label %bb.ag, !prof !10

bb.af:                                            ; preds = %bb.ae
  %i.au = add nsw i32 %i.as, -1
  store i32 %i.au, ptr %2, align 4, !tbaa !12
  br label %lean_obj_once.exit

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %lean_obj_once.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %lean_dec.exit30, %bb.ah, %bb.ag, %bb.af, %bb.k, %bb.j, %l_Lean_Grind_CommRing_Poly_mulC__nc.exit
  %.1 = phi ptr [ %i.o, %bb.k ], [ %i.am, %l_Lean_Grind_CommRing_Poly_mulC__nc.exit ], [ %i.n, %bb.j ], [ %0, %bb.af ], [ %0, %bb.ag ], [ %0, %bb.ah ], [ %0, %lean_dec.exit30 ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_CommRing_Poly_powC__nc___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @l_Lean_Grind_CommRing_Poly_powC__nc(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_CommRing_Expr_toPolyC_go(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i270 = icmp eq i64 %i.b, 0                ; 3 uses
  br i1 %.not.i270, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i271 = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  switch i32 %.0.i271, label %bb.ho [
    i32 1, label %bb.d
    i32 3, label %bb.ae
    i32 4, label %bb.av
    i32 5, label %bb.bn
    i32 6, label %bb.ck
    i32 7, label %bb.dj
    i32 8, label %bb.ei
  ]

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 6 uses
  %.val269 = load i32, ptr %1, align 8, !tbaa !12
  %i.i = icmp eq i32 %.val269, 1                  ; 2 uses
  %.pre423 = ptrtoint ptr %i.h to i64             ; 2 uses
  %.pre425 = and i64 %.pre423, 1                  ; 2 uses
  br i1 %i.i, label %lean_dec.exit266, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i204 = icmp eq i64 %.pre425, 0
  br i1 %.not.i204, label %bb.f, label %lean_inc.exit205

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !12 ; 3 uses
  %i.j = icmp sgt i32 %.val.i.i, 0
  br i1 %i.j, label %bb.g, label %bb.h, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw i32 %.val.i.i, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !12
  br label %lean_inc.exit205

bb.h:                                             ; preds = %bb.f
  %.not.i.i272 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i272, label %lean_inc.exit205, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = atomicrmw add ptr %i.h, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit205

lean_inc.exit205:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i270, label %bb.j, label %lean_dec.exit266

bb.j:                                             ; preds = %lean_inc.exit205
  %i.m = load i32, ptr %1, align 8, !tbaa !12     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.k, label %bb.l, !prof !10

bb.k:                                             ; preds = %bb.j
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %1, align 8, !tbaa !12
  br label %lean_dec.exit266

bb.l:                                             ; preds = %bb.j
  %.not.i.i264 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i264, label %lean_dec.exit266, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit266

lean_dec.exit266:                                 ; preds = %bb.d, %lean_inc.exit205, %bb.m, %bb.l, %bb.k
  %.0178 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit205 ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %1, %bb.d ] ; 3 uses
  %.not.i273 = icmp eq i64 %.pre425, 0
  %i.p = icmp ult ptr %i.h, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.p, %.not.i273
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.n

bb.n:                                             ; preds = %lean_dec.exit266
  %i.q = lshr i64 %.pre423, 1
  %i.r = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.q) #7
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %lean_dec.exit266, %bb.n
  %.1.i = phi ptr [ %i.h, %lean_dec.exit266 ], [ %i.r, %bb.n ] ; 7 uses
  %i.s = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.t = and i64 %i.s, 1
  %.not.i274 = icmp eq i64 %i.t, 0
  %i.u = icmp ult ptr %0, inttoptr (i64 4294967296 to ptr)
  %or.cond.i275 = or i1 %i.u, %.not.i274
  br i1 %or.cond.i275, label %lean_nat_to_int.exit277, label %bb.o

bb.o:                                             ; preds = %lean_nat_to_int.exit
  %i.v = lshr i64 %i.s, 1
  %i.w = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.v) #7
  br label %lean_nat_to_int.exit277

lean_nat_to_int.exit277:                          ; preds = %lean_nat_to_int.exit, %bb.o
  %.1.i276 = phi ptr [ %0, %lean_nat_to_int.exit ], [ %i.w, %bb.o ] ; 6 uses
  %i.x = ptrtoint ptr %.1.i to i64                ; 2 uses
  %i.y = and i64 %i.x, 1
  %.not.i278 = icmp eq i64 %i.y, 0                ; 2 uses
  %.pre432 = ptrtoint ptr %.1.i276 to i64         ; 2 uses
  %.pre433 = and i64 %.pre432, 1
  %i.z = icmp eq i64 %.pre433, 0                  ; 2 uses
  br i1 %.not.i278, label %lean_int_emod.exit, label %bb.p, !prof !9

bb.p:                                             ; preds = %lean_nat_to_int.exit277
  br i1 %i.z, label %lean_int_emod.exit.thread495, label %bb.q, !prof !9

lean_int_emod.exit.thread495:                     ; preds = %bb.p
  %i.aa = tail call ptr @lean_int_big_emod(ptr noundef %.1.i, ptr noundef %.1.i276) #7
  br label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ab = shl i64 %.pre432, 31
  %i.ac = ashr i64 %i.ab, 32                      ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %lean_dec.exit258, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = shl i64 %i.x, 31
  %i.af = ashr i64 %i.ae, 32
  %i.ag = srem i64 %i.af, %i.ac                   ; 2 uses
  %i.ah = icmp slt i64 %i.ag, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.ac, i1 true)
  %i.ai = select i1 %i.ah, i64 %.p.i, i64 0
  %.0.i279 = add nsw i64 %i.ai, %i.ag             ; 3 uses
  %2 = icmp slt i64 %.0.i279, 2147483648
  br i1 %2, label %bb.s, label %bb.t, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.aj = shl nsw i64 %.0.i279, 1
  %3 = and i64 %i.aj, 8589934590
  %i.ak = or disjoint i64 %3, 1
  %i.al = inttoptr i64 %i.ak to ptr
  br label %lean_dec.exit258

bb.t:                                             ; preds = %bb.r
  %i.am = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i279) #7
  br label %lean_dec.exit258

lean_int_emod.exit:                               ; preds = %lean_nat_to_int.exit277
  %i.an = tail call ptr @lean_int_big_emod(ptr noundef %.1.i, ptr noundef %.1.i276) #7 ; 2 uses
  br i1 %i.z, label %bb.u, label %lean_dec.exit262.thread

bb.u:                                             ; preds = %lean_int_emod.exit.thread495, %lean_int_emod.exit
  %i.ao = phi ptr [ %i.aa, %lean_int_emod.exit.thread495 ], [ %i.an, %lean_int_emod.exit ] ; 2 uses
  %i.ap = load i32, ptr %.1.i276, align 4, !tbaa !12 ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.v, label %bb.w, !prof !10

bb.v:                                             ; preds = %bb.u
  %i.ar = add nsw i32 %i.ap, -1
  store i32 %i.ar, ptr %.1.i276, align 4, !tbaa !12
  br label %lean_dec.exit262

bb.w:                                             ; preds = %bb.u
  %.not.i.i260 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i260, label %lean_dec.exit262, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i276) #7
  br label %lean_dec.exit262

lean_dec.exit262:                                 ; preds = %bb.v, %bb.w, %bb.x
  br i1 %.not.i278, label %lean_dec.exit262.thread, label %lean_dec.exit258

lean_dec.exit262.thread:                          ; preds = %lean_int_emod.exit, %lean_dec.exit262
  %.1.i280494499 = phi ptr [ %i.ao, %lean_dec.exit262 ], [ %i.an, %lean_int_emod.exit ] ; 3 uses
  %i.as = load i32, ptr %.1.i, align 4, !tbaa !12 ; 3 uses
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %bb.y, label %bb.z, !prof !10

bb.y:                                             ; preds = %lean_dec.exit262.thread
  %i.au = add nsw i32 %i.as, -1
  store i32 %i.au, ptr %.1.i, align 4, !tbaa !12
  br label %lean_dec.exit258

bb.z:                                             ; preds = %lean_dec.exit262.thread
  %.not.i.i256 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i256, label %lean_dec.exit258, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #7
  br label %lean_dec.exit258

lean_dec.exit258:                                 ; preds = %bb.q, %bb.s, %bb.t, %bb.y, %bb.z, %bb.aa, %lean_dec.exit262
  %.1.i280494498 = phi ptr [ %.1.i280494499, %bb.y ], [ %.1.i280494499, %bb.z ], [ %.1.i280494499, %bb.aa ], [ %i.ao, %lean_dec.exit262 ], [ %i.am, %bb.t ], [ %i.al, %bb.s ], [ %.1.i, %bb.q ] ; 2 uses
  br i1 %i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %lean_dec.exit258
  %i.av = getelementptr inbounds nuw i8, ptr %.0178, i64 4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = and i32 %i.aw, 16777215
  store i32 %i.ax, ptr %i.av, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.0178, i64 8
  store ptr %.1.i280494498, ptr %i.ay, align 8, !tbaa !14
  br label %common.ret512

bb.ac:                                            ; preds = %lean_dec.exit258
  tail call void @lean_inc_heartbeat() #7
  %i.az = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.ad, label %lean_alloc_ctor.exit

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ac
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 1, ptr %i.az, align 4, !tbaa !12
  store i32 65552, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.1.i280494498, ptr %i.bc, align 8, !tbaa !14
  br label %common.ret512

bb.ae:                                            ; preds = %lean_obj_tag.exit
  %i.bd = ptrtoint ptr %0 to i64
  %i.be = and i64 %i.bd, 1
  %.not.i251 = icmp eq i64 %i.be, 0
  br i1 %.not.i251, label %bb.af, label %lean_dec.exit254

bb.af:                                            ; preds = %bb.ae
  %i.bf = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 1
  br i1 %i.bg, label %bb.ag, label %bb.ah, !prof !10

bb.ag:                                            ; preds = %bb.af
  %i.bh = add nsw i32 %i.bf, -1
  store i32 %i.bh, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit254

bb.ah:                                            ; preds = %bb.af
  %.not.i.i252 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i252, label %lean_dec.exit254, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit254

lean_dec.exit254:                                 ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.ae
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !14 ; 5 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, 1
  %.not.i202 = icmp eq i64 %i.bl, 0
  br i1 %.not.i202, label %bb.aj, label %lean_inc.exit203

bb.aj:                                            ; preds = %lean_dec.exit254
  %.val.i.i282 = load i32, ptr %i.bj, align 4, !tbaa !12 ; 3 uses
  %i.bm = icmp sgt i32 %.val.i.i282, 0
  br i1 %i.bm, label %bb.ak, label %bb.al, !prof !10

bb.ak:                                            ; preds = %bb.aj
  %i.bn = add nuw i32 %.val.i.i282, 1
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !12
  br label %lean_inc.exit203

bb.al:                                            ; preds = %bb.aj
  %.not.i.i283 = icmp eq i32 %.val.i.i282, 0
  br i1 %.not.i.i283, label %lean_inc.exit203, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bo = atomicrmw add ptr %i.bj, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit203

lean_inc.exit203:                                 ; preds = %bb.am, %bb.al, %bb.ak, %lean_dec.exit254
  %.val.i285 = load i32, ptr %1, align 8, !tbaa !12 ; 4 uses
  %i.bp = icmp eq i32 %.val.i285, 1
  br i1 %i.bp, label %.preheader.i, label %bb.ar

.preheader.i:                                     ; preds = %lean_inc.exit203
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !14 ; 4 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 1
  %.not.i7.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i7.i, label %bb.an, label %lean_dec.exit.i

bb.an:                                            ; preds = %.preheader.i
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !12 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.ao, label %bb.ap, !prof !10

bb.ao:                                            ; preds = %bb.an
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.ap:                                            ; preds = %bb.an
  %.not.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq) #7
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.aq, %bb.ap, %bb.ao, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %1) #7
  br label %lean_dec_ref_known.exit

bb.ar:                                            ; preds = %lean_inc.exit203
  %i.bw = icmp sgt i32 %.val.i285, 1
  br i1 %i.bw, label %bb.as, label %bb.at, !prof !10

bb.as:                                            ; preds = %bb.ar
  %i.bx = add nsw i32 %.val.i285, -1
  store i32 %i.bx, ptr %1, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.at:                                            ; preds = %bb.ar
  %.not.i.i286 = icmp eq i32 %.val.i285, 0
  br i1 %.not.i.i286, label %lean_dec_ref_known.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.as, %bb.at, %bb.au
  %i.by = tail call ptr @l_Lean_Grind_CommRing_Poly_ofVar(ptr noundef %i.bj)
  br label %common.ret512

bb.av:                                            ; preds = %lean_obj_tag.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !14 ; 4 uses
  %.val.i.i288 = load i32, ptr %i.ca, align 4, !tbaa !12 ; 3 uses
  %i.cb = icmp sgt i32 %.val.i.i288, 0
  br i1 %i.cb, label %bb.aw, label %bb.ax, !prof !10

bb.aw:                                            ; preds = %bb.av
  %i.cc = add nuw i32 %.val.i.i288, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !12
  br label %lean_inc_ref.exit290

end_hunk_7
begin_hunk_8_@l_Lean_Grind_CommRing_Expr_toPolyC_go:bb.a
  br i1 %.not.i.i394, label %lean_inc.exit191, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ku = atomicrmw add ptr %0, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit191

lean_inc.exit191:                                 ; preds = %bb.gu, %bb.gt, %bb.gs, %lean_del_object.exit392
  %i.kv = tail call ptr @l_Lean_Grind_CommRing_Expr_toPolyC_go(ptr noundef %0, ptr noundef %i.hg)
  %i.kw = tail call ptr @l_Lean_Grind_CommRing_Poly_powC(ptr noundef %i.kv, ptr noundef %i.hi, ptr noundef %0) ; 4 uses
  br i1 %.not.i267, label %bb.gv, label %common.ret512

bb.gv:                                            ; preds = %lean_inc.exit191
  %i.kx = load i32, ptr %i.hi, align 4, !tbaa !12 ; 3 uses
  %i.ky = icmp sgt i32 %i.kx, 1
  br i1 %i.ky, label %bb.gw, label %bb.gx, !prof !10

bb.gw:                                            ; preds = %bb.gv
  %i.kz = add nsw i32 %i.kx, -1
  store i32 %i.kz, ptr %i.hi, align 4, !tbaa !12
  br label %common.ret512

bb.gx:                                            ; preds = %bb.gv
  %.not.i.i220 = icmp eq i32 %i.kx, 0
  br i1 %.not.i.i220, label %common.ret512, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hi) #7
  br label %common.ret512

bb.gz:                                            ; preds = %.split, %lean_nat_eq.exit
  %i.la = ptrtoint ptr %.0186 to i64
  %i.lb = and i64 %i.la, 1
  %.not.i396 = icmp eq i64 %i.lb, 0
  br i1 %.not.i396, label %bb.ha, label %lean_del_object.exit397

bb.ha:                                            ; preds = %bb.gz
  tail call void @lean_free_object(ptr noundef %.0186) #7
  br label %lean_del_object.exit397

lean_del_object.exit397:                          ; preds = %bb.gz, %bb.ha
  br i1 %.not.i267, label %bb.hb, label %lean_dec.exit218

bb.hb:                                            ; preds = %lean_del_object.exit397
  %i.lc = load i32, ptr %i.hi, align 4, !tbaa !12 ; 3 uses
  %i.ld = icmp sgt i32 %i.lc, 1
  br i1 %i.ld, label %bb.hc, label %bb.hd, !prof !10

bb.hc:                                            ; preds = %bb.hb
  %i.le = add nsw i32 %i.lc, -1
  store i32 %i.le, ptr %i.hi, align 4, !tbaa !12
  br label %lean_dec.exit218

bb.hd:                                            ; preds = %bb.hb
  %.not.i.i216 = icmp eq i32 %i.lc, 0
  br i1 %.not.i.i216, label %lean_dec.exit218, label %bb.he

bb.he:                                            ; preds = %bb.hd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hi) #7
  br label %lean_dec.exit218

lean_dec.exit218:                                 ; preds = %bb.hc, %bb.hd, %bb.he, %lean_del_object.exit397
  %i.lf = load i32, ptr %i.hg, align 4, !tbaa !12 ; 3 uses
  %i.lg = icmp sgt i32 %i.lf, 1
  br i1 %i.lg, label %bb.hf, label %bb.hg, !prof !10

bb.hf:                                            ; preds = %lean_dec.exit218
  %i.lh = add nsw i32 %i.lf, -1
  store i32 %i.lh, ptr %i.hg, align 4, !tbaa !12
  br label %lean_dec_ref.exit188

bb.hg:                                            ; preds = %lean_dec.exit218
  %.not.i187 = icmp eq i32 %i.lf, 0
  br i1 %.not.i187, label %lean_dec_ref.exit188, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hg) #7
  br label %lean_dec_ref.exit188

lean_dec_ref.exit188:                             ; preds = %bb.hf, %bb.hg, %bb.hh
  %i.li = ptrtoint ptr %0 to i64
  %i.lj = and i64 %i.li, 1
  %.not.i211 = icmp eq i64 %i.lj, 0
  br i1 %.not.i211, label %bb.hi, label %lean_dec.exit214

bb.hi:                                            ; preds = %lean_dec_ref.exit188
  %i.lk = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ll = icmp sgt i32 %i.lk, 1
  br i1 %i.ll, label %bb.hj, label %bb.hk, !prof !10

bb.hj:                                            ; preds = %bb.hi
  %i.lm = add nsw i32 %i.lk, -1
  store i32 %i.lm, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit214

bb.hk:                                            ; preds = %bb.hi
  %.not.i.i212 = icmp eq i32 %i.lk, 0
  br i1 %.not.i.i212, label %lean_dec.exit214, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit214

lean_dec.exit214:                                 ; preds = %bb.hj, %bb.hk, %bb.hl, %lean_dec_ref.exit188
  %i.ln = load atomic i32, ptr @l_Lean_Grind_CommRing_Poly_pow___closed__0_once seq_cst, align 4, !tbaa !18
  %i.lo = icmp eq i32 %i.ln, 1
  br i1 %i.lo, label %bb.hm, label %bb.hn, !prof !10

bb.hm:                                            ; preds = %lean_dec.exit214
  %i.lp = load ptr, ptr @l_Lean_Grind_CommRing_Poly_pow___closed__0, align 8, !tbaa !14
  br label %common.ret512

bb.hn:                                            ; preds = %lean_dec.exit214
  %i.lq = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_Poly_pow___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_Poly_pow___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_Poly_pow___closed__0) #7
  br label %common.ret512

bb.ho:                                            ; preds = %lean_obj_tag.exit
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !14 ; 10 uses
  %i.lt = ptrtoint ptr %i.ls to i64               ; 2 uses
  %i.lu = and i64 %i.lt, 1
  %.not.i189 = icmp eq i64 %i.lu, 0               ; 3 uses
  br i1 %.not.i189, label %bb.hp, label %lean_inc.exit

bb.hp:                                            ; preds = %bb.ho
  %.val.i.i400 = load i32, ptr %i.ls, align 4, !tbaa !12 ; 3 uses
  %i.lv = icmp sgt i32 %.val.i.i400, 0
  br i1 %i.lv, label %bb.hq, label %bb.hr, !prof !10

bb.hq:                                            ; preds = %bb.hp
  %i.lw = add nuw i32 %.val.i.i400, 1
  store i32 %i.lw, ptr %i.ls, align 4, !tbaa !12
  br label %lean_inc.exit

bb.hr:                                            ; preds = %bb.hp
  %.not.i.i401 = icmp eq i32 %.val.i.i400, 0
  br i1 %.not.i.i401, label %lean_inc.exit, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.lx = atomicrmw add ptr %i.ls, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.hs, %bb.hr, %bb.hq, %bb.ho
  %i.ly = load i32, ptr %1, align 8, !tbaa !12    ; 3 uses
  %i.lz = icmp sgt i32 %i.ly, 1
  br i1 %i.lz, label %bb.ht, label %bb.hu, !prof !10

bb.ht:                                            ; preds = %lean_inc.exit
  %i.ma = add nsw i32 %i.ly, -1
  store i32 %i.ma, ptr %1, align 8, !tbaa !12
  br label %lean_dec_ref.exit

bb.hu:                                            ; preds = %lean_inc.exit
  %.not.i = icmp eq i32 %i.ly, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.ht, %bb.hu, %bb.hv
  %i.mb = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.mc = and i64 %i.mb, 1
  %.not.i403 = icmp eq i64 %i.mc, 0
  %i.md = icmp ult ptr %0, inttoptr (i64 4294967296 to ptr)
  %or.cond.i404 = or i1 %i.md, %.not.i403
  br i1 %or.cond.i404, label %lean_nat_to_int.exit406, label %bb.hw

bb.hw:                                            ; preds = %lean_dec_ref.exit
  %i.me = lshr i64 %i.mb, 1
  %i.mf = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.me) #7
  br label %lean_nat_to_int.exit406

lean_nat_to_int.exit406:                          ; preds = %lean_dec_ref.exit, %bb.hw
  %.1.i405 = phi ptr [ %0, %lean_dec_ref.exit ], [ %i.mf, %bb.hw ] ; 6 uses
  %.pre431 = ptrtoint ptr %.1.i405 to i64         ; 2 uses
  %.pre = and i64 %.pre431, 1
  %i.mg = icmp eq i64 %.pre, 0                    ; 2 uses
  br i1 %.not.i189, label %lean_int_emod.exit413, label %bb.hx, !prof !9

bb.hx:                                            ; preds = %lean_nat_to_int.exit406
  br i1 %i.mg, label %lean_int_emod.exit413.thread505, label %bb.hy, !prof !9

lean_int_emod.exit413.thread505:                  ; preds = %bb.hx
  %i.mh = tail call ptr @lean_int_big_emod(ptr noundef %i.ls, ptr noundef %.1.i405) #7
  br label %bb.ic

bb.hy:                                            ; preds = %bb.hx
  %i.mi = shl i64 %.pre431, 31
  %i.mj = ashr i64 %i.mi, 32                      ; 3 uses
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %lean_dec.exit, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.ml = shl i64 %i.lt, 31
  %i.mm = ashr i64 %i.ml, 32
  %i.mn = srem i64 %i.mm, %i.mj                   ; 2 uses
  %i.mo = icmp slt i64 %i.mn, 0
  %.p.i409 = tail call i64 @llvm.abs.i64(i64 %i.mj, i1 true)
  %i.mp = select i1 %i.mo, i64 %.p.i409, i64 0
  %.0.i410 = add nsw i64 %i.mp, %i.mn             ; 3 uses
  %4 = icmp slt i64 %.0.i410, 2147483648
  br i1 %4, label %bb.ia, label %bb.ib, !prof !10

bb.ia:                                            ; preds = %bb.hz
  %i.mq = shl nsw i64 %.0.i410, 1
  %5 = and i64 %i.mq, 8589934590
  %i.mr = or disjoint i64 %5, 1
  %i.ms = inttoptr i64 %i.mr to ptr
  br label %lean_dec.exit

bb.ib:                                            ; preds = %bb.hz
  %i.mt = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i410) #7
  br label %lean_dec.exit

lean_int_emod.exit413:                            ; preds = %lean_nat_to_int.exit406
  %i.mu = tail call ptr @lean_int_big_emod(ptr noundef %i.ls, ptr noundef %.1.i405) #7 ; 2 uses
  br i1 %i.mg, label %bb.ic, label %lean_dec.exit210.thread

bb.ic:                                            ; preds = %lean_int_emod.exit413.thread505, %lean_int_emod.exit413
  %i.mv = phi ptr [ %i.mh, %lean_int_emod.exit413.thread505 ], [ %i.mu, %lean_int_emod.exit413 ] ; 2 uses
  %i.mw = load i32, ptr %.1.i405, align 4, !tbaa !12 ; 3 uses
  %i.mx = icmp sgt i32 %i.mw, 1
  br i1 %i.mx, label %bb.id, label %bb.ie, !prof !10

bb.id:                                            ; preds = %bb.ic
  %i.my = add nsw i32 %i.mw, -1
  store i32 %i.my, ptr %.1.i405, align 4, !tbaa !12
  br label %lean_dec.exit210

bb.ie:                                            ; preds = %bb.ic
  %.not.i.i208 = icmp eq i32 %i.mw, 0
  br i1 %.not.i.i208, label %lean_dec.exit210, label %bb.if

bb.if:                                            ; preds = %bb.ie
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i405) #7
  br label %lean_dec.exit210

lean_dec.exit210:                                 ; preds = %bb.id, %bb.ie, %bb.if
  br i1 %.not.i189, label %lean_dec.exit210.thread, label %lean_dec.exit

lean_dec.exit210.thread:                          ; preds = %lean_int_emod.exit413, %lean_dec.exit210
  %.1.i411504509 = phi ptr [ %i.mv, %lean_dec.exit210 ], [ %i.mu, %lean_int_emod.exit413 ] ; 3 uses
  %i.mz = load i32, ptr %i.ls, align 4, !tbaa !12 ; 3 uses
  %i.na = icmp sgt i32 %i.mz, 1
  br i1 %i.na, label %bb.ig, label %bb.ih, !prof !10

bb.ig:                                            ; preds = %lean_dec.exit210.thread
  %i.nb = add nsw i32 %i.mz, -1
  store i32 %i.nb, ptr %i.ls, align 4, !tbaa !12
  br label %lean_dec.exit

bb.ih:                                            ; preds = %lean_dec.exit210.thread
  %.not.i.i = icmp eq i32 %i.mz, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ls) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.hy, %bb.ia, %bb.ib, %bb.ig, %bb.ih, %bb.ii, %lean_dec.exit210
  %.1.i411504508 = phi ptr [ %.1.i411504509, %bb.ig ], [ %.1.i411504509, %bb.ih ], [ %.1.i411504509, %bb.ii ], [ %i.mv, %lean_dec.exit210 ], [ %i.mt, %bb.ib ], [ %i.ms, %bb.ia ], [ %i.ls, %bb.hy ]
  tail call void @lean_inc_heartbeat() #7
  %i.nc = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %bb.ij, label %lean_alloc_ctor.exit414

bb.ij:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit414:                          ; preds = %lean_dec.exit
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  store i32 1, ptr %i.nc, align 4, !tbaa !12
  store i32 65552, ptr %i.ne, align 4
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  store ptr %.1.i411504508, ptr %i.nf, align 8, !tbaa !14
  br label %common.ret512
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_CommRing_Expr_toPolyC(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @l_Lean_Grind_CommRing_Expr_toPolyC_go(ptr noundef %1, ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_CommRing_Expr_toPolyC__nc_go(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i270 = icmp eq i64 %i.b, 0                ; 3 uses
  br i1 %.not.i270, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i271 = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  switch i32 %.0.i271, label %bb.ho [
    i32 1, label %bb.d
    i32 3, label %bb.ae
    i32 4, label %bb.av
    i32 5, label %bb.bn
    i32 6, label %bb.ck
    i32 7, label %bb.dj
    i32 8, label %bb.ei
  ]

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 6 uses
  %.val269 = load i32, ptr %1, align 8, !tbaa !12
  %i.i = icmp eq i32 %.val269, 1                  ; 2 uses
  %.pre423 = ptrtoint ptr %i.h to i64             ; 2 uses
  %.pre425 = and i64 %.pre423, 1                  ; 2 uses
  br i1 %i.i, label %lean_dec.exit266, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i204 = icmp eq i64 %.pre425, 0
  br i1 %.not.i204, label %bb.f, label %lean_inc.exit205

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !12 ; 3 uses
  %i.j = icmp sgt i32 %.val.i.i, 0
  br i1 %i.j, label %bb.g, label %bb.h, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw i32 %.val.i.i, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !12
  br label %lean_inc.exit205

bb.h:                                             ; preds = %bb.f
  %.not.i.i272 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i272, label %lean_inc.exit205, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = atomicrmw add ptr %i.h, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit205

lean_inc.exit205:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i270, label %bb.j, label %lean_dec.exit266

bb.j:                                             ; preds = %lean_inc.exit205
  %i.m = load i32, ptr %1, align 8, !tbaa !12     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.k, label %bb.l, !prof !10

bb.k:                                             ; preds = %bb.j
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %1, align 8, !tbaa !12
  br label %lean_dec.exit266

bb.l:                                             ; preds = %bb.j
  %.not.i.i264 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i264, label %lean_dec.exit266, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit266

lean_dec.exit266:                                 ; preds = %bb.d, %lean_inc.exit205, %bb.m, %bb.l, %bb.k
  %.0178 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit205 ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %1, %bb.d ] ; 3 uses
  %.not.i273 = icmp eq i64 %.pre425, 0
  %i.p = icmp ult ptr %i.h, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.p, %.not.i273
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.n

bb.n:                                             ; preds = %lean_dec.exit266
  %i.q = lshr i64 %.pre423, 1
  %i.r = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.q) #7
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %lean_dec.exit266, %bb.n
  %.1.i = phi ptr [ %i.h, %lean_dec.exit266 ], [ %i.r, %bb.n ] ; 7 uses
  %i.s = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.t = and i64 %i.s, 1
  %.not.i274 = icmp eq i64 %i.t, 0
  %i.u = icmp ult ptr %0, inttoptr (i64 4294967296 to ptr)
  %or.cond.i275 = or i1 %i.u, %.not.i274
  br i1 %or.cond.i275, label %lean_nat_to_int.exit277, label %bb.o

bb.o:                                             ; preds = %lean_nat_to_int.exit
  %i.v = lshr i64 %i.s, 1
  %i.w = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.v) #7
  br label %lean_nat_to_int.exit277

lean_nat_to_int.exit277:                          ; preds = %lean_nat_to_int.exit, %bb.o
  %.1.i276 = phi ptr [ %0, %lean_nat_to_int.exit ], [ %i.w, %bb.o ] ; 6 uses
  %i.x = ptrtoint ptr %.1.i to i64                ; 2 uses
  %i.y = and i64 %i.x, 1
  %.not.i278 = icmp eq i64 %i.y, 0                ; 2 uses
  %.pre432 = ptrtoint ptr %.1.i276 to i64         ; 2 uses
  %.pre433 = and i64 %.pre432, 1
  %i.z = icmp eq i64 %.pre433, 0                  ; 2 uses
  br i1 %.not.i278, label %lean_int_emod.exit, label %bb.p, !prof !9

bb.p:                                             ; preds = %lean_nat_to_int.exit277
  br i1 %i.z, label %lean_int_emod.exit.thread495, label %bb.q, !prof !9

lean_int_emod.exit.thread495:                     ; preds = %bb.p
  %i.aa = tail call ptr @lean_int_big_emod(ptr noundef %.1.i, ptr noundef %.1.i276) #7
  br label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ab = shl i64 %.pre432, 31
  %i.ac = ashr i64 %i.ab, 32                      ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %lean_dec.exit258, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = shl i64 %i.x, 31
  %i.af = ashr i64 %i.ae, 32
  %i.ag = srem i64 %i.af, %i.ac                   ; 2 uses
  %i.ah = icmp slt i64 %i.ag, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.ac, i1 true)
  %i.ai = select i1 %i.ah, i64 %.p.i, i64 0
  %.0.i279 = add nsw i64 %i.ai, %i.ag             ; 3 uses
  %2 = icmp slt i64 %.0.i279, 2147483648
  br i1 %2, label %bb.s, label %bb.t, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.aj = shl nsw i64 %.0.i279, 1
  %3 = and i64 %i.aj, 8589934590
  %i.ak = or disjoint i64 %3, 1
  %i.al = inttoptr i64 %i.ak to ptr
  br label %lean_dec.exit258

bb.t:                                             ; preds = %bb.r
  %i.am = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i279) #7
  br label %lean_dec.exit258

lean_int_emod.exit:                               ; preds = %lean_nat_to_int.exit277
  %i.an = tail call ptr @lean_int_big_emod(ptr noundef %.1.i, ptr noundef %.1.i276) #7 ; 2 uses
  br i1 %i.z, label %bb.u, label %lean_dec.exit262.thread

bb.u:                                             ; preds = %lean_int_emod.exit.thread495, %lean_int_emod.exit
  %i.ao = phi ptr [ %i.aa, %lean_int_emod.exit.thread495 ], [ %i.an, %lean_int_emod.exit ] ; 2 uses
  %i.ap = load i32, ptr %.1.i276, align 4, !tbaa !12 ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.v, label %bb.w, !prof !10

bb.v:                                             ; preds = %bb.u
  %i.ar = add nsw i32 %i.ap, -1
  store i32 %i.ar, ptr %.1.i276, align 4, !tbaa !12
  br label %lean_dec.exit262

bb.w:                                             ; preds = %bb.u
  %.not.i.i260 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i260, label %lean_dec.exit262, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i276) #7
  br label %lean_dec.exit262

lean_dec.exit262:                                 ; preds = %bb.v, %bb.w, %bb.x
  br i1 %.not.i278, label %lean_dec.exit262.thread, label %lean_dec.exit258

lean_dec.exit262.thread:                          ; preds = %lean_int_emod.exit, %lean_dec.exit262
  %.1.i280494499 = phi ptr [ %i.ao, %lean_dec.exit262 ], [ %i.an, %lean_int_emod.exit ] ; 3 uses
  %i.as = load i32, ptr %.1.i, align 4, !tbaa !12 ; 3 uses
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %bb.y, label %bb.z, !prof !10

bb.y:                                             ; preds = %lean_dec.exit262.thread
  %i.au = add nsw i32 %i.as, -1
  store i32 %i.au, ptr %.1.i, align 4, !tbaa !12
  br label %lean_dec.exit258

bb.z:                                             ; preds = %lean_dec.exit262.thread
  %.not.i.i256 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i256, label %lean_dec.exit258, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #7
  br label %lean_dec.exit258

lean_dec.exit258:                                 ; preds = %bb.q, %bb.s, %bb.t, %bb.y, %bb.z, %bb.aa, %lean_dec.exit262
  %.1.i280494498 = phi ptr [ %.1.i280494499, %bb.y ], [ %.1.i280494499, %bb.z ], [ %.1.i280494499, %bb.aa ], [ %i.ao, %lean_dec.exit262 ], [ %i.am, %bb.t ], [ %i.al, %bb.s ], [ %.1.i, %bb.q ] ; 2 uses
  br i1 %i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %lean_dec.exit258
  %i.av = getelementptr inbounds nuw i8, ptr %.0178, i64 4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = and i32 %i.aw, 16777215
  store i32 %i.ax, ptr %i.av, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.0178, i64 8
  store ptr %.1.i280494498, ptr %i.ay, align 8, !tbaa !14
  br label %common.ret512

bb.ac:                                            ; preds = %lean_dec.exit258
  tail call void @lean_inc_heartbeat() #7
  %i.az = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.ad, label %lean_alloc_ctor.exit

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ac
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 1, ptr %i.az, align 4, !tbaa !12
  store i32 65552, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.1.i280494498, ptr %i.bc, align 8, !tbaa !14
  br label %common.ret512

bb.ae:                                            ; preds = %lean_obj_tag.exit
  %i.bd = ptrtoint ptr %0 to i64
  %i.be = and i64 %i.bd, 1
  %.not.i251 = icmp eq i64 %i.be, 0
  br i1 %.not.i251, label %bb.af, label %lean_dec.exit254

bb.af:                                            ; preds = %bb.ae
  %i.bf = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 1
  br i1 %i.bg, label %bb.ag, label %bb.ah, !prof !10

bb.ag:                                            ; preds = %bb.af
  %i.bh = add nsw i32 %i.bf, -1
  store i32 %i.bh, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit254

bb.ah:                                            ; preds = %bb.af
  %.not.i.i252 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i252, label %lean_dec.exit254, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit254

lean_dec.exit254:                                 ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.ae
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !14 ; 5 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, 1
  %.not.i202 = icmp eq i64 %i.bl, 0
  br i1 %.not.i202, label %bb.aj, label %lean_inc.exit203

bb.aj:                                            ; preds = %lean_dec.exit254
  %.val.i.i282 = load i32, ptr %i.bj, align 4, !tbaa !12 ; 3 uses
  %i.bm = icmp sgt i32 %.val.i.i282, 0
  br i1 %i.bm, label %bb.ak, label %bb.al, !prof !10

bb.ak:                                            ; preds = %bb.aj
  %i.bn = add nuw i32 %.val.i.i282, 1
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !12
  br label %lean_inc.exit203

bb.al:                                            ; preds = %bb.aj
  %.not.i.i283 = icmp eq i32 %.val.i.i282, 0
  br i1 %.not.i.i283, label %lean_inc.exit203, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bo = atomicrmw add ptr %i.bj, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit203

lean_inc.exit203:                                 ; preds = %bb.am, %bb.al, %bb.ak, %lean_dec.exit254
  %.val.i285 = load i32, ptr %1, align 8, !tbaa !12 ; 4 uses
  %i.bp = icmp eq i32 %.val.i285, 1
  br i1 %i.bp, label %.preheader.i, label %bb.ar

.preheader.i:                                     ; preds = %lean_inc.exit203
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !14 ; 4 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 1
  %.not.i7.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i7.i, label %bb.an, label %lean_dec.exit.i

bb.an:                                            ; preds = %.preheader.i
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !12 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.ao, label %bb.ap, !prof !10

bb.ao:                                            ; preds = %bb.an
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.ap:                                            ; preds = %bb.an
  %.not.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq) #7
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.aq, %bb.ap, %bb.ao, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %1) #7
  br label %lean_dec_ref_known.exit

bb.ar:                                            ; preds = %lean_inc.exit203
  %i.bw = icmp sgt i32 %.val.i285, 1
  br i1 %i.bw, label %bb.as, label %bb.at, !prof !10

bb.as:                                            ; preds = %bb.ar
  %i.bx = add nsw i32 %.val.i285, -1
  store i32 %i.bx, ptr %1, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.at:                                            ; preds = %bb.ar
  %.not.i.i286 = icmp eq i32 %.val.i285, 0
  br i1 %.not.i.i286, label %lean_dec_ref_known.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.as, %bb.at, %bb.au
  %i.by = tail call ptr @l_Lean_Grind_CommRing_Poly_ofVar(ptr noundef %i.bj)
  br label %common.ret512

bb.av:                                            ; preds = %lean_obj_tag.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !14 ; 4 uses
  %.val.i.i288 = load i32, ptr %i.ca, align 4, !tbaa !12 ; 3 uses
  %i.cb = icmp sgt i32 %.val.i.i288, 0
  br i1 %i.cb, label %bb.aw, label %bb.ax, !prof !10

bb.aw:                                            ; preds = %bb.av
  %i.cc = add nuw i32 %.val.i.i288, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !12
  br label %lean_inc_ref.exit290

end_hunk_8
begin_hunk_9_@l_Lean_Grind_CommRing_Expr_toPolyC__nc_go:bb.a
  br i1 %.not.i.i394, label %lean_inc.exit191, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ku = atomicrmw add ptr %0, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit191

lean_inc.exit191:                                 ; preds = %bb.gu, %bb.gt, %bb.gs, %lean_del_object.exit392
  %i.kv = tail call ptr @l_Lean_Grind_CommRing_Expr_toPolyC__nc_go(ptr noundef %0, ptr noundef %i.hg)
  %i.kw = tail call ptr @l_Lean_Grind_CommRing_Poly_powC__nc(ptr noundef %i.kv, ptr noundef %i.hi, ptr noundef %0) ; 4 uses
  br i1 %.not.i267, label %bb.gv, label %common.ret512

bb.gv:                                            ; preds = %lean_inc.exit191
  %i.kx = load i32, ptr %i.hi, align 4, !tbaa !12 ; 3 uses
  %i.ky = icmp sgt i32 %i.kx, 1
  br i1 %i.ky, label %bb.gw, label %bb.gx, !prof !10

bb.gw:                                            ; preds = %bb.gv
  %i.kz = add nsw i32 %i.kx, -1
  store i32 %i.kz, ptr %i.hi, align 4, !tbaa !12
  br label %common.ret512

bb.gx:                                            ; preds = %bb.gv
  %.not.i.i220 = icmp eq i32 %i.kx, 0
  br i1 %.not.i.i220, label %common.ret512, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hi) #7
  br label %common.ret512

bb.gz:                                            ; preds = %.split, %lean_nat_eq.exit
  %i.la = ptrtoint ptr %.0186 to i64
  %i.lb = and i64 %i.la, 1
  %.not.i396 = icmp eq i64 %i.lb, 0
  br i1 %.not.i396, label %bb.ha, label %lean_del_object.exit397

bb.ha:                                            ; preds = %bb.gz
  tail call void @lean_free_object(ptr noundef %.0186) #7
  br label %lean_del_object.exit397

lean_del_object.exit397:                          ; preds = %bb.gz, %bb.ha
  br i1 %.not.i267, label %bb.hb, label %lean_dec.exit218

bb.hb:                                            ; preds = %lean_del_object.exit397
  %i.lc = load i32, ptr %i.hi, align 4, !tbaa !12 ; 3 uses
  %i.ld = icmp sgt i32 %i.lc, 1
  br i1 %i.ld, label %bb.hc, label %bb.hd, !prof !10

bb.hc:                                            ; preds = %bb.hb
  %i.le = add nsw i32 %i.lc, -1
  store i32 %i.le, ptr %i.hi, align 4, !tbaa !12
  br label %lean_dec.exit218

bb.hd:                                            ; preds = %bb.hb
  %.not.i.i216 = icmp eq i32 %i.lc, 0
  br i1 %.not.i.i216, label %lean_dec.exit218, label %bb.he

bb.he:                                            ; preds = %bb.hd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hi) #7
  br label %lean_dec.exit218

lean_dec.exit218:                                 ; preds = %bb.hc, %bb.hd, %bb.he, %lean_del_object.exit397
  %i.lf = load i32, ptr %i.hg, align 4, !tbaa !12 ; 3 uses
  %i.lg = icmp sgt i32 %i.lf, 1
  br i1 %i.lg, label %bb.hf, label %bb.hg, !prof !10

bb.hf:                                            ; preds = %lean_dec.exit218
  %i.lh = add nsw i32 %i.lf, -1
  store i32 %i.lh, ptr %i.hg, align 4, !tbaa !12
  br label %lean_dec_ref.exit188

bb.hg:                                            ; preds = %lean_dec.exit218
  %.not.i187 = icmp eq i32 %i.lf, 0
  br i1 %.not.i187, label %lean_dec_ref.exit188, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hg) #7
  br label %lean_dec_ref.exit188

lean_dec_ref.exit188:                             ; preds = %bb.hf, %bb.hg, %bb.hh
  %i.li = ptrtoint ptr %0 to i64
  %i.lj = and i64 %i.li, 1
  %.not.i211 = icmp eq i64 %i.lj, 0
  br i1 %.not.i211, label %bb.hi, label %lean_dec.exit214

bb.hi:                                            ; preds = %lean_dec_ref.exit188
  %i.lk = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ll = icmp sgt i32 %i.lk, 1
  br i1 %i.ll, label %bb.hj, label %bb.hk, !prof !10

bb.hj:                                            ; preds = %bb.hi
  %i.lm = add nsw i32 %i.lk, -1
  store i32 %i.lm, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit214

bb.hk:                                            ; preds = %bb.hi
  %.not.i.i212 = icmp eq i32 %i.lk, 0
  br i1 %.not.i.i212, label %lean_dec.exit214, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit214

lean_dec.exit214:                                 ; preds = %bb.hj, %bb.hk, %bb.hl, %lean_dec_ref.exit188
  %i.ln = load atomic i32, ptr @l_Lean_Grind_CommRing_Poly_pow___closed__0_once seq_cst, align 4, !tbaa !18
  %i.lo = icmp eq i32 %i.ln, 1
  br i1 %i.lo, label %bb.hm, label %bb.hn, !prof !10

bb.hm:                                            ; preds = %lean_dec.exit214
  %i.lp = load ptr, ptr @l_Lean_Grind_CommRing_Poly_pow___closed__0, align 8, !tbaa !14
  br label %common.ret512

bb.hn:                                            ; preds = %lean_dec.exit214
  %i.lq = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Grind_CommRing_Poly_pow___closed__0, ptr noundef nonnull @l_Lean_Grind_CommRing_Poly_pow___closed__0_once, ptr noundef nonnull @_init_l_Lean_Grind_CommRing_Poly_pow___closed__0) #7
  br label %common.ret512

bb.ho:                                            ; preds = %lean_obj_tag.exit
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !14 ; 10 uses
  %i.lt = ptrtoint ptr %i.ls to i64               ; 2 uses
  %i.lu = and i64 %i.lt, 1
  %.not.i189 = icmp eq i64 %i.lu, 0               ; 3 uses
  br i1 %.not.i189, label %bb.hp, label %lean_inc.exit

bb.hp:                                            ; preds = %bb.ho
  %.val.i.i400 = load i32, ptr %i.ls, align 4, !tbaa !12 ; 3 uses
  %i.lv = icmp sgt i32 %.val.i.i400, 0
  br i1 %i.lv, label %bb.hq, label %bb.hr, !prof !10

bb.hq:                                            ; preds = %bb.hp
  %i.lw = add nuw i32 %.val.i.i400, 1
  store i32 %i.lw, ptr %i.ls, align 4, !tbaa !12
  br label %lean_inc.exit

bb.hr:                                            ; preds = %bb.hp
  %.not.i.i401 = icmp eq i32 %.val.i.i400, 0
  br i1 %.not.i.i401, label %lean_inc.exit, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.lx = atomicrmw add ptr %i.ls, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.hs, %bb.hr, %bb.hq, %bb.ho
  %i.ly = load i32, ptr %1, align 8, !tbaa !12    ; 3 uses
  %i.lz = icmp sgt i32 %i.ly, 1
  br i1 %i.lz, label %bb.ht, label %bb.hu, !prof !10

bb.ht:                                            ; preds = %lean_inc.exit
  %i.ma = add nsw i32 %i.ly, -1
  store i32 %i.ma, ptr %1, align 8, !tbaa !12
  br label %lean_dec_ref.exit

bb.hu:                                            ; preds = %lean_inc.exit
  %.not.i = icmp eq i32 %i.ly, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.ht, %bb.hu, %bb.hv
  %i.mb = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.mc = and i64 %i.mb, 1
  %.not.i403 = icmp eq i64 %i.mc, 0
  %i.md = icmp ult ptr %0, inttoptr (i64 4294967296 to ptr)
  %or.cond.i404 = or i1 %i.md, %.not.i403
  br i1 %or.cond.i404, label %lean_nat_to_int.exit406, label %bb.hw

bb.hw:                                            ; preds = %lean_dec_ref.exit
  %i.me = lshr i64 %i.mb, 1
  %i.mf = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.me) #7
  br label %lean_nat_to_int.exit406

lean_nat_to_int.exit406:                          ; preds = %lean_dec_ref.exit, %bb.hw
  %.1.i405 = phi ptr [ %0, %lean_dec_ref.exit ], [ %i.mf, %bb.hw ] ; 6 uses
  %.pre431 = ptrtoint ptr %.1.i405 to i64         ; 2 uses
  %.pre = and i64 %.pre431, 1
  %i.mg = icmp eq i64 %.pre, 0                    ; 2 uses
  br i1 %.not.i189, label %lean_int_emod.exit413, label %bb.hx, !prof !9

bb.hx:                                            ; preds = %lean_nat_to_int.exit406
  br i1 %i.mg, label %lean_int_emod.exit413.thread505, label %bb.hy, !prof !9

lean_int_emod.exit413.thread505:                  ; preds = %bb.hx
  %i.mh = tail call ptr @lean_int_big_emod(ptr noundef %i.ls, ptr noundef %.1.i405) #7
  br label %bb.ic

bb.hy:                                            ; preds = %bb.hx
  %i.mi = shl i64 %.pre431, 31
  %i.mj = ashr i64 %i.mi, 32                      ; 3 uses
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %lean_dec.exit, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.ml = shl i64 %i.lt, 31
  %i.mm = ashr i64 %i.ml, 32
  %i.mn = srem i64 %i.mm, %i.mj                   ; 2 uses
  %i.mo = icmp slt i64 %i.mn, 0
  %.p.i409 = tail call i64 @llvm.abs.i64(i64 %i.mj, i1 true)
  %i.mp = select i1 %i.mo, i64 %.p.i409, i64 0
  %.0.i410 = add nsw i64 %i.mp, %i.mn             ; 3 uses
  %4 = icmp slt i64 %.0.i410, 2147483648
  br i1 %4, label %bb.ia, label %bb.ib, !prof !10

bb.ia:                                            ; preds = %bb.hz
  %i.mq = shl nsw i64 %.0.i410, 1
  %5 = and i64 %i.mq, 8589934590
  %i.mr = or disjoint i64 %5, 1
  %i.ms = inttoptr i64 %i.mr to ptr
  br label %lean_dec.exit

bb.ib:                                            ; preds = %bb.hz
  %i.mt = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i410) #7
  br label %lean_dec.exit

lean_int_emod.exit413:                            ; preds = %lean_nat_to_int.exit406
  %i.mu = tail call ptr @lean_int_big_emod(ptr noundef %i.ls, ptr noundef %.1.i405) #7 ; 2 uses
  br i1 %i.mg, label %bb.ic, label %lean_dec.exit210.thread

bb.ic:                                            ; preds = %lean_int_emod.exit413.thread505, %lean_int_emod.exit413
  %i.mv = phi ptr [ %i.mh, %lean_int_emod.exit413.thread505 ], [ %i.mu, %lean_int_emod.exit413 ] ; 2 uses
  %i.mw = load i32, ptr %.1.i405, align 4, !tbaa !12 ; 3 uses
  %i.mx = icmp sgt i32 %i.mw, 1
  br i1 %i.mx, label %bb.id, label %bb.ie, !prof !10

bb.id:                                            ; preds = %bb.ic
  %i.my = add nsw i32 %i.mw, -1
  store i32 %i.my, ptr %.1.i405, align 4, !tbaa !12
  br label %lean_dec.exit210

bb.ie:                                            ; preds = %bb.ic
  %.not.i.i208 = icmp eq i32 %i.mw, 0
  br i1 %.not.i.i208, label %lean_dec.exit210, label %bb.if

bb.if:                                            ; preds = %bb.ie
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i405) #7
  br label %lean_dec.exit210

lean_dec.exit210:                                 ; preds = %bb.id, %bb.ie, %bb.if
  br i1 %.not.i189, label %lean_dec.exit210.thread, label %lean_dec.exit

lean_dec.exit210.thread:                          ; preds = %lean_int_emod.exit413, %lean_dec.exit210
  %.1.i411504509 = phi ptr [ %i.mv, %lean_dec.exit210 ], [ %i.mu, %lean_int_emod.exit413 ] ; 3 uses
  %i.mz = load i32, ptr %i.ls, align 4, !tbaa !12 ; 3 uses
  %i.na = icmp sgt i32 %i.mz, 1
  br i1 %i.na, label %bb.ig, label %bb.ih, !prof !10

bb.ig:                                            ; preds = %lean_dec.exit210.thread
  %i.nb = add nsw i32 %i.mz, -1
  store i32 %i.nb, ptr %i.ls, align 4, !tbaa !12
  br label %lean_dec.exit

bb.ih:                                            ; preds = %lean_dec.exit210.thread
  %.not.i.i = icmp eq i32 %i.mz, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ls) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.hy, %bb.ia, %bb.ib, %bb.ig, %bb.ih, %bb.ii, %lean_dec.exit210
  %.1.i411504508 = phi ptr [ %.1.i411504509, %bb.ig ], [ %.1.i411504509, %bb.ih ], [ %.1.i411504509, %bb.ii ], [ %i.mv, %lean_dec.exit210 ], [ %i.mt, %bb.ib ], [ %i.ms, %bb.ia ], [ %i.ls, %bb.hy ]
  tail call void @lean_inc_heartbeat() #7
  %i.nc = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %bb.ij, label %lean_alloc_ctor.exit414

bb.ij:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit414:                          ; preds = %lean_dec.exit
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  store i32 1, ptr %i.nc, align 4, !tbaa !12
  store i32 65552, ptr %i.ne, align 4
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  store ptr %.1.i411504508, ptr %i.nf, align 8, !tbaa !14
  br label %common.ret512
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_CommRing_Expr_toPolyC__nc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @l_Lean_Grind_CommRing_Expr_toPolyC__nc_go(ptr noundef %1, ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Grind_Ring_CommSolver_0__Lean_Grind_CommRing_Power_denote_match__3_splitter___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 5 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not.i10 = icmp eq i64 %i.d, 0
  br i1 %.not.i10, label %bb.b, label %lean_inc.exit11

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !12
  br label %lean_inc.exit11

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw add ptr %i.b, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit11

lean_inc.exit11:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14   ; 5 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 1
  %.not.i9 = icmp eq i64 %i.k, 0
  br i1 %.not.i9, label %bb.f, label %lean_inc.exit

bb.f:                                             ; preds = %lean_inc.exit11
  %.val.i.i12 = load i32, ptr %i.i, align 4, !tbaa !12 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i12, 0
  br i1 %i.l, label %bb.g, label %bb.h, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.m = add nuw i32 %.val.i.i12, 1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !12
  br label %lean_inc.exit

bb.h:                                             ; preds = %bb.f
  %.not.i.i13 = icmp eq i32 %.val.i.i12, 0
  br i1 %.not.i.i13, label %lean_inc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = atomicrmw add ptr %i.i, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.i, %bb.h, %bb.g, %lean_inc.exit11
  %i.o = load i32, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.j, label %bb.k, !prof !10

bb.j:                                             ; preds = %lean_inc.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %0, align 8, !tbaa !12
  br label %lean_dec_ref.exit

bb.k:                                             ; preds = %lean_inc.exit
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.j, %bb.k, %bb.l
  %i.r = tail call ptr @lean_apply_2(ptr noundef %1, ptr noundef %i.b, ptr noundef %i.i) #7
  ret ptr %i.r
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Grind_Ring_CommSolver_0__Lean_Grind_CommRing_Power_denote_match__3_splitter(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 5 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not.i10 = icmp eq i64 %i.d, 0
  br i1 %.not.i10, label %bb.b, label %lean_inc.exit11

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !12
  br label %lean_inc.exit11

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw add ptr %i.b, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit11

lean_inc.exit11:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14   ; 5 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 1
  %.not.i9 = icmp eq i64 %i.k, 0
  br i1 %.not.i9, label %bb.f, label %lean_inc.exit

bb.f:                                             ; preds = %lean_inc.exit11
  %.val.i.i12 = load i32, ptr %i.i, align 4, !tbaa !12 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i12, 0
  br i1 %i.l, label %bb.g, label %bb.h, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.m = add nuw i32 %.val.i.i12, 1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !12
end_hunk_9
