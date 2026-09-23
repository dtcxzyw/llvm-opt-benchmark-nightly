Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Quotation?download=true
inline.NumInlined: 6800
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumUnrolled: 39
begin_hunk_0_@l_Lean_Elab_Term_Quotation_HeadCheck_ctorElim___redArg:bb.a
bb.m:                                             ; preds = %lean_inc.exit23
  %i.u = icmp sgt i32 %.val.i25, 1
  br i1 %i.u, label %bb.n, label %bb.o, !prof !16

bb.n:                                             ; preds = %bb.m
  %i.v = add nsw i32 %.val.i25, -1
  store i32 %i.v, ptr %0, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.o:                                             ; preds = %bb.m
  %.not.i8.i = icmp eq i32 %.val.i25, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.n, %bb.o, %bb.p
  %i.w = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef %i.h) #8
  br label %bb.ad

bb.q:                                             ; preds = %lean_obj_tag.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15   ; 5 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, 1
  %.not.i20 = icmp eq i64 %i.aa, 0
  br i1 %.not.i20, label %bb.r, label %lean_inc.exit21

bb.r:                                             ; preds = %bb.q
  %.val.i.i27 = load i32, ptr %i.y, align 4, !tbaa !11 ; 3 uses
  %i.ab = icmp sgt i32 %.val.i.i27, 0
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !16

bb.s:                                             ; preds = %bb.r
  %i.ac = add nuw i32 %.val.i.i27, 1
  store i32 %i.ac, ptr %i.y, align 4, !tbaa !11
  br label %lean_inc.exit21

bb.t:                                             ; preds = %bb.r
  %.not.i.i28 = icmp eq i32 %.val.i.i27, 0
  br i1 %.not.i.i28, label %lean_inc.exit21, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ad = atomicrmw sub ptr %i.y, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit21

lean_inc.exit21:                                  ; preds = %bb.u, %bb.t, %bb.s, %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15 ; 5 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = and i64 %i.ag, 1
  %.not.i19 = icmp eq i64 %i.ah, 0
  br i1 %.not.i19, label %bb.v, label %lean_inc.exit

bb.v:                                             ; preds = %lean_inc.exit21
  %.val.i.i30 = load i32, ptr %i.af, align 4, !tbaa !11 ; 3 uses
  %i.ai = icmp sgt i32 %.val.i.i30, 0
  br i1 %i.ai, label %bb.w, label %bb.x, !prof !16

bb.w:                                             ; preds = %bb.v
  %i.aj = add nuw i32 %.val.i.i30, 1
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !11
  br label %lean_inc.exit

bb.x:                                             ; preds = %bb.v
  %.not.i.i31 = icmp eq i32 %.val.i.i30, 0
  br i1 %.not.i.i31, label %lean_inc.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ak = atomicrmw sub ptr %i.af, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.y, %bb.x, %bb.w, %lean_inc.exit21
  br i1 %.not.i24, label %bb.z, label %lean_dec.exit

bb.z:                                             ; preds = %lean_inc.exit
  %i.al = load i32, ptr %0, align 8, !tbaa !11    ; 3 uses
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %bb.aa, label %bb.ab, !prof !16

bb.aa:                                            ; preds = %bb.z
  %i.an = add nsw i32 %i.al, -1
  store i32 %i.an, ptr %0, align 8, !tbaa !11
  br label %lean_dec.exit

bb.ab:                                            ; preds = %bb.z
  %.not.i18 = icmp eq i32 %i.al, 0
  br i1 %.not.i18, label %lean_dec.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ac, %bb.ab, %bb.aa, %lean_inc.exit
  %i.ao = tail call ptr @lean_apply_2(ptr noundef %1, ptr noundef %i.y, ptr noundef %i.af) #8
  br label %bb.ad

bb.ad:                                            ; preds = %lean_obj_tag.exit, %lean_dec.exit, %lean_dec_ref_known.exit
  %.0 = phi ptr [ %i.ao, %lean_dec.exit ], [ %i.w, %lean_dec_ref_known.exit ], [ %1, %lean_obj_tag.exit ]
  ret ptr %.0
}

declare ptr @lean_apply_2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_HeadCheck_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_Quotation_HeadCheck_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_HeadCheck_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_Quotation_HeadCheck_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i7 = icmp eq i32 %i.d, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_HeadCheck_unconditional_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_Quotation_HeadCheck_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_HeadCheck_unconditional_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_Quotation_HeadCheck_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_HeadCheck_shape_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_Quotation_HeadCheck_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_HeadCheck_shape_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_Quotation_HeadCheck_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_HeadCheck_slice_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_Quotation_HeadCheck_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_HeadCheck_slice_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_Quotation_HeadCheck_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_HeadCheck_other_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_Quotation_HeadCheck_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_HeadCheck_other_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_Quotation_HeadCheck_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @l_Lean_Elab_Term_Quotation_MatchResult_ctorIdx(ptr noundef %0) local_unnamed_addr #3 {
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
define nonnull ptr @l_Lean_Elab_Term_Quotation_MatchResult_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #1 {
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
  %1 = load i32, ptr %0, align 4, !tbaa !11       ; 3 uses
  %2 = icmp sgt i32 %1, 1
  br i1 %2, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %1, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit

bb.e:                                             ; preds = %bb.c
  %.not.i3 = icmp eq i32 %1, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
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
define ptr @l_Lean_Elab_Term_Quotation_MatchResult_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i13 = icmp eq i64 %i.b, 0
  br i1 %.not.i13, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %i.d = icmp ult i32 %.val.i, 16777216
  br i1 %i.d, label %bb.b, label %bb.n

lean_obj_tag.exit.thread:                         ; preds = %bb.a
  %i.e = and i64 %i.a, 8589934590
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15   ; 4 uses
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !11 ; 3 uses
  %i.i = icmp sgt i32 %.val.i.i, 0
  br i1 %i.i, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i32 %.val.i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !11
  br label %lean_inc_ref.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.c, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i8, ptr %i.l, align 8, !tbaa !21
  %.val.i14 = load i32, ptr %0, align 8, !tbaa !11 ; 4 uses
  %i.n = icmp eq i32 %.val.i14, 1
  br i1 %i.n, label %.preheader.i.preheader, label %bb.j

.preheader.i.preheader:                           ; preds = %lean_inc_ref.exit
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !15   ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 1
  %.not.i.i15 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i15, label %bb.f, label %lean_dec.exit.i

bb.f:                                             ; preds = %.preheader.i.preheader
  %i.r = load i32, ptr %i.o, align 4, !tbaa !11   ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %i.o, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.h:                                             ; preds = %bb.f
  %.not.i7.i = icmp eq i32 %i.r, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #8
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.i, %bb.h, %bb.g, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %0) #8
  br label %lean_dec_ref_known.exit

bb.j:                                             ; preds = %lean_inc_ref.exit
  %i.u = icmp sgt i32 %.val.i14, 1
  br i1 %i.u, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.v = add nsw i32 %.val.i14, -1
  store i32 %i.v, ptr %0, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.l:                                             ; preds = %bb.j
  %.not.i8.i = icmp eq i32 %.val.i14, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.k, %bb.l, %bb.m
  %i.w = zext i8 %i.m to i64
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = or disjoint i64 %i.x, 1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = tail call ptr @lean_apply_2(ptr noundef %1, ptr noundef nonnull %i.h, ptr noundef nonnull %i.z) #8
  br label %lean_dec.exit

bb.n:                                             ; preds = %lean_obj_tag.exit
  %i.ab = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.o, label %bb.p, !prof !16

bb.o:                                             ; preds = %bb.n
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit

bb.p:                                             ; preds = %bb.n
  %.not.i12 = icmp eq i32 %i.ab, 0
  br i1 %.not.i12, label %lean_dec.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_obj_tag.exit.thread, %bb.o, %bb.p, %bb.q, %lean_dec_ref_known.exit
  %.0 = phi ptr [ %i.aa, %lean_dec_ref_known.exit ], [ %1, %bb.q ], [ %1, %bb.p ], [ %1, %bb.o ], [ %1, %lean_obj_tag.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_MatchResult_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_Quotation_MatchResult_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_MatchResult_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_Quotation_MatchResult_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %1, align 4, !tbaa !11
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i7 = icmp eq i32 %i.d, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_MatchResult_covered_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_Quotation_MatchResult_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_MatchResult_covered_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_Quotation_MatchResult_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_MatchResult_uncovered_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_Quotation_MatchResult_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_MatchResult_uncovered_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_Quotation_MatchResult_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_MatchResult_undecided_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_Quotation_MatchResult_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Term_Quotation_MatchResult_undecided_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #1 {
end_hunk_0
