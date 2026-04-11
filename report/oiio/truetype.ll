inline.NumInlined: 294
inline.NumDeleted: 158
begin_hunk_0_@compute_glyph_metrics:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.bn = load i16, ptr %i.bm, align 8, !tbaa !267
  %.not82 = icmp eq i16 %i.bn, -1                 ; 2 uses
  %. = select i1 %.not82, i64 408, i64 706
  %.117 = select i1 %.not82, i64 410, i64 708
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.117
  %.sink112.in = load i16, ptr %i.bo, align 2, !tbaa !135
  %.sink112 = sext i16 %.sink112.in to i64
  %.sink114 = load i16, ptr %4, align 2, !tbaa !135
  %i.bp = sext i16 %.sink114 to i64
  %i.bq = sub nsw i64 %.sink112, %i.bp            ; 2 uses
  %i.br = sub nsw i64 %i.bq, %i.bl
end_hunk_0
begin_hunk_1_@TT_Load_Composite_Glyph:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.x, %bb.a
  %.0118 = phi ptr [ %i.b, %bb.a ], [ %.2, %bb.x ] ; 17 uses
  %.0113 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.x ]  ; 2 uses
  %i.k = add i32 %.0113, 1                        ; 3 uses
  %i.l = tail call i32 @FT_GlyphLoader_CheckSubGlyphs(ptr noundef %i.f, i32 noundef %i.k) #23 ; 2 uses
end_hunk_1
begin_hunk_2_@TT_Load_Composite_Glyph:bb.a
  %i.bd = or disjoint i16 %i.az, %i.bc
  %i.be = sext i16 %i.bd to i32
  store i32 %i.be, ptr %i.s, align 8, !tbaa !787
  %1 = getelementptr inbounds nuw i8, ptr %.0118, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.0118, i64 6
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !224
  %i.bh = zext i8 %i.bg to i16
end_hunk_2
begin_hunk_3_@TT_Load_Composite_Glyph:bb.a
  %i.bp = load i8, ptr %i.m, align 1, !tbaa !224
  %i.bq = sext i8 %i.bp to i32
  store i32 %i.bq, ptr %i.s, align 8, !tbaa !787
  %2 = getelementptr inbounds nuw i8, ptr %.0118, i64 6
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !224
  %i.bs = sext i8 %i.br to i32
  br label %bb.r
end_hunk_3
begin_hunk_4_@TT_Load_Composite_Glyph:bb.a
  %i.by = zext i8 %i.bx to i32
  %i.bz = or disjoint i32 %i.bv, %i.by
  store i32 %i.bz, ptr %i.s, align 8, !tbaa !787
  %3 = getelementptr inbounds nuw i8, ptr %.0118, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.0118, i64 6
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !224
  %i.cc = zext i8 %i.cb to i32
end_hunk_4
begin_hunk_5_@TT_Load_Composite_Glyph:bb.a
  %i.cj = load i8, ptr %i.m, align 1, !tbaa !224
  %i.ck = zext i8 %i.cj to i32
  store i32 %i.ck, ptr %i.s, align 8, !tbaa !787
  %4 = getelementptr inbounds nuw i8, ptr %.0118, i64 6
  %i.cl = load i8, ptr %i.ci, align 1, !tbaa !224
  %i.cm = zext i8 %i.cl to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.m, %bb.n
  %.sink = phi i32 [ %i.ch, %bb.p ], [ %i.cm, %bb.q ], [ %i.bn, %bb.m ], [ %i.bs, %bb.n ]
  %.1119 = phi ptr [ %3, %bb.p ], [ %4, %bb.q ], [ %1, %bb.m ], [ %2, %bb.n ] ; 18 uses
  store i32 %.sink, ptr %i.r, align 4, !tbaa !789
  br i1 %.not123, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
end_hunk_5
