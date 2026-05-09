inline.NumInlined: 152
inline.NumDeleted: 66
begin_hunk_0_@_ZN5folly13MemoryMapping4initEll:bb.a
bb.ao:                                            ; preds = %bb.am
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !47, !range !28, !noundef !29
  %i.cn = trunc nuw i8 %i.cm to i1                ; 2 uses
  %i.co = select i1 %i.cn, i32 1, i32 2
  %18 = select i1 %i.cn, i32 33, i32 34
  %spec.select = select i1 %.not141, i32 %18, i32 %i.co
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !48, !range !28, !noundef !29
end_hunk_0
