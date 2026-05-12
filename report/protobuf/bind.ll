inline.NumInlined: 398
inline.NumDeleted: 225
begin_hunk_0_@_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117ConverterConsumerINS2_20SummarizingConverterEE10ConvertOneERKNS1_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117ConverterConsumerINS2_20SummarizingConverterEE10ConvertOneERKNS1_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(15) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::str_format_internal::UntypedFormatSpecImpl", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 30 uses
  %4 = alloca %"class.absl::lts_20250512::str_format_internal::Streamable", align 8 ; 8 uses
  %.sroa.0.i = alloca %"class.absl::lts_20250512::str_format_internal::FormatArgImpl", align 8 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117ConverterConsumerINS2_20SummarizingConverterEE10ConvertOneERKNS1_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.an = load i8, ptr %i.am, align 2, !tbaa !25  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr @.str.2, ptr %2, align 8, !tbaa !106
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.ao, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117ConverterConsumerINS2_20SummarizingConverterEE10ConvertOneERKNS1_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !tbaa.struct !109
  store i64 2, ptr %i.aq, align 8, !tbaa !81
  %i.as = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(8) %3, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushISoEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.2, i64 2, ptr nonnull %i.ar, i64 1)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
end_hunk_2
