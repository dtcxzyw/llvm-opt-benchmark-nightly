inline.NumInlined: 415
inline.NumDeleted: 250
begin_hunk_0
%"struct.std::_Tuple_impl.591" = type { %"struct.std::_Head_base.594" }
%"struct.std::_Head_base.594" = type { ptr }
%"class.v8::base::TimeDelta" = type { i64 }
%"struct.heap::base::Stack::Segment" = type { ptr, ptr }

$_ZN2v88internal14CancelableTaskD2Ev = comdat any

end_hunk_0
begin_hunk_1_@_ZN4heap4base5Stack24TrampolineCallbackHelperEPvPFvPS1_S2_PKvE
; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_17CollectionBarrier25AwaitCollectionBackgroundEPS5_E3$_0EEvT_EUlvE_EEvPS1_PvPKv"(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %3 = alloca %"struct.heap::base::Stack::Segment", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8                ; 4 uses
end_hunk_1
begin_hunk_2_@"_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_17CollectionBarrier25AwaitCollectionBackgroundEPS5_E3$_0EEvT_EUlvE_EEvPS1_PvPKv":bb.a
  br label %"_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_17CollectionBarrier25AwaitCollectionBackgroundEPS1_E3$_0EEvT_ENKUlvE_clEv.exit"

"_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_17CollectionBarrier25AwaitCollectionBackgroundEPS1_E3$_0EEvT_ENKUlvE_clEv.exit": ; preds = %"_ZZN2v88internal17CollectionBarrier25AwaitCollectionBackgroundEPNS0_9LocalHeapEENK3$_0clEv.exit.i", %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

end_hunk_2
