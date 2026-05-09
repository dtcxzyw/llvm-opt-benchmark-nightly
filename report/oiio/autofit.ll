inline.NumInlined: 115
inline.NumDeleted: 35
begin_hunk_0_@af_glyph_hints_align_strong_points:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !92   ; 10 uses
  %i.n = zext i32 %i.m to i64                     ; 4 uses
  %i.o = icmp eq i32 %1, 0                        ; 5 uses
  %.not119 = icmp ne i32 %i.m, 0
  %i.p = icmp sgt i32 %i.d, 0
  %or.cond130 = select i1 %.not119, i1 %i.p, i1 false
  br i1 %or.cond130, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.b
  %.idx = mul nuw nsw i64 %i.n, 88
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 3 uses
  %2 = select i1 %i.o, i32 20, i32 24
  %.0101.in.v = select i1 %i.o, i64 8, i64 16
  %.092.in.in.v = select i1 %i.o, i64 24, i64 26
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
end_hunk_0
begin_hunk_1_@af_glyph_hints_align_strong_points:bb.a
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 -72
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 -80
  %i.w = icmp ult i32 %i.m, 9
  %.phi.trans.insert = getelementptr inbounds nuw [88 x i8], ptr %i.k, i64 %i.n
  %exitcond.not = icmp eq i32 %i.m, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 88
end_hunk_1
begin_hunk_2_@af_glyph_hints_align_strong_points:bb.a
  %exitcond.not.6 = icmp eq i32 %i.m, 7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 616
  %.145.a = select i1 %i.o, i64 32, i64 40
  %.145 = select i1 %i.o, i16 4, i16 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.w
end_hunk_2
begin_hunk_3_@af_glyph_hints_align_strong_points:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %.090129, i64 %.145.a
  store i64 %.3, ptr %i.cp, align 8, !tbaa !68
  %i.cq = load i16, ptr %.090129, align 8, !tbaa !103
  %i.cr = or i16 %i.cq, %.145
  store i16 %i.cr, ptr %.090129, align 8, !tbaa !103
  br label %bb.w

end_hunk_3
