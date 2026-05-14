inline.NumInlined: 398
inline.NumDeleted: 225
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20250512::str_format_internal::ConvTag" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.absl::lts_20250512::str_format_internal::UnboundConversion" = type <{ i32, %"class.absl::lts_20250512::str_format_internal::UnboundConversion::InputValue", %"class.absl::lts_20250512::str_format_internal::UnboundConversion::InputValue", i8, i8, i8, i8 }>
%"class.absl::lts_20250512::str_format_internal::UnboundConversion::InputValue" = type { i32 }
%"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::ConverterConsumer" = type { %"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::SummarizingConverter", %"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::ArgContext" }
%"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::SummarizingConverter" = type { ptr }
%"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::ArgContext" = type { %"class.absl::lts_20250512::Span" }
%"class.absl::lts_20250512::Span" = type { ptr, i64 }
%"class.absl::lts_20250512::str_format_internal::FormatSinkImpl" = type { %"class.absl::lts_20250512::str_format_internal::FormatRawSinkImpl", i64, ptr, [1024 x i8] }
%"class.absl::lts_20250512::str_format_internal::FormatRawSinkImpl" = type { ptr, ptr }
%"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::ConverterConsumer.11" = type { %"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::DefaultConverter", %"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::ArgContext" }
%"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::DefaultConverter" = type { ptr }
%"class.absl::lts_20250512::str_format_internal::FILERawSink" = type { ptr, i32, i64 }
%"class.absl::lts_20250512::str_format_internal::BufferRawSink" = type { ptr, i64, i64 }
%"class.absl::lts_20250512::str_format_internal::UntypedFormatSpecImpl" = type { ptr, i64 }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.absl::lts_20250512::str_format_internal::Streamable" = type { ptr, %"class.absl::lts_20250512::InlinedVector" }
%"class.absl::lts_20250512::InlinedVector" = type { %"class.absl::lts_20250512::inlined_vector_internal::Storage" }
%"class.absl::lts_20250512::inlined_vector_internal::Storage" = type { %"class.absl::lts_20250512::container_internal::CompressedTuple", %"union.absl::lts_20250512::inlined_vector_internal::Storage<absl::lts_20250512::str_format_internal::FormatArgImpl, 4, std::allocator<absl::lts_20250512::str_format_internal::FormatArgImpl>>::Data" }
%"class.absl::lts_20250512::container_internal::CompressedTuple" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage.3" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage.3" = type { i64 }
%"union.absl::lts_20250512::inlined_vector_internal::Storage<absl::lts_20250512::str_format_internal::FormatArgImpl, 4, std::allocator<absl::lts_20250512::str_format_internal::FormatArgImpl>>::Data" = type { %"struct.absl::lts_20250512::inlined_vector_internal::Storage<absl::lts_20250512::str_format_internal::FormatArgImpl, 4, std::allocator<absl::lts_20250512::str_format_internal::FormatArgImpl>>::Allocated", [48 x i8] }
%"struct.absl::lts_20250512::inlined_vector_internal::Storage<absl::lts_20250512::str_format_internal::FormatArgImpl, 4, std::allocator<absl::lts_20250512::str_format_internal::FormatArgImpl>>::Allocated" = type { ptr, i64 }

$_ZN4absl12lts_2025051219str_format_internal14FormatSinkImplD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPvSt17basic_string_viewIcS7_E = comdat any

$_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushISoEEvPvSt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS1_11FILERawSinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS1_13BufferRawSinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZN4absl12lts_2025051219str_format_internal13ConvTagHolder5valueE = comdat any

@.str.1 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.27 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@_ZN4absl12lts_2025051219str_format_internal13ConvTagHolder5valueE = linkonce_odr local_unnamed_addr constant [256 x %"class.absl::lts_20250512::str_format_internal::ConvTag"] [%"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -60 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -56 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -62 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -63 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -48 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 15 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 11 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 9 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 13 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -124 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 7 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 14 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" zeroinitializer, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 2 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 10 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 8 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 12 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -128 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 3 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -123 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -126 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 16 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 4 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 17 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -120 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -121 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 5 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 18 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 6 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -122 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }, %"class.absl::lts_20250512::str_format_internal::ConvTag" { i8 -1 }], comdat, align 16
@.str.30 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@switch.table._ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117ConverterConsumerINS2_20SummarizingConverterEE10ConvertOneERKNS1_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE = private unnamed_addr constant [19 x i8] c"csdiouxXfFeEgGaAnpv", align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12BindWithPackEPKNS1_17UnboundConversionENS0_4SpanIKNS1_13FormatArgImplEEEPNS1_15BoundConversionE(ptr noundef readonly captures(none) %0, ptr %1, i64 %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !7
  %i.d = add nsw i32 %i.c, -1
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %.not.i = icmp ugt i64 %2, %i.e
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !13
  %.not35.i = icmp eq i8 %i.h, 0
  br i1 %.not35.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14   ; 4 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  %i.k = icmp slt i32 %i.j, -1
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = xor i32 %i.j, -1
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = icmp ult i64 %2, %i.m
  br i1 %i.n, label %.critedge.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit.i: ; preds = %bb.d
  %i.o = getelementptr [16 x i8], ptr %1, i64 %i.m ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.p, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.o, i64 -8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !16
  %i.q = call noundef zeroext i1 %.sroa.2.0.copyload.i.i(ptr %.sroa.0.0.copyload.i.i, i64 589843, i32 0, ptr noundef nonnull %i.a), !inline_history !18
  br i1 %i.q, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit.i
  %i.r = load i32, ptr %i.a, align 4, !tbaa !3    ; 3 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.speculated.i = call i32 @llvm.umax.i32(i32 %i.r, i32 -2147483647)
  %i.t = sub nsw i32 0, %.sroa.speculated.i       ; 2 uses
  store i32 %i.t, ptr %i.a, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.u = phi i32 [ %i.t, %bb.f ], [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  %.033.i = phi i8 [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !14   ; 4 uses
  store i32 %i.w, ptr %i.b, align 4, !tbaa !3
  %i.x = icmp slt i32 %i.w, -1
  br i1 %i.x, label %bb.h, label %.critedge37.i

bb.h:                                             ; preds = %bb.g
  %i.y = xor i32 %i.w, -1
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = icmp ult i64 %2, %i.z
  br i1 %i.aa, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.i: ; preds = %bb.h
  %i.ab = getelementptr [16 x i8], ptr %1, i64 %i.z ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -16
  %.sroa.0.0.copyload.i38.i = load ptr, ptr %i.ac, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i39.i = getelementptr i8, ptr %i.ab, i64 -8
  %.sroa.2.0.copyload.i40.i = load ptr, ptr %.sroa.2.0..sroa_idx.i39.i, align 8, !tbaa !16
  %i.ad = call noundef zeroext i1 %.sroa.2.0.copyload.i40.i(ptr %.sroa.0.0.copyload.i38.i, i64 589843, i32 0, ptr noundef nonnull %i.b), !inline_history !18
  br i1 %i.ad, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.i
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !3
  %.pre46.i = load i32, ptr %i.b, align 4, !tbaa !3
  br label %.critedge37.i

.critedge37.i:                                    ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i, %bb.g
  %i.ae = phi i32 [ %.pre46.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i ], [ %i.w, %bb.g ]
  %i.af = phi i32 [ %.pre.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i ], [ %i.u, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ae, ptr %i.ah, align 4, !tbaa !21
  %i.ai = load i8, ptr %i.g, align 4, !tbaa !13
  %.sink.i = or i8 %i.ai, %.033.i
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %.sink.i, ptr %i.aj, align 1, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.al, ptr %i.am, align 2, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.j

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit

bb.i:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.an, align 1, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.ao, align 4, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 -1, ptr %i.ap, align 4, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge37.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !25
  store i8 %i.ar, ptr %3, align 4, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.f, ptr %i.as, align 8, !tbaa !27
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit

.critedge.i:                                      ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit: ; preds = %bb.a, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i, %bb.j, %.critedge.i
  %.2.i = phi i1 [ false, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i ], [ true, %bb.j ], [ false, %bb.a ], [ false, %.critedge.i ]
  ret i1 %.2.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051219str_format_internal9SummarizeB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %5 = alloca %"struct.absl::lts_20250512::str_format_internal::UnboundConversion", align 4 ; 9 uses
  %6 = alloca %"struct.absl::lts_20250512::str_format_internal::UnboundConversion", align 4 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::ConverterConsumer", align 8 ; 8 uses
  %8 = alloca %"class.absl::lts_20250512::str_format_internal::(anonymous namespace)::ConverterConsumer", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.absl::lts_20250512::str_format_internal::FormatSinkImpl", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  store ptr %i.b, ptr %9, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !33
  store i8 0, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store ptr %9, ptr %10, align 8, !tbaa !16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 11 uses
  store ptr @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPvSt17basic_string_viewIcS7_E, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store i64 0, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 15 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !39
  %i.g = icmp eq i64 %2, -1
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051219str_format_internal10AppendPackEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.30, i64 noundef %i.b, i64 noundef %i.d) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.b
  store i64 %i.b, ptr %i.a, align 8, !tbaa !33
  %i.f = load ptr, ptr %0, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b
  store i8 0, ptr %i.g, align 1, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !33
  store i8 0, ptr %i.a, align 8, !tbaa !15
  %i.c = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull %0, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPvSt17basic_string_viewIcS7_E, ptr %1, i64 %2, ptr %3, i64 %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !33
  %i.d = load ptr, ptr %0, align 8, !tbaa !69
  store i8 0, ptr %i.d, align 1, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.a, align 8, !tbaa !15
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, -2147483648) i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.absl::lts_20250512::str_format_internal::FILERawSink", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %0, ptr %5, align 8, !tbaa !93
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !97
  %i.c = call noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull %5, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS1_11FILERawSinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr %1, i64 %2, ptr %3, i64 %4)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #19
  store i32 22, ptr %i.d, align 4, !tbaa !3
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__errno_location() #19
  store i32 %i.e, ptr %i.f, align 4, !tbaa !3
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = load i64, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %i.h = icmp ugt i64 %i.g, 2147483647
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @__errno_location() #19
  store i32 27, ptr %i.i, align 4, !tbaa !3
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = trunc nuw nsw i64 %i.g to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ %i.j, %bb.g ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2025051219str_format_internal8SnprintFEPcmNS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %0, i64 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.absl::lts_20250512::str_format_internal::BufferRawSink", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.a = add i64 %1, -1
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 1)
  store ptr %0, ptr %6, align 8, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !101
  %i.e = call noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull %6, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS1_13BufferRawSinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr %2, i64 %3, ptr %4, i64 %5)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #19
  store i32 22, ptr %i.f, align 4, !tbaa !3
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  %i.g = load i64, ptr %i.d, align 8, !tbaa !101  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.a, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.speculated
  store i8 0, ptr %i.h, align 1, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = trunc i64 %i.g to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0 = phi i32 [ %i.i, %bb.e ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPvSt17basic_string_viewIcS7_E(ptr noundef %0, i64 %1, ptr %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33
  %i.c = sub i64 4611686018427387903, %i.b
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.b, label %_ZN4absl12lts_2025051219str_format_internal11InvokeFlushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTcl15AbslFormatFlushfp_fp0_EEPT_St17basic_string_viewIcS6_E.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZN4absl12lts_2025051219str_format_internal11InvokeFlushINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTcl15AbslFormatFlushfp_fp0_EEPT_St17basic_string_viewIcS6_E.exit: ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, i64 noundef %1) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117ConverterConsumerINS2_20SummarizingConverterEE10ConvertOneERKNS1_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(15) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::str_format_internal::UntypedFormatSpecImpl", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 30 uses
  %4 = alloca %"class.absl::lts_20250512::str_format_internal::Streamable", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !7
  %i.f = add nsw i32 %i.e, -1
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !102  ; 2 uses
  %.not.i = icmp ugt i64 %i.i, %i.g
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !104  ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4, !tbaa !13
  %.not35.i = icmp eq i8 %i.m, 0
  br i1 %.not35.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !14   ; 4 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !3
  %i.p = icmp slt i32 %i.o, -1
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = xor i32 %i.o, -1
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = icmp ult i64 %i.i, %i.r
  br i1 %i.s, label %.critedge.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit.i: ; preds = %bb.d
  %i.t = getelementptr [16 x i8], ptr %i.j, i64 %i.r ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.u, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.t, i64 -8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !16
  %i.v = call noundef zeroext i1 %.sroa.2.0.copyload.i.i(ptr %.sroa.0.0.copyload.i.i, i64 589843, i32 0, ptr noundef nonnull %i.b), !inline_history !18
  br i1 %i.v, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit.i
  %i.w = load i32, ptr %i.b, align 4, !tbaa !3    ; 3 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.speculated.i = call i32 @llvm.umax.i32(i32 %i.w, i32 -2147483647)
  %i.y = sub nsw i32 0, %.sroa.speculated.i       ; 2 uses
  store i32 %i.y, ptr %i.b, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.z = phi i32 [ %i.y, %bb.f ], [ %i.w, %bb.e ], [ %i.o, %bb.c ]
  %.033.i = phi i8 [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !14 ; 4 uses
  store i32 %i.ab, ptr %i.c, align 4, !tbaa !3
  %i.ac = icmp slt i32 %i.ab, -1
  br i1 %i.ac, label %bb.h, label %.critedge37.i

bb.h:                                             ; preds = %bb.g
  %i.ad = xor i32 %i.ab, -1
  %.sroa.2.0.copyload.i = load i64, ptr %i.h, align 8, !tbaa !81
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = icmp ult i64 %.sroa.2.0.copyload.i, %i.ae
  br i1 %i.af, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.i: ; preds = %bb.h
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.ag = getelementptr [16 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.ae ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -16
  %.sroa.0.0.copyload.i38.i = load ptr, ptr %i.ah, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i39.i = getelementptr i8, ptr %i.ag, i64 -8
  %.sroa.2.0.copyload.i40.i = load ptr, ptr %.sroa.2.0..sroa_idx.i39.i, align 8, !tbaa !16
  %i.ai = call noundef zeroext i1 %.sroa.2.0.copyload.i40.i(ptr %.sroa.0.0.copyload.i38.i, i64 589843, i32 0, ptr noundef nonnull %i.c), !inline_history !18
  br i1 %i.ai, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.i
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !3
  %.pre46.i = load i32, ptr %i.c, align 4, !tbaa !3
  br label %.critedge37.i

.critedge37.i:                                    ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i, %bb.g
  %i.aj = phi i32 [ %.pre46.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i ], [ %i.ab, %bb.g ]
  %i.ak = phi i32 [ %.pre.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i ], [ %i.z, %bb.g ]
  %i.al = load i8, ptr %i.l, align 4, !tbaa !13
  %.sink.i = or i8 %i.al, %.033.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit.thread

.critedge.i:                                      ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit.thread

bb.i:                                             ; preds = %bb.b, %.critedge37.i
  %.sroa.13.0 = phi i32 [ %i.aj, %.critedge37.i ], [ -1, %bb.b ] ; 2 uses
  %.sroa.101.0 = phi i32 [ %i.ak, %.critedge37.i ], [ -1, %bb.b ] ; 2 uses
  %.sroa.5.0 = phi i8 [ %.sink.i, %.critedge37.i ], [ 0, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.an = load i8, ptr %i.am, align 2, !tbaa !25  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr @.str.2, ptr %2, align 8, !tbaa !106
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.ao, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %.sroa.0.i.sroa.0.0.copyload = load <16 x i8>, ptr %i.k, align 8
  store ptr %2, ptr %4, align 8, !tbaa !109
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store <16 x i8> %.sroa.0.i.sroa.0.0.copyload, ptr %i.ar, align 8
  store i64 2, ptr %i.aq, align 8, !tbaa !81
  %i.as = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(8) %3, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushISoEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.2, i64 2, ptr nonnull %i.ar, i64 1)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  br i1 %i.as, label %_ZN4absl12lts_2025051219str_format_internallsERSoRKNS1_10StreamableE.exit.i, label %bb.j

bb.j:                                             ; preds = %.noexc.i
  %i.at = load ptr, ptr %3, align 8, !tbaa !82
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %3, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !84
  %i.az = or i32 %i.ay, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aw, i32 noundef %i.az)
          to label %_ZN4absl12lts_2025051219str_format_internallsERSoRKNS1_10StreamableE.exit.i unwind label %bb.n

_ZN4absl12lts_2025051219str_format_internallsERSoRKNS1_10StreamableE.exit.i: ; preds = %bb.j, %.noexc.i
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i: ; preds = %_ZN4absl12lts_2025051219str_format_internallsERSoRKNS1_10StreamableE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  invoke void @_ZN4absl12lts_2025051219str_format_internal13FlagsToStringB5cxx11ENS1_5FlagsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i8 noundef zeroext %.sroa.5.0)
          to label %_ZN4absl12lts_2025051219str_format_internal30FormatConversionSpecImplFriend13FlagsToStringB5cxx11ERKNS1_24FormatConversionSpecImplE.exit.i unwind label %bb.o

_ZN4absl12lts_2025051219str_format_internal30FormatConversionSpecImplFriend13FlagsToStringB5cxx11ERKNS1_24FormatConversionSpecImplE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i
  %i.bb = load ptr, ptr %5, align 8, !tbaa !69
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !33
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.bb, i64 noundef %i.bd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.p ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal30FormatConversionSpecImplFriend13FlagsToStringB5cxx11ERKNS1_24FormatConversionSpecImplE.exit.i
  %i.bf = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !15
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.bk = load i64, ptr %i.aq, align 8, !tbaa !81
  %i.bl = trunc i64 %i.bk to i1
  br i1 %i.bl, label %bb.k, label %_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bm = load ptr, ptr %i.ar, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !15
  %i.bp = shl i64 %i.bo, 4
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #17
  br label %_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit.i

_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit.i: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.bq = icmp sgt i32 %.sroa.101.0, -1
  br i1 %i.bq, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit.i
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.sroa.101.0)
          to label %bb.s unwind label %bb.m       ; 0 uses

bb.m:                                             ; preds = %bb.x, %bb.w, %bb.v, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i, %bb.t, %bb.l, %bb.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.n:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internallsERSoRKNS1_10StreamableE.exit.i, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i

bb.p:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal30FormatConversionSpecImplFriend13FlagsToStringB5cxx11ERKNS1_24FormatConversionSpecImplE.exit.i
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i: ; preds = %bb.p
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !15
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i, %bb.o
  %.pn.i = phi { ptr, i32 } [ %i.bu, %bb.o ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i ], [ %i.bv, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i, %bb.n
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i ], [ %i.bt, %bb.n ]
  %i.cb = load i64, ptr %i.aq, align 8, !tbaa !81
  %i.cc = trunc i64 %i.cb to i1
  br i1 %i.cc, label %bb.r, label %_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit31.i

bb.r:                                             ; preds = %bb.q
  %i.cd = load ptr, ptr %i.ar, align 8, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !15
  %i.cg = shl i64 %i.cf, 4
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #17
  br label %_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit31.i

_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit31.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.af

bb.s:                                             ; preds = %bb.l, %_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit.i
  %i.ch = icmp sgt i32 %.sroa.13.0, -1
  br i1 %i.ch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i: ; preds = %bb.t
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.sroa.13.0)
          to label %bb.u unwind label %bb.m       ; 0 uses

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33.i, %bb.s
  %i.ck = icmp ult i8 %i.an, 19
  br i1 %i.ck, label %switch.lookup, label %_ZN4absl12lts_2025051219str_format_internal26FormatConversionCharToCharENS0_20FormatConversionCharE.exit.i.i

switch.lookup:                                    ; preds = %bb.u
  %i.cl = zext nneg i8 %i.an to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117ConverterConsumerINS2_20SummarizingConverterEE10ConvertOneERKNS1_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE, i64 %i.cl
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN4absl12lts_2025051219str_format_internal26FormatConversionCharToCharENS0_20FormatConversionCharE.exit.i.i

_ZN4absl12lts_2025051219str_format_internal26FormatConversionCharToCharENS0_20FormatConversionCharE.exit.i.i: ; preds = %switch.lookup, %bb.u
  %i.cm = phi i8 [ 63, %bb.u ], [ %switch.load, %switch.lookup ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.cm, ptr %i.a, align 1, !tbaa !15
  %i.cn = load ptr, ptr %3, align 8, !tbaa !82
  %i.co = getelementptr i8, ptr %i.cn, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %3, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !110
  %.not.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal26FormatConversionCharToCharENS0_20FormatConversionCharE.exit.i.i
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.x unwind label %bb.m

bb.w:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal26FormatConversionCharToCharENS0_20FormatConversionCharE.exit.i.i
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef signext %i.cm)
          to label %bb.x unwind label %bb.m       ; 0 uses

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0.i3.i.i = phi ptr [ %i.ct, %bb.v ], [ %3, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.0.i3.i.i, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37.i unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37.i: ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.cw, ptr %6, align 8, !tbaa !30, !alias.scope !117
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.cx, align 8, !tbaa !33, !alias.scope !117
  store i8 0, ptr %i.cw, align 8, !tbaa !15, !alias.scope !117
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !118, !noalias !117 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.cz, null
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !noalias !117 ; 2 uses
  %i.dc = icmp ugt ptr %i.cz, %i.db
  %.08.i.i.i.i = select i1 %i.dc, ptr %i.cz, ptr %i.db ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i38.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i38.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37.i
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !120, !noalias !117 ; 2 uses
  %i.df = ptrtoint ptr %.08.i.i.i.i to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.de, i64 noundef %i.dh)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.aa, %bb.y
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %6, align 8, !tbaa !69, !alias.scope !117 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cw
  br i1 %i.dl, label %.body.i, label %.body.i.sink.split

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37.i
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.dm)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.z

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.aa, %bb.y
  %i.dn = load ptr, ptr %6, align 8, !tbaa !69    ; 2 uses
  %i.do = load i64, ptr %i.cx, align 8, !tbaa !33 ; 6 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !121 ; 7 uses
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_120SummarizingConverter6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !36
  %i.ds = add i64 %i.dr, %i.do
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !36
  %i.dt = getelementptr inbounds nuw i8, ptr %.val.i, i64 1056
  %i.du = getelementptr inbounds nuw i8, ptr %.val.i, i64 24 ; 4 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !39 ; 2 uses
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx
  %.not.i.i39.i = icmp ult i64 %i.do, %i.dy
  br i1 %.not.i.i39.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i, i64 32 ; 3 uses
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.dx, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !49
  %i.ee = load ptr, ptr %.val.i, align 8, !tbaa !50
  invoke void %i.ed(ptr noundef %i.ee, i64 %i.eb, ptr nonnull %i.dz)
          to label %.noexc40.i unwind label %bb.ae, !inline_history !124

.noexc40.i:                                       ; preds = %bb.ac
  store ptr %i.dz, ptr %i.du, align 8, !tbaa !39
  %i.ef = load ptr, ptr %i.ec, align 8, !tbaa !49
  %i.eg = load ptr, ptr %.val.i, align 8, !tbaa !50
  invoke void %i.ef(ptr noundef %i.eg, i64 %i.do, ptr %i.dn)
          to label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_120SummarizingConverter6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i unwind label %bb.ae, !inline_history !124

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dv, ptr align 1 %i.dn, i64 %i.do, i1 false)
  %i.eh = load ptr, ptr %i.du, align 8, !tbaa !39
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.do
  store ptr %i.ei, ptr %i.du, align 8, !tbaa !39
  br label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_120SummarizingConverter6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_120SummarizingConverter6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %bb.ad, %.noexc40.i, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.ej = load ptr, ptr %6, align 8, !tbaa !69    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.cw
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i: ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_120SummarizingConverter6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.el = load i64, ptr %i.cw, align 8, !tbaa !15
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i: ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_120SummarizingConverter6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.en = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.en, ptr %3, align 8, !tbaa !82
  %i.eo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ep = getelementptr i8, ptr %i.en, i64 -24
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = getelementptr inbounds i8, ptr %3, i64 %i.eq
  store ptr %i.eo, ptr %i.er, align 8, !tbaa !82
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.es, align 8, !tbaa !82
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !69 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_120SummarizingConverter10ConvertOneERKNS1_15BoundConversionESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !15
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #17
  br label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_120SummarizingConverter10ConvertOneERKNS1_15BoundConversionESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.ae:                                            ; preds = %.noexc40.i, %bb.ac
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %6, align 8, !tbaa !69    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.cw
  br i1 %i.fb, label %.body.i, label %.body.i.sink.split

.body.i.sink.split:                               ; preds = %bb.ae, %bb.z
  %.sink = phi ptr [ %i.dk, %bb.z ], [ %i.fa, %bb.ae ]
  %.pn20.i.ph = phi { ptr, i32 } [ %i.dj, %bb.z ], [ %i.ez, %bb.ae ]
  %i.fc = load i64, ptr %i.cw, align 8, !tbaa !15
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fd) #17
  br label %.body.i

.body.i:                                          ; preds = %.body.i.sink.split, %bb.ae, %bb.z
  %.pn20.i = phi { ptr, i32 } [ %i.dj, %bb.z ], [ %i.ez, %bb.ae ], [ %.pn20.i.ph, %.body.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.af

bb.af:                                            ; preds = %.body.i, %_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit31.i, %bb.m
  %.pn20.pn.i = phi { ptr, i32 } [ %.pn20.i, %.body.i ], [ %i.bs, %bb.m ], [ %.pn.pn.i, %_ZN4absl12lts_2025051219str_format_internal10StreamableD2Ev.exit31.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %.pn20.pn.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_120SummarizingConverter10ConvertOneERKNS1_15BoundConversionESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.es, align 8, !tbaa !82
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fe) #14
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ff) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit.thread

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit.thread: ; preds = %.critedge.i, %bb.a, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_120SummarizingConverter10ConvertOneERKNS1_15BoundConversionESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.2.i10 = phi i1 [ true, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_120SummarizingConverter10ConvertOneERKNS1_15BoundConversionESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ false, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i ], [ false, %bb.a ], [ false, %.critedge.i ]
  ret i1 %.2.i10
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN4absl12lts_2025051219str_format_internal13FlagsToStringB5cxx11ENS1_5FlagsE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i8 noundef zeroext) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

declare noundef ptr @_ZN4absl12lts_2025051219str_format_internal32ConsumeUnboundConversionNoInlineEPKcS3_PNS1_17UnboundConversionEPi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117ConverterConsumerINS2_16DefaultConverterEE10ConvertOneERKNS1_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(15) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !7
  %i.e = add nsw i32 %i.d, -1
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !102  ; 2 uses
  %.not.i = icmp ugt i64 %i.h, %i.f
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !13
  %.not35.i = icmp eq i8 %i.l, 0
  br i1 %.not35.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !14   ; 4 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !3
  %i.o = icmp slt i32 %i.n, -1
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = xor i32 %i.n, -1
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = icmp ult i64 %i.h, %i.q
  br i1 %i.r, label %.critedge.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit.i: ; preds = %bb.d
  %i.s = getelementptr [16 x i8], ptr %i.i, i64 %i.q ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.t, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.s, i64 -8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !16
  %i.u = call noundef zeroext i1 %.sroa.2.0.copyload.i.i(ptr %.sroa.0.0.copyload.i.i, i64 589843, i32 0, ptr noundef nonnull %i.a), !inline_history !18
  br i1 %i.u, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit.i
  %i.v = load i32, ptr %i.a, align 4, !tbaa !3    ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.speculated.i = call i32 @llvm.umax.i32(i32 %i.v, i32 -2147483647)
  %i.x = sub nsw i32 0, %.sroa.speculated.i       ; 2 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.y = phi i32 [ %i.x, %bb.f ], [ %i.v, %bb.e ], [ %i.n, %bb.c ]
  %.033.i = phi i8 [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !14  ; 4 uses
  store i32 %i.aa, ptr %i.b, align 4, !tbaa !3
  %i.ab = icmp slt i32 %i.aa, -1
  br i1 %i.ab, label %bb.h, label %.critedge37.i

bb.h:                                             ; preds = %bb.g
  %i.ac = xor i32 %i.aa, -1
  %.sroa.2.0.copyload.i = load i64, ptr %i.g, align 8, !tbaa !81
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = icmp ult i64 %.sroa.2.0.copyload.i, %i.ad
  br i1 %i.ae, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.i: ; preds = %bb.h
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.af = getelementptr [16 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.ad ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -16
  %.sroa.0.0.copyload.i38.i = load ptr, ptr %i.ag, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i39.i = getelementptr i8, ptr %i.af, i64 -8
  %.sroa.2.0.copyload.i40.i = load ptr, ptr %.sroa.2.0..sroa_idx.i39.i, align 8, !tbaa !16
  %i.ah = call noundef zeroext i1 %.sroa.2.0.copyload.i40.i(ptr %.sroa.0.0.copyload.i38.i, i64 589843, i32 0, ptr noundef nonnull %i.b), !inline_history !18
  br i1 %i.ah, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.i
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !3
  %.pre46.i = load i32, ptr %i.b, align 4, !tbaa !3
  br label %.critedge37.i

.critedge37.i:                                    ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i, %bb.g
  %i.ai = phi i32 [ %.pre46.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i ], [ %i.aa, %bb.g ]
  %i.aj = phi i32 [ %.pre.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42._crit_edge.i ], [ %i.y, %bb.g ]
  %.sroa.0.4.insert.ext = zext i32 %i.aj to i64
  %.sroa.0.4.insert.shift = shl nuw i64 %.sroa.0.4.insert.ext, 32
  %i.ak = load i8, ptr %i.k, align 4, !tbaa !13
  %.sink.i = or i8 %i.ak, %.033.i
  %.sroa.0.1.insert.ext = zext i8 %.sink.i to i64
  %.sroa.0.1.insert.shift = shl nuw nsw i64 %.sroa.0.1.insert.ext, 8
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.1.insert.shift, %.sroa.0.4.insert.shift
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.am = load i8, ptr %i.al, align 1, !tbaa !23
  %.sroa.0.2.insert.ext = zext i8 %i.am to i64
  %.sroa.0.2.insert.shift = shl nuw nsw i64 %.sroa.0.2.insert.ext, 16
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.4.insert.insert, %.sroa.0.2.insert.shift
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit.thread

.critedge.i:                                      ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit.thread

bb.i:                                             ; preds = %bb.b, %.critedge37.i
  %.sroa.11.0 = phi i32 [ %i.ai, %.critedge37.i ], [ -1, %bb.b ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.1.insert.insert, %.critedge37.i ], [ -4294377472, %bb.b ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !25
  %.sroa.0.0.insert.ext = zext i8 %i.ao to i64
  %.sroa.0.0.insert.insert3 = or i64 %.sroa.0.0, %.sroa.0.0.insert.ext
  %.val = load ptr, ptr %0, align 8, !tbaa !125
  %.sroa.03.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !15
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.24.0.copyload.i = load ptr, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !16
  %i.ap = call noundef zeroext i1 %.sroa.24.0.copyload.i(ptr %.sroa.03.0.copyload.i, i64 %.sroa.0.0.insert.insert3, i32 %.sroa.11.0, ptr noundef %.val), !inline_history !127
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit.thread

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110ArgContext4BindEPKNS1_17UnboundConversionEPNS1_15BoundConversionE.exit.thread: ; preds = %.critedge.i, %bb.a, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i, %bb.i
  %.0 = phi i1 [ %i.ap, %bb.i ], [ false, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116BindFromPositionEiPiNS0_4SpanIKNS1_13FormatArgImplEEE.exit42.thread.i ], [ false, %bb.a ], [ false, %.critedge.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushISoEEvPvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %0, i64 %1, ptr %2) #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %2, i64 noundef %1) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS1_11FILERawSinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %0, i64 %1, ptr %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN4absl12lts_2025051219str_format_internal11FILERawSink5WriteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %1, ptr %2)
  ret void
}

declare void @_ZN4absl12lts_2025051219str_format_internal11FILERawSink5WriteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24), i64, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS1_13BufferRawSinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %0, i64 %1, ptr %2) #0 comdat align 2 {
bb.a:
  tail call void @_ZN4absl12lts_2025051219str_format_internal13BufferRawSink5WriteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %1, ptr %2)
  ret void
}

declare void @_ZN4absl12lts_2025051219str_format_internal13BufferRawSink5WriteESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24), i64, ptr) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }
attributes #19 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN4absl12lts_2025051219str_format_internal17UnboundConversionE", !4, i64 0, !9, i64 4, !9, i64 8, !10, i64 12, !11, i64 13, !12, i64 14}
!9 = !{!"_ZTSN4absl12lts_2025051219str_format_internal17UnboundConversion10InputValueE", !4, i64 0}
!10 = !{!"_ZTSN4absl12lts_2025051219str_format_internal5FlagsE", !5, i64 0}
!11 = !{!"_ZTSN4absl12lts_202505129LengthModE", !5, i64 0}
!12 = !{!"_ZTSN4absl12lts_2025051220FormatConversionCharE", !5, i64 0}
!13 = !{!8, !10, i64 12}
!14 = !{!9, !4, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !5, i64 0}
!18 = distinct !{null, null, null}
!19 = !{!20, !4, i64 4}
!20 = !{!"_ZTSN4absl12lts_2025051219str_format_internal24FormatConversionSpecImplE", !12, i64 0, !10, i64 1, !11, i64 2, !4, i64 4, !4, i64 8}
!21 = !{!20, !4, i64 8}
!22 = !{!20, !10, i64 1}
!23 = !{!8, !11, i64 13}
!24 = !{!20, !11, i64 2}
!25 = !{!8, !12, i64 14}
!26 = !{!20, !12, i64 0}
!27 = !{!28, !29, i64 16}
!28 = !{!"_ZTSN4absl12lts_2025051219str_format_internal15BoundConversionE", !20, i64 0, !29, i64 16}
!29 = !{!"p1 _ZTSN4absl12lts_2025051219str_format_internal13FormatArgImplE", !17, i64 0}
!30 = !{!31, !32, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !32, i64 0}
!32 = !{!"p1 omnipotent char", !17, i64 0}
!33 = !{!34, !35, i64 8}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0, !35, i64 8, !5, i64 16}
!35 = !{!"long", !5, i64 0}
!36 = !{!37, !35, i64 16}
!37 = !{!"_ZTSN4absl12lts_2025051219str_format_internal14FormatSinkImplE", !38, i64 0, !35, i64 16, !32, i64 24, !5, i64 32}
!38 = !{!"_ZTSN4absl12lts_2025051219str_format_internal17FormatRawSinkImplE", !17, i64 0, !17, i64 8}
!39 = !{!37, !32, i64 24}
!40 = !{!32, !32, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 _ZTSN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemE", !17, i64 0}
!43 = !{!44, !35, i64 8}
!44 = !{!"_ZTSN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemE", !45, i64 0, !35, i64 8, !8, i64 16}
!45 = !{!"bool", !5, i64 0}
!46 = !{!44, !45, i64 0}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!38, !17, i64 8}
!50 = !{!38, !17, i64 0}
!51 = distinct !{null}
!52 = !{!53, !45, i64 0}
!53 = !{!"_ZTSN4absl12lts_2025051219str_format_internal16ParsedFormatBaseE", !45, i64 0, !54, i64 8, !60, i64 16}
!54 = !{!"_ZTSSt10unique_ptrIA_cSt14default_deleteIS0_EE", !55, i64 0}
!55 = !{!"_ZTSSt15__uniq_ptr_dataIcSt14default_deleteIA_cELb1ELb1EE", !56, i64 0}
!56 = !{!"_ZTSSt15__uniq_ptr_implIcSt14default_deleteIA_cEE", !57, i64 0}
!57 = !{!"_ZTSSt5tupleIJPcSt14default_deleteIA_cEEE", !58, i64 0}
!58 = !{!"_ZTSSt11_Tuple_implILm0EJPcSt14default_deleteIA_cEEE", !59, i64 0}
!59 = !{!"_ZTSSt10_Head_baseILm0EPcLb0EE", !32, i64 0}
!60 = !{!"_ZTSSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE", !61, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_Vector_implE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!64 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!65 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = distinct !{null}
!69 = !{!34, !32, i64 0}
!70 = distinct !{null}
!71 = distinct !{!71, !67}
!72 = !{!73, !74, i64 0}
!73 = !{!"_ZTSN4absl12lts_2025051219str_format_internal10StreamableE", !74, i64 0, !75, i64 8}
!74 = !{!"p1 _ZTSN4absl12lts_2025051219str_format_internal21UntypedFormatSpecImplE", !17, i64 0}
!75 = !{!"_ZTSN4absl12lts_2025051213InlinedVectorINS0_19str_format_internal13FormatArgImplELm4ESaIS3_EEE", !76, i64 0}
!76 = !{!"_ZTSN4absl12lts_2025051223inlined_vector_internal7StorageINS0_19str_format_internal13FormatArgImplELm4ESaIS4_EEE", !77, i64 0, !5, i64 8}
!77 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJSaINS0_19str_format_internal13FormatArgImplEEmEEE", !78, i64 0}
!78 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJSaINS0_19str_format_internal13FormatArgImplEEmEEESt16integer_sequenceImJLm0ELm1EEELb1EEE", !79, i64 0}
!79 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageImLm1ELb0EEE", !35, i64 0}
!80 = !{i64 8}
!81 = !{!35, !35, i64 0}
!82 = !{!83, !83, i64 0}
!83 = !{!"vtable pointer", !6, i64 0}
!84 = !{!85, !87, i64 32}
!85 = !{!"_ZTSSt8ios_base", !35, i64 8, !35, i64 16, !86, i64 24, !87, i64 28, !87, i64 32, !88, i64 40, !89, i64 48, !5, i64 64, !4, i64 192, !90, i64 200, !91, i64 208}
!86 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!87 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!88 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!89 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !35, i64 8}
!90 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!91 = !{!"_ZTSSt6locale", !92, i64 0}
!92 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!93 = !{!94, !95, i64 0}
!94 = !{!"_ZTSN4absl12lts_2025051219str_format_internal11FILERawSinkE", !95, i64 0, !4, i64 8, !35, i64 16}
!95 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!96 = !{!94, !4, i64 8}
!97 = !{!94, !35, i64 16}
!98 = !{!99, !32, i64 0}
!99 = !{!"_ZTSN4absl12lts_2025051219str_format_internal13BufferRawSinkE", !32, i64 0, !35, i64 8, !35, i64 16}
!100 = !{!99, !35, i64 8}
!101 = !{!99, !35, i64 16}
!102 = !{!103, !35, i64 8}
!103 = !{!"_ZTSN4absl12lts_202505124SpanIKNS0_19str_format_internal13FormatArgImplEEE", !29, i64 0, !35, i64 8}
!104 = !{!103, !29, i64 0}
!105 = !{!29, !29, i64 0}
!106 = !{!107, !17, i64 0}
!107 = !{!"_ZTSN4absl12lts_2025051219str_format_internal21UntypedFormatSpecImplE", !17, i64 0, !35, i64 8}
!108 = !{!107, !35, i64 8}
!109 = !{!74, !74, i64 0}
!110 = !{!85, !35, i64 16}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!113 = distinct !{!113, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!116 = distinct !{!116, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!117 = !{!115, !112}
!118 = !{!119, !32, i64 40}
!119 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !91, i64 56}
!120 = !{!119, !32, i64 32}
!121 = !{!122, !123, i64 0}
!122 = !{!"_ZTSN4absl12lts_2025051219str_format_internal12_GLOBAL__N_120SummarizingConverterE", !123, i64 0}
!123 = !{!"p1 _ZTSN4absl12lts_2025051219str_format_internal14FormatSinkImplE", !17, i64 0}
!124 = distinct !{null}
!125 = !{!126, !123, i64 0}
!126 = !{!"_ZTSN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116DefaultConverterE", !123, i64 0}
!127 = distinct !{null, null}
end_hunk_1
