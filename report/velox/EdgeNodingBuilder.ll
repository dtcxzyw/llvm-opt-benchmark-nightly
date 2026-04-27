inline.NumInlined: 1216
inline.NumDeleted: 641
begin_hunk_0_@_ZN4geos9operation9overlayng17EdgeNodingBuilder4nodeEPSt6vectorIPNS_6noding13SegmentStringESaIS6_EE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !166
  store ptr %i.k, ptr %i.h, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !167 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre22 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !167 ; 2 uses
  %.not20 = icmp eq ptr %.pre, %.pre22
  br i1 %.not20, label %._crit_edge, label %.lr.ph

end_hunk_0
