begin_hunk_0
inline.NumInlined: 456
inline.NumDeleted: 242
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
%"struct.absl::container_internal::internal_compressed_tuple::Storage.3" = type { i64 }
%"union.absl::inlined_vector_internal::Storage<absl::str_format_internal::FormatArgImpl, 4, std::allocator<absl::str_format_internal::FormatArgImpl>>::Data" = type { %"struct.absl::inlined_vector_internal::Storage<absl::str_format_internal::FormatArgImpl, 4, std::allocator<absl::str_format_internal::FormatArgImpl>>::Allocated", [48 x i8] }
%"struct.absl::inlined_vector_internal::Storage<absl::str_format_internal::FormatArgImpl, 4, std::allocator<absl::str_format_internal::FormatArgImpl>>::Allocated" = type { ptr, i64 }

$_ZN4absl19str_format_internal17FormatRawSinkImpl5FlushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPvSt17basic_string_viewIcS6_E = comdat any

end_hunk_1
begin_hunk_2_@_ZN4absl19str_format_internal12_GLOBAL__N_117ConverterConsumerINS1_20SummarizingConverterEE10ConvertOneERKNS0_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE
define internal fastcc noundef zeroext i1 @_ZN4absl19str_format_internal12_GLOBAL__N_117ConverterConsumerINS1_20SummarizingConverterEE10ConvertOneERKNS0_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(15) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.absl::str_format_internal::UntypedFormatSpecImpl", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 40 uses
  %4 = alloca %"class.absl::str_format_internal::Streamable", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 9 uses
end_hunk_2
begin_hunk_3_@_ZN4absl19str_format_internal12_GLOBAL__N_117ConverterConsumerINS1_20SummarizingConverterEE10ConvertOneERKNS0_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.an = load i8, ptr %i.am, align 2             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr @.str.14, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN4absl19str_format_internal12_GLOBAL__N_117ConverterConsumerINS1_20SummarizingConverterEE10ConvertOneERKNS0_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bn, ptr noundef nonnull %i.bd) #15
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.15, i64 noundef 1) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  store ptr %2, ptr %4, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 2, ptr %i.bp, align 8
  %i.bq = call noundef zeroext i1 @_ZN4absl19str_format_internal13FormatUntypedENS0_17FormatRawSinkImplENS0_21UntypedFormatSpecImplENS_4SpanIKNS0_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(8) %3, ptr nonnull @_ZN4absl19str_format_internal17FormatRawSinkImpl5FlushISoEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.14, i64 2, ptr nonnull %7, i64 1)
  br i1 %i.bq, label %_ZN4absl19str_format_internallsERSoRKNS0_10StreamableE.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_4
begin_hunk_5_@_ZN4absl19str_format_internal12_GLOBAL__N_117ConverterConsumerINS1_20SummarizingConverterEE10ConvertOneERKNS0_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN4absl19str_format_internallsERSoRKNS0_10StreamableE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.ci = load i64, ptr %i.bp, align 8
  %i.cj = trunc i64 %i.ci to i1
  br i1 %i.cj, label %bb.g, label %_ZN4absl19str_format_internal10StreamableD2Ev.exit.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ck = load ptr, ptr %7, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = shl i64 %i.cm, 4
end_hunk_5
begin_hunk_6_@_ZN4absl19str_format_internal12_GLOBAL__N_117ConverterConsumerINS1_20SummarizingConverterEE10ConvertOneERKNS0_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br label %_ZN4absl19str_format_internal10StreamableD2Ev.exit.i

_ZN4absl19str_format_internal10StreamableD2Ev.exit.i: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.co = icmp sgt i32 %.sroa.101.0, -1
  br i1 %i.co, label %bb.h, label %bb.i
end_hunk_6
