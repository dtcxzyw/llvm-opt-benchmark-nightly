Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/DocString?download=true
inline.NumInlined: 20346
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumUnrolled: 134
begin_hunk_0_@l_Std_DHashMap_Internal_AssocList_get_x3f___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x3f___at___00Lean_SMap_find_x3f___at___00Lean_Doc_DocM_exec_spec__0_spec__1_spec__3___boxed:bb.a
  %.not.i17.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i17.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.015.i.i, i64 4
  %.val.i.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i.i, 24
  br label %lean_obj_tag.exit.i.i

lean_obj_tag.exit.i.i:                            ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i.i.i, 0
  br i1 %i.g, label %l_Std_DHashMap_Internal_AssocList_get_x3f___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x3f___at___00Lean_SMap_find_x3f___at___00Lean_Doc_DocM_exec_spec__0_spec__1_spec__3.exit, label %bb.e

bb.e:                                             ; preds = %lean_obj_tag.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.n = tail call zeroext i8 @lean_name_eq(ptr noundef %i.i, ptr noundef %1) #9
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = and i64 %i.p, 1
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %bb.g, label %lean_inc.exit.i.i

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i = load i32, ptr %i.k, align 4, !tbaa !12 ; 3 uses
  %i.r = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.r, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.s = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.s, ptr %i.k, align 4, !tbaa !12
  br label %lean_inc.exit.i.i

bb.i:                                             ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %lean_inc.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = atomicrmw sub ptr %i.k, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i.i

lean_inc.exit.i.i:                                ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  tail call void @lean_inc_heartbeat() #9
  %i.u = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %lean_inc.exit.i.i
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

.thread.i.i:                                      ; preds = %lean_inc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 1, ptr %i.u, align 4, !tbaa !12
  store i32 16842768, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.k, ptr %i.x, align 8, !tbaa !10
  br label %l_Std_DHashMap_Internal_AssocList_get_x3f___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x3f___at___00Lean_SMap_find_x3f___at___00Lean_Doc_DocM_exec_spec__0_spec__1_spec__3.exit

l_Std_DHashMap_Internal_AssocList_get_x3f___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x3f___at___00Lean_SMap_find_x3f___at___00Lean_Doc_DocM_exec_spec__0_spec__1_spec__3.exit: ; preds = %lean_obj_tag.exit.i.i, %.thread.i.i
  %.2.i.i = phi ptr [ %i.u, %.thread.i.i ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.i.i ]
  %i.y = ptrtoint ptr %2 to i64
  %i.z = and i64 %i.y, 1
  %.not.i6 = icmp eq i64 %i.z, 0
  br i1 %.not.i6, label %bb.l, label %lean_dec.exit7

bb.l:                                             ; preds = %l_Std_DHashMap_Internal_AssocList_get_x3f___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x3f___at___00Lean_SMap_find_x3f___at___00Lean_Doc_DocM_exec_spec__0_spec__1_spec__3.exit
  %i.aa = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit7

bb.n:                                             ; preds = %bb.l
  %.not.i8 = icmp eq i32 %i.aa, 0
  br i1 %.not.i8, label %lean_dec.exit7, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #9
  br label %lean_dec.exit7

lean_dec.exit7:                                   ; preds = %bb.o, %bb.n, %bb.m, %l_Std_DHashMap_Internal_AssocList_get_x3f___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x3f___at___00Lean_SMap_find_x3f___at___00Lean_Doc_DocM_exec_spec__0_spec__1_spec__3.exit
  %i.ad = ptrtoint ptr %1 to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %bb.p, label %lean_dec.exit

bb.p:                                             ; preds = %lean_dec.exit7
  %i.af = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.q, label %bb.r, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit

bb.r:                                             ; preds = %bb.p
  %.not.i9 = icmp eq i32 %i.af, 0
  br i1 %.not.i9, label %lean_dec.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.s, %bb.r, %bb.q, %lean_dec.exit7
  ret ptr %.2.i.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_findAtAux___at___00Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_SMap_find_x3f___at___00Lean_Doc_DocM_exec_spec__0_spec__0_spec__1_spec__2(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_PersistentHashMap_findAtAux___at___00Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_SMap_find_x3f___at___00Lean_Doc_DocM_exec_spec__0_spec__0_spec__1_spec__2___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %4, ptr noundef %5)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_findAtAux___at___00Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_SMap_find_x3f___at___00Lean_Doc_DocM_exec_spec__0_spec__0_spec__1_spec__2___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_PersistentHashMap_findAtAux___at___00Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_SMap_find_x3f___at___00Lean_Doc_DocM_exec_spec__0_spec__0_spec__1_spec__2___redArg(ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %4, ptr noundef %5)
  %i.b = ptrtoint ptr %5 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %5, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %5, align 4, !tbaa !12
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i10 = icmp eq i32 %i.d, 0
  br i1 %.not.i10, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %lean_dec.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit14

bb.g:                                             ; preds = %lean_dec.exit
  %.not.i13 = icmp eq i32 %i.g, 0
  br i1 %.not.i13, label %lean_dec_ref.exit14, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #9
  br label %lean_dec_ref.exit14

lean_dec_ref.exit14:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.i, label %bb.j, !prof !15

bb.i:                                             ; preds = %lean_dec_ref.exit14
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit12

bb.j:                                             ; preds = %lean_dec_ref.exit14
  %.not.i11 = icmp eq i32 %i.j, 0
  br i1 %.not.i11, label %lean_dec_ref.exit12, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec_ref.exit12

lean_dec_ref.exit12:                              ; preds = %bb.i, %bb.j, %bb.k
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @l_Lean_Doc_DocArg_ctorIdx(ptr noundef %0) local_unnamed_addr #5 {
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
define noundef nonnull ptr @l_Lean_Doc_DocArg_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
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
  switch i32 %.0.i.i, label %2 [
    i32 0, label %l_Lean_Doc_DocArg_ctorIdx.exit
    i32 1, label %1
  ]

1:                                                ; preds = %lean_obj_tag.exit.i
  br label %l_Lean_Doc_DocArg_ctorIdx.exit

2:                                                ; preds = %lean_obj_tag.exit.i
  br label %l_Lean_Doc_DocArg_ctorIdx.exit

l_Lean_Doc_DocArg_ctorIdx.exit:                   ; preds = %lean_obj_tag.exit.i, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.i ]
  %i.g = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %l_Lean_Doc_DocArg_ctorIdx.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.e:                                             ; preds = %l_Lean_Doc_DocArg_ctorIdx.exit
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.d, %bb.e, %bb.f
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Doc_DocArg_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 5 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !12
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = load i32, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %lean_inc.exit
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %0, align 8, !tbaa !12
  br label %lean_dec_ref.exit

bb.g:                                             ; preds = %lean_inc.exit
  %.not.i6 = icmp eq i32 %i.h, 0
  br i1 %.not.i6, label %lean_dec_ref.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.f, %bb.g, %bb.h
  %i.k = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef %i.b) #9
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Doc_DocArg_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 5 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.b, label %lean_inc.exit.i

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !12
  br label %lean_inc.exit.i

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_inc.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i

lean_inc.exit.i:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = load i32, ptr %2, align 8, !tbaa !12     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %lean_inc.exit.i
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %2, align 8, !tbaa !12
  br label %l_Lean_Doc_DocArg_ctorElim___redArg.exit

bb.g:                                             ; preds = %lean_inc.exit.i
  %.not.i6.i = icmp eq i32 %i.h, 0
  br i1 %.not.i6.i, label %l_Lean_Doc_DocArg_ctorElim___redArg.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #9
  br label %l_Lean_Doc_DocArg_ctorElim___redArg.exit

l_Lean_Doc_DocArg_ctorElim___redArg.exit:         ; preds = %bb.f, %bb.g, %bb.h
  %i.k = tail call ptr @lean_apply_1(ptr noundef %4, ptr noundef %i.b) #9
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Doc_DocArg_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 5 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %bb.b, label %lean_inc.exit.i.i

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i32, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !12
  br label %lean_inc.exit.i.i

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %lean_inc.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i.i

lean_inc.exit.i.i:                                ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = load i32, ptr %2, align 8, !tbaa !12     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %lean_inc.exit.i.i
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %2, align 8, !tbaa !12
  br label %l_Lean_Doc_DocArg_ctorElim.exit

bb.g:                                             ; preds = %lean_inc.exit.i.i
  %.not.i6.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i6.i.i, label %l_Lean_Doc_DocArg_ctorElim.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #9
  br label %l_Lean_Doc_DocArg_ctorElim.exit

l_Lean_Doc_DocArg_ctorElim.exit:                  ; preds = %bb.f, %bb.g, %bb.h
  %i.k = tail call ptr @lean_apply_1(ptr noundef %4, ptr noundef %i.b) #9
  %i.l = ptrtoint ptr %1 to i64
  %i.m = and i64 %i.l, 1
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %l_Lean_Doc_DocArg_ctorElim.exit
  %i.n = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i7 = icmp eq i32 %i.n, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %l_Lean_Doc_DocArg_ctorElim.exit
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Doc_DocArg_ident_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 5 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.b, label %lean_inc.exit.i

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !12
  br label %lean_inc.exit.i

bb.d:                                             ; preds = %bb.b
end_hunk_0
