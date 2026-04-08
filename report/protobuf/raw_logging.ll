inline.NumInlined: 25
inline.NumDeleted: 23
begin_hunk_0_@_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 3000, ptr %i.c, align 4, !tbaa !3
  %i.d = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal12_GLOBAL__N_126log_filter_and_prefix_hookE acquire, align 8
  %i.e = call noundef zeroext i1 %i.d(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  br i1 %i.e, label %bb.b, label %_ZN4absl12lts_2025051216raw_log_internal25AsyncSignalSafeWriteErrorEPKcm.exit.i

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z:bb.a
bb.f:                                             ; preds = %_ZN4absl12lts_2025051216raw_log_internal25AsyncSignalSafeWriteErrorEPKcm.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 3000
  %i.z = load atomic ptr, ptr @_ZN4absl12lts_2025051216raw_log_internal12_GLOBAL__N_110abort_hookE acquire, align 8
  call void %i.z(ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(3000) %i.a, ptr noundef %i.f, ptr noundef nonnull %i.y)
  call void @abort() #14
  unreachable

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051216raw_log_internal12_GLOBAL__N_118DefaultInternalLogENS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
define internal void @_ZN4absl12lts_2025051216raw_log_internal12_GLOBAL__N_118DefaultInternalLogENS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10
  %i.c = trunc i64 %i.b to i32
  %i.d = load ptr, ptr %3, align 8, !tbaa !14
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.2, i32 noundef %i.c, ptr noundef %i.d)
  ret void
}
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051216raw_log_internal12_GLOBAL__N_118DefaultInternalLogENS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2025051216raw_log_internal30RegisterLogFilterAndPrefixHookEPFbNS0_11LogSeverityEPKciPPcPiE(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051216raw_log_internal12_GLOBAL__N_126log_filter_and_prefix_hookE, i64 8), align 8, !tbaa !15
  %i.b = cmpxchg ptr @_ZN4absl12lts_2025051216raw_log_internal12_GLOBAL__N_126log_filter_and_prefix_hookE, ptr %i.a, ptr %0 acq_rel acquire, align 8 ; 0 uses
  ret void
}
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051216raw_log_internal30RegisterLogFilterAndPrefixHookEPFbNS0_11LogSeverityEPKciPPcPiE:bb.a
; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2025051216raw_log_internal17RegisterAbortHookEPFvPKciS3_S3_S3_E(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051216raw_log_internal12_GLOBAL__N_110abort_hookE, i64 8), align 8, !tbaa !19
  %i.b = cmpxchg ptr @_ZN4absl12lts_2025051216raw_log_internal12_GLOBAL__N_110abort_hookE, ptr %i.a, ptr %0 acq_rel acquire, align 8 ; 0 uses
  ret void
}
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051216raw_log_internal17RegisterAbortHookEPFvPKciS3_S3_S3_E:bb.a
; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2025051216raw_log_internal27RegisterInternalLogFunctionEPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E, i64 8), align 8, !tbaa !23
  %i.b = cmpxchg ptr @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E, ptr %i.a, ptr %0 acq_rel acquire, align 8 ; 0 uses
  ret void
}
end_hunk_5
begin_hunk_6_@llvm.usub.sat.i32
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 omnipotent char", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !13, i64 8}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !13, i64 8, !5, i64 16}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!11, !8, i64 0}
!15 = !{!16, !9, i64 8}
!16 = !{!"_ZTSN4absl12lts_2025051213base_internal10AtomicHookIPFbNS0_11LogSeverityEPKciPPcPiEEE", !17, i64 0, !9, i64 8}
!17 = !{!"_ZTSSt6atomicIPFbN4absl12lts_2025051211LogSeverityEPKciPPcPiEE", !18, i64 0}
!18 = !{!"_ZTSSt13__atomic_baseIPFbN4absl12lts_2025051211LogSeverityEPKciPPcPiEE", !9, i64 0}
!19 = !{!20, !9, i64 8}
!20 = !{!"_ZTSN4absl12lts_2025051213base_internal10AtomicHookIPFvPKciS4_S4_S4_EEE", !21, i64 0, !9, i64 8}
!21 = !{!"_ZTSSt6atomicIPFvPKciS1_S1_S1_EE", !22, i64 0}
!22 = !{!"_ZTSSt13__atomic_baseIPFvPKciS1_S1_S1_EE", !9, i64 0}
!23 = !{!24, !9, i64 8}
!24 = !{!"_ZTSN4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE", !25, i64 0, !9, i64 8}
!25 = !{!"_ZTSSt6atomicIPFvN4absl12lts_2025051211LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !26, i64 0}
!26 = !{!"_ZTSSt13__atomic_baseIPFvN4absl12lts_2025051211LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !9, i64 0}
end_hunk_6
