Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/TaggedText?download=true
inline.NumInlined: 1513
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lean_once_cell_t = type { i32, i32 }

@l_Lean_Widget_TaggedText_instInhabitedTaggedState_default = local_unnamed_addr global ptr @l_Lean_Widget_TaggedText_instInhabitedTaggedState_default___closed__1_value, align 8
@l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instInhabitedTaggedState = local_unnamed_addr global ptr @l_Lean_Widget_TaggedText_instInhabitedTaggedState_default___closed__1_value, align 8
@l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState = local_unnamed_addr global ptr @l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__8_value, align 8
@l_Lean_Widget_instInhabitedTaggedText___closed__0 = internal global ptr null, align 8
@l_Lean_Widget_instInhabitedTaggedText___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Widget_instReprTaggedText_repr___redArg___closed__3 = internal global ptr null, align 8
@l_Lean_Widget_instReprTaggedText_repr___redArg___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Widget_instReprTaggedText_repr___redArg___closed__4 = internal global ptr null, align 8
@l_Lean_Widget_instReprTaggedText_repr___redArg___closed__4_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__31 = internal global ptr null, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__31_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___lam__2___closed__1 = internal global ptr null, align 8
@l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___lam__2___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_panic___at___00__private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1_spec__5___closed__0 = internal global ptr null, align 8
@l_panic___at___00__private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1_spec__5___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___closed__1 = internal global ptr null, align 8
@l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___lam__2___closed__1___boxed__const__1 = local_unnamed_addr global ptr null, align 8
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_Widget_TaggedText_instInhabitedTaggedState_default___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 3, i8 0 }, [3 x ptr] [ptr @l_Lean_Widget_TaggedText_instInhabitedTaggedState_default___closed__0_value, ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)] }, align 8
@l_Lean_Widget_TaggedText_instInhabitedTaggedState_default___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 0 }, [1 x ptr] [ptr @l_Lean_Widget_instInhabitedTaggedText_default___closed__0_value] }, align 8
@l_Lean_Widget_instInhabitedTaggedText_default___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [1 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 1, i64 1, i64 0, [1 x i8] zeroinitializer }>, align 8
@l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__8_value = internal constant { { i32, i8, i8, i8, i8 }, [5 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 48, i8 0, i8 5, i8 0 }, [5 x ptr] [ptr @l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__0_value, ptr @l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__1_value, ptr @l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__7_value, ptr @l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__3_value, ptr @l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__5_value] }, align 8
@l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___lam__0, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___lam__2, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__7_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [7 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 80, i8 0, i8 0, i8 -11 }, ptr @l_StateT_bind, i16 8, i16 7, [4 x i8] zeroinitializer, [7 x ptr] [ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__9_value, ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr), ptr @l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__6_value, ptr @l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__2_value] }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__9_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 0 }, [2 x ptr] [ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__8_value, ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__6_value] }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__8_value = internal constant { { i32, i8, i8, i8, i8 }, [5 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 48, i8 0, i8 5, i8 0 }, [5 x ptr] [ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__7_value, ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__2_value, ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__3_value, ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__4_value, ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__5_value] }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__7_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 0 }, [2 x ptr] [ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__0_value, ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__1_value] }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Id_instMonad___lam__0, i16 4, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Id_instMonad___lam__1___boxed, i16 4, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Id_instMonad___lam__2___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Id_instMonad___lam__3, i16 4, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__4_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Id_instMonad___lam__4___boxed, i16 4, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Id_instMonad___lam__5___boxed, i16 4, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__6_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Id_instMonad___lam__6, i16 4, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__6_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 48, i8 0, i8 0, i8 -11 }, ptr @l_StateT_get, i16 4, i16 3, [4 x i8] zeroinitializer, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__9_value] }, align 8
@l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___lam__3___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___lam__4, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 0, i8 -11 }, ptr @l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___lam__6, i16 3, i16 1, [4 x i8] zeroinitializer, [1 x ptr] [ptr @l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__4_value] }, align 8
@l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___closed__4_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___lam__5, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Lean_Widget_instInhabitedTaggedText_default___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 0 }, [1 x ptr] [ptr @l_Lean_Widget_instInhabitedTaggedText_default___closed__0_value] }, align 8
@l_Lean_Widget_instReprTaggedText_repr___redArg___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lean_Widget_instReprTaggedText_repr___redArg___closed__1_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lean_Widget_instReprTaggedText_repr___redArg___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Widget_instReprTaggedText_repr___redArg___closed__0_value] }, align 8
@l_Lean_Widget_instReprTaggedText_repr___redArg___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [28 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 28, i64 28, i64 27, [28 x i8] c"Lean.Widget.TaggedText.text\00" }>, align 8
@l_Lean_Widget_instReprTaggedText_repr___redArg___closed__7_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lean_Widget_instReprTaggedText_repr___redArg___closed__6_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lean_Widget_instReprTaggedText_repr___redArg___closed__6_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Widget_instReprTaggedText_repr___redArg___closed__5_value] }, align 8
@l_Lean_Widget_instReprTaggedText_repr___redArg___closed__5_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [30 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 30, i64 30, i64 29, [30 x i8] c"Lean.Widget.TaggedText.append\00" }>, align 8
@l_Lean_Widget_instReprTaggedText_repr___redArg___closed__10_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l_Lean_Widget_instReprTaggedText_repr___redArg___closed__9_value, ptr inttoptr (i64 3 to ptr)] }, align 8
@l_Lean_Widget_instReprTaggedText_repr___redArg___closed__9_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Lean_Widget_instReprTaggedText_repr___redArg___closed__8_value] }, align 8
@l_Lean_Widget_instReprTaggedText_repr___redArg___closed__8_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [27 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 27, i64 27, i64 26, [27 x i8] c"Lean.Widget.TaggedText.tag\00" }>, align 8
@l_Lean_Widget_instFromJsonTaggedText_fromJson___redArg___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 0 }, [1 x ptr] [ptr @l_Lean_Widget_instFromJsonTaggedText_fromJson___redArg___closed__0_value] }, align 8
@l_Lean_Widget_instFromJsonTaggedText_fromJson___redArg___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [23 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 23, i64 23, i64 22, [23 x i8] c"no inductive tag found\00" }>, align 8
@l_Lean_Widget_instFromJsonTaggedText_fromJson___redArg___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [7 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 7, i64 7, i64 6, [7 x i8] c"append\00" }>, align 8
@l_Lean_Widget_instFromJsonTaggedText_fromJson___redArg___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"text\00" }>, align 8
@l_Lean_Widget_instFromJsonTaggedText_fromJson___redArg___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [4 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 4, i64 4, i64 3, [4 x i8] c"tag\00" }>, align 8
@l_Lean_Widget_instFromJsonTaggedText_fromJson___redArg___closed__6_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 0 }, [1 x ptr] [ptr @l_Lean_Widget_instFromJsonTaggedText_fromJson___redArg___closed__5_value] }, align 8
@l_Lean_Widget_instFromJsonTaggedText_fromJson___redArg___closed__5_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [33 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 33, i64 33, i64 32, [33 x i8] c"no inductive constructor matched\00" }>, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__19_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 0 }, [2 x ptr] [ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__17_value, ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__18_value] }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__17_value = internal constant { { i32, i8, i8, i8, i8 }, [5 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 48, i8 0, i8 5, i8 0 }, [5 x ptr] [ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__15_value, ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__16_value, ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__11_value, ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__12_value, ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__13_value] }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__15_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 0 }, [2 x ptr] [ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__14_value, ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__10_value] }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__14_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 48, i8 0, i8 0, i8 -11 }, ptr @l_StateT_map, i16 8, i16 3, [4 x i8] zeroinitializer, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__9_value] }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__10_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 0, i8 -11 }, ptr @l_StateT_instMonad___redArg___lam__1, i16 6, i16 1, [4 x i8] zeroinitializer, [1 x ptr] [ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__9_value] }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__16_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 48, i8 0, i8 0, i8 -11 }, ptr @l_StateT_pure, i16 6, i16 3, [4 x i8] zeroinitializer, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__9_value] }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__11_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 0, i8 -11 }, ptr @l_StateT_instMonad___redArg___lam__4, i16 6, i16 1, [4 x i8] zeroinitializer, [1 x ptr] [ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__9_value] }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__12_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 0, i8 -11 }, ptr @l_StateT_instMonad___redArg___lam__7, i16 6, i16 1, [4 x i8] zeroinitializer, [1 x ptr] [ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__9_value] }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__13_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 0, i8 -11 }, ptr @l_StateT_instMonad___redArg___lam__9, i16 6, i16 1, [4 x i8] zeroinitializer, [1 x ptr] [ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__9_value] }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__18_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 48, i8 0, i8 0, i8 -11 }, ptr @l_StateT_bind, i16 8, i16 3, [4 x i8] zeroinitializer, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__9_value] }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__20_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 0, i8 -11 }, ptr @l_id___boxed, i16 2, i16 1, [4 x i8] zeroinitializer, [1 x ptr] [ptr inttoptr (i64 1 to ptr)] }, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__30 = internal global ptr null, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__30_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__29 = internal global ptr null, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__29_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__21 = internal global ptr null, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__21_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__25 = internal global ptr null, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__25_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__24 = internal global ptr null, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__24_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__23 = internal global ptr null, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__23_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__28 = internal global ptr null, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__28_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__27 = internal global ptr null, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__27_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__22 = internal global ptr null, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__22_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__26 = internal global ptr null, align 8
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__26_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Widget_TaggedText_instRpcEncodable___redArg___closed__32_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_instFromJsonJson___lam__0, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___lam__2___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c"\0A\00" }>, align 8
@l___private_Lean_Widget_TaggedText_0__Lean_Widget_TaggedText_instMonadPrettyFormatStateMTaggedState___lam__6___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8
@l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c" \00" }>, align 8
@l___private_Init_Data_Format_Basic_0__Std_Format_be___at___00Std_Format_prettyM___at___00Lean_Widget_TaggedText_prettyTagged_spec__0_spec__1___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [12 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 12, i64 12, i64 11, [12 x i8] c"unreachable\00" }>, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @l_Lean_Widget_TaggedText_ctorIdx___redArg(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %switch.selectcmp = icmp eq i32 %.0.i, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp5 = icmp eq i32 %.0.i, 0
  %switch.select6 = select i1 %switch.selectcmp5, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select6
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Widget_TaggedText_ctorIdx___redArg___boxed(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %l_Lean_Widget_TaggedText_ctorIdx___redArg.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24
  br label %l_Lean_Widget_TaggedText_ctorIdx___redArg.exit

l_Lean_Widget_TaggedText_ctorIdx___redArg.exit:   ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %l_Lean_Widget_TaggedText_ctorIdx___redArg.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.e:                                             ; preds = %l_Lean_Widget_TaggedText_ctorIdx___redArg.exit
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.d, %bb.e, %bb.f
  %switch.selectcmp5.i = icmp eq i32 %.0.i.i, 0
  %switch.selectcmp.i = icmp eq i32 %.0.i.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.select6.i = select i1 %switch.selectcmp5.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select6.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @l_Lean_Widget_TaggedText_ctorIdx(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %l_Lean_Widget_TaggedText_ctorIdx___redArg.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24
  br label %l_Lean_Widget_TaggedText_ctorIdx___redArg.exit

l_Lean_Widget_TaggedText_ctorIdx___redArg.exit:   ; preds = %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %.0.i.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp5.i = icmp eq i32 %.0.i.i, 0
  %switch.select6.i = select i1 %switch.selectcmp5.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select6.i
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Widget_TaggedText_ctorIdx___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %l_Lean_Widget_TaggedText_ctorIdx.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 4
  %.val.i.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i.i, 24
  br label %l_Lean_Widget_TaggedText_ctorIdx.exit

l_Lean_Widget_TaggedText_ctorIdx.exit:            ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %l_Lean_Widget_TaggedText_ctorIdx.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit

bb.e:                                             ; preds = %l_Lean_Widget_TaggedText_ctorIdx.exit
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.d, %bb.e, %bb.f
  %switch.selectcmp5.i.i = icmp eq i32 %.0.i.i.i, 0
  %switch.selectcmp.i.i = icmp eq i32 %.0.i.i.i, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.select6.i.i = select i1 %switch.selectcmp5.i.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i.i
  ret ptr %switch.select6.i.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Widget_TaggedText_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i18 = icmp eq i64 %i.b, 0
  br i1 %.not.i18, label %bb.c, label %bb.b

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
  %i.g = icmp eq i32 %.0.i, 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 9 uses
  br i1 %i.g, label %bb.d, label %bb.x

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 1
  %.not.i17 = icmp eq i64 %i.k, 0
  br i1 %.not.i17, label %bb.e, label %lean_inc.exit

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i, 0
  br i1 %i.l, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw i32 %.val.i.i, 1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !10
  br label %lean_inc.exit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13   ; 4 uses
  %.val.i.i19 = load i32, ptr %i.p, align 4, !tbaa !10 ; 3 uses
  %i.q = icmp sgt i32 %.val.i.i19, 0
  br i1 %i.q, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %lean_inc.exit
  %i.r = add nuw i32 %.val.i.i19, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !10
  br label %lean_inc_ref.exit21

bb.j:                                             ; preds = %lean_inc.exit
  %.not.i.i20 = icmp eq i32 %.val.i.i19, 0
  br i1 %.not.i.i20, label %lean_inc_ref.exit21, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = atomicrmw sub ptr %i.p, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit21

lean_inc_ref.exit21:                              ; preds = %bb.i, %bb.j, %bb.k
  %.val.i22 = load i32, ptr %0, align 8, !tbaa !10 ; 4 uses
  %i.t = icmp eq i32 %.val.i22, 1
  br i1 %i.t, label %.preheader.i.preheader, label %bb.t

.preheader.i.preheader:                           ; preds = %lean_inc_ref.exit21
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !13   ; 4 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, 1
  %.not.i7.i = icmp eq i64 %i.w, 0
  br i1 %.not.i7.i, label %bb.l, label %lean_dec.exit.i

bb.l:                                             ; preds = %.preheader.i.preheader
  %i.x = load i32, ptr %i.u, align 4, !tbaa !10   ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %i.u, align 4, !tbaa !10
  br label %lean_dec.exit.i

bb.n:                                             ; preds = %bb.l
  %.not.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.u) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.o, %bb.n, %bb.m, %.preheader.i.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !13 ; 4 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = and i64 %i.ac, 1
  %.not.i7.i.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.i7.i.1, label %bb.p, label %lean_dec.exit.i.1

bb.p:                                             ; preds = %lean_dec.exit.i
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !10 ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.s, label %bb.q, !prof !11

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.1 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.1, label %lean_dec.exit.i.1, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #6
  br label %lean_dec.exit.i.1

bb.s:                                             ; preds = %bb.p
  %i.ag = add nsw i32 %i.ae, -1
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !10
  br label %lean_dec.exit.i.1

lean_dec.exit.i.1:                                ; preds = %bb.s, %bb.r, %bb.q, %lean_dec.exit.i
  tail call void @lean_free_object(ptr noundef nonnull %0) #6
  br label %lean_dec_ref_known.exit

bb.t:                                             ; preds = %lean_inc_ref.exit21
  %i.ah = icmp sgt i32 %.val.i22, 1
  br i1 %i.ah, label %bb.u, label %bb.v, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.ai = add nsw i32 %.val.i22, -1
  store i32 %i.ai, ptr %0, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.v:                                             ; preds = %bb.t
  %.not.i.i23 = icmp eq i32 %.val.i22, 0
  br i1 %.not.i.i23, label %lean_dec_ref_known.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i.1, %bb.u, %bb.v, %bb.w
  %i.aj = tail call ptr @lean_apply_2(ptr noundef %1, ptr noundef %i.i, ptr noundef nonnull %i.p) #6
  br label %bb.ae

bb.x:                                             ; preds = %lean_obj_tag.exit
  %.val.i.i24 = load i32, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.ak = icmp sgt i32 %.val.i.i24, 0
  br i1 %i.ak, label %bb.y, label %bb.z, !prof !11

bb.y:                                             ; preds = %bb.x
  %i.al = add nuw i32 %.val.i.i24, 1
  store i32 %i.al, ptr %i.i, align 4, !tbaa !10
  br label %lean_inc_ref.exit26

bb.z:                                             ; preds = %bb.x
  %.not.i.i25 = icmp eq i32 %.val.i.i24, 0
  br i1 %.not.i.i25, label %lean_inc_ref.exit26, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.am = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit26

lean_inc_ref.exit26:                              ; preds = %bb.y, %bb.z, %bb.aa
  %i.an = load i32, ptr %0, align 8, !tbaa !10    ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.ab, label %bb.ac, !prof !11

bb.ab:                                            ; preds = %lean_inc_ref.exit26
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %0, align 8, !tbaa !10
  br label %lean_dec_ref.exit

bb.ac:                                            ; preds = %lean_inc_ref.exit26
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.aq = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef nonnull %i.i) #6
  br label %bb.ae

bb.ae:                                            ; preds = %lean_dec_ref.exit, %lean_dec_ref_known.exit
  %.0 = phi ptr [ %i.aj, %lean_dec_ref_known.exit ], [ %i.aq, %lean_dec_ref.exit ]
  ret ptr %.0
}

declare ptr @lean_apply_2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

end_hunk_0
