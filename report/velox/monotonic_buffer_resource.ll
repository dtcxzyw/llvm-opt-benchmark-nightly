inline.NumInlined: 50
inline.NumDeleted: 27
begin_hunk_0_@_ZN5boost9container3pmr25monotonic_buffer_resourceC2EPvmPNS1_15memory_resourceE:bb.a
  store i64 %2, ptr %i.f, align 8, !tbaa !22
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %2, i64 256)
  %i.g = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.speculated, i1 true) ; 2 uses
  %4 = lshr exact i64 -9223372036854775808, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %2, ptr %i.j, align 8, !tbaa !24
  %i.k = shl nuw i64 %4, 1
  %.inv.i.not = icmp eq i64 %i.g, 0
  %spec.select.i = select i1 %.inv.i.not, i64 -1, i64 %i.k
  store i64 %spec.select.i, ptr %i.h, align 8, !tbaa !7
end_hunk_0
