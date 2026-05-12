inline.NumInlined: 1666
inline.NumDeleted: 907
begin_hunk_0
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"class.std::function.540" = type { %"class.std::_Function_base", ptr }
%"struct.heap::base::Stack::Segment" = type { ptr, ptr }
%"class.v8::Global" = type { %"class.v8::PersistentBase" }
%"class.v8::PersistentBase" = type { %"class.v8::api_internal::IndirectHandleBase" }
%"class.v8::api_internal::IndirectHandleBase" = type { ptr }
end_hunk_0
begin_hunk_1_@_ZN4heap4base5Stack24TrampolineCallbackHelperEPvPFvPS1_S2_PKvE
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_6detail19SyncWaiterQueueNode7WaitForERKNS3_4base9TimeDeltaEEUlvE_EEvT_EUlvE_EEvPS1_PvPKv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.heap::base::Stack::Segment", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  tail call void @_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_6detail19SyncWaiterQueueNode7WaitForERKNS_4base9TimeDeltaEEUlvE_EEvT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

end_hunk_1
begin_hunk_2_@_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_6detail19SyncWaiterQueueNode4WaitEvEUlvE_EEvT_EUlvE_EEvPS1_PvPKv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.heap::base::Stack::Segment", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8                ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN4heap4base5Stack24SetMarkerAndCallbackImplIZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS4_6detail19SyncWaiterQueueNode4WaitEvEUlvE_EEvT_EUlvE_EEvPS1_PvPKv:bb.a
  br label %_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_6detail19SyncWaiterQueueNode4WaitEvEUlvE_EEvT_ENKUlvE_clEv.exit

_ZZN2v88internal9LocalHeap18ExecuteWhileParkedIZNS0_6detail19SyncWaiterQueueNode4WaitEvEUlvE_EEvT_ENKUlvE_clEv.exit: ; preds = %_ZZN2v88internal6detail19SyncWaiterQueueNode4WaitEvENKUlvE_clEv.exit.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

end_hunk_3
