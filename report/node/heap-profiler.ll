inline.NumInlined: 1357
inline.NumDeleted: 893
begin_hunk_0
%"class.__gnu_cxx::__normal_iterator.720" = type { ptr }
%"class.v8::internal::ReadOnlyPageObjectIterator" = type <{ ptr, i64, i32, [4 x i8] }>
%class.anon.723 = type { ptr, ptr, ptr }
%"class.std::optional.766" = type { %"struct.std::_Optional_base.767" }
%"struct.std::_Optional_base.767" = type { %"struct.std::_Optional_payload.769" }
%"struct.std::_Optional_payload.769" = type { %"struct.std::_Optional_payload.base.781", [7 x i8] }
end_hunk_0
begin_hunk_1_@_ZN4heap4base5Stack24TrampolineCallbackHelperEPvPFvPS1_S2_PKvE
; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal12HeapProfiler12TakeSnapshotENS3_12HeapProfiler19HeapSnapshotOptionsEE3$_0EEvPS1_PvPKv"(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %.sroa.0.0.copyload = load <2 x ptr>, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  tail call fastcc void @"_ZZN2v88internal12HeapProfiler12TakeSnapshotENS_12HeapProfiler19HeapSnapshotOptionsEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %1)
  store <2 x ptr> %.sroa.0.0.copyload, ptr %0, align 8
  ret void
}

end_hunk_1
begin_hunk_2_@_ZN2v88internal14V8HeapExplorerD2Ev:bb.a
; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal12HeapProfiler26WriteSnapshotToDiskAfterGCENS3_12HeapProfiler16HeapSnapshotModeEE3$_0EEvPS1_PvPKv"(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %.sroa.0.0.copyload = load <2 x ptr>, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  tail call fastcc void @"_ZZN2v88internal12HeapProfiler26WriteSnapshotToDiskAfterGCENS_12HeapProfiler16HeapSnapshotModeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(12) %1)
  store <2 x ptr> %.sroa.0.0.copyload, ptr %0, align 8
  ret void
}

end_hunk_2
begin_hunk_3_@llvm.memmove.p0.p0.i64
; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal12HeapProfiler12QueryObjectsENS4_12DirectHandleINS4_7ContextEEEPNS3_20QueryObjectPredicateEPSt6vectorINS3_6GlobalINS3_6ObjectEEESaISE_EEE3$_0EEvPS1_PvPKv"(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %.sroa.0.0.copyload = load <2 x ptr>, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  tail call fastcc void @"_ZZN2v88internal12HeapProfiler12QueryObjectsENS0_12DirectHandleINS0_7ContextEEEPNS_20QueryObjectPredicateEPSt6vectorINS_6GlobalINS_6ObjectEEESaISA_EEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %1)
  store <2 x ptr> %.sroa.0.0.copyload, ptr %0, align 8
  ret void
}

end_hunk_3
