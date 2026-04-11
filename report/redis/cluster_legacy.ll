inline.NumInlined: 443
inline.NumDeleted: 38
begin_hunk_0_@clusterSetGossipEntry:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(46) %i.q, ptr noundef nonnull align 8 dereferenceable(46) %i.r, i64 46, i1 false)
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8488), align 8, !tbaa !13
  %.not = icmp eq i32 %i.s, 0                     ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 2328
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 2332
  %.sink29.in = select i1 %.not, ptr %3, ptr %4
  %.sink = select i1 %.not, i64 2332, i64 2328
  %.sink29 = load i32, ptr %.sink29.in, align 4, !tbaa !9
  %i.t = trunc i32 %.sink29 to i16
  %rev.i23 = tail call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %.sink
  %.sink27 = load i32, ptr %i.u, align 4, !tbaa !9
  %i.v = trunc i32 %.sink27 to i16
  %rev.i24 = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
end_hunk_0
