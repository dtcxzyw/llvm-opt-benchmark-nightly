Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/SubExpr?download=true
inline.NumInlined: 1140
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFnArgs___redArg___lam__1___boxed:bb.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFnArgs(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFnArgs___redArg(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFn___redArg___lam__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Expr_getBoundedAppFn(ptr noundef %0, ptr noundef %1) #7
  tail call void @lean_inc_heartbeat() #7
  %i.b = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !12
  store i32 131096, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %2, ptr %i.f, align 8, !tbaa !9
  ret ptr %i.b
}

declare ptr @l_Lean_Expr_getBoundedAppFn(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFn___redArg___lam__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Expr_getBoundedAppFn(ptr noundef %0, ptr noundef %1) #7
  tail call void @lean_inc_heartbeat() #7
  %i.b = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFn___redArg___lam__0.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFn___redArg___lam__0.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !12
  store i32 131096, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %2, ptr %i.f, align 8, !tbaa !9
  %i.g = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFn___redArg___lam__0.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit8

bb.d:                                             ; preds = %l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFn___redArg___lam__0.exit
  %.not.i7 = icmp eq i32 %i.g, 0
  br i1 %.not.i7, label %lean_dec_ref.exit8, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec_ref.exit8

lean_dec_ref.exit8:                               ; preds = %bb.c, %bb.d, %bb.e
  %i.j = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.f, label %bb.g, !prof !14

bb.f:                                             ; preds = %lean_dec_ref.exit8
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.g:                                             ; preds = %lean_dec_ref.exit8
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.f, %bb.g, %bb.h
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFn___redArg___lam__1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_SubExpr_Pos_pushNaryFn(ptr noundef %0, ptr noundef %4) #7
  %i.b = tail call ptr @lean_alloc_object(i64 noundef 48) #7 ; 9 uses
  store i32 1, ptr %i.b, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = or disjoint i32 %i.e, -184549376
  store i32 %i.f, ptr %i.c, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFn___redArg___lam__0___boxed, ptr %i.g, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 4, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 3, ptr %i.i, align 2, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %0, ptr %i.j, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.k, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.a, ptr %i.l, align 8, !tbaa !9
  %i.m = tail call ptr @lean_apply_3(ptr noundef %2, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %i.b, ptr noundef %3) #7
  ret ptr %i.m
}

declare ptr @l_Lean_SubExpr_Pos_pushNaryFn(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFn___redArg___lam__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_SubExpr_Pos_pushNaryFn(ptr noundef %0, ptr noundef %4) #7
  %i.b = tail call ptr @lean_alloc_object(i64 noundef 48) #7 ; 9 uses
  store i32 1, ptr %i.b, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = or disjoint i32 %i.e, -184549376
  store i32 %i.f, ptr %i.c, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFn___redArg___lam__0___boxed, ptr %i.g, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 4, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 3, ptr %i.i, align 2, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %0, ptr %i.j, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.k, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.a, ptr %i.l, align 8, !tbaa !9
  %i.m = tail call ptr @lean_apply_3(ptr noundef %2, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %i.b, ptr noundef %3) #7
  %i.n = ptrtoint ptr %4 to i64
  %i.o = and i64 %i.n, 1
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %4, align 4, !tbaa !12     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %4, align 4, !tbaa !12
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i7 = icmp eq i32 %i.p, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.m
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFn___redArg___lam__2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Expr_getAppNumArgs(ptr noundef %6) #7 ; 13 uses
  %i.b = ptrtoint ptr %5 to i64
  %i.c = and i64 %i.b, 1
  %.not.i26 = icmp eq i64 %i.c, 0
  br i1 %.not.i26, label %lean_nat_le.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = and i64 %i.d, 1
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %lean_nat_le.exit.thread28, label %lean_nat_le.exit.thread, !prof !17

lean_nat_le.exit:                                 ; preds = %bb.a
  %i.f = tail call zeroext i1 @lean_nat_big_le(ptr noundef %5, ptr noundef %i.a) #7
  br i1 %i.f, label %bb.g, label %bb.c

lean_nat_le.exit.thread28:                        ; preds = %bb.b
  %i.g = tail call zeroext i1 @lean_nat_big_le(ptr noundef %5, ptr noundef %i.a) #7
  br i1 %i.g, label %.thread, label %lean_dec.exit22

lean_nat_le.exit.thread:                          ; preds = %bb.b
  %.not30 = icmp ugt ptr %5, %i.a
  br i1 %.not30, label %lean_dec.exit22, label %.thread39

.thread39:                                        ; preds = %lean_nat_le.exit.thread
  br label %lean_dec.exit22

bb.c:                                             ; preds = %lean_nat_le.exit
  %i.h = load i32, ptr %5, align 4, !tbaa !12     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %5, align 4, !tbaa !12
  br label %lean_dec.exit22

bb.e:                                             ; preds = %bb.c
  %.not.i23 = icmp eq i32 %i.h, 0
  br i1 %.not.i23, label %lean_dec.exit22, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit22

bb.g:                                             ; preds = %lean_nat_le.exit
  %.pre = ptrtoint ptr %i.a to i64
  %.pre31 = and i64 %.pre, 1
  %i.k = icmp eq i64 %.pre31, 0
  br i1 %i.k, label %.thread, label %lean_dec.exit22

.thread:                                          ; preds = %lean_nat_le.exit.thread28, %bb.g
  %i.l = load i32, ptr %i.a, align 4, !tbaa !12   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %bb.i, !prof !14

bb.h:                                             ; preds = %.thread
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %i.a, align 4, !tbaa !12
  br label %lean_dec.exit22

bb.i:                                             ; preds = %.thread
  %.not.i24 = icmp eq i32 %i.l, 0
  br i1 %.not.i24, label %lean_dec.exit22, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #7
  br label %lean_dec.exit22

lean_dec.exit22:                                  ; preds = %.thread39, %lean_nat_le.exit.thread28, %lean_nat_le.exit.thread, %bb.g, %bb.h, %bb.i, %bb.j, %bb.d, %bb.e, %bb.f
  %.0 = phi ptr [ %i.a, %lean_nat_le.exit.thread ], [ %i.a, %bb.f ], [ %i.a, %bb.e ], [ %i.a, %bb.d ], [ %5, %bb.g ], [ %5, %bb.j ], [ %5, %bb.i ], [ %5, %bb.h ], [ %i.a, %lean_nat_le.exit.thread28 ], [ %5, %.thread39 ]
  %i.o = tail call ptr @lean_alloc_object(i64 noundef 56) #7 ; 10 uses
  store i32 1, ptr %i.o, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 65535
  %i.s = or disjoint i32 %i.r, -184549376
  store i32 %i.s, ptr %i.p, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFn___redArg___lam__1___boxed, ptr %i.t, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i16 5, ptr %i.u, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 18
  store i16 4, ptr %i.v, align 2, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %.0, ptr %i.w, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %6, ptr %i.x, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %0, ptr %i.y, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr %1, ptr %i.z, align 8, !tbaa !9
  %i.aa = tail call ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_getPos___redArg(ptr noundef %2, ptr noundef %3)
  %i.ab = tail call ptr @lean_apply_4(ptr noundef %4, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.aa, ptr noundef nonnull %i.o) #7
  ret ptr %i.ab
}

declare ptr @l_Lean_Expr_getAppNumArgs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFn___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 6 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not.i22 = icmp eq i64 %i.d, 0
  br i1 %.not.i22, label %bb.b, label %lean_inc_n.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i, 2
  store i32 %i.f, ptr %i.b, align 4, !tbaa !12
  br label %lean_inc_n.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_n.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw sub ptr %i.b, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit

lean_inc_n.exit:                                  ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.h = ptrtoint ptr %1 to i64
  %i.i = and i64 %i.h, 1
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.f, label %lean_inc.exit

bb.f:                                             ; preds = %lean_inc_n.exit
  %.val.i.i23 = load i32, ptr %1, align 4, !tbaa !12 ; 3 uses
  %i.j = icmp sgt i32 %.val.i.i23, 0
  br i1 %i.j, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw i32 %.val.i.i23, 1
  store i32 %i.k, ptr %1, align 4, !tbaa !12
  br label %lean_inc.exit

bb.h:                                             ; preds = %bb.f
  %.not.i.i24 = icmp eq i32 %.val.i.i23, 0
  br i1 %.not.i.i24, label %lean_inc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.i, %bb.h, %bb.g, %lean_inc_n.exit
  %.val.i.i25 = load i32, ptr %0, align 8, !tbaa !12 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i25, 0
  br i1 %i.m, label %bb.j, label %bb.k, !prof !14

bb.j:                                             ; preds = %lean_inc.exit
  %i.n = add nuw i32 %.val.i.i25, 1
  store i32 %i.n, ptr %0, align 8, !tbaa !12
  br label %lean_inc_ref.exit27

bb.k:                                             ; preds = %lean_inc.exit
  %.not.i.i26 = icmp eq i32 %.val.i.i25, 0
  br i1 %.not.i.i26, label %lean_inc_ref.exit27, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit27

lean_inc_ref.exit27:                              ; preds = %bb.j, %bb.k, %bb.l
  %i.p = tail call ptr @lean_alloc_object(i64 noundef 72) #7 ; 12 uses
  store i32 1, ptr %i.p, align 4, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 65535
  %i.t = or disjoint i32 %i.s, -184549376
  store i32 %i.t, ptr %i.q, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFn___redArg___lam__2, ptr %i.u, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i16 7, ptr %i.v, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 18
  store i16 6, ptr %i.w, align 2, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %2, ptr %i.x, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %4, ptr %i.y, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %0, ptr %i.z, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %1, ptr %i.aa, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %3, ptr %i.ac, align 8, !tbaa !9
  %i.ad = tail call ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_getExpr___redArg(ptr noundef nonnull %0, ptr noundef %1)
  %i.ae = tail call ptr @lean_apply_4(ptr noundef %i.b, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.ad, ptr noundef nonnull %i.p) #7
  ret ptr %i.ae
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFn(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBoundedAppFn___redArg(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBindingDomain___redArg___lam__0(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Expr_bindingDomain_x21(ptr noundef %2) #7
  %i.b = tail call ptr @lean_alloc_object(i64 noundef 40) #7 ; 8 uses
  store i32 1, ptr %i.b, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = or disjoint i32 %i.e, -184549376
  store i32 %i.f, ptr %i.c, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_descend___redArg___lam__0, ptr %i.g, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 3, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 2, ptr %i.i, align 2, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.j, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.a, ptr %i.k, align 8, !tbaa !9
  %i.l = tail call ptr @lean_apply_3(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %i.b, ptr noundef %1) #7
  ret ptr %i.l
}

declare ptr @l_Lean_Expr_bindingDomain_x21(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBindingDomain___redArg___lam__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Expr_bindingDomain_x21(ptr noundef %2) #7
  %i.b = tail call ptr @lean_alloc_object(i64 noundef 40) #7 ; 8 uses
  store i32 1, ptr %i.b, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = or disjoint i32 %i.e, -184549376
  store i32 %i.f, ptr %i.c, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_descend___redArg___lam__0, ptr %i.g, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 3, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 2, ptr %i.i, align 2, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.j, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.a, ptr %i.k, align 8, !tbaa !9
  %i.l = tail call ptr @lean_apply_3(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %i.b, ptr noundef %1) #7
  %i.m = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
end_hunk_0
