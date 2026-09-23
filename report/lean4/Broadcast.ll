Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Broadcast?download=true
inline.NumInlined: 5143
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lean_once_cell_t = type { i32, i32 }

@l_Std_Broadcast_instReprError = local_unnamed_addr global ptr @l_Std_Broadcast_instReprError___closed__0_value, align 8
@l_Std_Broadcast_instHashableError = local_unnamed_addr global ptr @l_Std_Broadcast_instHashableError___closed__0_value, align 8
@l_Std_instToStringBroadcastError = local_unnamed_addr global ptr @l_Std_instToStringBroadcastError___closed__0_value, align 8
@l_Std_instMonadLiftBroadcastIO = local_unnamed_addr global ptr @l_Std_instMonadLiftBroadcastIO___closed__0_value, align 8
@l_Std_Broadcast_instReprError_repr___closed__6 = internal global ptr null, align 8
@l_Std_Broadcast_instReprError_repr___closed__6_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Std_Broadcast_instReprError_repr___closed__7 = internal global ptr null, align 8
@l_Std_Broadcast_instReprError_repr___closed__7_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_instInhabitedSlot___closed__0 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_instInhabitedSlot___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__7 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__7_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__12 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__12_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__15 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__15_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__18 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__18_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___redArg___closed__2 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___redArg___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_trySend_x27___redArg___closed__0 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_trySend_x27___redArg___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_send___redArg___lam__1___closed__1 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_send___redArg___lam__1___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_send___redArg___lam__1___closed__3 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_send___redArg___lam__1___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recv___redArg___lam__1___closed__0 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recv___redArg___lam__1___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_forAsync___redArg___lam__0___closed__0 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_forAsync___redArg___lam__0___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___closed__6 = internal global ptr null, align 8
@l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___closed__6_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1 = local_unnamed_addr global ptr null, align 8
@l_Std_Broadcast_new___auto__1 = local_unnamed_addr global ptr null, align 8
@l_Std_Broadcast_Sync_new___auto__3 = local_unnamed_addr global ptr null, align 8
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l_Std_Broadcast_instReprError___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Std_Broadcast_instReprError_repr___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Std_Broadcast_instHashableError___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Std_Broadcast_instHashableError_hash___boxed, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Std_instToStringBroadcastError___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Std_instToStringBroadcastError___lam__0___boxed, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Std_instMonadLiftBroadcastIO___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Std_instMonadLiftBroadcastIO___lam__0___boxed, i16 3, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Std_Broadcast_instReprError_repr___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Std_Broadcast_instReprError_repr___closed__0_value] }, align 8
@l_Std_Broadcast_instReprError_repr___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [27 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 27, i64 27, i64 26, [27 x i8] c"Std.Broadcast.Error.closed\00" }>, align 8
@l_Std_Broadcast_instReprError_repr___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Std_Broadcast_instReprError_repr___closed__2_value] }, align 8
@l_Std_Broadcast_instReprError_repr___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [34 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 34, i64 34, i64 33, [34 x i8] c"Std.Broadcast.Error.alreadyClosed\00" }>, align 8
@l_Std_Broadcast_instReprError_repr___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l_Std_Broadcast_instReprError_repr___closed__4_value] }, align 8
@l_Std_Broadcast_instReprError_repr___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [34 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 34, i64 34, i64 33, [34 x i8] c"Std.Broadcast.Error.notSubscribed\00" }>, align 8
@l_Std_instToStringBroadcastError___lam__0___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [47 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 47, i64 47, i64 46, [47 x i8] c"attempted to send on an already closed channel\00" }>, align 8
@l_Std_instToStringBroadcastError___lam__0___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [55 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 55, i64 55, i64 54, [55 x i8] c"attempted to close an already closed broadcast channel\00" }>, align 8
@l_Std_instToStringBroadcastError___lam__0___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [47 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 47, i64 47, i64 46, [47 x i8] c"receiver not subscribed in a broadcast channel\00" }>, align 8
@l_Std_instMonadLiftBroadcastIO___lam__0___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 18 }, [1 x ptr] [ptr @l_Std_instToStringBroadcastError___lam__0___closed__0_value] }, align 8
@l_Std_instMonadLiftBroadcastIO___lam__0___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 18 }, [1 x ptr] [ptr @l_Std_instToStringBroadcastError___lam__0___closed__1_value] }, align 8
@l_Std_instMonadLiftBroadcastIO___lam__0___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 18 }, [1 x ptr] [ptr @l_Std_instToStringBroadcastError___lam__0___closed__2_value] }, align 8
@l_Std_instInhabitedSlot_default___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 3, i8 0 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__4_value] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c" := \00" }>, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__6_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__3_value, ptr @l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__5_value] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 5 }, [2 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__2_value] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__1_value] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [6 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 6, i64 6, i64 5, [6 x i8] c"value\00" }>, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__9_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__8_value] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__8_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [2 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 2, i64 2, i64 1, [2 x i8] c",\00" }>, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__11_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__10_value] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__10_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [4 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 4, i64 4, i64 3, [4 x i8] c"pos\00" }>, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__14_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__13_value] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__13_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [10 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 10, i64 10, i64 9, [10 x i8] c"remaining\00" }>, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__17 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__17_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [3 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 3, i64 3, i64 2, [3 x i8] c"{ \00" }>, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__19_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__0_value] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__20_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 3 }, [1 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__16_value] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_instReprSlot_repr___redArg___closed__16_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [3 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 3, i64 3, i64 2, [3 x i8] c" }\00" }>, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___redArg___lam__0___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___redArg___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_subscribe___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_subscribe___redArg___lam__0___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_trySend___redArg___lam__0___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 1 }, [1 x ptr] [ptr inttoptr (i64 1 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_send___redArg___lam__1___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 1 }, [1 x ptr] [ptr inttoptr (i64 1 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_send___redArg___lam__1___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 0 }, [1 x ptr] [ptr inttoptr (i64 1 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_close___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_close___redArg___lam__0___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_isClosed___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_isClosed___redArg___lam__0___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_unsubscribe___redArg___lam__0___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 1 }, [1 x ptr] [ptr inttoptr (i64 1 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_unsubscribe___redArg___lam__0___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 0 }, [1 x ptr] [ptr inttoptr (i64 5 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_tryRecv_x27___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_tryRecv_x27___redArg___lam__0___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_tryRecv_x27___redArg___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_tryRecv_x27___redArg___lam__1___boxed, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Std_Async_Waiter_race___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_registerAux_spec__0___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 1 }, [1 x ptr] [ptr inttoptr (i64 1 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_registerAux___redArg___lam__1___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 0, i8 -11 }, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_registerAux___redArg___lam__0___boxed, i16 2, i16 1, [4 x i8] zeroinitializer, [1 x ptr] [ptr inttoptr (i64 1 to ptr)] }, align 8
@l_Std_Mutex_atomically___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_spec__2___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Std_Mutex_atomically___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_spec__2___redArg___lam__3, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_List_filterAuxM___at___00Std_Queue_filterM___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_spec__3_spec__4___redArg___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 0 }, [1 x ptr] [ptr @l_List_filterAuxM___at___00Std_Queue_filterM___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_spec__3_spec__4___redArg___closed__0_value] }, align 8
@l_List_filterAuxM___at___00Std_Queue_filterM___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_spec__3_spec__4___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 1 }, [1 x ptr] [ptr inttoptr (i64 3 to ptr)] }, align 8
@l_List_filterAuxM___at___00Std_Queue_filterM___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_spec__3_spec__4___redArg___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_List_filterAuxM___at___00Std_Queue_filterM___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_spec__3_spec__4___redArg___lam__1___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Std_Queue_filterM___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_spec__3___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Std_Queue_filterM___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_spec__3___redArg___lam__0___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_tryRecv_x27___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_spec__0___redArg___lam__1___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 0 }, [1 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_tryRecv_x27___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_spec__0___redArg___lam__1___closed__0_value] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_tryRecv_x27___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_spec__0___redArg___lam__1___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 1 }, [1 x ptr] [ptr inttoptr (i64 1 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_tryRecv_x27___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_spec__0___redArg___lam__1___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 0 }, [1 x ptr] [ptr @l_Std_Async_Waiter_race___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_registerAux_spec__0___redArg___closed__0_value] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_isEmpty___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_getValueByPosition___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_tryRecv_x27___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_spec__0_spec__0_spec__4___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_isEmpty___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_getValueByPosition___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_tryRecv_x27___at___00__private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector_spec__0_spec__0_spec__4___redArg___lam__0___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector___redArg___lam__8___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 0 }, [1 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector___redArg___lam__8___closed__0_value] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector___redArg___lam__8___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 1 }, [1 x ptr] [ptr inttoptr (i64 1 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector___redArg___lam__2___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector___redArg___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector___redArg___lam__4___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Std_Broadcast_send___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Std_Broadcast_send___redArg___lam__0___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Std_Broadcast_Receiver_instAsyncStreamOptionOfInhabited___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 0 }, [2 x ptr] [ptr @l_Std_Broadcast_Receiver_instAsyncStreamOptionOfInhabited___closed__0_value, ptr @l_Std_Broadcast_Receiver_instAsyncStreamOptionOfInhabited___closed__1_value] }, align 8
@l_Std_Broadcast_Receiver_instAsyncStreamOptionOfInhabited___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_recvSelector___redArg, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Std_Broadcast_Receiver_instAsyncStreamOptionOfInhabited___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_Receiver_unsubscribe___redArg___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Std_Broadcast_Receiver_instAsyncReadOptionOfInhabited___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 0, i8 -11 }, ptr @l_Std_Broadcast_Receiver_instAsyncReadOptionOfInhabited___lam__2___boxed, i16 3, i16 1, [4 x i8] zeroinitializer, [1 x ptr] [ptr @l_Std_Broadcast_Receiver_instAsyncReadOptionOfInhabited___closed__1_value] }, align 8
@l_Std_Broadcast_Receiver_instAsyncReadOptionOfInhabited___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 0, i8 -11 }, ptr @l_Std_Broadcast_Receiver_instAsyncReadOptionOfInhabited___lam__1___boxed, i16 3, i16 1, [4 x i8] zeroinitializer, [1 x ptr] [ptr @l_Std_Broadcast_Receiver_instAsyncReadOptionOfInhabited___closed__0_value] }, align 8
@l_Std_Broadcast_Receiver_instAsyncReadOptionOfInhabited___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Std_Broadcast_Receiver_instAsyncReadOptionOfInhabited___lam__0, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___lam__0___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [4 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 56, i8 0, i8 0, i8 -11 }, ptr @l_Except_map, i16 5, i16 4, [4 x i8] zeroinitializer, [4 x ptr] [ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr), ptr @l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___lam__0___closed__0_value] }, align 8
@l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___lam__0___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 48, i8 0, i8 0, i8 -11 }, ptr @l_Function_const___boxed, i16 4, i16 3, [4 x i8] zeroinitializer, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)] }, align 8
@l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___closed__5 = internal global ptr null, align 8
@l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___closed__5_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___closed__3_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___lam__3___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___closed__4 = internal global ptr null, align 8
@l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___closed__4_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 40, i8 0, i8 0, i8 -11 }, ptr @l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___lam__2___boxed, i16 5, i16 2, [4 x i8] zeroinitializer, [2 x ptr] [ptr @l_Std_Broadcast_send___redArg___closed__0_value, ptr @l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___closed__1_value] }, align 8
@l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 0, i8 -11 }, ptr @l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___lam__0___boxed, i16 3, i16 1, [4 x i8] zeroinitializer, [1 x ptr] [ptr @l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___closed__0_value] }, align 8
@l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Std_Broadcast_Receiver_instAsyncWriteOfInhabited___lam__1, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_Std_Broadcast_Sync_send___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @lean_io_error_to_string, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__26 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__26_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__25 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__25_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__24 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__24_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__23 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__23_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__22 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__22_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__21 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__21_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__20 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__20_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__19 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__19_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__18 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__18_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__13 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__13_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__17 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__17_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__16_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 3, i8 1 }, [3 x ptr] [ptr inttoptr (i64 5 to ptr), ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__9_value, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__5_value] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__9_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__8_value, ptr inttoptr (i64 -8591232484422632936 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__8_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"null\00" }>, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__15_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__15_value_aux_2, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__14_value, ptr inttoptr (i64 3488656302031949961 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__15_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__15_value_aux_1, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__2_value, ptr inttoptr (i64 -102594623773132122 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__15_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__15_value_aux_0, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__1_value, ptr inttoptr (i64 8018486133748762727 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__15_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"Lean\00" }>, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [7 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 7, i64 7, i64 6, [7 x i8] c"Parser\00" }>, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__2_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [7 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 7, i64 7, i64 6, [7 x i8] c"Tactic\00" }>, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__14_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [10 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 10, i64 10, i64 9, [10 x i8] c"optConfig\00" }>, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__12 = internal global ptr null, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__12_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__10_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [7 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 7, i64 7, i64 6, [7 x i8] c"decide\00" }>, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__11_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__11_value_aux_2, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__10_value, ptr inttoptr (i64 -4197415987676340683 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__11_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__11_value_aux_1, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__2_value, ptr inttoptr (i64 -102594623773132122 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__11_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__11_value_aux_0, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__1_value, ptr inttoptr (i64 8018486133748762727 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__11_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__7_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__7_value_aux_2, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__6_value, ptr inttoptr (i64 -1218306686853293345 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__7_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__7_value_aux_1, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__2_value, ptr inttoptr (i64 -102594623773132122 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__7_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__7_value_aux_0, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__1_value, ptr inttoptr (i64 8018486133748762727 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__7_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__6_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [19 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 19, i64 19, i64 18, [19 x i8] c"tacticSeq1Indented\00" }>, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__4_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__4_value_aux_2, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__3_value, ptr inttoptr (i64 8504843326314613972 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__4_value_aux_2 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__4_value_aux_1, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__2_value, ptr inttoptr (i64 -102594623773132122 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__4_value_aux_1 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__4_value_aux_0, ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__1_value, ptr inttoptr (i64 8018486133748762727 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__4_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__0_value, ptr inttoptr (i64 -6498619592169766586 to ptr)] }, align 8
@l___private_Std_Sync_Broadcast_0__Std_Bounded_new___auto__1___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [10 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 10, i64 10, i64 9, [10 x i8] c"tacticSeq\00" }>, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Std_Broadcast_Error_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #0 {
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
define noundef nonnull ptr @l_Std_Broadcast_Error_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Std_Broadcast_Error_ctorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Std_Broadcast_Error_ctorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Std_Broadcast_Error_ctorIdx.exit

l_Std_Broadcast_Error_ctorIdx.exit:               ; preds = %bb.a, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Std_Broadcast_Error_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #0 {
  switch i8 %0, label %3 [
    i8 0, label %l_Std_Broadcast_Error_ctorIdx.exit
    i8 1, label %2
  ]

2:                                                ; preds = %1
  br label %l_Std_Broadcast_Error_ctorIdx.exit

3:                                                ; preds = %1
  br label %l_Std_Broadcast_Error_ctorIdx.exit

l_Std_Broadcast_Error_ctorIdx.exit:               ; preds = %1, %2, %3
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %1 ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Std_Broadcast_Error_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  switch i8 %i.c, label %2 [
    i8 0, label %l_Std_Broadcast_Error_toCtorIdx.exit
    i8 1, label %1
  ]

1:                                                ; preds = %bb.a
  br label %l_Std_Broadcast_Error_toCtorIdx.exit

2:                                                ; preds = %bb.a
  br label %l_Std_Broadcast_Error_toCtorIdx.exit

l_Std_Broadcast_Error_toCtorIdx.exit:             ; preds = %bb.a, %1, %2
  %.0.i.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Std_Broadcast_Error_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #1 {
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
define noundef ptr @l_Std_Broadcast_Error_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #2 {
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
define noundef ptr @l_Std_Broadcast_Error_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #1 {
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
define noundef ptr @l_Std_Broadcast_Error_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #2 {
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
define noundef ptr @l_Std_Broadcast_Error_closed_elim___redArg(ptr noundef returned %0) local_unnamed_addr #1 {
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
begin_hunk_1_@l_Std_Broadcast_instReprError_repr:bb.a

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
  %i.bq = tail call ptr @l_Repr_addAppParen(ptr noundef nonnull %.sink115, ptr noundef %1) #7
  ret ptr %i.bq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Broadcast_instReprError_repr___closed__6() #0 {
bb.a:
  ret ptr inttoptr (i64 5 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Broadcast_instReprError_repr___closed__7() #0 {
bb.a:
  ret ptr inttoptr (i64 3 to ptr)
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc nonnull ptr @lean_alloc_ctor(i32 noundef range(i32 0, 19) %0, i32 noundef range(i32 0, 11) %1, i32 noundef range(i32 0, 9) %2) unnamed_addr #3 {
lean_usize_add_checked.exit:
  %i.a = shl nuw nsw i32 %1, 3
  %narrow = add nuw nsw i32 %i.a, 8
  %narrow6 = add nuw nsw i32 %narrow, %2          ; 2 uses
  %i.b = zext nneg i32 %narrow6 to i64            ; 2 uses
  %i.c = and i64 %i.b, 504
  %i.d = and i64 %i.b, 7
  %.not.i.i = icmp eq i64 %i.d, 0
  %i.e = select i1 %.not.i.i, i64 0, i64 8
  %i.f = add nuw nsw i64 %i.e, %i.c               ; 3 uses
  tail call void @lean_inc_heartbeat() #7
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef %i.f) #7 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.a, label %lean_alloc_small_object.exit.i

bb.a:                                             ; preds = %lean_usize_add_checked.exit
  tail call void @lean_internal_panic_out_of_memory() #8
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
define ptr @l_Std_Broadcast_instReprError_repr___boxed(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l_Std_Broadcast_instReprError_repr(i8 noundef zeroext %i.c, ptr noundef %1)
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 3) i8 @l_Std_Broadcast_Error_ofNat(ptr noundef %0) local_unnamed_addr #2 {
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
define ptr @l_Std_Broadcast_Error_ofNat___boxed(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %lean_nat_le.exit.i, label %lean_nat_le.exit.thread.i, !prof !13

lean_nat_le.exit.i:                               ; preds = %bb.a
  %i.c = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #7
  br i1 %i.c, label %l_Std_Broadcast_Error_ofNat.exit.thread, label %l_Std_Broadcast_Error_ofNat.exit.thread11

lean_nat_le.exit.thread.i:                        ; preds = %bb.a
  %.not.i4 = icmp ugt ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not.i4, label %l_Std_Broadcast_Error_ofNat.exit, label %lean_dec.exit

l_Std_Broadcast_Error_ofNat.exit.thread11:        ; preds = %lean_nat_le.exit.i
  %i.d = tail call zeroext i1 @lean_nat_big_le(ptr noundef %0, ptr noundef nonnull inttoptr (i64 3 to ptr)) #7
  %i.e = select i1 %i.d, i64 3, i64 5
  br label %l_Std_Broadcast_Error_ofNat.exit.thread

l_Std_Broadcast_Error_ofNat.exit:                 ; preds = %lean_nat_le.exit.thread.i
  %.not = icmp ugt ptr %0, inttoptr (i64 3 to ptr)
  %i.f = select i1 %.not, i64 5, i64 3
  br label %lean_dec.exit

l_Std_Broadcast_Error_ofNat.exit.thread:          ; preds = %lean_nat_le.exit.i, %l_Std_Broadcast_Error_ofNat.exit.thread11
  %.1.i8 = phi i64 [ %i.e, %l_Std_Broadcast_Error_ofNat.exit.thread11 ], [ 1, %lean_nat_le.exit.i ] ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %l_Std_Broadcast_Error_ofNat.exit.thread
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.c:                                             ; preds = %l_Std_Broadcast_Error_ofNat.exit.thread
  %.not.i3 = icmp eq i32 %i.g, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_nat_le.exit.thread.i, %l_Std_Broadcast_Error_ofNat.exit, %bb.d, %bb.c, %bb.b
  %.1.i7 = phi i64 [ %.1.i8, %bb.d ], [ %.1.i8, %bb.c ], [ %.1.i8, %bb.b ], [ %i.f, %l_Std_Broadcast_Error_ofNat.exit ], [ 1, %lean_nat_le.exit.thread.i ]
  %i.j = inttoptr i64 %.1.i7 to ptr
  ret ptr %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 2) i8 @l_Std_Broadcast_instDecidableEqError(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  switch i8 %0, label %4 [
    i8 0, label %l_Std_Broadcast_Error_ctorIdx.exit
    i8 1, label %3
  ]

3:                                                ; preds = %2
  br label %l_Std_Broadcast_Error_ctorIdx.exit

4:                                                ; preds = %2
  br label %l_Std_Broadcast_Error_ctorIdx.exit

l_Std_Broadcast_Error_ctorIdx.exit:               ; preds = %2, %3, %4
  %.0.i12 = phi ptr [ inttoptr (i64 5 to ptr), %4 ], [ inttoptr (i64 3 to ptr), %3 ], [ inttoptr (i64 1 to ptr), %2 ]
  switch i8 %1, label %6 [
    i8 0, label %lean_dec.exit
    i8 1, label %5
  ]

5:                                                ; preds = %l_Std_Broadcast_Error_ctorIdx.exit
  br label %lean_dec.exit

6:                                                ; preds = %l_Std_Broadcast_Error_ctorIdx.exit
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %6, %5, %l_Std_Broadcast_Error_ctorIdx.exit
  %.0.i13 = phi ptr [ inttoptr (i64 5 to ptr), %6 ], [ inttoptr (i64 3 to ptr), %5 ], [ inttoptr (i64 1 to ptr), %l_Std_Broadcast_Error_ctorIdx.exit ]
  %i.a = icmp eq ptr %.0.i12, %.0.i13
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Std_Broadcast_instDecidableEqError___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %1 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  switch i8 %i.c, label %3 [
    i8 0, label %l_Std_Broadcast_Error_ctorIdx.exit.i
    i8 1, label %2
  ]

2:                                                ; preds = %bb.a
  br label %l_Std_Broadcast_Error_ctorIdx.exit.i

3:                                                ; preds = %bb.a
  br label %l_Std_Broadcast_Error_ctorIdx.exit.i

l_Std_Broadcast_Error_ctorIdx.exit.i:             ; preds = %3, %2, %bb.a
  %.0.i12.i = phi ptr [ inttoptr (i64 5 to ptr), %3 ], [ inttoptr (i64 3 to ptr), %2 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  switch i8 %i.f, label %5 [
    i8 0, label %l_Std_Broadcast_instDecidableEqError.exit
    i8 1, label %4
  ]

4:                                                ; preds = %l_Std_Broadcast_Error_ctorIdx.exit.i
  br label %l_Std_Broadcast_instDecidableEqError.exit

5:                                                ; preds = %l_Std_Broadcast_Error_ctorIdx.exit.i
  br label %l_Std_Broadcast_instDecidableEqError.exit

l_Std_Broadcast_instDecidableEqError.exit:        ; preds = %l_Std_Broadcast_Error_ctorIdx.exit.i, %4, %5
  %.0.i13.i = phi ptr [ inttoptr (i64 5 to ptr), %5 ], [ inttoptr (i64 3 to ptr), %4 ], [ inttoptr (i64 1 to ptr), %l_Std_Broadcast_Error_ctorIdx.exit.i ]
  %6 = icmp eq ptr %.0.i12.i, %.0.i13.i
  %7 = select i1 %6, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 0, 3) i64 @l_Std_Broadcast_instHashableError_hash(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, i64 1, i64 2
  %switch.selectcmp5 = icmp eq i8 %0, 0
  %switch.select6 = select i1 %switch.selectcmp5, i64 0, i64 %switch.select
  ret i64 %switch.select6
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Std_Broadcast_instHashableError_hash___boxed(ptr noundef %0) #2 {
bb.a:
  tail call void @lean_inc_heartbeat() #7
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %lean_box_uint64.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #8
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Std_instToStringBroadcastError___lam__0(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr @l_Std_instToStringBroadcastError___lam__0___closed__1_value, ptr @l_Std_instToStringBroadcastError___lam__0___closed__2_value
  %switch.selectcmp4 = icmp eq i8 %0, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr @l_Std_instToStringBroadcastError___lam__0___closed__0_value, ptr %switch.select
  ret ptr %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Std_instToStringBroadcastError___lam__0___boxed(ptr noundef %0) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.c, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @l_Std_instToStringBroadcastError___lam__0___closed__1_value, ptr @l_Std_instToStringBroadcastError___lam__0___closed__2_value
  %switch.selectcmp4.i = icmp eq i8 %i.c, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr @l_Std_instToStringBroadcastError___lam__0___closed__0_value, ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_instMonadLiftBroadcastIO___lam__0(ptr nofree readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef nonnull inttoptr (i64 1 to ptr)) #7 ; 12 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i79 = icmp eq i64 %i.c, 0                 ; 3 uses
  br i1 %.not.i79, label %bb.c, label %bb.b

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
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 12 uses
  %.val78 = load i32, ptr %i.a, align 8, !tbaa !10
  %i.k = icmp eq i32 %.val78, 1                   ; 5 uses
  br i1 %i.h, label %bb.d, label %bb.p

bb.d:                                             ; preds = %lean_obj_tag.exit
  br i1 %i.k, label %lean_dec.exit72, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = and i64 %i.l, 1
  %.not.i66 = icmp eq i64 %i.m, 0
  br i1 %.not.i66, label %bb.f, label %lean_inc.exit67

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !10 ; 3 uses
  %i.n = icmp sgt i32 %.val.i.i, 0
  br i1 %i.n, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.o = add nuw i32 %.val.i.i, 1
  store i32 %i.o, ptr %i.j, align 4, !tbaa !10
  br label %lean_inc.exit67

bb.h:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit67, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit67

lean_inc.exit67:                                  ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i79, label %bb.j, label %bb.n

bb.j:                                             ; preds = %lean_inc.exit67
  %i.q = load i32, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.s = add nsw i32 %i.q, -1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !10
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %.not.i73 = icmp eq i32 %i.q, 0
  br i1 %.not.i73, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #7
  br label %bb.n

bb.n:                                             ; preds = %lean_inc.exit67, %bb.k, %bb.l, %bb.m
  tail call void @lean_inc_heartbeat() #7
  %i.t = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %lean_dec.exit72.sink.split.sink.split

bb.o:                                             ; preds = %bb.n
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

bb.p:                                             ; preds = %lean_obj_tag.exit
  %.pre = ptrtoint ptr %i.j to i64                ; 2 uses
  %.pre87 = and i64 %.pre, 1                      ; 2 uses
  br i1 %i.k, label %lean_dec.exit70, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i = icmp eq i64 %.pre87, 0
  br i1 %.not.i, label %bb.r, label %lean_inc.exit

bb.r:                                             ; preds = %bb.q
  %.val.i.i80 = load i32, ptr %i.j, align 4, !tbaa !10 ; 3 uses
  %i.v = icmp sgt i32 %.val.i.i80, 0
  br i1 %i.v, label %bb.s, label %bb.t, !prof !11

bb.s:                                             ; preds = %bb.r
  %i.w = add nuw i32 %.val.i.i80, 1
  store i32 %i.w, ptr %i.j, align 4, !tbaa !10
  br label %lean_inc.exit

bb.t:                                             ; preds = %bb.r
  %.not.i.i81 = icmp eq i32 %.val.i.i80, 0
  br i1 %.not.i.i81, label %lean_inc.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.x = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.u, %bb.t, %bb.s, %bb.q
  br i1 %.not.i79, label %bb.v, label %lean_dec.exit70

bb.v:                                             ; preds = %lean_inc.exit
  %i.y = load i32, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.w, label %bb.x, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.aa = add nsw i32 %i.y, -1
  store i32 %i.aa, ptr %i.a, align 8, !tbaa !10
  br label %lean_dec.exit70

bb.x:                                             ; preds = %bb.v
  %.not.i74 = icmp eq i32 %i.y, 0
  br i1 %.not.i74, label %lean_dec.exit70, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #7
  br label %lean_dec.exit70

lean_dec.exit70:                                  ; preds = %bb.p, %lean_inc.exit, %bb.w, %bb.x, %bb.y
  %.062 = phi ptr [ inttoptr (i64 1 to ptr), %bb.y ], [ inttoptr (i64 1 to ptr), %lean_inc.exit ], [ inttoptr (i64 1 to ptr), %bb.w ], [ inttoptr (i64 1 to ptr), %bb.x ], [ %i.a, %bb.p ] ; 3 uses
end_hunk_1
