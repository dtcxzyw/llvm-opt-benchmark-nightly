inline.NumInlined: 90
inline.NumDeleted: 51
begin_hunk_0_@_ZNK4absl12lts_2025051213time_internal4cctz9time_zone6lookupERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25, !noalias !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noalias !22
  tail call void %i.h(ptr dead_on_unwind writable sret(%"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

end_hunk_0
begin_hunk_1_@_ZNK4absl12lts_2025051213time_internal4cctz9time_zone6lookupERKNS2_6detail10civil_timeINS4_10second_tagEEE:bb.a
_ZNK4absl12lts_2025051213time_internal4cctz9time_zone14effective_implEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20, !noalias !27 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25, !noalias !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noalias !27
  tail call void %i.h(ptr dead_on_unwind writable sret(%"struct.absl::lts_20250512::time_internal::cctz::time_zone::civil_lookup") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

end_hunk_1
begin_hunk_2_@_ZNK4absl12lts_2025051213time_internal4cctz9time_zone15next_transitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS3_16civil_transitionE:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  ret i1 %i.i
}

end_hunk_2
begin_hunk_3_@_ZNK4absl12lts_2025051213time_internal4cctz9time_zone15prev_transitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS3_16civil_transitionE:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  ret i1 %i.i
}

end_hunk_3
begin_hunk_4_@_ZNK4absl12lts_2025051213time_internal4cctz9time_zone7versionB5cxx11Ev:bb.a
_ZNK4absl12lts_2025051213time_internal4cctz9time_zone14effective_implEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20, !noalias !30 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25, !noalias !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !30
  tail call void %i.h(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  ret void
}

end_hunk_4
begin_hunk_5_@_ZNK4absl12lts_2025051213time_internal4cctz9time_zone11descriptionB5cxx11Ev:bb.a
_ZNK4absl12lts_2025051213time_internal4cctz9time_zone14effective_implEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20, !noalias !33 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25, !noalias !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !noalias !33
  tail call void %i.h(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  ret void
}

end_hunk_5
begin_hunk_6_@strlen
!24 = distinct !{!24, !"_ZNK4absl12lts_2025051213time_internal4cctz9time_zone4Impl9BreakTimeERKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1EEEEEE"}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !6, i64 0}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZNK4absl12lts_2025051213time_internal4cctz9time_zone4Impl8MakeTimeERKNS2_6detail10civil_timeINS5_10second_tagEEE: argument 0"}
!29 = distinct !{!29, !"_ZNK4absl12lts_2025051213time_internal4cctz9time_zone4Impl8MakeTimeERKNS2_6detail10civil_timeINS5_10second_tagEEE"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZNK4absl12lts_2025051213time_internal4cctz9time_zone4Impl7VersionB5cxx11Ev: argument 0"}
!32 = distinct !{!32, !"_ZNK4absl12lts_2025051213time_internal4cctz9time_zone4Impl7VersionB5cxx11Ev"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZNK4absl12lts_2025051213time_internal4cctz9time_zone4Impl11DescriptionB5cxx11Ev: argument 0"}
!35 = distinct !{!35, !"_ZNK4absl12lts_2025051213time_internal4cctz9time_zone4Impl11DescriptionB5cxx11Ev"}
end_hunk_6
