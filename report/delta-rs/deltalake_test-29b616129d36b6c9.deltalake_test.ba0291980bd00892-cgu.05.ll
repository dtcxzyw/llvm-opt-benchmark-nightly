inline.NumInlined: 294
inline.NumDeleted: 122
begin_hunk_0_@_RNvXsj_NtCs2pqxYH9ZEk8_3std2ioINtB5_5BytesNtNtB7_2fs4FileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:bb.a
  br i1 %i.e, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit10.i.i
  %i.f = phi ptr [ %i.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit10.i.i ], [ %i.d, %bb.a ] ; 9 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
end_hunk_0
begin_hunk_1_@_RNvXsj_NtCs2pqxYH9ZEk8_3std2ioINtB5_5BytesNtNtB7_2fs4FileENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:bb.a
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsfY7SmN0bPrO_14deltalake_test.exit10.i.i, label %bb.h

bb.f:                                             ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.o = getelementptr i8, ptr %i.f, i64 15
  %i.p = load i8, ptr %i.o, align 8, !range !490, !noalias !488, !noundef !3
  %i.q = icmp eq i8 %i.p, 35
end_hunk_1
