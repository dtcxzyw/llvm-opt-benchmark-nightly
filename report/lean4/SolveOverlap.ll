Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/SolveOverlap?download=true
inline.NumInlined: 2634
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@l_Std_DHashMap_Internal_AssocList_contains___at___00Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__2_spec__4___boxed:bb.a
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = or disjoint i64 %i.w, 1
  %i.y = inttoptr i64 %i.x to ptr
  ret ptr %i.y
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_DHashMap_Internal_Raw_u2080_expand___at___00Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__2_spec__5(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !15 ; 3 uses
  %i.b = shl i64 %.val.i, 1
  %i.c = or disjoint i64 %i.b, 1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = and i64 %.val.i, 9223372036854775807     ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %l_Std_DHashMap_Internal_Raw_u2080_expand___at___00Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__2_spec__5___redArg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul.i9.mask.i = and i64 %.val.i, 4611686018427387904
  %i.g = icmp eq i64 %mul.i9.mask.i, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw i64 %i.e, 2
  %i.i = or disjoint i64 %i.h, 1
  %i.j = inttoptr i64 %i.i to ptr
  br label %l_Std_DHashMap_Internal_Raw_u2080_expand___at___00Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__2_spec__5___redArg.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call ptr @lean_nat_overflow_mul(i64 noundef %i.e, i64 noundef 2) #6
  br label %l_Std_DHashMap_Internal_Raw_u2080_expand___at___00Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__2_spec__5___redArg.exit

l_Std_DHashMap_Internal_Raw_u2080_expand___at___00Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__2_spec__5___redArg.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.2.i.i = phi ptr [ %i.k, %bb.d ], [ %i.d, %bb.a ], [ %i.j, %bb.c ]
  %i.l = tail call ptr @lean_mk_array(ptr noundef %.2.i.i, ptr noundef nonnull inttoptr (i64 1 to ptr)) #6
  %i.m = tail call ptr @l___private_Std_Data_DHashMap_Internal_Defs_0__Std_DHashMap_Internal_Raw_u2080_expand_go___at___00Std_DHashMap_Internal_Raw_u2080_expand___at___00Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__2_spec__5_spec__8___redArg(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %1, ptr noundef %i.l)
  ret ptr %i.m
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_DHashMap_Internal_AssocList_replace___at___00Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__2_spec__6(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Std_DHashMap_Internal_AssocList_replace___at___00Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__2_spec__6___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__1_spec__2_spec__4(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__1_spec__2_spec__4___redArg(ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__1_spec__2_spec__4___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val15 = load i64, ptr %i.a, align 8, !tbaa !15
  %i.b = load i32, ptr %2, align 8, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 8, !tbaa !12
  br label %lean_dec.exit11

bb.c:                                             ; preds = %bb.a
  %.not.i12 = icmp eq i32 %i.b, 0
  br i1 %.not.i12, label %lean_dec.exit11, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !15
  %i.f = load i32, ptr %3, align 8, !tbaa !12     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit11
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 8, !tbaa !12
  br label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit11
  %.not.i13 = icmp eq i32 %i.f, 0
  br i1 %.not.i13, label %lean_dec.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__1_spec__2_spec__4___redArg(ptr noundef %1, i64 noundef %.val15, i64 noundef %.val, ptr noundef %4, ptr noundef %5)
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Std_Data_DHashMap_Internal_Defs_0__Std_DHashMap_Internal_Raw_u2080_expand_go___at___00Std_DHashMap_Internal_Raw_u2080_expand___at___00Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__2_spec__5_spec__8(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Std_Data_DHashMap_Internal_Defs_0__Std_DHashMap_Internal_Raw_u2080_expand_go___at___00Std_DHashMap_Internal_Raw_u2080_expand___at___00Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__2_spec__5_spec__8___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_insertAtCollisionNode___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__1_spec__2_spec__4_spec__7(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_PersistentHashMap_insertAtCollisionNodeAux___at___00Lean_PersistentHashMap_insertAtCollisionNode___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__1_spec__2_spec__4_spec__7_spec__13___redArg(ptr noundef %1, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %2, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Data_PersistentHashMap_0__Lean_PersistentHashMap_insertAux_traverse___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__1_spec__2_spec__4_spec__8(ptr nofree noundef readnone captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Data_PersistentHashMap_0__Lean_PersistentHashMap_insertAux_traverse___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__1_spec__2_spec__4_spec__8___redArg(i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef %6)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Data_PersistentHashMap_0__Lean_PersistentHashMap_insertAux_traverse___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__1_spec__2_spec__4_spec__8___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !15
  %i.b = load i32, ptr %1, align 8, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 8, !tbaa !12
  br label %lean_dec.exit

bb.c:                                             ; preds = %bb.a
  %.not.i11 = icmp eq i32 %i.b, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.c, %bb.b
  %i.e = tail call ptr @l___private_Lean_Data_PersistentHashMap_0__Lean_PersistentHashMap_insertAux_traverse___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__1_spec__2_spec__4_spec__8___redArg(i64 noundef %.val, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %5, ptr noundef %6)
  %i.f = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit15

bb.f:                                             ; preds = %lean_dec.exit
  %.not.i14 = icmp eq i32 %i.f, 0
  br i1 %.not.i14, label %lean_dec_ref.exit15, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit15

lean_dec_ref.exit15:                              ; preds = %bb.e, %bb.f, %bb.g
  %i.i = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_dec_ref.exit15
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit13

bb.i:                                             ; preds = %lean_dec_ref.exit15
  %.not.i12 = icmp eq i32 %i.i, 0
  br i1 %.not.i12, label %lean_dec_ref.exit13, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec_ref.exit13

lean_dec_ref.exit13:                              ; preds = %bb.h, %bb.i, %bb.j
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_DHashMap_Internal_AssocList_foldlM___at___00__private_Std_Data_DHashMap_Internal_Defs_0__Std_DHashMap_Internal_Raw_u2080_expand_go___at___00Std_DHashMap_Internal_Raw_u2080_expand___at___00Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__2_spec__5_spec__8_spec__12(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Std_DHashMap_Internal_AssocList_foldlM___at___00__private_Std_Data_DHashMap_Internal_Defs_0__Std_DHashMap_Internal_Raw_u2080_expand_go___at___00Std_DHashMap_Internal_Raw_u2080_expand___at___00Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__2_spec__5_spec__8_spec__12___redArg(ptr noundef %1, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_insertAtCollisionNodeAux___at___00Lean_PersistentHashMap_insertAtCollisionNode___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__1_spec__2_spec__4_spec__7_spec__13(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_PersistentHashMap_insertAtCollisionNodeAux___at___00Lean_PersistentHashMap_insertAtCollisionNode___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_MVarId_assign___at___00__private_Lean_Meta_Match_SolveOverlap_0__Lean_MVarId_contradictionQuick_spec__1_spec__2_spec__4_spec__7_spec__13___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @l___private_Lean_Meta_Match_SolveOverlap_0__Lean_Meta_Match_InjectionAnyResult_ctorIdx(ptr noundef %0) local_unnamed_addr #3 {
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
define nonnull ptr @l___private_Lean_Meta_Match_SolveOverlap_0__Lean_Meta_Match_InjectionAnyResult_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_dec.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24                   ; 3 uses
  %1 = load i32, ptr %0, align 4, !tbaa !12       ; 3 uses
  %2 = icmp sgt i32 %1, 1
  br i1 %2, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %1, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.e:                                             ; preds = %bb.c
  %.not.i3 = icmp eq i32 %1, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.b, %bb.f, %bb.e, %bb.d
  %.0.i.i5 = phi i32 [ %i.f, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ], [ %i.d, %bb.b ] ; 2 uses
  %switch.selectcmp5.i = icmp eq i32 %.0.i.i5, 0
  %switch.selectcmp.i = icmp eq i32 %.0.i.i5, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.select6.i = select i1 %switch.selectcmp5.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select6.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Match_SolveOverlap_0__Lean_Meta_Match_InjectionAnyResult_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i17 = icmp eq i64 %i.b, 0
  br i1 %.not.i17, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %.mask = and i32 %.val.i, -16777216
  %i.d = icmp eq i32 %.mask, 33554432
  br i1 %i.d, label %bb.b, label %bb.w

lean_obj_tag.exit.thread:                         ; preds = %bb.a
  %i.e = and i64 %i.a, 8589934590
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 5 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 1
  %.not.i13 = icmp eq i64 %i.j, 0
  br i1 %.not.i13, label %bb.c, label %lean_inc.exit14

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !12 ; 3 uses
  %i.k = icmp sgt i32 %.val.i.i, 0
  br i1 %i.k, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw i32 %.val.i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !12
  br label %lean_inc.exit14

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit14, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit14

lean_inc.exit14:                                  ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !10   ; 5 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 1
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.g, label %lean_inc.exit

bb.g:                                             ; preds = %lean_inc.exit14
  %.val.i.i18 = load i32, ptr %i.o, align 4, !tbaa !12 ; 3 uses
  %i.r = icmp sgt i32 %.val.i.i18, 0
  br i1 %i.r, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.s = add nuw i32 %.val.i.i18, 1
  store i32 %i.s, ptr %i.o, align 4, !tbaa !12
  br label %lean_inc.exit

bb.i:                                             ; preds = %bb.g
  %.not.i.i19 = icmp eq i32 %.val.i.i18, 0
  br i1 %.not.i.i19, label %lean_inc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = atomicrmw sub ptr %i.o, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.j, %bb.i, %bb.h, %lean_inc.exit14
  %.val.i21 = load i32, ptr %0, align 8, !tbaa !12 ; 4 uses
  %i.u = icmp eq i32 %.val.i21, 1
  br i1 %i.u, label %.preheader.i.preheader, label %bb.s

.preheader.i.preheader:                           ; preds = %lean_inc.exit
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !10   ; 4 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, 1
  %.not.i.i22 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i22, label %bb.k, label %lean_dec.exit.i

bb.k:                                             ; preds = %.preheader.i.preheader
  %i.y = load i32, ptr %i.v, align 4, !tbaa !12   ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.aa = add nsw i32 %i.y, -1
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.m:                                             ; preds = %bb.k
  %.not.i7.i = icmp eq i32 %i.y, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.n, %bb.m, %bb.l, %.preheader.i.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !10 ; 4 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i.i22.1 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i22.1, label %bb.o, label %lean_dec.exit.i.1

bb.o:                                             ; preds = %lean_dec.exit.i
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !12 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.r, label %bb.p, !prof !13

bb.p:                                             ; preds = %bb.o
  %.not.i7.i.1 = icmp eq i32 %i.af, 0
  br i1 %.not.i7.i.1, label %lean_dec.exit.i.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #6
  br label %lean_dec.exit.i.1

bb.r:                                             ; preds = %bb.o
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !12
  br label %lean_dec.exit.i.1

lean_dec.exit.i.1:                                ; preds = %bb.r, %bb.q, %bb.p, %lean_dec.exit.i
  tail call void @lean_free_object(ptr noundef nonnull %0) #6
  br label %lean_dec_ref_known.exit

bb.s:                                             ; preds = %lean_inc.exit
  %i.ai = icmp sgt i32 %.val.i21, 1
  br i1 %i.ai, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.aj = add nsw i32 %.val.i21, -1
  store i32 %i.aj, ptr %0, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.u:                                             ; preds = %bb.s
  %.not.i8.i = icmp eq i32 %.val.i21, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i.1, %bb.t, %bb.u, %bb.v
  %i.ak = tail call ptr @lean_apply_2(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.o) #6
  br label %lean_dec.exit

bb.w:                                             ; preds = %lean_obj_tag.exit
  %i.al = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %bb.x, label %bb.y, !prof !13

bb.x:                                             ; preds = %bb.w
  %i.an = add nsw i32 %i.al, -1
  store i32 %i.an, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.y:                                             ; preds = %bb.w
  %.not.i16 = icmp eq i32 %i.al, 0
  br i1 %.not.i16, label %lean_dec.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_obj_tag.exit.thread, %bb.x, %bb.y, %bb.z, %lean_dec_ref_known.exit
  %.0 = phi ptr [ %i.ak, %lean_dec_ref_known.exit ], [ %1, %bb.z ], [ %1, %bb.y ], [ %1, %bb.x ], [ %1, %lean_obj_tag.exit.thread ]
  ret ptr %.0
}

declare ptr @lean_apply_2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Match_SolveOverlap_0__Lean_Meta_Match_InjectionAnyResult_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Match_SolveOverlap_0__Lean_Meta_Match_InjectionAnyResult_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Match_SolveOverlap_0__Lean_Meta_Match_InjectionAnyResult_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Match_SolveOverlap_0__Lean_Meta_Match_InjectionAnyResult_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13
end_hunk_0
