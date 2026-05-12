inline.NumInlined: 50
inline.NumDeleted: 27
begin_hunk_0_@_ZN5boost9container3pmr25monotonic_buffer_resource32increase_next_buffer_at_least_toEm:bb.a
  %i.e = icmp samesign ult i64 %i.d, 2
  %i.f = icmp slt i64 %1, 0
  %or.cond = or i1 %i.e, %i.f
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %i.h = sub nuw nsw i64 64, %i.g
  %i.i = shl nuw i64 1, %i.h
  %.sink = select i1 %or.cond, i64 %1, i64 %i.i
end_hunk_0
begin_hunk_1_@_ZN5boost9container3pmr25monotonic_buffer_resourceC2EmPNS1_15memory_resourceE:bb.a
  %i.j = icmp samesign ult i64 %i.i, 2
  %i.k = icmp slt i64 %1, 0
  %or.cond.i = or i1 %i.k, %i.j
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l
  %i.n = shl nuw i64 1, %i.m
  %.sink.i = select i1 %or.cond.i, i64 %1, i64 %i.n
end_hunk_1
begin_hunk_2_@_ZN5boost9container3pmr25monotonic_buffer_resource11do_allocateEmm:bb.a
  %i.r = icmp samesign ult i64 %i.q, 2
  %i.s = icmp slt i64 %1, 0
  %or.cond.i = or i1 %i.s, %i.r
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %i.u = sub nuw nsw i64 64, %i.t
  %i.v = shl nuw i64 1, %i.u
  %.sink.i = select i1 %or.cond.i, i64 %1, i64 %i.v ; 2 uses
end_hunk_2
