Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Goal?download=true
inline.NumInlined: 480
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lean_once_cell_t = type { i32, i32 }

@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00Lean_Meta_Sym_SimpGoalResult_toOption_spec__0_spec__0___closed__2 = internal global ptr null, align 8
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00Lean_Meta_Sym_SimpGoalResult_toOption_spec__0_spec__0___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00Lean_Meta_Sym_SimpGoalResult_toOption_spec__0_spec__0___closed__5 = internal global ptr null, align 8
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00Lean_Meta_Sym_SimpGoalResult_toOption_spec__0_spec__0___closed__5_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_Sym_SimpGoalResult_toOption___closed__1 = internal global ptr null, align 8
@l_Lean_Meta_Sym_SimpGoalResult_toOption___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00Lean_Meta_Sym_Simp_Result_toSimpGoalResult_spec__0_spec__0_spec__1___redArg___closed__1 = internal global i64 0, align 8
@l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00Lean_Meta_Sym_Simp_Result_toSimpGoalResult_spec__0_spec__0_spec__1___redArg___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00Lean_Meta_Sym_Simp_Result_toSimpGoalResult_spec__0_spec__0_spec__1___redArg___closed__2 = internal global ptr null, align 8
@l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00Lean_Meta_Sym_Simp_Result_toSimpGoalResult_spec__0_spec__0_spec__1___redArg___closed__2_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_Sym_Simp_Result_toSimpGoalResult___closed__6 = internal global ptr null, align 8
@l_Lean_Meta_Sym_Simp_Result_toSimpGoalResult___closed__6_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00Lean_Meta_Sym_SimpGoalResult_toOption_spec__0_spec__0___closed__1 = internal global ptr null, align 8
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00Lean_Meta_Sym_SimpGoalResult_toOption_spec__0_spec__0___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00Lean_Meta_Sym_SimpGoalResult_toOption_spec__0_spec__0___closed__0 = internal global ptr null, align 8
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00Lean_Meta_Sym_SimpGoalResult_toOption_spec__0_spec__0___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00Lean_Meta_Sym_SimpGoalResult_toOption_spec__0_spec__0___closed__4 = internal global ptr null, align 8
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00Lean_Meta_Sym_SimpGoalResult_toOption_spec__0_spec__0___closed__4_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00Lean_Meta_Sym_SimpGoalResult_toOption_spec__0_spec__0___closed__3 = internal global ptr null, align 8
@l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00Lean_Meta_Sym_SimpGoalResult_toOption_spec__0_spec__0___closed__3_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_Sym_SimpGoalResult_toOption___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [29 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 29, i64 29, i64 28, [29 x i8] c"`Sym.simp` made no progress \00" }>, align 8
@l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00Lean_Meta_Sym_Simp_Result_toSimpGoalResult_spec__0_spec__0_spec__1___redArg___closed__0 = internal global i64 0, align 8
@l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00Lean_Meta_Sym_Simp_Result_toSimpGoalResult_spec__0_spec__0_spec__1___redArg___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_Lean_Meta_Sym_Simp_Result_toSimpGoalResult___closed__2_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Sym_Simp_Result_toSimpGoalResult___closed__2_value_aux_0, ptr @l_Lean_Meta_Sym_Simp_Result_toSimpGoalResult___closed__1_value, ptr inttoptr (i64 503120329516084626 to ptr)] }, align 8
@l_Lean_Meta_Sym_Simp_Result_toSimpGoalResult___closed__2_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Sym_Simp_Result_toSimpGoalResult___closed__0_value, ptr inttoptr (i64 -2323868360017369713 to ptr)] }, align 8
@l_Lean_Meta_Sym_Simp_Result_toSimpGoalResult___closed__0_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [3 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 3, i64 3, i64 2, [3 x i8] c"Eq\00" }>, align 8
@l_Lean_Meta_Sym_Simp_Result_toSimpGoalResult___closed__1_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [4 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 4, i64 4, i64 3, [4 x i8] c"mpr\00" }>, align 8
@l_Lean_Meta_Sym_Simp_Result_toSimpGoalResult___closed__5_value = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr @l_Lean_Meta_Sym_Simp_Result_toSimpGoalResult___closed__5_value_aux_0, ptr @l_Lean_Meta_Sym_Simp_Result_toSimpGoalResult___closed__4_value, ptr inttoptr (i64 -378945733937882959 to ptr)] }, align 8
@l_Lean_Meta_Sym_Simp_Result_toSimpGoalResult___closed__5_value_aux_0 = internal constant { { i32, i8, i8, i8, i8 }, [3 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 32, i8 0, i8 2, i8 1 }, [3 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_Lean_Meta_Sym_Simp_Result_toSimpGoalResult___closed__3_value, ptr inttoptr (i64 -6576648028182604466 to ptr)] }, align 8
@l_Lean_Meta_Sym_Simp_Result_toSimpGoalResult___closed__3_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [5 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 5, i64 5, i64 4, [5 x i8] c"True\00" }>, align 8
@l_Lean_Meta_Sym_Simp_Result_toSimpGoalResult___closed__4_value = internal constant <{ { i32, i8, i8, i8, i8 }, i64, i64, i64, [6 x i8] }> <{ { i32, i8, i8, i8, i8 } { i32 0, i8 0, i8 0, i8 0, i8 -7 }, i64 6, i64 6, i64 5, [6 x i8] c"intro\00" }>, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @l_Lean_Meta_Sym_SimpGoalResult_ctorIdx(ptr noundef %0) local_unnamed_addr #0 {
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
  switch i32 %.0.i, label %2 [
    i32 0, label %bb.d
    i32 1, label %1
  ]

1:                                                ; preds = %lean_obj_tag.exit
  br label %bb.d

2:                                                ; preds = %lean_obj_tag.exit
  br label %bb.d

bb.d:                                             ; preds = %lean_obj_tag.exit, %2, %1
  %.0 = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l_Lean_Meta_Sym_SimpGoalResult_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0                 ; 2 uses
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
  switch i32 %.0.i.i, label %2 [
    i32 0, label %l_Lean_Meta_Sym_SimpGoalResult_ctorIdx.exit
    i32 1, label %1
  ]

1:                                                ; preds = %lean_obj_tag.exit.i
  br label %l_Lean_Meta_Sym_SimpGoalResult_ctorIdx.exit

2:                                                ; preds = %lean_obj_tag.exit.i
  br label %l_Lean_Meta_Sym_SimpGoalResult_ctorIdx.exit

l_Lean_Meta_Sym_SimpGoalResult_ctorIdx.exit:      ; preds = %lean_obj_tag.exit.i, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.i ]
  br i1 %.not.i.i, label %3, label %lean_dec.exit

3:                                                ; preds = %l_Lean_Meta_Sym_SimpGoalResult_ctorIdx.exit
  %4 = load i32, ptr %0, align 4, !tbaa !10       ; 3 uses
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %3
  %i.g = add nsw i32 %4, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.e:                                             ; preds = %3
  %.not.i3 = icmp eq i32 %4, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %l_Lean_Meta_Sym_SimpGoalResult_ctorIdx.exit
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_Sym_SimpGoalResult_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i12 = icmp eq i64 %i.b, 0
  br i1 %.not.i12, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %.mask = and i32 %.val.i, -16777216
  %i.d = icmp eq i32 %.mask, 33554432
  br i1 %i.d, label %bb.b, label %bb.o

lean_obj_tag.exit.thread:                         ; preds = %bb.a
  %i.e = and i64 %i.a, 8589934590
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 5 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 1
  %.not.i10 = icmp eq i64 %i.j, 0
  br i1 %.not.i10, label %bb.c, label %lean_inc.exit

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !10 ; 3 uses
  %i.k = icmp sgt i32 %.val.i.i, 0
  br i1 %i.k, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw i32 %.val.i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !10
  br label %lean_inc.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.val.i13 = load i32, ptr %0, align 8, !tbaa !10 ; 4 uses
  %i.n = icmp eq i32 %.val.i13, 1
  br i1 %i.n, label %.preheader.i.preheader, label %bb.k

.preheader.i.preheader:                           ; preds = %lean_inc.exit
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !13   ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 1
  %.not.i.i14 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i14, label %bb.g, label %lean_dec.exit.i

bb.g:                                             ; preds = %.preheader.i.preheader
  %i.r = load i32, ptr %i.o, align 4, !tbaa !10   ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %i.o, align 4, !tbaa !10
  br label %lean_dec.exit.i

bb.i:                                             ; preds = %bb.g
  %.not.i7.i = icmp eq i32 %i.r, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.j, %bb.i, %bb.h, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %0) #6
  br label %lean_dec_ref_known.exit

bb.k:                                             ; preds = %lean_inc.exit
  %i.u = icmp sgt i32 %.val.i13, 1
  br i1 %i.u, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i32 %.val.i13, -1
  store i32 %i.v, ptr %0, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.m:                                             ; preds = %bb.k
  %.not.i8.i = icmp eq i32 %.val.i13, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.l, %bb.m, %bb.n
  %i.w = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef %i.h) #6
  br label %lean_dec.exit

bb.o:                                             ; preds = %lean_obj_tag.exit
  %i.x = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.q:                                             ; preds = %bb.o
  %.not.i11 = icmp eq i32 %i.x, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_obj_tag.exit.thread, %bb.p, %bb.q, %bb.r, %lean_dec_ref_known.exit
  %.0 = phi ptr [ %i.w, %lean_dec_ref_known.exit ], [ %1, %bb.r ], [ %1, %bb.q ], [ %1, %bb.p ], [ %1, %lean_obj_tag.exit.thread ]
  ret ptr %.0
}

declare ptr @lean_apply_1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_Sym_SimpGoalResult_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_Sym_SimpGoalResult_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_Sym_SimpGoalResult_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_Sym_SimpGoalResult_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i7 = icmp eq i32 %i.d, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_Sym_SimpGoalResult_noProgress_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_Sym_SimpGoalResult_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_Sym_SimpGoalResult_noProgress_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_Sym_SimpGoalResult_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_Sym_SimpGoalResult_closed_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_Sym_SimpGoalResult_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_Sym_SimpGoalResult_closed_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_Sym_SimpGoalResult_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_Sym_SimpGoalResult_goal_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_Sym_SimpGoalResult_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}
end_hunk_0
