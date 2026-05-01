inline.NumInlined: 602
inline.NumDeleted: 355
begin_hunk_0_@atexit
; Function Attrs: mustprogress uwtable
define internal void @_ZN6google8protobuf8internalL16PrintAllCountersEv() #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %1 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %2 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %3 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internalL16PrintAllCountersEv:bb.a
  br i1 %.not86111, label %.loopexit, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.b
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internalL16PrintAllCountersEv:bb.a
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.t, ptr %4, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %5, align 8, !tbaa !56
  %i.v = call noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %i.u, ptr nonnull @.str.2, i64 9, ptr nonnull %4, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.080.0112, i64 72
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internalL16PrintAllCountersEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ak, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %3, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIlEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.m, align 8, !tbaa !56
  %i.aw = inttoptr i64 %.085.lcssa to ptr
  store ptr %i.aw, ptr %i.n, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.o, align 8, !tbaa !56
  %i.ax = call noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %i.av, ptr nonnull @.str.3, i64 15, ptr nonnull %3, i64 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.f
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8internalL16PrintAllCountersEv:bb.a
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.ak, ptr %2, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.j, align 8, !tbaa !56
  %i.bb = inttoptr i64 %.085.lcssa to ptr
  store ptr %i.bb, ptr %i.k, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.l, align 8, !tbaa !56
  %i.bc = call noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %i.ba, ptr nonnull @.str.4, i64 16, ptr nonnull %2, i64 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.f
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8internalL16PrintAllCountersEv:bb.a
  %i.bj = bitcast double %i.bi to i64
  %i.bk = inttoptr i64 %i.bj to ptr
  store ptr %i.bk, ptr %1, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIdEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.p, align 8, !tbaa !56
  %i.bl = call noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %i.bf, ptr nonnull @.str.5, i64 10, ptr nonnull %1, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.i
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf8internalL16PrintAllCountersEv:bb.a
bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr @stderr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  store ptr @.str.8, ptr %0, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIPKcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.q, align 8, !tbaa !56
  %i.bt = inttoptr i64 %.1.lcssa to ptr
  store ptr %i.bt, ptr %i.r, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.s, align 8, !tbaa !56
  %i.bu = call noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %i.bs, ptr nonnull @.str.7, i64 17, ptr nonnull %0, i64 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
end_hunk_6
