Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_db-92c62a723a4254ca.ruff_db.3b660a75166acdec-cgu.00?download=true
inline.NumInlined: 1162
inline.NumDeleted: 78
begin_hunk_0_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupjEBZ_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB10_mEB2m_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db:bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupjEBZ_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2m_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupjEBZ_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtNtB6_4text6inline11MultiLookupeEB2m_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtNtB6_4text6inline11MultiLookupeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtNtB6_4text6inline11MultiLookupeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupmEBZ_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupmEB1j_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupmEB14_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupmEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupmEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupmEB14_INtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB6_4text12TextDiffSideeEB14_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtB6_4text12TextDiffSideeEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtB6_4text12TextDiffSideeEB14_INtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1y_12OffsetLookupmEEEBZ_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1V_B1V_INtNtB4_7compact7CompactB1V_B1V_IB2o_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1S_12OffsetLookupmEEEB1j_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2f_B2f_INtNtB4_7compact7CompactB2f_B2f_IB2J_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1D_12OffsetLookupmEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB20_B20_INtNtB4_7compact7CompactB20_B20_IB2u_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBZ_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1V_B1V_INtNtB4_7compact7CompactB1V_B1V_IB2u_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1j_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2f_B2f_INtNtB4_7compact7CompactB2f_B2f_IB2P_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB20_B20_INtNtB4_7compact7CompactB20_B20_IB2A_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEBZ_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1V_B1V_INtNtB4_7compact7CompactB1V_B1V_IB2C_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB1j_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2f_B2f_INtNtB4_7compact7CompactB2f_B2f_IB2X_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB20_B20_INtNtB4_7compact7CompactB20_B20_IB2I_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtNtB6_4text6inline11MultiLookupeEBZ_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtNtB6_4text6inline11MultiLookupeEB1j_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtNtB6_4text6inline11MultiLookupeEB14_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers13diff_deadlineINtNtNtB6_4text6inline11MultiLookupeEBZ_INtNtB4_7compact7CompactBZ_BZ_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtNtB6_4text6inline11MultiLookupeEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtNtB6_4text6inline11MultiLookupeEB14_INtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupjEB13_ECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.z = lshr i64 %i.y, 1                         ; 2 uses
  %.sroa.047.0 = sub nuw i64 %i.y, %i.z           ; 2 uses
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
  %11 = add i64 %6, %3
  %12 = add i64 %11, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %6, i64 %5)
  %umin314 = tail call i64 @llvm.umin.i64(i64 %3, i64 %2)
  %13 = add i64 %umin, %umin314
  %14 = add i64 %13, %i.z
  %15 = sub i64 %12, %14
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

bb.i:                                             ; preds = %.lr.ph269, %._crit_edge265
  %.sroa.048.0268 = phi i64 [ 0, %.lr.ph269 ], [ %i.as, %._crit_edge265 ] ; 8 uses
  %i.as = add nuw i64 %.sroa.048.0268, 1          ; 2 uses
  %i.at = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.at, label %._crit_edge270, label %.lr.ph248.preheader

.lr.ph248.preheader:                              ; preds = %bb.i
  %i.au = sub nsw i64 0, %.sroa.048.0268          ; 6 uses
  br label %.lr.ph248

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %bb.bl
  %.sroa.7.0247 = phi i64 [ %.sroa.7.1, %bb.bl ], [ %.sroa.048.0268, %.lr.ph248.preheader ] ; 2 uses
  %not..sroa.14163.0246 = phi i64 [ 1, %bb.bl ], [ 0, %.lr.ph248.preheader ]
  %i.av = sub i64 %.sroa.7.0247, %not..sroa.14163.0246 ; 12 uses
  %.not.i.not.i = icmp sgt i64 %i.av, %.sroa.7.0247
  br i1 %.not.i.not.i, label %.lr.ph264.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph248
  %i.aw = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.av, i64 %i.au)
  switch i8 %i.aw, label %bb.k [
    i8 -1, label %.lr.ph264.preheader
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ax = add i64 %i.av, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.11.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %.sroa.7.1 = phi i64 [ %i.av, %bb.j ], [ %i.ax, %bb.l ] ; 2 uses
  %i.ay = icmp eq i64 %i.av, %i.au
  br i1 %i.ay, label %._crit_edge316.a, label %bb.ar

._crit_edge316.a:                                 ; preds = %bb.m
  %.pre321 = add i64 %i.i, %i.av
  br label %bb.as

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %bb.am
  %not..sroa.17172.0262 = phi i64 [ 1, %bb.am ], [ 0, %.lr.ph264.preheader ]
  %.sroa.7171.0261 = phi i64 [ %.sroa.7171.1, %bb.am ], [ %.sroa.048.0268, %.lr.ph264.preheader ] ; 2 uses
  %i.az = sub i64 %.sroa.7171.0261, %not..sroa.17172.0262 ; 12 uses
  %.not.i.not.i144 = icmp sgt i64 %i.az, %.sroa.7171.0261
  br i1 %.not.i.not.i144, label %._crit_edge265, label %bb.n

bb.n:                                             ; preds = %.lr.ph264
  %i.ba = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.az, i64 %i.au)
  switch i8 %i.ba, label %bb.o [
    i8 -1, label %._crit_edge265
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bb = add i64 %i.az, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.7171.1 = phi i64 [ %i.az, %bb.n ], [ %i.bb, %bb.p ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.n ], [ false, %bb.p ]
  %i.bc = icmp eq i64 %i.az, %i.au
  br i1 %i.bc, label %._crit_edge318.a, label %bb.r

._crit_edge318.a:                                 ; preds = %bb.q
  %.pre = add i64 %i.r, %i.az
  br label %bb.s

._crit_edge265:                                   ; preds = %bb.am, %bb.n, %.lr.ph264
  %exitcond314.not = icmp eq i64 %i.as, %15
  br i1 %exitcond314.not, label %._crit_edge270, label %bb.i

bb.r:                                             ; preds = %bb.q
  %.not130 = icmp eq i64 %i.az, %.sroa.048.0268
  %.pre319 = add i64 %i.ap, %i.az                 ; 6 uses
  br i1 %.not130, label %._crit_edge317, label %bb.t

bb.s:                                             ; preds = %._crit_edge318.a, %bb.w
  %.pre-phi = phi i64 [ %.pre, %._crit_edge318.a ], [ %i.bg, %bb.w ] ; 3 uses
  %i.bd = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.bd, label %bb.ab, label %bb.ac

._crit_edge317:                                   ; preds = %bb.r, %bb.w
  %i.be = icmp ult i64 %.pre319, %i.t
  br i1 %i.be, label %bb.y, label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.bf = icmp ult i64 %.pre319, %i.t
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = add i64 %i.r, %i.az                     ; 4 uses
  %i.bh = icmp ult i64 %i.bg, %i.t
  br i1 %i.bh, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre319
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !3
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bg
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !3
  %i.bm = icmp ult i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.s, label %._crit_edge317

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14
  unreachable

bb.y:                                             ; preds = %._crit_edge317
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre319
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !3
  %i.bp = add i64 %i.bo, 1
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge317
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #14
  unreachable

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %.sroa.014.0 = phi i64 [ %i.bu, %bb.ab ], [ %i.bp, %bb.y ] ; 5 uses
  %i.bq = sub i64 %.sroa.014.0, %i.az             ; 4 uses
  %i.br = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.bs = icmp ult i64 %i.bq, %.sroa.037.0
  %or.cond = and i1 %i.br, %i.bs
  br i1 %or.cond, label %bb.ae, label %bb.ad

bb.ab:                                            ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !3
  br label %bb.aa

bb.ac:                                            ; preds = %bb.s
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14
  unreachable

bb.ad:                                            ; preds = %bb.aa, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECs56aZGHL6Dc6_7ruff_db.exit
  %.sroa.020.0 = phi i64 [ %i.cj, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECs56aZGHL6Dc6_7ruff_db.exit ], [ %i.bq, %bb.aa ]
  %.sroa.014.1 = phi i64 [ %i.ci, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECs56aZGHL6Dc6_7ruff_db.exit ], [ %.sroa.014.0, %bb.aa ] ; 3 uses
  %i.bv = add i64 %i.az, %i.q                     ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %i.t
  br i1 %i.bw, label %bb.aj, label %bb.ak

bb.ae:                                            ; preds = %bb.aa
  %i.bx = sub i64 %i.aq, %.sroa.014.0             ; 2 uses
  %i.by = sub i64 %i.ar, %i.bq                    ; 2 uses
  %i.bz = sub i64 %i.bx, %2
  %i.ca = sub i64 %i.by, %5
  %.sroa.0.0.i148 = tail call noundef i64 @llvm.umin.i64(i64 %i.ca, i64 %i.bz) ; 3 uses
  %.not273 = icmp eq i64 %.sroa.0.0.i148, 0
  br i1 %.not273, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.ae
  %invariant.op256 = sub i64 %i.by, %i.ae
  %invariant.op258 = sub i64 %i.bx, %i.ak
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph253, %bb.ai
  %.sroa.0.0.i136251 = phi i64 [ 0, %.lr.ph253 ], [ %i.ch, %bb.ai ] ; 3 uses
  %i.cb = xor i64 %.sroa.0.0.i136251, -1          ; 2 uses
  %.reass257 = add i64 %invariant.op256, %i.cb    ; 3 uses
  %i.cc = icmp ult i64 %.reass257, %i.ag
  br i1 %i.cc, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit137, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass257, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14, !noalias !18
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit137: ; preds = %bb.af
  %.reass259 = add i64 %invariant.op258, %i.cb    ; 3 uses
  %i.cd = icmp ult i64 %.reass259, %i.am
  br i1 %i.cd, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit, label %bb.ah

bb.ah:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit137
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #14, !noalias !19
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit137
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass257
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass259
  %.val = load i64, ptr %i.ce, align 8, !noundef !3
  %.val140 = load i64, ptr %i.cf, align 8, !noundef !3
  %i.cg = icmp eq i64 %.val, %.val140
  br i1 %i.cg, label %bb.ai, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECs56aZGHL6Dc6_7ruff_db.exit

bb.ai:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit
  %i.ch = add nuw i64 %.sroa.0.0.i136251, 1       ; 2 uses
  %exitcond313.not = icmp eq i64 %i.ch, %.sroa.0.0.i148
  br i1 %exitcond313.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECs56aZGHL6Dc6_7ruff_db.exit, label %bb.af

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit, %bb.ai, %bb.ae
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.ae ], [ %.sroa.0.0.i148, %bb.ai ], [ %.sroa.0.0.i136251, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit ] ; 2 uses
  %i.ci = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.cj = add i64 %.sroa.0.0.i136.lcssa, %i.bq
  br label %bb.ad

bb.aj:                                            ; preds = %bb.ad
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bv
  store i64 %.sroa.014.1, ptr %i.ck, align 8
  br i1 %.not, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.ad
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #14
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.cl = sub i64 %i.az, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.cl, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0268
  br i1 %.not131, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ao, %bb.aj
  %.not.i143 = icmp slt i64 %.sroa.7171.1, %i.au
  %or.cond188 = select i1 %.sroa.12.1, i1 true, i1 %.not.i143
  br i1 %or.cond188, label %._crit_edge265, label %.lr.ph264

bb.an:                                            ; preds = %bb.al
  %i.cm = sub i64 %i.h, %i.cl                     ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %i.k
  br i1 %i.cn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cm
  %i.cp = load i64, ptr %i.co, align 8, !noundef !3
  %i.cq = add i64 %i.cp, %.sroa.014.1
  %.not132 = icmp ult i64 %i.cq, %.sroa.025.0
  br i1 %.not132, label %bb.am, label %bb.aq

bb.ap:                                            ; preds = %bb.an
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cm, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.cr = sub i64 %i.aq, %.sroa.014.1
  %i.cs = sub i64 %i.ar, %.sroa.020.0
  br label %._crit_edge270.sink.split

bb.ar:                                            ; preds = %bb.m
  %.not133 = icmp eq i64 %i.av, %.sroa.048.0268
  %.pre323 = add i64 %i.ac, %i.av                 ; 6 uses
  br i1 %.not133, label %._crit_edge315, label %bb.at

bb.as:                                            ; preds = %._crit_edge316.a, %bb.aw
  %.pre-phi322 = phi i64 [ %.pre321, %._crit_edge316.a ], [ %i.cw, %bb.aw ] ; 3 uses
  %i.ct = icmp ult i64 %.pre-phi322, %i.k
  br i1 %i.ct, label %bb.bb, label %bb.bc

._crit_edge315:                                   ; preds = %bb.ar, %bb.aw
  %i.cu = icmp ult i64 %.pre323, %i.k
  br i1 %i.cu, label %bb.ay, label %bb.az

bb.at:                                            ; preds = %bb.ar
  %i.cv = icmp ult i64 %.pre323, %i.k
  br i1 %i.cv, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.cw = add i64 %i.i, %i.av                     ; 4 uses
  %i.cx = icmp ult i64 %i.cw, %i.k
  br i1 %i.cx, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %bb.at
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre323, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #14
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre323
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !3
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cw
  %i.db = load i64, ptr %i.da, align 8, !noundef !3
  %i.dc = icmp ult i64 %i.cz, %i.db
  br i1 %i.dc, label %bb.as, label %._crit_edge315

bb.ax:                                            ; preds = %bb.au
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cw, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #14
  unreachable

bb.ay:                                            ; preds = %._crit_edge315
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre323
  %i.de = load i64, ptr %i.dd, align 8, !noundef !3
  %i.df = add i64 %i.de, 1
  br label %bb.ba

bb.az:                                            ; preds = %._crit_edge315
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre323, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #14
  unreachable

bb.ba:                                            ; preds = %bb.bb, %bb.ay
  %.sroa.04.0 = phi i64 [ %i.dl, %bb.bb ], [ %i.df, %bb.ay ] ; 6 uses
  %i.dg = sub i64 %.sroa.04.0, %i.av              ; 3 uses
  %i.dh = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.dh, i1 false
  %i.di = icmp ult i64 %i.dg, %i.d
  %i.dj = and i1 %i.c, %.sroa.051.0
  %or.cond186 = select i1 %i.dj, i1 %i.di, i1 false
  br i1 %or.cond186, label %bb.be, label %bb.bd

bb.bb:                                            ; preds = %bb.as
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi322
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !3
  br label %bb.ba

bb.bc:                                            ; preds = %bb.as
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi322, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14
  unreachable

bb.bd:                                            ; preds = %bb.ba, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECs56aZGHL6Dc6_7ruff_db.exit
  %.sroa.04.1 = phi i64 [ %i.dy, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECs56aZGHL6Dc6_7ruff_db.exit ], [ %.sroa.04.0, %bb.ba ] ; 2 uses
  %i.dm = add i64 %i.av, %i.h                     ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.k
  br i1 %i.dn, label %bb.bj, label %bb.bk

bb.be:                                            ; preds = %bb.ba
  %i.do = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.dp = add i64 %i.dg, %5                       ; 2 uses
  %i.dq = sub i64 %3, %i.do
  %i.dr = sub i64 %6, %i.dp
  %.sroa.0.0.i149 = tail call noundef i64 @llvm.umin.i64(i64 %i.dr, i64 %i.dq) ; 3 uses
  %.not272 = icmp eq i64 %.sroa.0.0.i149, 0
  br i1 %.not272, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.be
  %invariant.op = sub i64 %i.dp, %i.ae            ; 2 uses
  %invariant.op243 = sub i64 %i.do, %i.ak         ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph, %bb.bi
  %.sroa.0.0.i241 = phi i64 [ 0, %.lr.ph ], [ %i.dx, %bb.bi ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i241, %invariant.op ; 2 uses
  %i.ds = icmp ult i64 %.reass, %i.ag
  br i1 %i.ds, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit139, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %invariant.op)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !noalias !20
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit139: ; preds = %bb.bf
  %.reass244 = add nuw i64 %.sroa.0.0.i241, %invariant.op243 ; 2 uses
  %i.dt = icmp ult i64 %.reass244, %i.am
  br i1 %i.dt, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit138, label %bb.bh

bb.bh:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit139
  %umax312 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %invariant.op243)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax312, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !noalias !21
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit138: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit139
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass244
  %.val141 = load i64, ptr %i.du, align 8, !noundef !3
  %.val142 = load i64, ptr %i.dv, align 8, !noundef !3
  %i.dw = icmp eq i64 %.val141, %.val142
  br i1 %i.dw, label %bb.bi, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECs56aZGHL6Dc6_7ruff_db.exit

bb.bi:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit138
  %i.dx = add nuw i64 %.sroa.0.0.i241, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.dx, %.sroa.0.0.i149
  br i1 %exitcond.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECs56aZGHL6Dc6_7ruff_db.exit, label %bb.bf

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit138, %bb.bi, %bb.be
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.be ], [ %.sroa.0.0.i149, %bb.bi ], [ %.sroa.0.0.i241, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit138 ]
  %i.dy = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.bd

bb.bj:                                            ; preds = %bb.bd
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dm
  store i64 %.sroa.04.1, ptr %i.dz, align 8
  br i1 %.not, label %bb.bl, label %bb.bm

bb.bk:                                            ; preds = %bb.bd
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dm, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #14
  unreachable

bb.bl:                                            ; preds = %bb.bm, %bb.bo, %bb.bj
  %.not.i = icmp slt i64 %.sroa.7.1, %i.au
  %or.cond187 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond187, label %.lr.ph264.preheader, label %.lr.ph248

.lr.ph264.preheader:                              ; preds = %.lr.ph248, %bb.j, %bb.bl
  br label %.lr.ph264

bb.bm:                                            ; preds = %bb.bj
  %i.ea = sub i64 %i.av, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.ea, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0268
  br i1 %.not134.not, label %bb.bn, label %bb.bl

bb.bn:                                            ; preds = %bb.bm
  %i.eb = sub i64 %i.q, %i.ea                     ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.t
  br i1 %i.ec, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.eb
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !3
  %i.ef = add i64 %i.ee, %.sroa.04.1
  %.not135 = icmp ult i64 %i.ef, %.sroa.025.0
  br i1 %.not135, label %bb.bl, label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.eg = add i64 %.sroa.04.0, %2
  %i.eh = add i64 %i.dg, %5
  br label %._crit_edge270.sink.split

._crit_edge270.sink.split:                        ; preds = %bb.bq, %bb.aq
  %.sink398 = phi i64 [ %i.cr, %bb.aq ], [ %i.eg, %bb.bq ]
  %.sink396 = phi i64 [ %i.cs, %bb.aq ], [ %i.eh, %bb.bq ]
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink398, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink396, ptr %i.ej, align 8
  br label %._crit_edge270

._crit_edge270:                                   ; preds = %bb.i, %._crit_edge265, %._crit_edge270.sink.split
  %.sink = phi i64 [ 1, %._crit_edge270.sink.split ], [ 0, %._crit_edge265 ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupmEB13_ECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.z = lshr i64 %i.y, 1                         ; 2 uses
  %.sroa.047.0 = sub nuw i64 %i.y, %i.z           ; 2 uses
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
  %11 = add i64 %6, %3
  %12 = add i64 %11, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %6, i64 %5)
  %umin314 = tail call i64 @llvm.umin.i64(i64 %3, i64 %2)
  %13 = add i64 %umin, %umin314
  %14 = add i64 %13, %i.z
  %15 = sub i64 %12, %14
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

bb.i:                                             ; preds = %.lr.ph269, %._crit_edge265
  %.sroa.048.0268 = phi i64 [ 0, %.lr.ph269 ], [ %i.as, %._crit_edge265 ] ; 8 uses
  %i.as = add nuw i64 %.sroa.048.0268, 1          ; 2 uses
  %i.at = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.at, label %._crit_edge270, label %.lr.ph248.preheader

.lr.ph248.preheader:                              ; preds = %bb.i
  %i.au = sub nsw i64 0, %.sroa.048.0268          ; 6 uses
  br label %.lr.ph248

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %bb.bl
  %.sroa.7.0247 = phi i64 [ %.sroa.7.1, %bb.bl ], [ %.sroa.048.0268, %.lr.ph248.preheader ] ; 2 uses
  %not..sroa.14163.0246 = phi i64 [ 1, %bb.bl ], [ 0, %.lr.ph248.preheader ]
  %i.av = sub i64 %.sroa.7.0247, %not..sroa.14163.0246 ; 12 uses
  %.not.i.not.i = icmp sgt i64 %i.av, %.sroa.7.0247
  br i1 %.not.i.not.i, label %.lr.ph264.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph248
  %i.aw = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.av, i64 %i.au)
  switch i8 %i.aw, label %bb.k [
    i8 -1, label %.lr.ph264.preheader
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ax = add i64 %i.av, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.11.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %.sroa.7.1 = phi i64 [ %i.av, %bb.j ], [ %i.ax, %bb.l ] ; 2 uses
  %i.ay = icmp eq i64 %i.av, %i.au
  br i1 %i.ay, label %._crit_edge316.a, label %bb.ar

._crit_edge316.a:                                 ; preds = %bb.m
  %.pre321 = add i64 %i.i, %i.av
  br label %bb.as

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %bb.am
  %not..sroa.17172.0262 = phi i64 [ 1, %bb.am ], [ 0, %.lr.ph264.preheader ]
  %.sroa.7171.0261 = phi i64 [ %.sroa.7171.1, %bb.am ], [ %.sroa.048.0268, %.lr.ph264.preheader ] ; 2 uses
  %i.az = sub i64 %.sroa.7171.0261, %not..sroa.17172.0262 ; 12 uses
  %.not.i.not.i144 = icmp sgt i64 %i.az, %.sroa.7171.0261
  br i1 %.not.i.not.i144, label %._crit_edge265, label %bb.n

bb.n:                                             ; preds = %.lr.ph264
  %i.ba = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.az, i64 %i.au)
  switch i8 %i.ba, label %bb.o [
    i8 -1, label %._crit_edge265
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bb = add i64 %i.az, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.7171.1 = phi i64 [ %i.az, %bb.n ], [ %i.bb, %bb.p ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.n ], [ false, %bb.p ]
  %i.bc = icmp eq i64 %i.az, %i.au
  br i1 %i.bc, label %._crit_edge318.a, label %bb.r

._crit_edge318.a:                                 ; preds = %bb.q
  %.pre = add i64 %i.r, %i.az
  br label %bb.s

._crit_edge265:                                   ; preds = %bb.am, %bb.n, %.lr.ph264
  %exitcond314.not = icmp eq i64 %i.as, %15
  br i1 %exitcond314.not, label %._crit_edge270, label %bb.i

bb.r:                                             ; preds = %bb.q
  %.not130 = icmp eq i64 %i.az, %.sroa.048.0268
  %.pre319 = add i64 %i.ap, %i.az                 ; 6 uses
  br i1 %.not130, label %._crit_edge317, label %bb.t

bb.s:                                             ; preds = %._crit_edge318.a, %bb.w
  %.pre-phi = phi i64 [ %.pre, %._crit_edge318.a ], [ %i.bg, %bb.w ] ; 3 uses
  %i.bd = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.bd, label %bb.ab, label %bb.ac

._crit_edge317:                                   ; preds = %bb.r, %bb.w
  %i.be = icmp ult i64 %.pre319, %i.t
  br i1 %i.be, label %bb.y, label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.bf = icmp ult i64 %.pre319, %i.t
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = add i64 %i.r, %i.az                     ; 4 uses
  %i.bh = icmp ult i64 %i.bg, %i.t
  br i1 %i.bh, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre319
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !3
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bg
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !3
  %i.bm = icmp ult i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.s, label %._crit_edge317

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14
  unreachable

bb.y:                                             ; preds = %._crit_edge317
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre319
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !3
  %i.bp = add i64 %i.bo, 1
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge317
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #14
  unreachable

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %.sroa.014.0 = phi i64 [ %i.bu, %bb.ab ], [ %i.bp, %bb.y ] ; 5 uses
  %i.bq = sub i64 %.sroa.014.0, %i.az             ; 4 uses
  %i.br = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.bs = icmp ult i64 %i.bq, %.sroa.037.0
  %or.cond = and i1 %i.br, %i.bs
  br i1 %or.cond, label %bb.ae, label %bb.ad

bb.ab:                                            ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !3
  br label %bb.aa

bb.ac:                                            ; preds = %bb.s
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14
  unreachable

bb.ad:                                            ; preds = %bb.aa, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECs56aZGHL6Dc6_7ruff_db.exit
  %.sroa.020.0 = phi i64 [ %i.cj, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECs56aZGHL6Dc6_7ruff_db.exit ], [ %i.bq, %bb.aa ]
  %.sroa.014.1 = phi i64 [ %i.ci, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECs56aZGHL6Dc6_7ruff_db.exit ], [ %.sroa.014.0, %bb.aa ] ; 3 uses
  %i.bv = add i64 %i.az, %i.q                     ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %i.t
  br i1 %i.bw, label %bb.aj, label %bb.ak

bb.ae:                                            ; preds = %bb.aa
  %i.bx = sub i64 %i.aq, %.sroa.014.0             ; 2 uses
  %i.by = sub i64 %i.ar, %i.bq                    ; 2 uses
  %i.bz = sub i64 %i.bx, %2
  %i.ca = sub i64 %i.by, %5
  %.sroa.0.0.i148 = tail call noundef i64 @llvm.umin.i64(i64 %i.ca, i64 %i.bz) ; 3 uses
  %.not273 = icmp eq i64 %.sroa.0.0.i148, 0
  br i1 %.not273, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.ae
  %invariant.op256 = sub i64 %i.by, %i.ae
  %invariant.op258 = sub i64 %i.bx, %i.ak
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph253, %bb.ai
  %.sroa.0.0.i136251 = phi i64 [ 0, %.lr.ph253 ], [ %i.ch, %bb.ai ] ; 3 uses
  %i.cb = xor i64 %.sroa.0.0.i136251, -1          ; 2 uses
  %.reass257 = add i64 %invariant.op256, %i.cb    ; 3 uses
  %i.cc = icmp ult i64 %.reass257, %i.ag
  br i1 %i.cc, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit137, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass257, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14, !noalias !30
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit137: ; preds = %bb.af
  %.reass259 = add i64 %invariant.op258, %i.cb    ; 3 uses
  %i.cd = icmp ult i64 %.reass259, %i.am
  br i1 %i.cd, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit, label %bb.ah

bb.ah:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit137
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #14, !noalias !31
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit137
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.reass257
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass259
  %.val = load i32, ptr %i.ce, align 4, !noundef !3
  %.val140 = load i32, ptr %i.cf, align 4, !noundef !3
  %i.cg = icmp eq i32 %.val, %.val140
  br i1 %i.cg, label %bb.ai, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECs56aZGHL6Dc6_7ruff_db.exit

bb.ai:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit
  %i.ch = add nuw i64 %.sroa.0.0.i136251, 1       ; 2 uses
  %exitcond313.not = icmp eq i64 %i.ch, %.sroa.0.0.i148
  br i1 %exitcond313.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECs56aZGHL6Dc6_7ruff_db.exit, label %bb.af

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit, %bb.ai, %bb.ae
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.ae ], [ %.sroa.0.0.i148, %bb.ai ], [ %.sroa.0.0.i136251, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit ] ; 2 uses
  %i.ci = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.cj = add i64 %.sroa.0.0.i136.lcssa, %i.bq
  br label %bb.ad

bb.aj:                                            ; preds = %bb.ad
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bv
  store i64 %.sroa.014.1, ptr %i.ck, align 8
  br i1 %.not, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.ad
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #14
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.cl = sub i64 %i.az, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.cl, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0268
  br i1 %.not131, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ao, %bb.aj
  %.not.i143 = icmp slt i64 %.sroa.7171.1, %i.au
  %or.cond188 = select i1 %.sroa.12.1, i1 true, i1 %.not.i143
  br i1 %or.cond188, label %._crit_edge265, label %.lr.ph264

bb.an:                                            ; preds = %bb.al
  %i.cm = sub i64 %i.h, %i.cl                     ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %i.k
  br i1 %i.cn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cm
  %i.cp = load i64, ptr %i.co, align 8, !noundef !3
  %i.cq = add i64 %i.cp, %.sroa.014.1
  %.not132 = icmp ult i64 %i.cq, %.sroa.025.0
  br i1 %.not132, label %bb.am, label %bb.aq

bb.ap:                                            ; preds = %bb.an
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cm, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.cr = sub i64 %i.aq, %.sroa.014.1
  %i.cs = sub i64 %i.ar, %.sroa.020.0
  br label %._crit_edge270.sink.split

bb.ar:                                            ; preds = %bb.m
  %.not133 = icmp eq i64 %i.av, %.sroa.048.0268
  %.pre323 = add i64 %i.ac, %i.av                 ; 6 uses
  br i1 %.not133, label %._crit_edge315, label %bb.at

bb.as:                                            ; preds = %._crit_edge316.a, %bb.aw
  %.pre-phi322 = phi i64 [ %.pre321, %._crit_edge316.a ], [ %i.cw, %bb.aw ] ; 3 uses
  %i.ct = icmp ult i64 %.pre-phi322, %i.k
  br i1 %i.ct, label %bb.bb, label %bb.bc

._crit_edge315:                                   ; preds = %bb.ar, %bb.aw
  %i.cu = icmp ult i64 %.pre323, %i.k
  br i1 %i.cu, label %bb.ay, label %bb.az

bb.at:                                            ; preds = %bb.ar
  %i.cv = icmp ult i64 %.pre323, %i.k
  br i1 %i.cv, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.cw = add i64 %i.i, %i.av                     ; 4 uses
  %i.cx = icmp ult i64 %i.cw, %i.k
  br i1 %i.cx, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %bb.at
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre323, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #14
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre323
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !3
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cw
  %i.db = load i64, ptr %i.da, align 8, !noundef !3
  %i.dc = icmp ult i64 %i.cz, %i.db
  br i1 %i.dc, label %bb.as, label %._crit_edge315

bb.ax:                                            ; preds = %bb.au
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cw, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #14
  unreachable

bb.ay:                                            ; preds = %._crit_edge315
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre323
  %i.de = load i64, ptr %i.dd, align 8, !noundef !3
  %i.df = add i64 %i.de, 1
  br label %bb.ba

bb.az:                                            ; preds = %._crit_edge315
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre323, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #14
  unreachable

bb.ba:                                            ; preds = %bb.bb, %bb.ay
  %.sroa.04.0 = phi i64 [ %i.dl, %bb.bb ], [ %i.df, %bb.ay ] ; 6 uses
  %i.dg = sub i64 %.sroa.04.0, %i.av              ; 3 uses
  %i.dh = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.dh, i1 false
  %i.di = icmp ult i64 %i.dg, %i.d
  %i.dj = and i1 %i.c, %.sroa.051.0
  %or.cond186 = select i1 %i.dj, i1 %i.di, i1 false
  br i1 %or.cond186, label %bb.be, label %bb.bd

bb.bb:                                            ; preds = %bb.as
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi322
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !3
  br label %bb.ba

bb.bc:                                            ; preds = %bb.as
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi322, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14
  unreachable

bb.bd:                                            ; preds = %bb.ba, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECs56aZGHL6Dc6_7ruff_db.exit
  %.sroa.04.1 = phi i64 [ %i.dy, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECs56aZGHL6Dc6_7ruff_db.exit ], [ %.sroa.04.0, %bb.ba ] ; 2 uses
  %i.dm = add i64 %i.av, %i.h                     ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.k
  br i1 %i.dn, label %bb.bj, label %bb.bk

bb.be:                                            ; preds = %bb.ba
  %i.do = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.dp = add i64 %i.dg, %5                       ; 2 uses
  %i.dq = sub i64 %3, %i.do
  %i.dr = sub i64 %6, %i.dp
  %.sroa.0.0.i149 = tail call noundef i64 @llvm.umin.i64(i64 %i.dr, i64 %i.dq) ; 3 uses
  %.not272 = icmp eq i64 %.sroa.0.0.i149, 0
  br i1 %.not272, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.be
  %invariant.op = sub i64 %i.dp, %i.ae            ; 2 uses
  %invariant.op243 = sub i64 %i.do, %i.ak         ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph, %bb.bi
  %.sroa.0.0.i241 = phi i64 [ 0, %.lr.ph ], [ %i.dx, %bb.bi ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i241, %invariant.op ; 2 uses
  %i.ds = icmp ult i64 %.reass, %i.ag
  br i1 %i.ds, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit139, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %invariant.op)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !noalias !32
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit139: ; preds = %bb.bf
  %.reass244 = add nuw i64 %.sroa.0.0.i241, %invariant.op243 ; 2 uses
  %i.dt = icmp ult i64 %.reass244, %i.am
  br i1 %i.dt, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit138, label %bb.bh

bb.bh:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit139
  %umax312 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %invariant.op243)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax312, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !noalias !33
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit138: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit139
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.reass
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass244
  %.val141 = load i32, ptr %i.du, align 4, !noundef !3
  %.val142 = load i32, ptr %i.dv, align 4, !noundef !3
  %i.dw = icmp eq i32 %.val141, %.val142
  br i1 %i.dw, label %bb.bi, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECs56aZGHL6Dc6_7ruff_db.exit

bb.bi:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit138
  %i.dx = add nuw i64 %.sroa.0.0.i241, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.dx, %.sroa.0.0.i149
  br i1 %exitcond.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECs56aZGHL6Dc6_7ruff_db.exit, label %bb.bf

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit138, %bb.bi, %bb.be
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.be ], [ %.sroa.0.0.i149, %bb.bi ], [ %.sroa.0.0.i241, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit138 ]
  %i.dy = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.bd

bb.bj:                                            ; preds = %bb.bd
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dm
  store i64 %.sroa.04.1, ptr %i.dz, align 8
  br i1 %.not, label %bb.bl, label %bb.bm

bb.bk:                                            ; preds = %bb.bd
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dm, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #14
  unreachable

bb.bl:                                            ; preds = %bb.bm, %bb.bo, %bb.bj
  %.not.i = icmp slt i64 %.sroa.7.1, %i.au
  %or.cond187 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond187, label %.lr.ph264.preheader, label %.lr.ph248

.lr.ph264.preheader:                              ; preds = %.lr.ph248, %bb.j, %bb.bl
  br label %.lr.ph264

bb.bm:                                            ; preds = %bb.bj
  %i.ea = sub i64 %i.av, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.ea, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0268
  br i1 %.not134.not, label %bb.bn, label %bb.bl

bb.bn:                                            ; preds = %bb.bm
  %i.eb = sub i64 %i.q, %i.ea                     ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.t
  br i1 %i.ec, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.eb
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !3
  %i.ef = add i64 %i.ee, %.sroa.04.1
  %.not135 = icmp ult i64 %i.ef, %.sroa.025.0
  br i1 %.not135, label %bb.bl, label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.eg = add i64 %.sroa.04.0, %2
  %i.eh = add i64 %i.dg, %5
  br label %._crit_edge270.sink.split

._crit_edge270.sink.split:                        ; preds = %bb.bq, %bb.aq
  %.sink398 = phi i64 [ %i.cr, %bb.aq ], [ %i.eg, %bb.bq ]
  %.sink396 = phi i64 [ %i.cs, %bb.aq ], [ %i.eh, %bb.bq ]
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink398, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink396, ptr %i.ej, align 8
  br label %._crit_edge270

._crit_edge270:                                   ; preds = %bb.i, %._crit_edge265, %._crit_edge270.sink.split
  %.sink = phi i64 [ 1, %._crit_edge270.sink.split ], [ 0, %._crit_edge265 ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtB6_4text12TextDiffSideeEB13_ECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.z = lshr i64 %i.y, 1                         ; 2 uses
  %.sroa.047.0 = sub nuw i64 %i.y, %i.z           ; 2 uses
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
  %11 = add i64 %6, %3
  %12 = add i64 %11, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %6, i64 %5)
  %umin277 = tail call i64 @llvm.umin.i64(i64 %3, i64 %2)
  %13 = add i64 %umin, %umin277
  %14 = add i64 %13, %i.z
  %15 = sub i64 %12, %14
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

bb.i:                                             ; preds = %.lr.ph243, %._crit_edge239
  %.sroa.048.0242 = phi i64 [ 0, %.lr.ph243 ], [ %i.ag, %._crit_edge239 ] ; 8 uses
  %i.ag = add nuw i64 %.sroa.048.0242, 1          ; 2 uses
  %i.ah = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.ah, label %._crit_edge244, label %.lr.ph224.preheader

.lr.ph224.preheader:                              ; preds = %bb.i
  %i.ai = sub nsw i64 0, %.sroa.048.0242          ; 6 uses
  br label %.lr.ph224

.lr.ph224:                                        ; preds = %.lr.ph224.preheader, %bb.bf
  %.sroa.7.0223 = phi i64 [ %.sroa.7.1, %bb.bf ], [ %.sroa.048.0242, %.lr.ph224.preheader ] ; 2 uses
  %not..sroa.14161.0222 = phi i64 [ 1, %bb.bf ], [ 0, %.lr.ph224.preheader ]
  %i.aj = sub i64 %.sroa.7.0223, %not..sroa.14161.0222 ; 12 uses
  %.not.i.not.i = icmp sgt i64 %i.aj, %.sroa.7.0223
  br i1 %.not.i.not.i, label %.lr.ph238.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph224
  %i.ak = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.aj, i64 %i.ai)
  switch i8 %i.ak, label %bb.k [
    i8 -1, label %.lr.ph238.preheader
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.al = add i64 %i.aj, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.11.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %.sroa.7.1 = phi i64 [ %i.aj, %bb.j ], [ %i.al, %bb.l ] ; 2 uses
  %i.am = icmp eq i64 %i.aj, %i.ai
  br i1 %i.am, label %._crit_edge279.a, label %bb.ao

._crit_edge279.a:                                 ; preds = %bb.m
  %.pre284 = add i64 %i.i, %i.aj
  br label %bb.ap

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %bb.aj
  %not..sroa.17170.0236 = phi i64 [ 1, %bb.aj ], [ 0, %.lr.ph238.preheader ]
  %.sroa.7169.0235 = phi i64 [ %.sroa.7169.1, %bb.aj ], [ %.sroa.048.0242, %.lr.ph238.preheader ] ; 2 uses
  %i.an = sub i64 %.sroa.7169.0235, %not..sroa.17170.0236 ; 12 uses
  %.not.i.not.i138 = icmp sgt i64 %i.an, %.sroa.7169.0235
  br i1 %.not.i.not.i138, label %._crit_edge239, label %bb.n

bb.n:                                             ; preds = %.lr.ph238
  %i.ao = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.an, i64 %i.ai)
  switch i8 %i.ao, label %bb.o [
    i8 -1, label %._crit_edge239
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ap = add i64 %i.an, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.7169.1 = phi i64 [ %i.an, %bb.n ], [ %i.ap, %bb.p ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.n ], [ false, %bb.p ]
  %i.aq = icmp eq i64 %i.an, %i.ai
  br i1 %i.aq, label %._crit_edge281.a, label %bb.r

._crit_edge281.a:                                 ; preds = %bb.q
  %.pre = add i64 %i.r, %i.an
  br label %bb.s

._crit_edge239:                                   ; preds = %bb.aj, %bb.n, %.lr.ph238
  %exitcond277.not = icmp eq i64 %i.ag, %15
  br i1 %exitcond277.not, label %._crit_edge244, label %bb.i

bb.r:                                             ; preds = %bb.q
  %.not130 = icmp eq i64 %i.an, %.sroa.048.0242
  %.pre282 = add i64 %i.ad, %i.an                 ; 6 uses
  br i1 %.not130, label %._crit_edge280, label %bb.t

bb.s:                                             ; preds = %._crit_edge281.a, %bb.w
  %.pre-phi = phi i64 [ %.pre, %._crit_edge281.a ], [ %i.au, %bb.w ] ; 3 uses
  %i.ar = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.ar, label %bb.ab, label %bb.ac

._crit_edge280:                                   ; preds = %bb.r, %bb.w
  %i.as = icmp ult i64 %.pre282, %i.t
  br i1 %i.as, label %bb.y, label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.at = icmp ult i64 %.pre282, %i.t
  br i1 %i.at, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.au = add i64 %i.r, %i.an                     ; 4 uses
  %i.av = icmp ult i64 %i.au, %i.t
  br i1 %i.av, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre282, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre282
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !3
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.au
  %i.az = load i64, ptr %i.ay, align 8, !noundef !3
  %i.ba = icmp ult i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.s, label %._crit_edge280

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14
  unreachable

bb.y:                                             ; preds = %._crit_edge280
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre282
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !3
  %i.bd = add i64 %i.bc, 1
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge280
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre282, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #14
  unreachable

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %.sroa.014.0 = phi i64 [ %i.bi, %bb.ab ], [ %i.bd, %bb.y ] ; 5 uses
  %i.be = sub i64 %.sroa.014.0, %i.an             ; 4 uses
  %i.bf = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.bg = icmp ult i64 %i.be, %.sroa.037.0
  %or.cond = and i1 %i.bf, %i.bg
  br i1 %or.cond, label %bb.ae, label %bb.ad

bb.ab:                                            ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !3
  br label %bb.aa

bb.ac:                                            ; preds = %bb.s
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14
  unreachable

bb.ad:                                            ; preds = %bb.aa, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECs56aZGHL6Dc6_7ruff_db.exit
  %.sroa.020.0 = phi i64 [ %i.cc, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECs56aZGHL6Dc6_7ruff_db.exit ], [ %i.be, %bb.aa ]
  %.sroa.014.1 = phi i64 [ %i.cb, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECs56aZGHL6Dc6_7ruff_db.exit ], [ %.sroa.014.0, %bb.aa ] ; 3 uses
  %i.bj = add i64 %i.an, %i.q                     ; 3 uses
  %i.bk = icmp ult i64 %i.bj, %i.t
  br i1 %i.bk, label %bb.ag, label %bb.ah

bb.ae:                                            ; preds = %bb.aa
  %i.bl = sub i64 %i.ae, %.sroa.014.0             ; 2 uses
  %i.bm = sub i64 %i.af, %i.be                    ; 2 uses
  %i.bn = sub i64 %i.bl, %2
  %i.bo = sub i64 %i.bm, %5
  %.sroa.0.0.i142 = tail call noundef i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bn) ; 3 uses
  %.not247 = icmp eq i64 %.sroa.0.0.i142, 0
  br i1 %.not247, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph229

.lr.ph229:                                        ; preds = %bb.ae, %bb.af
  %.sroa.0.0.i136227 = phi i64 [ %i.ca, %bb.af ], [ 0, %bb.ae ] ; 4 uses
  %i.bp = xor i64 %.sroa.0.0.i136227, -1          ; 2 uses
  %i.bq = add i64 %i.bm, %i.bp
  %i.br = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) ; 2 uses
  %i.bs = extractvalue { ptr, i64 } %i.br, 1      ; 2 uses
  %i.bt = add i64 %i.bl, %i.bp
  %i.bu = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %i.bu, 1
  %i.bw = icmp eq i64 %i.bs, %i.bv
  br i1 %i.bw, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECs56aZGHL6Dc6_7ruff_db.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %.lr.ph229
  %i.bx = extractvalue { ptr, i64 } %i.bu, 0
  %i.by = extractvalue { ptr, i64 } %i.br, 0
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.by, ptr nonnull readonly %i.bx, i64 %i.bs), !alias.scope !40
  %i.bz = icmp eq i32 %bcmp.i, 0
  br i1 %i.bz, label %bb.af, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECs56aZGHL6Dc6_7ruff_db.exit

bb.af:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.ca = add nuw i64 %.sroa.0.0.i136227, 1       ; 2 uses
  %exitcond276.not = icmp eq i64 %i.ca, %.sroa.0.0.i142
  br i1 %exitcond276.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph229

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %bb.af, %.lr.ph229, %bb.ae
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.ae ], [ %.sroa.0.0.i136227, %.lr.ph229 ], [ %.sroa.0.0.i142, %bb.af ], [ %.sroa.0.0.i136227, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ] ; 2 uses
  %i.cb = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.cc = add i64 %.sroa.0.0.i136.lcssa, %i.be
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ad
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  store i64 %.sroa.014.1, ptr %i.cd, align 8
  br i1 %.not, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.ad
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bj, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #14
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ce = sub i64 %i.an, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.ce, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0242
  br i1 %.not131, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.al, %bb.ag
  %.not.i137 = icmp slt i64 %.sroa.7169.1, %i.ai
  %or.cond188 = select i1 %.sroa.12.1, i1 true, i1 %.not.i137
  br i1 %or.cond188, label %._crit_edge239, label %.lr.ph238

bb.ak:                                            ; preds = %bb.ai
  %i.cf = sub i64 %i.h, %i.ce                     ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %i.k
  br i1 %i.cg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cf
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !3
  %i.cj = add i64 %i.ci, %.sroa.014.1
  %.not132 = icmp ult i64 %i.cj, %.sroa.025.0
  br i1 %.not132, label %bb.aj, label %bb.an

bb.am:                                            ; preds = %bb.ak
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.ck = sub i64 %i.ae, %.sroa.014.1
  %i.cl = sub i64 %i.af, %.sroa.020.0
  br label %._crit_edge244.sink.split

bb.ao:                                            ; preds = %bb.m
  %.not133 = icmp eq i64 %i.aj, %.sroa.048.0242
  %.pre286 = add i64 %i.ac, %i.aj                 ; 6 uses
  br i1 %.not133, label %._crit_edge278, label %bb.aq

bb.ap:                                            ; preds = %._crit_edge279.a, %bb.at
  %.pre-phi285 = phi i64 [ %.pre284, %._crit_edge279.a ], [ %i.cp, %bb.at ] ; 3 uses
  %i.cm = icmp ult i64 %.pre-phi285, %i.k
  br i1 %i.cm, label %bb.ay, label %bb.az

._crit_edge278:                                   ; preds = %bb.ao, %bb.at
  %i.cn = icmp ult i64 %.pre286, %i.k
  br i1 %i.cn, label %bb.av, label %bb.aw

bb.aq:                                            ; preds = %bb.ao
  %i.co = icmp ult i64 %.pre286, %i.k
  br i1 %i.co, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cp = add i64 %i.i, %i.aj                     ; 4 uses
  %i.cq = icmp ult i64 %i.cp, %i.k
  br i1 %i.cq, label %bb.at, label %bb.au

bb.as:                                            ; preds = %bb.aq
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre286, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #14
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre286
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !3
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cp
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !3
  %i.cv = icmp ult i64 %i.cs, %i.cu
  br i1 %i.cv, label %bb.ap, label %._crit_edge278

bb.au:                                            ; preds = %bb.ar
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cp, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #14
  unreachable

bb.av:                                            ; preds = %._crit_edge278
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre286
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !3
  %i.cy = add i64 %i.cx, 1
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge278
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre286, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #14
  unreachable

bb.ax:                                            ; preds = %bb.ay, %bb.av
  %.sroa.04.0 = phi i64 [ %i.de, %bb.ay ], [ %i.cy, %bb.av ] ; 6 uses
  %i.cz = sub i64 %.sroa.04.0, %i.aj              ; 3 uses
  %i.da = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.da, i1 false
  %i.db = icmp ult i64 %i.cz, %i.d
  %i.dc = and i1 %i.c, %.sroa.051.0
  %or.cond186 = select i1 %i.dc, i1 %i.db, i1 false
  br i1 %or.cond186, label %bb.bb, label %bb.ba

bb.ay:                                            ; preds = %bb.ap
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi285
  %i.de = load i64, ptr %i.dd, align 8, !noundef !3
  br label %bb.ax

bb.az:                                            ; preds = %bb.ap
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi285, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14
  unreachable

bb.ba:                                            ; preds = %bb.ax, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECs56aZGHL6Dc6_7ruff_db.exit
  %.sroa.04.1 = phi i64 [ %i.dw, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECs56aZGHL6Dc6_7ruff_db.exit ], [ %.sroa.04.0, %bb.ax ] ; 2 uses
  %i.df = add i64 %i.aj, %i.h                     ; 3 uses
  %i.dg = icmp ult i64 %i.df, %i.k
  br i1 %i.dg, label %bb.bd, label %bb.be

bb.bb:                                            ; preds = %bb.ax
  %i.dh = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.di = add i64 %i.cz, %5                       ; 2 uses
  %i.dj = sub i64 %3, %i.dh
  %i.dk = sub i64 %6, %i.di
  %.sroa.0.0.i144 = tail call noundef i64 @llvm.umin.i64(i64 %i.dk, i64 %i.dj) ; 3 uses
  %.not246 = icmp eq i64 %.sroa.0.0.i144, 0
  br i1 %.not246, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bb, %bb.bc
  %.sroa.0.0.i217 = phi i64 [ %i.dv, %bb.bc ], [ 0, %bb.bb ] ; 5 uses
  %i.dl = add i64 %.sroa.0.0.i217, %i.di
  %i.dm = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.dl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) ; 2 uses
  %i.dn = extractvalue { ptr, i64 } %i.dm, 1      ; 2 uses
  %i.do = add i64 %.sroa.0.0.i217, %i.dh
  %i.dp = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.do, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) ; 2 uses
  %i.dq = extractvalue { ptr, i64 } %i.dp, 1
  %i.dr = icmp eq i64 %i.dn, %i.dq
  br i1 %i.dr, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit147, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECs56aZGHL6Dc6_7ruff_db.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit147: ; preds = %.lr.ph
  %i.ds = extractvalue { ptr, i64 } %i.dp, 0
  %i.dt = extractvalue { ptr, i64 } %i.dm, 0
  %bcmp.i146 = tail call i32 @bcmp(ptr nonnull readonly %i.dt, ptr nonnull readonly %i.ds, i64 %i.dn), !alias.scope !41
  %i.du = icmp eq i32 %bcmp.i146, 0
  br i1 %i.du, label %bb.bc, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECs56aZGHL6Dc6_7ruff_db.exit

bb.bc:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit147
  %i.dv = add nuw i64 %.sroa.0.0.i217, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.dv, %.sroa.0.0.i144
  br i1 %exitcond.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit147, %bb.bc, %.lr.ph, %bb.bb
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.bb ], [ %.sroa.0.0.i217, %.lr.ph ], [ %.sroa.0.0.i144, %bb.bc ], [ %.sroa.0.0.i217, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit147 ]
  %i.dw = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.ba

bb.bd:                                            ; preds = %bb.ba
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.df
  store i64 %.sroa.04.1, ptr %i.dx, align 8
  br i1 %.not, label %bb.bf, label %bb.bg

bb.be:                                            ; preds = %bb.ba
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.df, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #14
  unreachable

bb.bf:                                            ; preds = %bb.bg, %bb.bi, %bb.bd
  %.not.i = icmp slt i64 %.sroa.7.1, %i.ai
  %or.cond187 = select i1 %.sroa.11.1, i1 true, i1 %.not.i
  br i1 %or.cond187, label %.lr.ph238.preheader, label %.lr.ph224

.lr.ph238.preheader:                              ; preds = %.lr.ph224, %bb.j, %bb.bf
  br label %.lr.ph238

bb.bg:                                            ; preds = %bb.bd
  %i.dy = sub i64 %i.aj, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.dy, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0242
  br i1 %.not134.not, label %bb.bh, label %bb.bf

bb.bh:                                            ; preds = %bb.bg
  %i.dz = sub i64 %i.q, %i.dy                     ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.t
  br i1 %i.ea, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.dz
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !3
  %i.ed = add i64 %i.ec, %.sroa.04.1
  %.not135 = icmp ult i64 %i.ed, %.sroa.025.0
  br i1 %.not135, label %bb.bf, label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.ee = add i64 %.sroa.04.0, %2
  %i.ef = add i64 %i.cz, %5
  br label %._crit_edge244.sink.split

._crit_edge244.sink.split:                        ; preds = %bb.bk, %bb.an
  %.sink350 = phi i64 [ %i.ck, %bb.an ], [ %i.ee, %bb.bk ]
  %.sink348 = phi i64 [ %i.cl, %bb.an ], [ %i.ef, %bb.bk ]
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink350, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink348, ptr %i.eh, align 8
  br label %._crit_edge244

._crit_edge244:                                   ; preds = %bb.i, %._crit_edge239, %._crit_edge244.sink.split
  %.sink = phi i64 [ 1, %._crit_edge244.sink.split ], [ 0, %._crit_edge239 ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtNtB6_4text6inline11MultiLookupeEB13_ECs56aZGHL6Dc6_7ruff_db(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val, i64 noundef %1, i64 noundef %2, ptr nofree readonly captures(none) %.8.val1, i64 %.16.val3, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, %2
  %i.b = sub nuw i64 %2, %1
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 6 uses
  %i.c = icmp ult i64 %3, %4
  %i.d = sub nuw i64 %4, %3
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 %3) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !3 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !3 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1                         ; 2 uses
  %.sroa.047.0 = sub nuw i64 %i.y, %i.z           ; 2 uses
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
  br i1 %.not129.not, label %.lr.ph112, label %bb.h, !prof !4

.lr.ph112:                                        ; preds = %bb.g
  %i.ac = add i64 %i.h, -1
  %i.ad = add i64 %i.q, -1
  %i.ae = add i64 %.sroa.025.0, %1                ; 2 uses
  %i.af = add i64 %.sroa.037.0, %3                ; 2 uses
  %9 = add i64 %4, %2
  %10 = add i64 %9, 1
  %umin = tail call i64 @llvm.umin.i64(i64 %4, i64 %3)
  %umin162 = tail call i64 @llvm.umin.i64(i64 %2, i64 %1)
  %11 = add i64 %umin, %umin162
  %12 = add i64 %11, %i.z
  %13 = sub i64 %10, %12
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

bb.i:                                             ; preds = %.lr.ph112, %._crit_edge108
  %.sroa.048.0111 = phi i64 [ 0, %.lr.ph112 ], [ %i.ag, %._crit_edge108 ] ; 8 uses
  %i.ag = add nuw i64 %.sroa.048.0111, 1          ; 2 uses
  %i.ah = tail call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef %8)
  br i1 %i.ah, label %._crit_edge113, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %bb.i
  %i.ai = sub nsw i64 0, %.sroa.048.0111          ; 6 uses
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %bb.bj
  %.sroa.7.093 = phi i64 [ %.sroa.7.1, %bb.bj ], [ %.sroa.048.0111, %.lr.ph94.preheader ] ; 2 uses
  %not..sroa.1418.092 = phi i64 [ 1, %bb.bj ], [ 0, %.lr.ph94.preheader ]
  %i.aj = sub i64 %.sroa.7.093, %not..sroa.1418.092 ; 12 uses
  %.not.i.not.i = icmp sgt i64 %i.aj, %.sroa.7.093
  br i1 %.not.i.not.i, label %.lr.ph107.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph94
  %i.ak = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.aj, i64 %i.ai)
  switch i8 %i.ak, label %bb.k [
    i8 -1, label %.lr.ph107.preheader
    i8 0, label %bb.m
    i8 1, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.al = add i64 %i.aj, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.11.1 = phi i1 [ true, %bb.j ], [ false, %bb.l ]
  %.sroa.7.1 = phi i64 [ %i.aj, %bb.j ], [ %i.al, %bb.l ] ; 2 uses
  %i.am = icmp eq i64 %i.aj, %i.ai
  br i1 %i.am, label %._crit_edge164.a, label %bb.aq

._crit_edge164.a:                                 ; preds = %bb.m
  %.pre169 = add i64 %i.i, %i.aj
  br label %bb.ar

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %bb.al
  %not..sroa.1727.0105 = phi i64 [ 1, %bb.al ], [ 0, %.lr.ph107.preheader ]
  %.sroa.726.0104 = phi i64 [ %.sroa.726.1, %bb.al ], [ %.sroa.048.0111, %.lr.ph107.preheader ] ; 2 uses
  %i.an = sub i64 %.sroa.726.0104, %not..sroa.1727.0105 ; 12 uses
  %.not.i.not.i145 = icmp sgt i64 %i.an, %.sroa.726.0104
  br i1 %.not.i.not.i145, label %._crit_edge108, label %bb.n

bb.n:                                             ; preds = %.lr.ph107
  %i.ao = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.an, i64 %i.ai)
  switch i8 %i.ao, label %bb.o [
    i8 -1, label %._crit_edge108
    i8 0, label %bb.q
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ap = add i64 %i.an, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.726.1 = phi i64 [ %i.an, %bb.n ], [ %i.ap, %bb.p ] ; 2 uses
  %.sroa.12.1 = phi i1 [ true, %bb.n ], [ false, %bb.p ]
  %i.aq = icmp eq i64 %i.an, %i.ai
  br i1 %i.aq, label %._crit_edge166.a, label %bb.r

._crit_edge166.a:                                 ; preds = %bb.q
  %.pre = add i64 %i.r, %i.an
  br label %bb.s

._crit_edge108:                                   ; preds = %bb.al, %bb.n, %.lr.ph107
  %exitcond162.not = icmp eq i64 %i.ag, %13
  br i1 %exitcond162.not, label %._crit_edge113, label %bb.i

bb.r:                                             ; preds = %bb.q
  %.not130 = icmp eq i64 %i.an, %.sroa.048.0111
  %.pre167 = add i64 %i.ad, %i.an                 ; 6 uses
  br i1 %.not130, label %._crit_edge165, label %bb.t

bb.s:                                             ; preds = %._crit_edge166.a, %bb.w
  %.pre-phi = phi i64 [ %.pre, %._crit_edge166.a ], [ %i.au, %bb.w ] ; 3 uses
  %i.ar = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.ar, label %bb.ab, label %bb.ac

._crit_edge165:                                   ; preds = %bb.r, %bb.w
  %i.as = icmp ult i64 %.pre167, %i.t
  br i1 %i.as, label %bb.y, label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.at = icmp ult i64 %.pre167, %i.t
  br i1 %i.at, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.au = add i64 %i.r, %i.an                     ; 4 uses
  %i.av = icmp ult i64 %i.au, %i.t
  br i1 %i.av, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre167, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre167
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !3
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.au
  %i.az = load i64, ptr %i.ay, align 8, !noundef !3
  %i.ba = icmp ult i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.s, label %._crit_edge165

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14
  unreachable

bb.y:                                             ; preds = %._crit_edge165
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre167
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !3
  %i.bd = add i64 %i.bc, 1
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge165
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre167, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #14
  unreachable

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %.sroa.014.0 = phi i64 [ %i.bi, %bb.ab ], [ %i.bd, %bb.y ] ; 5 uses
  %i.be = sub i64 %.sroa.014.0, %i.an             ; 4 uses
  %i.bf = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.bg = icmp ult i64 %i.be, %.sroa.037.0
  %or.cond = and i1 %i.bf, %i.bg
  br i1 %or.cond, label %bb.ae, label %bb.ad

bb.ab:                                            ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !3
  br label %bb.aa

bb.ac:                                            ; preds = %bb.s
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14
  unreachable

bb.ad:                                            ; preds = %bb.aa, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtNtB6_4text6inline11MultiLookupeEB16_ECs56aZGHL6Dc6_7ruff_db.exit
  %.sroa.020.0 = phi i64 [ %i.cg, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtNtB6_4text6inline11MultiLookupeEB16_ECs56aZGHL6Dc6_7ruff_db.exit ], [ %i.be, %bb.aa ]
  %.sroa.014.1 = phi i64 [ %i.cf, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtNtB6_4text6inline11MultiLookupeEB16_ECs56aZGHL6Dc6_7ruff_db.exit ], [ %.sroa.014.0, %bb.aa ] ; 3 uses
  %i.bj = add i64 %i.an, %i.q                     ; 3 uses
  %i.bk = icmp ult i64 %i.bj, %i.t
  br i1 %i.bk, label %bb.ai, label %bb.aj

bb.ae:                                            ; preds = %bb.aa
  %i.bl = sub i64 %i.ae, %.sroa.014.0             ; 2 uses
  %i.bm = sub i64 %i.af, %i.be                    ; 2 uses
  %i.bn = sub i64 %i.bl, %1
  %i.bo = sub i64 %i.bm, %3
  %.sroa.0.0.i149 = tail call noundef i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bn) ; 3 uses
  %.not116 = icmp eq i64 %.sroa.0.0.i149, 0
  br i1 %.not116, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtNtB6_4text6inline11MultiLookupeEB16_ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.ae, %bb.ah
  %.sroa.0.0.i13697 = phi i64 [ %i.ce, %bb.ah ], [ 0, %bb.ae ] ; 4 uses
  %i.bp = xor i64 %.sroa.0.0.i13697, -1           ; 2 uses
  %i.bq = add i64 %i.bm, %i.bp                    ; 3 uses
  %i.br = icmp ult i64 %i.bq, %.16.val3
  br i1 %i.br, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit, label %bb.af

bb.af:                                            ; preds = %.lr.ph99
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bq, i64 noundef %.16.val3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14
  unreachable

_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit: ; preds = %.lr.ph99
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val1) ]
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %.8.val1, i64 %i.bq ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !56, !nonnull !3, !noundef !3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !56, !noundef !3 ; 2 uses
  %i.bw = add i64 %i.bl, %i.bp                    ; 3 uses
  %i.bx = icmp ult i64 %i.bw, %.16.val
  br i1 %i.bx, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit150, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef %.16.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #14
  unreachable

_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit150: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %.8.val, i64 %i.bw ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !57, !noundef !3
  %i.cb = icmp eq i64 %i.bv, %i.ca
  br i1 %i.cb, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtNtB6_4text6inline11MultiLookupeEB16_ECs56aZGHL6Dc6_7ruff_db.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit150
  %i.cc = load ptr, ptr %i.by, align 8, !noalias !57, !nonnull !3, !noundef !3
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.bt, ptr nonnull readonly %i.cc, i64 %i.bv), !alias.scope !58
  %i.cd = icmp eq i32 %bcmp.i, 0
  br i1 %i.cd, label %bb.ah, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtNtB6_4text6inline11MultiLookupeEB16_ECs56aZGHL6Dc6_7ruff_db.exit

bb.ah:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.ce = add nuw i64 %.sroa.0.0.i13697, 1        ; 2 uses
  %exitcond161.not = icmp eq i64 %i.ce, %.sroa.0.0.i149
  br i1 %exitcond161.not, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtNtB6_4text6inline11MultiLookupeEB16_ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph99

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtNtB6_4text6inline11MultiLookupeEB16_ECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %bb.ah, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit150, %bb.ae
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.ae ], [ %.sroa.0.0.i13697, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit150 ], [ %.sroa.0.0.i149, %bb.ah ], [ %.sroa.0.0.i13697, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ] ; 2 uses
  %i.cf = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.cg = add i64 %.sroa.0.0.i136.lcssa, %i.be
  br label %bb.ad

bb.ai:                                            ; preds = %bb.ad
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  store i64 %.sroa.014.1, ptr %i.ch, align 8
  br i1 %.not, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ad
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bj, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #14
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ci = sub i64 %i.an, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.ci, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0111
  br i1 %.not131, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.an, %bb.ai
  %.not.i144 = icmp slt i64 %.sroa.726.1, %i.ai
  %or.cond45 = select i1 %.sroa.12.1, i1 true, i1 %.not.i144
  br i1 %or.cond45, label %._crit_edge108, label %.lr.ph107

bb.am:                                            ; preds = %bb.ak
  %i.cj = sub i64 %i.h, %i.ci                     ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %i.k
  br i1 %i.ck, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cj
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !3
  %i.cn = add i64 %i.cm, %.sroa.014.1
  %.not132 = icmp ult i64 %i.cn, %.sroa.025.0
  br i1 %.not132, label %bb.al, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cj, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.co = sub i64 %i.ae, %.sroa.014.1
  %i.cp = sub i64 %i.af, %.sroa.020.0
  br label %._crit_edge113.sink.split

bb.aq:                                            ; preds = %bb.m
  %.not133 = icmp eq i64 %i.aj, %.sroa.048.0111
  %.pre171 = add i64 %i.ac, %i.aj                 ; 6 uses
  br i1 %.not133, label %._crit_edge163, label %bb.as

bb.ar:                                            ; preds = %._crit_edge164.a, %bb.av
  %.pre-phi170 = phi i64 [ %.pre169, %._crit_edge164.a ], [ %i.ct, %bb.av ] ; 3 uses
  %i.cq = icmp ult i64 %.pre-phi170, %i.k
  br i1 %i.cq, label %bb.ba, label %bb.bb

._crit_edge163:                                   ; preds = %bb.aq, %bb.av
  %i.cr = icmp ult i64 %.pre171, %i.k
  br i1 %i.cr, label %bb.ax, label %bb.ay

bb.as:                                            ; preds = %bb.aq
  %i.cs = icmp ult i64 %.pre171, %i.k
  br i1 %i.cs, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ct = add i64 %i.i, %i.aj                     ; 4 uses
  %i.cu = icmp ult i64 %i.ct, %i.k
  br i1 %i.cu, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.as
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre171, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #14
end_hunk_0
begin_hunk_1_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db:bb.a
  %i.vg = load ptr, ptr %i.nn, align 8, !noalias !2751, !nonnull !3, !noundef !3 ; 3 uses
  %i.vh = load i64, ptr %i.no, align 8, !noalias !2751, !noundef !3 ; 5 uses
  %i.vi = icmp ult i64 %i.vf, %i.vh
  br i1 %i.vi, label %bb.fy, label %.invoke.i117

bb.fx:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit202.i189
  %i.vj = add i64 %.sroa.0105.0454.i180, %i.uq    ; 3 uses
  %i.vk = load i64, ptr %i.no, align 8, !noalias !2751, !noundef !3 ; 3 uses
  %i.vl = icmp ult i64 %i.vj, %i.vk
  br i1 %i.vl, label %bb.gb, label %.invoke.i117

bb.fy:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit202.thread.i183
  %i.vm = add i64 %.sroa.0105.0454.i180, %i.up    ; 3 uses
  %i.vn = icmp ult i64 %i.vm, %i.vh
  br i1 %i.vn, label %bb.fz, label %.invoke.i117

bb.fz:                                            ; preds = %bb.fy
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vg, i64 %i.vf
  %i.vp = load i8, ptr %i.vo, align 1, !noundef !3
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vg, i64 %i.vm
  %i.vr = load i8, ptr %i.vq, align 1, !noundef !3
  %.sroa.0.0.i203.i184 = call noundef i8 @llvm.umax.i8(i8 %i.vr, i8 %i.vp)
  br label %bb.ga

bb.ga:                                            ; preds = %bb.gb, %bb.fz
  %i.vs = phi ptr [ %i.vw, %bb.gb ], [ %i.vg, %bb.fz ]
  %i.vt = phi i64 [ %i.vk, %bb.gb ], [ %i.vh, %bb.fz ] ; 2 uses
  %.sroa.04.0.i185 = phi i8 [ %i.vz, %bb.gb ], [ %.sroa.0.0.i203.i184, %bb.fz ]
  %i.vu = add i64 %i.us, %i.up                    ; 3 uses
  %i.vv = icmp ult i64 %i.vu, %i.vt
  br i1 %i.vv, label %bb.gc, label %.invoke.i117

bb.gb:                                            ; preds = %bb.fx
  %i.vw = load ptr, ptr %i.nn, align 8, !noalias !2751, !nonnull !3, !noundef !3 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.vj
  %i.vy = load i8, ptr %i.vx, align 1, !noundef !3
  %i.vz = add i8 %i.vy, 1
  br label %bb.ga

bb.gc:                                            ; preds = %bb.ga
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vs, i64 %i.vu
  store i8 %.sroa.04.0.i185, ptr %i.wa, align 1
  %.not168.i186 = icmp eq i64 %i.us, 0
  br i1 %.not168.i186, label %..loopexit244_crit_edge.i187, label %bb.fr

.invoke.i117:                                     ; preds = %bb.ga, %bb.fy, %bb.fx, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit202.thread.i183, %bb.ed, %bb.eb, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i116, %bb.ea, %bb.fc, %bb.fa, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit194.thread.i129, %bb.ez, %bb.ep, %bb.en, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit189.thread.i154, %bb.em, %bb.fl, %bb.fk
  %i.wb = phi i64 [ %i.st, %bb.fc ], [ %i.ud, %bb.fl ], [ %i.pa, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i116 ], [ %i.rd, %bb.ep ], [ %i.tw, %bb.fk ], [ %i.qp, %bb.em ], [ %i.qv, %bb.en ], [ %i.qt, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit189.thread.i154 ], [ %i.sb, %bb.ez ], [ %i.sl, %bb.fa ], [ %i.sh, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit194.thread.i129 ], [ %i.pq, %bb.ed ], [ %i.pf, %bb.eb ], [ %i.ou, %bb.ea ], [ %i.vu, %bb.ga ], [ %i.vf, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit202.thread.i183 ], [ %i.vm, %bb.fy ], [ %i.vj, %bb.fx ]
  %i.wc = phi i64 [ %i.sd, %bb.fc ], [ %i.ty, %bb.fl ], [ %i.ow, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i116 ], [ %i.qr, %bb.ep ], [ %i.ty, %bb.fk ], [ %.pre606.i158, %bb.em ], [ %.pre606.i158, %bb.en ], [ %i.qr, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit189.thread.i154 ], [ %.pre602.i142, %bb.ez ], [ %.pre602.i142, %bb.fa ], [ %i.sd, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit194.thread.i129 ], [ %i.ow, %bb.ed ], [ %.pre598.i162, %bb.eb ], [ %.pre598.i162, %bb.ea ], [ %i.vt, %bb.ga ], [ %i.vh, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit202.thread.i183 ], [ %i.vh, %bb.fy ], [ %i.vk, %bb.fx ]
  %i.wd = phi ptr [ @68, %bb.fc ], [ @72, %bb.fl ], [ @55, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i116 ], [ @62, %bb.ep ], [ @71, %bb.fk ], [ @59, %bb.em ], [ @60, %bb.en ], [ @61, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit189.thread.i154 ], [ @65, %bb.ez ], [ @66, %bb.fa ], [ @67, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit194.thread.i129 ], [ @56, %bb.ed ], [ @54, %bb.eb ], [ @53, %bb.ea ], [ @78, %bb.ga ], [ @75, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit202.thread.i183 ], [ @76, %bb.fy ], [ @77, %bb.fx ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.wb, i64 noundef %i.wc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.wd) #14
          to label %.cont.i118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i85

.cont.i118:                                       ; preds = %.invoke.i117
  unreachable

bb.gd:                                            ; preds = %.loopexit.split-lp.i87
  %i.we = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %.loopexit229.i143
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2751
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db.exit.thread

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db.exit.thread: ; preds = %bb.at, %bb.dn, %bb.aw, %bb.au, %bb.as, %.sink.split.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtB6_4text12TextDiffSideeEB13_ECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0227.0, i64 noundef %i.m, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.wf = load i64, ptr %i.g, align 8, !range !8, !noundef !3
  %i.wg = trunc nuw i64 %i.wf to i1
  br i1 %i.wg, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db.exit.thread
  %i.wh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.wi = load i64, ptr %i.wh, align 8, !noundef !3 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.wk = load i64, ptr %i.wj, align 8, !noundef !3 ; 2 uses
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.wi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0227.0, i64 noundef %i.wk, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.wi, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.wk, i64 noundef %i.m, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ap

bb.gf:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECs56aZGHL6Dc6_7ruff_db.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.wl = sub nuw i64 %i.l, %.sroa.0.0
  %i.wm = load i64, ptr %i.u, align 8, !alias.scope !2770, !noalias !2771, !noundef !3 ; 4 uses
  %i.wn = load i64, ptr %i.t, align 8, !range !6, !alias.scope !2770, !noalias !2771, !noundef !3
  %i.wo = icmp eq i64 %i.wm, %i.wn
  br i1 %i.wo, label %bb.gg, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit191

bb.gg:                                            ; preds = %bb.gf
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2771
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit191

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit191: ; preds = %bb.gf, %bb.gg
  %i.wp = load ptr, ptr %i.v, align 8, !alias.scope !2770, !noalias !2771, !nonnull !3, !noundef !3
  %i.wq = getelementptr inbounds nuw [40 x i8], ptr %i.wp, i64 %i.wm ; 4 uses
  store i64 1, ptr %i.wq, align 8
  %.sroa.4288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4288.0..sroa_idx, align 8
  %.sroa.5289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  store i64 %i.wl, ptr %.sroa.5289.0..sroa_idx, align 8
  %.sroa.6290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wq, i64 24
  store i64 %.sroa.0227.0, ptr %.sroa.6290.0..sroa_idx, align 8
  %i.wr = add i64 %i.wm, 1                        ; 3 uses
  store i64 %i.wr, ptr %i.u, align 8, !alias.scope !2770, !noalias !2771
  %i.ws = sub nuw i64 %i.m, %.sroa.0227.0
  %i.wt = load i64, ptr %i.t, align 8, !range !6, !alias.scope !2772, !noalias !2773, !noundef !3
  %i.wu = icmp eq i64 %i.wr, %i.wt
  br i1 %i.wu, label %bb.gh, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit192

bb.gh:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit191
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2773
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit192

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit192: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit191, %bb.gh
  %i.wv = load ptr, ptr %i.v, align 8, !alias.scope !2772, !noalias !2773, !nonnull !3, !noundef !3
  %i.ww = getelementptr inbounds nuw [40 x i8], ptr %i.wv, i64 %i.wr ; 4 uses
  store i64 2, ptr %i.ww, align 8
  %.sroa.4303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4303.0..sroa_idx, align 8
  %.sroa.5304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  store i64 %.sroa.0227.0, ptr %.sroa.5304.0..sroa_idx, align 8
  %.sroa.6305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ww, i64 24
  store i64 %i.ws, ptr %.sroa.6305.0..sroa_idx, align 8
  %i.wx = add i64 %i.wm, 2
  store i64 %i.wx, ptr %i.u, align 8, !alias.scope !2772, !noalias !2773
  br label %bb.ap

.thread:                                          ; preds = %bb.ao
  %i.wy = sub nuw i64 %i.m, %.sroa.0227.0
  %i.wz = load i64, ptr %i.u, align 8, !alias.scope !2774, !noalias !2775, !noundef !3 ; 3 uses
  %i.xa = load i64, ptr %i.t, align 8, !range !6, !alias.scope !2774, !noalias !2775, !noundef !3
  %i.xb = icmp eq i64 %i.wz, %i.xa
  br i1 %i.xb, label %bb.gi, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit193

bb.gi:                                            ; preds = %.thread
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2775
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit193

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit193: ; preds = %.thread, %bb.gi
  %i.xc = load ptr, ptr %i.v, align 8, !alias.scope !2774, !noalias !2775, !nonnull !3, !noundef !3
  %i.xd = getelementptr inbounds nuw [40 x i8], ptr %i.xc, i64 %i.wz ; 4 uses
  store i64 2, ptr %i.xd, align 8
  %.sroa.4298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4298.0..sroa_idx, align 8
  %.sroa.5299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  store i64 %.sroa.0227.0, ptr %.sroa.5299.0..sroa_idx, align 8
  %.sroa.6300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xd, i64 24
  store i64 %i.wy, ptr %.sroa.6300.0..sroa_idx, align 8
  %i.xe = add i64 %i.wz, 1
  store i64 %i.xe, ptr %i.u, align 8, !alias.scope !2774, !noalias !2775
  br label %bb.ap

bb.gj:                                            ; preds = %bb.ap
  %i.xf = load i64, ptr %i.u, align 8, !alias.scope !2776, !noalias !2777, !noundef !3 ; 3 uses
  %i.xg = load i64, ptr %i.t, align 8, !range !6, !alias.scope !2776, !noalias !2777, !noundef !3
  %i.xh = icmp eq i64 %i.xf, %i.xg
  br i1 %i.xh, label %bb.gk, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit194

bb.gk:                                            ; preds = %bb.gj
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2777
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit194

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit194: ; preds = %bb.gj, %bb.gk
  %i.xi = load ptr, ptr %i.v, align 8, !alias.scope !2776, !noalias !2777, !nonnull !3, !noundef !3
  %i.xj = getelementptr inbounds nuw [40 x i8], ptr %i.xi, i64 %i.xf ; 4 uses
  store i64 0, ptr %i.xj, align 8
  %.sroa.4268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store i64 %i.l, ptr %.sroa.4268.0..sroa_idx, align 8
  %.sroa.5269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  store i64 %i.m, ptr %.sroa.5269.0..sroa_idx, align 8
  %.sroa.6270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xj, i64 24
  store i64 %i.k, ptr %.sroa.6270.0..sroa_idx, align 8
  %i.xk = add i64 %i.xf, 1
  store i64 %i.xk, ptr %i.u, align 8, !alias.scope !2776, !noalias !2777
  br label %bb.gl

bb.gl:                                            ; preds = %bb.ap, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCs56aZGHL6Dc6_7ruff_db.exit194
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.h = add i64 %i.g, %2                         ; 2 uses
  %i.i = add i64 %i.g, %5                         ; 2 uses
  %i.j = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_ECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.h, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.i, i64 noundef %6) ; 4 uses
  %i.k = sub i64 %3, %i.j                         ; 11 uses
  %i.l = sub i64 %6, %i.j                         ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.val50 = load ptr, ptr %i.m, align 8           ; 14 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.val51 = load i64, ptr %i.n, align 8           ; 27 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val48 = load ptr, ptr %i.o, align 8           ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val49 = load i64, ptr %i.p, align 8           ; 24 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %5, i64 noundef %i.g)
  br label %bb.b

bb.d:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, %bb.b
  %.sroa.0253.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0253.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit ] ; 40 uses
  %.sroa.0.0 = phi i64 [ %i.h, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit ] ; 39 uses
  %i.w = icmp ult i64 %.sroa.0.0, %i.k            ; 2 uses
  %i.x = icmp ult i64 %.sroa.0253.0, %i.l         ; 3 uses
  %or.cond325 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond325, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, %bb.d
  br i1 %i.w, label %bb.an, label %bb.ao

bb.f:                                             ; preds = %bb.d
  %i.y = sub nuw i64 %i.k, %.sroa.0.0             ; 5 uses
  %i.z = sub nuw i64 %i.l, %.sroa.0253.0          ; 5 uses
  %i.aa = icmp ult i64 %i.y, 97
  %i.ab = icmp ult i64 %i.z, 97
  %or.cond.i = or i1 %i.ab, %i.aa
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 2 uses
  %.sroa.0.0.i73 = call noundef i64 @llvm.umax.i64(i64 %i.z, i64 %i.y)
  %i.ac = shl nuw i64 %.sroa.0.0.i72, 1
  %i.ad = icmp slt i64 %.sroa.0.0.i72, 0
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.052.0.i = phi i64 [ -1, %bb.h ], [ %i.ac, %bb.g ]
  %i.ae = icmp ult i64 %.sroa.0.0.i73, %.sroa.052.0.i
  br i1 %i.ae, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp ule i64 %i.z, %i.y
  %.not.i.fr = freeze i1 %.not.i                  ; 2 uses
  %i.af = icmp ule i64 %i.y, %i.z                 ; 2 uses
  br label %bb.k

.loopexit:                                        ; preds = %bb.ag, %bb.af, %.outer.us, %bb.r
  %.sroa.525.2.i.ph.lcssa590 = phi i64 [ %.sroa.525.0.i900, %bb.af ], [ %.sroa.525.3.i.us, %.outer.us ], [ %.sroa.525.2.i.ph861.us, %bb.r ], [ %.sroa.525.0.i900, %bb.ag ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa579 = phi i64 [ %.sroa.023.0.i901, %bb.af ], [ %.sroa.023.2.i.us, %.outer.us ], [ %.sroa.023.1.i.ph862.us, %bb.r ], [ %.sroa.023.0.i901, %bb.ag ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa568 = phi i64 [ %.sroa.9.0.i902, %bb.af ], [ %.sroa.9.3.i.us, %.outer.us ], [ %.sroa.9.2.i.ph863.us, %bb.r ], [ %.sroa.9.0.i902, %bb.ag ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa557 = phi i64 [ %.sroa.12.0.i903, %bb.af ], [ %.sroa.12.3.i.us, %.outer.us ], [ %.sroa.12.2.i.ph864.us, %bb.r ], [ %.sroa.12.0.i903, %bb.ag ] ; 2 uses
  %.not.i76 = icmp ugt i64 %spec.select326, 4
  %or.cond331 = select i1 %i.ag, i1 true, i1 %.not.i76
  br i1 %or.cond331, label %bb.ad, label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %.sroa.12.0.i903 = phi i64 [ undef, %bb.j ], [ %.sroa.12.2.i.ph.lcssa557, %.loopexit ] ; 3 uses
  %.sroa.9.0.i902 = phi i64 [ undef, %bb.j ], [ %.sroa.9.2.i.ph.lcssa568, %.loopexit ] ; 3 uses
  %.sroa.023.0.i901 = phi i64 [ 0, %bb.j ], [ %.sroa.023.1.i.ph.lcssa579, %.loopexit ] ; 3 uses
  %.sroa.525.0.i900 = phi i64 [ undef, %bb.j ], [ %.sroa.525.2.i.ph.lcssa590, %.loopexit ] ; 3 uses
  %.sroa.0287.0899 = phi i64 [ 0, %bb.j ], [ %spec.select326, %.loopexit ] ; 12 uses
  %i.ag = icmp eq i64 %.sroa.0287.0899, 4         ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.0287.0899, 1
  %spec.select326 = select i1 %i.ag, i64 4, i64 %i.ah ; 2 uses
  %i.ai = icmp eq i64 %.sroa.0287.0899, 0         ; 2 uses
  %i.aj = add i64 %.sroa.0287.0899, %.sroa.0.0    ; 6 uses
  %i.ak = icmp ult i64 %i.aj, %.val49
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.aj ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.fr = freeze i1 %i.ak
  %i.an = sub i64 %i.k, %i.aj
  br i1 %.fr, label %.lr.ph.us.preheader, label %.split865

.lr.ph.us.preheader:                              ; preds = %bb.k
  %i.ao = call i64 @llvm.usub.sat.i64(i64 %.val49, i64 %i.aj)
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.outer.us
  %.sroa.12.2.i.ph864.us = phi i64 [ %.sroa.12.3.i.us, %.outer.us ], [ %.sroa.12.0.i903, %.lr.ph.us.preheader ] ; 7 uses
  %.sroa.9.2.i.ph863.us = phi i64 [ %.sroa.9.3.i.us, %.outer.us ], [ %.sroa.9.0.i902, %.lr.ph.us.preheader ] ; 7 uses
  %.sroa.023.1.i.ph862.us = phi i64 [ %.sroa.023.2.i.us, %.outer.us ], [ %.sroa.023.0.i901, %.lr.ph.us.preheader ] ; 4 uses
  %.sroa.525.2.i.ph861.us = phi i64 [ %.sroa.525.3.i.us, %.outer.us ], [ %.sroa.525.0.i900, %.lr.ph.us.preheader ] ; 8 uses
  %.sroa.0289.0.ph860.us = phi i64 [ %spec.select327.us.us, %.outer.us ], [ 0, %.lr.ph.us.preheader ]
  br label %bb.l

bb.l:                                             ; preds = %bb.r, %.lr.ph.us
  %.sroa.0289.0648.us.us = phi i64 [ %.sroa.0289.0.ph860.us, %.lr.ph.us ], [ %spec.select327.us.us, %bb.r ] ; 11 uses
  %i.ap = icmp eq i64 %.sroa.0289.0648.us.us, 4   ; 3 uses
  %i.aq = add nuw nsw i64 %.sroa.0289.0648.us.us, 1
  %spec.select327.us.us = select i1 %i.ap, i64 4, i64 %i.aq ; 4 uses
  %i.ar = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2945
  br i1 %i.ar, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = icmp eq i64 %.sroa.0289.0648.us.us, 0   ; 2 uses
  %i.at = or i64 %.sroa.0289.0648.us.us, %.sroa.0287.0899
  %or.cond2.i.us.us = icmp eq i64 %i.at, 0
  br i1 %or.cond2.i.us.us, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %brmerge.i.not.us.us = and i1 %.not.i.fr, %i.as
  br i1 %brmerge.i.not.us.us, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  %or.cond3.old.i.us.us = or i1 %i.af, %i.as
  br i1 %or.cond3.old.i.us.us, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.au = add i64 %.sroa.0289.0648.us.us, %.sroa.0253.0 ; 7 uses
  %i.av = icmp ult i64 %i.au, %.val51
  br i1 %i.av, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.us.us, label %.split

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.us.us: ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.au ; 2 uses
  %.val56.us.us = load ptr, ptr %i.aw, align 8, !alias.scope !2946, !noalias !2947, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val57.us.us = load i64, ptr %i.ax, align 8, !alias.scope !2946, !noalias !2947, !noundef !3
  %.val58.us.us = load ptr, ptr %i.al, align 8    ; 4 uses
  %.val59.us.us = load i64, ptr %i.am, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2948)
  %i.ay = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !2948, !noalias !2949, !noundef !3
  %i.ba = sub i64 %.val57.us.us, %i.az            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !2948, !noalias !2949, !noundef !3 ; 2 uses
  %i.bd = icmp ult i64 %i.ba, %i.bc
  br i1 %i.bd, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit1.i.us.us, label %.split658.us

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit1.i.us.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.us.us
  %i.be = getelementptr inbounds nuw i8, ptr %.val56.us.us, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !2948, !noalias !2949, !nonnull !3, !noundef !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58.us.us) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2950)
  %i.bg = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !2950, !noalias !2951, !noundef !3
  %i.bi = sub i64 %.val59.us.us, %i.bh            ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !2950, !noalias !2951, !noundef !3 ; 2 uses
  %i.bl = icmp ult i64 %i.bi, %i.bk
  br i1 %i.bl, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.us.us, label %.split662.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.us.us: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit1.i.us.us
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.ba
  %i.bn = getelementptr inbounds nuw i8, ptr %.val58.us.us, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !2950, !noalias !2951, !nonnull !3, !noundef !3
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bi
  %.val.i.us.us = load i32, ptr %i.bm, align 4, !noundef !3
  %.val2.i.us.us = load i32, ptr %i.bp, align 4, !noundef !3
  %.not329.us.us = icmp eq i32 %.val.i.us.us, %.val2.i.us.us
  br i1 %.not329.us.us, label %.split666.us.us, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.us.us, %bb.p, %bb.o, %bb.m
  %.not.i78.us.us = icmp ugt i64 %spec.select327.us.us, 4
  %or.cond332.us.us = select i1 %i.ap, i1 true, i1 %.not.i78.us.us
  br i1 %or.cond332.us.us, label %.loopexit, label %bb.l

.split666.us.us:                                  ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.us.us
  %i.bq = sub i64 %i.l, %i.au
  %.sroa.0.0.i83.us = call noundef i64 @llvm.umin.i64(i64 %i.bq, i64 %i.an) ; 3 uses
  %.not907 = icmp eq i64 %.sroa.0.0.i83.us, 0
  br i1 %.not907, label %.outer.us, label %.lr.ph857.us.preheader

.lr.ph857.us.preheader:                           ; preds = %.split666.us.us
  %umax = call i64 @llvm.umax.i64(i64 %.val51, i64 %i.au) ; 2 uses
  %i.br = sub i64 %umax, %i.au
  %invariant.gep = getelementptr [16 x i8], ptr %.val50, i64 %i.au
  br label %.lr.ph857.us

.lr.ph857.us:                                     ; preds = %.lr.ph857.us.preheader, %bb.u
  %.sroa.01.0.i856.us = phi i64 [ %i.cr, %bb.u ], [ 0, %.lr.ph857.us.preheader ] ; 7 uses
  %i.bs = and i64 %.sroa.01.0.i856.us, 1023
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph857.us
  %i.bu = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2945
  br i1 %i.bu, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph857.us
  %exitcond.not = icmp eq i64 %.sroa.01.0.i856.us, %i.br
  br i1 %exitcond.not, label %.split877.us, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit84.us

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit84.us: ; preds = %bb.t
  %i.bv = add nuw i64 %.sroa.01.0.i856.us, %i.aj  ; 2 uses
  %exitcond1192.not = icmp eq i64 %.sroa.01.0.i856.us, %i.ao
  br i1 %exitcond1192.not, label %.split881.us, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit85.us

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit85.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit84.us
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %.sroa.01.0.i856.us ; 2 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.bv ; 2 uses
  %.val52.us = load ptr, ptr %gep, align 8, !alias.scope !2946, !noalias !2947, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.bx = getelementptr i8, ptr %gep, i64 8
  %.val53.us = load i64, ptr %i.bx, align 8, !alias.scope !2946, !noalias !2947, !noundef !3
  %.val54.us = load ptr, ptr %i.bw, align 8       ; 4 uses
  %i.by = getelementptr i8, ptr %i.bw, i64 8
  %.val55.us = load i64, ptr %i.by, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2952)
  %i.bz = getelementptr inbounds nuw i8, ptr %.val52.us, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !2952, !noalias !2953, !noundef !3
  %i.cb = sub i64 %.val53.us, %i.ca               ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val52.us, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !2952, !noalias !2953, !noundef !3 ; 2 uses
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit1.i86.us, label %.split885.us

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit1.i86.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit85.us
end_hunk_1
begin_hunk_2_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db:bb.a

.lr.ph.split.us.i200:                             ; preds = %.lr.ph.i195, %bb.gg
  %.sroa.0105.0644.us.i201 = phi i64 [ %i.zo, %bb.gg ], [ %.pre1194, %.lr.ph.i195 ] ; 3 uses
  %i.zo = add i64 %.sroa.0105.0644.us.i201, -1    ; 6 uses
  %i.zp = and i64 %i.zo, 1023
  %i.zq = icmp eq i64 %i.zp, 0
  br i1 %i.zq, label %bb.fv, label %bb.fx

bb.fv:                                            ; preds = %.lr.ph.split.us.i200
  %i.zr = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i210

bb.fw:                                            ; preds = %bb.fv
  br i1 %i.zr, label %.loopexit5.i162, label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %.lr.ph.split.us.i200
  %i.zs = add i64 %i.zo, %.sroa.0253.0            ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50) ]
  %i.zt = icmp ult i64 %i.zs, %.val51
  br i1 %i.zt, label %bb.fy, label %.invoke.i

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48) ]
  %i.zu = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.zs ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3045)
  call void @llvm.experimental.noalias.scope.decl(metadata !3046)
  %i.zv = load ptr, ptr %i.zu, align 8, !alias.scope !3045, !noalias !3047, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  %i.zx = load i64, ptr %i.zw, align 8, !alias.scope !3045, !noalias !3047, !noundef !3
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zv, i64 24
  %i.zz = load i64, ptr %i.zy, align 8, !alias.scope !3048, !noalias !3049, !noundef !3
  %i.aaa = sub i64 %i.zx, %i.zz                   ; 3 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %i.aac = load i64, ptr %i.aab, align 8, !alias.scope !3048, !noalias !3049, !noundef !3 ; 2 uses
  %i.aad = icmp ult i64 %i.aaa, %i.aac
  br i1 %i.aad, label %.noexc.us.i202, label %.invoke.i

.noexc.us.i202:                                   ; preds = %bb.fy
  %i.aae = load ptr, ptr %i.zm, align 8, !alias.scope !3046, !noalias !3050, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.aaf = load i64, ptr %i.zn, align 8, !alias.scope !3046, !noalias !3050, !noundef !3
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  %i.aah = load i64, ptr %i.aag, align 8, !alias.scope !3051, !noalias !3052, !noundef !3
  %i.aai = sub i64 %i.aaf, %i.aah                 ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  %i.aak = load i64, ptr %i.aaj, align 8, !alias.scope !3051, !noalias !3052, !noundef !3 ; 2 uses
  %i.aal = icmp ult i64 %i.aai, %i.aak
  br i1 %i.aal, label %bb.fz, label %.invoke.i

bb.fz:                                            ; preds = %.noexc.us.i202
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %i.aan = load ptr, ptr %i.aam, align 8, !alias.scope !3048, !noalias !3049, !nonnull !3, !noundef !3
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %i.aaa
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  %i.aaq = load ptr, ptr %i.aap, align 8, !alias.scope !3051, !noalias !3052, !nonnull !3, !noundef !3
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %i.aai
  %.val225.us.i203 = load i32, ptr %i.aao, align 4, !noundef !3
  %.val226.us.i204 = load i32, ptr %i.aar, align 4, !noundef !3
  %i.aas = icmp eq i32 %.val225.us.i203, %.val226.us.i204
  br i1 %i.aas, label %bb.gd, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aat = add i64 %i.zo, %i.zj                   ; 3 uses
  %i.aau = load ptr, ptr %i.ql, align 8, !noalias !3010, !nonnull !3, !noundef !3 ; 3 uses
  %i.aav = load i64, ptr %i.qm, align 8, !noalias !3010, !noundef !3 ; 5 uses
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
  %i.abe = load i64, ptr %i.qm, align 8, !noalias !3010, !noundef !3 ; 3 uses
  %i.abf = icmp ult i64 %i.abd, %i.abe
  br i1 %i.abf, label %bb.ge, label %.invoke.i

bb.ge:                                            ; preds = %bb.gd
  %i.abg = load ptr, ptr %i.ql, align 8, !noalias !3010, !nonnull !3, !noundef !3 ; 2 uses
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
  %i.abp = and i64 %.pre1194, 1023
  %i.abq = icmp eq i64 %i.abp, 1
  br i1 %i.abq, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %.lr.ph.split.i197
  %i.abr = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i198

bb.gi:                                            ; preds = %bb.gh
  br i1 %i.abr, label %.loopexit5.i162, label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %.lr.ph.split.i197
  %i.abs = add i64 %i.l, -1                       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50) ]
  %i.abt = icmp ult i64 %i.abs, %.val51
  br i1 %i.abt, label %bb.gk, label %.invoke.i

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48) ]
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.gf, %bb.gd, %bb.gb, %bb.ga, %.noexc.us.i202, %bb.fy, %bb.fx, %bb.eg, %bb.ee, %bb.ed, %bb.ec, %.noexc195.i129, %bb.ea, %bb.dz, %bb.dw, %bb.ff, %bb.fd, %bb.fc, %bb.fb, %.noexc187.i144, %bb.ez, %bb.ey, %bb.es, %bb.eq, %bb.ep, %bb.eo, %.noexc191.i169, %bb.em, %bb.el, %bb.fp, %bb.fo, %.noexc183.i185, %bb.fm, %bb.fl, %bb.fi, %bb.gk, %bb.gj
  %i.abu = phi i64 [ %i.zk, %bb.gk ], [ %i.abs, %bb.gj ], [ %.val49, %bb.ey ], [ %.val51, %bb.fi ], [ %.val51, %bb.el ], [ %i.rt, %.noexc195.i129 ], [ %i.yw, %bb.fp ], [ %.val49, %bb.fl ], [ %i.ye, %.noexc183.i185 ], [ %i.yp, %bb.fo ], [ %i.xu, %bb.fm ], [ %i.uw, %bb.es ], [ %i.tz, %.noexc191.i169 ], [ %i.uk, %bb.eo ], [ %i.uo, %bb.eq ], [ %i.um, %bb.ep ], [ %i.tr, %bb.em ], [ %i.wx, %bb.ff ], [ %i.vy, %.noexc187.i144 ], [ %i.wj, %bb.fb ], [ %i.wp, %bb.fd ], [ %i.wl, %bb.fc ], [ %i.vo, %bb.ez ], [ %i.qz, %bb.dw ], [ %i.qy, %bb.dz ], [ %i.sw, %bb.eg ], [ %i.sg, %bb.ed ], [ %i.rk, %bb.ea ], [ %i.se, %bb.ec ], [ %i.sl, %bb.ee ], [ %i.aat, %bb.ga ], [ %i.abd, %bb.gd ], [ %i.aai, %.noexc.us.i202 ], [ %i.aax, %bb.gb ], [ %i.abm, %bb.gf ], [ %i.zs, %bb.fx ], [ %i.aaa, %bb.fy ]
  %i.abv = phi i64 [ %.val49, %bb.gk ], [ %.val51, %bb.gj ], [ %.val49, %bb.ey ], [ %.val51, %bb.fi ], [ %.val51, %bb.el ], [ %i.rv, %.noexc195.i129 ], [ %i.yr, %bb.fp ], [ %.val49, %bb.fl ], [ %i.yg, %.noexc183.i185 ], [ %i.yr, %bb.fo ], [ %i.xw, %bb.fm ], [ %.pre1201.i173, %bb.es ], [ %i.ub, %.noexc191.i169 ], [ %.pre1201.i173, %bb.eo ], [ %.pre1201.i173, %bb.eq ], [ %.pre1201.i173, %bb.ep ], [ %i.tt, %bb.em ], [ %.pre1199.i148, %bb.ff ], [ %i.wa, %.noexc187.i144 ], [ %.pre1199.i148, %bb.fb ], [ %.pre1199.i148, %bb.fd ], [ %.pre1199.i148, %bb.fc ], [ %i.vq, %bb.ez ], [ %.val51, %bb.dw ], [ %.val49, %bb.dz ], [ %.pre1197.i133, %bb.eg ], [ %.pre1197.i133, %bb.ed ], [ %i.rm, %bb.ea ], [ %.pre1197.i133, %bb.ec ], [ %.pre1197.i133, %bb.ee ], [ %i.aav, %bb.ga ], [ %i.abe, %bb.gd ], [ %i.aak, %.noexc.us.i202 ], [ %i.aav, %bb.gb ], [ %i.abl, %bb.gf ], [ %.val51, %bb.fx ], [ %i.aac, %bb.fy ]
  %i.abw = phi ptr [ @74, %bb.gk ], [ @73, %bb.gj ], [ @64, %bb.ey ], [ @69, %bb.fi ], [ @57, %bb.el ], [ @84, %.noexc195.i129 ], [ @72, %bb.fp ], [ @70, %bb.fl ], [ @84, %.noexc183.i185 ], [ @71, %bb.fo ], [ @84, %bb.fm ], [ @62, %bb.es ], [ @84, %.noexc191.i169 ], [ @59, %bb.eo ], [ @60, %bb.eq ], [ @61, %bb.ep ], [ @84, %bb.em ], [ @68, %bb.ff ], [ @84, %.noexc187.i144 ], [ @65, %bb.fb ], [ @66, %bb.fd ], [ @67, %bb.fc ], [ @84, %bb.ez ], [ @51, %bb.dw ], [ @52, %bb.dz ], [ @56, %bb.eg ], [ @55, %bb.ed ], [ @84, %bb.ea ], [ @53, %bb.ec ], [ @54, %bb.ee ], [ @75, %bb.ga ], [ @77, %bb.gd ], [ @84, %.noexc.us.i202 ], [ @76, %bb.gb ], [ @78, %bb.gf ], [ @73, %bb.fx ], [ @84, %bb.fy ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.abu, i64 noundef %i.abv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abw) #14
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i107

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.gl:                                            ; preds = %.loopexit.split-lp.i109
  %i.abx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %.loopexit5.i162
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3010
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit.thread

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit.thread: ; preds = %bb.ar, %bb.as, %bb.dq, %bb.av, %bb.at, %.sink.split.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit
  %.val68 = load ptr, ptr %i.o, align 8           ; 4 uses
  %.val69 = load i64, ptr %i.p, align 8           ; 4 uses
  %.val70 = load ptr, ptr %i.m, align 8           ; 4 uses
  %.val71 = load i64, ptr %i.n, align 8           ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3053)
  call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  %i.aby = sub i64 %.pre, %.pre1194               ; 3 uses
  %i.abz = and i64 %i.aby, 1
  %.not.i212 = icmp eq i64 %i.abz, 0              ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.acb = load i64, ptr %i.aca, align 8, !alias.scope !3053, !noalias !3055, !noundef !3 ; 4 uses
  %i.acc = add i64 %i.acb, 1                      ; 5 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ace = load i64, ptr %i.acd, align 8, !alias.scope !3053, !noalias !3055, !noundef !3 ; 16 uses
  %i.acf = icmp ult i64 %i.acc, %i.ace
  br i1 %i.acf, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit.thread
  %i.acg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ach = load ptr, ptr %i.acg, align 8, !alias.scope !3053, !noalias !3055, !nonnull !3, !noundef !3 ; 7 uses
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %i.acc
  store i64 0, ptr %i.aci, align 8, !noalias !3056
  %i.acj = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ack = load i64, ptr %i.acj, align 8, !alias.scope !3054, !noalias !3057, !noundef !3 ; 4 uses
  %i.acl = add i64 %i.ack, 1                      ; 5 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.acn = load i64, ptr %i.acm, align 8, !alias.scope !3054, !noalias !3057, !noundef !3 ; 16 uses
  %i.aco = icmp ult i64 %i.acl, %i.acn
  br i1 %i.aco, label %bb.go, label %bb.gp

bb.gn:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit.thread
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.acc, i64 noundef %i.ace, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !noalias !3056
  unreachable

bb.go:                                            ; preds = %bb.gm
  %i.acp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.acq = load ptr, ptr %i.acp, align 8, !alias.scope !3054, !noalias !3057, !nonnull !3, !noundef !3 ; 7 uses
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.acl
  store i64 0, ptr %i.acr, align 8, !noalias !3056
  %i.acs = add i64 %.pre, %.pre1194               ; 2 uses
  %i.act = lshr i64 %i.acs, 1                     ; 2 uses
  %.sroa.047.0.i = sub nuw i64 %i.acs, %i.act     ; 2 uses
  %i.acu = icmp ult i64 %i.ace, 1152921504606846976
  call void @llvm.assume(i1 %i.acu)
  %.not128.not.i = icmp ugt i64 %i.ace, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.gr, label %bb.gq, !prof !4

bb.gp:                                            ; preds = %bb.gm
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.acl, i64 noundef %i.acn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !noalias !3056
  unreachable

bb.gq:                                            ; preds = %bb.go
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !noalias !3056
  unreachable

bb.gr:                                            ; preds = %bb.go
  %i.acv = icmp ult i64 %i.acn, 1152921504606846976
  call void @llvm.assume(i1 %i.acv)
  %.not129.not.i = icmp samesign ugt i64 %i.acn, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph136.i, label %bb.gs, !prof !4

.lr.ph136.i:                                      ; preds = %bb.gr
  %i.acw = add i64 %i.acb, -1
  %i.acx = add i64 %i.ack, -1
  %.neg = add i64 %i.k, 1
  %.neg334 = add i64 %.neg, %i.l
  %11 = add i64 %.sroa.0253.0, %.sroa.0.0
  %12 = add i64 %11, %i.act
  %13 = sub i64 %.neg334, %12
  br label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14, !noalias !3056
  unreachable

bb.gt:                                            ; preds = %._crit_edge132.i, %.lr.ph136.i
  %.sroa.048.0135.i = phi i64 [ 0, %.lr.ph136.i ], [ %i.acy, %._crit_edge132.i ] ; 10 uses
  %i.acy = add nuw i64 %.sroa.048.0135.i, 1       ; 2 uses
  %i.acz = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3056
  br i1 %i.acz, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph119.preheader.i

.lr.ph119.preheader.i:                            ; preds = %bb.gt
  %i.ada = sub nsw i64 0, %.sroa.048.0135.i       ; 6 uses
  %.pre225.i = sub i64 %i.acc, %.sroa.048.0135.i
  br label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %bb.iy, %.lr.ph119.preheader.i
  %.sroa.7.0118.i = phi i64 [ %.sroa.7.1.i, %bb.iy ], [ %.sroa.048.0135.i, %.lr.ph119.preheader.i ] ; 2 uses
  %not..sroa.1418.0117.i = phi i64 [ 1, %bb.iy ], [ 0, %.lr.ph119.preheader.i ]
  %i.adb = sub i64 %.sroa.7.0118.i, %not..sroa.1418.0117.i ; 11 uses
  %.not.i.not.i.i = icmp sgt i64 %i.adb, %.sroa.7.0118.i
  br i1 %.not.i.not.i.i, label %.lr.ph131.preheader.i, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph119.i
  %i.adc = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.adb, i64 %i.ada)
  switch i8 %i.adc, label %bb.gv [
    i8 -1, label %.lr.ph131.preheader.i
    i8 0, label %bb.gx
    i8 1, label %bb.gw
  ]

bb.gv:                                            ; preds = %bb.gu
  unreachable

bb.gw:                                            ; preds = %bb.gu
  %i.add = add i64 %i.adb, -1
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gu
  %.sroa.11.1.i = phi i1 [ true, %bb.gu ], [ false, %bb.gw ]
  %.sroa.7.1.i = phi i64 [ %i.adb, %bb.gu ], [ %i.add, %bb.gw ] ; 2 uses
  %i.ade = icmp eq i64 %i.adb, %i.ada
  br i1 %i.ade, label %._crit_edge220.i.a, label %bb.id

.lr.ph131.preheader.i:                            ; preds = %bb.iy, %bb.gu, %.lr.ph119.i
  %.pre.i216 = sub i64 %i.acl, %.sroa.048.0135.i
  br label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %bb.hy, %.lr.ph131.preheader.i
  %not..sroa.1727.0129.i = phi i64 [ 1, %bb.hy ], [ 0, %.lr.ph131.preheader.i ]
  %.sroa.726.0128.i = phi i64 [ %.sroa.726.1.i, %bb.hy ], [ %.sroa.048.0135.i, %.lr.ph131.preheader.i ] ; 2 uses
  %i.adf = sub i64 %.sroa.726.0128.i, %not..sroa.1727.0129.i ; 11 uses
  %.not.i.not.i152.i = icmp sgt i64 %i.adf, %.sroa.726.0128.i
  br i1 %.not.i.not.i152.i, label %._crit_edge132.i, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph131.i
  %i.adg = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.adf, i64 %i.ada)
  switch i8 %i.adg, label %bb.gz [
    i8 -1, label %._crit_edge132.i
    i8 0, label %bb.hb
    i8 1, label %bb.ha
  ]

bb.gz:                                            ; preds = %bb.gy
  unreachable

bb.ha:                                            ; preds = %bb.gy
  %i.adh = add i64 %i.adf, -1
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gy
  %.sroa.726.1.i = phi i64 [ %i.adf, %bb.gy ], [ %i.adh, %bb.ha ] ; 2 uses
  %.sroa.12.1.i214 = phi i1 [ true, %bb.gy ], [ false, %bb.ha ]
  %i.adi = icmp eq i64 %i.adf, %i.ada
  br i1 %i.adi, label %._crit_edge222.i.a, label %bb.hc

._crit_edge132.i:                                 ; preds = %bb.hy, %bb.gy, %.lr.ph131.i
  %exitcond218.not.i = icmp eq i64 %i.acy, %13
  br i1 %exitcond218.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_ECs56aZGHL6Dc6_7ruff_db.exit, label %bb.gt

bb.hc:                                            ; preds = %bb.hb
  %.not130.i = icmp eq i64 %i.adf, %.sroa.048.0135.i
  %.pre223.i = add i64 %i.acx, %i.adf             ; 6 uses
  br i1 %.not130.i, label %._crit_edge221.i.a, label %bb.hd

._crit_edge222.i.a:                               ; preds = %bb.hb, %bb.hg
  %.pre-phi.i = phi i64 [ %i.adm, %bb.hg ], [ %.pre.i216, %bb.hb ] ; 3 uses
  %i.adj = icmp ult i64 %.pre-phi.i, %i.acn
  br i1 %i.adj, label %bb.hl, label %bb.hm

._crit_edge221.i.a:                               ; preds = %bb.hg, %bb.hc
  %i.adk = icmp ult i64 %.pre223.i, %i.acn
  br i1 %i.adk, label %bb.hi, label %bb.hj

bb.hd:                                            ; preds = %bb.hc
  %i.adl = icmp ult i64 %.pre223.i, %i.acn
  br i1 %i.adl, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.adm = add i64 %i.adf, %i.acl                 ; 4 uses
  %i.adn = icmp ult i64 %i.adm, %i.acn
  br i1 %i.adn, label %bb.hg, label %bb.hh

bb.hf:                                            ; preds = %bb.hd
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre223.i, i64 noundef %i.acn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14, !noalias !3056
  unreachable

bb.hg:                                            ; preds = %bb.he
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %.pre223.i
  %i.adp = load i64, ptr %i.ado, align 8, !noalias !3056, !noundef !3
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.adm
  %i.adr = load i64, ptr %i.adq, align 8, !noalias !3056, !noundef !3
  %i.ads = icmp ult i64 %i.adp, %i.adr
  br i1 %i.ads, label %._crit_edge222.i.a, label %._crit_edge221.i.a

bb.hh:                                            ; preds = %bb.he
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.adm, i64 noundef %i.acn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14, !noalias !3056
  unreachable

bb.hi:                                            ; preds = %._crit_edge221.i.a
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %.pre223.i
  %i.adu = load i64, ptr %i.adt, align 8, !noalias !3056, !noundef !3
  %i.adv = add i64 %i.adu, 1
  br label %bb.hk

bb.hj:                                            ; preds = %._crit_edge221.i.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre223.i, i64 noundef %i.acn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #14, !noalias !3056
  unreachable

bb.hk:                                            ; preds = %bb.hl, %bb.hi
  %.sroa.014.0.i = phi i64 [ %i.aea, %bb.hl ], [ %i.adv, %bb.hi ] ; 5 uses
  %i.adw = sub i64 %.sroa.014.0.i, %i.adf         ; 4 uses
  %i.adx = icmp ult i64 %.sroa.014.0.i, %.pre
  %i.ady = icmp ult i64 %i.adw, %.pre1194
  %or.cond.i215 = and i1 %i.adx, %i.ady
  br i1 %or.cond.i215, label %bb.ho, label %bb.hn

bb.hl:                                            ; preds = %._crit_edge222.i.a
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %.pre-phi.i
  %i.aea = load i64, ptr %i.adz, align 8, !noalias !3056, !noundef !3
  br label %bb.hk

bb.hm:                                            ; preds = %._crit_edge222.i.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.acn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14, !noalias !3056
  unreachable

bb.hn:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i, %bb.hk
  %.sroa.020.0.i = phi i64 [ %i.afp, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i ], [ %i.adw, %bb.hk ]
  %.sroa.014.1.i = phi i64 [ %i.afo, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i ], [ %.sroa.014.0.i, %bb.hk ] ; 3 uses
  %i.aeb = add i64 %i.adf, %i.ack                 ; 3 uses
  %i.aec = icmp ult i64 %i.aeb, %i.acn
  br i1 %i.aec, label %bb.hv, label %bb.hw

bb.ho:                                            ; preds = %bb.hk
  %i.aed = sub i64 %i.k, %.sroa.014.0.i           ; 2 uses
  %i.aee = sub i64 %i.l, %i.adw                   ; 2 uses
  %i.aef = sub i64 %i.aed, %.sroa.0.0
  %i.aeg = sub i64 %i.aee, %.sroa.0253.0
  %.sroa.0.0.i156.i = call noundef i64 @llvm.umin.i64(i64 %i.aeg, i64 %i.aef) ; 3 uses
  %.not140.i = icmp eq i64 %.sroa.0.0.i156.i, 0
  br i1 %.not140.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %bb.ho
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hu, %.lr.ph124.i
  %.sroa.0.0.i136122.i = phi i64 [ 0, %.lr.ph124.i ], [ %i.afn, %bb.hu ] ; 3 uses
  %i.aeh = xor i64 %.sroa.0.0.i136122.i, -1       ; 2 uses
  %i.aei = add i64 %i.aee, %i.aeh                 ; 3 uses
  %i.aej = icmp ult i64 %i.aei, %.val71
  br i1 %i.aej, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aei, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14, !noalias !3058
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %bb.hp
  %i.aek = add i64 %i.aed, %i.aeh                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.ael = icmp ult i64 %i.aek, %.val69
  br i1 %i.ael, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit157.i, label %bb.hr

bb.hr:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aek, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #14, !noalias !3059
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit157.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i
  %i.aem = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.aei ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3060)
  call void @llvm.experimental.noalias.scope.decl(metadata !3061)
  %i.aen = load ptr, ptr %i.aem, align 8, !alias.scope !3060, !noalias !3062, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  %i.aep = load i64, ptr %i.aeo, align 8, !alias.scope !3060, !noalias !3062, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !3063)
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aen, i64 24
  %i.aer = load i64, ptr %i.aeq, align 8, !alias.scope !3063, !noalias !3064, !noundef !3
  %i.aes = sub i64 %i.aep, %i.aer                 ; 3 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aen, i64 16
  %i.aeu = load i64, ptr %i.aet, align 8, !alias.scope !3063, !noalias !3064, !noundef !3 ; 2 uses
  %i.aev = icmp ult i64 %i.aes, %i.aeu
  br i1 %i.aev, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit139.i, label %bb.hs

bb.hs:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit157.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aes, i64 noundef %i.aeu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !3065
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit139.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit157.i
  %i.aew = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.aek ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aen, i64 8
  %i.aey = load ptr, ptr %i.aex, align 8, !alias.scope !3063, !noalias !3064, !nonnull !3, !noundef !3
  %i.aez = load ptr, ptr %i.aew, align 8, !alias.scope !3061, !noalias !3066, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aew, i64 8
  %i.afb = load i64, ptr %i.afa, align 8, !alias.scope !3061, !noalias !3066, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !3067)
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aez, i64 24
  %i.afd = load i64, ptr %i.afc, align 8, !alias.scope !3067, !noalias !3068, !noundef !3
  %i.afe = sub i64 %i.afb, %i.afd                 ; 3 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aez, i64 16
  %i.afg = load i64, ptr %i.aff, align 8, !alias.scope !3067, !noalias !3068, !noundef !3 ; 2 uses
  %i.afh = icmp ult i64 %i.afe, %i.afg
  br i1 %i.afh, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit138.i, label %bb.ht

bb.ht:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit139.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.afe, i64 noundef %i.afg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !3069
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit138.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit139.i
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.aey, i64 %i.aes
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aez, i64 8
  %i.afk = load ptr, ptr %i.afj, align 8, !alias.scope !3067, !noalias !3068, !nonnull !3, !noundef !3
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.afk, i64 %i.afe
  %.val141.i = load i32, ptr %i.afi, align 4, !noalias !3056, !noundef !3
  %.val142.i = load i32, ptr %i.afl, align 4, !noalias !3056, !noundef !3
  %i.afm = icmp eq i32 %.val141.i, %.val142.i
  br i1 %i.afm, label %bb.hu, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i

bb.hu:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit138.i
  %i.afn = add nuw i64 %.sroa.0.0.i136122.i, 1    ; 2 uses
  %exitcond217.not.i = icmp eq i64 %i.afn, %.sroa.0.0.i156.i
  br i1 %exitcond217.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i, label %bb.hp

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %bb.hu, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit138.i, %bb.ho
  %.sroa.0.0.i136.lcssa.i = phi i64 [ 0, %bb.ho ], [ %.sroa.0.0.i136122.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit138.i ], [ %.sroa.0.0.i156.i, %bb.hu ] ; 2 uses
  %i.afo = add i64 %.sroa.0.0.i136.lcssa.i, %.sroa.014.0.i
  %i.afp = add i64 %.sroa.0.0.i136.lcssa.i, %i.adw
  br label %bb.hn

bb.hv:                                            ; preds = %bb.hn
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.aeb
  store i64 %.sroa.014.1.i, ptr %i.afq, align 8, !noalias !3056
  br i1 %.not.i212, label %bb.hx, label %bb.hy

bb.hw:                                            ; preds = %bb.hn
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aeb, i64 noundef %i.acn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #14, !noalias !3056
  unreachable

bb.hx:                                            ; preds = %bb.hv
  %i.afr = sub i64 %i.adf, %i.aby                 ; 2 uses
  %.sroa.024.0.i = call i64 @llvm.abs.i64(i64 %i.afr, i1 false)
  %.not131.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.048.0135.i
  br i1 %.not131.i, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.ia, %bb.hx, %bb.hv
  %.not.i151.i = icmp slt i64 %.sroa.726.1.i, %i.ada
  %or.cond43.i = select i1 %.sroa.12.1.i214, i1 true, i1 %.not.i151.i
  br i1 %or.cond43.i, label %._crit_edge132.i, label %.lr.ph131.i

bb.hz:                                            ; preds = %bb.hx
  %i.afs = sub i64 %i.acb, %i.afr                 ; 3 uses
  %i.aft = icmp ult i64 %i.afs, %i.ace
  br i1 %i.aft, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %i.afs
  %i.afv = load i64, ptr %i.afu, align 8, !noalias !3056, !noundef !3
  %i.afw = add i64 %i.afv, %.sroa.014.1.i
  %.not132.i = icmp ult i64 %i.afw, %.pre
end_hunk_2
begin_hunk_3_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db:bb.a
  %i.agm = sub i64 %.sroa.04.0.i213, %i.adb       ; 3 uses
  %i.agn = icmp ult i64 %.sroa.04.0.i213, %.pre
  %i.ago = icmp ult i64 %i.agm, %.pre1194
  %or.cond41.i = select i1 %i.agn, i1 %i.ago, i1 false
  br i1 %or.cond41.i, label %bb.ip, label %bb.io

bb.im:                                            ; preds = %._crit_edge220.i.a
  %i.agp = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %.pre-phi226.i
  %i.agq = load i64, ptr %i.agp, align 8, !noalias !3056, !noundef !3
  br label %bb.il

bb.in:                                            ; preds = %._crit_edge220.i.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi226.i, i64 noundef %i.ace, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14, !noalias !3056
  unreachable

bb.io:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i, %bb.il
  %.sroa.04.1.i = phi i64 [ %i.aib, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i ], [ %.sroa.04.0.i213, %bb.il ] ; 2 uses
  %i.agr = add i64 %i.adb, %i.acb                 ; 3 uses
  %i.ags = icmp ult i64 %i.agr, %i.ace
  br i1 %i.ags, label %bb.iw, label %bb.ix

bb.ip:                                            ; preds = %bb.il
  %i.agt = add i64 %.sroa.04.0.i213, %.sroa.0.0   ; 4 uses
  %i.agu = add i64 %i.agm, %.sroa.0253.0          ; 3 uses
  %i.agv = sub i64 %i.k, %i.agt
  %i.agw = sub i64 %i.l, %i.agu
  %.sroa.0.0.i158.i = call noundef i64 @llvm.umin.i64(i64 %i.agw, i64 %i.agv) ; 3 uses
  %.not139.i = icmp eq i64 %.sroa.0.0.i158.i, 0
  br i1 %.not139.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i, label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %bb.ip
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  %umax215.i = call i64 @llvm.umax.i64(i64 %.val69, i64 %i.agt) ; 2 uses
  %i.agx = sub i64 %umax215.i, %i.agt
  %invariant.gep.i = getelementptr [16 x i8], ptr %.val68, i64 %i.agt
  br label %bb.iq

bb.iq:                                            ; preds = %bb.iv, %.lr.ph.i217
  %.sroa.0.0.i114.i = phi i64 [ 0, %.lr.ph.i217 ], [ %i.aia, %bb.iv ] ; 5 uses
  %i.agy = add nuw i64 %.sroa.0.0.i114.i, %i.agu  ; 2 uses
  %i.agz = icmp ult i64 %i.agy, %.val71
  br i1 %i.agz, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit159.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %umax.i218 = call i64 @llvm.umax.i64(i64 %.val71, i64 %i.agu)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i218, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !noalias !3070
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit159.i: ; preds = %bb.iq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %exitcond.not.i219 = icmp eq i64 %.sroa.0.0.i114.i, %i.agx
  br i1 %exitcond.not.i219, label %bb.is, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit160.i

bb.is:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit159.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax215.i, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !noalias !3071
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit160.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit159.i
  %i.aha = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.agy ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3072)
  call void @llvm.experimental.noalias.scope.decl(metadata !3073)
  %i.ahb = load ptr, ptr %i.aha, align 8, !alias.scope !3072, !noalias !3074, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  %i.ahd = load i64, ptr %i.ahc, align 8, !alias.scope !3072, !noalias !3074, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !3075)
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahb, i64 24
  %i.ahf = load i64, ptr %i.ahe, align 8, !alias.scope !3075, !noalias !3076, !noundef !3
  %i.ahg = sub i64 %i.ahd, %i.ahf                 ; 3 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahb, i64 16
  %i.ahi = load i64, ptr %i.ahh, align 8, !alias.scope !3075, !noalias !3076, !noundef !3 ; 2 uses
  %i.ahj = icmp ult i64 %i.ahg, %i.ahi
  br i1 %i.ahj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit137.i, label %bb.it

bb.it:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit160.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ahg, i64 noundef %i.ahi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !3077
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit137.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit160.i
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.sroa.0.0.i114.i ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8
  %i.ahl = load ptr, ptr %i.ahk, align 8, !alias.scope !3075, !noalias !3076, !nonnull !3, !noundef !3
  %i.ahm = load ptr, ptr %gep.i, align 8, !alias.scope !3073, !noalias !3078, !nonnull !3, !align !5, !noundef !3 ; 3 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.aho = load i64, ptr %i.ahn, align 8, !alias.scope !3073, !noalias !3078, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !3079)
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahm, i64 24
  %i.ahq = load i64, ptr %i.ahp, align 8, !alias.scope !3079, !noalias !3080, !noundef !3
  %i.ahr = sub i64 %i.aho, %i.ahq                 ; 3 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahm, i64 16
  %i.aht = load i64, ptr %i.ahs, align 8, !alias.scope !3079, !noalias !3080, !noundef !3 ; 2 uses
  %i.ahu = icmp ult i64 %i.ahr, %i.aht
  br i1 %i.ahu, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i, label %bb.iu

bb.iu:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit137.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ahr, i64 noundef %i.aht, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !3081
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit137.i
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %i.ahg
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.ahx = load ptr, ptr %i.ahw, align 8, !alias.scope !3079, !noalias !3080, !nonnull !3, !noundef !3
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.ahx, i64 %i.ahr
  %.val.i220 = load i32, ptr %i.ahv, align 4, !noalias !3056, !noundef !3
  %.val140.i = load i32, ptr %i.ahy, align 4, !noalias !3056, !noundef !3
  %i.ahz = icmp eq i32 %.val.i220, %.val140.i
  br i1 %i.ahz, label %bb.iv, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i

bb.iv:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i
  %i.aia = add nuw i64 %.sroa.0.0.i114.i, 1       ; 2 uses
  %exitcond216.not.i = icmp eq i64 %i.aia, %.sroa.0.0.i158.i
  br i1 %exitcond216.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i, label %bb.iq

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %bb.iv, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i, %bb.ip
  %.sroa.0.0.i.lcssa.i = phi i64 [ 0, %bb.ip ], [ %.sroa.0.0.i114.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i ], [ %.sroa.0.0.i158.i, %bb.iv ]
  %i.aib = add i64 %.sroa.0.0.i.lcssa.i, %.sroa.04.0.i213
  br label %bb.io

bb.iw:                                            ; preds = %bb.io
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %i.agr
  store i64 %.sroa.04.1.i, ptr %i.aic, align 8, !noalias !3056
  br i1 %.not.i212, label %bb.iy, label %bb.iz

bb.ix:                                            ; preds = %bb.io
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.agr, i64 noundef %i.ace, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #14, !noalias !3056
  unreachable

bb.iy:                                            ; preds = %bb.jb, %bb.iz, %bb.iw
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %i.ada
  %or.cond42.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond42.i, label %.lr.ph131.preheader.i, label %.lr.ph119.i

bb.iz:                                            ; preds = %bb.iw
  %i.aid = sub i64 %i.adb, %i.aby                 ; 2 uses
  %.sroa.010.0.i = call i64 @llvm.abs.i64(i64 %i.aid, i1 false)
  %.not134.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.048.0135.i
  br i1 %.not134.not.i, label %bb.ja, label %bb.iy

bb.ja:                                            ; preds = %bb.iz
  %i.aie = sub i64 %i.ack, %i.aid                 ; 3 uses
  %i.aif = icmp ult i64 %i.aie, %i.acn
  br i1 %i.aif, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.aig = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.aie
  %i.aih = load i64, ptr %i.aig, align 8, !noalias !3056, !noundef !3
  %i.aii = add i64 %i.aih, %.sroa.04.1.i
  %.not135.i = icmp ult i64 %i.aii, %.pre
  br i1 %.not135.i, label %bb.iy, label %bb.jd

bb.jc:                                            ; preds = %bb.ja
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aie, i64 noundef %i.acn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14, !noalias !3056
  unreachable

bb.jd:                                            ; preds = %bb.jb
  %i.aij = add i64 %.sroa.04.0.i213, %.sroa.0.0
  %i.aik = add i64 %i.agm, %.sroa.0253.0
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.ic
  %.sroa.7.0.ph = phi i64 [ %i.aik, %bb.jd ], [ %i.afy, %bb.ic ] ; 2 uses
  %.sroa.5.0.ph = phi i64 [ %i.aij, %bb.jd ], [ %i.afx, %bb.ic ] ; 2 uses
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.0.0, i64 noundef %.sroa.5.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.0253.0, i64 noundef %.sroa.7.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.5.0.ph, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.7.0.ph, i64 noundef %i.l, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.ap

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_ECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %._crit_edge132.i, %bb.gt
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.pre, i64 noundef %.sroa.0253.0)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.0253.0, i64 noundef %.pre1194)
  br label %bb.ap

.thread:                                          ; preds = %bb.ao
  %i.ail = sub nuw i64 %i.l, %.sroa.0253.0
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.0253.0, i64 noundef %i.ail)
  br label %bb.ap

bb.jf:                                            ; preds = %bb.ap
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.k, i64 noundef %i.l, i64 noundef %i.j)
  br label %bb.jg

bb.jg:                                            ; preds = %bb.ap, %bb.jf
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2n_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.h = add i64 %i.g, %2                         ; 2 uses
  %i.i = add i64 %i.g, %5                         ; 2 uses
  %i.j = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.h, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.i, i64 noundef %6) ; 4 uses
  %i.k = sub i64 %3, %i.j                         ; 11 uses
  %i.l = sub i64 %6, %i.j                         ; 12 uses
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
  tail call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %5, i64 noundef %i.g)
  br label %bb.b

bb.d:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, %bb.b
  %.sroa.0260.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0260.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit ] ; 41 uses
  %.sroa.0.0 = phi i64 [ %i.h, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit ] ; 40 uses
  %i.w = icmp ult i64 %.sroa.0.0, %i.k            ; 2 uses
  %i.x = icmp ult i64 %.sroa.0260.0, %i.l         ; 3 uses
  %or.cond334 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond334, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, %bb.d
  br i1 %i.w, label %bb.ak, label %bb.al

bb.f:                                             ; preds = %bb.d
  %i.y = sub nuw i64 %i.k, %.sroa.0.0             ; 5 uses
  %i.z = sub nuw i64 %i.l, %.sroa.0260.0          ; 5 uses
  %i.aa = icmp ult i64 %i.y, 97
  %i.ab = icmp ult i64 %i.z, 97
  %or.cond.i = or i1 %i.ab, %i.aa
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 2 uses
  %.sroa.0.0.i73 = call noundef i64 @llvm.umax.i64(i64 %i.z, i64 %i.y)
  %i.ac = shl nuw i64 %.sroa.0.0.i72, 1
  %i.ad = icmp slt i64 %.sroa.0.0.i72, 0
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.052.0.i = phi i64 [ -1, %bb.h ], [ %i.ac, %bb.g ]
  %i.ae = icmp ult i64 %.sroa.0.0.i73, %.sroa.052.0.i
  br i1 %i.ae, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp ule i64 %i.z, %i.y
  %.not.i.fr = freeze i1 %.not.i                  ; 2 uses
  %i.af = icmp ule i64 %i.y, %i.z                 ; 2 uses
  br label %bb.k

.loopexit:                                        ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us693, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us655, %.outer.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us
  %.sroa.525.2.i.ph.lcssa508 = phi i64 [ %.sroa.525.0.i737, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us655 ], [ %.sroa.525.3.i.us, %.outer.us ], [ %.sroa.525.2.i.ph710.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us ], [ %.sroa.525.0.i737, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us693 ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa501 = phi i64 [ %.sroa.023.0.i738, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us655 ], [ %.sroa.023.2.i.us, %.outer.us ], [ %.sroa.023.1.i.ph711.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us ], [ %.sroa.023.0.i738, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us693 ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa494 = phi i64 [ %.sroa.9.0.i739, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us655 ], [ %.sroa.9.3.i.us, %.outer.us ], [ %.sroa.9.2.i.ph712.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us ], [ %.sroa.9.0.i739, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us693 ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa487 = phi i64 [ %.sroa.12.0.i740, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us655 ], [ %.sroa.12.3.i.us, %.outer.us ], [ %.sroa.12.2.i.ph713.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us ], [ %.sroa.12.0.i740, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us693 ] ; 2 uses
  %.not.i76 = icmp ugt i64 %spec.select335, 4
  %or.cond340 = select i1 %i.ag, i1 true, i1 %.not.i76
  br i1 %or.cond340, label %bb.ac, label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %.sroa.12.0.i740 = phi i64 [ undef, %bb.j ], [ %.sroa.12.2.i.ph.lcssa487, %.loopexit ] ; 3 uses
  %.sroa.9.0.i739 = phi i64 [ undef, %bb.j ], [ %.sroa.9.2.i.ph.lcssa494, %.loopexit ] ; 3 uses
  %.sroa.023.0.i738 = phi i64 [ 0, %bb.j ], [ %.sroa.023.1.i.ph.lcssa501, %.loopexit ] ; 3 uses
  %.sroa.525.0.i737 = phi i64 [ undef, %bb.j ], [ %.sroa.525.2.i.ph.lcssa508, %.loopexit ] ; 3 uses
  %.sroa.0294.0736 = phi i64 [ 0, %bb.j ], [ %spec.select335, %.loopexit ] ; 12 uses
  %i.ag = icmp eq i64 %.sroa.0294.0736, 4         ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.0294.0736, 1
  %spec.select335 = select i1 %i.ag, i64 4, i64 %i.ah ; 2 uses
  %i.ai = icmp eq i64 %.sroa.0294.0736, 0         ; 2 uses
  %i.aj = add i64 %.sroa.0294.0736, %.sroa.0.0    ; 6 uses
  %i.ak = icmp ult i64 %i.aj, %.val49
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.aj ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.fr = freeze i1 %i.ak
  %i.an = sub i64 %i.k, %i.aj
  br i1 %.fr, label %.lr.ph.us.preheader, label %.split714

.lr.ph.us.preheader:                              ; preds = %bb.k
  %i.ao = call i64 @llvm.usub.sat.i64(i64 %.val49, i64 %i.aj)
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.outer.us
  %.sroa.12.2.i.ph713.us = phi i64 [ %.sroa.12.3.i.us, %.outer.us ], [ %.sroa.12.0.i740, %.lr.ph.us.preheader ] ; 7 uses
  %.sroa.9.2.i.ph712.us = phi i64 [ %.sroa.9.3.i.us, %.outer.us ], [ %.sroa.9.0.i739, %.lr.ph.us.preheader ] ; 7 uses
  %.sroa.023.1.i.ph711.us = phi i64 [ %.sroa.023.2.i.us, %.outer.us ], [ %.sroa.023.0.i738, %.lr.ph.us.preheader ] ; 4 uses
  %.sroa.525.2.i.ph710.us = phi i64 [ %.sroa.525.3.i.us, %.outer.us ], [ %.sroa.525.0.i737, %.lr.ph.us.preheader ] ; 8 uses
  %.sroa.0296.0.ph709.us = phi i64 [ %spec.select336.us.us, %.outer.us ], [ 0, %.lr.ph.us.preheader ]
  br label %bb.l

bb.l:                                             ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us, %.lr.ph.us
  %.sroa.0296.0546.us.us = phi i64 [ %.sroa.0296.0.ph709.us, %.lr.ph.us ], [ %spec.select336.us.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us ] ; 11 uses
  %i.ap = icmp eq i64 %.sroa.0296.0546.us.us, 4   ; 3 uses
  %i.aq = add nuw nsw i64 %.sroa.0296.0546.us.us, 1
  %spec.select336.us.us = select i1 %i.ap, i64 4, i64 %i.aq ; 4 uses
  %i.ar = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3207
  br i1 %i.ar, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = icmp eq i64 %.sroa.0296.0546.us.us, 0   ; 2 uses
  %i.at = or i64 %.sroa.0296.0546.us.us, %.sroa.0294.0736
  %or.cond2.i.us.us = icmp eq i64 %i.at, 0
  br i1 %or.cond2.i.us.us, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %brmerge.i.not.us.us = and i1 %.not.i.fr, %i.as
  br i1 %brmerge.i.not.us.us, label %bb.q, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us

bb.p:                                             ; preds = %bb.n
  %or.cond3.old.i.us.us = or i1 %i.af, %i.as
  br i1 %or.cond3.old.i.us.us, label %bb.q, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.au = add i64 %.sroa.0296.0546.us.us, %.sroa.0260.0 ; 6 uses
  %i.av = icmp ult i64 %i.au, %.val51
  br i1 %i.av, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.us.us, label %.split

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.us.us: ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.au ; 2 uses
  %.val56.us.us = load ptr, ptr %i.aw, align 8, !alias.scope !3208, !noalias !3209, !nonnull !3, !align !5, !noundef !3
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val57.us.us = load i64, ptr %i.ax, align 8, !alias.scope !3208, !noalias !3209, !noundef !3
  %.val58.us.us = load ptr, ptr %i.al, align 8    ; 2 uses
  %.val59.us.us = load i64, ptr %i.am, align 8
  %i.ay = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val56.us.us, i64 noundef %.val57.us.us, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !3210 ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ay, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58.us.us) ]
  %i.ba = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val58.us.us, i64 noundef %.val59.us.us, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !3210 ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.ba, 1
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.us.us, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.us.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.us.us
  %i.bd = extractvalue { ptr, i64 } %i.ba, 0
  %i.be = extractvalue { ptr, i64 } %i.ay, 0
  %bcmp.i.i.us.us = call i32 @bcmp(ptr nonnull readonly %i.be, ptr nonnull readonly %i.bd, i64 %i.az), !alias.scope !3211, !noalias !3210
  %.not338.us.us = icmp eq i32 %bcmp.i.i.us.us, 0
  br i1 %.not338.us.us, label %.split556.us.us, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us: ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.us.us, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.us.us, %bb.p, %bb.o, %bb.m
  %.not.i78.us.us = icmp ugt i64 %spec.select336.us.us, 4
  %or.cond341.us.us = select i1 %i.ap, i1 true, i1 %.not.i78.us.us
  br i1 %or.cond341.us.us, label %.loopexit, label %bb.l

.split556.us.us:                                  ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.us.us
  %i.bf = sub i64 %i.l, %i.au
  %.sroa.0.0.i83.us = call noundef i64 @llvm.umin.i64(i64 %i.bf, i64 %i.an) ; 3 uses
  %.not744 = icmp eq i64 %.sroa.0.0.i83.us, 0
  br i1 %.not744, label %.outer.us, label %.lr.ph705.us.preheader

.lr.ph705.us.preheader:                           ; preds = %.split556.us.us
  %i.bg = call i64 @llvm.usub.sat.i64(i64 %.val51, i64 %i.au)
  br label %.lr.ph705.us

.lr.ph705.us:                                     ; preds = %.lr.ph705.us.preheader, %bb.t
  %.sroa.01.0.i704.us = phi i64 [ %i.bx, %bb.t ], [ 0, %.lr.ph705.us.preheader ] ; 8 uses
  %i.bh = and i64 %.sroa.01.0.i704.us, 1023
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph705.us
  %i.bj = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3207
  br i1 %i.bj, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph705.us
  %i.bk = add nuw i64 %.sroa.01.0.i704.us, %i.au  ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.01.0.i704.us, %i.bg
  br i1 %exitcond.not, label %.split722.us, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit84.us

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit84.us: ; preds = %bb.s
  %i.bl = add nuw i64 %.sroa.01.0.i704.us, %i.aj  ; 2 uses
  %exitcond937.not = icmp eq i64 %.sroa.01.0.i704.us, %i.ao
  br i1 %exitcond937.not, label %.split726.us, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit85.us

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit85.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit84.us
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.bk ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.bl ; 2 uses
  %.val52.us = load ptr, ptr %i.bm, align 8, !alias.scope !3208, !noalias !3209, !nonnull !3, !align !5, !noundef !3
  %i.bo = getelementptr i8, ptr %i.bm, i64 8
  %.val53.us = load i64, ptr %i.bo, align 8, !alias.scope !3208, !noalias !3209, !noundef !3
  %.val54.us = load ptr, ptr %i.bn, align 8       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bn, i64 8
  %.val55.us = load i64, ptr %i.bp, align 8
  %i.bq = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val52.us, i64 noundef %.val53.us, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !3212 ; 2 uses
  %i.br = extractvalue { ptr, i64 } %i.bq, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val54.us) ]
  %i.bs = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val54.us, i64 noundef %.val55.us, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !3212 ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.bs, 1
  %i.bu = icmp eq i64 %i.br, %i.bt
  br i1 %i.bu, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit88.us, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit88.thread.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit88.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit85.us
  %i.bv = extractvalue { ptr, i64 } %i.bs, 0
  %i.bw = extractvalue { ptr, i64 } %i.bq, 0
  %bcmp.i.i87.us = call i32 @bcmp(ptr nonnull readonly %i.bw, ptr nonnull readonly %i.bv, i64 %i.br), !alias.scope !3213, !noalias !3212
  %.not339.us = icmp eq i32 %bcmp.i.i87.us, 0
  br i1 %.not339.us, label %bb.t, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit88.thread.us

bb.t:                                             ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit88.us
  %i.bx = add nuw i64 %.sroa.01.0.i704.us, 1      ; 2 uses
  %exitcond938.not = icmp eq i64 %i.bx, %.sroa.0.0.i83.us
  br i1 %exitcond938.not, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit88.thread.us, label %.lr.ph705.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit88.thread.us: ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit88.us, %bb.t, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit85.us
  %.sroa.01.0.i.lcssa.us = phi i64 [ %.sroa.01.0.i704.us, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit85.us ], [ %.sroa.01.0.i704.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit88.us ], [ %.sroa.0.0.i83.us, %bb.t ] ; 8 uses
  %i.by = icmp ugt i64 %.sroa.01.0.i.lcssa.us, 95
  br i1 %i.by, label %bb.u, label %.outer.us

bb.u:                                             ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit88.thread.us
  %i.bz = icmp ugt i64 %.sroa.01.0.i.lcssa.us, 767
  br i1 %i.bz, label %.loopexit391.split.us, label %bb.v
end_hunk_3
begin_hunk_4_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2n_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db:bb.a
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %.fr.i202 = freeze i1 %i.vj
  br i1 %.fr.i202, label %.lr.ph.split.us.i206, label %.lr.ph.split.i203

.lr.ph.split.us.i206:                             ; preds = %.lr.ph.i201, %bb.fl
  %.sroa.0105.0357.us.i207 = phi i64 [ %i.vm, %bb.fl ], [ %.pre939, %.lr.ph.i201 ] ; 3 uses
  %i.vm = add i64 %.sroa.0105.0357.us.i207, -1    ; 6 uses
  %i.vn = and i64 %i.vm, 1023
  %i.vo = icmp eq i64 %i.vn, 0
  br i1 %i.vo, label %bb.fc, label %bb.fe

bb.fc:                                            ; preds = %.lr.ph.split.us.i206
  %i.vp = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i208

bb.fd:                                            ; preds = %bb.fc
  br i1 %i.vp, label %.loopexit10.i156, label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %.lr.ph.split.us.i206
  %i.vq = add i64 %i.vm, %.sroa.0260.0            ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50) ]
  %i.vr = icmp ult i64 %i.vq, %.val51
  br i1 %i.vr, label %bb.ff, label %.invoke.i

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48) ]
  %i.vs = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.vq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3272)
  call void @llvm.experimental.noalias.scope.decl(metadata !3273)
  %i.vt = load ptr, ptr %i.vs, align 8, !alias.scope !3272, !noalias !3274, !nonnull !3, !align !5, !noundef !3
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vv = load i64, ptr %i.vu, align 8, !alias.scope !3272, !noalias !3274, !noundef !3
  %i.vw = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.vt, i64 noundef %i.vv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84)
          to label %.noexc.us.i210 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i208 ; 2 uses

.noexc.us.i210:                                   ; preds = %bb.ff
  %i.vx = extractvalue { ptr, i64 } %i.vw, 0
  %i.vy = extractvalue { ptr, i64 } %i.vw, 1      ; 2 uses
  %i.vz = load ptr, ptr %i.vk, align 8, !alias.scope !3273, !noalias !3275, !nonnull !3, !align !5, !noundef !3
  %i.wa = load i64, ptr %i.vl, align 8, !alias.scope !3273, !noalias !3275, !noundef !3
  %i.wb = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.vz, i64 noundef %i.wa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84)
          to label %.noexc181.us.i211 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i208 ; 2 uses

.noexc181.us.i211:                                ; preds = %.noexc.us.i210
  %i.wc = extractvalue { ptr, i64 } %i.wb, 1
  %i.wd = icmp eq i64 %i.vy, %i.wc
  br i1 %i.wd, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.us.i218, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.thread.us.i212

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.us.i218: ; preds = %.noexc181.us.i211
  %i.we = extractvalue { ptr, i64 } %i.wb, 0
  %bcmp.i247.us.i219 = call i32 @bcmp(ptr nonnull readonly %i.vx, ptr nonnull readonly %i.we, i64 %i.vy), !alias.scope !3276
  %i.wf = icmp eq i32 %bcmp.i247.us.i219, 0
  br i1 %i.wf, label %bb.fi, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.thread.us.i212

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.thread.us.i212: ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.us.i218, %.noexc181.us.i211
  %i.wg = add i64 %i.vm, %i.vh                    ; 3 uses
  %i.wh = load ptr, ptr %i.nv, align 8, !noalias !3249, !nonnull !3, !noundef !3 ; 3 uses
  %i.wi = load i64, ptr %i.nw, align 8, !noalias !3249, !noundef !3 ; 5 uses
  %i.wj = icmp ult i64 %i.wg, %i.wi
  br i1 %i.wj, label %bb.fg, label %.invoke.i

bb.fg:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.thread.us.i212
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

bb.fi:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.us.i218
  %i.wq = add i64 %.sroa.0105.0357.us.i207, %i.vh ; 3 uses
  %i.wr = load i64, ptr %i.nw, align 8, !noalias !3249, !noundef !3 ; 3 uses
  %i.ws = icmp ult i64 %i.wq, %i.wr
  br i1 %i.ws, label %bb.fj, label %.invoke.i

bb.fj:                                            ; preds = %bb.fi
  %i.wt = load ptr, ptr %i.nv, align 8, !noalias !3249, !nonnull !3, !noundef !3 ; 2 uses
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
  %invariant.gep = getelementptr [16 x i8], ptr %.val50, i64 %.sroa.0260.0
  %invariant.gep1338 = getelementptr [16 x i8], ptr %.val48, i64 %.sroa.0.0
  br label %.lr.ph410.i123

.lr.ph.split.i203:                                ; preds = %.lr.ph.i201
  %i.xd = and i64 %.pre939, 1023
  %i.xe = icmp eq i64 %i.xd, 1
  br i1 %i.xe, label %bb.fm, label %bb.fo

bb.fm:                                            ; preds = %.lr.ph.split.i203
  %i.xf = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i204

bb.fn:                                            ; preds = %bb.fm
  br i1 %i.xf, label %.loopexit10.i156, label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %.lr.ph.split.i203
  %i.xg = add i64 %i.l, -1                        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50) ]
  %i.xh = icmp ult i64 %i.xg, %.val51
  br i1 %i.xh, label %bb.fp, label %.invoke.i

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48) ]
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.fk, %bb.fi, %bb.fg, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.thread.us.i212, %bb.fe, %bb.ds, %bb.dq, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit198.thread.i134, %bb.dp, %bb.dn, %bb.dk, %bb.en, %bb.el, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit190.thread.i147, %bb.ek, %bb.ei, %bb.ec, %bb.ea, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit194.thread.i169, %bb.dz, %bb.dx, %bb.ew, %bb.ev, %bb.et, %bb.eq, %bb.fp, %bb.fo
  %i.xi = phi i64 [ %i.vi, %bb.fp ], [ %i.rs, %bb.ec ], [ %i.tm, %bb.en ], [ %i.uu, %bb.ew ], [ %i.oi, %bb.dn ], [ %i.xg, %bb.fo ], [ %.val49, %bb.et ], [ %i.un, %bb.ev ], [ %.val51, %bb.eq ], [ %i.qo, %bb.dx ], [ %i.re, %bb.dz ], [ %i.rk, %bb.ea ], [ %i.ri, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit194.thread.i169 ], [ %i.se, %bb.ei ], [ %i.su, %bb.ek ], [ %i.te, %bb.el ], [ %i.ta, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit190.thread.i147 ], [ %i.pj, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit198.thread.i134 ], [ %i.oj, %bb.dk ], [ %i.qb, %bb.ds ], [ %i.po, %bb.dq ], [ %i.pd, %bb.dp ], [ %i.wk, %bb.fg ], [ %i.wq, %bb.fi ], [ %i.wz, %bb.fk ], [ %i.vq, %bb.fe ], [ %i.wg, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.thread.us.i212 ]
  %i.xj = phi i64 [ %.val49, %bb.fp ], [ %i.rg, %bb.ec ], [ %i.sw, %bb.en ], [ %i.up, %bb.ew ], [ %.val49, %bb.dn ], [ %.val51, %bb.fo ], [ %.val49, %bb.et ], [ %i.up, %bb.ev ], [ %.val51, %bb.eq ], [ %.val51, %bb.dx ], [ %.pre640.i173, %bb.dz ], [ %.pre640.i173, %bb.ea ], [ %i.rg, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit194.thread.i169 ], [ %.val49, %bb.ei ], [ %.pre636.i155, %bb.ek ], [ %.pre636.i155, %bb.el ], [ %i.sw, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit190.thread.i147 ], [ %i.pf, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit198.thread.i134 ], [ %.val51, %bb.dk ], [ %i.pf, %bb.ds ], [ %.pre632.i177, %bb.dq ], [ %.pre632.i177, %bb.dp ], [ %i.wi, %bb.fg ], [ %i.wr, %bb.fi ], [ %i.wy, %bb.fk ], [ %.val51, %bb.fe ], [ %i.wi, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.thread.us.i212 ]
  %i.xk = phi ptr [ @74, %bb.fp ], [ @62, %bb.ec ], [ @68, %bb.en ], [ @72, %bb.ew ], [ @52, %bb.dn ], [ @73, %bb.fo ], [ @70, %bb.et ], [ @71, %bb.ev ], [ @69, %bb.eq ], [ @57, %bb.dx ], [ @59, %bb.dz ], [ @60, %bb.ea ], [ @61, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit194.thread.i169 ], [ @64, %bb.ei ], [ @65, %bb.ek ], [ @66, %bb.el ], [ @67, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit190.thread.i147 ], [ @55, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit198.thread.i134 ], [ @51, %bb.dk ], [ @56, %bb.ds ], [ @54, %bb.dq ], [ @53, %bb.dp ], [ @76, %bb.fg ], [ @77, %bb.fi ], [ @78, %bb.fk ], [ @73, %bb.fe ], [ @75, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.thread.us.i212 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.xi, i64 noundef %i.xj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xk) #14
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i105

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.fq:                                            ; preds = %.loopexit.split-lp.i107
  %i.xl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %.loopexit10.i156
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3249
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit.thread

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit.thread: ; preds = %bb.ao, %bb.ap, %bb.de, %bb.as, %bb.aq, %.sink.split.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit
  %.val68 = load ptr, ptr %i.o, align 8           ; 4 uses
  %.val69 = load i64, ptr %i.p, align 8           ; 4 uses
  %.val70 = load ptr, ptr %i.m, align 8           ; 4 uses
  %.val71 = load i64, ptr %i.n, align 8           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3277)
  call void @llvm.experimental.noalias.scope.decl(metadata !3278)
  %i.xm = sub i64 %.pre, %.pre939                 ; 3 uses
  %i.xn = and i64 %i.xm, 1
  %.not.i220 = icmp eq i64 %i.xn, 0               ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.xp = load i64, ptr %i.xo, align 8, !alias.scope !3277, !noalias !3279, !noundef !3 ; 4 uses
  %i.xq = add i64 %i.xp, 1                        ; 5 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.xs = load i64, ptr %i.xr, align 8, !alias.scope !3277, !noalias !3279, !noundef !3 ; 16 uses
  %i.xt = icmp ult i64 %i.xq, %i.xs
  br i1 %i.xt, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit.thread
  %i.xu = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.xv = load ptr, ptr %i.xu, align 8, !alias.scope !3277, !noalias !3279, !nonnull !3, !noundef !3 ; 7 uses
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %i.xq
  store i64 0, ptr %i.xw, align 8, !noalias !3280
  %i.xx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.xy = load i64, ptr %i.xx, align 8, !alias.scope !3278, !noalias !3281, !noundef !3 ; 4 uses
  %i.xz = add i64 %i.xy, 1                        ; 5 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.yb = load i64, ptr %i.ya, align 8, !alias.scope !3278, !noalias !3281, !noundef !3 ; 16 uses
  %i.yc = icmp ult i64 %i.xz, %i.yb
  br i1 %i.yc, label %bb.ft, label %bb.fu

bb.fs:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit.thread
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.xq, i64 noundef %i.xs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !noalias !3280
  unreachable

bb.ft:                                            ; preds = %bb.fr
  %i.yd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ye = load ptr, ptr %i.yd, align 8, !alias.scope !3278, !noalias !3281, !nonnull !3, !noundef !3 ; 7 uses
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.xz
  store i64 0, ptr %i.yf, align 8, !noalias !3280
  %i.yg = add i64 %.pre, %.pre939                 ; 2 uses
  %i.yh = lshr i64 %i.yg, 1                       ; 2 uses
  %.sroa.047.0.i = sub nuw i64 %i.yg, %i.yh       ; 2 uses
  %i.yi = icmp ult i64 %i.xs, 1152921504606846976
  call void @llvm.assume(i1 %i.yi)
  %.not128.not.i = icmp ugt i64 %i.xs, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.fw, label %bb.fv, !prof !4

bb.fu:                                            ; preds = %bb.fr
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.xz, i64 noundef %i.yb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !noalias !3280
  unreachable

bb.fv:                                            ; preds = %bb.ft
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !noalias !3280
  unreachable

bb.fw:                                            ; preds = %bb.ft
  %i.yj = icmp ult i64 %i.yb, 1152921504606846976
  call void @llvm.assume(i1 %i.yj)
  %.not129.not.i = icmp samesign ugt i64 %i.yb, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph112.i, label %bb.fx, !prof !4

.lr.ph112.i:                                      ; preds = %bb.fw
  %i.yk = add i64 %i.xp, -1
  %i.yl = add i64 %i.xy, -1
  %.neg343 = add i64 %i.k, 1
  %.neg345 = add i64 %.neg343, %i.l
  %11 = add i64 %.sroa.0260.0, %.sroa.0.0
  %12 = add i64 %11, %i.yh
  %13 = sub i64 %.neg345, %12
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14, !noalias !3280
  unreachable

bb.fy:                                            ; preds = %._crit_edge108.i, %.lr.ph112.i
  %.sroa.048.0111.i = phi i64 [ 0, %.lr.ph112.i ], [ %i.ym, %._crit_edge108.i ] ; 10 uses
  %i.ym = add nuw i64 %.sroa.048.0111.i, 1        ; 2 uses
  %i.yn = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3280
  br i1 %i.yn, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph94.preheader.i

.lr.ph94.preheader.i:                             ; preds = %bb.fy
  %i.yo = sub nsw i64 0, %.sroa.048.0111.i        ; 6 uses
  %.pre168.i = sub i64 %i.xq, %.sroa.048.0111.i
  br label %.lr.ph94.i

.lr.ph94.i:                                       ; preds = %bb.hz, %.lr.ph94.preheader.i
  %.sroa.7.093.i = phi i64 [ %.sroa.7.1.i, %bb.hz ], [ %.sroa.048.0111.i, %.lr.ph94.preheader.i ] ; 2 uses
  %not..sroa.1418.092.i = phi i64 [ 1, %bb.hz ], [ 0, %.lr.ph94.preheader.i ]
  %i.yp = sub i64 %.sroa.7.093.i, %not..sroa.1418.092.i ; 11 uses
  %.not.i.not.i.i = icmp sgt i64 %i.yp, %.sroa.7.093.i
  br i1 %.not.i.not.i.i, label %.lr.ph107.preheader.i, label %bb.fz

bb.fz:                                            ; preds = %.lr.ph94.i
  %i.yq = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.yp, i64 %i.yo)
  switch i8 %i.yq, label %bb.ga [
    i8 -1, label %.lr.ph107.preheader.i
    i8 0, label %bb.gc
    i8 1, label %bb.gb
  ]

bb.ga:                                            ; preds = %bb.fz
  unreachable

bb.gb:                                            ; preds = %bb.fz
  %i.yr = add i64 %i.yp, -1
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.fz
  %.sroa.11.1.i = phi i1 [ true, %bb.fz ], [ false, %bb.gb ]
  %.sroa.7.1.i = phi i64 [ %i.yp, %bb.fz ], [ %i.yr, %bb.gb ] ; 2 uses
  %i.ys = icmp eq i64 %i.yp, %i.yo
  br i1 %i.ys, label %._crit_edge163.i.a, label %bb.hg

.lr.ph107.preheader.i:                            ; preds = %bb.hz, %bb.fz, %.lr.ph94.i
  %.pre.i225 = sub i64 %i.xz, %.sroa.048.0111.i
  br label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %bb.hb, %.lr.ph107.preheader.i
  %not..sroa.1727.0105.i = phi i64 [ 1, %bb.hb ], [ 0, %.lr.ph107.preheader.i ]
  %.sroa.726.0104.i = phi i64 [ %.sroa.726.1.i, %bb.hb ], [ %.sroa.048.0111.i, %.lr.ph107.preheader.i ] ; 2 uses
  %i.yt = sub i64 %.sroa.726.0104.i, %not..sroa.1727.0105.i ; 11 uses
  %.not.i.not.i145.i = icmp sgt i64 %i.yt, %.sroa.726.0104.i
  br i1 %.not.i.not.i145.i, label %._crit_edge108.i, label %bb.gd

bb.gd:                                            ; preds = %.lr.ph107.i
  %i.yu = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.yt, i64 %i.yo)
  switch i8 %i.yu, label %bb.ge [
    i8 -1, label %._crit_edge108.i
    i8 0, label %bb.gg
    i8 1, label %bb.gf
  ]

bb.ge:                                            ; preds = %bb.gd
  unreachable

bb.gf:                                            ; preds = %bb.gd
  %i.yv = add i64 %i.yt, -1
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.gd
  %.sroa.726.1.i = phi i64 [ %i.yt, %bb.gd ], [ %i.yv, %bb.gf ] ; 2 uses
  %.sroa.12.1.i222 = phi i1 [ true, %bb.gd ], [ false, %bb.gf ]
  %i.yw = icmp eq i64 %i.yt, %i.yo
  br i1 %i.yw, label %._crit_edge165.i.a, label %bb.gh

._crit_edge108.i:                                 ; preds = %bb.hb, %bb.gd, %.lr.ph107.i
  %exitcond161.not.i = icmp eq i64 %i.ym, %13
  br i1 %exitcond161.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECs56aZGHL6Dc6_7ruff_db.exit, label %bb.fy

bb.gh:                                            ; preds = %bb.gg
  %.not130.i = icmp eq i64 %i.yt, %.sroa.048.0111.i
  %.pre166.i = add i64 %i.yl, %i.yt               ; 6 uses
  br i1 %.not130.i, label %._crit_edge164.i.a, label %bb.gi

._crit_edge165.i.a:                               ; preds = %bb.gg, %bb.gl
  %.pre-phi.i = phi i64 [ %i.za, %bb.gl ], [ %.pre.i225, %bb.gg ] ; 3 uses
  %i.yx = icmp ult i64 %.pre-phi.i, %i.yb
  br i1 %i.yx, label %bb.gq, label %bb.gr

._crit_edge164.i.a:                               ; preds = %bb.gl, %bb.gh
  %i.yy = icmp ult i64 %.pre166.i, %i.yb
  br i1 %i.yy, label %bb.gn, label %bb.go

bb.gi:                                            ; preds = %bb.gh
  %i.yz = icmp ult i64 %.pre166.i, %i.yb
  br i1 %i.yz, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.za = add i64 %i.yt, %i.xz                    ; 4 uses
  %i.zb = icmp ult i64 %i.za, %i.yb
  br i1 %i.zb, label %bb.gl, label %bb.gm

bb.gk:                                            ; preds = %bb.gi
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre166.i, i64 noundef %i.yb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14, !noalias !3280
  unreachable

bb.gl:                                            ; preds = %bb.gj
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %.pre166.i
  %i.zd = load i64, ptr %i.zc, align 8, !noalias !3280, !noundef !3
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.za
  %i.zf = load i64, ptr %i.ze, align 8, !noalias !3280, !noundef !3
  %i.zg = icmp ult i64 %i.zd, %i.zf
  br i1 %i.zg, label %._crit_edge165.i.a, label %._crit_edge164.i.a

bb.gm:                                            ; preds = %bb.gj
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.za, i64 noundef %i.yb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14, !noalias !3280
  unreachable

bb.gn:                                            ; preds = %._crit_edge164.i.a
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %.pre166.i
  %i.zi = load i64, ptr %i.zh, align 8, !noalias !3280, !noundef !3
  %i.zj = add i64 %i.zi, 1
  br label %bb.gp

bb.go:                                            ; preds = %._crit_edge164.i.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre166.i, i64 noundef %i.yb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #14, !noalias !3280
  unreachable

bb.gp:                                            ; preds = %bb.gq, %bb.gn
  %.sroa.014.0.i = phi i64 [ %i.zo, %bb.gq ], [ %i.zj, %bb.gn ] ; 5 uses
  %i.zk = sub i64 %.sroa.014.0.i, %i.yt           ; 4 uses
  %i.zl = icmp ult i64 %.sroa.014.0.i, %.pre
  %i.zm = icmp ult i64 %i.zk, %.pre939
  %or.cond.i223 = and i1 %i.zl, %i.zm
  br i1 %or.cond.i223, label %bb.gt, label %bb.gs

bb.gq:                                            ; preds = %._crit_edge165.i.a
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %.pre-phi.i
  %i.zo = load i64, ptr %i.zn, align 8, !noalias !3280, !noundef !3
  br label %bb.gp

bb.gr:                                            ; preds = %._crit_edge165.i.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.yb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14, !noalias !3280
  unreachable

bb.gs:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i, %bb.gp
  %.sroa.020.0.i = phi i64 [ %i.aas, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i ], [ %i.zk, %bb.gp ]
  %.sroa.014.1.i = phi i64 [ %i.aar, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i ], [ %.sroa.014.0.i, %bb.gp ] ; 3 uses
  %i.zp = add i64 %i.yt, %i.xy                    ; 3 uses
  %i.zq = icmp ult i64 %i.zp, %i.yb
  br i1 %i.zq, label %bb.gy, label %bb.gz

bb.gt:                                            ; preds = %bb.gp
  %i.zr = sub i64 %i.k, %.sroa.014.0.i            ; 2 uses
  %i.zs = sub i64 %i.l, %i.zk                     ; 2 uses
  %i.zt = sub i64 %i.zr, %.sroa.0.0
  %i.zu = sub i64 %i.zs, %.sroa.0260.0
  %.sroa.0.0.i149.i = call noundef i64 @llvm.umin.i64(i64 %i.zu, i64 %i.zt) ; 3 uses
  %.not116.i = icmp eq i64 %.sroa.0.0.i149.i, 0
  br i1 %.not116.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i, label %.lr.ph99.i

.lr.ph99.i:                                       ; preds = %bb.gt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gx, %.lr.ph99.i
  %.sroa.0.0.i13697.i = phi i64 [ 0, %.lr.ph99.i ], [ %i.aaq, %bb.gx ] ; 4 uses
  %i.zv = xor i64 %.sroa.0.0.i13697.i, -1         ; 2 uses
  %i.zw = add i64 %i.zs, %i.zv                    ; 3 uses
  %i.zx = icmp ult i64 %i.zw, %.val71
  br i1 %i.zx, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.zw, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14, !noalias !3282
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %bb.gu
  %i.zy = add i64 %i.zr, %i.zv                    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.zz = icmp ult i64 %i.zy, %.val69
  br i1 %i.zz, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit150.i, label %bb.gw

bb.gw:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.zy, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #14, !noalias !3283
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit150.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i
  %i.aaa = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.zw ; 2 uses
  %i.aab = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.zy ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3284)
  call void @llvm.experimental.noalias.scope.decl(metadata !3285)
  %i.aac = load ptr, ptr %i.aaa, align 8, !alias.scope !3284, !noalias !3286, !nonnull !3, !align !5, !noundef !3
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %i.aae = load i64, ptr %i.aad, align 8, !alias.scope !3284, !noalias !3286, !noundef !3
  %i.aaf = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aac, i64 noundef %i.aae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !3287 ; 2 uses
  %i.aag = extractvalue { ptr, i64 } %i.aaf, 1    ; 2 uses
  %i.aah = load ptr, ptr %i.aab, align 8, !alias.scope !3285, !noalias !3288, !nonnull !3, !align !5, !noundef !3
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  %i.aaj = load i64, ptr %i.aai, align 8, !alias.scope !3285, !noalias !3288, !noundef !3
  %i.aak = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aah, i64 noundef %i.aaj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !3287 ; 2 uses
  %i.aal = extractvalue { ptr, i64 } %i.aak, 1
  %i.aam = icmp eq i64 %i.aag, %i.aal
  br i1 %i.aam, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit150.i
  %i.aan = extractvalue { ptr, i64 } %i.aak, 0
  %i.aao = extractvalue { ptr, i64 } %i.aaf, 0
  %bcmp.i.i224 = call i32 @bcmp(ptr nonnull readonly %i.aao, ptr nonnull readonly %i.aan, i64 %i.aag), !alias.scope !3289, !noalias !3287
  %i.aap = icmp eq i32 %bcmp.i.i224, 0
  br i1 %i.aap, label %bb.gx, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i

bb.gx:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i
  %i.aaq = add nuw i64 %.sroa.0.0.i13697.i, 1     ; 2 uses
  %exitcond160.not.i = icmp eq i64 %i.aaq, %.sroa.0.0.i149.i
  br i1 %exitcond160.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i, label %bb.gu

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %bb.gx, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit150.i, %bb.gt
  %.sroa.0.0.i136.lcssa.i = phi i64 [ 0, %bb.gt ], [ %.sroa.0.0.i13697.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i ], [ %.sroa.0.0.i149.i, %bb.gx ], [ %.sroa.0.0.i13697.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit150.i ] ; 2 uses
  %i.aar = add i64 %.sroa.0.0.i136.lcssa.i, %.sroa.014.0.i
  %i.aas = add i64 %.sroa.0.0.i136.lcssa.i, %i.zk
  br label %bb.gs

bb.gy:                                            ; preds = %bb.gs
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.zp
  store i64 %.sroa.014.1.i, ptr %i.aat, align 8, !noalias !3280
  br i1 %.not.i220, label %bb.ha, label %bb.hb

bb.gz:                                            ; preds = %bb.gs
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.zp, i64 noundef %i.yb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #14, !noalias !3280
  unreachable

bb.ha:                                            ; preds = %bb.gy
  %i.aau = sub i64 %i.yt, %i.xm                   ; 2 uses
  %.sroa.024.0.i = call i64 @llvm.abs.i64(i64 %i.aau, i1 false)
  %.not131.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.048.0111.i
  br i1 %.not131.i, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.hd, %bb.ha, %bb.gy
  %.not.i144.i = icmp slt i64 %.sroa.726.1.i, %i.yo
  %or.cond45.i = select i1 %.sroa.12.1.i222, i1 true, i1 %.not.i144.i
  br i1 %or.cond45.i, label %._crit_edge108.i, label %.lr.ph107.i

bb.hc:                                            ; preds = %bb.ha
  %i.aav = sub i64 %i.xp, %i.aau                  ; 3 uses
  %i.aaw = icmp ult i64 %i.aav, %i.xs
  br i1 %i.aaw, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %i.aav
  %i.aay = load i64, ptr %i.aax, align 8, !noalias !3280, !noundef !3
  %i.aaz = add i64 %i.aay, %.sroa.014.1.i
  %.not132.i = icmp ult i64 %i.aaz, %.pre
  br i1 %.not132.i, label %bb.hb, label %bb.hf

bb.he:                                            ; preds = %bb.hc
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aav, i64 noundef %i.xs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14, !noalias !3280
  unreachable

bb.hf:                                            ; preds = %bb.hd
  %i.aba = sub i64 %i.k, %.sroa.014.1.i
  %i.abb = sub i64 %i.l, %.sroa.020.0.i
  br label %bb.if

bb.hg:                                            ; preds = %bb.gc
  %.not133.i = icmp eq i64 %i.yp, %.sroa.048.0111.i
  %.pre170.i = add i64 %i.yk, %i.yp               ; 6 uses
  br i1 %.not133.i, label %._crit_edge162.i, label %bb.hh

._crit_edge163.i.a:                               ; preds = %bb.gc, %bb.hk
  %.pre-phi169.i = phi i64 [ %i.abf, %bb.hk ], [ %.pre168.i, %bb.gc ] ; 3 uses
  %i.abc = icmp ult i64 %.pre-phi169.i, %i.xs
  br i1 %i.abc, label %bb.hp, label %bb.hq

._crit_edge162.i:                                 ; preds = %bb.hk, %bb.hg
  %i.abd = icmp ult i64 %.pre170.i, %i.xs
  br i1 %i.abd, label %bb.hm, label %bb.hn

end_hunk_4
begin_hunk_5_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2n_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db:bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre170.i, i64 noundef %i.xs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #14, !noalias !3280
  unreachable

bb.hk:                                            ; preds = %bb.hi
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %.pre170.i
  %i.abi = load i64, ptr %i.abh, align 8, !noalias !3280, !noundef !3
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %i.abf
  %i.abk = load i64, ptr %i.abj, align 8, !noalias !3280, !noundef !3
  %i.abl = icmp ult i64 %i.abi, %i.abk
  br i1 %i.abl, label %._crit_edge163.i.a, label %._crit_edge162.i

bb.hl:                                            ; preds = %bb.hi
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.abf, i64 noundef %i.xs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #14, !noalias !3280
  unreachable

bb.hm:                                            ; preds = %._crit_edge162.i
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %.pre170.i
  %i.abn = load i64, ptr %i.abm, align 8, !noalias !3280, !noundef !3
  %i.abo = add i64 %i.abn, 1
  br label %bb.ho

bb.hn:                                            ; preds = %._crit_edge162.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre170.i, i64 noundef %i.xs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #14, !noalias !3280
  unreachable

bb.ho:                                            ; preds = %bb.hp, %bb.hm
  %.sroa.04.0.i221 = phi i64 [ %i.abt, %bb.hp ], [ %i.abo, %bb.hm ] ; 6 uses
  %i.abp = sub i64 %.sroa.04.0.i221, %i.yp        ; 3 uses
  %i.abq = icmp ult i64 %.sroa.04.0.i221, %.pre
  %i.abr = icmp ult i64 %i.abp, %.pre939
  %or.cond43.i = select i1 %i.abq, i1 %i.abr, i1 false
  br i1 %or.cond43.i, label %bb.hs, label %bb.hr

bb.hp:                                            ; preds = %._crit_edge163.i.a
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %.pre-phi169.i
  %i.abt = load i64, ptr %i.abs, align 8, !noalias !3280, !noundef !3
  br label %bb.ho

bb.hq:                                            ; preds = %._crit_edge163.i.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi169.i, i64 noundef %i.xs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14, !noalias !3280
  unreachable

bb.hr:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i, %bb.ho
  %.sroa.04.1.i = phi i64 [ %i.acv, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i ], [ %.sroa.04.0.i221, %bb.ho ] ; 2 uses
  %i.abu = add i64 %i.yp, %i.xp                   ; 3 uses
  %i.abv = icmp ult i64 %i.abu, %i.xs
  br i1 %i.abv, label %bb.hx, label %bb.hy

bb.hs:                                            ; preds = %bb.ho
  %i.abw = add i64 %.sroa.04.0.i221, %.sroa.0.0   ; 3 uses
  %i.abx = add i64 %i.abp, %.sroa.0260.0          ; 2 uses
  %i.aby = sub i64 %i.k, %i.abw
  %i.abz = sub i64 %i.l, %i.abx
  %.sroa.0.0.i152.i = call noundef i64 @llvm.umin.i64(i64 %i.abz, i64 %i.aby) ; 3 uses
  %.not115.i = icmp eq i64 %.sroa.0.0.i152.i, 0
  br i1 %.not115.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i, label %.lr.ph.i226

.lr.ph.i226:                                      ; preds = %bb.hs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  %i.aca = call i64 @llvm.usub.sat.i64(i64 %.val69, i64 %i.abw)
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hw, %.lr.ph.i226
  %.sroa.0.0.i88.i = phi i64 [ 0, %.lr.ph.i226 ], [ %i.acu, %bb.hw ] ; 6 uses
  %i.acb = add nuw i64 %.sroa.0.0.i88.i, %i.abx   ; 3 uses
  %i.acc = icmp ult i64 %i.acb, %.val71
  br i1 %i.acc, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit153.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.acb, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !noalias !3290
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit153.i: ; preds = %bb.ht
  %i.acd = add nuw i64 %.sroa.0.0.i88.i, %i.abw   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %exitcond.not.i227 = icmp eq i64 %.sroa.0.0.i88.i, %i.aca
  br i1 %exitcond.not.i227, label %bb.hv, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit154.i

bb.hv:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit153.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.acd, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !noalias !3291
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit154.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit153.i
  %i.ace = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.acb ; 2 uses
  %i.acf = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.acd ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3292)
  call void @llvm.experimental.noalias.scope.decl(metadata !3293)
  %i.acg = load ptr, ptr %i.ace, align 8, !alias.scope !3292, !noalias !3294, !nonnull !3, !align !5, !noundef !3
  %i.ach = getelementptr inbounds nuw i8, ptr %i.ace, i64 8
  %i.aci = load i64, ptr %i.ach, align 8, !alias.scope !3292, !noalias !3294, !noundef !3
  %i.acj = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.acg, i64 noundef %i.aci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !3295 ; 2 uses
  %i.ack = extractvalue { ptr, i64 } %i.acj, 1    ; 2 uses
  %i.acl = load ptr, ptr %i.acf, align 8, !alias.scope !3293, !noalias !3296, !nonnull !3, !align !5, !noundef !3
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  %i.acn = load i64, ptr %i.acm, align 8, !alias.scope !3293, !noalias !3296, !noundef !3
  %i.aco = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.acl, i64 noundef %i.acn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !3295 ; 2 uses
  %i.acp = extractvalue { ptr, i64 } %i.aco, 1
  %i.acq = icmp eq i64 %i.ack, %i.acp
  br i1 %i.acq, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit157.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit157.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit154.i
  %i.acr = extractvalue { ptr, i64 } %i.aco, 0
  %i.acs = extractvalue { ptr, i64 } %i.acj, 0
  %bcmp.i156.i = call i32 @bcmp(ptr nonnull readonly %i.acs, ptr nonnull readonly %i.acr, i64 %i.ack), !alias.scope !3297, !noalias !3295
  %i.act = icmp eq i32 %bcmp.i156.i, 0
  br i1 %i.act, label %bb.hw, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i

bb.hw:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit157.i
  %i.acu = add nuw i64 %.sroa.0.0.i88.i, 1        ; 2 uses
  %exitcond159.not.i = icmp eq i64 %i.acu, %.sroa.0.0.i152.i
  br i1 %exitcond159.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i, label %bb.ht

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %bb.hw, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit157.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit154.i, %bb.hs
  %.sroa.0.0.i.lcssa.i = phi i64 [ 0, %bb.hs ], [ %.sroa.0.0.i88.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit157.i ], [ %.sroa.0.0.i152.i, %bb.hw ], [ %.sroa.0.0.i88.i, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit154.i ]
  %i.acv = add i64 %.sroa.0.0.i.lcssa.i, %.sroa.04.0.i221
  br label %bb.hr

bb.hx:                                            ; preds = %bb.hr
  %i.acw = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %i.abu
  store i64 %.sroa.04.1.i, ptr %i.acw, align 8, !noalias !3280
  br i1 %.not.i220, label %bb.hz, label %bb.ia

bb.hy:                                            ; preds = %bb.hr
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.abu, i64 noundef %i.xs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #14, !noalias !3280
  unreachable

bb.hz:                                            ; preds = %bb.ic, %bb.ia, %bb.hx
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %i.yo
  %or.cond44.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond44.i, label %.lr.ph107.preheader.i, label %.lr.ph94.i

bb.ia:                                            ; preds = %bb.hx
  %i.acx = sub i64 %i.yp, %i.xm                   ; 2 uses
  %.sroa.010.0.i = call i64 @llvm.abs.i64(i64 %i.acx, i1 false)
  %.not134.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.048.0111.i
  br i1 %.not134.not.i, label %bb.ib, label %bb.hz

bb.ib:                                            ; preds = %bb.ia
  %i.acy = sub i64 %i.xy, %i.acx                  ; 3 uses
  %i.acz = icmp ult i64 %i.acy, %i.yb
  br i1 %i.acz, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.acy
  %i.adb = load i64, ptr %i.ada, align 8, !noalias !3280, !noundef !3
  %i.adc = add i64 %i.adb, %.sroa.04.1.i
  %.not135.i = icmp ult i64 %i.adc, %.pre
  br i1 %.not135.i, label %bb.hz, label %bb.ie

bb.id:                                            ; preds = %bb.ib
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.acy, i64 noundef %i.yb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14, !noalias !3280
  unreachable

bb.ie:                                            ; preds = %bb.ic
  %i.add = add i64 %.sroa.04.0.i221, %.sroa.0.0
  %i.ade = add i64 %i.abp, %.sroa.0260.0
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.hf
  %.sroa.7.0.ph = phi i64 [ %i.ade, %bb.ie ], [ %i.abb, %bb.hf ] ; 2 uses
  %.sroa.5.0.ph = phi i64 [ %i.add, %bb.ie ], [ %i.aba, %bb.hf ] ; 2 uses
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2n_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.0.0, i64 noundef %.sroa.5.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.0260.0, i64 noundef %.sroa.7.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2n_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.5.0.ph, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.7.0.ph, i64 noundef %i.l, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.am

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %._crit_edge108.i, %bb.fy
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.pre, i64 noundef %.sroa.0260.0)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.0260.0, i64 noundef %.pre939)
  br label %bb.am

.thread:                                          ; preds = %bb.al
  %i.adf = sub nuw i64 %i.l, %.sroa.0260.0
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.0260.0, i64 noundef %i.adf)
  br label %bb.am

bb.ig:                                            ; preds = %bb.am
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.k, i64 noundef %i.l, i64 noundef %i.j)
  br label %bb.ih

bb.ih:                                            ; preds = %bb.am, %bb.ig
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2v_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB13_ECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.h = add i64 %i.g, %2                         ; 2 uses
  %i.i = add i64 %i.g, %5                         ; 2 uses
  %i.j = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB13_ECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.h, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.i, i64 noundef %6) ; 4 uses
  %i.k = sub i64 %3, %i.j                         ; 11 uses
  %i.l = sub i64 %6, %i.j                         ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.val50 = load ptr, ptr %i.m, align 8           ; 14 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.val51 = load i64, ptr %i.n, align 8           ; 27 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val48 = load ptr, ptr %i.o, align 8           ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val49 = load i64, ptr %i.p, align 8           ; 24 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtNtB9_4text6inline11MultiLookupeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %5, i64 noundef %i.g)
  br label %bb.b

bb.d:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2L_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, %bb.b
  %.sroa.0290.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0290.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2L_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit ] ; 40 uses
  %.sroa.0.0 = phi i64 [ %i.h, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2L_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit ] ; 39 uses
  %i.w = icmp ult i64 %.sroa.0.0, %i.k            ; 2 uses
  %i.x = icmp ult i64 %.sroa.0290.0, %i.l         ; 3 uses
  %or.cond364 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond364, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2L_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, %bb.d
  br i1 %i.w, label %bb.ak, label %bb.al

bb.f:                                             ; preds = %bb.d
  %i.y = sub nuw i64 %i.k, %.sroa.0.0             ; 5 uses
  %i.z = sub nuw i64 %i.l, %.sroa.0290.0          ; 5 uses
  %i.aa = icmp ult i64 %i.y, 97
  %i.ab = icmp ult i64 %i.z, 97
  %or.cond.i = or i1 %i.ab, %i.aa
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2L_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 2 uses
  %.sroa.0.0.i73 = call noundef i64 @llvm.umax.i64(i64 %i.z, i64 %i.y)
  %i.ac = shl nuw i64 %.sroa.0.0.i72, 1
  %i.ad = icmp slt i64 %.sroa.0.0.i72, 0
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.052.0.i = phi i64 [ -1, %bb.h ], [ %i.ac, %bb.g ]
  %i.ae = icmp ult i64 %.sroa.0.0.i73, %.sroa.052.0.i
  br i1 %i.ae, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2L_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp ule i64 %i.z, %i.y
  %.not.i.fr = freeze i1 %.not.i                  ; 2 uses
  %i.af = icmp ule i64 %i.y, %i.z                 ; 2 uses
  br label %bb.k

.loopexit:                                        ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us876, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us834, %.outer.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us
  %.sroa.525.2.i.ph.lcssa619 = phi i64 [ %.sroa.525.0.i932, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us834 ], [ %.sroa.525.3.i.us, %.outer.us ], [ %.sroa.525.2.i.ph893.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us ], [ %.sroa.525.0.i932, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us876 ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa608 = phi i64 [ %.sroa.023.0.i933, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us834 ], [ %.sroa.023.2.i.us, %.outer.us ], [ %.sroa.023.1.i.ph894.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us ], [ %.sroa.023.0.i933, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us876 ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa597 = phi i64 [ %.sroa.9.0.i934, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us834 ], [ %.sroa.9.3.i.us, %.outer.us ], [ %.sroa.9.2.i.ph895.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us ], [ %.sroa.9.0.i934, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us876 ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa586 = phi i64 [ %.sroa.12.0.i935, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us834 ], [ %.sroa.12.3.i.us, %.outer.us ], [ %.sroa.12.2.i.ph896.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us ], [ %.sroa.12.0.i935, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us876 ] ; 2 uses
  %.not.i76 = icmp ugt i64 %spec.select365, 4
  %or.cond370 = select i1 %i.ag, i1 true, i1 %.not.i76
  br i1 %or.cond370, label %bb.ac, label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %.sroa.12.0.i935 = phi i64 [ undef, %bb.j ], [ %.sroa.12.2.i.ph.lcssa586, %.loopexit ] ; 3 uses
  %.sroa.9.0.i934 = phi i64 [ undef, %bb.j ], [ %.sroa.9.2.i.ph.lcssa597, %.loopexit ] ; 3 uses
  %.sroa.023.0.i933 = phi i64 [ 0, %bb.j ], [ %.sroa.023.1.i.ph.lcssa608, %.loopexit ] ; 3 uses
  %.sroa.525.0.i932 = phi i64 [ undef, %bb.j ], [ %.sroa.525.2.i.ph.lcssa619, %.loopexit ] ; 3 uses
  %.sroa.0324.0931 = phi i64 [ 0, %bb.j ], [ %spec.select365, %.loopexit ] ; 12 uses
  %i.ag = icmp eq i64 %.sroa.0324.0931, 4         ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.0324.0931, 1
  %spec.select365 = select i1 %i.ag, i64 4, i64 %i.ah ; 2 uses
  %i.ai = icmp eq i64 %.sroa.0324.0931, 0         ; 2 uses
  %i.aj = add i64 %.sroa.0324.0931, %.sroa.0.0    ; 6 uses
  %i.ak = icmp ult i64 %i.aj, %.val49
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.aj ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.fr = freeze i1 %i.ak
  %i.an = sub i64 %i.k, %i.aj
  br i1 %.fr, label %.lr.ph.us.preheader, label %.split897

.lr.ph.us.preheader:                              ; preds = %bb.k
  %i.ao = call i64 @llvm.usub.sat.i64(i64 %.val49, i64 %i.aj)
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.outer.us
  %.sroa.12.2.i.ph896.us = phi i64 [ %.sroa.12.3.i.us, %.outer.us ], [ %.sroa.12.0.i935, %.lr.ph.us.preheader ] ; 7 uses
  %.sroa.9.2.i.ph895.us = phi i64 [ %.sroa.9.3.i.us, %.outer.us ], [ %.sroa.9.0.i934, %.lr.ph.us.preheader ] ; 7 uses
  %.sroa.023.1.i.ph894.us = phi i64 [ %.sroa.023.2.i.us, %.outer.us ], [ %.sroa.023.0.i933, %.lr.ph.us.preheader ] ; 4 uses
  %.sroa.525.2.i.ph893.us = phi i64 [ %.sroa.525.3.i.us, %.outer.us ], [ %.sroa.525.0.i932, %.lr.ph.us.preheader ] ; 8 uses
  %.sroa.0326.0.ph892.us = phi i64 [ %spec.select366.us.us, %.outer.us ], [ 0, %.lr.ph.us.preheader ]
  br label %bb.l

bb.l:                                             ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us, %.lr.ph.us
  %.sroa.0326.0677.us.us = phi i64 [ %.sroa.0326.0.ph892.us, %.lr.ph.us ], [ %spec.select366.us.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us ] ; 11 uses
  %i.ap = icmp eq i64 %.sroa.0326.0677.us.us, 4   ; 3 uses
  %i.aq = add nuw nsw i64 %.sroa.0326.0677.us.us, 1
  %spec.select366.us.us = select i1 %i.ap, i64 4, i64 %i.aq ; 4 uses
  %i.ar = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3479
  br i1 %i.ar, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2L_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = icmp eq i64 %.sroa.0326.0677.us.us, 0   ; 2 uses
  %i.at = or i64 %.sroa.0326.0677.us.us, %.sroa.0324.0931
  %or.cond2.i.us.us = icmp eq i64 %i.at, 0
  br i1 %or.cond2.i.us.us, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.ai, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %brmerge.i.not.us.us = and i1 %.not.i.fr, %i.as
  br i1 %brmerge.i.not.us.us, label %bb.q, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us

bb.p:                                             ; preds = %bb.n
  %or.cond3.old.i.us.us = or i1 %i.af, %i.as
  br i1 %or.cond3.old.i.us.us, label %bb.q, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.au = add i64 %.sroa.0326.0677.us.us, %.sroa.0290.0 ; 7 uses
  %i.av = icmp ult i64 %i.au, %.val51
  br i1 %i.av, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.us.us, label %.split

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.us.us: ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.au ; 2 uses
  %.val56.us.us = load ptr, ptr %i.aw, align 8, !alias.scope !3480, !noalias !3481, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val57.us.us = load i64, ptr %i.ax, align 8, !alias.scope !3480, !noalias !3481, !noundef !3 ; 3 uses
  %.val58.us.us = load ptr, ptr %i.al, align 8    ; 3 uses
  %.val59.us.us = load i64, ptr %i.am, align 8    ; 3 uses
  %i.ay = getelementptr i8, ptr %.val56.us.us, i64 16
  %.val3.i.us.us = load i64, ptr %i.ay, align 8, !noundef !3 ; 2 uses
  %i.az = icmp ult i64 %.val57.us.us, %.val3.i.us.us
  br i1 %i.az, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.us.us, label %.split687.us

_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.us.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.us.us
  %i.ba = getelementptr i8, ptr %.val56.us.us, i64 8
  %.val2.i.us.us = load ptr, ptr %i.ba, align 8, !nonnull !3, !noundef !3
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %.val2.i.us.us, i64 %.val57.us.us ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !3482, !nonnull !3, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noalias !3482, !noundef !3 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58.us.us) ]
  %i.bf = getelementptr i8, ptr %.val58.us.us, i64 16
  %.val1.i.us.us = load i64, ptr %i.bf, align 8, !noundef !3 ; 2 uses
  %i.bg = icmp ult i64 %.val59.us.us, %.val1.i.us.us
  br i1 %i.bg, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit4.i.us.us, label %.split691.us

_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit4.i.us.us: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i.us.us
  %i.bh = getelementptr i8, ptr %.val58.us.us, i64 8
  %.val.i.us.us = load ptr, ptr %i.bh, align 8, !nonnull !3, !noundef !3
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %.val.i.us.us, i64 %.val59.us.us ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !3483, !noundef !3
  %i.bl = icmp eq i64 %i.be, %i.bk
  br i1 %i.bl, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.us.us, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.us.us: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit4.i.us.us
  %i.bm = load ptr, ptr %i.bi, align 8, !noalias !3483, !nonnull !3, !noundef !3
  %bcmp.i.i.us.us = call i32 @bcmp(ptr nonnull readonly %i.bc, ptr nonnull readonly %i.bm, i64 %i.be), !alias.scope !3484, !noalias !3485
  %.not368.us.us = icmp eq i32 %bcmp.i.i.us.us, 0
  br i1 %.not368.us.us, label %.split695.us.us, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.thread.us.us: ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.us.us, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit4.i.us.us, %bb.p, %bb.o, %bb.m
  %.not.i78.us.us = icmp ugt i64 %spec.select366.us.us, 4
  %or.cond371.us.us = select i1 %i.ap, i1 true, i1 %.not.i78.us.us
  br i1 %or.cond371.us.us, label %.loopexit, label %bb.l

.split695.us.us:                                  ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs56aZGHL6Dc6_7ruff_db.exit.us.us
  %i.bn = sub i64 %i.l, %i.au
  %.sroa.0.0.i83.us = call noundef i64 @llvm.umin.i64(i64 %i.bn, i64 %i.an) ; 3 uses
  %.not939 = icmp eq i64 %.sroa.0.0.i83.us, 0
  br i1 %.not939, label %.outer.us, label %.lr.ph888.us.preheader

.lr.ph888.us.preheader:                           ; preds = %.split695.us.us
  %umax = call i64 @llvm.umax.i64(i64 %.val51, i64 %i.au) ; 2 uses
  %i.bo = sub i64 %umax, %i.au
  %invariant.gep = getelementptr [16 x i8], ptr %.val50, i64 %i.au
  br label %.lr.ph888.us

.lr.ph888.us:                                     ; preds = %.lr.ph888.us.preheader, %bb.t
  %.sroa.01.0.i887.us = phi i64 [ %i.cl, %bb.t ], [ 0, %.lr.ph888.us.preheader ] ; 8 uses
  %i.bp = and i64 %.sroa.01.0.i887.us, 1023
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph888.us
  %i.br = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3479
  br i1 %i.br, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2L_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph888.us
  %exitcond.not = icmp eq i64 %.sroa.01.0.i887.us, %i.bo
  br i1 %exitcond.not, label %.split909.us, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit84.us

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit84.us: ; preds = %bb.s
  %i.bs = add nuw i64 %.sroa.01.0.i887.us, %i.aj  ; 2 uses
  %exitcond1214.not = icmp eq i64 %.sroa.01.0.i887.us, %i.ao
  br i1 %exitcond1214.not, label %.split913.us, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit85.us

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit85.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit84.us
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %.sroa.01.0.i887.us ; 2 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.bs ; 2 uses
  %.val52.us = load ptr, ptr %gep, align 8, !alias.scope !3480, !noalias !3481, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.bu = getelementptr i8, ptr %gep, i64 8
  %.val53.us = load i64, ptr %i.bu, align 8, !alias.scope !3480, !noalias !3481, !noundef !3 ; 3 uses
  %.val54.us = load ptr, ptr %i.bt, align 8       ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bt, i64 8
  %.val55.us = load i64, ptr %i.bv, align 8       ; 3 uses
  %i.bw = getelementptr i8, ptr %.val52.us, i64 16
  %.val3.i86.us = load i64, ptr %i.bw, align 8, !noundef !3 ; 2 uses
  %i.bx = icmp ult i64 %.val53.us, %.val3.i86.us
  br i1 %i.bx, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i87.us, label %.split917.us

_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i87.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit85.us
  %i.by = getelementptr i8, ptr %.val52.us, i64 8
  %.val2.i88.us = load ptr, ptr %i.by, align 8, !nonnull !3, !noundef !3
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %.val2.i88.us, i64 %.val53.us ; 2 uses
end_hunk_5
begin_hunk_6_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2v_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db:bb.a
  %i.zb = add i64 %.sroa.0105.0639.us.i231, -1    ; 6 uses
  %i.zc = and i64 %i.zb, 1023
  %i.zd = icmp eq i64 %i.zc, 0
  br i1 %i.zd, label %bb.fc, label %bb.fe

bb.fc:                                            ; preds = %.lr.ph.split.us.i230
  %i.ze = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i246

bb.fd:                                            ; preds = %bb.fc
  br i1 %i.ze, label %.loopexit10.i174, label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %.lr.ph.split.us.i230
  %i.zf = add i64 %i.zb, %.sroa.0290.0            ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50) ]
  %i.zg = icmp ult i64 %i.zf, %.val51
  br i1 %i.zg, label %bb.ff, label %.split646.us.invoke.i134

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48) ]
  %i.zh = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.zf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3566)
  call void @llvm.experimental.noalias.scope.decl(metadata !3567)
  %i.zi = load ptr, ptr %i.zh, align 8, !alias.scope !3566, !noalias !3568, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  %i.zk = load i64, ptr %i.zj, align 8, !alias.scope !3566, !noalias !3568, !noundef !3 ; 3 uses
  %i.zl = getelementptr i8, ptr %i.zi, i64 16
  %.val237.us.i232 = load i64, ptr %i.zl, align 8, !noundef !3 ; 2 uses
  %i.zm = icmp ult i64 %i.zk, %.val237.us.i232
  br i1 %i.zm, label %.noexc.us.i233, label %.split646.us.invoke.i134

.noexc.us.i233:                                   ; preds = %bb.ff
  %i.zn = getelementptr i8, ptr %i.zi, i64 8
  %.val236.us.i234 = load ptr, ptr %i.zn, align 8, !nonnull !3, !noundef !3
  %i.zo = getelementptr inbounds nuw [32 x i8], ptr %.val236.us.i234, i64 %i.zk ; 2 uses
  %i.zp = load ptr, ptr %i.zo, align 8, !noalias !3569, !nonnull !3, !noundef !3
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.zr = load i64, ptr %i.zq, align 8, !noalias !3569, !noundef !3 ; 2 uses
  %i.zs = load ptr, ptr %i.yz, align 8, !alias.scope !3567, !noalias !3570, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.zt = load i64, ptr %i.za, align 8, !alias.scope !3567, !noalias !3570, !noundef !3 ; 3 uses
  %i.zu = getelementptr i8, ptr %i.zs, i64 16
  %.val235.us.i235 = load i64, ptr %i.zu, align 8, !noundef !3 ; 2 uses
  %i.zv = icmp ult i64 %i.zt, %.val235.us.i235
  br i1 %i.zv, label %.noexc181.us.i236, label %.split646.us.invoke.i134

.noexc181.us.i236:                                ; preds = %.noexc.us.i233
  %i.zw = getelementptr i8, ptr %i.zs, i64 8
  %.val234.us.i237 = load ptr, ptr %i.zw, align 8, !nonnull !3, !noundef !3
  %i.zx = getelementptr inbounds nuw [32 x i8], ptr %.val234.us.i237, i64 %i.zt ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  %i.zz = load i64, ptr %i.zy, align 8, !noalias !3571, !noundef !3
  %i.aaa = icmp eq i64 %i.zr, %i.zz
  br i1 %i.aaa, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.us.i244, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.thread.us.i238

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.us.i244: ; preds = %.noexc181.us.i236
  %i.aab = load ptr, ptr %i.zx, align 8, !noalias !3571, !nonnull !3, !noundef !3
  %bcmp.i286.us.i245 = call i32 @bcmp(ptr nonnull readonly %i.zp, ptr nonnull readonly %i.aab, i64 %i.zr), !alias.scope !3572
  %i.aac = icmp eq i32 %bcmp.i286.us.i245, 0
  br i1 %i.aac, label %bb.fi, label %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.thread.us.i238

_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.thread.us.i238: ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.us.i244, %.noexc181.us.i236
  %i.aad = add i64 %i.zb, %i.yw                   ; 3 uses
  %i.aae = load ptr, ptr %i.qa, align 8, !noalias !3535, !nonnull !3, !noundef !3 ; 3 uses
  %i.aaf = load i64, ptr %i.qb, align 8, !noalias !3535, !noundef !3 ; 5 uses
  %i.aag = icmp ult i64 %i.aad, %i.aaf
  br i1 %i.aag, label %bb.fg, label %.split646.us.invoke.i134

bb.fg:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.thread.us.i238
  %i.aah = add i64 %.sroa.0105.0639.us.i231, %i.yv ; 3 uses
  %i.aai = icmp ult i64 %i.aah, %i.aaf
  br i1 %i.aai, label %bb.fh, label %.split646.us.invoke.i134

bb.fh:                                            ; preds = %bb.fg
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aae, i64 %i.aad
  %i.aak = load i8, ptr %i.aaj, align 1, !noundef !3
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aae, i64 %i.aah
  %i.aam = load i8, ptr %i.aal, align 1, !noundef !3
  %.sroa.0.0.i288.us.i239 = call noundef i8 @llvm.umax.i8(i8 %i.aam, i8 %i.aak)
  br label %bb.fk

bb.fi:                                            ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.us.i244
  %i.aan = add i64 %.sroa.0105.0639.us.i231, %i.yw ; 3 uses
  %i.aao = load i64, ptr %i.qb, align 8, !noalias !3535, !noundef !3 ; 3 uses
  %i.aap = icmp ult i64 %i.aan, %i.aao
  br i1 %i.aap, label %bb.fj, label %.split646.us.invoke.i134

bb.fj:                                            ; preds = %bb.fi
  %i.aaq = load ptr, ptr %i.qa, align 8, !noalias !3535, !nonnull !3, !noundef !3 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 %i.aan
  %i.aas = load i8, ptr %i.aar, align 1, !noundef !3
  %i.aat = add i8 %i.aas, 1
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fh
  %i.aau = phi ptr [ %i.aaq, %bb.fj ], [ %i.aae, %bb.fh ]
  %i.aav = phi i64 [ %i.aao, %bb.fj ], [ %i.aaf, %bb.fh ] ; 2 uses
  %.sroa.04.0.us.i240 = phi i8 [ %i.aat, %bb.fj ], [ %.sroa.0.0.i288.us.i239, %bb.fh ]
  %i.aaw = add i64 %i.zb, %i.yv                   ; 3 uses
  %i.aax = icmp ult i64 %i.aaw, %i.aav
  br i1 %i.aax, label %bb.fl, label %.split646.us.invoke.i134

bb.fl:                                            ; preds = %bb.fk
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aau, i64 %i.aaw
  store i8 %.sroa.04.0.us.i240, ptr %i.aay, align 1
  %.not168.us.i241 = icmp eq i64 %i.zb, 0
  br i1 %.not168.us.i241, label %..loopexit25_crit_edge.split.us.i242, label %.lr.ph.split.us.i230

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i246: ; preds = %bb.fc
  %lpad.loopexit26.us.i247 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i114

..loopexit25_crit_edge.split.us.i242:             ; preds = %bb.fl
  %.not.i243 = icmp eq i64 %i.qc, 0
  br i1 %.not.i243, label %.lr.ph702.i130, label %.lr.ph677.split.i221

.lr.ph.split.i227:                                ; preds = %.lr.ph.i225
  %i.aaz = and i64 %.pre1216, 1023
  %i.aba = icmp eq i64 %i.aaz, 1
  br i1 %i.aba, label %bb.fm, label %bb.fo

bb.fm:                                            ; preds = %.lr.ph.split.i227
  %i.abb = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i228

bb.fn:                                            ; preds = %bb.fm
  br i1 %i.abb, label %.loopexit10.i174, label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %.lr.ph.split.i227
  %i.abc = add i64 %i.l, -1                       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val50) ]
  %i.abd = icmp ult i64 %i.abc, %.val51
  br i1 %i.abd, label %bb.fp, label %.split646.us.invoke.i134

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48) ]
  br label %.split646.us.invoke.i134

.split646.us.invoke.i134:                         ; preds = %bb.fk, %bb.fi, %bb.fg, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.thread.us.i238, %.noexc.us.i233, %bb.ff, %bb.fe, %bb.ds, %bb.dq, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit198.thread.i145, %bb.dp, %.noexc195.i137, %bb.do, %bb.dn, %bb.dk, %bb.en, %bb.el, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit190.thread.i161, %bb.ek, %.noexc187.i153, %bb.ej, %bb.ei, %bb.ec, %bb.ea, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit194.thread.i190, %bb.dz, %.noexc191.i182, %bb.dy, %bb.dx, %bb.ew, %bb.ev, %.noexc183.i211, %bb.eu, %bb.et, %bb.eq, %bb.fp, %bb.fo
  %i.abe = phi i64 [ %i.wn, %bb.en ], [ %.val49, %bb.et ], [ %i.yx, %bb.fp ], [ %i.abc, %bb.fo ], [ %.val51, %bb.dx ], [ %i.qn, %bb.dn ], [ %.val51, %bb.eq ], [ %i.yj, %bb.ew ], [ %i.xs, %.noexc183.i211 ], [ %i.yc, %bb.ev ], [ %i.xh, %bb.eu ], [ %i.ul, %bb.ec ], [ %i.tn, %.noexc191.i182 ], [ %i.tx, %bb.dz ], [ %i.ud, %bb.ea ], [ %i.ub, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit194.thread.i190 ], [ %i.te, %bb.dy ], [ %.val49, %bb.ei ], [ %i.vl, %.noexc187.i153 ], [ %i.vv, %bb.ek ], [ %i.wf, %bb.el ], [ %i.wb, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit190.thread.i161 ], [ %i.va, %bb.ej ], [ %i.rq, %bb.dp ], [ %i.qo, %bb.dk ], [ %i.qw, %bb.do ], [ %i.rg, %.noexc195.i137 ], [ %i.sb, %bb.dq ], [ %i.sm, %bb.ds ], [ %i.rw, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit198.thread.i145 ], [ %i.zk, %bb.ff ], [ %i.aad, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.thread.us.i238 ], [ %i.zt, %.noexc.us.i233 ], [ %i.aah, %bb.fg ], [ %i.aan, %bb.fi ], [ %i.zf, %bb.fe ], [ %i.aaw, %bb.fk ]
  %i.abf = phi i64 [ %i.vx, %bb.en ], [ %.val49, %bb.et ], [ %.val49, %bb.fp ], [ %.val51, %bb.fo ], [ %.val51, %bb.dx ], [ %.val49, %bb.dn ], [ %.val51, %bb.eq ], [ %i.ye, %bb.ew ], [ %.val231.i213, %.noexc183.i211 ], [ %i.ye, %bb.ev ], [ %.val233.i210, %bb.eu ], [ %i.tz, %bb.ec ], [ %.val223.i184, %.noexc191.i182 ], [ %.pre1192.i194, %bb.dz ], [ %.pre1192.i194, %bb.ea ], [ %i.tz, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit194.thread.i190 ], [ %.val225.i181, %bb.dy ], [ %.val49, %bb.ei ], [ %.val227.i155, %.noexc187.i153 ], [ %.pre1188.i171, %bb.ek ], [ %.pre1188.i171, %bb.el ], [ %i.vx, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit190.thread.i161 ], [ %.val229.i152, %bb.ej ], [ %.pre1184.i200, %bb.dp ], [ %.val51, %bb.dk ], [ %.val221.i136, %bb.do ], [ %.val219.i139, %.noexc195.i137 ], [ %.pre1184.i200, %bb.dq ], [ %i.rs, %bb.ds ], [ %i.rs, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit198.thread.i145 ], [ %.val237.us.i232, %bb.ff ], [ %i.aaf, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.thread.us.i238 ], [ %.val235.us.i235, %.noexc.us.i233 ], [ %i.aaf, %bb.fg ], [ %i.aao, %bb.fi ], [ %.val51, %bb.fe ], [ %i.aav, %bb.fk ]
  %i.abg = phi ptr [ @68, %bb.en ], [ @70, %bb.et ], [ @74, %bb.fp ], [ @73, %bb.fo ], [ @57, %bb.dx ], [ @52, %bb.dn ], [ @69, %bb.eq ], [ @72, %bb.ew ], [ @84, %.noexc183.i211 ], [ @71, %bb.ev ], [ @84, %bb.eu ], [ @62, %bb.ec ], [ @84, %.noexc191.i182 ], [ @59, %bb.dz ], [ @60, %bb.ea ], [ @61, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit194.thread.i190 ], [ @84, %bb.dy ], [ @64, %bb.ei ], [ @84, %.noexc187.i153 ], [ @65, %bb.ek ], [ @66, %bb.el ], [ @67, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit190.thread.i161 ], [ @84, %bb.ej ], [ @53, %bb.dp ], [ @51, %bb.dk ], [ @84, %bb.do ], [ @84, %.noexc195.i137 ], [ @54, %bb.dq ], [ @56, %bb.ds ], [ @55, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit198.thread.i145 ], [ @84, %bb.ff ], [ @75, %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtNtB9_4text6inline11MultiLookupeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs56aZGHL6Dc6_7ruff_db.exit.thread.us.i238 ], [ @84, %.noexc.us.i233 ], [ @76, %bb.fg ], [ @77, %bb.fi ], [ @73, %bb.fe ], [ @78, %bb.fk ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.abe, i64 noundef %i.abf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abg) #14
          to label %.split646.us.cont.i135 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i112

.split646.us.cont.i135:                           ; preds = %.split646.us.invoke.i134
  unreachable

bb.fq:                                            ; preds = %.loopexit.split-lp.i114
  %i.abh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2R_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %.loopexit10.i174
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3535
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2R_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit.thread

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2R_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit.thread: ; preds = %bb.ao, %bb.ap, %bb.de, %bb.as, %bb.aq, %.sink.split.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2R_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit
  %.val68 = load ptr, ptr %i.o, align 8           ; 4 uses
  %.val69 = load i64, ptr %i.p, align 8           ; 4 uses
  %.val70 = load ptr, ptr %i.m, align 8           ; 4 uses
  %.val71 = load i64, ptr %i.n, align 8           ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3573)
  call void @llvm.experimental.noalias.scope.decl(metadata !3574)
  %i.abi = sub i64 %.pre, %.pre1216               ; 3 uses
  %i.abj = and i64 %i.abi, 1
  %.not.i248 = icmp eq i64 %i.abj, 0              ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.abl = load i64, ptr %i.abk, align 8, !alias.scope !3573, !noalias !3575, !noundef !3 ; 4 uses
  %i.abm = add i64 %i.abl, 1                      ; 5 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.abo = load i64, ptr %i.abn, align 8, !alias.scope !3573, !noalias !3575, !noundef !3 ; 16 uses
  %i.abp = icmp ult i64 %i.abm, %i.abo
  br i1 %i.abp, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2R_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit.thread
  %i.abq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.abr = load ptr, ptr %i.abq, align 8, !alias.scope !3573, !noalias !3575, !nonnull !3, !noundef !3 ; 7 uses
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %i.abm
  store i64 0, ptr %i.abs, align 8, !noalias !3576
  %i.abt = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.abu = load i64, ptr %i.abt, align 8, !alias.scope !3574, !noalias !3577, !noundef !3 ; 4 uses
  %i.abv = add i64 %i.abu, 1                      ; 5 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.abx = load i64, ptr %i.abw, align 8, !alias.scope !3574, !noalias !3577, !noundef !3 ; 16 uses
  %i.aby = icmp ult i64 %i.abv, %i.abx
  br i1 %i.aby, label %bb.ft, label %bb.fu

bb.fs:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2R_NtNtB4_7capture7CaptureEEEEECs56aZGHL6Dc6_7ruff_db.exit.thread
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.abm, i64 noundef %i.abo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !noalias !3576
  unreachable

bb.ft:                                            ; preds = %bb.fr
  %i.abz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aca = load ptr, ptr %i.abz, align 8, !alias.scope !3574, !noalias !3577, !nonnull !3, !noundef !3 ; 7 uses
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.aca, i64 %i.abv
  store i64 0, ptr %i.acb, align 8, !noalias !3576
  %i.acc = add i64 %.pre, %.pre1216               ; 2 uses
  %i.acd = lshr i64 %i.acc, 1                     ; 2 uses
  %.sroa.047.0.i = sub nuw i64 %i.acc, %i.acd     ; 2 uses
  %i.ace = icmp ult i64 %i.abo, 1152921504606846976
  call void @llvm.assume(i1 %i.ace)
  %.not128.not.i = icmp ugt i64 %i.abo, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.fw, label %bb.fv, !prof !4

bb.fu:                                            ; preds = %bb.fr
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.abv, i64 noundef %i.abx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14, !noalias !3576
  unreachable

bb.fv:                                            ; preds = %bb.ft
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #14, !noalias !3576
  unreachable

bb.fw:                                            ; preds = %bb.ft
  %i.acf = icmp ult i64 %i.abx, 1152921504606846976
  call void @llvm.assume(i1 %i.acf)
  %.not129.not.i = icmp samesign ugt i64 %i.abx, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph136.i, label %bb.fx, !prof !4

.lr.ph136.i:                                      ; preds = %bb.fw
  %i.acg = add i64 %i.abl, -1
  %i.ach = add i64 %i.abu, -1
  %.neg = add i64 %i.k, 1
  %.neg373 = add i64 %.neg, %i.l
  %11 = add i64 %.sroa.0290.0, %.sroa.0.0
  %12 = add i64 %11, %i.acd
  %13 = sub i64 %.neg373, %12
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14, !noalias !3576
  unreachable

bb.fy:                                            ; preds = %._crit_edge132.i, %.lr.ph136.i
  %.sroa.048.0135.i = phi i64 [ 0, %.lr.ph136.i ], [ %i.aci, %._crit_edge132.i ] ; 10 uses
  %i.aci = add nuw i64 %.sroa.048.0135.i, 1       ; 2 uses
  %i.acj = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3576
  br i1 %i.acj, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB13_ECs56aZGHL6Dc6_7ruff_db.exit, label %.lr.ph118.preheader.i

.lr.ph118.preheader.i:                            ; preds = %bb.fy
  %i.ack = sub nsw i64 0, %.sroa.048.0135.i       ; 6 uses
  %.pre221.i = sub i64 %i.abm, %.sroa.048.0135.i
  br label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %bb.id, %.lr.ph118.preheader.i
  %.sroa.7.0117.i = phi i64 [ %.sroa.7.1.i, %bb.id ], [ %.sroa.048.0135.i, %.lr.ph118.preheader.i ] ; 2 uses
  %not..sroa.1418.0116.i = phi i64 [ 1, %bb.id ], [ 0, %.lr.ph118.preheader.i ]
  %i.acl = sub i64 %.sroa.7.0117.i, %not..sroa.1418.0116.i ; 11 uses
  %.not.i.not.i.i = icmp sgt i64 %i.acl, %.sroa.7.0117.i
  br i1 %.not.i.not.i.i, label %.lr.ph131.preheader.i, label %bb.fz

bb.fz:                                            ; preds = %.lr.ph118.i
  %i.acm = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.acl, i64 %i.ack)
  switch i8 %i.acm, label %bb.ga [
    i8 -1, label %.lr.ph131.preheader.i
    i8 0, label %bb.gc
    i8 1, label %bb.gb
  ]

bb.ga:                                            ; preds = %bb.fz
  unreachable

bb.gb:                                            ; preds = %bb.fz
  %i.acn = add i64 %i.acl, -1
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.fz
  %.sroa.11.1.i = phi i1 [ true, %bb.fz ], [ false, %bb.gb ]
  %.sroa.7.1.i = phi i64 [ %i.acl, %bb.fz ], [ %i.acn, %bb.gb ] ; 2 uses
  %i.aco = icmp eq i64 %i.acl, %i.ack
  br i1 %i.aco, label %._crit_edge216.i.a, label %bb.hi

.lr.ph131.preheader.i:                            ; preds = %bb.id, %bb.fz, %.lr.ph118.i
  %.pre.i254 = sub i64 %i.abv, %.sroa.048.0135.i
  br label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %bb.hd, %.lr.ph131.preheader.i
  %not..sroa.1727.0129.i = phi i64 [ 1, %bb.hd ], [ 0, %.lr.ph131.preheader.i ]
  %.sroa.726.0128.i = phi i64 [ %.sroa.726.1.i, %bb.hd ], [ %.sroa.048.0135.i, %.lr.ph131.preheader.i ] ; 2 uses
  %i.acp = sub i64 %.sroa.726.0128.i, %not..sroa.1727.0129.i ; 11 uses
  %.not.i.not.i153.i = icmp sgt i64 %i.acp, %.sroa.726.0128.i
  br i1 %.not.i.not.i153.i, label %._crit_edge132.i, label %bb.gd

bb.gd:                                            ; preds = %.lr.ph131.i
  %i.acq = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.acp, i64 %i.ack)
  switch i8 %i.acq, label %bb.ge [
    i8 -1, label %._crit_edge132.i
    i8 0, label %bb.gg
    i8 1, label %bb.gf
  ]

bb.ge:                                            ; preds = %bb.gd
  unreachable

bb.gf:                                            ; preds = %bb.gd
  %i.acr = add i64 %i.acp, -1
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.gd
  %.sroa.726.1.i = phi i64 [ %i.acp, %bb.gd ], [ %i.acr, %bb.gf ] ; 2 uses
  %.sroa.12.1.i250 = phi i1 [ true, %bb.gd ], [ false, %bb.gf ]
  %i.acs = icmp eq i64 %i.acp, %i.ack
  br i1 %i.acs, label %._crit_edge218.i.a, label %bb.gh

._crit_edge132.i:                                 ; preds = %bb.hd, %bb.gd, %.lr.ph131.i
  %exitcond214.not.i = icmp eq i64 %i.aci, %13
  br i1 %exitcond214.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB13_ECs56aZGHL6Dc6_7ruff_db.exit, label %bb.fy

bb.gh:                                            ; preds = %bb.gg
  %.not130.i = icmp eq i64 %i.acp, %.sroa.048.0135.i
  %.pre219.i = add i64 %i.ach, %i.acp             ; 6 uses
  br i1 %.not130.i, label %._crit_edge217.i.a, label %bb.gi

._crit_edge218.i.a:                               ; preds = %bb.gg, %bb.gl
  %.pre-phi.i = phi i64 [ %i.acw, %bb.gl ], [ %.pre.i254, %bb.gg ] ; 3 uses
  %i.act = icmp ult i64 %.pre-phi.i, %i.abx
  br i1 %i.act, label %bb.gq, label %bb.gr

._crit_edge217.i.a:                               ; preds = %bb.gl, %bb.gh
  %i.acu = icmp ult i64 %.pre219.i, %i.abx
  br i1 %i.acu, label %bb.gn, label %bb.go

bb.gi:                                            ; preds = %bb.gh
  %i.acv = icmp ult i64 %.pre219.i, %i.abx
  br i1 %i.acv, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.acw = add i64 %i.acp, %i.abv                 ; 4 uses
  %i.acx = icmp ult i64 %i.acw, %i.abx
  br i1 %i.acx, label %bb.gl, label %bb.gm

bb.gk:                                            ; preds = %bb.gi
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre219.i, i64 noundef %i.abx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14, !noalias !3576
  unreachable

bb.gl:                                            ; preds = %bb.gj
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.aca, i64 %.pre219.i
  %i.acz = load i64, ptr %i.acy, align 8, !noalias !3576, !noundef !3
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.aca, i64 %i.acw
  %i.adb = load i64, ptr %i.ada, align 8, !noalias !3576, !noundef !3
  %i.adc = icmp ult i64 %i.acz, %i.adb
  br i1 %i.adc, label %._crit_edge218.i.a, label %._crit_edge217.i.a

bb.gm:                                            ; preds = %bb.gj
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.acw, i64 noundef %i.abx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14, !noalias !3576
  unreachable

bb.gn:                                            ; preds = %._crit_edge217.i.a
  %i.add = getelementptr inbounds nuw [8 x i8], ptr %i.aca, i64 %.pre219.i
  %i.ade = load i64, ptr %i.add, align 8, !noalias !3576, !noundef !3
  %i.adf = add i64 %i.ade, 1
  br label %bb.gp

bb.go:                                            ; preds = %._crit_edge217.i.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre219.i, i64 noundef %i.abx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #14, !noalias !3576
  unreachable

bb.gp:                                            ; preds = %bb.gq, %bb.gn
  %.sroa.014.0.i = phi i64 [ %i.adk, %bb.gq ], [ %i.adf, %bb.gn ] ; 5 uses
  %i.adg = sub i64 %.sroa.014.0.i, %i.acp         ; 4 uses
  %i.adh = icmp ult i64 %.sroa.014.0.i, %.pre
  %i.adi = icmp ult i64 %i.adg, %.pre1216
  %or.cond.i251 = and i1 %i.adh, %i.adi
  br i1 %or.cond.i251, label %bb.gt, label %bb.gs

bb.gq:                                            ; preds = %._crit_edge218.i.a
  %i.adj = getelementptr inbounds nuw [8 x i8], ptr %i.aca, i64 %.pre-phi.i
  %i.adk = load i64, ptr %i.adj, align 8, !noalias !3576, !noundef !3
  br label %bb.gp

bb.gr:                                            ; preds = %._crit_edge218.i.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.abx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14, !noalias !3576
  unreachable

bb.gs:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i, %bb.gp
  %.sroa.020.0.i = phi i64 [ %i.aew, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i ], [ %i.adg, %bb.gp ]
  %.sroa.014.1.i = phi i64 [ %i.aev, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i ], [ %.sroa.014.0.i, %bb.gp ] ; 3 uses
  %i.adl = add i64 %i.acp, %i.abu                 ; 3 uses
  %i.adm = icmp ult i64 %i.adl, %i.abx
  br i1 %i.adm, label %bb.ha, label %bb.hb

bb.gt:                                            ; preds = %bb.gp
  %i.adn = sub i64 %i.k, %.sroa.014.0.i           ; 2 uses
  %i.ado = sub i64 %i.l, %i.adg                   ; 2 uses
  %i.adp = sub i64 %i.adn, %.sroa.0.0
  %i.adq = sub i64 %i.ado, %.sroa.0290.0
  %.sroa.0.0.i157.i = call noundef i64 @llvm.umin.i64(i64 %i.adq, i64 %i.adp) ; 3 uses
  %.not140.i = icmp eq i64 %.sroa.0.0.i157.i, 0
  br i1 %.not140.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i, label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %bb.gt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gz, %.lr.ph123.i
  %.sroa.0.0.i136121.i = phi i64 [ 0, %.lr.ph123.i ], [ %i.aeu, %bb.gz ] ; 4 uses
  %i.adr = xor i64 %.sroa.0.0.i136121.i, -1       ; 2 uses
  %i.ads = add i64 %i.ado, %i.adr                 ; 3 uses
  %i.adt = icmp ult i64 %i.ads, %.val71
  br i1 %i.adt, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ads, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14, !noalias !3578
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %bb.gu
  %i.adu = add i64 %i.adn, %i.adr                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.adv = icmp ult i64 %i.adu, %.val69
  br i1 %i.adv, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit158.i, label %bb.gw

bb.gw:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.adu, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #14, !noalias !3579
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit158.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i
  %i.adw = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.ads ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3580)
  call void @llvm.experimental.noalias.scope.decl(metadata !3581)
  %i.adx = load ptr, ptr %i.adw, align 8, !alias.scope !3580, !noalias !3582, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adw, i64 8
  %i.adz = load i64, ptr %i.ady, align 8, !alias.scope !3580, !noalias !3582, !noundef !3 ; 3 uses
  %i.aea = getelementptr i8, ptr %i.adx, i64 16
  %.val151.i = load i64, ptr %i.aea, align 8, !noalias !3576, !noundef !3 ; 2 uses
  %i.aeb = icmp ult i64 %i.adz, %.val151.i
  br i1 %i.aeb, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i252, label %bb.gx

bb.gx:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit158.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.adz, i64 noundef %.val151.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !3576
  unreachable

_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i252: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtNtBL_4text6inline11MultiLookupeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit158.i
  %i.aec = getelementptr i8, ptr %i.adx, i64 8
  %.val150.i = load ptr, ptr %i.aec, align 8, !noalias !3576, !nonnull !3, !noundef !3
  %i.aed = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.adu ; 2 uses
  %i.aee = getelementptr inbounds nuw [32 x i8], ptr %.val150.i, i64 %i.adz ; 2 uses
  %i.aef = load ptr, ptr %i.aee, align 8, !noalias !3583, !nonnull !3, !noundef !3
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %i.aeh = load i64, ptr %i.aeg, align 8, !noalias !3583, !noundef !3 ; 2 uses
  %i.aei = load ptr, ptr %i.aed, align 8, !alias.scope !3581, !noalias !3584, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aed, i64 8
  %i.aek = load i64, ptr %i.aej, align 8, !alias.scope !3581, !noalias !3584, !noundef !3 ; 3 uses
  %i.ael = getelementptr i8, ptr %i.aei, i64 16
  %.val149.i = load i64, ptr %i.ael, align 8, !noalias !3576, !noundef !3 ; 2 uses
  %i.aem = icmp ult i64 %i.aek, %.val149.i
  br i1 %i.aem, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit159.i, label %bb.gy

bb.gy:                                            ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i252
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aek, i64 noundef %.val149.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !3576
  unreachable

_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit159.i: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit.i252
  %i.aen = getelementptr i8, ptr %i.aei, i64 8
  %.val148.i = load ptr, ptr %i.aen, align 8, !noalias !3576, !nonnull !3, !noundef !3
  %i.aeo = getelementptr inbounds nuw [32 x i8], ptr %.val148.i, i64 %i.aek ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %i.aeq = load i64, ptr %i.aep, align 8, !noalias !3585, !noundef !3
  %i.aer = icmp eq i64 %i.aeh, %i.aeq
  br i1 %i.aer, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit159.i
  %i.aes = load ptr, ptr %i.aeo, align 8, !noalias !3585, !nonnull !3, !noundef !3
  %bcmp.i.i253 = call i32 @bcmp(ptr nonnull readonly %i.aef, ptr nonnull readonly %i.aes, i64 %i.aeh), !alias.scope !3586, !noalias !3587
  %i.aet = icmp eq i32 %bcmp.i.i253, 0
  br i1 %i.aet, label %bb.gz, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i

bb.gz:                                            ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i
  %i.aeu = add nuw i64 %.sroa.0.0.i136121.i, 1    ; 2 uses
  %exitcond213.not.i = icmp eq i64 %i.aeu, %.sroa.0.0.i157.i
  br i1 %exitcond213.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i, label %bb.gu

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_suffix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtNtB6_4text6inline11MultiLookupeEEEB16_ECs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %bb.gz, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit159.i, %bb.gt
  %.sroa.0.0.i136.lcssa.i = phi i64 [ 0, %bb.gt ], [ %.sroa.0.0.i136121.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i ], [ %.sroa.0.0.i157.i, %bb.gz ], [ %.sroa.0.0.i136121.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar4text6inlineINtB5_11MultiLookupeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCs56aZGHL6Dc6_7ruff_db.exit159.i ] ; 2 uses
  %i.aev = add i64 %.sroa.0.0.i136.lcssa.i, %.sroa.014.0.i
  %i.aew = add i64 %.sroa.0.0.i136.lcssa.i, %i.adg
  br label %bb.gs

bb.ha:                                            ; preds = %bb.gs
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.aca, i64 %i.adl
  store i64 %.sroa.014.1.i, ptr %i.aex, align 8, !noalias !3576
  br i1 %.not.i248, label %bb.hc, label %bb.hd

bb.hb:                                            ; preds = %bb.gs
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.adl, i64 noundef %i.abx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #14, !noalias !3576
  unreachable

bb.hc:                                            ; preds = %bb.ha
  %i.aey = sub i64 %i.acp, %i.abi                 ; 2 uses
  %.sroa.024.0.i = call i64 @llvm.abs.i64(i64 %i.aey, i1 false)
  %.not131.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.048.0135.i
  br i1 %.not131.i, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hf, %bb.hc, %bb.ha
  %.not.i152.i = icmp slt i64 %.sroa.726.1.i, %i.ack
  %or.cond45.i = select i1 %.sroa.12.1.i250, i1 true, i1 %.not.i152.i
  br i1 %or.cond45.i, label %._crit_edge132.i, label %.lr.ph131.i

bb.he:                                            ; preds = %bb.hc
  %i.aez = sub i64 %i.abl, %i.aey                 ; 3 uses
  %i.afa = icmp ult i64 %i.aez, %i.abo
  br i1 %i.afa, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr %i.abr, i64 %i.aez
  %i.afc = load i64, ptr %i.afb, align 8, !noalias !3576, !noundef !3
  %i.afd = add i64 %i.afc, %.sroa.014.1.i
end_hunk_6
