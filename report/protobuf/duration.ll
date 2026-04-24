inline.NumInlined: 611
inline.NumDeleted: 181
begin_hunk_0_@_ZN4absl12lts_2025051213ParseDurationESt17basic_string_viewIcSt11char_traitsIcEEPNS0_8DurationE:bb.a
  br label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75

_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i74
  %.061 = phi i32 [ 1, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i74 ], [ -1, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ]
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = add i64 %0, -1                           ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.critedge, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75.thread

_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75.thread: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75
  %.061154 = phi i32 [ %.061, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75 ], [ 1, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ] ; 2 uses
  %.sroa.9.0151 = phi ptr [ %i.a, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75 ], [ %1, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ] ; 6 uses
  %.sroa.0123.0148 = phi i64 [ %i.b, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75 ], [ %0, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ] ; 3 uses
  %.sroa.9.0151224 = ptrtoint ptr %.sroa.9.0151 to i64
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213ParseDurationESt17basic_string_viewIcSt11char_traitsIcEEPNS0_8DurationE:bb.a
  store i64 9223372036854775807, ptr %5, align 8
  %.sroa.22.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 -1, ptr %.sroa.22.0..sroa_idx.i80, align 8
  %6 = sext i32 %.061154 to i64
  %i.o = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202505128DurationmLEl(ptr noundef nonnull align 4 dereferenceable(12) %5, i64 noundef %6) ; 0 uses
  %.sroa.03.0.copyload.i = load i64, ptr %5, align 8
  %.sroa.24.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i80, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051213ParseDurationESt17basic_string_viewIcSt11char_traitsIcEEPNS0_8DurationE:bb.a
.lr.ph.i.preheader.lr.ph:                         ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i76, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.9.0151, i64 %.sroa.0123.0148 ; 5 uses
  %i.q = ptrtoint ptr %i.p to i64
  %7 = sext i32 %.061154 to i64                   ; 2 uses
  %.sroa.22.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i.preheader
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051213ParseDurationESt17basic_string_viewIcSt11char_traitsIcEEPNS0_8DurationE:bb.a
  br i1 %.not66, label %_ZN4absl12lts_202505128DurationpLES1_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = mul nsw i64 %.1135169, %7
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.ph, ptr %4, align 8
  store i32 %.sroa.12.0.ph, ptr %.sroa.22.0..sroa_idx.i81, align 8
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051213ParseDurationESt17basic_string_viewIcSt11char_traitsIcEEPNS0_8DurationE:bb.a
  br i1 %.not67, label %_ZN4absl12lts_202505128DurationpLES1_.exit97, label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_202505128DurationpLES1_.exit
  %i.bq = mul nsw i64 %.3133170, %7
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0.ph, ptr %3, align 8
  store i32 %.sroa.12.0.ph, ptr %.sroa.22.0..sroa_idx.i87, align 8
end_hunk_4
