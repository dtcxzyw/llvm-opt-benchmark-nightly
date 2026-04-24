inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@utf8_appendCharSafeBody_78:bb.a

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink = phi i8 [ %i.bt, %bb.q ], [ %i.bw, %bb.r ]
  %.077 = phi i64 [ 1, %bb.q ], [ 2, %bb.r ]
  %.077.a = phi i32 [ 2, %bb.q ], [ 3, %bb.r ]
  store i8 %.sink, ptr %i.bf, align 1
  %i.cc = lshr i32 %i.bj, 6
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = and i8 %i.cd, 63
  %i.cf = or disjoint i8 %i.ce, -128
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.077
  store i8 %i.cf, ptr %i.cg, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %.1 = phi i32 [ 1, %bb.o ], [ %.077.a, %bb.s ]  ; 2 uses
  %i.ch = trunc i32 %i.bj to i8
  %i.ci = and i8 %i.ch, 63
  %i.cj = or disjoint i8 %i.ci, -128
end_hunk_0
