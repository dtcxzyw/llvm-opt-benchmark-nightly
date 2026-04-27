inline.NumInlined: 116
inline.NumDeleted: 72
begin_hunk_0_@_ZN4llvh9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleENS_8OptionalImEE:bb.a
  %.not36 = icmp eq i32 %i.j, 0
  %i.k = select i1 %i.i, i32 2, i32 0
  %i.l = trunc nuw nsw i64 %i.c to i32
  %5 = icmp ugt i64 %1, 15
  %6 = select i1 %5, i32 %i.g, i32 1
  %i.m = add nuw nsw i32 %6, %i.k                 ; 2 uses
  %i.n = tail call i32 @llvm.umax.i32(i32 %i.l, i32 %i.m)
  %.sroa.speculated23 = select i1 %i.b, i32 %i.n, i32 %i.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
end_hunk_0
