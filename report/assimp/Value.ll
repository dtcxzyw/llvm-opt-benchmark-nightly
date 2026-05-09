inline.NumInlined: 191
inline.NumDeleted: 52
begin_hunk_0_@_ZN10ODDLParser5Value4dumpERNS_12IOStreamBaseE:bb.a
  %i.by = icmp samesign ult i32 %i.bx, 10
  %i.bz = icmp samesign ult i32 %i.bx, 100
  %spec.select = select i1 %i.bz, i32 2, i32 3
  %.0.i.i88 = select i1 %i.by, i32 1, i32 %spec.select ; 3 uses
  %.lobit.i89 = lshr i32 %i.bw, 31                ; 2 uses
  %i.ca = add nuw nsw i32 %.0.i.i88, %.lobit.i89
  %i.cb = zext nneg i32 %i.ca to i64
end_hunk_0
begin_hunk_1_@_ZN10ODDLParser5Value4dumpERNS_12IOStreamBaseE:bb.a
  %i.ck = getelementptr i8, ptr %i.cj, i64 -200
  %i.cl = getelementptr i8, ptr %i.cj, i64 -199
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !9
  %25 = zext nneg i32 %.0.i.i88 to i64
  %26 = getelementptr i8, ptr %i.cf, i64 %25
  %i.cn = getelementptr i8, ptr %26, i64 -1
  store i8 %i.cm, ptr %i.cn, align 1
  %i.co = load i8, ptr %i.ck, align 2, !noalias !9
  %27 = add nsw i32 %.0.i.i88, -2
  %28 = zext i32 %27 to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 %28
  store i8 %i.co, ptr %i.cp, align 1
  br label %bb.m

end_hunk_1
