Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Functions?download=true
inline.NumInlined: 1368
inline.NumDeleted: 34
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lean_once_cell_t = type { i32, i32 }

@l_Lean_Meta_Grind_Arith_CommRing_checkInst___closed__1 = internal global ptr null, align 8
@l_Lean_Meta_Grind_Arith_CommRing_checkInst___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_Grind_Arith_CommRing_checkInst___closed__3 = internal global ptr null, align 8
@l_Lean_Meta_Grind_Arith_CommRing_checkInst___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_Grind_Arith_CommRing_checkInst___closed__5 = internal global ptr null, align 8
@l_Lean_Meta_Grind_Arith_CommRing_checkInst___closed__5_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_Grind_Arith_CommRing_checkInst___closed__7 = internal global ptr null, align 8
@l_Lean_Meta_Grind_Arith_CommRing_checkInst___closed__7_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___closed__2 = internal global ptr null, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Nat_mkType = external local_unnamed_addr global ptr, align 8
@l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions_0__Lean_Meta_Grind_Arith_CommRing_mkOne___redArg___closed__0 = internal global ptr null, align 8
@l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions_0__Lean_Meta_Grind_Arith_CommRing_mkOne___redArg___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__8 = internal global ptr null, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__8_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_Meta_Grind_Arith_CommRing_checkInst___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [64 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 64, i64 64, i64 63, [64 x i8] c"error while initializing `grind ring` operators:\0Ainstance for `\00" }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_checkInst___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [3 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 3, i64 3, i64 2, [3 x i8] c"` \00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_checkInst___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [50 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 50, i64 50, i64 49, [50 x i8] c"\0Ais not definitionally equal to the expected one \00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_checkInst___closed__6_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [59 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 59, i64 59, i64 58, [59 x i8] c"\0Awhen only reducible definitions and instances are reduced\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__4_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__4_value_aux_2, ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__3_value, ptr inttoptr (i64 -58091720198890525 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__4_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__4_value_aux_1, ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__2_value, ptr inttoptr (i64 -6396458676780361994 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__4_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__4_value_aux_0, ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__1_value, ptr inttoptr (i64 -4883001380028414860 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__4_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"Lean\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [6 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 6, i64 6, i64 5, [6 x i8] c"Grind\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [9 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 9, i64 9, i64 8, [9 x i8] c"Semiring\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"npow\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__5_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"hPow\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"HPow\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___closed__0_value, ptr inttoptr (i64 -5598821601655604069 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkNatCastFn___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [8 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 8, i64 8, i64 7, [8 x i8] c"natCast\00" }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkNatCastFn___redArg___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_mkNatCastFn___redArg___closed__1_value_aux_2, ptr @l_Lean_Meta_Grind_Arith_CommRing_mkNatCastFn___redArg___closed__0_value, ptr inttoptr (i64 -3681386416336969388 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkNatCastFn___redArg___closed__1_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_mkNatCastFn___redArg___closed__1_value_aux_1, ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__2_value, ptr inttoptr (i64 -6396458676780361994 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkNatCastFn___redArg___closed__1_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_mkNatCastFn___redArg___closed__1_value_aux_0, ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__1_value, ptr inttoptr (i64 -4883001380028414860 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkNatCastFn___redArg___closed__1_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkNatCastFn___redArg___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [8 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 8, i64 8, i64 7, [8 x i8] c"NatCast\00" }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_mkNatCastFn___redArg___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_mkNatCastFn___redArg___closed__2_value, ptr inttoptr (i64 5779414593499529281 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__0_value, ptr inttoptr (i64 -8852681814201904667 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [9 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 9, i64 9, i64 8, [9 x i8] c"instHAdd\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__3_value_aux_2, ptr @l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__2_value, ptr inttoptr (i64 5442360487226035463 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__3_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__3_value_aux_1, ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__2_value, ptr inttoptr (i64 -6396458676780361994 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__3_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__3_value_aux_0, ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__1_value, ptr inttoptr (i64 -4883001380028414860 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__3_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [6 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 6, i64 6, i64 5, [6 x i8] c"toAdd\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__4_value, ptr inttoptr (i64 -8053660256255873059 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"HAdd\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__7_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__7_value_aux_0, ptr @l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__6_value, ptr inttoptr (i64 -7766179665039610746 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__7_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__4_value, ptr inttoptr (i64 -8053660256255873059 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getAddFn___redArg___lam__3___closed__6_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"hAdd\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__0_value, ptr inttoptr (i64 -8310762361764126432 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [9 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 9, i64 9, i64 8, [9 x i8] c"instHSub\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__4_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__4_value_aux_2, ptr @l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__3_value, ptr inttoptr (i64 -276919872695963384 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__4_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__4_value_aux_1, ptr @l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__2_value, ptr inttoptr (i64 -7640033158063201852 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__4_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__4_value_aux_0, ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__1_value, ptr inttoptr (i64 -4883001380028414860 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__4_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"Ring\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [6 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 6, i64 6, i64 5, [6 x i8] c"toSub\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__6_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__5_value, ptr inttoptr (i64 -1590635508106689927 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__5_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"HSub\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__8_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__8_value_aux_0, ptr @l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__7_value, ptr inttoptr (i64 4187025665268973031 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__8_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__5_value, ptr inttoptr (i64 -1590635508106689927 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__7_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"hSub\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__0_value, ptr inttoptr (i64 -312464942870860879 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [9 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 9, i64 9, i64 8, [9 x i8] c"instHMul\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__3_value_aux_2, ptr @l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__2_value, ptr inttoptr (i64 7102027102192867304 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__3_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__3_value_aux_1, ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__2_value, ptr inttoptr (i64 -6396458676780361994 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__3_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__3_value_aux_0, ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__1_value, ptr inttoptr (i64 -4883001380028414860 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__3_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [6 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 6, i64 6, i64 5, [6 x i8] c"toMul\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__4_value, ptr inttoptr (i64 2929883540436775422 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"HMul\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__7_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__7_value_aux_0, ptr @l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__6_value, ptr inttoptr (i64 1611444129324655608 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__7_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__4_value, ptr inttoptr (i64 2929883540436775422 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getMulFn___redArg___lam__3___closed__6_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"hMul\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__1_value_aux_2, ptr @l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__0_value, ptr inttoptr (i64 -8406507234960873116 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__1_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__1_value_aux_1, ptr @l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__2_value, ptr inttoptr (i64 -7640033158063201852 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__1_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__1_value_aux_0, ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__1_value, ptr inttoptr (i64 -4883001380028414860 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__1_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [6 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 6, i64 6, i64 5, [6 x i8] c"toNeg\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__2_value, ptr inttoptr (i64 -8819929058089565090 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [4 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 4, i64 4, i64 3, [4 x i8] c"Neg\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__5_value_aux_0, ptr @l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__4_value, ptr inttoptr (i64 -1261026630893692311 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__5_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__2_value, ptr inttoptr (i64 -8819929058089565090 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getNegFn___redArg___lam__3___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [4 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 4, i64 4, i64 3, [4 x i8] c"neg\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__7___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__7___closed__2_value_aux_0, ptr @l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__7___closed__1_value, ptr inttoptr (i64 439118677539554485 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__7___closed__2_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__7___closed__0_value, ptr inttoptr (i64 7009148538150066493 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__7___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [4 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 4, i64 4, i64 3, [4 x i8] c"Int\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__7___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"cast\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__4___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [8 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 8, i64 8, i64 7, [8 x i8] c"intCast\00" }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__4___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__4___closed__1_value_aux_2, ptr @l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__4___closed__0_value, ptr inttoptr (i64 -3885706784174457599 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__4___closed__1_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__4___closed__1_value_aux_1, ptr @l_Lean_Meta_Grind_Arith_CommRing_getSubFn___redArg___lam__3___closed__2_value, ptr inttoptr (i64 -7640033158063201852 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__4___closed__1_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__4___closed__1_value_aux_0, ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__1_value, ptr inttoptr (i64 -4883001380028414860 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__4___closed__1_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__4___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [8 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 8, i64 8, i64 7, [8 x i8] c"IntCast\00" }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__4___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_getIntCastFn___redArg___lam__4___closed__2_value, ptr inttoptr (i64 4977321555018234431 to ptr)] }, align 8
@l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions_0__Lean_Meta_Grind_Arith_CommRing_mkOne___redArg___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions_0__Lean_Meta_Grind_Arith_CommRing_mkOne___redArg___closed__2_value_aux_2, ptr @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions_0__Lean_Meta_Grind_Arith_CommRing_mkOne___redArg___closed__1_value, ptr inttoptr (i64 -9104819956228869785 to ptr)] }, align 8
@l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions_0__Lean_Meta_Grind_Arith_CommRing_mkOne___redArg___closed__2_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions_0__Lean_Meta_Grind_Arith_CommRing_mkOne___redArg___closed__2_value_aux_1, ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__2_value, ptr inttoptr (i64 -6396458676780361994 to ptr)] }, align 8
@l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions_0__Lean_Meta_Grind_Arith_CommRing_mkOne___redArg___closed__2_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions_0__Lean_Meta_Grind_Arith_CommRing_mkOne___redArg___closed__2_value_aux_0, ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__1_value, ptr inttoptr (i64 -4883001380028414860 to ptr)] }, align 8
@l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions_0__Lean_Meta_Grind_Arith_CommRing_mkOne___redArg___closed__2_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions_0__Lean_Meta_Grind_Arith_CommRing_mkOne___redArg___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [6 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 6, i64 6, i64 5, [6 x i8] c"ofNat\00" }>, align 8
@l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions_0__Lean_Meta_Grind_Arith_CommRing_mkOne___redArg___closed__4_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions_0__Lean_Meta_Grind_Arith_CommRing_mkOne___redArg___closed__4_value_aux_0, ptr @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions_0__Lean_Meta_Grind_Arith_CommRing_mkOne___redArg___closed__1_value, ptr inttoptr (i64 -2868175706540839934 to ptr)] }, align 8
@l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions_0__Lean_Meta_Grind_Arith_CommRing_mkOne___redArg___closed__4_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions_0__Lean_Meta_Grind_Arith_CommRing_mkOne___redArg___closed__3_value, ptr inttoptr (i64 -810127917938445945 to ptr)] }, align 8
@l___private_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions_0__Lean_Meta_Grind_Arith_CommRing_mkOne___redArg___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [6 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 6, i64 6, i64 5, [6 x i8] c"OfNat\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__2_value_aux_2, ptr @l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__1_value, ptr inttoptr (i64 7723290638220826725 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__2_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__2_value_aux_1, ptr @l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__0_value, ptr inttoptr (i64 8615353994042975301 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__2_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__2_value_aux_0, ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__1_value, ptr inttoptr (i64 -4883001380028414860 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__2_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_mkPowFn___redArg___lam__1___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [6 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 6, i64 6, i64 5, [6 x i8] c"Field\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [6 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 6, i64 6, i64 5, [6 x i8] c"toInv\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__4_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__3_value, ptr inttoptr (i64 1412621069384631438 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [4 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 4, i64 4, i64 3, [4 x i8] c"Inv\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__6_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__6_value_aux_0, ptr @l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__5_value, ptr inttoptr (i64 -8275293886973731009 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__6_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__3_value, ptr inttoptr (i64 1412621069384631438 to ptr)] }, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__5_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [4 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 4, i64 4, i64 3, [4 x i8] c"inv\00" }>, align 8
@l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3___closed__7_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [44 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 44, i64 44, i64 43, [44 x i8] c"`grind` internal error, type is not a field\00" }>, align 8

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_addMessageContextFull___at___00Lean_throwError___at___00Lean_Meta_Grind_Arith_CommRing_checkInst_spec__0_spec__0(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_st_ref_get(ptr noundef %4) #3 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 4 uses
  %.val.i.i = load i32, ptr %i.c, align 4, !tbaa !12 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i32 %.val.i.i, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !12
  br label %lean_inc_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = atomicrmw sub ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.d, %bb.c, %bb.b
  %i.g = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_inc_ref.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec.exit28

bb.f:                                             ; preds = %lean_inc_ref.exit
  %.not.i29 = icmp eq i32 %i.g, 0
  br i1 %.not.i29, label %lean_dec.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #3
  br label %lean_dec.exit28

lean_dec.exit28:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.j = tail call ptr @lean_st_ref_get(ptr noundef %2) #3 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10   ; 4 uses
  %.val.i.i32 = load i32, ptr %i.l, align 4, !tbaa !12 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i32, 0
  br i1 %i.m, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_dec.exit28
  %i.n = add nuw i32 %.val.i.i32, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !12
  br label %lean_inc_ref.exit34

bb.i:                                             ; preds = %lean_dec.exit28
  %.not.i.i33 = icmp eq i32 %.val.i.i32, 0
  br i1 %.not.i.i33, label %lean_inc_ref.exit34, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = atomicrmw sub ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit34

lean_inc_ref.exit34:                              ; preds = %bb.j, %bb.i, %bb.h
  %i.p = load i32, ptr %i.j, align 8, !tbaa !12   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %lean_inc_ref.exit34
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.j, align 8, !tbaa !12
  br label %lean_dec.exit

bb.l:                                             ; preds = %lean_inc_ref.exit34
  %.not.i30 = icmp eq i32 %i.p, 0
  br i1 %.not.i30, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #3
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !10   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10   ; 4 uses
  %.val.i.i35 = load i32, ptr %i.v, align 4, !tbaa !12 ; 3 uses
  %i.w = icmp sgt i32 %.val.i.i35, 0
  br i1 %i.w, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %lean_dec.exit
  %i.x = add nuw i32 %.val.i.i35, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !12
  br label %lean_inc_ref.exit37

bb.o:                                             ; preds = %lean_dec.exit
  %.not.i.i36 = icmp eq i32 %.val.i.i35, 0
  br i1 %.not.i.i36, label %lean_inc_ref.exit37, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = atomicrmw sub ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit37

lean_inc_ref.exit37:                              ; preds = %bb.n, %bb.o, %bb.p
  %.val.i.i38 = load i32, ptr %i.t, align 4, !tbaa !12 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i38, 0
  br i1 %i.z, label %bb.q, label %bb.r, !prof !13

bb.q:                                             ; preds = %lean_inc_ref.exit37
  %i.aa = add nuw i32 %.val.i.i38, 1
  store i32 %i.aa, ptr %i.t, align 4, !tbaa !12
  br label %lean_inc_ref.exit40

bb.r:                                             ; preds = %lean_inc_ref.exit37
  %.not.i.i39 = icmp eq i32 %.val.i.i38, 0
  br i1 %.not.i.i39, label %lean_inc_ref.exit40, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = atomicrmw sub ptr %i.t, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit40

lean_inc_ref.exit40:                              ; preds = %bb.q, %bb.r, %bb.s
  tail call void @lean_inc_heartbeat() #3
  %i.ac = tail call noalias ptr @mi_malloc_small(i64 noundef 40) #3 ; 8 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.t, label %lean_alloc_ctor.exit

bb.t:                                             ; preds = %lean_inc_ref.exit40
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc_ref.exit40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 1, ptr %i.ac, align 4, !tbaa !12
  store i32 262184, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.c, ptr %i.af, align 8, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.t, ptr %i.ah, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.v, ptr %i.ai, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #3
  %i.aj = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #3 ; 6 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.u, label %lean_alloc_ctor.exit41

bb.u:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

lean_alloc_ctor.exit41:                           ; preds = %lean_alloc_ctor.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 1, ptr %i.aj, align 4, !tbaa !12
  store i32 50462744, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ac, ptr %i.am, align 8, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %0, ptr %i.an, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #3
  %i.ao = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 5 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.v, label %lean_alloc_ctor.exit42

bb.v:                                             ; preds = %lean_alloc_ctor.exit41
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

lean_alloc_ctor.exit42:                           ; preds = %lean_alloc_ctor.exit41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 1, ptr %i.ao, align 4, !tbaa !12
  store i32 65552, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.aj, ptr %i.ar, align 8, !tbaa !10
  ret ptr %i.ao
}

declare ptr @lean_st_ref_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_addMessageContextFull___at___00Lean_throwError___at___00Lean_Meta_Grind_Arith_CommRing_checkInst_spec__0_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_addMessageContextFull___at___00Lean_throwError___at___00Lean_Meta_Grind_Arith_CommRing_checkInst_spec__0_spec__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i10 = icmp eq i64 %i.c, 0
  br i1 %.not.i10, label %bb.b, label %lean_dec.exit11

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %4, align 4, !tbaa !12
  br label %lean_dec.exit11

bb.d:                                             ; preds = %bb.b
  %.not.i12 = icmp eq i32 %i.d, 0
  br i1 %.not.i12, label %lean_dec.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #3
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit11
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit18

bb.g:                                             ; preds = %lean_dec.exit11
  %.not.i17 = icmp eq i32 %i.g, 0
  br i1 %.not.i17, label %lean_dec_ref.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #3
  br label %lean_dec_ref.exit18

lean_dec_ref.exit18:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %2 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit18
  %i.l = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i13 = icmp eq i32 %i.l, 0
  br i1 %.not.i13, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #3
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit18
  %i.o = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit16

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i15 = icmp eq i32 %i.o, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #3
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_throwError___at___00Lean_Meta_Grind_Arith_CommRing_checkInst_spec__0___redArg(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 5 uses
  %i.c = tail call ptr @l_Lean_addMessageContextFull___at___00Lean_throwError___at___00Lean_Meta_Grind_Arith_CommRing_checkInst_spec__0_spec__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10   ; 5 uses
  %.val = load i32, ptr %i.c, align 8, !tbaa !12  ; 4 uses
  %i.f = icmp eq i32 %.val, 1                     ; 2 uses
  br i1 %i.f, label %lean_dec.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = and i64 %i.g, 1
  %.not.i34 = icmp eq i64 %i.h, 0
  br i1 %.not.i34, label %bb.c, label %lean_inc.exit35

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.e, align 4, !tbaa !12 ; 3 uses
  %i.i = icmp sgt i32 %.val.i.i, 0
  br i1 %i.i, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i32 %.val.i.i, 1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !12
  br label %lean_inc.exit35

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit35, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = atomicrmw sub ptr %i.e, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit35

lean_inc.exit35:                                  ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %i.l = icmp sgt i32 %.val, 1
  br i1 %i.l, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %lean_inc.exit35
  %i.m = add nsw i32 %.val, -1
  store i32 %i.m, ptr %i.c, align 8, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %lean_inc.exit35
  %.not.i32 = icmp eq i32 %.val, 0
  br i1 %.not.i32, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #3
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.g, %bb.h, %bb.i, %bb.a
  %.031 = phi ptr [ %i.c, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.i ], [ inttoptr (i64 1 to ptr), %bb.h ], [ inttoptr (i64 1 to ptr), %bb.g ] ; 2 uses
  %i.n = ptrtoint ptr %i.b to i64
  %i.o = and i64 %i.n, 1
  %.not.i33 = icmp eq i64 %i.o, 0
  br i1 %.not.i33, label %bb.j, label %lean_inc.exit

bb.j:                                             ; preds = %lean_dec.exit
  %.val.i.i36 = load i32, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i36, 0
  br i1 %i.p, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.q = add nuw i32 %.val.i.i36, 1
  store i32 %i.q, ptr %i.b, align 4, !tbaa !12
  br label %lean_inc.exit

bb.l:                                             ; preds = %bb.j
  %.not.i.i37 = icmp eq i32 %.val.i.i36, 0
  br i1 %.not.i.i37, label %lean_inc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit
  tail call void @lean_inc_heartbeat() #3
  %i.s = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #3 ; 6 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.n, label %lean_alloc_ctor.exit

bb.n:                                             ; preds = %lean_inc.exit
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 1, ptr %i.s, align 4, !tbaa !12
  store i32 131096, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.b, ptr %i.v, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.e, ptr %i.w, align 8, !tbaa !10
  br i1 %i.f, label %bb.o, label %bb.p

bb.o:                                             ; preds = %lean_alloc_ctor.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, 16777215
  %i.aa = or disjoint i32 %i.z, 16777216
  store i32 %i.aa, ptr %i.x, align 4
  br label %bb.r

bb.p:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_inc_heartbeat() #3
  %i.ab = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.q, label %lean_alloc_ctor.exit39

bb.q:                                             ; preds = %bb.p
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

lean_alloc_ctor.exit39:                           ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ab, align 4, !tbaa !12
  store i32 16842768, ptr %i.ad, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %lean_alloc_ctor.exit39
  %.031.sink = phi ptr [ %.031, %bb.o ], [ %i.ab, %lean_alloc_ctor.exit39 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.031.sink, i64 8
  store ptr %i.s, ptr %i.ae, align 8, !tbaa !10
  ret ptr %.031.sink
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_throwError___at___00Lean_Meta_Grind_Arith_CommRing_checkInst_spec__0___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_throwError___at___00Lean_Meta_Grind_Arith_CommRing_checkInst_spec__0___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i10 = icmp eq i64 %i.c, 0
  br i1 %.not.i10, label %bb.b, label %lean_dec.exit11

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %4, align 4, !tbaa !12
  br label %lean_dec.exit11

bb.d:                                             ; preds = %bb.b
  %.not.i12 = icmp eq i32 %i.d, 0
  br i1 %.not.i12, label %lean_dec.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #3
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit11
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit18

bb.g:                                             ; preds = %lean_dec.exit11
  %.not.i17 = icmp eq i32 %i.g, 0
  br i1 %.not.i17, label %lean_dec_ref.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #3
  br label %lean_dec_ref.exit18

lean_dec_ref.exit18:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %2 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit18
  %i.l = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i13 = icmp eq i32 %i.l, 0
  br i1 %.not.i13, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #3
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit18
  %i.o = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit16

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i15 = icmp eq i32 %i.o, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #3
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_Grind_Arith_CommRing_checkInst(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %.val.i.i = load i32, ptr %2, align 4, !tbaa !12 ; 3 uses
  %i.a = icmp sgt i32 %.val.i.i, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw i32 %.val.i.i, 1
  store i32 %i.b, ptr %2, align 4, !tbaa !12
  br label %lean_inc_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = atomicrmw sub ptr %2, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %.val.i.i120 = load i32, ptr %1, align 4, !tbaa !12 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i120, 0
  br i1 %i.d, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_inc_ref.exit
  %i.e = add nuw i32 %.val.i.i120, 1
end_hunk_0
begin_hunk_1_@l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg:bb.a
  br label %lean_inc.exit36

lean_inc.exit36:                                  ; preds = %bb.i, %bb.h, %bb.g, %lean_inc_n.exit
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !10   ; 5 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.s, 1
  %.not.i34 = icmp eq i64 %i.t, 0
  br i1 %.not.i34, label %bb.j, label %lean_inc.exit

bb.j:                                             ; preds = %lean_inc.exit36
  %.val.i.i40 = load i32, ptr %i.r, align 4, !tbaa !12 ; 3 uses
  %i.u = icmp sgt i32 %.val.i.i40, 0
  br i1 %i.u, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.v = add nuw i32 %.val.i.i40, 1
  store i32 %i.v, ptr %i.r, align 4, !tbaa !12
  br label %lean_inc.exit

bb.l:                                             ; preds = %bb.j
  %.not.i.i41 = icmp eq i32 %.val.i.i40, 0
  br i1 %.not.i.i41, label %lean_inc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = atomicrmw sub ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_inc.exit36
  %i.x = load i32, ptr %4, align 8, !tbaa !12     ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %lean_inc.exit
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %4, align 8, !tbaa !12
  br label %lean_dec_ref.exit

bb.o:                                             ; preds = %lean_inc.exit
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #3
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.n, %bb.o, %bb.p
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !10 ; 6 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = and i64 %i.ac, 1
  %.not.i43 = icmp eq i64 %i.ad, 0
  br i1 %.not.i43, label %bb.q, label %lean_inc_n.exit46

bb.q:                                             ; preds = %lean_dec_ref.exit
  %.val.i.i44 = load i32, ptr %i.ab, align 4, !tbaa !12 ; 3 uses
  %i.ae = icmp sgt i32 %.val.i.i44, 0
  br i1 %i.ae, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.af = add nuw i32 %.val.i.i44, 2
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !12
  br label %lean_inc_n.exit46

bb.s:                                             ; preds = %bb.q
  %.not.i.i45 = icmp eq i32 %.val.i.i44, 0
  br i1 %.not.i.i45, label %lean_inc_n.exit46, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = atomicrmw sub ptr %i.ab, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit46

lean_inc_n.exit46:                                ; preds = %lean_dec_ref.exit, %bb.r, %bb.s, %bb.t
  %i.ah = tail call ptr @lean_alloc_object(i64 noundef 48) #3 ; 9 uses
  store i32 1, ptr %i.ah, align 4, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, 65535
  %i.al = or disjoint i32 %i.ak, -184549376
  store i32 %i.al, ptr %i.ai, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__2, ptr %i.am, align 8, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i16 4, ptr %i.an, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 18
  store i16 3, ptr %i.ao, align 2, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ab, ptr %i.ap, align 8, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.r, ptr %i.aq, align 8, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store ptr %i.d, ptr %i.ar, align 8, !tbaa !10
  %i.as = tail call ptr @lean_alloc_object(i64 noundef 80) #3 ; 13 uses
  store i32 1, ptr %i.as, align 4, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = and i32 %i.au, 65535
  %i.aw = or disjoint i32 %i.av, -184549376
  store i32 %i.aw, ptr %i.at, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg___lam__3, ptr %i.ax, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i16 8, ptr %i.ay, align 8, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 18
  store i16 7, ptr %i.az, align 2, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.ab, ptr %i.ba, align 8, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store ptr %0, ptr %i.bb, align 8, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store ptr %1, ptr %i.bc, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  store ptr %2, ptr %i.bd, align 8, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store ptr %3, ptr %i.be, align 8, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  store ptr %i.d, ptr %i.bf, align 8, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  store ptr %i.ah, ptr %i.bg, align 8, !tbaa !10
  %i.bh = tail call ptr @lean_apply_4(ptr noundef %i.d, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.k, ptr noundef nonnull %i.as) #3
  ret ptr %i.bh
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_Grind_Arith_CommRing_getInvFn(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_Grind_Arith_CommRing_getInvFn___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @runtime_initialize_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @_G_runtime_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @lean_inc_heartbeat() #3
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

bb.d:                                             ; preds = %bb.a
  store i1 true, ptr @_G_runtime_initialized, align 1
  %i.c = tail call ptr @runtime_initialize_Lean_Meta_Tactic_Grind_Arith_CommRing_MonadRing(i8 noundef zeroext %0) #3 ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val = load i32, ptr %i.d, align 4
  %.mask.i = and i32 %.val, -16777216
  %i.e = icmp eq i32 %.mask.i, 16777216
  br i1 %i.e, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr %i.c, align 4, !tbaa !12   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %i.c, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #3
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.f, %bb.g, %bb.h
  tail call void @lean_inc_heartbeat() #3
  %i.i = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %lean_dec_ref.exit
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

.sink.split:                                      ; preds = %lean_dec_ref.exit, %bb.b
  %.sink10 = phi ptr [ %i.a, %bb.b ], [ %i.i, %lean_dec_ref.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sink10, i64 4
  store i32 1, ptr %.sink10, align 4, !tbaa !12
  store i32 65552, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.sink10, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.l, align 8, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.d
  %.0 = phi ptr [ %i.c, %bb.d ], [ %.sink10, %.sink.split ]
  ret ptr %.0
}

declare ptr @runtime_initialize_Lean_Meta_Tactic_Grind_Arith_CommRing_MonadRing(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noalias noundef nonnull ptr @meta_initialize_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @_G_meta_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @lean_inc_heartbeat() #3
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %lean_io_result_mk_ok.exit

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

bb.d:                                             ; preds = %bb.a
  store i1 true, ptr @_G_meta_initialized, align 1
  tail call void @lean_inc_heartbeat() #3
  %i.c = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %lean_io_result_mk_ok.exit

bb.e:                                             ; preds = %bb.d
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

lean_io_result_mk_ok.exit:                        ; preds = %bb.d, %bb.b
  %.sink6 = phi ptr [ %i.a, %bb.b ], [ %i.c, %bb.d ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sink6, i64 4
  store i32 1, ptr %.sink6, align 4, !tbaa !12
  store i32 65552, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %.sink6, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !tbaa !10
  ret ptr %.sink6
}

; Function Attrs: nounwind uwtable
define ptr @initialize_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.b21 = load i1, ptr @_G_initialized, align 1
  br i1 %.b21, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %lean_dec_ref.exit, %bb.a
  tail call void @lean_inc_heartbeat() #3
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %lean_io_result_mk_ok.exit

bb.b:                                             ; preds = %tailrecurse._crit_edge
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

lean_io_result_mk_ok.exit:                        ; preds = %tailrecurse._crit_edge
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !12
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !tbaa !10
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  store i1 true, ptr @_G_initialized, align 1
  %i.e = tail call ptr @initialize_Lean_Meta_Tactic_Grind_Arith_CommRing_MonadRing(i8 noundef zeroext %0) #3 ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val18 = load i32, ptr %i.f, align 4
  %.mask.i = and i32 %.val18, -16777216
  %i.g = icmp eq i32 %.mask.i, 16777216
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.e, align 4, !tbaa !12   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !12
  br label %lean_dec_ref.exit16

bb.e:                                             ; preds = %bb.c
  %.not.i15 = icmp eq i32 %i.h, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #3
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.d, %bb.e, %bb.f
  %i.k = tail call ptr @runtime_initialize_Lean_Meta_Tactic_Grind_Arith_CommRing_Functions(i8 noundef zeroext %0) ; 5 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val17 = load i32, ptr %i.l, align 4
  %.mask.i19 = and i32 %.val17, -16777216
  %i.m = icmp eq i32 %.mask.i19, 16777216
  br i1 %i.m, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %lean_dec_ref.exit16
  %i.n = load i32, ptr %i.k, align 4, !tbaa !12   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !12
  br label %lean_dec_ref.exit14

bb.i:                                             ; preds = %bb.g
  %.not.i13 = icmp eq i32 %i.n, 0
  br i1 %.not.i13, label %lean_dec_ref.exit14, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #3
  br label %lean_dec_ref.exit14

lean_dec_ref.exit14:                              ; preds = %bb.h, %bb.i, %bb.j
  %.b.i = load i1, ptr @_G_meta_initialized, align 1
  br i1 %.b.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %lean_dec_ref.exit14
  tail call void @lean_inc_heartbeat() #3
  %i.q = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.l, label %lean_dec_ref.exit

bb.l:                                             ; preds = %bb.k
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

bb.m:                                             ; preds = %lean_dec_ref.exit14
  store i1 true, ptr @_G_meta_initialized, align 1
  tail call void @lean_inc_heartbeat() #3
  %i.s = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.n, label %lean_dec_ref.exit

bb.n:                                             ; preds = %bb.m
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

lean_dec_ref.exit:                                ; preds = %bb.k, %bb.m
  %.sink6.i = phi ptr [ %i.q, %bb.k ], [ %i.s, %bb.m ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4
  store i32 1, ptr %.sink6.i, align 4, !tbaa !12
  store i32 65552, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8, !tbaa !10
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.sink6.i) #3
  br label %tailrecurse._crit_edge

.loopexit:                                        ; preds = %lean_dec_ref.exit16, %.lr.ph, %lean_io_result_mk_ok.exit
  %.0 = phi ptr [ %i.a, %lean_io_result_mk_ok.exit ], [ %i.e, %.lr.ph ], [ %i.k, %lean_dec_ref.exit16 ]
  ret ptr %.0
}

declare ptr @initialize_Lean_Meta_Tactic_Grind_Arith_CommRing_MonadRing(i8 noundef zeroext) local_unnamed_addr #1

declare void @lean_inc_heartbeat() local_unnamed_addr #1

declare noalias ptr @mi_malloc_small(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @lean_internal_panic_out_of_memory() local_unnamed_addr #2

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #1

declare void @lean_free_object(ptr noundef) local_unnamed_addr #1

declare ptr @lean_obj_once_cold(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_stringToMessageData(ptr noundef) local_unnamed_addr #1

declare ptr @lean_alloc_object(i64 noundef) local_unnamed_addr #1

declare ptr @l_Lean_Level_ofNat(ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_mkRawNatLit(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 4, !"probe-stack", !"inline-asm"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"", !6, i64 0, !6, i64 4, !6, i64 6, !6, i64 7}
!12 = !{!11, !6, i64 0}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"", !5, i64 0, !5, i64 4}
end_hunk_1
