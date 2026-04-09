inline.NumInlined: 20
inline.NumDeleted: 2
begin_hunk_0_@pm_encoding_utf_8_char_width:bb.a
  %i.d = getelementptr i8, ptr @pm_utf_8_dfa, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !11
  %i.f = zext i8 %i.e to i64
  %2 = getelementptr i8, ptr @pm_utf_8_dfa, i64 %i.f
  %i.g = getelementptr i8, ptr %2, i64 256
  %i.h = load i8, ptr %i.g, align 1, !tbaa !11    ; 2 uses
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %.loopexit, label %bb.d
end_hunk_0
begin_hunk_1_@pm_encoding_utf_8_char_width:bb.a
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr i8, ptr @pm_utf_8_dfa, i64 %i.k
  %i.s = getelementptr i8, ptr %i.r, i64 %i.q
  %i.t = getelementptr i8, ptr %i.s, i64 256
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11    ; 2 uses
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %.loopexit, label %bb.e
end_hunk_1
begin_hunk_2_@pm_encoding_utf_8_char_width:bb.a
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr i8, ptr @pm_utf_8_dfa, i64 %i.x
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad
  %i.ag = getelementptr i8, ptr %i.af, i64 256
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11  ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %.loopexit, label %bb.f
end_hunk_2
begin_hunk_3_@pm_encoding_utf_8_char_width:bb.a
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr i8, ptr @pm_utf_8_dfa, i64 %i.ak
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.aq
  %i.at = getelementptr i8, ptr %i.as, i64 256
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %.loopexit, label %.loopexit.loopexit
end_hunk_3
begin_hunk_4_@pm_encoding_utf_8_alpha_char:bb.a
bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = phi i32 [ %i.t, %bb.h ], [ %i.v, %bb.i ] ; 5 uses
  %i.x = shl nuw nsw i32 %.02836.i, 4
  %i.y = add nuw nsw i32 %i.x, %i.q
  %2 = zext nneg i32 %i.y to i64
  %3 = getelementptr i8, ptr @pm_utf_8_dfa, i64 %2
  %i.z = getelementptr i8, ptr %3, i64 256
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11   ; 2 uses
  %.not30.i = icmp eq i8 %i.aa, 0
  br i1 %.not30.i, label %pm_utf_8_codepoint.exit, label %bb.k
end_hunk_4
begin_hunk_5_@pm_encoding_utf_8_alnum_char:bb.a
bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = phi i32 [ %i.t, %bb.h ], [ %i.v, %bb.i ] ; 5 uses
  %i.x = shl nuw nsw i32 %.02836.i, 4
  %i.y = add nuw nsw i32 %i.x, %i.q
  %2 = zext nneg i32 %i.y to i64
  %3 = getelementptr i8, ptr @pm_utf_8_dfa, i64 %2
  %i.z = getelementptr i8, ptr %3, i64 256
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11   ; 2 uses
  %.not30.i = icmp eq i8 %i.aa, 0
  br i1 %.not30.i, label %pm_utf_8_codepoint.exit, label %bb.k
end_hunk_5
begin_hunk_6_@pm_encoding_utf_8_isupper_char:bb.a
bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi i32 [ %i.p, %bb.h ], [ %i.r, %bb.i ] ; 5 uses
  %i.t = shl nuw nsw i32 %.02836.i, 4
  %i.u = add nuw nsw i32 %i.t, %i.m
  %2 = zext nneg i32 %i.u to i64
  %3 = getelementptr i8, ptr @pm_utf_8_dfa, i64 %2
  %i.v = getelementptr i8, ptr %3, i64 256
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11    ; 2 uses
  %.not30.i = icmp eq i8 %i.w, 0
  br i1 %.not30.i, label %pm_utf_8_codepoint.exit, label %bb.k
end_hunk_6
