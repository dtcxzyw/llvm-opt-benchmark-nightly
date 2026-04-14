inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@unate_complement:bb.a
bb.w:                                             ; preds = %bb.v
  %i.jd = and i32 %i.jb, %i.ix
  store i32 %i.jd, ptr %i.ja, align 4, !tbaa !4
  %i.je = load i32, ptr %.3135, align 4, !tbaa !4 ; 2 uses
  %1 = and i32 %i.je, -65536
  %2 = and i32 %i.je, 65535
  %i.jf = add i32 %1, -65536
  %3 = or disjoint i32 %i.jf, %2
  store i32 %3, ptr %.3135, align 4, !tbaa !4
  %.pre140 = load i32, ptr %i.a, align 4, !tbaa !13
  br label %bb.x

end_hunk_0
