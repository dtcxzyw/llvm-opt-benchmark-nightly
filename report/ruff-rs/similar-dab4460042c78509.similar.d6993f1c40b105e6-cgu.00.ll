Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/similar-dab4460042c78509.similar.d6993f1c40b105e6-cgu.00?download=true
inline.NumInlined: 753
inline.NumDeleted: 63
begin_hunk_0_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupjEBZ_INtNtB4_4hook12NoFinishHookQIB1x_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupjEBZ_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB10_mEB2m_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1k_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB15_mEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupjEBZ_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2m_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupmEBZ_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupmEB1j_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupmEB14_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupmEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupmEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupmEB14_INtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB6_4text12TextDiffSideeEB14_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB6_4text12TextDiffSideeEB14_INtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1y_12OffsetLookupmEEEBZ_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1V_B1V_INtNtB4_7compact7CompactB1V_B1V_IB2o_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1S_12OffsetLookupmEEEB1j_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2f_B2f_INtNtB4_7compact7CompactB2f_B2f_IB2J_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1D_12OffsetLookupmEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB20_B20_INtNtB4_7compact7CompactB20_B20_IB2u_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBZ_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1V_B1V_INtNtB4_7compact7CompactB1V_B1V_IB2u_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1j_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2f_B2f_INtNtB4_7compact7CompactB2f_B2f_IB2P_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB20_B20_INtNtB4_7compact7CompactB20_B20_IB2A_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupjEB13_EB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !3 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !3 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %.sroa.047.0 = sub i64 %i.y, %i.z               ; 3 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !4

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph269, label %bb.h, !prof !4

.lr.ph269:                                        ; preds = %bb.g
  %i.ac = add i64 %i.h, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !3 ; 2 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

bb.i:                                             ; preds = %.lr.ph269, %._crit_edge265
  %.sroa.048.0268 = phi i64 [ 0, %.lr.ph269 ], [ %i.as, %._crit_edge265 ] ; 9 uses
  %i.as = add nuw nsw i64 %.sroa.048.0268, 1
  %i.at = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.at, label %._crit_edge270, label %.lr.ph248.preheader

.lr.ph248.preheader:                              ; preds = %bb.i
  %11 = sub nsw i64 0, %.sroa.048.0268            ; 6 uses
  br label %.lr.ph248

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %bb.bj
  %.sroa.7.0247 = phi i64 [ %.sroa.7.1, %bb.bj ], [ %.sroa.048.0268, %.lr.ph248.preheader ] ; 2 uses
  %not..sroa.14163.0246 = phi i64 [ 1, %bb.bj ], [ 0, %.lr.ph248.preheader ]
  %i.au = sub i64 %.sroa.7.0247, %not..sroa.14163.0246 ; 12 uses
  %.not.i.not.i = icmp sgt i64 %i.au, %.sroa.7.0247
  br i1 %.not.i.not.i, label %.lr.ph264.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph248
  %i.av = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.au, i64 %11)
  switch i8 %i.av, label %bb.k [
    i8 -1, label %.lr.ph264.preheader
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aw = add i64 %i.au, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.11.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %.sroa.7.1 = phi i64 [ %i.au, %bb.j ], [ %i.aw, %bb.l ] ; 2 uses
  %i.ax = icmp eq i64 %i.au, %11
  br i1 %i.ax, label %._crit_edge316, label %bb.aq

._crit_edge316:                                   ; preds = %bb.m
  %.pre321 = add i64 %i.i, %i.au
  br label %._crit_edge316.a

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %bb.al
  %not..sroa.17172.0262 = phi i64 [ 1, %bb.al ], [ 0, %.lr.ph264.preheader ]
  %.sroa.7171.0261 = phi i64 [ %.sroa.7171.1, %bb.al ], [ %.sroa.048.0268, %.lr.ph264.preheader ] ; 2 uses
  %i.ay = sub i64 %.sroa.7171.0261, %not..sroa.17172.0262 ; 12 uses
  %.not.i.not.i144 = icmp sgt i64 %i.ay, %.sroa.7171.0261
  br i1 %.not.i.not.i144, label %._crit_edge265, label %bb.n

bb.n:                                             ; preds = %.lr.ph264
  %i.az = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ay, i64 %11)
  switch i8 %i.az, label %bb.o [
    i8 -1, label %._crit_edge265
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ba = add i64 %i.ay, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.7171.1 = phi i64 [ %i.ay, %bb.n ], [ %i.ba, %bb.p ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.n ], [ false, %bb.p ]
  %i.bb = icmp eq i64 %i.ay, %11
  br i1 %i.bb, label %._crit_edge318, label %bb.r

._crit_edge318:                                   ; preds = %bb.q
  %.pre = add i64 %i.r, %i.ay
  br label %._crit_edge318.a

._crit_edge265:                                   ; preds = %bb.al, %bb.n, %.lr.ph264
  %exitcond314.not = icmp eq i64 %.sroa.048.0268, %.sroa.047.0
  br i1 %exitcond314.not, label %._crit_edge270, label %bb.i

bb.r:                                             ; preds = %bb.q
  %.not130 = icmp eq i64 %i.ay, %.sroa.048.0268
  %.pre319 = add i64 %i.ap, %i.ay                 ; 6 uses
  br i1 %.not130, label %._crit_edge317, label %bb.s

._crit_edge318.a:                                 ; preds = %._crit_edge318, %bb.v
  %.pre-phi = phi i64 [ %.pre, %._crit_edge318 ], [ %i.bf, %bb.v ] ; 3 uses
  %i.bc = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.bc, label %bb.aa, label %bb.ab

._crit_edge317:                                   ; preds = %bb.r, %bb.v
  %i.bd = icmp ult i64 %.pre319, %i.t
  br i1 %i.bd, label %bb.x, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.be = icmp ult i64 %.pre319, %i.t
  br i1 %i.be, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bf = add i64 %i.r, %i.ay                     ; 4 uses
  %i.bg = icmp ult i64 %i.bf, %i.t
  br i1 %i.bg, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre319
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !3
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bf
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !3
  %i.bl = icmp ult i64 %i.bi, %i.bk
  br i1 %i.bl, label %._crit_edge318.a, label %._crit_edge317

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bf, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14
  unreachable

bb.x:                                             ; preds = %._crit_edge317
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre319
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !3
  %i.bo = add i64 %i.bn, 1
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge317
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #14
  unreachable

bb.z:                                             ; preds = %bb.aa, %bb.x
  %.sroa.014.0 = phi i64 [ %i.bt, %bb.aa ], [ %i.bo, %bb.x ] ; 5 uses
  %i.bp = sub i64 %.sroa.014.0, %i.ay             ; 4 uses
  %i.bq = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.br = icmp ult i64 %i.bp, %.sroa.037.0
  %or.cond = and i1 %i.bq, %i.br
  br i1 %or.cond, label %bb.ad, label %bb.ac

bb.aa:                                            ; preds = %._crit_edge318.a
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !3
  br label %bb.z

bb.ab:                                            ; preds = %._crit_edge318.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14
  unreachable

bb.ac:                                            ; preds = %bb.z, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit
  %.sroa.020.0 = phi i64 [ %i.ci, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit ], [ %i.bp, %bb.z ]
  %.sroa.014.1 = phi i64 [ %i.ch, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit ], [ %.sroa.014.0, %bb.z ] ; 3 uses
  %i.bu = add i64 %i.ay, %i.q                     ; 3 uses
  %i.bv = icmp ult i64 %i.bu, %i.t
  br i1 %i.bv, label %bb.ai, label %bb.aj

bb.ad:                                            ; preds = %bb.z
  %i.bw = sub i64 %i.aq, %.sroa.014.0             ; 2 uses
  %i.bx = sub i64 %i.ar, %i.bp                    ; 2 uses
  %i.by = sub i64 %i.bw, %2
  %i.bz = sub i64 %i.bx, %5
  %.sroa.0.0.i148 = tail call noundef i64 @llvm.umin.i64(i64 %i.bz, i64 %i.by) ; 3 uses
  %.not273 = icmp eq i64 %.sroa.0.0.i148, 0
  br i1 %.not273, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.ad
  %invariant.op256 = sub i64 %i.bx, %i.ae
  %invariant.op258 = sub i64 %i.bw, %i.ak
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph253, %bb.ah
  %.sroa.0.0.i136251 = phi i64 [ 0, %.lr.ph253 ], [ %i.cg, %bb.ah ] ; 3 uses
  %i.ca = xor i64 %.sroa.0.0.i136251, -1          ; 2 uses
  %.reass257 = add i64 %invariant.op256, %i.ca    ; 3 uses
  %i.cb = icmp ult i64 %.reass257, %i.ag
  br i1 %i.cb, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit137, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass257, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14, !noalias !5
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit137: ; preds = %bb.ae
  %.reass259 = add i64 %invariant.op258, %i.ca    ; 3 uses
  %i.cc = icmp ult i64 %.reass259, %i.am
  br i1 %i.cc, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit137
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #14, !noalias !8
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit137
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass257
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass259
  %.val = load i64, ptr %i.cd, align 8, !noundef !3
  %.val140 = load i64, ptr %i.ce, align 8, !noundef !3
  %i.cf = icmp eq i64 %.val, %.val140
  br i1 %i.cf, label %bb.ah, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit

bb.ah:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit
  %i.cg = add nuw i64 %.sroa.0.0.i136251, 1       ; 2 uses
  %exitcond313.not = icmp eq i64 %i.cg, %.sroa.0.0.i148
  br i1 %exitcond313.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit, label %bb.ae

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, %bb.ah, %bb.ad
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.ad ], [ %.sroa.0.0.i148, %bb.ah ], [ %.sroa.0.0.i136251, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit ] ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.ci = add i64 %.sroa.0.0.i136.lcssa, %i.bp
  br label %bb.ac

bb.ai:                                            ; preds = %bb.ac
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bu
  store i64 %.sroa.014.1, ptr %i.cj, align 8
  br i1 %.not, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bu, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #14
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ck = sub i64 %i.ay, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.ck, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0268
  br i1 %.not131, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.an, %bb.ai
  %.not.i143 = icmp slt i64 %.sroa.7171.1, %11
  %or.cond188 = select i1 %.sroa.12.1, i1 true, i1 %.not.i143
  br i1 %or.cond188, label %._crit_edge265, label %.lr.ph264

bb.am:                                            ; preds = %bb.ak
  %i.cl = sub i64 %i.h, %i.ck                     ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %i.k
  br i1 %i.cm, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cl
  %i.co = load i64, ptr %i.cn, align 8, !noundef !3
  %i.cp = add i64 %i.co, %.sroa.014.1
  %.not132 = icmp ult i64 %i.cp, %.sroa.025.0
  br i1 %.not132, label %bb.al, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cl, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.cq = sub i64 %i.aq, %.sroa.014.1
  %i.cr = sub i64 %i.ar, %.sroa.020.0
  br label %._crit_edge270.sink.split

bb.aq:                                            ; preds = %bb.m
  %.not133 = icmp eq i64 %i.au, %.sroa.048.0268
  %.pre323 = add i64 %i.ac, %i.au                 ; 6 uses
  br i1 %.not133, label %._crit_edge315, label %bb.ar

._crit_edge316.a:                                 ; preds = %._crit_edge316, %bb.au
  %.pre-phi322 = phi i64 [ %.pre321, %._crit_edge316 ], [ %i.cv, %bb.au ] ; 3 uses
  %i.cs = icmp ult i64 %.pre-phi322, %i.k
  br i1 %i.cs, label %bb.az, label %bb.ba

._crit_edge315:                                   ; preds = %bb.aq, %bb.au
  %i.ct = icmp ult i64 %.pre323, %i.k
  br i1 %i.ct, label %bb.aw, label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  %i.cu = icmp ult i64 %.pre323, %i.k
  br i1 %i.cu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.cv = add i64 %i.i, %i.au                     ; 4 uses
  %i.cw = icmp ult i64 %i.cv, %i.k
  br i1 %i.cw, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.ar
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre323, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #14
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre323
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !3
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cv
  %i.da = load i64, ptr %i.cz, align 8, !noundef !3
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %._crit_edge316.a, label %._crit_edge315

bb.av:                                            ; preds = %bb.as
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cv, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #14
  unreachable

bb.aw:                                            ; preds = %._crit_edge315
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre323
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !3
  %i.de = add i64 %i.dd, 1
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge315
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre323, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #14
  unreachable

bb.ay:                                            ; preds = %bb.az, %bb.aw
  %.sroa.04.0 = phi i64 [ %i.dk, %bb.az ], [ %i.de, %bb.aw ] ; 6 uses
  %i.df = sub i64 %.sroa.04.0, %i.au              ; 3 uses
  %i.dg = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.dg, i1 false
  %i.dh = icmp ult i64 %i.df, %i.d
  %i.di = and i1 %i.c, %.sroa.051.0
  %or.cond186 = select i1 %i.di, i1 %i.dh, i1 false
  br i1 %or.cond186, label %bb.bc, label %bb.bb

bb.az:                                            ; preds = %._crit_edge316.a
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi322
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !3
  br label %bb.ay

bb.ba:                                            ; preds = %._crit_edge316.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi322, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14
  unreachable

bb.bb:                                            ; preds = %bb.ay, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit
  %.sroa.04.1 = phi i64 [ %i.dx, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit ], [ %.sroa.04.0, %bb.ay ] ; 2 uses
  %i.dl = add i64 %i.au, %i.h                     ; 3 uses
  %i.dm = icmp ult i64 %i.dl, %i.k
  br i1 %i.dm, label %bb.bh, label %bb.bi

bb.bc:                                            ; preds = %bb.ay
  %i.dn = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.do = add i64 %i.df, %5                       ; 2 uses
  %i.dp = sub i64 %3, %i.dn
  %i.dq = sub i64 %6, %i.do
  %.sroa.0.0.i149 = tail call noundef i64 @llvm.umin.i64(i64 %i.dq, i64 %i.dp) ; 3 uses
  %.not272 = icmp eq i64 %.sroa.0.0.i149, 0
  br i1 %.not272, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bc
  %invariant.op = sub i64 %i.do, %i.ae            ; 2 uses
  %invariant.op243 = sub i64 %i.dn, %i.ak         ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph, %bb.bg
  %.sroa.0.0.i241 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %bb.bg ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i241, %invariant.op ; 2 uses
  %i.dr = icmp ult i64 %.reass, %i.ag
  br i1 %i.dr, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit139, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %invariant.op)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !noalias !11
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit139: ; preds = %bb.bd
  %.reass244 = add nuw i64 %.sroa.0.0.i241, %invariant.op243 ; 2 uses
  %i.ds = icmp ult i64 %.reass244, %i.am
  br i1 %i.ds, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit138, label %bb.bf

bb.bf:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit139
  %umax312 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %invariant.op243)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax312, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !noalias !14
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit138: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit139
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass244
  %.val141 = load i64, ptr %i.dt, align 8, !noundef !3
  %.val142 = load i64, ptr %i.du, align 8, !noundef !3
  %i.dv = icmp eq i64 %.val141, %.val142
  br i1 %i.dv, label %bb.bg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit

bb.bg:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit138
  %i.dw = add nuw i64 %.sroa.0.0.i241, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.dw, %.sroa.0.0.i149
  br i1 %exitcond.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit, label %bb.bd

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit138, %bb.bg, %bb.bc
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.bc ], [ %.sroa.0.0.i149, %bb.bg ], [ %.sroa.0.0.i241, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit138 ]
  %i.dx = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.bb

bb.bh:                                            ; preds = %bb.bb
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dl
  store i64 %.sroa.04.1, ptr %i.dy, align 8
  br i1 %.not, label %bb.bj, label %bb.bk

bb.bi:                                            ; preds = %bb.bb
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dl, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #14
  unreachable

bb.bj:                                            ; preds = %bb.bk, %bb.bm, %bb.bh
  %.not.i = icmp slt i64 %.sroa.7.1, %11
  %or.cond187 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond187, label %.lr.ph264.preheader, label %.lr.ph248

.lr.ph264.preheader:                              ; preds = %.lr.ph248, %bb.j, %bb.bj
  br label %.lr.ph264

bb.bk:                                            ; preds = %bb.bh
  %i.dz = sub i64 %i.au, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.dz, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0268
  br i1 %.not134.not, label %bb.bl, label %bb.bj

bb.bl:                                            ; preds = %bb.bk
  %i.ea = sub i64 %i.q, %i.dz                     ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %i.t
  br i1 %i.eb, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ea
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !3
  %i.ee = add i64 %i.ed, %.sroa.04.1
  %.not135 = icmp ult i64 %i.ee, %.sroa.025.0
  br i1 %.not135, label %bb.bj, label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.ef = add i64 %.sroa.04.0, %2
  %i.eg = add i64 %i.df, %5
  br label %._crit_edge270.sink.split

._crit_edge270.sink.split:                        ; preds = %bb.bo, %bb.ap
  %.sink398 = phi i64 [ %i.cq, %bb.ap ], [ %i.ef, %bb.bo ]
  %.sink396 = phi i64 [ %i.cr, %bb.ap ], [ %i.eg, %bb.bo ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink398, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink396, ptr %i.ei, align 8
  br label %._crit_edge270

._crit_edge270:                                   ; preds = %bb.i, %._crit_edge265, %._crit_edge270.sink.split
  %.sink = phi i64 [ 1, %._crit_edge270.sink.split ], [ 0, %._crit_edge265 ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupmEB13_EB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !3 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !3 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %.sroa.047.0 = sub i64 %i.y, %i.z               ; 3 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !4

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph269, label %bb.h, !prof !4

.lr.ph269:                                        ; preds = %bb.g
  %i.ac = add i64 %i.h, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !3 ; 2 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

bb.i:                                             ; preds = %.lr.ph269, %._crit_edge265
  %.sroa.048.0268 = phi i64 [ 0, %.lr.ph269 ], [ %i.as, %._crit_edge265 ] ; 9 uses
  %i.as = add nuw nsw i64 %.sroa.048.0268, 1
  %i.at = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.at, label %._crit_edge270, label %.lr.ph248.preheader

.lr.ph248.preheader:                              ; preds = %bb.i
  %11 = sub nsw i64 0, %.sroa.048.0268            ; 6 uses
  br label %.lr.ph248

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %bb.bj
  %.sroa.7.0247 = phi i64 [ %.sroa.7.1, %bb.bj ], [ %.sroa.048.0268, %.lr.ph248.preheader ] ; 2 uses
  %not..sroa.14163.0246 = phi i64 [ 1, %bb.bj ], [ 0, %.lr.ph248.preheader ]
  %i.au = sub i64 %.sroa.7.0247, %not..sroa.14163.0246 ; 12 uses
  %.not.i.not.i = icmp sgt i64 %i.au, %.sroa.7.0247
  br i1 %.not.i.not.i, label %.lr.ph264.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph248
  %i.av = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.au, i64 %11)
  switch i8 %i.av, label %bb.k [
    i8 -1, label %.lr.ph264.preheader
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aw = add i64 %i.au, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.11.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %.sroa.7.1 = phi i64 [ %i.au, %bb.j ], [ %i.aw, %bb.l ] ; 2 uses
  %i.ax = icmp eq i64 %i.au, %11
  br i1 %i.ax, label %._crit_edge316, label %bb.aq

._crit_edge316:                                   ; preds = %bb.m
  %.pre321 = add i64 %i.i, %i.au
  br label %._crit_edge316.a

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %bb.al
  %not..sroa.17172.0262 = phi i64 [ 1, %bb.al ], [ 0, %.lr.ph264.preheader ]
  %.sroa.7171.0261 = phi i64 [ %.sroa.7171.1, %bb.al ], [ %.sroa.048.0268, %.lr.ph264.preheader ] ; 2 uses
  %i.ay = sub i64 %.sroa.7171.0261, %not..sroa.17172.0262 ; 12 uses
  %.not.i.not.i144 = icmp sgt i64 %i.ay, %.sroa.7171.0261
  br i1 %.not.i.not.i144, label %._crit_edge265, label %bb.n

bb.n:                                             ; preds = %.lr.ph264
  %i.az = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ay, i64 %11)
  switch i8 %i.az, label %bb.o [
    i8 -1, label %._crit_edge265
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ba = add i64 %i.ay, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.7171.1 = phi i64 [ %i.ay, %bb.n ], [ %i.ba, %bb.p ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.n ], [ false, %bb.p ]
  %i.bb = icmp eq i64 %i.ay, %11
  br i1 %i.bb, label %._crit_edge318, label %bb.r

._crit_edge318:                                   ; preds = %bb.q
  %.pre = add i64 %i.r, %i.ay
  br label %._crit_edge318.a

._crit_edge265:                                   ; preds = %bb.al, %bb.n, %.lr.ph264
  %exitcond314.not = icmp eq i64 %.sroa.048.0268, %.sroa.047.0
  br i1 %exitcond314.not, label %._crit_edge270, label %bb.i

bb.r:                                             ; preds = %bb.q
  %.not130 = icmp eq i64 %i.ay, %.sroa.048.0268
  %.pre319 = add i64 %i.ap, %i.ay                 ; 6 uses
  br i1 %.not130, label %._crit_edge317, label %bb.s

._crit_edge318.a:                                 ; preds = %._crit_edge318, %bb.v
  %.pre-phi = phi i64 [ %.pre, %._crit_edge318 ], [ %i.bf, %bb.v ] ; 3 uses
  %i.bc = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.bc, label %bb.aa, label %bb.ab

._crit_edge317:                                   ; preds = %bb.r, %bb.v
  %i.bd = icmp ult i64 %.pre319, %i.t
  br i1 %i.bd, label %bb.x, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.be = icmp ult i64 %.pre319, %i.t
  br i1 %i.be, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bf = add i64 %i.r, %i.ay                     ; 4 uses
  %i.bg = icmp ult i64 %i.bf, %i.t
  br i1 %i.bg, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre319
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !3
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bf
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !3
  %i.bl = icmp ult i64 %i.bi, %i.bk
  br i1 %i.bl, label %._crit_edge318.a, label %._crit_edge317

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bf, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14
  unreachable

bb.x:                                             ; preds = %._crit_edge317
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre319
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !3
  %i.bo = add i64 %i.bn, 1
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge317
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #14
  unreachable

bb.z:                                             ; preds = %bb.aa, %bb.x
  %.sroa.014.0 = phi i64 [ %i.bt, %bb.aa ], [ %i.bo, %bb.x ] ; 5 uses
  %i.bp = sub i64 %.sroa.014.0, %i.ay             ; 4 uses
  %i.bq = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.br = icmp ult i64 %i.bp, %.sroa.037.0
  %or.cond = and i1 %i.bq, %i.br
  br i1 %or.cond, label %bb.ad, label %bb.ac

bb.aa:                                            ; preds = %._crit_edge318.a
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !3
  br label %bb.z

bb.ab:                                            ; preds = %._crit_edge318.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14
  unreachable

bb.ac:                                            ; preds = %bb.z, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit
  %.sroa.020.0 = phi i64 [ %i.ci, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit ], [ %i.bp, %bb.z ]
  %.sroa.014.1 = phi i64 [ %i.ch, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit ], [ %.sroa.014.0, %bb.z ] ; 3 uses
  %i.bu = add i64 %i.ay, %i.q                     ; 3 uses
  %i.bv = icmp ult i64 %i.bu, %i.t
  br i1 %i.bv, label %bb.ai, label %bb.aj

bb.ad:                                            ; preds = %bb.z
  %i.bw = sub i64 %i.aq, %.sroa.014.0             ; 2 uses
  %i.bx = sub i64 %i.ar, %i.bp                    ; 2 uses
  %i.by = sub i64 %i.bw, %2
  %i.bz = sub i64 %i.bx, %5
  %.sroa.0.0.i148 = tail call noundef i64 @llvm.umin.i64(i64 %i.bz, i64 %i.by) ; 3 uses
  %.not273 = icmp eq i64 %.sroa.0.0.i148, 0
  br i1 %.not273, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.ad
  %invariant.op256 = sub i64 %i.bx, %i.ae
  %invariant.op258 = sub i64 %i.bw, %i.ak
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph253, %bb.ah
  %.sroa.0.0.i136251 = phi i64 [ 0, %.lr.ph253 ], [ %i.cg, %bb.ah ] ; 3 uses
  %i.ca = xor i64 %.sroa.0.0.i136251, -1          ; 2 uses
  %.reass257 = add i64 %invariant.op256, %i.ca    ; 3 uses
  %i.cb = icmp ult i64 %.reass257, %i.ag
  br i1 %i.cb, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit137, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass257, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14, !noalias !17
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit137: ; preds = %bb.ae
  %.reass259 = add i64 %invariant.op258, %i.ca    ; 3 uses
  %i.cc = icmp ult i64 %.reass259, %i.am
  br i1 %i.cc, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit137
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #14, !noalias !20
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit137
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.reass257
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass259
  %.val = load i32, ptr %i.cd, align 4, !noundef !3
  %.val140 = load i32, ptr %i.ce, align 4, !noundef !3
  %i.cf = icmp eq i32 %.val, %.val140
  br i1 %i.cf, label %bb.ah, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit

bb.ah:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit
  %i.cg = add nuw i64 %.sroa.0.0.i136251, 1       ; 2 uses
  %exitcond313.not = icmp eq i64 %i.cg, %.sroa.0.0.i148
  br i1 %exitcond313.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit, label %bb.ae

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, %bb.ah, %bb.ad
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.ad ], [ %.sroa.0.0.i148, %bb.ah ], [ %.sroa.0.0.i136251, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit ] ; 2 uses
  %i.ch = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.ci = add i64 %.sroa.0.0.i136.lcssa, %i.bp
  br label %bb.ac

bb.ai:                                            ; preds = %bb.ac
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bu
  store i64 %.sroa.014.1, ptr %i.cj, align 8
  br i1 %.not, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bu, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #14
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ck = sub i64 %i.ay, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.ck, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0268
  br i1 %.not131, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.an, %bb.ai
  %.not.i143 = icmp slt i64 %.sroa.7171.1, %11
  %or.cond188 = select i1 %.sroa.12.1, i1 true, i1 %.not.i143
  br i1 %or.cond188, label %._crit_edge265, label %.lr.ph264

bb.am:                                            ; preds = %bb.ak
  %i.cl = sub i64 %i.h, %i.ck                     ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %i.k
  br i1 %i.cm, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cl
  %i.co = load i64, ptr %i.cn, align 8, !noundef !3
  %i.cp = add i64 %i.co, %.sroa.014.1
  %.not132 = icmp ult i64 %i.cp, %.sroa.025.0
  br i1 %.not132, label %bb.al, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cl, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.cq = sub i64 %i.aq, %.sroa.014.1
  %i.cr = sub i64 %i.ar, %.sroa.020.0
  br label %._crit_edge270.sink.split

bb.aq:                                            ; preds = %bb.m
  %.not133 = icmp eq i64 %i.au, %.sroa.048.0268
  %.pre323 = add i64 %i.ac, %i.au                 ; 6 uses
  br i1 %.not133, label %._crit_edge315, label %bb.ar

._crit_edge316.a:                                 ; preds = %._crit_edge316, %bb.au
  %.pre-phi322 = phi i64 [ %.pre321, %._crit_edge316 ], [ %i.cv, %bb.au ] ; 3 uses
  %i.cs = icmp ult i64 %.pre-phi322, %i.k
  br i1 %i.cs, label %bb.az, label %bb.ba

._crit_edge315:                                   ; preds = %bb.aq, %bb.au
  %i.ct = icmp ult i64 %.pre323, %i.k
  br i1 %i.ct, label %bb.aw, label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  %i.cu = icmp ult i64 %.pre323, %i.k
  br i1 %i.cu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.cv = add i64 %i.i, %i.au                     ; 4 uses
  %i.cw = icmp ult i64 %i.cv, %i.k
  br i1 %i.cw, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.ar
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre323, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #14
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre323
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !3
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cv
  %i.da = load i64, ptr %i.cz, align 8, !noundef !3
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %._crit_edge316.a, label %._crit_edge315

bb.av:                                            ; preds = %bb.as
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cv, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #14
  unreachable

bb.aw:                                            ; preds = %._crit_edge315
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre323
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !3
  %i.de = add i64 %i.dd, 1
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge315
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre323, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #14
  unreachable

bb.ay:                                            ; preds = %bb.az, %bb.aw
  %.sroa.04.0 = phi i64 [ %i.dk, %bb.az ], [ %i.de, %bb.aw ] ; 6 uses
  %i.df = sub i64 %.sroa.04.0, %i.au              ; 3 uses
  %i.dg = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.dg, i1 false
  %i.dh = icmp ult i64 %i.df, %i.d
  %i.di = and i1 %i.c, %.sroa.051.0
  %or.cond186 = select i1 %i.di, i1 %i.dh, i1 false
  br i1 %or.cond186, label %bb.bc, label %bb.bb

bb.az:                                            ; preds = %._crit_edge316.a
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi322
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !3
  br label %bb.ay

bb.ba:                                            ; preds = %._crit_edge316.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi322, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14
  unreachable

bb.bb:                                            ; preds = %bb.ay, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit
  %.sroa.04.1 = phi i64 [ %i.dx, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit ], [ %.sroa.04.0, %bb.ay ] ; 2 uses
  %i.dl = add i64 %i.au, %i.h                     ; 3 uses
  %i.dm = icmp ult i64 %i.dl, %i.k
  br i1 %i.dm, label %bb.bh, label %bb.bi

bb.bc:                                            ; preds = %bb.ay
  %i.dn = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.do = add i64 %i.df, %5                       ; 2 uses
  %i.dp = sub i64 %3, %i.dn
  %i.dq = sub i64 %6, %i.do
  %.sroa.0.0.i149 = tail call noundef i64 @llvm.umin.i64(i64 %i.dq, i64 %i.dp) ; 3 uses
  %.not272 = icmp eq i64 %.sroa.0.0.i149, 0
  br i1 %.not272, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bc
  %invariant.op = sub i64 %i.do, %i.ae            ; 2 uses
  %invariant.op243 = sub i64 %i.dn, %i.ak         ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph, %bb.bg
  %.sroa.0.0.i241 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %bb.bg ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i241, %invariant.op ; 2 uses
  %i.dr = icmp ult i64 %.reass, %i.ag
  br i1 %i.dr, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit139, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %invariant.op)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !noalias !23
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit139: ; preds = %bb.bd
  %.reass244 = add nuw i64 %.sroa.0.0.i241, %invariant.op243 ; 2 uses
  %i.ds = icmp ult i64 %.reass244, %i.am
  br i1 %i.ds, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit138, label %bb.bf

bb.bf:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit139
  %umax312 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %invariant.op243)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax312, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !noalias !26
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit138: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit139
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.reass
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass244
  %.val141 = load i32, ptr %i.dt, align 4, !noundef !3
  %.val142 = load i32, ptr %i.du, align 4, !noundef !3
  %i.dv = icmp eq i32 %.val141, %.val142
  br i1 %i.dv, label %bb.bg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit

bb.bg:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit138
  %i.dw = add nuw i64 %.sroa.0.0.i241, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.dw, %.sroa.0.0.i149
  br i1 %exitcond.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit, label %bb.bd

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit138, %bb.bg, %bb.bc
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.bc ], [ %.sroa.0.0.i149, %bb.bg ], [ %.sroa.0.0.i241, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit138 ]
  %i.dx = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.bb

bb.bh:                                            ; preds = %bb.bb
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dl
  store i64 %.sroa.04.1, ptr %i.dy, align 8
  br i1 %.not, label %bb.bj, label %bb.bk

bb.bi:                                            ; preds = %bb.bb
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dl, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #14
  unreachable

bb.bj:                                            ; preds = %bb.bk, %bb.bm, %bb.bh
  %.not.i = icmp slt i64 %.sroa.7.1, %11
  %or.cond187 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond187, label %.lr.ph264.preheader, label %.lr.ph248

.lr.ph264.preheader:                              ; preds = %.lr.ph248, %bb.j, %bb.bj
  br label %.lr.ph264

bb.bk:                                            ; preds = %bb.bh
  %i.dz = sub i64 %i.au, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.dz, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0268
  br i1 %.not134.not, label %bb.bl, label %bb.bj

bb.bl:                                            ; preds = %bb.bk
  %i.ea = sub i64 %i.q, %i.dz                     ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %i.t
  br i1 %i.eb, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ea
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !3
  %i.ee = add i64 %i.ed, %.sroa.04.1
  %.not135 = icmp ult i64 %i.ee, %.sroa.025.0
  br i1 %.not135, label %bb.bj, label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.ef = add i64 %.sroa.04.0, %2
  %i.eg = add i64 %i.df, %5
  br label %._crit_edge270.sink.split

._crit_edge270.sink.split:                        ; preds = %bb.bo, %bb.ap
  %.sink398 = phi i64 [ %i.cq, %bb.ap ], [ %i.ef, %bb.bo ]
  %.sink396 = phi i64 [ %i.cr, %bb.ap ], [ %i.eg, %bb.bo ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink398, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink396, ptr %i.ei, align 8
  br label %._crit_edge270

._crit_edge270:                                   ; preds = %bb.i, %._crit_edge265, %._crit_edge270.sink.split
  %.sink = phi i64 [ 1, %._crit_edge270.sink.split ], [ 0, %._crit_edge265 ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtB6_4text12TextDiffSideeEB13_EB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !3 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !3 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %.sroa.047.0 = sub i64 %i.y, %i.z               ; 3 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !4

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph243, label %bb.h, !prof !4

.lr.ph243:                                        ; preds = %bb.g
  %i.ac = add i64 %i.h, -1
  %i.ad = add i64 %i.q, -1
  %i.ae = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.af = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

bb.i:                                             ; preds = %.lr.ph243, %._crit_edge239
  %.sroa.048.0242 = phi i64 [ 0, %.lr.ph243 ], [ %i.ag, %._crit_edge239 ] ; 9 uses
  %i.ag = add nuw nsw i64 %.sroa.048.0242, 1
  %i.ah = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.ah, label %._crit_edge244, label %.lr.ph224.preheader

.lr.ph224.preheader:                              ; preds = %bb.i
  %11 = sub nsw i64 0, %.sroa.048.0242            ; 6 uses
  br label %.lr.ph224

.lr.ph224:                                        ; preds = %.lr.ph224.preheader, %bb.bd
  %.sroa.7.0223 = phi i64 [ %.sroa.7.1, %bb.bd ], [ %.sroa.048.0242, %.lr.ph224.preheader ] ; 2 uses
  %not..sroa.14161.0222 = phi i64 [ 1, %bb.bd ], [ 0, %.lr.ph224.preheader ]
  %i.ai = sub i64 %.sroa.7.0223, %not..sroa.14161.0222 ; 12 uses
  %.not.i.not.i = icmp sgt i64 %i.ai, %.sroa.7.0223
  br i1 %.not.i.not.i, label %.lr.ph238.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph224
  %i.aj = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.ai, i64 %11)
  switch i8 %i.aj, label %bb.k [
    i8 -1, label %.lr.ph238.preheader
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ak = add i64 %i.ai, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.11.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %.sroa.7.1 = phi i64 [ %i.ai, %bb.j ], [ %i.ak, %bb.l ] ; 2 uses
  %i.al = icmp eq i64 %i.ai, %11
  br i1 %i.al, label %._crit_edge279, label %bb.an

._crit_edge279:                                   ; preds = %bb.m
  %.pre284 = add i64 %i.i, %i.ai
  br label %._crit_edge279.a

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %bb.ai
  %not..sroa.17170.0236 = phi i64 [ 1, %bb.ai ], [ 0, %.lr.ph238.preheader ]
  %.sroa.7169.0235 = phi i64 [ %.sroa.7169.1, %bb.ai ], [ %.sroa.048.0242, %.lr.ph238.preheader ] ; 2 uses
  %i.am = sub i64 %.sroa.7169.0235, %not..sroa.17170.0236 ; 12 uses
  %.not.i.not.i138 = icmp sgt i64 %i.am, %.sroa.7169.0235
  br i1 %.not.i.not.i138, label %._crit_edge239, label %bb.n

bb.n:                                             ; preds = %.lr.ph238
  %i.an = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.am, i64 %11)
  switch i8 %i.an, label %bb.o [
    i8 -1, label %._crit_edge239
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ao = add i64 %i.am, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.7169.1 = phi i64 [ %i.am, %bb.n ], [ %i.ao, %bb.p ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.n ], [ false, %bb.p ]
  %i.ap = icmp eq i64 %i.am, %11
  br i1 %i.ap, label %._crit_edge281, label %bb.r

._crit_edge281:                                   ; preds = %bb.q
  %.pre = add i64 %i.r, %i.am
  br label %._crit_edge281.a

._crit_edge239:                                   ; preds = %bb.ai, %bb.n, %.lr.ph238
  %exitcond277.not = icmp eq i64 %.sroa.048.0242, %.sroa.047.0
  br i1 %exitcond277.not, label %._crit_edge244, label %bb.i

bb.r:                                             ; preds = %bb.q
  %.not130 = icmp eq i64 %i.am, %.sroa.048.0242
  %.pre282 = add i64 %i.ad, %i.am                 ; 6 uses
  br i1 %.not130, label %._crit_edge280, label %bb.s

._crit_edge281.a:                                 ; preds = %._crit_edge281, %bb.v
  %.pre-phi = phi i64 [ %.pre, %._crit_edge281 ], [ %i.at, %bb.v ] ; 3 uses
  %i.aq = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.aq, label %bb.aa, label %bb.ab

._crit_edge280:                                   ; preds = %bb.r, %bb.v
  %i.ar = icmp ult i64 %.pre282, %i.t
  br i1 %i.ar, label %bb.x, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.as = icmp ult i64 %.pre282, %i.t
  br i1 %i.as, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.at = add i64 %i.r, %i.am                     ; 4 uses
  %i.au = icmp ult i64 %i.at, %i.t
  br i1 %i.au, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre282, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre282
  %i.aw = load i64, ptr %i.av, align 8, !noundef !3
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.at
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !3
  %i.az = icmp ult i64 %i.aw, %i.ay
  br i1 %i.az, label %._crit_edge281.a, label %._crit_edge280

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14
  unreachable

bb.x:                                             ; preds = %._crit_edge280
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre282
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !3
  %i.bc = add i64 %i.bb, 1
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge280
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre282, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #14
  unreachable

bb.z:                                             ; preds = %bb.aa, %bb.x
  %.sroa.014.0 = phi i64 [ %i.bh, %bb.aa ], [ %i.bc, %bb.x ] ; 5 uses
  %i.bd = sub i64 %.sroa.014.0, %i.am             ; 4 uses
  %i.be = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.bf = icmp ult i64 %i.bd, %.sroa.037.0
  %or.cond = and i1 %i.be, %i.bf
  br i1 %or.cond, label %bb.ad, label %bb.ac

bb.aa:                                            ; preds = %._crit_edge281.a
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !3
  br label %bb.z

bb.ab:                                            ; preds = %._crit_edge281.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14
  unreachable

bb.ac:                                            ; preds = %bb.z, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit
  %.sroa.020.0 = phi i64 [ %i.cb, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit ], [ %i.bd, %bb.z ]
  %.sroa.014.1 = phi i64 [ %i.ca, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit ], [ %.sroa.014.0, %bb.z ] ; 3 uses
  %i.bi = add i64 %i.am, %i.q                     ; 3 uses
  %i.bj = icmp ult i64 %i.bi, %i.t
  br i1 %i.bj, label %bb.af, label %bb.ag

bb.ad:                                            ; preds = %bb.z
  %i.bk = sub i64 %i.ae, %.sroa.014.0             ; 2 uses
  %i.bl = sub i64 %i.af, %i.bd                    ; 2 uses
  %i.bm = sub i64 %i.bk, %2
  %i.bn = sub i64 %i.bl, %5
  %.sroa.0.0.i142 = tail call noundef i64 @llvm.umin.i64(i64 %i.bn, i64 %i.bm) ; 3 uses
  %.not247 = icmp eq i64 %.sroa.0.0.i142, 0
  br i1 %.not247, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph229

.lr.ph229:                                        ; preds = %bb.ad, %bb.ae
  %.sroa.0.0.i136227 = phi i64 [ %i.bz, %bb.ae ], [ 0, %bb.ad ] ; 4 uses
  %i.bo = xor i64 %.sroa.0.0.i136227, -1          ; 2 uses
  %i.bp = add i64 %i.bl, %i.bo
  %i.bq = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) ; 2 uses
  %i.br = extractvalue { ptr, i64 } %i.bq, 1      ; 2 uses
  %i.bs = add i64 %i.bk, %i.bo
  %i.bt = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bt, 1
  %i.bv = icmp eq i64 %i.br, %i.bu
  br i1 %i.bv, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %.lr.ph229
  %i.bw = extractvalue { ptr, i64 } %i.bt, 0
  %i.bx = extractvalue { ptr, i64 } %i.bq, 0
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.bx, ptr nonnull readonly %i.bw, i64 %i.br), !alias.scope !29
  %i.by = icmp eq i32 %bcmp.i, 0
  br i1 %i.by, label %bb.ae, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

bb.ae:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.bz = add nuw i64 %.sroa.0.0.i136227, 1       ; 2 uses
  %exitcond276.not = icmp eq i64 %i.bz, %.sroa.0.0.i142
  br i1 %exitcond276.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph229

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %bb.ae, %.lr.ph229, %bb.ad
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.ad ], [ %.sroa.0.0.i136227, %.lr.ph229 ], [ %.sroa.0.0.i142, %bb.ae ], [ %.sroa.0.0.i136227, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ] ; 2 uses
  %i.ca = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.cb = add i64 %.sroa.0.0.i136.lcssa, %i.bd
  br label %bb.ac

bb.af:                                            ; preds = %bb.ac
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bi
  store i64 %.sroa.014.1, ptr %i.cc, align 8
  br i1 %.not, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bi, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #14
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cd = sub i64 %i.am, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.cd, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0242
  br i1 %.not131, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ak, %bb.af
  %.not.i137 = icmp slt i64 %.sroa.7169.1, %11
  %or.cond188 = select i1 %.sroa.12.1, i1 true, i1 %.not.i137
  br i1 %or.cond188, label %._crit_edge239, label %.lr.ph238

bb.aj:                                            ; preds = %bb.ah
  %i.ce = sub i64 %i.h, %i.cd                     ; 3 uses
  %i.cf = icmp ult i64 %i.ce, %i.k
  br i1 %i.cf, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ce
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !3
  %i.ci = add i64 %i.ch, %.sroa.014.1
  %.not132 = icmp ult i64 %i.ci, %.sroa.025.0
  br i1 %.not132, label %bb.ai, label %bb.am

bb.al:                                            ; preds = %bb.aj
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ce, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.cj = sub i64 %i.ae, %.sroa.014.1
  %i.ck = sub i64 %i.af, %.sroa.020.0
  br label %._crit_edge244.sink.split

bb.an:                                            ; preds = %bb.m
  %.not133 = icmp eq i64 %i.ai, %.sroa.048.0242
  %.pre286 = add i64 %i.ac, %i.ai                 ; 6 uses
  br i1 %.not133, label %._crit_edge278, label %bb.ao

._crit_edge279.a:                                 ; preds = %._crit_edge279, %bb.ar
  %.pre-phi285 = phi i64 [ %.pre284, %._crit_edge279 ], [ %i.co, %bb.ar ] ; 3 uses
  %i.cl = icmp ult i64 %.pre-phi285, %i.k
  br i1 %i.cl, label %bb.aw, label %bb.ax

._crit_edge278:                                   ; preds = %bb.an, %bb.ar
  %i.cm = icmp ult i64 %.pre286, %i.k
  br i1 %i.cm, label %bb.at, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.cn = icmp ult i64 %.pre286, %i.k
  br i1 %i.cn, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.co = add i64 %i.i, %i.ai                     ; 4 uses
  %i.cp = icmp ult i64 %i.co, %i.k
  br i1 %i.cp, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre286, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #14
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre286
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !3
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.co
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !3
  %i.cu = icmp ult i64 %i.cr, %i.ct
  br i1 %i.cu, label %._crit_edge279.a, label %._crit_edge278

bb.as:                                            ; preds = %bb.ap
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.co, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #14
  unreachable

bb.at:                                            ; preds = %._crit_edge278
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre286
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !3
  %i.cx = add i64 %i.cw, 1
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge278
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre286, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #14
  unreachable

bb.av:                                            ; preds = %bb.aw, %bb.at
  %.sroa.04.0 = phi i64 [ %i.dd, %bb.aw ], [ %i.cx, %bb.at ] ; 6 uses
  %i.cy = sub i64 %.sroa.04.0, %i.ai              ; 3 uses
  %i.cz = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.cz, i1 false
  %i.da = icmp ult i64 %i.cy, %i.d
  %i.db = and i1 %i.c, %.sroa.051.0
  %or.cond186 = select i1 %i.db, i1 %i.da, i1 false
  br i1 %or.cond186, label %bb.az, label %bb.ay

bb.aw:                                            ; preds = %._crit_edge279.a
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi285
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !3
  br label %bb.av

bb.ax:                                            ; preds = %._crit_edge279.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi285, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14
  unreachable

bb.ay:                                            ; preds = %bb.av, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit
  %.sroa.04.1 = phi i64 [ %i.dv, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit ], [ %.sroa.04.0, %bb.av ] ; 2 uses
  %i.de = add i64 %i.ai, %i.h                     ; 3 uses
  %i.df = icmp ult i64 %i.de, %i.k
  br i1 %i.df, label %bb.bb, label %bb.bc

bb.az:                                            ; preds = %bb.av
  %i.dg = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.dh = add i64 %i.cy, %5                       ; 2 uses
  %i.di = sub i64 %3, %i.dg
  %i.dj = sub i64 %6, %i.dh
  %.sroa.0.0.i144 = tail call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 %i.di) ; 3 uses
  %.not246 = icmp eq i64 %.sroa.0.0.i144, 0
  br i1 %.not246, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.az, %bb.ba
  %.sroa.0.0.i217 = phi i64 [ %i.du, %bb.ba ], [ 0, %bb.az ] ; 5 uses
  %i.dk = add i64 %.sroa.0.0.i217, %i.dh
  %i.dl = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.dk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) ; 2 uses
  %i.dm = extractvalue { ptr, i64 } %i.dl, 1      ; 2 uses
  %i.dn = add i64 %.sroa.0.0.i217, %i.dg
  %i.do = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) ; 2 uses
  %i.dp = extractvalue { ptr, i64 } %i.do, 1
  %i.dq = icmp eq i64 %i.dm, %i.dp
  br i1 %i.dq, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit147, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit147: ; preds = %.lr.ph
  %i.dr = extractvalue { ptr, i64 } %i.do, 0
  %i.ds = extractvalue { ptr, i64 } %i.dl, 0
  %bcmp.i146 = tail call i32 @bcmp(ptr nonnull readonly %i.ds, ptr nonnull readonly %i.dr, i64 %i.dm), !alias.scope !33
  %i.dt = icmp eq i32 %bcmp.i146, 0
  br i1 %i.dt, label %bb.ba, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

bb.ba:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit147
  %i.du = add nuw i64 %.sroa.0.0.i217, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.du, %.sroa.0.0.i144
  br i1 %exitcond.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit147, %bb.ba, %.lr.ph, %bb.az
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.az ], [ %.sroa.0.0.i217, %.lr.ph ], [ %.sroa.0.0.i144, %bb.ba ], [ %.sroa.0.0.i217, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit147 ]
  %i.dv = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.ay

bb.bb:                                            ; preds = %bb.ay
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.de
  store i64 %.sroa.04.1, ptr %i.dw, align 8
  br i1 %.not, label %bb.bd, label %bb.be

bb.bc:                                            ; preds = %bb.ay
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.de, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #14
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bg, %bb.bb
  %.not.i = icmp slt i64 %.sroa.7.1, %11
  %or.cond187 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond187, label %.lr.ph238.preheader, label %.lr.ph224

.lr.ph238.preheader:                              ; preds = %.lr.ph224, %bb.j, %bb.bd
  br label %.lr.ph238

bb.be:                                            ; preds = %bb.bb
  %i.dx = sub i64 %i.ai, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.dx, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0242
  br i1 %.not134.not, label %bb.bf, label %bb.bd

bb.bf:                                            ; preds = %bb.be
  %i.dy = sub i64 %i.q, %i.dx                     ; 3 uses
  %i.dz = icmp ult i64 %i.dy, %i.t
  br i1 %i.dz, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.dy
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !3
  %i.ec = add i64 %i.eb, %.sroa.04.1
  %.not135 = icmp ult i64 %i.ec, %.sroa.025.0
  br i1 %.not135, label %bb.bd, label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dy, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.ed = add i64 %.sroa.04.0, %2
  %i.ee = add i64 %i.cy, %5
  br label %._crit_edge244.sink.split

._crit_edge244.sink.split:                        ; preds = %bb.bi, %bb.am
  %.sink350 = phi i64 [ %i.cj, %bb.am ], [ %i.ed, %bb.bi ]
  %.sink348 = phi i64 [ %i.ck, %bb.am ], [ %i.ee, %bb.bi ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink350, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink348, ptr %i.eg, align 8
  br label %._crit_edge244

._crit_edge244:                                   ; preds = %bb.i, %._crit_edge239, %._crit_edge244.sink.split
  %.sink = phi i64 [ 1, %._crit_edge244.sink.split ], [ 0, %._crit_edge239 ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQIB1D_QINtNtB4_7compact7CompactIB15_mEB2y_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %.sroa.05.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5)
  %i.e = add i64 %.sroa.05.0, %.sroa.0.0          ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %.sroa.011.0 = sub i64 %i.e, %i.f
  %i.g = add nuw i64 %.sroa.011.0, 1              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.h = shl i64 %i.g, 1                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !noalias !40
  %i.i = load i64, ptr %i.b, align 8, !range !43, !noalias !40, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !44, !noalias !40, !noundef !3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms5myersNtB2_1V3new.exit, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !40
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #14, !noalias !40
  unreachable

_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms5myersNtB2_1V3new.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !40, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.g, ptr %i.p, align 8, !alias.scope !37
  store i64 %i.l, ptr %i.d, align 8, !alias.scope !37
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !37
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !49
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms5myersNtB2_1V3new.exit
  %i.q = load i64, ptr %i.a, align 8, !range !43, !noalias !49, !noundef !3
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !44, !noalias !49, !noundef !3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.e, !prof !45

bb.c:                                             ; preds = %.noexc
  %i.v = load i64, ptr %i.u, align 8, !noalias !49
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #14
          to label %.noexc19 unwind label %bb.d

.noexc19:                                         ; preds = %bb.c
  unreachable

.body:                                            ; preds = %bb.h, %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.w, %bb.d ], [ %i.aa, %bb.h ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VEBH_(ptr noalias noundef align 8 dereferenceable(32) %i.d) #15
          to label %common.resume unwind label %bb.l

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsiqiOkcJdymw_7similar.exit.i, %bb.c, %_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms5myersNtB2_1V3new.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %.noexc
  %i.x = load ptr, ptr %i.u, align 8, !noalias !49, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !49
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.g, ptr %i.y, align 8, !alias.scope !46
  store i64 %i.t, ptr %i.c, align 8, !alias.scope !46
  %.sroa.4.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx.i17, align 8, !alias.scope !46
  %.sroa.5.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx.i18, align 8, !alias.scope !46
  invoke fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactIBT_mEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef align 8 dereferenceable(32) %i.c, ptr noalias noundef align 8 dereferenceable(32) %i.d, i64 %7, i32 noundef %8)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VEBH_(ptr noalias noundef align 8 dereferenceable(32) %i.c) #15
          to label %.body unwind label %bb.l

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsiqiOkcJdymw_7similar.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsiqiOkcJdymw_7similar.exit.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VEBH_.exit unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsiqiOkcJdymw_7similar.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VEBH_.exit24 unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VEBH_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VEBH_.exit24: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VEBH_.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.l:                                             ; preds = %bb.f, %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQIB1D_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2y_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %.sroa.05.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5)
end_hunk_0
begin_hunk_1_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEEB6_:bb.a

.noexc.us.i202:                                   ; preds = %bb.fy
  %i.aae = load ptr, ptr %i.zm, align 8, !alias.scope !2553, !noalias !2561, !nonnull !3, !align !167, !noundef !3 ; 3 uses
  %i.aaf = load i64, ptr %i.zn, align 8, !alias.scope !2553, !noalias !2561, !noundef !3
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  %i.aah = load i64, ptr %i.aag, align 8, !alias.scope !2562, !noalias !2565, !noundef !3
  %i.aai = sub i64 %i.aaf, %i.aah                 ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  %i.aak = load i64, ptr %i.aaj, align 8, !alias.scope !2562, !noalias !2565, !noundef !3 ; 2 uses
  %i.aal = icmp ult i64 %i.aai, %i.aak
  br i1 %i.aal, label %bb.fz, label %.invoke.i

bb.fz:                                            ; preds = %.noexc.us.i202
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %i.aan = load ptr, ptr %i.aam, align 8, !alias.scope !2556, !noalias !2559, !nonnull !3, !noundef !3
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.aaa
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  %i.aaq = load ptr, ptr %i.aap, align 8, !alias.scope !2562, !noalias !2565, !nonnull !3, !noundef !3
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %i.aai
  %.val225.us.i203 = load i32, ptr %i.aao, align 4, !noundef !3
  %.val226.us.i204 = load i32, ptr %i.aar, align 4, !noundef !3
  %i.aas = icmp eq i32 %.val225.us.i203, %.val226.us.i204
  br i1 %i.aas, label %bb.gd, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aat = add i64 %i.zo, %i.zj                   ; 3 uses
  %i.aau = load ptr, ptr %i.ql, align 8, !noalias !2475, !nonnull !3, !noundef !3 ; 3 uses
  %i.aav = load i64, ptr %i.qm, align 8, !noalias !2475, !noundef !3 ; 5 uses
  %i.aaw = icmp ult i64 %i.aat, %i.aav
  br i1 %i.aaw, label %bb.gb, label %.invoke.i

bb.gb:                                            ; preds = %bb.ga
  %i.aax = add i64 %.sroa.0105.0644.us.i201, %i.zi ; 3 uses
  %i.aay = icmp ult i64 %i.aax, %i.aav
  br i1 %i.aay, label %bb.gc, label %.invoke.i

bb.gc:                                            ; preds = %bb.gb
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aau, i64 %i.aat
  %i.aba = load i8, ptr %i.aaz, align 1, !noundef !3
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aau, i64 %i.aax
  %i.abc = load i8, ptr %i.abb, align 1, !noundef !3
  %.sroa.0.0.i.us.i205 = call noundef i8 @llvm.umax.i8(i8 %i.abc, i8 %i.aba)
  br label %bb.gf

bb.gd:                                            ; preds = %bb.fz
  %i.abd = add i64 %.sroa.0105.0644.us.i201, %i.zj ; 3 uses
  %i.abe = load i64, ptr %i.qm, align 8, !noalias !2475, !noundef !3 ; 3 uses
  %i.abf = icmp ult i64 %i.abd, %i.abe
  br i1 %i.abf, label %bb.ge, label %.invoke.i

bb.ge:                                            ; preds = %bb.gd
  %i.abg = load ptr, ptr %i.ql, align 8, !noalias !2475, !nonnull !3, !noundef !3 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 %i.abd
  %i.abi = load i8, ptr %i.abh, align 1, !noundef !3
  %i.abj = add i8 %i.abi, 1
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gc
  %i.abk = phi ptr [ %i.abg, %bb.ge ], [ %i.aau, %bb.gc ]
  %i.abl = phi i64 [ %i.abe, %bb.ge ], [ %i.aav, %bb.gc ] ; 2 uses
  %.sroa.04.0.us.i206 = phi i8 [ %i.abj, %bb.ge ], [ %.sroa.0.0.i.us.i205, %bb.gc ]
  %i.abm = add i64 %i.zo, %i.zi                   ; 3 uses
  %i.abn = icmp ult i64 %i.abm, %i.abl
  br i1 %i.abn, label %bb.gg, label %.invoke.i

bb.gg:                                            ; preds = %bb.gf
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.abm
  store i8 %.sroa.04.0.us.i206, ptr %i.abo, align 1
  %.not168.us.i207 = icmp eq i64 %i.zo, 0
  br i1 %.not168.us.i207, label %..loopexit20_crit_edge.split.us.i208, label %.lr.ph.split.us.i200

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i210: ; preds = %bb.fv
  %lpad.loopexit21.us.i211 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i109

..loopexit20_crit_edge.split.us.i208:             ; preds = %bb.gg
  %.not.i209 = icmp eq i64 %i.qn, 0
  br i1 %.not.i209, label %.lr.ph707.i125, label %.lr.ph682.split.i191

.lr.ph.split.i197:                                ; preds = %.lr.ph.i195
  %i.abp = add i64 %.sroa.088.0.i100, -1          ; 2 uses
  %i.abq = and i64 %i.abp, 1023
  %i.abr = icmp eq i64 %i.abq, 0
  br i1 %i.abr, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %.lr.ph.split.i197
  %i.abs = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i198

bb.gi:                                            ; preds = %bb.gh
  br i1 %i.abs, label %.loopexit5.i162, label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %.lr.ph.split.i197
  %i.abt = add i64 %i.abp, %.sroa.0252.0          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50) ]
  %i.abu = icmp ult i64 %i.abt, %.val51
  br i1 %i.abu, label %bb.gk, label %.invoke.i

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48) ]
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.gf, %bb.gd, %bb.gb, %bb.ga, %.noexc.us.i202, %bb.fy, %bb.fx, %bb.eg, %bb.ee, %bb.ed, %bb.ec, %.noexc195.i129, %bb.ea, %bb.dz, %bb.dw, %bb.ff, %bb.fd, %bb.fc, %bb.fb, %.noexc187.i144, %bb.ez, %bb.ey, %bb.es, %bb.eq, %bb.ep, %bb.eo, %.noexc191.i169, %bb.em, %bb.el, %bb.fp, %bb.fo, %.noexc183.i185, %bb.fm, %bb.fl, %bb.fi, %bb.gk, %bb.gj
  %i.abv = phi i64 [ %i.zk, %bb.gk ], [ %i.abt, %bb.gj ], [ %.val49, %bb.ey ], [ %.val51, %bb.fi ], [ %.val51, %bb.el ], [ %i.rt, %.noexc195.i129 ], [ %i.yw, %bb.fp ], [ %.val49, %bb.fl ], [ %i.ye, %.noexc183.i185 ], [ %i.yp, %bb.fo ], [ %i.xu, %bb.fm ], [ %i.uw, %bb.es ], [ %i.tz, %.noexc191.i169 ], [ %i.uk, %bb.eo ], [ %i.uo, %bb.eq ], [ %i.um, %bb.ep ], [ %i.tr, %bb.em ], [ %i.wx, %bb.ff ], [ %i.vy, %.noexc187.i144 ], [ %i.wj, %bb.fb ], [ %i.wp, %bb.fd ], [ %i.wl, %bb.fc ], [ %i.vo, %bb.ez ], [ %i.qz, %bb.dw ], [ %i.qy, %bb.dz ], [ %i.sw, %bb.eg ], [ %i.sg, %bb.ed ], [ %i.rk, %bb.ea ], [ %i.se, %bb.ec ], [ %i.sl, %bb.ee ], [ %i.aat, %bb.ga ], [ %i.abd, %bb.gd ], [ %i.aai, %.noexc.us.i202 ], [ %i.aax, %bb.gb ], [ %i.abm, %bb.gf ], [ %i.zs, %bb.fx ], [ %i.aaa, %bb.fy ]
  %i.abw = phi i64 [ %.val49, %bb.gk ], [ %.val51, %bb.gj ], [ %.val49, %bb.ey ], [ %.val51, %bb.fi ], [ %.val51, %bb.el ], [ %i.rv, %.noexc195.i129 ], [ %i.yr, %bb.fp ], [ %.val49, %bb.fl ], [ %i.yg, %.noexc183.i185 ], [ %i.yr, %bb.fo ], [ %i.xw, %bb.fm ], [ %.pre1201.i173, %bb.es ], [ %i.ub, %.noexc191.i169 ], [ %.pre1201.i173, %bb.eo ], [ %.pre1201.i173, %bb.eq ], [ %.pre1201.i173, %bb.ep ], [ %i.tt, %bb.em ], [ %.pre1199.i148, %bb.ff ], [ %i.wa, %.noexc187.i144 ], [ %.pre1199.i148, %bb.fb ], [ %.pre1199.i148, %bb.fd ], [ %.pre1199.i148, %bb.fc ], [ %i.vq, %bb.ez ], [ %.val51, %bb.dw ], [ %.val49, %bb.dz ], [ %.pre1197.i133, %bb.eg ], [ %.pre1197.i133, %bb.ed ], [ %i.rm, %bb.ea ], [ %.pre1197.i133, %bb.ec ], [ %.pre1197.i133, %bb.ee ], [ %i.aav, %bb.ga ], [ %i.abe, %bb.gd ], [ %i.aak, %.noexc.us.i202 ], [ %i.aav, %bb.gb ], [ %i.abl, %bb.gf ], [ %.val51, %bb.fx ], [ %i.aac, %bb.fy ]
  %i.abx = phi ptr [ @74, %bb.gk ], [ @73, %bb.gj ], [ @64, %bb.ey ], [ @69, %bb.fi ], [ @57, %bb.el ], [ @84, %.noexc195.i129 ], [ @72, %bb.fp ], [ @70, %bb.fl ], [ @84, %.noexc183.i185 ], [ @71, %bb.fo ], [ @84, %bb.fm ], [ @62, %bb.es ], [ @84, %.noexc191.i169 ], [ @59, %bb.eo ], [ @60, %bb.eq ], [ @61, %bb.ep ], [ @84, %bb.em ], [ @68, %bb.ff ], [ @84, %.noexc187.i144 ], [ @65, %bb.fb ], [ @66, %bb.fd ], [ @67, %bb.fc ], [ @84, %bb.ez ], [ @51, %bb.dw ], [ @52, %bb.dz ], [ @56, %bb.eg ], [ @55, %bb.ed ], [ @84, %bb.ea ], [ @53, %bb.ec ], [ @54, %bb.ee ], [ @75, %bb.ga ], [ @77, %bb.gd ], [ @84, %.noexc.us.i202 ], [ @76, %bb.gb ], [ @78, %bb.gf ], [ @73, %bb.fx ], [ @84, %bb.fy ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.abv, i64 noundef %i.abw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abx) #14
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i107

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.gl:                                            ; preds = %.loopexit.split-lp.i109
  %i.aby = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit: ; preds = %.loopexit5.i162
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2475
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread: ; preds = %bb.ar, %bb.as, %bb.dq, %bb.av, %bb.at, %.sink.split.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit
  %.val68 = load ptr, ptr %i.o, align 8           ; 4 uses
  %.val69 = load i64, ptr %i.p, align 8           ; 4 uses
  %.val70 = load ptr, ptr %i.m, align 8           ; 4 uses
  %.val71 = load i64, ptr %i.n, align 8           ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2567)
  call void @llvm.experimental.noalias.scope.decl(metadata !2570)
  %.sroa.025.0.i = call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %.sroa.0.0) ; 6 uses
  %.sroa.037.0.i = call i64 @llvm.usub.sat.i64(i64 %i.l, i64 %.sroa.0252.0) ; 4 uses
  %i.abz = sub i64 %.sroa.025.0.i, %.sroa.037.0.i ; 3 uses
  %i.aca = and i64 %i.abz, 1
  %.not.i212 = icmp eq i64 %i.aca, 0              ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.acc = load i64, ptr %i.acb, align 8, !alias.scope !2567, !noalias !2572, !noundef !3 ; 4 uses
  %i.acd = add i64 %i.acc, 1                      ; 5 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.acf = load i64, ptr %i.ace, align 8, !alias.scope !2567, !noalias !2572, !noundef !3 ; 16 uses
  %i.acg = icmp ult i64 %i.acd, %i.acf
  br i1 %i.acg, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread
  %i.ach = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aci = load ptr, ptr %i.ach, align 8, !alias.scope !2567, !noalias !2572, !nonnull !3, !noundef !3 ; 7 uses
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %i.acd
  store i64 0, ptr %i.acj, align 8, !noalias !2574
  %i.ack = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.acl = load i64, ptr %i.ack, align 8, !alias.scope !2570, !noalias !2575, !noundef !3 ; 4 uses
  %i.acm = add i64 %i.acl, 1                      ; 5 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aco = load i64, ptr %i.acn, align 8, !alias.scope !2570, !noalias !2575, !noundef !3 ; 16 uses
  %i.acp = icmp ult i64 %i.acm, %i.aco
  br i1 %i.acp, label %bb.go, label %bb.gp

bb.gn:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.acd, i64 noundef %i.acf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !noalias !2574
  unreachable

bb.go:                                            ; preds = %bb.gm
  %i.acq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.acr = load ptr, ptr %i.acq, align 8, !alias.scope !2570, !noalias !2575, !nonnull !3, !noundef !3 ; 7 uses
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %i.acm
  store i64 0, ptr %i.acs, align 8, !noalias !2574
  %i.act = add i64 %.sroa.025.0.i, %.sroa.037.0.i ; 2 uses
  %i.acu = lshr i64 %i.act, 1
  %.sroa.047.0.i = sub i64 %i.act, %i.acu         ; 3 uses
  %i.acv = icmp ult i64 %i.acf, 1152921504606846976
  call void @llvm.assume(i1 %i.acv)
  %.not128.not.i = icmp ugt i64 %i.acf, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.gr, label %bb.gq, !prof !4

bb.gp:                                            ; preds = %bb.gm
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.acm, i64 noundef %i.aco, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !noalias !2574
  unreachable

bb.gq:                                            ; preds = %bb.go
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !noalias !2574
  unreachable

bb.gr:                                            ; preds = %bb.go
  %i.acw = icmp ult i64 %i.aco, 1152921504606846976
  call void @llvm.assume(i1 %i.acw)
  %.not129.not.i = icmp samesign ugt i64 %i.aco, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph136.i, label %bb.gs, !prof !4

.lr.ph136.i:                                      ; preds = %bb.gr
  %i.acx = add i64 %i.acc, -1
  %i.acy = add i64 %i.acl, -1
  %i.acz = add i64 %.sroa.025.0.i, %.sroa.0.0     ; 2 uses
  %i.ada = add i64 %.sroa.037.0.i, %.sroa.0252.0  ; 2 uses
  br label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14, !noalias !2574
  unreachable

bb.gt:                                            ; preds = %._crit_edge132.i, %.lr.ph136.i
  %.sroa.048.0135.i = phi i64 [ 0, %.lr.ph136.i ], [ %i.adb, %._crit_edge132.i ] ; 11 uses
  %i.adb = add nuw nsw i64 %.sroa.048.0135.i, 1
  %i.adc = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2574
  br i1 %i.adc, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_EB6_.exit, label %.lr.ph119.preheader.i

.lr.ph119.preheader.i:                            ; preds = %bb.gt
  %11 = sub nsw i64 0, %.sroa.048.0135.i          ; 6 uses
  %.pre225.i = sub i64 %i.acd, %.sroa.048.0135.i
  br label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %bb.iy, %.lr.ph119.preheader.i
  %.sroa.7.0118.i = phi i64 [ %.sroa.7.1.i, %bb.iy ], [ %.sroa.048.0135.i, %.lr.ph119.preheader.i ] ; 2 uses
  %not..sroa.1418.0117.i = phi i64 [ 1, %bb.iy ], [ 0, %.lr.ph119.preheader.i ]
  %i.add = sub i64 %.sroa.7.0118.i, %not..sroa.1418.0117.i ; 11 uses
  %.not.i.not.i.i = icmp sgt i64 %i.add, %.sroa.7.0118.i
  br i1 %.not.i.not.i.i, label %.lr.ph131.preheader.i, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph119.i
  %i.ade = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.add, i64 %11)
  switch i8 %i.ade, label %bb.gv [
    i8 -1, label %.lr.ph131.preheader.i
    i8 0, label %bb.gx
    i8 1, label %bb.gw
  ]

bb.gv:                                            ; preds = %bb.gu
  unreachable

bb.gw:                                            ; preds = %bb.gu
  %i.adf = add i64 %i.add, -1
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gu
  %.sroa.11.1.i = phi i1 [ true, %bb.gu ], [ false, %bb.gw ]
  %.sroa.7.1.i = phi i64 [ %i.add, %bb.gu ], [ %i.adf, %bb.gw ] ; 2 uses
  %i.adg = icmp eq i64 %i.add, %11
  br i1 %i.adg, label %._crit_edge220.i, label %bb.id

.lr.ph131.preheader.i:                            ; preds = %bb.iy, %bb.gu, %.lr.ph119.i
  %.pre.i216 = sub i64 %i.acm, %.sroa.048.0135.i
  br label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %bb.hy, %.lr.ph131.preheader.i
  %not..sroa.1727.0129.i = phi i64 [ 1, %bb.hy ], [ 0, %.lr.ph131.preheader.i ]
  %.sroa.726.0128.i = phi i64 [ %.sroa.726.1.i, %bb.hy ], [ %.sroa.048.0135.i, %.lr.ph131.preheader.i ] ; 2 uses
  %i.adh = sub i64 %.sroa.726.0128.i, %not..sroa.1727.0129.i ; 11 uses
  %.not.i.not.i152.i = icmp sgt i64 %i.adh, %.sroa.726.0128.i
  br i1 %.not.i.not.i152.i, label %._crit_edge132.i, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph131.i
  %i.adi = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.adh, i64 %11)
  switch i8 %i.adi, label %bb.gz [
    i8 -1, label %._crit_edge132.i
    i8 0, label %bb.hb
    i8 1, label %bb.ha
  ]

bb.gz:                                            ; preds = %bb.gy
  unreachable

bb.ha:                                            ; preds = %bb.gy
  %i.adj = add i64 %i.adh, -1
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gy
  %.sroa.726.1.i = phi i64 [ %i.adh, %bb.gy ], [ %i.adj, %bb.ha ] ; 2 uses
  %.sroa.12.1.i214 = phi i1 [ true, %bb.gy ], [ false, %bb.ha ]
  %i.adk = icmp eq i64 %i.adh, %11
  br i1 %i.adk, label %._crit_edge222.i, label %bb.hc

._crit_edge132.i:                                 ; preds = %bb.hy, %bb.gy, %.lr.ph131.i
  %exitcond218.not.i = icmp eq i64 %.sroa.048.0135.i, %.sroa.047.0.i
  br i1 %exitcond218.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_EB6_.exit, label %bb.gt

bb.hc:                                            ; preds = %bb.hb
  %.not130.i = icmp eq i64 %i.adh, %.sroa.048.0135.i
  %.pre223.i = add i64 %i.acy, %i.adh             ; 6 uses
  br i1 %.not130.i, label %._crit_edge221.i, label %bb.hd

._crit_edge222.i:                                 ; preds = %bb.hb, %bb.hg
  %.pre-phi.i = phi i64 [ %i.ado, %bb.hg ], [ %.pre.i216, %bb.hb ] ; 3 uses
  %i.adl = icmp ult i64 %.pre-phi.i, %i.aco
  br i1 %i.adl, label %bb.hl, label %bb.hm

._crit_edge221.i:                                 ; preds = %bb.hg, %bb.hc
  %i.adm = icmp ult i64 %.pre223.i, %i.aco
  br i1 %i.adm, label %bb.hi, label %bb.hj

bb.hd:                                            ; preds = %bb.hc
  %i.adn = icmp ult i64 %.pre223.i, %i.aco
  br i1 %i.adn, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.ado = add i64 %i.adh, %i.acm                 ; 4 uses
  %i.adp = icmp ult i64 %i.ado, %i.aco
  br i1 %i.adp, label %bb.hg, label %bb.hh

bb.hf:                                            ; preds = %bb.hd
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre223.i, i64 noundef %i.aco, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14, !noalias !2574
  unreachable

bb.hg:                                            ; preds = %bb.he
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %.pre223.i
  %i.adr = load i64, ptr %i.adq, align 8, !noalias !2574, !noundef !3
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %i.ado
  %i.adt = load i64, ptr %i.ads, align 8, !noalias !2574, !noundef !3
  %i.adu = icmp ult i64 %i.adr, %i.adt
  br i1 %i.adu, label %._crit_edge222.i, label %._crit_edge221.i

bb.hh:                                            ; preds = %bb.he
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ado, i64 noundef %i.aco, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14, !noalias !2574
  unreachable

bb.hi:                                            ; preds = %._crit_edge221.i
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %.pre223.i
  %i.adw = load i64, ptr %i.adv, align 8, !noalias !2574, !noundef !3
  %i.adx = add i64 %i.adw, 1
  br label %bb.hk

bb.hj:                                            ; preds = %._crit_edge221.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre223.i, i64 noundef %i.aco, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #14, !noalias !2574
  unreachable

bb.hk:                                            ; preds = %bb.hl, %bb.hi
  %.sroa.014.0.i = phi i64 [ %i.aec, %bb.hl ], [ %i.adx, %bb.hi ] ; 5 uses
  %i.ady = sub i64 %.sroa.014.0.i, %i.adh         ; 4 uses
  %i.adz = icmp ult i64 %.sroa.014.0.i, %.sroa.025.0.i
  %i.aea = icmp ult i64 %i.ady, %.sroa.037.0.i
  %or.cond.i215 = and i1 %i.adz, %i.aea
  br i1 %or.cond.i215, label %bb.ho, label %bb.hn

bb.hl:                                            ; preds = %._crit_edge222.i
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %.pre-phi.i
  %i.aec = load i64, ptr %i.aeb, align 8, !noalias !2574, !noundef !3
  br label %bb.hk

bb.hm:                                            ; preds = %._crit_edge222.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.aco, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14, !noalias !2574
  unreachable

bb.hn:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_EB6_.exit.i, %bb.hk
  %.sroa.020.0.i = phi i64 [ %i.afr, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_EB6_.exit.i ], [ %i.ady, %bb.hk ]
  %.sroa.014.1.i = phi i64 [ %i.afq, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_EB6_.exit.i ], [ %.sroa.014.0.i, %bb.hk ] ; 3 uses
  %i.aed = add i64 %i.adh, %i.acl                 ; 3 uses
  %i.aee = icmp ult i64 %i.aed, %i.aco
  br i1 %i.aee, label %bb.hv, label %bb.hw

bb.ho:                                            ; preds = %bb.hk
  %i.aef = sub i64 %i.acz, %.sroa.014.0.i         ; 2 uses
  %i.aeg = sub i64 %i.ada, %i.ady                 ; 2 uses
  %i.aeh = sub i64 %i.aef, %.sroa.0.0
  %i.aei = sub i64 %i.aeg, %.sroa.0252.0
  %.sroa.0.0.i156.i = call noundef i64 @llvm.umin.i64(i64 %i.aei, i64 %i.aeh) ; 3 uses
  %.not140.i = icmp eq i64 %.sroa.0.0.i156.i, 0
  br i1 %.not140.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_EB6_.exit.i, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %bb.ho
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hu, %.lr.ph124.i
  %.sroa.0.0.i136122.i = phi i64 [ 0, %.lr.ph124.i ], [ %i.afp, %bb.hu ] ; 3 uses
  %i.aej = xor i64 %.sroa.0.0.i136122.i, -1       ; 2 uses
  %i.aek = add i64 %i.aeg, %i.aej                 ; 3 uses
  %i.ael = icmp ult i64 %i.aek, %.val71
  br i1 %i.ael, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aek, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14, !noalias !2576
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i: ; preds = %bb.hp
  %i.aem = add i64 %i.aef, %i.aej                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.aen = icmp ult i64 %i.aem, %.val69
  br i1 %i.aen, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit157.i, label %bb.hr

bb.hr:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aem, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #14, !noalias !2579
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit157.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i
  %i.aeo = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.aek ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2582)
  call void @llvm.experimental.noalias.scope.decl(metadata !2585)
  %i.aep = load ptr, ptr %i.aeo, align 8, !alias.scope !2582, !noalias !2587, !nonnull !3, !align !167, !noundef !3 ; 3 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %i.aer = load i64, ptr %i.aeq, align 8, !alias.scope !2582, !noalias !2587, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !2588)
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aep, i64 24
  %i.aet = load i64, ptr %i.aes, align 8, !alias.scope !2588, !noalias !2591, !noundef !3
  %i.aeu = sub i64 %i.aer, %i.aet                 ; 3 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aep, i64 16
  %i.aew = load i64, ptr %i.aev, align 8, !alias.scope !2588, !noalias !2591, !noundef !3 ; 2 uses
  %i.aex = icmp ult i64 %i.aeu, %i.aew
  br i1 %i.aex, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit139.i, label %bb.hs

bb.hs:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit157.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aeu, i64 noundef %i.aew, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !2593
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit139.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit157.i
  %i.aey = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.aem ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aep, i64 8
  %i.afa = load ptr, ptr %i.aez, align 8, !alias.scope !2588, !noalias !2591, !nonnull !3, !noundef !3
  %i.afb = load ptr, ptr %i.aey, align 8, !alias.scope !2585, !noalias !2594, !nonnull !3, !align !167, !noundef !3 ; 3 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  %i.afd = load i64, ptr %i.afc, align 8, !alias.scope !2585, !noalias !2594, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !2595)
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afb, i64 24
  %i.aff = load i64, ptr %i.afe, align 8, !alias.scope !2595, !noalias !2598, !noundef !3
  %i.afg = sub i64 %i.afd, %i.aff                 ; 3 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afb, i64 16
  %i.afi = load i64, ptr %i.afh, align 8, !alias.scope !2595, !noalias !2598, !noundef !3 ; 2 uses
  %i.afj = icmp ult i64 %i.afg, %i.afi
  br i1 %i.afj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit138.i, label %bb.ht

bb.ht:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit139.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.afg, i64 noundef %i.afi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !2600
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit138.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit139.i
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %i.aeu
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  %i.afm = load ptr, ptr %i.afl, align 8, !alias.scope !2595, !noalias !2598, !nonnull !3, !noundef !3
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.afm, i64 %i.afg
  %.val141.i = load i32, ptr %i.afk, align 4, !noalias !2574, !noundef !3
  %.val142.i = load i32, ptr %i.afn, align 4, !noalias !2574, !noundef !3
  %i.afo = icmp eq i32 %.val141.i, %.val142.i
  br i1 %i.afo, label %bb.hu, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_EB6_.exit.i

bb.hu:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit138.i
  %i.afp = add nuw i64 %.sroa.0.0.i136122.i, 1    ; 2 uses
  %exitcond217.not.i = icmp eq i64 %i.afp, %.sroa.0.0.i156.i
  br i1 %exitcond217.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_EB6_.exit.i, label %bb.hp

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_EB6_.exit.i: ; preds = %bb.hu, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit138.i, %bb.ho
  %.sroa.0.0.i136.lcssa.i = phi i64 [ 0, %bb.ho ], [ %.sroa.0.0.i136122.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit138.i ], [ %.sroa.0.0.i156.i, %bb.hu ] ; 2 uses
  %i.afq = add i64 %.sroa.0.0.i136.lcssa.i, %.sroa.014.0.i
  %i.afr = add i64 %.sroa.0.0.i136.lcssa.i, %i.ady
  br label %bb.hn

bb.hv:                                            ; preds = %bb.hn
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %i.aed
  store i64 %.sroa.014.1.i, ptr %i.afs, align 8, !noalias !2574
  br i1 %.not.i212, label %bb.hx, label %bb.hy

bb.hw:                                            ; preds = %bb.hn
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aed, i64 noundef %i.aco, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #14, !noalias !2574
  unreachable

bb.hx:                                            ; preds = %bb.hv
  %i.aft = sub i64 %i.adh, %i.abz                 ; 2 uses
  %.sroa.024.0.i = call i64 @llvm.abs.i64(i64 %i.aft, i1 false)
  %.not131.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.048.0135.i
  br i1 %.not131.i, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.ia, %bb.hx, %bb.hv
  %.not.i151.i = icmp slt i64 %.sroa.726.1.i, %11
  %or.cond43.i = select i1 %.sroa.12.1.i214, i1 true, i1 %.not.i151.i
  br i1 %or.cond43.i, label %._crit_edge132.i, label %.lr.ph131.i

bb.hz:                                            ; preds = %bb.hx
  %i.afu = sub i64 %i.acc, %i.aft                 ; 3 uses
  %i.afv = icmp ult i64 %i.afu, %i.acf
  br i1 %i.afv, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.afw = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %i.afu
  %i.afx = load i64, ptr %i.afw, align 8, !noalias !2574, !noundef !3
  %i.afy = add i64 %i.afx, %.sroa.014.1.i
  %.not132.i = icmp ult i64 %i.afy, %.sroa.025.0.i
  br i1 %.not132.i, label %bb.hy, label %bb.ic

bb.ib:                                            ; preds = %bb.hz
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.afu, i64 noundef %i.acf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14, !noalias !2574
  unreachable

bb.ic:                                            ; preds = %bb.ia
  %i.afz = sub i64 %i.acz, %.sroa.014.1.i
  %i.aga = sub i64 %i.ada, %.sroa.020.0.i
  br label %bb.je

bb.id:                                            ; preds = %bb.gx
  %.not133.i = icmp eq i64 %i.add, %.sroa.048.0135.i
  %.pre227.i = add i64 %i.acx, %i.add             ; 6 uses
  br i1 %.not133.i, label %._crit_edge219.i, label %bb.ie

._crit_edge220.i:                                 ; preds = %bb.gx, %bb.ih
  %.pre-phi226.i = phi i64 [ %i.age, %bb.ih ], [ %.pre225.i, %bb.gx ] ; 3 uses
  %i.agb = icmp ult i64 %.pre-phi226.i, %i.acf
  br i1 %i.agb, label %bb.im, label %bb.in

._crit_edge219.i:                                 ; preds = %bb.ih, %bb.id
  %i.agc = icmp ult i64 %.pre227.i, %i.acf
  br i1 %i.agc, label %bb.ij, label %bb.ik

bb.ie:                                            ; preds = %bb.id
  %i.agd = icmp ult i64 %.pre227.i, %i.acf
  br i1 %i.agd, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.age = add i64 %i.add, %i.acd                 ; 4 uses
  %i.agf = icmp ult i64 %i.age, %i.acf
  br i1 %i.agf, label %bb.ih, label %bb.ii

bb.ig:                                            ; preds = %bb.ie
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre227.i, i64 noundef %i.acf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #14, !noalias !2574
  unreachable

bb.ih:                                            ; preds = %bb.if
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %.pre227.i
  %i.agh = load i64, ptr %i.agg, align 8, !noalias !2574, !noundef !3
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %i.age
  %i.agj = load i64, ptr %i.agi, align 8, !noalias !2574, !noundef !3
  %i.agk = icmp ult i64 %i.agh, %i.agj
  br i1 %i.agk, label %._crit_edge220.i, label %._crit_edge219.i

bb.ii:                                            ; preds = %bb.if
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.age, i64 noundef %i.acf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #14, !noalias !2574
  unreachable

bb.ij:                                            ; preds = %._crit_edge219.i
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %.pre227.i
  %i.agm = load i64, ptr %i.agl, align 8, !noalias !2574, !noundef !3
  %i.agn = add i64 %i.agm, 1
  br label %bb.il

bb.ik:                                            ; preds = %._crit_edge219.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre227.i, i64 noundef %i.acf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #14, !noalias !2574
  unreachable

bb.il:                                            ; preds = %bb.im, %bb.ij
  %.sroa.04.0.i213 = phi i64 [ %i.ags, %bb.im ], [ %i.agn, %bb.ij ] ; 6 uses
  %i.ago = sub i64 %.sroa.04.0.i213, %i.add       ; 3 uses
  %i.agp = icmp ult i64 %.sroa.04.0.i213, %.pre
  %i.agq = icmp ult i64 %i.ago, %.pre1193
  %or.cond41.i = select i1 %i.agp, i1 %i.agq, i1 false
  br i1 %or.cond41.i, label %bb.ip, label %bb.io

bb.im:                                            ; preds = %._crit_edge220.i
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %.pre-phi226.i
  %i.ags = load i64, ptr %i.agr, align 8, !noalias !2574, !noundef !3
  br label %bb.il

bb.in:                                            ; preds = %._crit_edge220.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi226.i, i64 noundef %i.acf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14, !noalias !2574
  unreachable

bb.io:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_EB6_.exit.i, %bb.il
  %.sroa.04.1.i = phi i64 [ %i.aid, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_EB6_.exit.i ], [ %.sroa.04.0.i213, %bb.il ] ; 2 uses
  %i.agt = add i64 %i.add, %i.acc                 ; 3 uses
  %i.agu = icmp ult i64 %i.agt, %i.acf
  br i1 %i.agu, label %bb.iw, label %bb.ix

bb.ip:                                            ; preds = %bb.il
  %i.agv = add i64 %.sroa.04.0.i213, %.sroa.0.0   ; 4 uses
  %i.agw = add i64 %i.ago, %.sroa.0252.0          ; 3 uses
  %i.agx = sub i64 %i.k, %i.agv
  %i.agy = sub i64 %i.l, %i.agw
  %.sroa.0.0.i158.i = call noundef i64 @llvm.umin.i64(i64 %i.agy, i64 %i.agx) ; 3 uses
  %.not139.i = icmp eq i64 %.sroa.0.0.i158.i, 0
  br i1 %.not139.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_EB6_.exit.i, label %.lr.ph.i216

.lr.ph.i216:                                      ; preds = %bb.ip
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  %umax215.i = call i64 @llvm.umax.i64(i64 %.val69, i64 %i.agv) ; 2 uses
  %i.agz = sub i64 %umax215.i, %i.agv
  %invariant.gep.i = getelementptr [16 x i8], ptr %.val68, i64 %i.agv
  br label %bb.iq

bb.iq:                                            ; preds = %bb.iv, %.lr.ph.i216
  %.sroa.0.0.i114.i = phi i64 [ 0, %.lr.ph.i216 ], [ %i.aic, %bb.iv ] ; 5 uses
  %i.aha = add nuw i64 %.sroa.0.0.i114.i, %i.agw  ; 2 uses
  %i.ahb = icmp ult i64 %i.aha, %.val71
  br i1 %i.ahb, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit159.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %umax.i217 = call i64 @llvm.umax.i64(i64 %.val71, i64 %i.agw)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i217, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !noalias !2601
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit159.i: ; preds = %bb.iq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %exitcond.not.i218 = icmp eq i64 %.sroa.0.0.i114.i, %i.agz
  br i1 %exitcond.not.i218, label %bb.is, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit160.i

bb.is:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit159.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax215.i, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !noalias !2604
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit160.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit159.i
  %i.ahc = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.aha ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2607)
  call void @llvm.experimental.noalias.scope.decl(metadata !2610)
  %i.ahd = load ptr, ptr %i.ahc, align 8, !alias.scope !2607, !noalias !2612, !nonnull !3, !align !167, !noundef !3 ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahc, i64 8
  %i.ahf = load i64, ptr %i.ahe, align 8, !alias.scope !2607, !noalias !2612, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !2613)
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahd, i64 24
  %i.ahh = load i64, ptr %i.ahg, align 8, !alias.scope !2613, !noalias !2616, !noundef !3
  %i.ahi = sub i64 %i.ahf, %i.ahh                 ; 3 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  %i.ahk = load i64, ptr %i.ahj, align 8, !alias.scope !2613, !noalias !2616, !noundef !3 ; 2 uses
  %i.ahl = icmp ult i64 %i.ahi, %i.ahk
  br i1 %i.ahl, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit137.i, label %bb.it

bb.it:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit160.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ahi, i64 noundef %i.ahk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !2618
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit137.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit160.i
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.sroa.0.0.i114.i ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %i.ahn = load ptr, ptr %i.ahm, align 8, !alias.scope !2613, !noalias !2616, !nonnull !3, !noundef !3
  %i.aho = load ptr, ptr %gep.i, align 8, !alias.scope !2610, !noalias !2619, !nonnull !3, !align !167, !noundef !3 ; 3 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.ahq = load i64, ptr %i.ahp, align 8, !alias.scope !2610, !noalias !2619, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.aho, i64 24
  %i.ahs = load i64, ptr %i.ahr, align 8, !alias.scope !2620, !noalias !2623, !noundef !3
  %i.aht = sub i64 %i.ahq, %i.ahs                 ; 3 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aho, i64 16
  %i.ahv = load i64, ptr %i.ahu, align 8, !alias.scope !2620, !noalias !2623, !noundef !3 ; 2 uses
  %i.ahw = icmp ult i64 %i.aht, %i.ahv
  br i1 %i.ahw, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit.i, label %bb.iu

bb.iu:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit137.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aht, i64 noundef %i.ahv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !2625
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit137.i
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %i.ahi
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.aho, i64 8
  %i.ahz = load ptr, ptr %i.ahy, align 8, !alias.scope !2620, !noalias !2623, !nonnull !3, !noundef !3
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.aht
  %.val.i219 = load i32, ptr %i.ahx, align 4, !noalias !2574, !noundef !3
  %.val140.i = load i32, ptr %i.aia, align 4, !noalias !2574, !noundef !3
  %i.aib = icmp eq i32 %.val.i219, %.val140.i
  br i1 %i.aib, label %bb.iv, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_EB6_.exit.i

bb.iv:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit.i
  %i.aic = add nuw i64 %.sroa.0.0.i114.i, 1       ; 2 uses
  %exitcond216.not.i = icmp eq i64 %i.aic, %.sroa.0.0.i158.i
  br i1 %exitcond216.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_EB6_.exit.i, label %bb.iq

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_EB6_.exit.i: ; preds = %bb.iv, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit.i, %bb.ip
  %.sroa.0.0.i.lcssa.i = phi i64 [ 0, %bb.ip ], [ %.sroa.0.0.i114.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit.i ], [ %.sroa.0.0.i158.i, %bb.iv ]
  %i.aid = add i64 %.sroa.0.0.i.lcssa.i, %.sroa.04.0.i213
  br label %bb.io

bb.iw:                                            ; preds = %bb.io
  %i.aie = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %i.agt
  store i64 %.sroa.04.1.i, ptr %i.aie, align 8, !noalias !2574
  br i1 %.not.i212, label %bb.iy, label %bb.iz

bb.ix:                                            ; preds = %bb.io
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.agt, i64 noundef %i.acf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #14, !noalias !2574
  unreachable

bb.iy:                                            ; preds = %bb.jb, %bb.iz, %bb.iw
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %11
  %or.cond42.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond42.i, label %.lr.ph131.preheader.i, label %.lr.ph119.i

bb.iz:                                            ; preds = %bb.iw
  %i.aif = sub i64 %i.add, %i.abz                 ; 2 uses
  %.sroa.010.0.i = call i64 @llvm.abs.i64(i64 %i.aif, i1 false)
  %.not134.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.048.0135.i
  br i1 %.not134.not.i, label %bb.ja, label %bb.iy

bb.ja:                                            ; preds = %bb.iz
  %i.aig = sub i64 %i.acl, %i.aif                 ; 3 uses
  %i.aih = icmp ult i64 %i.aig, %i.aco
  br i1 %i.aih, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.aii = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %i.aig
  %i.aij = load i64, ptr %i.aii, align 8, !noalias !2574, !noundef !3
  %i.aik = add i64 %i.aij, %.sroa.04.1.i
  %.not135.i = icmp ult i64 %i.aik, %.sroa.025.0.i
  br i1 %.not135.i, label %bb.iy, label %bb.jd

bb.jc:                                            ; preds = %bb.ja
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aig, i64 noundef %i.aco, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14, !noalias !2574
  unreachable

bb.jd:                                            ; preds = %bb.jb
  %i.ail = add i64 %.sroa.04.0.i213, %.sroa.0.0
  %i.aim = add i64 %i.ago, %.sroa.0252.0
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.ic
  %.sroa.7.0.ph = phi i64 [ %i.aim, %bb.jd ], [ %i.aga, %bb.ic ] ; 2 uses
  %.sroa.5.0.ph = phi i64 [ %i.ail, %bb.jd ], [ %i.afz, %bb.ic ] ; 2 uses
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.0.0, i64 noundef %.sroa.5.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.0252.0, i64 noundef %.sroa.7.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.5.0.ph, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.7.0.ph, i64 noundef %i.l, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.ap

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_EB6_.exit: ; preds = %._crit_edge132.i, %bb.gt
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.pre, i64 noundef %.sroa.0252.0)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.0252.0, i64 noundef %.pre1193)
  br label %bb.ap

.thread:                                          ; preds = %bb.ao
  %i.ain = sub nuw i64 %i.l, %.sroa.0252.0
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.0252.0, i64 noundef %i.ain)
  br label %bb.ap

bb.jf:                                            ; preds = %bb.ap
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.k, i64 noundef %i.l, i64 noundef %i.j)
  br label %bb.jg

bb.jg:                                            ; preds = %bb.ap, %bb.jf
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2n_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.h = add i64 %i.g, %2                         ; 2 uses
  %i.i = add i64 %i.g, %5                         ; 2 uses
  %i.j = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.h, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.i, i64 noundef %6) ; 4 uses
  %i.k = sub i64 %3, %i.j                         ; 11 uses
  %i.l = sub i64 %6, %i.j                         ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.val50 = load ptr, ptr %i.m, align 8           ; 14 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.val51 = load i64, ptr %i.n, align 8           ; 25 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val48 = load ptr, ptr %i.o, align 8           ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val49 = load i64, ptr %i.p, align 8           ; 22 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %5, i64 noundef %i.g)
  br label %bb.b

bb.d:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit, %bb.b
  %.sroa.0259.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0259.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit ] ; 45 uses
  %.sroa.0.0 = phi i64 [ %i.h, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit ] ; 43 uses
  %i.w = icmp ult i64 %.sroa.0.0, %i.k            ; 2 uses
  %i.x = icmp ult i64 %.sroa.0259.0, %i.l         ; 3 uses
  %or.cond333 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond333, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit, %bb.d
  br i1 %i.w, label %bb.ak, label %bb.al

bb.f:                                             ; preds = %bb.d
  %i.y = sub nuw i64 %i.k, %.sroa.0.0             ; 5 uses
  %i.z = sub nuw i64 %i.l, %.sroa.0259.0          ; 5 uses
  %i.aa = icmp ult i64 %i.y, 97
  %i.ab = icmp ult i64 %i.z, 97
  %or.cond.i = or i1 %i.ab, %i.aa
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 2 uses
  %.sroa.0.0.i73 = call noundef i64 @llvm.umax.i64(i64 %i.z, i64 %i.y)
  %i.ac = shl nuw i64 %.sroa.0.0.i72, 1
  %i.ad = icmp slt i64 %.sroa.0.0.i72, 0
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !45

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.052.0.i = phi i64 [ -1, %bb.h ], [ %i.ac, %bb.g ]
  %i.ae = icmp ult i64 %.sroa.0.0.i73, %.sroa.052.0.i
  br i1 %i.ae, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp ule i64 %i.z, %i.y
  %.not.i.fr = freeze i1 %.not.i                  ; 2 uses
  %i.af = icmp ule i64 %i.y, %i.z                 ; 2 uses
  br label %bb.k

.loopexit:                                        ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us692, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us654, %.outer.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us.us
  %.sroa.525.2.i.ph.lcssa507 = phi i64 [ %.sroa.525.0.i736, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us654 ], [ %.sroa.525.3.i.us, %.outer.us ], [ %.sroa.525.2.i.ph709.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us.us ], [ %.sroa.525.0.i736, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us692 ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa500 = phi i64 [ %.sroa.023.0.i737, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us654 ], [ %.sroa.023.2.i.us, %.outer.us ], [ %.sroa.023.1.i.ph710.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us.us ], [ %.sroa.023.0.i737, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us692 ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa493 = phi i64 [ %.sroa.9.0.i738, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us654 ], [ %.sroa.9.3.i.us, %.outer.us ], [ %.sroa.9.2.i.ph711.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us.us ], [ %.sroa.9.0.i738, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us692 ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa486 = phi i64 [ %.sroa.12.0.i739, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us654 ], [ %.sroa.12.3.i.us, %.outer.us ], [ %.sroa.12.2.i.ph712.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us.us ], [ %.sroa.12.0.i739, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us692 ] ; 2 uses
  %.not.i76 = icmp ugt i64 %spec.select334, 4
  %or.cond339 = select i1 %i.ag, i1 true, i1 %.not.i76
  br i1 %or.cond339, label %bb.ac, label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %.sroa.12.0.i739 = phi i64 [ undef, %bb.j ], [ %.sroa.12.2.i.ph.lcssa486, %.loopexit ] ; 3 uses
  %.sroa.9.0.i738 = phi i64 [ undef, %bb.j ], [ %.sroa.9.2.i.ph.lcssa493, %.loopexit ] ; 3 uses
  %.sroa.023.0.i737 = phi i64 [ 0, %bb.j ], [ %.sroa.023.1.i.ph.lcssa500, %.loopexit ] ; 3 uses
  %.sroa.525.0.i736 = phi i64 [ undef, %bb.j ], [ %.sroa.525.2.i.ph.lcssa507, %.loopexit ] ; 3 uses
  %.sroa.0293.0735 = phi i64 [ 0, %bb.j ], [ %spec.select334, %.loopexit ] ; 12 uses
  %i.ag = icmp eq i64 %.sroa.0293.0735, 4         ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.0293.0735, 1
  %spec.select334 = select i1 %i.ag, i64 4, i64 %i.ah ; 2 uses
  %i.ai = icmp eq i64 %.sroa.0293.0735, 0         ; 2 uses
  %i.aj = add i64 %.sroa.0293.0735, %.sroa.0.0    ; 6 uses
  %i.ak = icmp ult i64 %i.aj, %.val49
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.aj ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.fr = freeze i1 %i.ak
  %i.an = sub i64 %i.k, %i.aj
  br i1 %.fr, label %.lr.ph.us.preheader, label %.split713

.lr.ph.us.preheader:                              ; preds = %bb.k
  %i.ao = call i64 @llvm.usub.sat.i64(i64 %.val49, i64 %i.aj)
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.outer.us
  %.sroa.12.2.i.ph712.us = phi i64 [ %.sroa.12.3.i.us, %.outer.us ], [ %.sroa.12.0.i739, %.lr.ph.us.preheader ] ; 7 uses
  %.sroa.9.2.i.ph711.us = phi i64 [ %.sroa.9.3.i.us, %.outer.us ], [ %.sroa.9.0.i738, %.lr.ph.us.preheader ] ; 7 uses
  %.sroa.023.1.i.ph710.us = phi i64 [ %.sroa.023.2.i.us, %.outer.us ], [ %.sroa.023.0.i737, %.lr.ph.us.preheader ] ; 4 uses
  %.sroa.525.2.i.ph709.us = phi i64 [ %.sroa.525.3.i.us, %.outer.us ], [ %.sroa.525.0.i736, %.lr.ph.us.preheader ] ; 8 uses
  %.sroa.0295.0.ph708.us = phi i64 [ %spec.select335.us.us, %.outer.us ], [ 0, %.lr.ph.us.preheader ]
  br label %bb.w

.lr.ph704.us:                                     ; preds = %.lr.ph704.us.preheader, %bb.n
  %.sroa.01.0.i703.us = phi i64 [ %i.bf, %bb.n ], [ 0, %.lr.ph704.us.preheader ] ; 8 uses
  %i.ap = and i64 %.sroa.01.0.i703.us, 1023
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph704.us
  %i.ar = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2626
  br i1 %i.ar, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph704.us
  %i.as = add nuw i64 %.sroa.01.0.i703.us, %i.by  ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.01.0.i703.us, %i.ck
  br i1 %exitcond.not, label %.split715.us, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit84.us

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit84.us: ; preds = %bb.m
  %i.at = add nuw i64 %.sroa.01.0.i703.us, %i.aj  ; 2 uses
  %exitcond936.not = icmp eq i64 %.sroa.01.0.i703.us, %i.ao
  br i1 %exitcond936.not, label %.split719.us, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit85.us

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit85.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit84.us
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.as ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.at ; 2 uses
  %.val52.us = load ptr, ptr %i.au, align 8, !alias.scope !2631, !noalias !2634, !nonnull !3, !align !167, !noundef !3
  %i.aw = getelementptr i8, ptr %i.au, i64 8
  %.val53.us = load i64, ptr %i.aw, align 8, !alias.scope !2631, !noalias !2634, !noundef !3
  %.val54.us = load ptr, ptr %i.av, align 8       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.av, i64 8
  %.val55.us = load i64, ptr %i.ax, align 8
end_hunk_1
begin_hunk_2_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2n_NtNtB4_7capture7CaptureEEEEEB6_:bb.a
  %i.vx = extractvalue { ptr, i64 } %i.vw, 0
  %i.vy = extractvalue { ptr, i64 } %i.vw, 1      ; 2 uses
  %i.vz = load ptr, ptr %i.vk, align 8, !alias.scope !2789, !noalias !2792, !nonnull !3, !align !167, !noundef !3
  %i.wa = load i64, ptr %i.vl, align 8, !alias.scope !2789, !noalias !2792, !noundef !3
  %i.wb = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.vz, i64 noundef %i.wa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84)
          to label %.noexc181.us.i211 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i208 ; 2 uses

.noexc181.us.i211:                                ; preds = %.noexc.us.i210
  %i.wc = extractvalue { ptr, i64 } %i.wb, 1
  %i.wd = icmp eq i64 %i.vy, %i.wc
  br i1 %i.wd, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit.us.i218, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit.thread.us.i212

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit.us.i218: ; preds = %.noexc181.us.i211
  %i.we = extractvalue { ptr, i64 } %i.wb, 0
  %bcmp.i247.us.i219 = call i32 @bcmp(ptr nonnull readonly %i.vx, ptr nonnull readonly %i.we, i64 %i.vy), !alias.scope !2793
  %i.wf = icmp eq i32 %bcmp.i247.us.i219, 0
  br i1 %i.wf, label %bb.fi, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit.thread.us.i212

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit.thread.us.i212: ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit.us.i218, %.noexc181.us.i211
  %i.wg = add i64 %i.vm, %i.vh                    ; 3 uses
  %i.wh = load ptr, ptr %i.nv, align 8, !noalias !2735, !nonnull !3, !noundef !3 ; 3 uses
  %i.wi = load i64, ptr %i.nw, align 8, !noalias !2735, !noundef !3 ; 5 uses
  %i.wj = icmp ult i64 %i.wg, %i.wi
  br i1 %i.wj, label %bb.fg, label %.invoke.i

bb.fg:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit.thread.us.i212
  %i.wk = add i64 %.sroa.0105.0357.us.i207, %i.vg ; 3 uses
  %i.wl = icmp ult i64 %i.wk, %i.wi
  br i1 %i.wl, label %bb.fh, label %.invoke.i

bb.fh:                                            ; preds = %bb.fg
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.wg
  %i.wn = load i8, ptr %i.wm, align 1, !noundef !3
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.wk
  %i.wp = load i8, ptr %i.wo, align 1, !noundef !3
  %.sroa.0.0.i249.us.i213 = call noundef i8 @llvm.umax.i8(i8 %i.wp, i8 %i.wn)
  br label %bb.fk

bb.fi:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit.us.i218
  %i.wq = add i64 %.sroa.0105.0357.us.i207, %i.vh ; 3 uses
  %i.wr = load i64, ptr %i.nw, align 8, !noalias !2735, !noundef !3 ; 3 uses
  %i.ws = icmp ult i64 %i.wq, %i.wr
  br i1 %i.ws, label %bb.fj, label %.invoke.i

bb.fj:                                            ; preds = %bb.fi
  %i.wt = load ptr, ptr %i.nv, align 8, !noalias !2735, !nonnull !3, !noundef !3 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.wq
  %i.wv = load i8, ptr %i.wu, align 1, !noundef !3
  %i.ww = add i8 %i.wv, 1
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fh
  %i.wx = phi ptr [ %i.wt, %bb.fj ], [ %i.wh, %bb.fh ]
  %i.wy = phi i64 [ %i.wr, %bb.fj ], [ %i.wi, %bb.fh ] ; 2 uses
  %.sroa.04.0.us.i214 = phi i8 [ %i.ww, %bb.fj ], [ %.sroa.0.0.i249.us.i213, %bb.fh ]
  %i.wz = add i64 %i.vm, %i.vg                    ; 3 uses
  %i.xa = icmp ult i64 %i.wz, %i.wy
  br i1 %i.xa, label %bb.fl, label %.invoke.i

bb.fl:                                            ; preds = %bb.fk
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wx, i64 %i.wz
  store i8 %.sroa.04.0.us.i214, ptr %i.xb, align 1
  %.not168.us.i215 = icmp eq i64 %i.vm, 0
  br i1 %.not168.us.i215, label %..loopexit25_crit_edge.split.us.i216, label %.lr.ph.split.us.i206

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i208: ; preds = %.noexc.us.i210, %bb.ff, %bb.fc
  %lpad.loopexit26.us.i209 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i107

..loopexit25_crit_edge.split.us.i216:             ; preds = %bb.fl
  %.not.i217 = icmp eq i64 %i.nx, 0
  br i1 %.not.i217, label %.lr.ph410.i123.preheader, label %.lr.ph385.split.i197

.lr.ph410.i123.preheader:                         ; preds = %..loopexit25_crit_edge.split.us.i216
  %i.xc = sub i64 %.val49, %.sroa.0.0
  %invariant.gep = getelementptr [16 x i8], ptr %.val50, i64 %.sroa.0259.0
  %invariant.gep1337 = getelementptr [16 x i8], ptr %.val48, i64 %.sroa.0.0
  br label %.lr.ph410.i123

.lr.ph.split.i203:                                ; preds = %.lr.ph.i201
  %i.xd = add i64 %.sroa.088.0.i98, -1            ; 2 uses
  %i.xe = and i64 %i.xd, 1023
  %i.xf = icmp eq i64 %i.xe, 0
  br i1 %i.xf, label %bb.fm, label %bb.fo

bb.fm:                                            ; preds = %.lr.ph.split.i203
  %i.xg = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i204

bb.fn:                                            ; preds = %bb.fm
  br i1 %i.xg, label %.loopexit10.i156, label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %.lr.ph.split.i203
  %i.xh = add i64 %i.xd, %.sroa.0259.0            ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50) ]
  %i.xi = icmp ult i64 %i.xh, %.val51
  br i1 %i.xi, label %bb.fp, label %.invoke.i

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48) ]
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.fk, %bb.fi, %bb.fg, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit.thread.us.i212, %bb.fe, %bb.ds, %bb.dq, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit198.thread.i134, %bb.dp, %bb.dn, %bb.dk, %bb.en, %bb.el, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit190.thread.i147, %bb.ek, %bb.ei, %bb.ec, %bb.ea, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit194.thread.i169, %bb.dz, %bb.dx, %bb.ew, %bb.ev, %bb.et, %bb.eq, %bb.fp, %bb.fo
  %i.xj = phi i64 [ %i.vi, %bb.fp ], [ %i.rs, %bb.ec ], [ %i.tm, %bb.en ], [ %i.uu, %bb.ew ], [ %i.oi, %bb.dn ], [ %i.xh, %bb.fo ], [ %.val49, %bb.et ], [ %i.un, %bb.ev ], [ %.val51, %bb.eq ], [ %i.qo, %bb.dx ], [ %i.re, %bb.dz ], [ %i.rk, %bb.ea ], [ %i.ri, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit194.thread.i169 ], [ %i.se, %bb.ei ], [ %i.su, %bb.ek ], [ %i.te, %bb.el ], [ %i.ta, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit190.thread.i147 ], [ %i.pj, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit198.thread.i134 ], [ %i.oj, %bb.dk ], [ %i.qb, %bb.ds ], [ %i.po, %bb.dq ], [ %i.pd, %bb.dp ], [ %i.wk, %bb.fg ], [ %i.wq, %bb.fi ], [ %i.wz, %bb.fk ], [ %i.vq, %bb.fe ], [ %i.wg, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit.thread.us.i212 ]
  %i.xk = phi i64 [ %.val49, %bb.fp ], [ %i.rg, %bb.ec ], [ %i.sw, %bb.en ], [ %i.up, %bb.ew ], [ %.val49, %bb.dn ], [ %.val51, %bb.fo ], [ %.val49, %bb.et ], [ %i.up, %bb.ev ], [ %.val51, %bb.eq ], [ %.val51, %bb.dx ], [ %.pre640.i173, %bb.dz ], [ %.pre640.i173, %bb.ea ], [ %i.rg, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit194.thread.i169 ], [ %.val49, %bb.ei ], [ %.pre636.i155, %bb.ek ], [ %.pre636.i155, %bb.el ], [ %i.sw, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit190.thread.i147 ], [ %i.pf, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit198.thread.i134 ], [ %.val51, %bb.dk ], [ %i.pf, %bb.ds ], [ %.pre632.i177, %bb.dq ], [ %.pre632.i177, %bb.dp ], [ %i.wi, %bb.fg ], [ %i.wr, %bb.fi ], [ %i.wy, %bb.fk ], [ %.val51, %bb.fe ], [ %i.wi, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit.thread.us.i212 ]
  %i.xl = phi ptr [ @74, %bb.fp ], [ @62, %bb.ec ], [ @68, %bb.en ], [ @72, %bb.ew ], [ @52, %bb.dn ], [ @73, %bb.fo ], [ @70, %bb.et ], [ @71, %bb.ev ], [ @69, %bb.eq ], [ @57, %bb.dx ], [ @59, %bb.dz ], [ @60, %bb.ea ], [ @61, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit194.thread.i169 ], [ @64, %bb.ei ], [ @65, %bb.ek ], [ @66, %bb.el ], [ @67, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit190.thread.i147 ], [ @55, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit198.thread.i134 ], [ @51, %bb.dk ], [ @56, %bb.ds ], [ @54, %bb.dq ], [ @53, %bb.dp ], [ @76, %bb.fg ], [ @77, %bb.fi ], [ @78, %bb.fk ], [ @73, %bb.fe ], [ @75, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit.thread.us.i212 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.xj, i64 noundef %i.xk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xl) #14
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i105

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.fq:                                            ; preds = %.loopexit.split-lp.i107
  %i.xm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEEB6_.exit: ; preds = %.loopexit10.i156
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2735
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread: ; preds = %bb.ao, %bb.ap, %bb.de, %bb.as, %bb.aq, %.sink.split.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEEB6_.exit
  %.val68 = load ptr, ptr %i.o, align 8           ; 4 uses
  %.val69 = load i64, ptr %i.p, align 8           ; 4 uses
  %.val70 = load ptr, ptr %i.m, align 8           ; 4 uses
  %.val71 = load i64, ptr %i.n, align 8           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2797)
  call void @llvm.experimental.noalias.scope.decl(metadata !2800)
  %.sroa.025.0.i = call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %.sroa.0.0) ; 6 uses
  %.sroa.037.0.i = call i64 @llvm.usub.sat.i64(i64 %i.l, i64 %.sroa.0259.0) ; 4 uses
  %i.xn = sub i64 %.sroa.025.0.i, %.sroa.037.0.i  ; 3 uses
  %i.xo = and i64 %i.xn, 1
  %.not.i220 = icmp eq i64 %i.xo, 0               ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.xq = load i64, ptr %i.xp, align 8, !alias.scope !2797, !noalias !2802, !noundef !3 ; 4 uses
  %i.xr = add i64 %i.xq, 1                        ; 5 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.xt = load i64, ptr %i.xs, align 8, !alias.scope !2797, !noalias !2802, !noundef !3 ; 16 uses
  %i.xu = icmp ult i64 %i.xr, %i.xt
  br i1 %i.xu, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread
  %i.xv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.xw = load ptr, ptr %i.xv, align 8, !alias.scope !2797, !noalias !2802, !nonnull !3, !noundef !3 ; 7 uses
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %i.xr
  store i64 0, ptr %i.xx, align 8, !noalias !2804
  %i.xy = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.xz = load i64, ptr %i.xy, align 8, !alias.scope !2800, !noalias !2805, !noundef !3 ; 4 uses
  %i.ya = add i64 %i.xz, 1                        ; 5 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.yc = load i64, ptr %i.yb, align 8, !alias.scope !2800, !noalias !2805, !noundef !3 ; 16 uses
  %i.yd = icmp ult i64 %i.ya, %i.yc
  br i1 %i.yd, label %bb.ft, label %bb.fu

bb.fs:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.xr, i64 noundef %i.xt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !noalias !2804
  unreachable

bb.ft:                                            ; preds = %bb.fr
  %i.ye = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.yf = load ptr, ptr %i.ye, align 8, !alias.scope !2800, !noalias !2805, !nonnull !3, !noundef !3 ; 7 uses
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.yf, i64 %i.ya
  store i64 0, ptr %i.yg, align 8, !noalias !2804
  %i.yh = add i64 %.sroa.025.0.i, %.sroa.037.0.i  ; 2 uses
  %i.yi = lshr i64 %i.yh, 1
  %.sroa.047.0.i = sub i64 %i.yh, %i.yi           ; 3 uses
  %i.yj = icmp ult i64 %i.xt, 1152921504606846976
  call void @llvm.assume(i1 %i.yj)
  %.not128.not.i = icmp ugt i64 %i.xt, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.fw, label %bb.fv, !prof !4

bb.fu:                                            ; preds = %bb.fr
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ya, i64 noundef %i.yc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !noalias !2804
  unreachable

bb.fv:                                            ; preds = %bb.ft
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !noalias !2804
  unreachable

bb.fw:                                            ; preds = %bb.ft
  %i.yk = icmp ult i64 %i.yc, 1152921504606846976
  call void @llvm.assume(i1 %i.yk)
  %.not129.not.i = icmp samesign ugt i64 %i.yc, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph112.i, label %bb.fx, !prof !4

.lr.ph112.i:                                      ; preds = %bb.fw
  %i.yl = add i64 %i.xq, -1
  %i.ym = add i64 %i.xz, -1
  %i.yn = add i64 %.sroa.025.0.i, %.sroa.0.0      ; 2 uses
  %i.yo = add i64 %.sroa.037.0.i, %.sroa.0259.0   ; 2 uses
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14, !noalias !2804
  unreachable

bb.fy:                                            ; preds = %._crit_edge108.i, %.lr.ph112.i
  %.sroa.048.0111.i = phi i64 [ 0, %.lr.ph112.i ], [ %i.yp, %._crit_edge108.i ] ; 11 uses
  %i.yp = add nuw nsw i64 %.sroa.048.0111.i, 1
  %i.yq = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2804
  br i1 %i.yq, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit, label %.lr.ph94.preheader.i

.lr.ph94.preheader.i:                             ; preds = %bb.fy
  %11 = sub nsw i64 0, %.sroa.048.0111.i          ; 6 uses
  %.pre168.i = sub i64 %i.xr, %.sroa.048.0111.i
  br label %.lr.ph94.i

.lr.ph94.i:                                       ; preds = %bb.hz, %.lr.ph94.preheader.i
  %.sroa.7.093.i = phi i64 [ %.sroa.7.1.i, %bb.hz ], [ %.sroa.048.0111.i, %.lr.ph94.preheader.i ] ; 2 uses
  %not..sroa.1418.092.i = phi i64 [ 1, %bb.hz ], [ 0, %.lr.ph94.preheader.i ]
  %i.yr = sub i64 %.sroa.7.093.i, %not..sroa.1418.092.i ; 11 uses
  %.not.i.not.i.i = icmp sgt i64 %i.yr, %.sroa.7.093.i
  br i1 %.not.i.not.i.i, label %.lr.ph107.preheader.i, label %bb.fz

bb.fz:                                            ; preds = %.lr.ph94.i
  %i.ys = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.yr, i64 %11)
  switch i8 %i.ys, label %bb.ga [
    i8 -1, label %.lr.ph107.preheader.i
    i8 0, label %bb.gc
    i8 1, label %bb.gb
  ]

bb.ga:                                            ; preds = %bb.fz
  unreachable

bb.gb:                                            ; preds = %bb.fz
  %i.yt = add i64 %i.yr, -1
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.fz
  %.sroa.11.1.i = phi i1 [ true, %bb.fz ], [ false, %bb.gb ]
  %.sroa.7.1.i = phi i64 [ %i.yr, %bb.fz ], [ %i.yt, %bb.gb ] ; 2 uses
  %i.yu = icmp eq i64 %i.yr, %11
  br i1 %i.yu, label %._crit_edge163.i, label %bb.hg

.lr.ph107.preheader.i:                            ; preds = %bb.hz, %bb.fz, %.lr.ph94.i
  %.pre.i225 = sub i64 %i.ya, %.sroa.048.0111.i
  br label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %bb.hb, %.lr.ph107.preheader.i
  %not..sroa.1727.0105.i = phi i64 [ 1, %bb.hb ], [ 0, %.lr.ph107.preheader.i ]
  %.sroa.726.0104.i = phi i64 [ %.sroa.726.1.i, %bb.hb ], [ %.sroa.048.0111.i, %.lr.ph107.preheader.i ] ; 2 uses
  %i.yv = sub i64 %.sroa.726.0104.i, %not..sroa.1727.0105.i ; 11 uses
  %.not.i.not.i145.i = icmp sgt i64 %i.yv, %.sroa.726.0104.i
  br i1 %.not.i.not.i145.i, label %._crit_edge108.i, label %bb.gd

bb.gd:                                            ; preds = %.lr.ph107.i
  %i.yw = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.yv, i64 %11)
  switch i8 %i.yw, label %bb.ge [
    i8 -1, label %._crit_edge108.i
    i8 0, label %bb.gg
    i8 1, label %bb.gf
  ]

bb.ge:                                            ; preds = %bb.gd
  unreachable

bb.gf:                                            ; preds = %bb.gd
  %i.yx = add i64 %i.yv, -1
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.gd
  %.sroa.726.1.i = phi i64 [ %i.yv, %bb.gd ], [ %i.yx, %bb.gf ] ; 2 uses
  %.sroa.12.1.i222 = phi i1 [ true, %bb.gd ], [ false, %bb.gf ]
  %i.yy = icmp eq i64 %i.yv, %11
  br i1 %i.yy, label %._crit_edge165.i, label %bb.gh

._crit_edge108.i:                                 ; preds = %bb.hb, %bb.gd, %.lr.ph107.i
  %exitcond161.not.i = icmp eq i64 %.sroa.048.0111.i, %.sroa.047.0.i
  br i1 %exitcond161.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit, label %bb.fy

bb.gh:                                            ; preds = %bb.gg
  %.not130.i = icmp eq i64 %i.yv, %.sroa.048.0111.i
  %.pre166.i = add i64 %i.ym, %i.yv               ; 6 uses
  br i1 %.not130.i, label %._crit_edge164.i, label %bb.gi

._crit_edge165.i:                                 ; preds = %bb.gg, %bb.gl
  %.pre-phi.i = phi i64 [ %i.zc, %bb.gl ], [ %.pre.i225, %bb.gg ] ; 3 uses
  %i.yz = icmp ult i64 %.pre-phi.i, %i.yc
  br i1 %i.yz, label %bb.gq, label %bb.gr

._crit_edge164.i:                                 ; preds = %bb.gl, %bb.gh
  %i.za = icmp ult i64 %.pre166.i, %i.yc
  br i1 %i.za, label %bb.gn, label %bb.go

bb.gi:                                            ; preds = %bb.gh
  %i.zb = icmp ult i64 %.pre166.i, %i.yc
  br i1 %i.zb, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.zc = add i64 %i.yv, %i.ya                    ; 4 uses
  %i.zd = icmp ult i64 %i.zc, %i.yc
  br i1 %i.zd, label %bb.gl, label %bb.gm

bb.gk:                                            ; preds = %bb.gi
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre166.i, i64 noundef %i.yc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14, !noalias !2804
  unreachable

bb.gl:                                            ; preds = %bb.gj
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.yf, i64 %.pre166.i
  %i.zf = load i64, ptr %i.ze, align 8, !noalias !2804, !noundef !3
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.yf, i64 %i.zc
  %i.zh = load i64, ptr %i.zg, align 8, !noalias !2804, !noundef !3
  %i.zi = icmp ult i64 %i.zf, %i.zh
  br i1 %i.zi, label %._crit_edge165.i, label %._crit_edge164.i

bb.gm:                                            ; preds = %bb.gj
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.zc, i64 noundef %i.yc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14, !noalias !2804
  unreachable

bb.gn:                                            ; preds = %._crit_edge164.i
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.yf, i64 %.pre166.i
  %i.zk = load i64, ptr %i.zj, align 8, !noalias !2804, !noundef !3
  %i.zl = add i64 %i.zk, 1
  br label %bb.gp

bb.go:                                            ; preds = %._crit_edge164.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre166.i, i64 noundef %i.yc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #14, !noalias !2804
  unreachable

bb.gp:                                            ; preds = %bb.gq, %bb.gn
  %.sroa.014.0.i = phi i64 [ %i.zq, %bb.gq ], [ %i.zl, %bb.gn ] ; 5 uses
  %i.zm = sub i64 %.sroa.014.0.i, %i.yv           ; 4 uses
  %i.zn = icmp ult i64 %.sroa.014.0.i, %.sroa.025.0.i
  %i.zo = icmp ult i64 %i.zm, %.sroa.037.0.i
  %or.cond.i223 = and i1 %i.zn, %i.zo
  br i1 %or.cond.i223, label %bb.gt, label %bb.gs

bb.gq:                                            ; preds = %._crit_edge165.i
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.yf, i64 %.pre-phi.i
  %i.zq = load i64, ptr %i.zp, align 8, !noalias !2804, !noundef !3
  br label %bb.gp

bb.gr:                                            ; preds = %._crit_edge165.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.yc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14, !noalias !2804
  unreachable

bb.gs:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, %bb.gp
  %.sroa.020.0.i = phi i64 [ %i.aau, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i ], [ %i.zm, %bb.gp ]
  %.sroa.014.1.i = phi i64 [ %i.aat, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i ], [ %.sroa.014.0.i, %bb.gp ] ; 3 uses
  %i.zr = add i64 %i.yv, %i.xz                    ; 3 uses
  %i.zs = icmp ult i64 %i.zr, %i.yc
  br i1 %i.zs, label %bb.gy, label %bb.gz

bb.gt:                                            ; preds = %bb.gp
  %i.zt = sub i64 %i.yn, %.sroa.014.0.i           ; 2 uses
  %i.zu = sub i64 %i.yo, %i.zm                    ; 2 uses
  %i.zv = sub i64 %i.zt, %.sroa.0.0
  %i.zw = sub i64 %i.zu, %.sroa.0259.0
  %.sroa.0.0.i149.i = call noundef i64 @llvm.umin.i64(i64 %i.zw, i64 %i.zv) ; 3 uses
  %.not116.i = icmp eq i64 %.sroa.0.0.i149.i, 0
  br i1 %.not116.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %bb.gt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gx, %.lr.ph99.i
  %.sroa.0.0.i13697.i = phi i64 [ 0, %.lr.ph99.i ], [ %i.aas, %bb.gx ] ; 4 uses
  %i.zx = xor i64 %.sroa.0.0.i13697.i, -1         ; 2 uses
  %i.zy = add i64 %i.zu, %i.zx                    ; 3 uses
  %i.zz = icmp ult i64 %i.zy, %.val71
  br i1 %i.zz, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.zy, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14, !noalias !2806
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i: ; preds = %bb.gu
  %i.aaa = add i64 %i.zt, %i.zx                   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.aab = icmp ult i64 %i.aaa, %.val69
  br i1 %i.aab, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit150.i, label %bb.gw

bb.gw:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aaa, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #14, !noalias !2809
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit150.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.i
  %i.aac = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.zy ; 2 uses
  %i.aad = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.aaa ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2812)
  call void @llvm.experimental.noalias.scope.decl(metadata !2815)
  %i.aae = load ptr, ptr %i.aac, align 8, !alias.scope !2812, !noalias !2817, !nonnull !3, !align !167, !noundef !3
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.aag = load i64, ptr %i.aaf, align 8, !alias.scope !2812, !noalias !2817, !noundef !3
  %i.aah = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aae, i64 noundef %i.aag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !2818 ; 2 uses
  %i.aai = extractvalue { ptr, i64 } %i.aah, 1    ; 2 uses
  %i.aaj = load ptr, ptr %i.aad, align 8, !alias.scope !2815, !noalias !2819, !nonnull !3, !align !167, !noundef !3
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %i.aal = load i64, ptr %i.aak, align 8, !alias.scope !2815, !noalias !2819, !noundef !3
  %i.aam = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aaj, i64 noundef %i.aal, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !2818 ; 2 uses
  %i.aan = extractvalue { ptr, i64 } %i.aam, 1
  %i.aao = icmp eq i64 %i.aai, %i.aan
  br i1 %i.aao, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit150.i
  %i.aap = extractvalue { ptr, i64 } %i.aam, 0
  %i.aaq = extractvalue { ptr, i64 } %i.aah, 0
  %bcmp.i.i224 = call i32 @bcmp(ptr nonnull readonly %i.aaq, ptr nonnull readonly %i.aap, i64 %i.aai), !alias.scope !2820, !noalias !2818
  %i.aar = icmp eq i32 %bcmp.i.i224, 0
  br i1 %i.aar, label %bb.gx, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i

bb.gx:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i
  %i.aas = add nuw i64 %.sroa.0.0.i13697.i, 1     ; 2 uses
  %exitcond160.not.i = icmp eq i64 %i.aas, %.sroa.0.0.i149.i
  br i1 %exitcond160.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, label %bb.gu

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i: ; preds = %bb.gx, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit150.i, %bb.gt
  %.sroa.0.0.i136.lcssa.i = phi i64 [ 0, %bb.gt ], [ %.sroa.0.0.i13697.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i ], [ %.sroa.0.0.i149.i, %bb.gx ], [ %.sroa.0.0.i13697.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit150.i ] ; 2 uses
  %i.aat = add i64 %.sroa.0.0.i136.lcssa.i, %.sroa.014.0.i
  %i.aau = add i64 %.sroa.0.0.i136.lcssa.i, %i.zm
  br label %bb.gs

bb.gy:                                            ; preds = %bb.gs
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.yf, i64 %i.zr
  store i64 %.sroa.014.1.i, ptr %i.aav, align 8, !noalias !2804
  br i1 %.not.i220, label %bb.ha, label %bb.hb

bb.gz:                                            ; preds = %bb.gs
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.zr, i64 noundef %i.yc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #14, !noalias !2804
  unreachable

bb.ha:                                            ; preds = %bb.gy
  %i.aaw = sub i64 %i.yv, %i.xn                   ; 2 uses
  %.sroa.024.0.i = call i64 @llvm.abs.i64(i64 %i.aaw, i1 false)
  %.not131.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.048.0111.i
  br i1 %.not131.i, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.hd, %bb.ha, %bb.gy
  %.not.i144.i = icmp slt i64 %.sroa.726.1.i, %11
  %or.cond45.i = select i1 %.sroa.12.1.i222, i1 true, i1 %.not.i144.i
  br i1 %or.cond45.i, label %._crit_edge108.i, label %.lr.ph107.i

bb.hc:                                            ; preds = %bb.ha
  %i.aax = sub i64 %i.xq, %i.aaw                  ; 3 uses
  %i.aay = icmp ult i64 %i.aax, %i.xt
  br i1 %i.aay, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %i.aax
  %i.aba = load i64, ptr %i.aaz, align 8, !noalias !2804, !noundef !3
  %i.abb = add i64 %i.aba, %.sroa.014.1.i
  %.not132.i = icmp ult i64 %i.abb, %.sroa.025.0.i
  br i1 %.not132.i, label %bb.hb, label %bb.hf

bb.he:                                            ; preds = %bb.hc
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aax, i64 noundef %i.xt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14, !noalias !2804
  unreachable

bb.hf:                                            ; preds = %bb.hd
  %i.abc = sub i64 %i.yn, %.sroa.014.1.i
  %i.abd = sub i64 %i.yo, %.sroa.020.0.i
  br label %bb.if

bb.hg:                                            ; preds = %bb.gc
  %.not133.i = icmp eq i64 %i.yr, %.sroa.048.0111.i
  %.pre170.i = add i64 %i.yl, %i.yr               ; 6 uses
  br i1 %.not133.i, label %._crit_edge162.i, label %bb.hh

._crit_edge163.i:                                 ; preds = %bb.gc, %bb.hk
  %.pre-phi169.i = phi i64 [ %i.abh, %bb.hk ], [ %.pre168.i, %bb.gc ] ; 3 uses
  %i.abe = icmp ult i64 %.pre-phi169.i, %i.xt
  br i1 %i.abe, label %bb.hp, label %bb.hq

._crit_edge162.i:                                 ; preds = %bb.hk, %bb.hg
  %i.abf = icmp ult i64 %.pre170.i, %i.xt
  br i1 %i.abf, label %bb.hm, label %bb.hn

bb.hh:                                            ; preds = %bb.hg
  %i.abg = icmp ult i64 %.pre170.i, %i.xt
  br i1 %i.abg, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.abh = add i64 %i.yr, %i.xr                   ; 4 uses
  %i.abi = icmp ult i64 %i.abh, %i.xt
  br i1 %i.abi, label %bb.hk, label %bb.hl

bb.hj:                                            ; preds = %bb.hh
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre170.i, i64 noundef %i.xt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #14, !noalias !2804
  unreachable

bb.hk:                                            ; preds = %bb.hi
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %.pre170.i
  %i.abk = load i64, ptr %i.abj, align 8, !noalias !2804, !noundef !3
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %i.abh
  %i.abm = load i64, ptr %i.abl, align 8, !noalias !2804, !noundef !3
  %i.abn = icmp ult i64 %i.abk, %i.abm
  br i1 %i.abn, label %._crit_edge163.i, label %._crit_edge162.i

bb.hl:                                            ; preds = %bb.hi
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.abh, i64 noundef %i.xt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #14, !noalias !2804
  unreachable

bb.hm:                                            ; preds = %._crit_edge162.i
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %.pre170.i
  %i.abp = load i64, ptr %i.abo, align 8, !noalias !2804, !noundef !3
  %i.abq = add i64 %i.abp, 1
  br label %bb.ho

bb.hn:                                            ; preds = %._crit_edge162.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre170.i, i64 noundef %i.xt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #14, !noalias !2804
  unreachable

bb.ho:                                            ; preds = %bb.hp, %bb.hm
  %.sroa.04.0.i221 = phi i64 [ %i.abv, %bb.hp ], [ %i.abq, %bb.hm ] ; 6 uses
  %i.abr = sub i64 %.sroa.04.0.i221, %i.yr        ; 3 uses
  %i.abs = icmp ult i64 %.sroa.04.0.i221, %.pre
  %i.abt = icmp ult i64 %i.abr, %.pre938
  %or.cond43.i = select i1 %i.abs, i1 %i.abt, i1 false
  br i1 %or.cond43.i, label %bb.hs, label %bb.hr

bb.hp:                                            ; preds = %._crit_edge163.i
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %.pre-phi169.i
  %i.abv = load i64, ptr %i.abu, align 8, !noalias !2804, !noundef !3
  br label %bb.ho

bb.hq:                                            ; preds = %._crit_edge163.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi169.i, i64 noundef %i.xt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14, !noalias !2804
  unreachable

bb.hr:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, %bb.ho
  %.sroa.04.1.i = phi i64 [ %i.acx, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i ], [ %.sroa.04.0.i221, %bb.ho ] ; 2 uses
  %i.abw = add i64 %i.yr, %i.xq                   ; 3 uses
  %i.abx = icmp ult i64 %i.abw, %i.xt
  br i1 %i.abx, label %bb.hx, label %bb.hy

bb.hs:                                            ; preds = %bb.ho
  %i.aby = add i64 %.sroa.04.0.i221, %.sroa.0.0   ; 3 uses
  %i.abz = add i64 %i.abr, %.sroa.0259.0          ; 2 uses
  %i.aca = sub i64 %i.k, %i.aby
  %i.acb = sub i64 %i.l, %i.abz
  %.sroa.0.0.i152.i = call noundef i64 @llvm.umin.i64(i64 %i.acb, i64 %i.aca) ; 3 uses
  %.not115.i = icmp eq i64 %.sroa.0.0.i152.i, 0
  br i1 %.not115.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, label %.lr.ph.i225

.lr.ph.i225:                                      ; preds = %bb.hs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  %i.acc = call i64 @llvm.usub.sat.i64(i64 %.val69, i64 %i.aby)
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hw, %.lr.ph.i225
  %.sroa.0.0.i88.i = phi i64 [ 0, %.lr.ph.i225 ], [ %i.acw, %bb.hw ] ; 6 uses
  %i.acd = add nuw i64 %.sroa.0.0.i88.i, %i.abz   ; 3 uses
  %i.ace = icmp ult i64 %i.acd, %.val71
  br i1 %i.ace, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit153.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.acd, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !noalias !2824
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit153.i: ; preds = %bb.ht
  %i.acf = add nuw i64 %.sroa.0.0.i88.i, %i.aby   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %exitcond.not.i226 = icmp eq i64 %.sroa.0.0.i88.i, %i.acc
  br i1 %exitcond.not.i226, label %bb.hv, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit154.i

bb.hv:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit153.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.acf, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !noalias !2827
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit154.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit153.i
  %i.acg = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.acd ; 2 uses
  %i.ach = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.acf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2830)
  call void @llvm.experimental.noalias.scope.decl(metadata !2833)
  %i.aci = load ptr, ptr %i.acg, align 8, !alias.scope !2830, !noalias !2835, !nonnull !3, !align !167, !noundef !3
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  %i.ack = load i64, ptr %i.acj, align 8, !alias.scope !2830, !noalias !2835, !noundef !3
  %i.acl = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aci, i64 noundef %i.ack, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !2836 ; 2 uses
  %i.acm = extractvalue { ptr, i64 } %i.acl, 1    ; 2 uses
  %i.acn = load ptr, ptr %i.ach, align 8, !alias.scope !2833, !noalias !2837, !nonnull !3, !align !167, !noundef !3
  %i.aco = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  %i.acp = load i64, ptr %i.aco, align 8, !alias.scope !2833, !noalias !2837, !noundef !3
  %i.acq = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.acn, i64 noundef %i.acp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !2836 ; 2 uses
  %i.acr = extractvalue { ptr, i64 } %i.acq, 1
  %i.acs = icmp eq i64 %i.acm, %i.acr
  br i1 %i.acs, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit157.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit157.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit154.i
  %i.act = extractvalue { ptr, i64 } %i.acq, 0
  %i.acu = extractvalue { ptr, i64 } %i.acl, 0
  %bcmp.i156.i = call i32 @bcmp(ptr nonnull readonly %i.acu, ptr nonnull readonly %i.act, i64 %i.acm), !alias.scope !2838, !noalias !2836
  %i.acv = icmp eq i32 %bcmp.i156.i, 0
  br i1 %i.acv, label %bb.hw, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i

bb.hw:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit157.i
  %i.acw = add nuw i64 %.sroa.0.0.i88.i, 1        ; 2 uses
  %exitcond159.not.i = icmp eq i64 %i.acw, %.sroa.0.0.i152.i
  br i1 %exitcond159.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, label %bb.ht

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i: ; preds = %bb.hw, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit157.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit154.i, %bb.hs
  %.sroa.0.0.i.lcssa.i = phi i64 [ 0, %bb.hs ], [ %.sroa.0.0.i88.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit157.i ], [ %.sroa.0.0.i152.i, %bb.hw ], [ %.sroa.0.0.i88.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit154.i ]
  %i.acx = add i64 %.sroa.0.0.i.lcssa.i, %.sroa.04.0.i221
  br label %bb.hr

bb.hx:                                            ; preds = %bb.hr
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %i.abw
  store i64 %.sroa.04.1.i, ptr %i.acy, align 8, !noalias !2804
  br i1 %.not.i220, label %bb.hz, label %bb.ia

bb.hy:                                            ; preds = %bb.hr
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.abw, i64 noundef %i.xt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #14, !noalias !2804
  unreachable

bb.hz:                                            ; preds = %bb.ic, %bb.ia, %bb.hx
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %11
  %or.cond44.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond44.i, label %.lr.ph107.preheader.i, label %.lr.ph94.i

bb.ia:                                            ; preds = %bb.hx
  %i.acz = sub i64 %i.yr, %i.xn                   ; 2 uses
  %.sroa.010.0.i = call i64 @llvm.abs.i64(i64 %i.acz, i1 false)
  %.not134.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.048.0111.i
  br i1 %.not134.not.i, label %bb.ib, label %bb.hz

bb.ib:                                            ; preds = %bb.ia
  %i.ada = sub i64 %i.xz, %i.acz                  ; 3 uses
  %i.adb = icmp ult i64 %i.ada, %i.yc
  br i1 %i.adb, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %i.yf, i64 %i.ada
  %i.add = load i64, ptr %i.adc, align 8, !noalias !2804, !noundef !3
  %i.ade = add i64 %i.add, %.sroa.04.1.i
  %.not135.i = icmp ult i64 %i.ade, %.sroa.025.0.i
  br i1 %.not135.i, label %bb.hz, label %bb.ie

bb.id:                                            ; preds = %bb.ib
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ada, i64 noundef %i.yc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14, !noalias !2804
  unreachable

bb.ie:                                            ; preds = %bb.ic
  %i.adf = add i64 %.sroa.04.0.i221, %.sroa.0.0
  %i.adg = add i64 %i.abr, %.sroa.0259.0
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.hf
  %.sroa.7.0.ph = phi i64 [ %i.adg, %bb.ie ], [ %i.abd, %bb.hf ] ; 2 uses
  %.sroa.5.0.ph = phi i64 [ %i.adf, %bb.ie ], [ %i.abc, %bb.hf ] ; 2 uses
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2n_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.0.0, i64 noundef %.sroa.5.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.0259.0, i64 noundef %.sroa.7.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2n_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.5.0.ph, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.7.0.ph, i64 noundef %i.l, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.am

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit: ; preds = %._crit_edge108.i, %bb.fy
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.pre, i64 noundef %.sroa.0259.0)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.0259.0, i64 noundef %.pre938)
  br label %bb.am

.thread:                                          ; preds = %bb.al
  %i.adh = sub nuw i64 %i.l, %.sroa.0259.0
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.0259.0, i64 noundef %i.adh)
  br label %bb.am

bb.ig:                                            ; preds = %bb.am
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.k, i64 noundef %i.l, i64 noundef %i.j)
  br label %bb.ih

bb.ih:                                            ; preds = %bb.am, %bb.ig
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsiqiOkcJdymw_7similar10algorithms5myersNtB2_1V3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = shl i64 %1, 1                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2842
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.b, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !noalias !2842
  %i.c = load i64, ptr %i.a, align 8, !range !43, !noalias !2842, !noundef !3
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !44, !noalias !2842, !noundef !3 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemjNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsiqiOkcJdymw_7similar.exit, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !2842
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #14, !noalias !2842
  unreachable

_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemjNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsiqiOkcJdymw_7similar.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !2842, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2842
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.j, align 8
  store i64 %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQIB1S_QINtNtB4_7compact7CompactIB1k_mEB2N_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQIB1S_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2N_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1k_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupmEB1j_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupmEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef align 8 dereferenceable(160), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef align 8 dereferenceable(160), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1S_12OffsetLookupmEEEB1j_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2f_B2f_INtNtB4_7compact7CompactB2f_B2f_IB2J_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(208), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1j_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2f_B2f_INtNtB4_7compact7CompactB2f_B2f_IB2P_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(208), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef, i64 noundef, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef align 8 dereferenceable(208)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef align 8 dereferenceable(208)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef align 8 dereferenceable(208), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef align 8 dereferenceable(208), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_(ptr noalias noundef align 8 dereferenceable(208), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef align 8 dereferenceable(208), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef align 8 dereferenceable(208), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_(ptr noalias noundef align 8 dereferenceable(208), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook7replaceB9_(ptr noalias noundef align 8 dereferenceable(208), i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook7replaceB9_(ptr noalias noundef align 8 dereferenceable(208), i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_EB6_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_2
