Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ScopeM?download=true
inline.NumInlined: 124
inline.NumDeleted: 25
begin_hunk_0_@l_Lean_Compiler_LCNF_ScopeM_withNewScope___redArg:bb.a
  br label %lean_inc.exit16

lean_inc.exit16:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.y = tail call ptr @lean_apply_2(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %i.l) #5
  %i.z = ptrtoint ptr %i.b to i64
  %i.aa = and i64 %i.z, 1
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %bb.f, label %lean_inc.exit

bb.f:                                             ; preds = %lean_inc.exit16
  %.val.i.i17 = load i32, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.ab = icmp sgt i32 %.val.i.i17, 0
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.ac = add nuw i32 %.val.i.i17, 1
  store i32 %i.ac, ptr %i.b, align 4, !tbaa !10
  br label %lean_inc.exit

bb.h:                                             ; preds = %bb.f
  %.not.i.i18 = icmp eq i32 %.val.i.i17, 0
  br i1 %.not.i.i18, label %lean_inc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.i, %bb.h, %bb.g, %lean_inc.exit16
  %i.ae = tail call ptr @lean_apply_4(ptr noundef %i.b, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.y, ptr noundef nonnull %i.c) #5
  %i.af = tail call ptr @l_Lean_Compiler_LCNF_ScopeM_withBackTrackingScope___redArg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.ae)
  ret ptr %i.af
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Compiler_LCNF_ScopeM_withNewScope(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Compiler_LCNF_ScopeM_withNewScope___redArg(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 2) i8 @l_Std_DTreeMap_Internal_Impl_contains___at___00Lean_Compiler_LCNF_ScopeM_isInScope_spec__0___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.012 = phi ptr [ %1, %bb.a ], [ %.012.be, %.backedge ] ; 5 uses
  %i.a = ptrtoint ptr %.012 to i64                ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.012, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i, 0
  br i1 %i.g, label %bb.e, label %.thread

bb.e:                                             ; preds = %lean_obj_tag.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.012, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.012, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %.012, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.n = tail call zeroext i8 @l___private_Lean_Data_Name_0__Lean_Name_quickCmpImpl(ptr noundef %0, ptr noundef %i.i) #5 ; 2 uses
  switch i8 %i.n, label %bb.f [
    i8 0, label %.backedge
    i8 1, label %.thread
  ]

.backedge:                                        ; preds = %bb.e, %bb.f
  %.012.be = phi ptr [ %i.m, %bb.f ], [ %i.k, %bb.e ]
  br label %bb.b

bb.f:                                             ; preds = %bb.e
  br label %.backedge

.thread:                                          ; preds = %bb.e, %lean_obj_tag.exit
  %.2 = phi i8 [ 0, %lean_obj_tag.exit ], [ %i.n, %bb.e ]
  ret i8 %.2
}

declare zeroext i8 @l___private_Lean_Data_Name_0__Lean_Name_quickCmpImpl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l_Std_DTreeMap_Internal_Impl_contains___at___00Lean_Compiler_LCNF_ScopeM_isInScope_spec__0___redArg___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.012.i = phi ptr [ %1, %bb.a ], [ %.012.i.be, %.backedge ] ; 5 uses
  %i.a = ptrtoint ptr %.012.i to i64              ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit.i

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.012.i, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24
  br label %lean_obj_tag.exit.i

lean_obj_tag.exit.i:                              ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i.i, 0
  br i1 %i.g, label %bb.e, label %l_Std_DTreeMap_Internal_Impl_contains___at___00Lean_Compiler_LCNF_ScopeM_isInScope_spec__0___redArg.exit

bb.e:                                             ; preds = %lean_obj_tag.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.n = tail call zeroext i8 @l___private_Lean_Data_Name_0__Lean_Name_quickCmpImpl(ptr noundef %0, ptr noundef %i.i) #5
  switch i8 %i.n, label %bb.f [
    i8 0, label %.backedge
    i8 1, label %l_Std_DTreeMap_Internal_Impl_contains___at___00Lean_Compiler_LCNF_ScopeM_isInScope_spec__0___redArg.exit
  ]

bb.f:                                             ; preds = %bb.e
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.e
  %.012.i.be = phi ptr [ %i.m, %bb.f ], [ %i.k, %bb.e ]
  br label %bb.b

l_Std_DTreeMap_Internal_Impl_contains___at___00Lean_Compiler_LCNF_ScopeM_isInScope_spec__0___redArg.exit: ; preds = %lean_obj_tag.exit.i, %bb.e
  %.2.i = phi i64 [ 1, %lean_obj_tag.exit.i ], [ 3, %bb.e ]
  %i.o = ptrtoint ptr %1 to i64
  %i.p = and i64 %i.o, 1
  %.not.i5 = icmp eq i64 %i.p, 0
  br i1 %.not.i5, label %bb.g, label %lean_dec.exit6

bb.g:                                             ; preds = %l_Std_DTreeMap_Internal_Impl_contains___at___00Lean_Compiler_LCNF_ScopeM_isInScope_spec__0___redArg.exit
  %i.q = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %i.q, -1
  store i32 %i.s, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit6

bb.i:                                             ; preds = %bb.g
  %.not.i7 = icmp eq i32 %i.q, 0
  br i1 %.not.i7, label %lean_dec.exit6, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec.exit6

lean_dec.exit6:                                   ; preds = %bb.j, %bb.i, %bb.h, %l_Std_DTreeMap_Internal_Impl_contains___at___00Lean_Compiler_LCNF_ScopeM_isInScope_spec__0___redArg.exit
  %i.t = ptrtoint ptr %0 to i64
  %i.u = and i64 %i.t, 1
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.k, label %lean_dec.exit

bb.k:                                             ; preds = %lean_dec.exit6
  %i.v = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.m:                                             ; preds = %bb.k
  %.not.i8 = icmp eq i32 %i.v, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.n, %bb.m, %bb.l, %lean_dec.exit6
  %i.y = inttoptr i64 %.2.i to ptr
  ret ptr %i.y
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_Compiler_LCNF_ScopeM_isInScope___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_st_ref_get(ptr noundef %1) #5 ; 6 uses
  tail call void @lean_inc_heartbeat() #5
  %i.b = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !10
  store i32 65552, ptr %i.d, align 4
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %bb.c
  %.012.i = phi ptr [ %i.a, %bb.c ], [ %.012.i.be, %.backedge ] ; 5 uses
  %i.e = ptrtoint ptr %.012.i to i64              ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i.i31 = icmp eq i64 %i.f, 0
  br i1 %.not.i.i31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = lshr i64 %i.e, 1
  %i.h = trunc i64 %i.g to i32
  br label %lean_obj_tag.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %.012.i, i64 4
  %.val.i.i32 = load i32, ptr %i.i, align 4
  %i.j = lshr i32 %.val.i.i32, 24
  br label %lean_obj_tag.exit.i

lean_obj_tag.exit.i:                              ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.h, %bb.e ], [ %i.j, %bb.f ]
  %i.k = icmp eq i32 %.0.i.i, 0
  br i1 %i.k, label %bb.g, label %l_Std_DTreeMap_Internal_Impl_contains___at___00Lean_Compiler_LCNF_ScopeM_isInScope_spec__0___redArg.exit

bb.g:                                             ; preds = %lean_obj_tag.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12
  %i.r = tail call zeroext i8 @l___private_Lean_Data_Name_0__Lean_Name_quickCmpImpl(ptr noundef %0, ptr noundef %i.m) #5
  switch i8 %i.r, label %bb.h [
    i8 0, label %.backedge
    i8 1, label %l_Std_DTreeMap_Internal_Impl_contains___at___00Lean_Compiler_LCNF_ScopeM_isInScope_spec__0___redArg.exit
  ]

bb.h:                                             ; preds = %bb.g
  br label %.backedge

.backedge:                                        ; preds = %bb.h, %bb.g
  %.012.i.be = phi ptr [ %i.q, %bb.h ], [ %i.o, %bb.g ]
  br label %bb.d

l_Std_DTreeMap_Internal_Impl_contains___at___00Lean_Compiler_LCNF_ScopeM_isInScope_spec__0___redArg.exit: ; preds = %lean_obj_tag.exit.i, %bb.g
  %.2.i = phi i64 [ 1, %lean_obj_tag.exit.i ], [ 3, %bb.g ]
  %i.s = ptrtoint ptr %i.a to i64
  %i.t = and i64 %i.s, 1
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %l_Std_DTreeMap_Internal_Impl_contains___at___00Lean_Compiler_LCNF_ScopeM_isInScope_spec__0___redArg.exit
  %i.u = load i32, ptr %i.a, align 4, !tbaa !10   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %i.a, align 4, !tbaa !10
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %.not.i28 = icmp eq i32 %i.u, 0
  br i1 %.not.i28, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %l_Std_DTreeMap_Internal_Impl_contains___at___00Lean_Compiler_LCNF_ScopeM_isInScope_spec__0___redArg.exit
  %i.x = inttoptr i64 %.2.i to ptr
  store ptr %i.x, ptr %2, align 8, !tbaa !12
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_Compiler_LCNF_ScopeM_isInScope___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Compiler_LCNF_ScopeM_isInScope___redArg(ptr noundef %0, ptr noundef %1)
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 1
  %.not.i5 = icmp eq i64 %i.c, 0
  br i1 %.not.i5, label %bb.b, label %lean_dec.exit6

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit6

bb.d:                                             ; preds = %bb.b
  %.not.i7 = icmp eq i32 %i.d, 0
  br i1 %.not.i7, label %lean_dec.exit6, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec.exit6

lean_dec.exit6:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = ptrtoint ptr %0 to i64
  %i.h = and i64 %i.g, 1
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.f, label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit6
  %i.i = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i32 %i.i, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.i, %bb.h, %bb.g, %lean_dec.exit6
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_Compiler_LCNF_ScopeM_isInScope(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Compiler_LCNF_ScopeM_isInScope___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_Compiler_LCNF_ScopeM_isInScope___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias nonnull ptr @l_Lean_Compiler_LCNF_ScopeM_isInScope___redArg(ptr noundef %0, ptr noundef %1)
  %i.b = ptrtoint ptr %5 to i64
  %i.c = and i64 %i.b, 1
  %.not.i17 = icmp eq i64 %i.c, 0
  br i1 %.not.i17, label %bb.b, label %lean_dec.exit18

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %5, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit18

bb.d:                                             ; preds = %bb.b
  %.not.i19 = icmp eq i32 %i.d, 0
  br i1 %.not.i19, label %lean_dec.exit18, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #5
  br label %lean_dec.exit18

lean_dec.exit18:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %4, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit18
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %4, align 4, !tbaa !10
  br label %lean_dec_ref.exit29

bb.g:                                             ; preds = %lean_dec.exit18
  %.not.i28 = icmp eq i32 %i.g, 0
  br i1 %.not.i28, label %lean_dec_ref.exit29, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #5
  br label %lean_dec_ref.exit29

lean_dec_ref.exit29:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = and i64 %i.j, 1
  %.not.i15 = icmp eq i64 %i.k, 0
  br i1 %.not.i15, label %bb.i, label %lean_dec.exit16

bb.i:                                             ; preds = %lean_dec_ref.exit29
  %i.l = load i32, ptr %3, align 4, !tbaa !10     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit16

bb.k:                                             ; preds = %bb.i
  %.not.i20 = icmp eq i32 %i.l, 0
  br i1 %.not.i20, label %lean_dec.exit16, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec.exit16

lean_dec.exit16:                                  ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit29
  %i.o = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_dec.exit16
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %2, align 4, !tbaa !10
  br label %lean_dec_ref.exit27

bb.n:                                             ; preds = %lean_dec.exit16
  %.not.i26 = icmp eq i32 %i.o, 0
  br i1 %.not.i26, label %lean_dec_ref.exit27, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec_ref.exit27

lean_dec_ref.exit27:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.r = ptrtoint ptr %1 to i64
  %i.s = and i64 %i.r, 1
  %.not.i13 = icmp eq i64 %i.s, 0
  br i1 %.not.i13, label %bb.p, label %lean_dec.exit14

bb.p:                                             ; preds = %lean_dec_ref.exit27
  %i.t = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.r, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit14

bb.r:                                             ; preds = %bb.p
  %.not.i22 = icmp eq i32 %i.t, 0
  br i1 %.not.i22, label %lean_dec.exit14, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec.exit14

lean_dec.exit14:                                  ; preds = %bb.s, %bb.r, %bb.q, %lean_dec_ref.exit27
  %i.w = ptrtoint ptr %0 to i64
  %i.x = and i64 %i.w, 1
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.t, label %lean_dec.exit

bb.t:                                             ; preds = %lean_dec.exit14
  %i.y = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %bb.t
  %i.aa = add nsw i32 %i.y, -1
  store i32 %i.aa, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.v:                                             ; preds = %bb.t
  %.not.i24 = icmp eq i32 %i.y, 0
  br i1 %.not.i24, label %lean_dec.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
end_hunk_0
