inline.NumInlined: 97
inline.NumDeleted: 75
begin_hunk_0_@_ZN6apache6thrift9transport12base64EncodeB5cxx11EPhi:_ZNSt10unique_ptrI6bio_stSt8functionIFvPS0_EEEC2IS4_vEES2_NSt9enable_ifIXntsr19is_lvalue_referenceIT_EE5valueEOS8_E4typeE.exit
bb.o:                                             ; preds = %bb.m
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !7
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNKSt8functionIFvP6bio_stEEclES1_.exit.i unwind label %bb.s

_ZNKSt8functionIFvP6bio_stEEclES1_.exit.i:        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@_ZNSt10unique_ptrI6bio_stSt8functionIFvPS0_EEED2Ev:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNKSt8functionIFvP6bio_stEEclES1_.exit unwind label %bb.h

_ZNKSt8functionIFvP6bio_stEEclES1_.exit:          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFvP6bio_stEZN6apache6thrift9transport12base64EncodeB5cxx11EPhiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation":bb.a

"_ZNSt14_Function_base13_Base_managerIZN6apache6thrift9transport12base64EncodeB5cxx11EPhiE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN6apache6thrift9transport12base64EncodeB5cxx11EPhiE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !26
  br label %"_ZNSt14_Function_base13_Base_managerIZN6apache6thrift9transport12base64EncodeB5cxx11EPhiE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6apache6thrift9transport12base64EncodeB5cxx11EPhiE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN6apache6thrift9transport12base64EncodeB5cxx11EPhiE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split", %bb.a
end_hunk_2
begin_hunk_3_@_ZSt25__throw_bad_function_callv
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !21, i64 8, !5, i64 16}
!24 = !{!5, !5, i64 0}
!25 = !{!23, !21, i64 8}
!26 = !{!10, !10, i64 0}
end_hunk_3
