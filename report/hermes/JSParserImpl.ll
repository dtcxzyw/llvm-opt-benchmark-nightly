begin_hunk_0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.k, label %bb.e [
    i32 74, label %bb.g
    i32 41, label %bb.g
  ]

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.p = load i8, ptr %i.o, align 8, !tbaa !283, !range !81, !noundef !75
  %i.q = trunc nuw i8 %i.p to i1
end_hunk_0
begin_hunk_1
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.s = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parseBindingIdentifierENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0) ; 2 uses
  %i.t = extractvalue { i64, i8 } %i.s, 1
  %i.u = trunc nuw i8 %i.t to i1
end_hunk_1
