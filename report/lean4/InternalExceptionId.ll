Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/InternalExceptionId?download=true
inline.NumInlined: 89
inline.NumDeleted: 38
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lean_once_cell_t = type { i32, i32 }

@l_Lean_instBEqInternalExceptionId = local_unnamed_addr global ptr @l_Lean_instBEqInternalExceptionId___closed__0_value, align 8
@l_Lean_internalExceptionsRef = local_unnamed_addr global ptr null, align 8
@l_Lean_InternalExceptionId_getName___closed__1 = internal global ptr null, align 8
@l_Lean_InternalExceptionId_getName___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_instInhabitedInternalExceptionId_default = local_unnamed_addr global ptr null, align 8
@l_Lean_instInhabitedInternalExceptionId = local_unnamed_addr global ptr null, align 8
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_instBEqInternalExceptionId___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_Lean_instBEqInternalExceptionId_beq___boxed, i16 2, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Lean_InternalExceptionId_0__Lean_initFn___closed__0_00___x40_Lean_InternalExceptionId_3474817028____hygCtx___hyg_2__value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -10 }, i64 0, i64 0, [0 x ptr] zeroinitializer }, align 8
@l_Lean_registerInternalExceptionId___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [33 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 33, i64 33, i64 32, [33 x i8] c"invalid internal exception id, '\00" }>, align 8
@l_Lean_registerInternalExceptionId___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, i64, i64, i64, [24 x i8] } { { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 24, i64 24, i64 23, [24 x i8] c"' has already been used\00" }, align 8
@l_Lean_InternalExceptionId_toString___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [21 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 21, i64 21, i64 20, [21 x i8] c"internal exception #\00" }>, align 8
@l_Lean_InternalExceptionId_getName___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [30 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 30, i64 30, i64 29, [30 x i8] c"invalid internal exception id\00" }>, align 8

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 2) i8 @l_Lean_instBEqInternalExceptionId_beq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.a, 1
  %i.d = and i64 %i.c, %i.b
  %or.cond.not = icmp eq i64 %i.d, 0
  br i1 %or.cond.not, label %.critedge.i, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %1
  br label %lean_nat_eq.exit

.critedge.i:                                      ; preds = %bb.a
  %i.f = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %0, ptr noundef %1) #3
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %bb.b, %.critedge.i
  %.0.i = phi i1 [ %i.e, %bb.b ], [ %i.f, %.critedge.i ]
  %i.g = zext i1 %.0.i to i8
  ret i8 %i.g
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_instBEqInternalExceptionId_beq___boxed(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.a, 1                          ; 2 uses
  %i.d = and i64 %i.c, %i.b
  %or.cond.not.i = icmp eq i64 %i.d, 0
  br i1 %or.cond.not.i, label %.critedge.i.i, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %1
  br label %l_Lean_instBEqInternalExceptionId_beq.exit

.critedge.i.i:                                    ; preds = %bb.a
  %i.f = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %0, ptr noundef %1) #3
  br label %l_Lean_instBEqInternalExceptionId_beq.exit

l_Lean_instBEqInternalExceptionId_beq.exit:       ; preds = %bb.b, %.critedge.i.i
  %.0.i.i = phi i1 [ %i.e, %bb.b ], [ %i.f, %.critedge.i.i ]
  %i.g = and i64 %i.b, 1
  %.not.i5 = icmp eq i64 %i.g, 0
  br i1 %.not.i5, label %bb.c, label %lean_dec.exit6

bb.c:                                             ; preds = %l_Lean_instBEqInternalExceptionId_beq.exit
  %i.h = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit6

bb.e:                                             ; preds = %bb.c
  %.not.i7 = icmp eq i32 %i.h, 0
  br i1 %.not.i7, label %lean_dec.exit6, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #3
  br label %lean_dec.exit6

lean_dec.exit6:                                   ; preds = %bb.f, %bb.e, %bb.d, %l_Lean_instBEqInternalExceptionId_beq.exit
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.g, label %lean_dec.exit

bb.g:                                             ; preds = %lean_dec.exit6
  %i.k = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit

bb.i:                                             ; preds = %bb.g
  %.not.i8 = icmp eq i32 %i.k, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #3
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.j, %bb.i, %bb.h, %lean_dec.exit6
  %i.n = select i1 %.0.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %i.n
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l___private_Lean_InternalExceptionId_0__Lean_initFn_00___x40_Lean_InternalExceptionId_3474817028____hygCtx___hyg_2_() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_st_mk_ref(ptr noundef nonnull @l___private_Lean_InternalExceptionId_0__Lean_initFn___closed__0_00___x40_Lean_InternalExceptionId_3474817028____hygCtx___hyg_2__value) #3
  tail call void @lean_inc_heartbeat() #3
  %i.b = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !11
  store i32 65552, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.e, align 8, !tbaa !14
  ret ptr %i.b
}

declare ptr @lean_st_mk_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l___private_Lean_InternalExceptionId_0__Lean_initFn_00___x40_Lean_InternalExceptionId_3474817028____hygCtx___hyg_2____boxed(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_st_mk_ref(ptr noundef nonnull @l___private_Lean_InternalExceptionId_0__Lean_initFn___closed__0_00___x40_Lean_InternalExceptionId_3474817028____hygCtx___hyg_2__value) #3
  tail call void @lean_inc_heartbeat() #3
  %i.b = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %l___private_Lean_InternalExceptionId_0__Lean_initFn_00___x40_Lean_InternalExceptionId_3474817028____hygCtx___hyg_2_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

l___private_Lean_InternalExceptionId_0__Lean_initFn_00___x40_Lean_InternalExceptionId_3474817028____hygCtx___hyg_2_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !11
  store i32 65552, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.e, align 8, !tbaa !14
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00Lean_registerInternalExceptionId_spec__0_spec__0(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not23 = icmp eq i64 %2, %3
  br i1 %.not23, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = add i64 %.01624, 1                       ; 2 uses
  %.not = icmp eq i64 %i.b, %3
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01624 = phi i64 [ %i.b, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01624
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = tail call zeroext i8 @lean_name_eq(ptr noundef %0, ptr noundef %i.d) #3 ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.2.ph = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.e, %.lr.ph ]
  ret i8 %.2.ph
}

declare zeroext i8 @lean_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00Lean_registerInternalExceptionId_spec__0_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val22 = load i64, ptr %i.a, align 8, !tbaa !16 ; 2 uses
  %i.b = load i32, ptr %2, align 8, !tbaa !11     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 8, !tbaa !11
  br label %lean_dec.exit14

bb.c:                                             ; preds = %bb.a
  %.not.i15 = icmp eq i32 %i.b, 0
  br i1 %.not.i15, label %lean_dec.exit14, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #3
  br label %lean_dec.exit14

lean_dec.exit14:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !16  ; 2 uses
  %i.f = load i32, ptr %3, align 8, !tbaa !11     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !12

bb.e:                                             ; preds = %lean_dec.exit14
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 8, !tbaa !11
  br label %lean_dec.exit12

bb.f:                                             ; preds = %lean_dec.exit14
  %.not.i16 = icmp eq i32 %i.f, 0
  br i1 %.not.i16, label %lean_dec.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #3
  br label %lean_dec.exit12

lean_dec.exit12:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not23.i = icmp eq i64 %.val22, %.val
  br i1 %.not23.i, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00Lean_registerInternalExceptionId_spec__0_spec__0.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %lean_dec.exit12, %.lr.ph.i
  %.01624.i = phi i64 [ %i.n, %.lr.ph.i ], [ %.val22, %lean_dec.exit12 ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01624.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = tail call zeroext i8 @lean_name_eq(ptr noundef %0, ptr noundef %i.k) #3 ; 2 uses
  %i.m = icmp ne i8 %i.l, 0
  %i.n = add i64 %.01624.i, 1                     ; 2 uses
  %.not.i23 = icmp eq i64 %i.n, %.val
  %or.cond = select i1 %i.m, i1 true, i1 %.not.i23
  br i1 %or.cond, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00Lean_registerInternalExceptionId_spec__0_spec__0.exit.loopexit, label %.lr.ph.i

l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00Lean_registerInternalExceptionId_spec__0_spec__0.exit.loopexit: ; preds = %.lr.ph.i
  %i.o = zext i8 %i.l to i64
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = or disjoint i64 %i.p, 1
  br label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00Lean_registerInternalExceptionId_spec__0_spec__0.exit

l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00Lean_registerInternalExceptionId_spec__0_spec__0.exit: ; preds = %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00Lean_registerInternalExceptionId_spec__0_spec__0.exit.loopexit, %lean_dec.exit12
  %.2.ph.i = phi i64 [ 1, %lean_dec.exit12 ], [ %i.q, %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00Lean_registerInternalExceptionId_spec__0_spec__0.exit.loopexit ]
  %i.r = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00Lean_registerInternalExceptionId_spec__0_spec__0.exit
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit21

bb.i:                                             ; preds = %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00Lean_registerInternalExceptionId_spec__0_spec__0.exit
  %.not.i20 = icmp eq i32 %i.r, 0
  br i1 %.not.i20, label %lean_dec_ref.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #3
  br label %lean_dec_ref.exit21

lean_dec_ref.exit21:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.u = ptrtoint ptr %0 to i64
  %i.v = and i64 %i.u, 1
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.k, label %lean_dec.exit

bb.k:                                             ; preds = %lean_dec_ref.exit21
  %i.w = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.l, label %bb.m, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit

bb.m:                                             ; preds = %bb.k
  %.not.i18 = icmp eq i32 %i.w, 0
  br i1 %.not.i18, label %lean_dec.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #3
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.n, %bb.m, %bb.l, %lean_dec_ref.exit21
  %i.z = inttoptr i64 %.2.ph.i to ptr
  ret ptr %i.z
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
lean_nat_lt.exit:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !16
  %.mask = and i64 %.val, 9223372036854775807     ; 2 uses
  %.not = icmp eq i64 %.mask, 0
  br i1 %.not, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00Lean_registerInternalExceptionId_spec__0_spec__0.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %lean_nat_lt.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.lr.ph.i

bb.a:                                             ; preds = %.lr.ph.i
  %i.c = add nuw nsw i64 %.01624.i, 1             ; 2 uses
  %.not.i14 = icmp eq i64 %i.c, %.mask
  br i1 %.not.i14, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00Lean_registerInternalExceptionId_spec__0_spec__0.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.a
  %.01624.i = phi i64 [ %i.c, %bb.a ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.01624.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = tail call zeroext i8 @lean_name_eq(ptr noundef %1, ptr noundef %i.e) #3 ; 2 uses
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.a, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00Lean_registerInternalExceptionId_spec__0_spec__0.exit

l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Array_contains___at___00Lean_registerInternalExceptionId_spec__0_spec__0.exit: ; preds = %bb.a, %.lr.ph.i, %lean_nat_lt.exit
  %.0 = phi i8 [ 0, %lean_nat_lt.exit ], [ 0, %bb.a ], [ %i.f, %.lr.ph.i ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !16
  %.mask.i = and i64 %.val.i, 9223372036854775807 ; 2 uses
  %.not.i8 = icmp eq i64 %.mask.i, 0
  br i1 %.not.i8, label %l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.01624.i.i = phi i64 [ %i.g, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.01624.i.i
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = tail call zeroext i8 @lean_name_eq(ptr noundef %1, ptr noundef %i.d) #3 ; 2 uses
  %i.f = icmp ne i8 %i.e, 0
  %i.g = add nuw nsw i64 %.01624.i.i, 1           ; 2 uses
  %.not.i14.i = icmp eq i64 %i.g, %.mask.i
  %or.cond = select i1 %i.f, i1 true, i1 %.not.i14.i
  br i1 %or.cond, label %l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit.loopexit, label %.lr.ph.i.i

l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit.loopexit: ; preds = %.lr.ph.i.i
  %i.h = zext i8 %i.e to i64
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = or disjoint i64 %i.i, 1
  br label %l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit

l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit: ; preds = %l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit.loopexit, %bb.a
  %.0.i = phi i64 [ 1, %bb.a ], [ %i.j, %l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit.loopexit ]
  %i.k = ptrtoint ptr %1 to i64
  %i.l = and i64 %i.k, 1
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit
  %i.m = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i5 = icmp eq i32 %i.m, 0
  br i1 %.not.i5, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #3
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit
  %i.p = load i32, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %lean_dec.exit
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %0, align 8, !tbaa !11
  br label %lean_dec_ref.exit7

bb.g:                                             ; preds = %lean_dec.exit
  %.not.i6 = icmp eq i32 %i.p, 0
  br i1 %.not.i6, label %lean_dec_ref.exit7, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #3
  br label %lean_dec_ref.exit7

lean_dec_ref.exit7:                               ; preds = %bb.f, %bb.g, %bb.h
  %i.s = inttoptr i64 %.0.i to ptr
  ret ptr %i.s
}

; Function Attrs: nounwind uwtable
define noalias noundef nonnull ptr @l_Lean_registerInternalExceptionId(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @l_Lean_internalExceptionsRef, align 8, !tbaa !14 ; 3 uses
  %i.b = tail call ptr @lean_st_ref_get(ptr noundef %i.a) #3 ; 8 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %.val.i = load i64, ptr %i.c, align 8, !tbaa !16
  %.mask.i = and i64 %.val.i, 9223372036854775807 ; 2 uses
  %.not.i33 = icmp eq i64 %.mask.i, 0
  br i1 %.not.i33, label %l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = add nuw nsw i64 %.01624.i.i, 1           ; 2 uses
  %.not.i14.i = icmp eq i64 %i.e, %.mask.i
  br i1 %.not.i14.i, label %l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.preheader.i
  %.01624.i.i = phi i64 [ %i.e, %bb.b ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.01624.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = tail call zeroext i8 @lean_name_eq(ptr noundef %0, ptr noundef %i.g) #3 ; 2 uses
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit

l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit: ; preds = %bb.b, %.lr.ph.i.i, %bb.a
  %.0.i = phi i8 [ 0, %bb.a ], [ %i.h, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %1 = icmp eq i8 %.0.i, 0
  br i1 %1, label %.loopexit, label %l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit.a

.loopexit:                                        ; preds = %l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit
  %i.j = tail call ptr @lean_st_ref_take(ptr noundef %i.a) #3
  %i.k = tail call ptr @lean_array_push(ptr noundef %i.j, ptr noundef %0) #3
  %i.l = tail call ptr @lean_st_ref_set(ptr noundef %i.a, ptr noundef %i.k) #3 ; 0 uses
  %.val = load i64, ptr %i.c, align 8, !tbaa !16
  %i.m = shl i64 %.val, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i32, ptr %i.b, align 8, !tbaa !11   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %.loopexit
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.b, align 8, !tbaa !11
  br label %lean_dec.exit27

bb.d:                                             ; preds = %.loopexit
  %.not.i28 = icmp eq i32 %i.p, 0
  br i1 %.not.i28, label %lean_dec.exit27, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.b) #3
  br label %lean_dec.exit27

lean_dec.exit27:                                  ; preds = %bb.e, %bb.d, %bb.c
  tail call void @lean_inc_heartbeat() #3
  %i.s = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %lean_alloc_ctor.exit

bb.f:                                             ; preds = %lean_dec.exit27
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit.a: ; preds = %l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit
  %i.u = load i32, ptr %i.b, align 8, !tbaa !11   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit.a
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !11
  br label %lean_dec.exit

bb.h:                                             ; preds = %l_Array_contains___at___00Lean_registerInternalExceptionId_spec__0.exit.a
  %.not.i29 = icmp eq i32 %i.u, 0
  br i1 %.not.i29, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.b) #3
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.i, %bb.h, %bb.g
  %i.x = tail call ptr @l_Lean_Name_toStringWithToken___at___00Lean_Name_toString_spec__0(ptr noundef %0, i8 noundef zeroext %.0.i) #3 ; 4 uses
  %i.y = tail call ptr @lean_string_append(ptr noundef nonnull @l_Lean_registerInternalExceptionId___closed__0_value, ptr noundef %i.x) #3
  %i.z = load i32, ptr %i.x, align 4, !tbaa !11   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !12

bb.j:                                             ; preds = %lean_dec.exit
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %i.x, align 4, !tbaa !11
  br label %lean_dec_ref.exit32

bb.k:                                             ; preds = %lean_dec.exit
  %.not.i31 = icmp eq i32 %i.z, 0
  br i1 %.not.i31, label %lean_dec_ref.exit32, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #3
  br label %lean_dec_ref.exit32

lean_dec_ref.exit32:                              ; preds = %bb.j, %bb.k, %bb.l
  %i.ac = tail call ptr @lean_string_append(ptr noundef %i.y, ptr noundef nonnull @l_Lean_registerInternalExceptionId___closed__1_value) #3
  %i.ad = tail call ptr @lean_mk_io_user_error(ptr noundef %i.ac) #3
  tail call void @lean_inc_heartbeat() #3
  %i.ae = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.m, label %lean_alloc_ctor.exit

bb.m:                                             ; preds = %lean_dec_ref.exit32
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec_ref.exit32, %lean_dec.exit27
  %.sink53 = phi ptr [ %i.s, %lean_dec.exit27 ], [ %i.ae, %lean_dec_ref.exit32 ] ; 4 uses
  %.sink50 = phi i32 [ 65552, %lean_dec.exit27 ], [ 16842768, %lean_dec_ref.exit32 ]
  %.sink = phi ptr [ %i.o, %lean_dec.exit27 ], [ %i.ad, %lean_dec_ref.exit32 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink53, i64 4
  store i32 1, ptr %.sink53, align 4, !tbaa !11
  store i32 %.sink50, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink53, i64 8
  store ptr %.sink, ptr %i.ah, align 8, !tbaa !14
  ret ptr %.sink53
}

declare ptr @lean_st_ref_get(ptr noundef) local_unnamed_addr #1

declare ptr @lean_st_ref_take(ptr noundef) local_unnamed_addr #1

declare ptr @lean_array_push(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_st_ref_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_Name_toStringWithToken___at___00Lean_Name_toString_spec__0(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @lean_string_append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_mk_io_user_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noalias noundef nonnull ptr @l_Lean_registerInternalExceptionId___boxed(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_registerInternalExceptionId(ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_InternalExceptionId_toString(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Nat_reprFast(ptr noundef %0) #3 ; 4 uses
  %i.b = tail call ptr @lean_string_append(ptr noundef nonnull @l_Lean_InternalExceptionId_toString___closed__0_value, ptr noundef %i.a) #3
  %i.c = load i32, ptr %i.a, align 4, !tbaa !11   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.c, -1
  store i32 %i.e, ptr %i.a, align 4, !tbaa !11
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #3
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.b
}

declare ptr @l_Nat_reprFast(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noalias noundef nonnull ptr @l_Lean_InternalExceptionId_getName(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @l_Lean_internalExceptionsRef, align 8, !tbaa !14
  %i.b = tail call ptr @lean_st_ref_get(ptr noundef %i.a) #3 ; 8 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val = load i64, ptr %i.c, align 8, !tbaa !16
  %i.d = shl i64 %.val, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = and i64 %i.g, 1
  %.not.i20 = icmp eq i64 %i.h, 0
  br i1 %.not.i20, label %lean_nat_lt.exit, label %.split, !prof !17

.split:                                           ; preds = %bb.a
  %i.i = icmp ult ptr %0, %i.f
  br i1 %i.i, label %bb.i, label %bb.b

lean_nat_lt.exit:                                 ; preds = %bb.a
  %i.j = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %0, ptr noundef nonnull %i.f) #3
  br i1 %i.j, label %bb.i, label %bb.b

bb.b:                                             ; preds = %lean_nat_lt.exit, %.split
  %i.k = load i32, ptr %i.b, align 8, !tbaa !11   ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %i.b, align 8, !tbaa !11
  br label %lean_dec.exit16

bb.d:                                             ; preds = %bb.b
  %.not.i17 = icmp eq i32 %i.k, 0
  br i1 %.not.i17, label %lean_dec.exit16, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.b) #3
  br label %lean_dec.exit16

lean_dec.exit16:                                  ; preds = %bb.e, %bb.d, %bb.c
  %i.n = load atomic i32, ptr @l_Lean_InternalExceptionId_getName___closed__1_once seq_cst, align 4, !tbaa !19
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %lean_dec.exit16
  %i.p = load ptr, ptr @l_Lean_InternalExceptionId_getName___closed__1, align 8, !tbaa !14
  br label %lean_obj_once.exit

bb.g:                                             ; preds = %lean_dec.exit16
  %i.q = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_InternalExceptionId_getName___closed__1, ptr noundef nonnull @l_Lean_InternalExceptionId_getName___closed__1_once, ptr noundef nonnull @_init_l_Lean_InternalExceptionId_getName___closed__1) #3
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.f, %bb.g
  %.0.i21 = phi ptr [ %i.p, %bb.f ], [ %i.q, %bb.g ]
  tail call void @lean_inc_heartbeat() #3
  %i.r = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #3 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %lean_alloc_ctor.exit

bb.h:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #4
  unreachable

bb.i:                                             ; preds = %.split, %lean_nat_lt.exit
  %i.t = lshr i64 %i.g, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14   ; 5 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, 1
  %.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i, label %bb.j, label %lean_array_fget.exit

bb.j:                                             ; preds = %bb.i
  %.val.i.i.i.i = load i32, ptr %i.w, align 4, !tbaa !11 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.z, label %bb.k, label %bb.l, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.aa = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !11
  br label %lean_array_fget.exit

bb.l:                                             ; preds = %bb.j
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %lean_array_fget.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = atomicrmw add ptr %i.w, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_array_fget.exit

lean_array_fget.exit:                             ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !11  ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.n, label %bb.o, !prof !12

bb.n:                                             ; preds = %lean_array_fget.exit
  %i.ae = add nsw i32 %i.ac, -1
  store i32 %i.ae, ptr %i.b, align 8, !tbaa !11
  br label %lean_dec.exit

bb.o:                                             ; preds = %lean_array_fget.exit
  %.not.i18 = icmp eq i32 %i.ac, 0
  br i1 %.not.i18, label %lean_dec.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.b) #3
end_hunk_0
