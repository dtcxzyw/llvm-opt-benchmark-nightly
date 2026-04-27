inline.NumInlined: 14197
inline.NumDeleted: 4685
begin_hunk_0_@_ZN2v86Object17DefineOwnPropertyENS_5LocalINS_7ContextEEENS1_INS_4NameEEENS1_INS_5ValueEEENS_17PropertyAttributeE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = and i32 %4, 1
  %.not = icmp eq i32 %i.e, 0
  %8 = select i1 %.not, i8 48, i8 32
  %i.f = and i32 %4, 2
  %.not22 = icmp eq i32 %i.f, 0
  %i.g = zext i1 %.not22 to i8
  %i.h = and i32 %4, 4
  %.not23 = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not23, i8 12, i8 8
  %9 = or disjoint i8 %8, %i.g
  %i.j = or disjoint i8 %9, %i.i
  %i.k = or disjoint i8 %i.j, 2
  store i8 %i.k, ptr %5, align 8
  store ptr %3, ptr %i.c, align 8
  %i.l = load i64, ptr %0, align 8
end_hunk_0
