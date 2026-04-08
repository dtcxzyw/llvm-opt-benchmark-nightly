inline.NumInlined: 62
inline.NumDeleted: 46
begin_hunk_0_@_ZNSt17_Function_handlerIFvPKcEPS2_E9_M_invokeERKSt9_Any_dataOS1_:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = load ptr, ptr %1, align 8, !tbaa !23
  tail call void %i.a(ptr noundef %i.b), !inline_history !24
  ret void
}

end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvPKcEPS2_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation:bb.a
; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_logGuard.cpp() #11 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL8g_outputB5cxx11, i64 16), ptr @_ZL8g_outputB5cxx11, align 8, !tbaa !25
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL8g_outputB5cxx11, i64 8), align 8, !tbaa !7
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL8g_outputB5cxx11, i64 16), align 8, !tbaa !22
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL8g_outputB5cxx11, ptr nonnull @__dso_handle) #12 ; 0 uses
end_hunk_1
begin_hunk_2_@_GLOBAL__sub_I_logGuard.cpp:bb.a
!21 = !{!8, !10, i64 0}
!22 = !{!5, !5, i64 0}
!23 = !{!10, !10, i64 0}
!24 = distinct !{null, null}
!25 = !{!9, !10, i64 0}
end_hunk_2
