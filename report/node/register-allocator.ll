inline.NumInlined: 5702
inline.NumDeleted: 2184
begin_hunk_0_@_ZN2v88internal8compiler13BundleBuilder12BuildBundlesEv:bb.a
  %.pre.i.i.i247 = load i64, ptr %i.av, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEE6insertEPKS4_mRS6_.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler17TopLevelLiveRangeEE6insertEPKS4_mRS6_.exit.i: ; preds = %bb.e, %bb.f
  %i.bq = phi i64 [ %.pre.i.i.i247, %bb.f ], [ %i.bn, %bb.e ] ; 2 uses
  %i.br = inttoptr i64 %i.bq to ptr               ; 4 uses
  %i.bs = add i64 %i.bq, 16
end_hunk_0
