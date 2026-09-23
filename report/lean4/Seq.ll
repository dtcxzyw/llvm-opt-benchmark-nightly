Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Seq?download=true
inline.NumInlined: 712
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_Seq_compare_lex___boxed:bb.a
lean_dec_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %i.h = shl nuw nsw i8 %i.a, 1
  %i.i = or disjoint i8 %i.h, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = inttoptr i64 %i.j to ptr
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 3) i8 @l_Lean_Grind_AC_Seq_compare(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Grind_AC_Seq_length(ptr noundef %0) ; 12 uses
  %i.b = tail call ptr @l_Lean_Grind_AC_Seq_length(ptr noundef %1) ; 12 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %.not.i30 = trunc i64 %i.c to i1                ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = trunc i64 %i.d to i1
  %or.cond = select i1 %.not.i30, i1 %i.e, i1 false, !prof !15
  br i1 %or.cond, label %.split, label %lean_nat_lt.exit, !prof !15

.split:                                           ; preds = %bb.a
  %i.f = icmp ult ptr %i.a, %i.b
  br i1 %i.f, label %bb.l, label %bb.b

lean_nat_lt.exit:                                 ; preds = %bb.a
  %i.g = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.a, ptr noundef %i.b) #7
  br i1 %i.g, label %bb.l, label %bb.b

bb.b:                                             ; preds = %.split, %lean_nat_lt.exit
  %i.h = and i64 %i.d, 1
  %.not.i31 = icmp eq i64 %i.h, 0                 ; 2 uses
  br i1 %.not.i31, label %lean_nat_lt.exit34, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.c, 1
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %lean_nat_lt.exit34.thread36, label %lean_dec.exit22.thread37, !prof !11

lean_nat_lt.exit34.thread36:                      ; preds = %bb.c
  %i.j = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.b, ptr noundef %i.a) #7
  %i.k = zext i1 %i.j to i8
  br label %bb.d

lean_dec.exit22.thread37:                         ; preds = %bb.c
  %i.l = icmp ult ptr %i.b, %i.a
  %i.m = zext i1 %i.l to i8
  br label %lean_dec.exit20

lean_nat_lt.exit34:                               ; preds = %bb.b
  %i.n = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.b, ptr noundef %i.a) #7
  %i.o = zext i1 %i.n to i8                       ; 2 uses
  br i1 %.not.i30, label %lean_dec.exit22.thread, label %bb.d

bb.d:                                             ; preds = %lean_nat_lt.exit34.thread36, %lean_nat_lt.exit34
  %i.p = phi i8 [ %i.k, %lean_nat_lt.exit34.thread36 ], [ %i.o, %lean_nat_lt.exit34 ] ; 2 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !14   ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.e, label %bb.f, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.q, -1
  store i32 %i.s, ptr %i.a, align 4, !tbaa !14
  br label %lean_dec.exit22

bb.f:                                             ; preds = %bb.d
  %.not.i23 = icmp eq i32 %i.q, 0
  br i1 %.not.i23, label %lean_dec.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #7
  br label %lean_dec.exit22

lean_dec.exit22:                                  ; preds = %bb.g, %bb.f, %bb.e
  br i1 %.not.i31, label %lean_dec.exit22.thread, label %lean_dec.exit20

lean_dec.exit22.thread:                           ; preds = %lean_nat_lt.exit34, %lean_dec.exit22
  %i.t = phi i8 [ %i.p, %lean_dec.exit22 ], [ %i.o, %lean_nat_lt.exit34 ] ; 3 uses
  %i.u = load i32, ptr %i.b, align 4, !tbaa !14   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %lean_dec.exit22.thread
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %i.b, align 4, !tbaa !14
  br label %lean_dec.exit20

bb.i:                                             ; preds = %lean_dec.exit22.thread
  %.not.i24 = icmp eq i32 %i.u, 0
  br i1 %.not.i24, label %lean_dec.exit20, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.b) #7
  br label %lean_dec.exit20

lean_dec.exit20:                                  ; preds = %bb.j, %bb.i, %bb.h, %lean_dec.exit22.thread37, %lean_dec.exit22
  %i.x = phi i8 [ %i.p, %lean_dec.exit22 ], [ %i.m, %lean_dec.exit22.thread37 ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ]
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.k, label %lean_dec.exit

bb.k:                                             ; preds = %lean_dec.exit20
  %i.z = tail call zeroext i8 @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_Seq_compare_lex(ptr noundef %0, ptr noundef %1)
  br label %lean_dec.exit

bb.l:                                             ; preds = %.split, %lean_nat_lt.exit
  %i.aa = and i64 %i.d, 1
  %.not.i17 = icmp eq i64 %i.aa, 0
  br i1 %.not.i17, label %bb.m, label %lean_dec.exit18

bb.m:                                             ; preds = %bb.l
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !14  ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.n, label %bb.o, !prof !12

bb.n:                                             ; preds = %bb.m
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %i.b, align 4, !tbaa !14
  br label %lean_dec.exit18

bb.o:                                             ; preds = %bb.m
  %.not.i26 = icmp eq i32 %i.ab, 0
  br i1 %.not.i26, label %lean_dec.exit18, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.b) #7
  br label %lean_dec.exit18

lean_dec.exit18:                                  ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  br i1 %.not.i30, label %lean_dec.exit, label %bb.q

bb.q:                                             ; preds = %lean_dec.exit18
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !14  ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.r, label %bb.s, !prof !12

bb.r:                                             ; preds = %bb.q
  %i.ag = add nsw i32 %i.ae, -1
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !14
  br label %lean_dec.exit

bb.s:                                             ; preds = %bb.q
  %.not.i28 = icmp eq i32 %i.ae, 0
  br i1 %.not.i28, label %lean_dec.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit18, %bb.r, %bb.s, %bb.t, %bb.k, %lean_dec.exit20
  %.1 = phi i8 [ 2, %lean_dec.exit20 ], [ %i.z, %bb.k ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %lean_dec.exit18 ]
  ret i8 %.1
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Grind_AC_Seq_compare___boxed(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call zeroext i8 @l_Lean_Grind_AC_Seq_compare(ptr noundef %0, ptr noundef %1)
  %i.b = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit6

bb.c:                                             ; preds = %bb.a
  %.not.i5 = icmp eq i32 %i.b, 0
  br i1 %.not.i5, label %lean_dec_ref.exit6, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit6

lean_dec_ref.exit6:                               ; preds = %bb.b, %bb.c, %bb.d
  %i.e = load i32, ptr %0, align 4, !tbaa !14     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.f, !prof !12

bb.e:                                             ; preds = %lean_dec_ref.exit6
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit

bb.f:                                             ; preds = %lean_dec_ref.exit6
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %i.h = shl nuw nsw i8 %i.a, 1
  %i.i = or disjoint i8 %i.h, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = inttoptr i64 %i.j to ptr
  ret ptr %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorIdx(ptr noundef %0) local_unnamed_addr #1 {
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
define noundef nonnull ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
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
    i32 0, label %l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorIdx.exit
    i32 1, label %1
  ]

1:                                                ; preds = %lean_obj_tag.exit.i
  br label %l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorIdx.exit

2:                                                ; preds = %lean_obj_tag.exit.i
  br label %l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorIdx.exit

l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorIdx.exit: ; preds = %lean_obj_tag.exit.i, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.i ]
  br i1 %.not.i.i, label %3, label %lean_dec.exit

3:                                                ; preds = %l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorIdx.exit
  %4 = load i32, ptr %0, align 4, !tbaa !14       ; 3 uses
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %3
  %i.g = add nsw i32 %4, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit

bb.e:                                             ; preds = %3
  %.not.i3 = icmp eq i32 %4, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorIdx.exit
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i11 = icmp eq i64 %i.b, 0
  br i1 %.not.i11, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %.mask = and i32 %.val.i, -16777216
  %i.d = icmp eq i32 %.mask, 33554432
  br i1 %i.d, label %bb.b, label %bb.n

lean_obj_tag.exit.thread:                         ; preds = %bb.a
  %i.e = and i64 %i.a, 8589934590
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 4 uses
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !14 ; 3 uses
  %i.i = icmp sgt i32 %.val.i.i, 0
  br i1 %i.i, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i32 %.val.i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !14
  br label %lean_inc_ref.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.c, %bb.d, %bb.e
  %.val.i12 = load i32, ptr %0, align 8, !tbaa !14 ; 4 uses
  %i.l = icmp eq i32 %.val.i12, 1
  br i1 %i.l, label %.preheader.i.preheader, label %bb.j

.preheader.i.preheader:                           ; preds = %lean_inc_ref.exit
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !10   ; 4 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 1
  %.not.i.i13 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i13, label %bb.f, label %lean_dec.exit.i

bb.f:                                             ; preds = %.preheader.i.preheader
  %i.p = load i32, ptr %i.m, align 4, !tbaa !14   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.m, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.h:                                             ; preds = %bb.f
  %.not.i7.i = icmp eq i32 %i.p, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #7
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.i, %bb.h, %bb.g, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %0) #7
  br label %lean_dec_ref_known.exit

bb.j:                                             ; preds = %lean_inc_ref.exit
  %i.s = icmp sgt i32 %.val.i12, 1
  br i1 %i.s, label %bb.k, label %bb.l, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %.val.i12, -1
  store i32 %i.t, ptr %0, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.l:                                             ; preds = %bb.j
  %.not.i8.i = icmp eq i32 %.val.i12, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.k, %bb.l, %bb.m
  %i.u = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef nonnull %i.h) #7
  br label %lean_dec.exit

bb.n:                                             ; preds = %lean_obj_tag.exit
  %i.v = load i32, ptr %0, align 4, !tbaa !14     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.o, label %bb.p, !prof !12

bb.o:                                             ; preds = %bb.n
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit

bb.p:                                             ; preds = %bb.n
  %.not.i10 = icmp eq i32 %i.v, 0
  br i1 %.not.i10, label %lean_dec.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_obj_tag.exit.thread, %bb.o, %bb.p, %bb.q, %lean_dec_ref_known.exit
  %.0 = phi ptr [ %i.u, %lean_dec_ref_known.exit ], [ %1, %bb.q ], [ %1, %bb.p ], [ %1, %bb.o ], [ %1, %lean_obj_tag.exit.thread ]
  ret ptr %.0
}

declare ptr @lean_apply_1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i7 = icmp eq i32 %i.d, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_false_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_false_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_exact_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_exact_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_prefix_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_prefix_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_StartsWithResult_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
end_hunk_0
begin_hunk_1_@l_Lean_Grind_AC_Seq_subseq:bb.a

lean_alloc_ctor.exit:                             ; preds = %bb.ao
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i32 1, ptr %i.bi, align 4, !tbaa !14
  store i32 65552, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.x, ptr %i.bl, align 8, !tbaa !10
  %i.bm = tail call ptr @l___private_Lean_Meta_Tactic_Grind_AC_Seq_0__Lean_Grind_AC_Seq_subseq_go(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.bi)
  br label %lean_dec_ref.exit62

bb.aq:                                            ; preds = %lean_obj_tag.exit92
  %i.bn = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.ar, label %bb.as, !prof !12

bb.ar:                                            ; preds = %bb.aq
  %i.bp = add nsw i32 %i.bn, -1
  store i32 %i.bp, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit64

bb.as:                                            ; preds = %bb.aq
  %.not.i63 = icmp eq i32 %i.bn, 0
  br i1 %.not.i63, label %lean_dec_ref.exit64, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #7
  br label %lean_dec_ref.exit64

lean_dec_ref.exit64:                              ; preds = %bb.ar, %bb.as, %bb.at
  br i1 %.not.i68, label %bb.au, label %lean_dec.exit51

bb.au:                                            ; preds = %lean_dec_ref.exit64
  %i.bq = load i32, ptr %i.x, align 4, !tbaa !14  ; 3 uses
  %i.br = icmp sgt i32 %i.bq, 1
  br i1 %i.br, label %bb.av, label %bb.aw, !prof !12

bb.av:                                            ; preds = %bb.au
  %i.bs = add nsw i32 %i.bq, -1
  store i32 %i.bs, ptr %i.x, align 4, !tbaa !14
  br label %lean_dec.exit51

bb.aw:                                            ; preds = %bb.au
  %.not.i52 = icmp eq i32 %i.bq, 0
  br i1 %.not.i52, label %lean_dec.exit51, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #7
  br label %lean_dec.exit51

lean_dec.exit51:                                  ; preds = %bb.ax, %bb.aw, %bb.av, %lean_dec_ref.exit64
  %i.bt = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.ay, label %bb.az, !prof !12

bb.ay:                                            ; preds = %lean_dec.exit51
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit62

bb.az:                                            ; preds = %lean_dec.exit51
  %.not.i61 = icmp eq i32 %i.bt, 0
  br i1 %.not.i61, label %lean_dec_ref.exit62, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit62

bb.bb:                                            ; preds = %lean_obj_tag.exit92
  %i.bw = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, 1
  br i1 %i.bx, label %bb.bc, label %bb.bd, !prof !12

bb.bc:                                            ; preds = %bb.bb
  %i.by = add nsw i32 %i.bw, -1
  store i32 %i.by, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit60

bb.bd:                                            ; preds = %bb.bb
  %.not.i59 = icmp eq i32 %i.bw, 0
  br i1 %.not.i59, label %lean_dec_ref.exit60, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #7
  br label %lean_dec_ref.exit60

lean_dec_ref.exit60:                              ; preds = %bb.bc, %bb.bd, %bb.be
  br i1 %.not.i68, label %bb.bf, label %lean_dec.exit49

bb.bf:                                            ; preds = %lean_dec_ref.exit60
  %i.bz = load i32, ptr %i.x, align 4, !tbaa !14  ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.bg, label %bb.bh, !prof !12

bb.bg:                                            ; preds = %bb.bf
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %i.x, align 4, !tbaa !14
  br label %lean_dec.exit49

bb.bh:                                            ; preds = %bb.bf
  %.not.i53 = icmp eq i32 %i.bz, 0
  br i1 %.not.i53, label %lean_dec.exit49, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #7
  br label %lean_dec.exit49

lean_dec.exit49:                                  ; preds = %bb.bi, %bb.bh, %bb.bg, %lean_dec_ref.exit60
  %i.cc = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %bb.bj, label %bb.bk, !prof !12

bb.bj:                                            ; preds = %lean_dec.exit49
  %i.ce = add nsw i32 %i.cc, -1
  store i32 %i.ce, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit58

bb.bk:                                            ; preds = %lean_dec.exit49
  %.not.i57 = icmp eq i32 %i.cc, 0
  br i1 %.not.i57, label %lean_dec_ref.exit58, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit58

lean_dec_ref.exit58:                              ; preds = %bb.bj, %bb.bk, %bb.bl
  %i.cf = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !10 ; 5 uses
  %.val = load i32, ptr %i.al, align 8, !tbaa !14
  %i.ch = icmp eq i32 %.val, 1
  br i1 %i.ch, label %lean_dec_ref.exit62, label %bb.bm

bb.bm:                                            ; preds = %lean_dec_ref.exit58
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = and i64 %i.ci, 1
  %.not.i67 = icmp eq i64 %i.cj, 0
  br i1 %.not.i67, label %bb.bn, label %lean_inc.exit

bb.bn:                                            ; preds = %bb.bm
  %.val.i.i93 = load i32, ptr %i.cg, align 4, !tbaa !14 ; 3 uses
  %i.ck = icmp sgt i32 %.val.i.i93, 0
  br i1 %i.ck, label %bb.bo, label %bb.bp, !prof !12

bb.bo:                                            ; preds = %bb.bn
  %i.cl = add nuw i32 %.val.i.i93, 1
  store i32 %i.cl, ptr %i.cg, align 4, !tbaa !14
  br label %lean_inc.exit

bb.bp:                                            ; preds = %bb.bn
  %.not.i.i94 = icmp eq i32 %.val.i.i93, 0
  br i1 %.not.i.i94, label %lean_inc.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.cm = atomicrmw sub ptr %i.cg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bm
  br i1 %.not.i89, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %lean_inc.exit
  %i.cn = load i32, ptr %i.al, align 8, !tbaa !14 ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 1
  br i1 %i.co, label %bb.bs, label %bb.bt, !prof !12

bb.bs:                                            ; preds = %bb.br
  %i.cp = add nsw i32 %i.cn, -1
  store i32 %i.cp, ptr %i.al, align 8, !tbaa !14
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %.not.i55 = icmp eq i32 %i.cn, 0
  br i1 %.not.i55, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.al) #7
  br label %bb.bv

bb.bv:                                            ; preds = %lean_inc.exit, %bb.bs, %bb.bt, %bb.bu
  tail call void @lean_inc_heartbeat() #7
  %i.cq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.bw, label %lean_alloc_ctor.exit96

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit96:                           ; preds = %bb.bv
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 1, ptr %i.cq, align 4, !tbaa !14
  store i32 33619984, ptr %i.cs, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cg, ptr %i.ct, align 8, !tbaa !10
  br label %lean_dec_ref.exit62

lean_dec_ref.exit62:                              ; preds = %lean_dec_ref.exit66, %lean_dec_ref.exit58, %bb.ba, %bb.az, %bb.ay, %lean_alloc_ctor.exit, %lean_alloc_ctor.exit96
  %.3 = phi ptr [ %i.al, %lean_dec_ref.exit58 ], [ inttoptr (i64 3 to ptr), %bb.ba ], [ %spec.select, %lean_dec_ref.exit66 ], [ %i.bm, %lean_alloc_ctor.exit ], [ %i.cq, %lean_alloc_ctor.exit96 ], [ inttoptr (i64 3 to ptr), %bb.ay ], [ inttoptr (i64 3 to ptr), %bb.az ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @l_Lean_Grind_AC_SubsetResult_ctorIdx(ptr noundef %0) local_unnamed_addr #1 {
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
define noundef nonnull ptr @l_Lean_Grind_AC_SubsetResult_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
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
    i32 0, label %l_Lean_Grind_AC_SubsetResult_ctorIdx.exit
    i32 1, label %1
  ]

1:                                                ; preds = %lean_obj_tag.exit.i
  br label %l_Lean_Grind_AC_SubsetResult_ctorIdx.exit

2:                                                ; preds = %lean_obj_tag.exit.i
  br label %l_Lean_Grind_AC_SubsetResult_ctorIdx.exit

l_Lean_Grind_AC_SubsetResult_ctorIdx.exit:        ; preds = %lean_obj_tag.exit.i, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.i ]
  br i1 %.not.i.i, label %3, label %lean_dec.exit

3:                                                ; preds = %l_Lean_Grind_AC_SubsetResult_ctorIdx.exit
  %4 = load i32, ptr %0, align 4, !tbaa !14       ; 3 uses
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %3
  %i.g = add nsw i32 %4, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit

bb.e:                                             ; preds = %3
  %.not.i3 = icmp eq i32 %4, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %l_Lean_Grind_AC_SubsetResult_ctorIdx.exit
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_AC_SubsetResult_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i11 = icmp eq i64 %i.b, 0
  br i1 %.not.i11, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %.mask = and i32 %.val.i, -16777216
  %i.d = icmp eq i32 %.mask, 33554432
  br i1 %i.d, label %bb.b, label %bb.n

lean_obj_tag.exit.thread:                         ; preds = %bb.a
  %i.e = and i64 %i.a, 8589934590
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 4 uses
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !14 ; 3 uses
  %i.i = icmp sgt i32 %.val.i.i, 0
  br i1 %i.i, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i32 %.val.i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !14
  br label %lean_inc_ref.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.c, %bb.d, %bb.e
  %.val.i12 = load i32, ptr %0, align 8, !tbaa !14 ; 4 uses
  %i.l = icmp eq i32 %.val.i12, 1
  br i1 %i.l, label %.preheader.i.preheader, label %bb.j

.preheader.i.preheader:                           ; preds = %lean_inc_ref.exit
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !10   ; 4 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 1
  %.not.i.i13 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i13, label %bb.f, label %lean_dec.exit.i

bb.f:                                             ; preds = %.preheader.i.preheader
  %i.p = load i32, ptr %i.m, align 4, !tbaa !14   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.m, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.h:                                             ; preds = %bb.f
  %.not.i7.i = icmp eq i32 %i.p, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #7
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.i, %bb.h, %bb.g, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %0) #7
  br label %lean_dec_ref_known.exit

bb.j:                                             ; preds = %lean_inc_ref.exit
  %i.s = icmp sgt i32 %.val.i12, 1
  br i1 %i.s, label %bb.k, label %bb.l, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %.val.i12, -1
  store i32 %i.t, ptr %0, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.l:                                             ; preds = %bb.j
  %.not.i8.i = icmp eq i32 %.val.i12, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.k, %bb.l, %bb.m
  %i.u = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef nonnull %i.h) #7
  br label %lean_dec.exit

bb.n:                                             ; preds = %lean_obj_tag.exit
  %i.v = load i32, ptr %0, align 4, !tbaa !14     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.o, label %bb.p, !prof !12

bb.o:                                             ; preds = %bb.n
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit

bb.p:                                             ; preds = %bb.n
  %.not.i10 = icmp eq i32 %i.v, 0
  br i1 %.not.i10, label %lean_dec.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_obj_tag.exit.thread, %bb.o, %bb.p, %bb.q, %lean_dec_ref_known.exit
  %.0 = phi ptr [ %i.u, %lean_dec_ref_known.exit ], [ %1, %bb.q ], [ %1, %bb.p ], [ %1, %bb.o ], [ %1, %lean_obj_tag.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_AC_SubsetResult_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Grind_AC_SubsetResult_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_AC_SubsetResult_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Grind_AC_SubsetResult_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i7 = icmp eq i32 %i.d, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_AC_SubsetResult_false_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Grind_AC_SubsetResult_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_AC_SubsetResult_false_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Grind_AC_SubsetResult_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_AC_SubsetResult_exact_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Grind_AC_SubsetResult_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_AC_SubsetResult_exact_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Grind_AC_SubsetResult_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_AC_SubsetResult_strict_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Grind_AC_SubsetResult_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Grind_AC_SubsetResult_strict_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Grind_AC_SubsetResult_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

end_hunk_1
