inline.NumInlined: 7
inline.NumDeleted: 3
begin_hunk_0_@uv_wtf8_to_utf16:bb.a
bb.b:                                             ; preds = %bb.o, %bb.a
  %.015 = phi ptr [ %0, %bb.a ], [ %i.aq, %bb.o ] ; 5 uses
  %.011 = phi i64 [ %2, %bb.a ], [ %i.ap, %bb.o ]
  %.0 = phi ptr [ %1, %bb.a ], [ %.1, %bb.o ]     ; 5 uses
  %i.a = load i8, ptr %.015, align 1              ; 6 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = icmp sgt i8 %i.a, -1
end_hunk_0
begin_hunk_1_@uv_wtf8_to_utf16:bb.a
  %i.al = trunc i32 %i.ad to i16
  %i.am = and i16 %i.al, 1023
  %i.an = or disjoint i16 %i.am, -9216
  %3 = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i16 %i.an, ptr %i.ak, align 2
  br label %bb.o

end_hunk_1
begin_hunk_2_@uv_wtf8_to_utf16:bb.a
  %.0.i25 = phi i32 [ %i.ad, %uv__wtf8_decode1.exit ], [ %i.m, %bb.f ], [ %i.b, %bb.b ], [ %i.t, %bb.h ]
  %.11624 = phi ptr [ %i.v, %uv__wtf8_decode1.exit ], [ %i.e, %bb.f ], [ %.015, %bb.b ], [ %i.n, %bb.h ]
  %i.ao = trunc i32 %.0.i25 to i16
  %4 = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i16 %i.ao, ptr %.0, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %uv__wtf8_decode1.exit.thread20
  %.sink = phi i64 [ -2, %bb.n ], [ -1, %uv__wtf8_decode1.exit.thread20 ]
  %.11623 = phi ptr [ %i.v, %bb.n ], [ %.11624, %uv__wtf8_decode1.exit.thread20 ] ; 2 uses
  %.1 = phi ptr [ %3, %bb.n ], [ %4, %uv__wtf8_decode1.exit.thread20 ]
  %i.ap = add i64 %.011, %.sink                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.11623, i64 1
  %i.ar = load i8, ptr %.11623, align 1
  %.not = icmp eq i8 %i.ar, 0
end_hunk_2
begin_hunk_3_@uv_utf16_to_wtf8:bb.a

.lr.ph:                                           ; preds = %bb.p, %bb.ac
  %.088165 = phi ptr [ %i.cr, %bb.ac ], [ %0, %bb.p ] ; 12 uses
  %.190164 = phi ptr [ %.2, %bb.ac ], [ %.089, %bb.p ] ; 15 uses
  %.192163 = phi i64 [ %i.cq, %bb.ac ], [ %.091144147, %bb.p ] ; 7 uses
  %.093162 = phi i64 [ %spec.select119, %bb.ac ], [ %1, %bb.p ] ; 13 uses
  %i.af = load i16, ptr %.088165, align 2         ; 11 uses
end_hunk_3
begin_hunk_4_@uv_utf16_to_wtf8:bb.a

bb.s:                                             ; preds = %bb.r
  %i.ap = trunc nuw nsw i16 %i.af to i8
  %4 = getelementptr inbounds nuw i8, ptr %.190164, i64 1
  store i8 %i.ap, ptr %.190164, align 1
  br label %bb.ac

end_hunk_4
begin_hunk_5_@uv_utf16_to_wtf8:bb.a
  %i.aw = trunc i16 %i.af to i8
  %i.ax = and i8 %i.aw, 63
  %i.ay = or disjoint i8 %i.ax, -128
  %5 = getelementptr inbounds nuw i8, ptr %.190164, i64 2
  store i8 %i.ay, ptr %i.au, align 1
  br label %bb.ac

end_hunk_5
begin_hunk_6_@uv_utf16_to_wtf8:bb.a
  %i.bt = trunc i16 %i.af to i8
  %i.bu = and i8 %i.bt, 63
  %i.bv = or disjoint i8 %i.bu, -128
  %6 = getelementptr inbounds nuw i8, ptr %.190164, i64 3
  store i8 %i.bv, ptr %i.br, align 1
  br label %bb.ac

end_hunk_6
begin_hunk_7_@uv_utf16_to_wtf8:bb.a
  %i.ci = trunc i16 %i.ak to i8
  %i.cj = and i8 %i.ci, 63
  %i.ck = or disjoint i8 %i.cj, -128
  %7 = getelementptr inbounds nuw i8, ptr %.190164, i64 4
  store i8 %i.ck, ptr %i.cg, align 1
  %i.cl = icmp sgt i64 %.093162, 0
  %i.cm = sext i1 %i.cl to i64
end_hunk_7
begin_hunk_8_@uv_utf16_to_wtf8:bb.a

bb.ac:                                            ; preds = %bb.ab, %bb.v, %bb.y, %bb.s
  %.194 = phi i64 [ %.093162, %bb.s ], [ %.093162, %bb.v ], [ %.093162, %bb.y ], [ %spec.select, %bb.ab ] ; 2 uses
  %.2 = phi ptr [ %4, %bb.s ], [ %5, %bb.v ], [ %6, %bb.y ], [ %7, %bb.ab ] ; 4 uses
  %.1 = phi ptr [ %.088165, %bb.s ], [ %.088165, %bb.v ], [ %.088165, %bb.y ], [ %i.aj, %bb.ab ]
  %i.cn = load ptr, ptr %2, align 8
  %i.co = ptrtoint ptr %.2 to i64
  %i.cp = ptrtoint ptr %i.cn to i64
end_hunk_8
