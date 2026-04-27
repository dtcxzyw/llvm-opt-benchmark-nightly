inline.NumInlined: 1234
inline.NumDeleted: 597
begin_hunk_0_@_ZN4geos9operation5valid23PolygonTopologyAnalyzerC2EPKNS_4geom8GeometryEb:bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.aa) #20
  br label %_ZNSt6vectorIPN4geos9operation5valid11PolygonRingESaIS4_EEaSEOS6_.exit

_ZNSt6vectorIPN4geos9operation5valid11PolygonRingESaIS4_EEaSEOS6_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_0
