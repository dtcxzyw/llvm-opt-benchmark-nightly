Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImfCompositeDeepScanLine?download=true
inline.NumInlined: 2411
inline.NumDeleted: 1485
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.59" }
%"class.std::__1::__compressed_pair.59" = type { %"struct.std::__1::__compressed_pair_elem.60" }
%"struct.std::__1::__compressed_pair_elem.60" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.61, i64, ptr }
%struct.anon.61 = type { i64 }
%"struct.Imf_3_4::Slice" = type <{ i32, [4 x i8], ptr, i64, i64, i32, i32, double, i8, i8, [6 x i8] }>
%"struct.Imf_3_4::DeepSlice" = type { %"struct.Imf_3_4::Slice.base", i32 }
%"struct.Imf_3_4::Slice.base" = type <{ i32, [4 x i8], ptr, i64, i64, i32, i32, double, i8, i8 }>
%"class.std::__1::basic_stringstream" = type { %"class.std::__1::basic_iostream.base", %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_iostream.base" = type { %"class.std::__1::basic_istream.base", %"class.std::__1::basic_ostream.base" }
%"class.std::__1::basic_istream.base" = type { ptr, i64 }
%"class.std::__1::basic_ostream.base" = type { ptr }
%"class.std::__1::basic_stringbuf" = type <{ %"class.std::__1::basic_streambuf", %"class.std::__1::basic_string", ptr, i32, [4 x i8] }>
%"class.std::__1::basic_streambuf" = type { ptr, %"class.std::__1::locale", ptr, ptr, ptr, ptr, ptr, ptr }
%"class.std::__1::locale" = type { ptr }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", ptr, i32 }>
%"class.std::__1::ios_base" = type { ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, i64, ptr, i64, i64 }
%"struct.std::__1::__exception_guard_exceptions.217" = type <{ %"class.std::__1::vector<std::__1::vector<float>>::__destroy_vector", i8, [7 x i8] }>
%"class.std::__1::vector<std::__1::vector<float>>::__destroy_vector" = type { ptr }
%"struct.std::__1::__exception_guard_exceptions.209" = type <{ %"class.std::__1::vector<std::__1::vector<std::__1::vector<float *>>>::__destroy_vector", i8, [7 x i8] }>
%"class.std::__1::vector<std::__1::vector<std::__1::vector<float *>>>::__destroy_vector" = type { ptr }
%"struct.std::__1::__exception_guard_exceptions.206" = type <{ %"class.std::__1::vector<std::__1::vector<unsigned int>>::__destroy_vector", i8, [7 x i8] }>
%"class.std::__1::vector<std::__1::vector<unsigned int>>::__destroy_vector" = type { ptr }
%"class.std::__1::vector.99" = type { ptr, ptr, %"class.std::__1::__compressed_pair.100" }
%"class.std::__1::__compressed_pair.100" = type { %"struct.std::__1::__compressed_pair_elem.101" }
%"struct.std::__1::__compressed_pair_elem.101" = type { ptr }
%"class.std::__1::vector.106" = type { ptr, ptr, %"class.std::__1::__compressed_pair.107" }
%"class.std::__1::__compressed_pair.107" = type { %"struct.std::__1::__compressed_pair_elem.108" }
%"struct.std::__1::__compressed_pair_elem.108" = type { ptr }
%"class.std::__1::vector.113" = type { ptr, ptr, %"class.std::__1::__compressed_pair.114" }
%"class.std::__1::__compressed_pair.114" = type { %"struct.std::__1::__compressed_pair_elem.115" }
%"struct.std::__1::__compressed_pair_elem.115" = type { ptr }
%"class.std::__1::vector.73" = type { ptr, ptr, %"class.std::__1::__compressed_pair.74" }
%"class.std::__1::__compressed_pair.74" = type { %"struct.std::__1::__compressed_pair_elem.75" }
%"struct.std::__1::__compressed_pair_elem.75" = type { ptr }
%"class.std::__1::vector.17" = type { ptr, ptr, %"class.std::__1::__compressed_pair.18" }
%"class.std::__1::__compressed_pair.18" = type { %"struct.std::__1::__compressed_pair_elem.19" }
%"struct.std::__1::__compressed_pair_elem.19" = type { ptr }
%"class.std::__1::vector.134" = type { ptr, ptr, %"class.std::__1::__compressed_pair.135" }
%"class.std::__1::__compressed_pair.135" = type { %"struct.std::__1::__compressed_pair_elem.136" }
%"struct.std::__1::__compressed_pair_elem.136" = type { ptr }
%"class.IlmThread_3_4::TaskGroup" = type { ptr }
%"struct.std::__1::__exception_guard_exceptions.200" = type <{ %"class.std::__1::vector<Imf_3_4::DeepFrameBuffer>::__destroy_vector", i8, [7 x i8] }>
%"class.std::__1::vector<Imf_3_4::DeepFrameBuffer>::__destroy_vector" = type { ptr }
%"struct.std::__1::__split_buffer.179" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair.180" }
%"class.std::__1::__compressed_pair.180" = type { %"struct.std::__1::__compressed_pair_elem.33", %"struct.std::__1::__compressed_pair_elem.181" }
%"struct.std::__1::__compressed_pair_elem.33" = type { ptr }
%"struct.std::__1::__compressed_pair_elem.181" = type { ptr }
%"class.std::__1::vector.127" = type { ptr, ptr, %"class.std::__1::__compressed_pair.128" }
%"class.std::__1::__compressed_pair.128" = type { %"struct.std::__1::__compressed_pair_elem.129" }
%"struct.std::__1::__compressed_pair_elem.129" = type { ptr }
%"class.std::__1::vector.230" = type { ptr, ptr, %"class.std::__1::__compressed_pair.231" }
%"class.std::__1::__compressed_pair.231" = type { %"struct.std::__1::__compressed_pair_elem.232" }
%"struct.std::__1::__compressed_pair_elem.232" = type { ptr }
%"class.Imf_3_4::DeepCompositing" = type { ptr }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, ptr }

$_ZN7Imf_3_421CompositeDeepScanLine4DataD2Ev = comdat any

$_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev = comdat any

$_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = comdat any

$_ZNSt3__16vectorIN7Imf_3_415DeepFrameBufferENS_9allocatorIS2_EEEC2Em = comdat any

$_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEED2B8ne180100Ev = comdat any

$_ZNSt3__16vectorINS0_INS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEEENS2_IS6_EEED2B8ne180100Ev = comdat any

$_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEED2B8ne180100Ev = comdat any

$_ZNSt3__16vectorIN7Imf_3_415DeepFrameBufferENS_9allocatorIS2_EEED2B8ne180100Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE7destroyEPNS_11__tree_nodeIS5_PvEE = comdat any

$_ZNKSt3__16vectorIPN7Imf_3_421DeepScanLineInputPartENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__120__throw_length_errorB8ne180100EPKc = comdat any

$_ZNSt12length_errorC2B8ne180100EPKc = comdat any

$_ZSt28__throw_bad_array_new_lengthB8ne180100v = comdat any

$_ZNKSt3__16vectorIPN7Imf_3_421DeepScanLineInputFileENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__16vectorINS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEE8__appendEm = comdat any

$_ZNKSt3__16vectorINS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEm = comdat any

$_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__16vectorIPfNS_9allocatorIS1_EEE8__appendEm = comdat any

$_ZNKSt3__16vectorIPfNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8__appendEm = comdat any

$_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev = comdat any

$_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKcm = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKc = comdat any

$_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21__push_back_slow_pathIRKS6_EEPS6_OT_ = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm = comdat any

$_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE14__assign_multiINS_21__tree_const_iteratorIS5_PNS_11__tree_nodeIS5_PvEElEEEEvT_SK_ = comdat any

$_ZNSt3__127__tree_balance_after_insertB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_S5_ = comdat any

$_ZNSt3__128__exception_guard_exceptionsINS_6vectorIN7Imf_3_415DeepFrameBufferENS_9allocatorIS3_EEE16__destroy_vectorEED2B8ne180100Ev = comdat any

$_ZNKSt3__16vectorIN7Imf_3_415DeepFrameBufferENS_9allocatorIS2_EEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_9DeepSliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE7destroyEPNS_11__tree_nodeIS5_PvEE = comdat any

$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS1_IjNS_9allocatorIjEEEENS2_IS4_EEE16__destroy_vectorEED2B8ne180100Ev = comdat any

$_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS1_INS1_IPfNS_9allocatorIS2_EEEENS3_IS5_EEEENS3_IS7_EEE16__destroy_vectorEED2B8ne180100Ev = comdat any

$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS1_IfNS_9allocatorIfEEEENS2_IS4_EEE16__destroy_vectorEED2B8ne180100Ev = comdat any

$_ZNKSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__16vectorIfNS_9allocatorIfEEE8__appendEm = comdat any

$_ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNKSt3__16vectorIPKcNS_9allocatorIS2_EEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNKSt3__16vectorIPKfNS_9allocatorIS2_EEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = comdat any

$_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = comdat any

@_ZTVN7Imf_3_421CompositeDeepScanLineE = constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN7Imf_3_421CompositeDeepScanLineE, ptr @_ZN7Imf_3_421CompositeDeepScanLineD1Ev, ptr @_ZN7Imf_3_421CompositeDeepScanLineD0Ev] }, align 8
@.str = private unnamed_addr constant [6 x i8] c"ZBack\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"Deep data provided to CompositeDeepScanLine is missing a Z channel\00", align 1
@_ZTIN7Iex_3_46ArgExcE = external constant ptr
@.str.4 = private unnamed_addr constant [72 x i8] c"Deep data provided to CompositeDeepScanLine is missing an alpha channel\00", align 1
@.str.5 = private unnamed_addr constant [102 x i8] c"Deep data provided to CompositeDeepScanLine has a different displayWindow to previously provided data\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"X and/or y subsampling factors of \22\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"\22 channel in framebuffer are not 1\00", align 1
@_ZN7Imf_3_412_GLOBAL__N_118maximumSampleCountE = internal unnamed_addr global i64 0, align 8
@.str.8 = private unnamed_addr constant [126 x i8] c"Cannot composite scanline: total sample count on scanline exceeds limit set by CompositeDeepScanLine::setMaximumSampleCount()\00", align 1
@_ZTIN7Imf_3_421CompositeDeepScanLineE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7Imf_3_421CompositeDeepScanLineE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7Imf_3_421CompositeDeepScanLineE = constant [34 x i8] c"N7Imf_3_421CompositeDeepScanLineE\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@_ZTISt20bad_array_new_length = external constant ptr
@.str.10 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [5 x ptr], [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [16 x ptr] }, align 8
@_ZTVN7Imf_3_412_GLOBAL__N_117LineCompositeTaskE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7Imf_3_412_GLOBAL__N_117LineCompositeTaskE, ptr @_ZN13IlmThread_3_44TaskD2Ev, ptr @_ZN7Imf_3_412_GLOBAL__N_117LineCompositeTaskD0Ev, ptr @_ZN7Imf_3_412_GLOBAL__N_117LineCompositeTask7executeEv] }, align 8
@_ZTIN7Imf_3_412_GLOBAL__N_117LineCompositeTaskE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7Imf_3_412_GLOBAL__N_117LineCompositeTaskE, ptr @_ZTIN13IlmThread_3_44TaskE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN7Imf_3_412_GLOBAL__N_117LineCompositeTaskE = internal constant [44 x i8] c"N7Imf_3_412_GLOBAL__N_117LineCompositeTaskE\00", align 1
@_ZTIN13IlmThread_3_44TaskE = external constant ptr
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8

@_ZN7Imf_3_421CompositeDeepScanLine4DataC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_421CompositeDeepScanLine4DataC2Ev
@_ZN7Imf_3_421CompositeDeepScanLineC1Ev = unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_421CompositeDeepScanLineC2Ev
@_ZN7Imf_3_421CompositeDeepScanLineD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_421CompositeDeepScanLineD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN7Imf_3_421CompositeDeepScanLine4DataC2Ev(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 48), (56, 72)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.c, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  store <4 x i32> <i32 2147483647, i32 2147483647, i32 -2147483648, i32 -2147483648>, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_421CompositeDeepScanLineC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7Imf_3_421CompositeDeepScanLineE, i64 16), ptr %0, align 8, !tbaa !53
  %i.a = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #25 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i8 0, i64 48, i1 false)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  store <4 x i32> <i32 2147483647, i32 2147483647, i32 -2147483648, i32 -2147483648>, ptr %i.f, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i8 0, i64 56, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.h, align 8, !tbaa !56
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7Imf_3_421CompositeDeepScanLineD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7Imf_3_421CompositeDeepScanLineE, i64 16), ptr %0, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7Imf_3_421CompositeDeepScanLine4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.b) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 200) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7Imf_3_421CompositeDeepScanLine4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.b, ptr %i.c, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.h) #27
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 5 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61   ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.m, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -24 ; 4 uses
  %i.n = load i8, ptr %i.m, align 8
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.r = load i64, ptr %i.m, align 8
  %i.s = and i64 %i.r, -2
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.s) #27
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.m
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %i.i, align 8, !tbaa !60
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.j, %bb.c ] ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.w = ptrtoint ptr %i.v to i64
end_hunk_0
begin_hunk_1_@_ZN7Imf_3_421CompositeDeepScanLine4Data21handleDeepFrameBufferERNS_15DeepFrameBufferERNSt3__16vectorIjNS4_9allocatorIjEEEERNS5_INS5_IPfNS6_ISA_EEEENS6_ISC_EEEERKNS_6HeaderEii:bb.a
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %bb.t

._crit_edge:                                      ; preds = %_ZN7Imf_3_411FrameBuffer13ConstIteratorppEi.exit, %_ZNSt3__16vectorIPfNS_9allocatorIS1_EEE6resizeEm.exit46
  ret void

bb.t:                                             ; preds = %.lr.ph, %_ZN7Imf_3_411FrameBuffer13ConstIteratorppEi.exit
  %.059 = phi i64 [ 0, %.lr.ph ], [ %i.fb, %_ZN7Imf_3_411FrameBuffer13ConstIteratorppEi.exit ] ; 2 uses
  %.sroa.052.058 = phi ptr [ %i.dx, %.lr.ph ], [ %.06.i.i.i.i, %_ZN7Imf_3_411FrameBuffer13ConstIteratorppEi.exit ] ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !57
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.059
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !51 ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, 2
  br i1 %i.ed, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.ee = zext nneg i32 %i.ec to i64              ; 2 uses
  %i.ef = load ptr, ptr %3, align 8, !tbaa !96    ; 3 uses
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %i.ee ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !102
  %i.ej = load ptr, ptr %i.eg, align 8, !tbaa !101 ; 2 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 3                 ; 3 uses
  %i.eo = icmp ult i64 %i.en, %i.r
  br i1 %i.eo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ep = sub nuw nsw i64 %i.r, %i.en
  call void @_ZNSt3__16vectorIPfNS_9allocatorIS1_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 noundef %i.ep)
  %.pre68 = load ptr, ptr %3, align 8, !tbaa !96
  br label %_ZNSt3__16vectorIPfNS_9allocatorIS1_EEE6resizeEm.exit48

bb.w:                                             ; preds = %bb.u
  %i.eq = icmp ugt i64 %i.en, %i.r
  br i1 %i.eq, label %bb.x, label %_ZNSt3__16vectorIPfNS_9allocatorIS1_EEE6resizeEm.exit48

bb.x:                                             ; preds = %bb.w
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.r
  store ptr %i.er, ptr %i.eh, align 8, !tbaa !102
  br label %_ZNSt3__16vectorIPfNS_9allocatorIS1_EEE6resizeEm.exit48

_ZNSt3__16vectorIPfNS_9allocatorIS1_EEE6resizeEm.exit48: ; preds = %bb.v, %bb.w, %bb.x
  %i.es = phi ptr [ %.pre68, %bb.v ], [ %i.ef, %bb.w ], [ %i.ef, %bb.x ]
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.052.058, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %i.ee
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !101
  %i.ew = load i32, ptr %i.a, align 8, !tbaa !109
  %i.ex = sext i32 %i.ew to i64
  %i.ey = sub nsw i64 0, %i.ex
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.ey
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.bl
  call void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %11, i32 noundef 2, ptr noundef nonnull %i.fa, i64 noundef 8, i64 noundef %i.cg, i64 noundef 4, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.et, ptr noundef nonnull align 8 dereferenceable(56) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt3__16vectorIPfNS_9allocatorIS1_EEE6resizeEm.exit48, %bb.t
  %i.fb = add i64 %.059, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.052.058, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !85 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i, label %.preheader.i.i.i.i, label %.preheader8.i.i.i.i

.preheader8.i.i.i.i:                              ; preds = %bb.y, %.preheader8.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.fe, %.preheader8.i.i.i.i ], [ %i.fd, %bb.y ] ; 2 uses
  %i.fe = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i.i, label %_ZN7Imf_3_411FrameBuffer13ConstIteratorppEi.exit, label %.preheader8.i.i.i.i, !llvm.loop !0

.preheader.i.i.i.i:                               ; preds = %bb.y, %.preheader.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.fg, %.preheader.i.i.i.i ], [ %.sroa.052.058, %bb.y ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !86 ; 3 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !74
  %i.fi = icmp eq ptr %.0.i.i.i.i, %i.fh
  br i1 %i.fi, label %_ZN7Imf_3_411FrameBuffer13ConstIteratorppEi.exit, label %.preheader.i.i.i.i, !llvm.loop !1

_ZN7Imf_3_411FrameBuffer13ConstIteratorppEi.exit: ; preds = %.preheader8.i.i.i.i, %.preheader.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.fg, %.preheader.i.i.i.i ], [ %.0.i.i.i.i.i, %.preheader8.i.i.i.i ] ; 2 uses
  %i.fj = call ptr @_ZN7Imf_3_411FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dw)
  %.not = icmp eq ptr %.06.i.i.i.i, %i.fj
  br i1 %.not, label %._crit_edge, label %bb.t, !llvm.loop !218
}

declare void @_ZN7Imf_3_415DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(50)) local_unnamed_addr #6

declare void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50), i32 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, double noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #6

declare void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

declare void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, double noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #6

declare ptr @_ZN7Imf_3_411FrameBuffer5beginEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare ptr @_ZN7Imf_3_411FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7Imf_3_421CompositeDeepScanLine14setCompositingEPNS_15DeepCompositingE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %1, ptr %i.c, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_421CompositeDeepScanLine10dataWindowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_421CompositeDeepScanLine14setFrameBufferERKNS_11FrameBufferE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::basic_stringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__1::basic_string", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61   ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = sdiv exact i64 %i.i, 24                  ; 2 uses
  %i.k = icmp ult i64 %i.j, 3
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw nsw i64 3, %i.j
  tail call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.l)
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %.not105 = icmp eq i64 %i.i, 72
  br i1 %.not105, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.m, %i.e
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endB8ne180100EPS6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.n, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i ], [ %i.e, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -24 ; 4 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = trunc i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.s = load i64, ptr %i.n, align 8
  %i.t = and i64 %i.s, -2
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.t) #27
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endB8ne180100EPS6_.exit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endB8ne180100EPS6_.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i, %bb.d
  store ptr %i.m, ptr %i.d, align 8, !tbaa !61
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6resizeEm.exit

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6resizeEm.exit: ; preds = %bb.b, %bb.c, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endB8ne180100EPS6_.exit.i
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !60   ; 5 uses
  %i.x = load i8, ptr %i.w, align 8
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6resizeEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 1, ptr %i.z, align 8, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i

bb.g:                                             ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6resizeEm.exit
  store i8 2, ptr %i.w, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i: ; preds = %bb.f, %bb.g
  %i.ad = phi ptr [ %i.ab, %bb.f ], [ %i.ac, %bb.g ] ; 2 uses
  store i8 90, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i8 0, ptr %i.ae, align 1, !tbaa !62
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !50, !range !110, !noundef !111
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = select i1 %i.ai, ptr @.str, ptr @.str.1
  %7 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKc(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %i.aj) ; 0 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 152
  %8 = load ptr, ptr %i.al, align 8, !tbaa !60    ; 4 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.am = load i8, ptr %9, align 8
  %i.an = trunc i8 %i.am to i1
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i64 1, ptr %i.ao, align 8, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !62
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i17

bb.i:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i
  store i8 2, ptr %9, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 49
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i17

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i17: ; preds = %bb.h, %bb.i
  %i.as = phi ptr [ %i.aq, %bb.h ], [ %i.ar, %bb.i ] ; 2 uses
  store i8 65, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 0, ptr %i.at, align 1, !tbaa !62
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 184 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !58
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !57 ; 2 uses
  %.not106 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not106, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i17
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !58
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i17, %bb.j
  %i.az = tail call ptr @_ZNK7Imf_3_411FrameBuffer5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.ba = tail call ptr @_ZNK7Imf_3_411FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %.not107162 = icmp eq ptr %i.az, %i.ba
  br i1 %.not107162, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 4 uses
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN7Imf_3_411FrameBuffer13ConstIteratorppEi.exit, %_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm.exit
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.bf, %1
  br i1 %.not.i.i.i19, label %_ZN7Imf_3_411FrameBufferaSERKS0_.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bg = load ptr, ptr %1, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE14__assign_multiINS_21__tree_const_iteratorIS5_PNS_11__tree_nodeIS5_PvEElEEEEvT_SK_(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr %i.bg, ptr nonnull %i.bh)
  br label %_ZN7Imf_3_411FrameBufferaSERKS0_.exit

_ZN7Imf_3_411FrameBufferaSERKS0_.exit:            ; preds = %._crit_edge, %bb.k
  ret void

bb.l:                                             ; preds = %.lr.ph, %_ZN7Imf_3_411FrameBuffer13ConstIteratorppEi.exit
  %.sroa.097.0163 = phi ptr [ %i.az, %.lr.ph ], [ %.06.i.i.i.i, %_ZN7Imf_3_411FrameBuffer13ConstIteratorppEi.exit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.097.0163, i64 320
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !261
  %.not = icmp eq i32 %i.bj, 1
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.097.0163, i64 324
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !262
  %.not8 = icmp eq i32 %i.bl, 1
  br i1 %.not8, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str.6, i64 noundef 35)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.097.0163, i64 32 ; 2 uses
  %i.bp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bo) #26
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull %i.bo, i64 noundef %i.bp)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit20 unwind label %bb.q

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit20: ; preds = %bb.o
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.7, i64 noundef 34)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit21 unwind label %bb.q ; 0 uses

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit21: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit20
  %i.bs = call ptr @__cxa_allocate_exception(i64 56) #26 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt3__118basic_stringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.bs, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit21
  invoke void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #28
          to label %bb.bj unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit20, %bb.o, %bb.n, %bb.p
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit21
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bs) #26
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn10 = phi { ptr, i32 } [ %i.bt, %bb.q ], [ %i.bu, %bb.r ]
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.bi

bb.t:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.097.0163, i64 32 ; 2 uses
  %i.bw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bv) #26 ; 8 uses
  %i.bx = icmp ugt i64 %i.bw, -9
  br i1 %i.bx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.by = icmp ult i64 %i.bw, 23
  br i1 %i.by, label %bb.w, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.v
  %i.bz = or i64 %i.bw, 7                         ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 23
  %i.cb = add nuw i64 %i.bz, 1
  %i.cc = select i1 %i.ca, i64 25, i64 %i.cb      ; 2 uses
  %i.cd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #25 ; 2 uses
  store ptr %i.cd, ptr %i.bb, align 8, !tbaa !62
  %i.ce = or i64 %i.cc, 1
  store i64 %i.ce, ptr %3, align 8
  store i64 %i.bw, ptr %i.bc, align 8, !tbaa !62
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cf = trunc nuw nsw i64 %i.bw to i8
  %i.cg = shl nuw nsw i8 %i.cf, 1
  store i8 %i.cg, ptr %3, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread.i.i
  %.017.i.i = phi ptr [ %i.cd, %.thread.i.i ], [ %i.bd, %bb.w ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i, ptr nonnull align 8 %i.bv, i64 %i.bw, i1 false)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit: ; preds = %bb.w, %bb.x
  %.018.i.i = phi ptr [ %i.bd, %bb.w ], [ %.017.i.i, %bb.x ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 %i.bw
  store i8 0, ptr %i.ch, align 1, !tbaa !62
  %i.ci = load i8, ptr %3, align 8                ; 2 uses
  %i.cj = trunc i8 %i.ci to i1                    ; 3 uses
  %i.ck = load i64, ptr %i.bc, align 8
  %i.cl = lshr i8 %i.ci, 1
  %i.cm = zext nneg i8 %i.cl to i64
  %i.cn = select i1 %i.cj, i64 %i.ck, i64 %i.cm
  switch i64 %i.cn, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit51.thread [
    i64 5, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
    i64 1, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit29
  ]

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  %i.co = load ptr, ptr %i.bb, align 8
  %i.cp = select i1 %i.cj, ptr %i.co, ptr %i.bd   ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 1
  %i.cr = xor i32 %i.cq, 1667318362
  %i.cs = getelementptr i8, ptr %i.cp, i64 4
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i32
  %i.cv = xor i32 %i.cu, 107
  %i.cw = or i32 %i.cr, %i.cv
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = zext i1 %i.cx to i32
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.y, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit51.thread

bb.y:                                             ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !56  ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 176 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 184 ; 4 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !58 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 192 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !59 ; 2 uses
  %i.dg = icmp ult ptr %i.dd, %i.df
  br i1 %i.dg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 1, ptr %i.dd, align 4, !tbaa !51
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.di = load ptr, ptr %i.db, align 8, !tbaa !57
  %i.dj = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64               ; 3 uses
  %i.dl = sub i64 %i.dj, %i.dk                    ; 2 uses
  %i.dm = ashr exact i64 %i.dl, 2
  %i.dn = add nsw i64 %i.dm, 1                    ; 2 uses
  %i.do = icmp ugt i64 %i.dn, 4611686018427387903
  br i1 %i.do, label %bb.ab, label %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne180100Em.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.db) #28
          to label %.noexc unwind label %.loopexit.split-lp115
end_hunk_1
begin_hunk_2_@_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8__appendEm:bb.a
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %.not = icmp ult i64 %i.h, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not10.i = icmp eq i64 %1, 0
  br i1 %.not10.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.idx.i = mul i64 %1, 24
  %i.i = add i64 %.idx.i, -24                     ; 2 uses
  %i.j = urem i64 %i.i, 24
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = add i64 %i.k, 24                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.l, i1 false)
  %scevgep.i = getelementptr i8, ptr %i.d, i64 %i.l
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endEm.exit

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endEm.exit: ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.6.0.lcssa.i = phi ptr [ %i.d, %bb.b ], [ %scevgep.i, %.lr.ph.preheader.i ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.c, align 8, !tbaa !61
  br label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = sub i64 %i.f, %i.n                       ; 2 uses
  %i.p = sdiv exact i64 %i.o, 24
  %i.q = add i64 %i.p, %1                         ; 2 uses
  %i.r = icmp ugt i64 %i.q, 768614336404564650
  br i1 %i.r, label %bb.d, label %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #28
  unreachable

_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.c
  %i.s = sub i64 %i.e, %i.n
  %i.t = sdiv exact i64 %i.s, 24                  ; 2 uses
  %.not.i = icmp ult i64 %i.t, 384307168202282325
  %i.u = shl nuw nsw i64 %i.t, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.q)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 768614336404564650 ; 4 uses
  %i.v = icmp eq i64 %.0.i, 0
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit
  %i.w = icmp ugt i64 %.0.i, 768614336404564650
  br i1 %i.w, label %bb.f, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #28
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i: ; preds = %bb.e
  %i.x = mul nuw i64 %.0.i, 24
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #25
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !61
  %.pre12 = load ptr, ptr %0, align 8, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i, %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit
  %i.z = phi ptr [ %.pre12, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i ], [ %i.m, %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit ] ; 3 uses
  %i.aa = phi ptr [ %.pre, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i ], [ %i.d, %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit ] ; 3 uses
  %storemerge.i = phi ptr [ %i.y, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i ], [ null, %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.o ; 4 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %storemerge.i, i64 %.0.i
  %.idx.i8 = mul i64 %1, 24
  %i.ad = add i64 %.idx.i8, -24                   ; 2 uses
  %i.ae = urem i64 %i.ad, 24
  %i.af = sub nuw i64 %i.ad, %i.ae
  %i.ag = add i64 %i.af, 24                       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.ag, i1 false)
  %scevgep.i9 = getelementptr i8, ptr %i.ab, i64 %i.ag
  %.not12.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not12.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.ah = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.ab, %bb.g ]
  %.sroa.18.013.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.aa, %bb.g ]
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -24 ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %.sroa.18.013.i.i, i64 -24 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %.not.i.i = icmp eq ptr %i.aj, %i.z
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !2

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre13 = load ptr, ptr %0, align 8, !tbaa !63
  %.pre14 = load ptr, ptr %i.c, align 8, !tbaa !63
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %i.ak = phi ptr [ %i.aa, %bb.g ], [ %.pre14, %.loopexit.loopexit ] ; 2 uses
  %i.al = phi ptr [ %i.z, %bb.g ], [ %.pre13, %.loopexit.loopexit ] ; 5 uses
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.ai, %.loopexit.loopexit ]
  store ptr %.sroa.2.0.copyload.i.i, ptr %0, align 8, !tbaa !63
  store ptr %scevgep.i9, ptr %i.c, align 8, !tbaa !63
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !63
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !63
  %.not2.i.i.i.i = icmp eq ptr %i.al, %i.ak
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i
  %i.an = phi ptr [ %i.ao, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i ], [ %i.ak, %.loopexit ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -24 ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = trunc i8 %i.ap to i1
  br i1 %i.aq, label %bb.h, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !62
  %i.at = load i64, ptr %i.ao, align 8
  %i.au = and i64 %i.at, -2
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.au) #27
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.ao
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i, %.loopexit
  %.not.i10 = icmp eq ptr %i.al, null
  br i1 %.not.i10, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i
  %i.av = ptrtoint ptr %i.am to i64
  %i.aw = ptrtoint ptr %i.al to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ax) #27
  br label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev.exit

_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev.exit: ; preds = %bb.i, %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187  ; 2 uses
  %.not2.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not2.i.i.i, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i
  %i.e = phi ptr [ %i.m, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -24 ; 4 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !187
  %i.g = load i8, ptr %i.f, align 8
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.k = load i64, ptr %i.f, align 8
  %i.l = and i64 %i.k, -2
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.l) #27
  %.pre.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !187
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.m = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.pre.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, %i.m
  br i1 %.not.i.i.i, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit, label %.lr.ph.i.i.i

_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i, %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !188    ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.9) #28
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = load i8, ptr %0, align 8
  %5 = trunc i8 %4 to i1
  %6 = load i64, ptr %0, align 8                  ; 4 uses
  %7 = and i64 %6, -2
  %8 = add i64 %7, -1
  %9 = select i1 %5, i64 %8, i64 22               ; 6 uses
  %.not = icmp ult i64 %9, %2
  br i1 %.not, label %25, label %10

10:                                               ; preds = %3
  %11 = trunc i64 %6 to i8
  %12 = trunc i64 %6 to i1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %17 = select i1 %12, ptr %15, ptr %16           ; 3 uses
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZNSt3__111char_traitsIcE4moveB8ne180100EPcPKcm.exit, label %18

18:                                               ; preds = %10
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %17, ptr align 1 %1, i64 %2, i1 false)
  %.pre = load i8, ptr %0, align 8
  br label %_ZNSt3__111char_traitsIcE4moveB8ne180100EPcPKcm.exit

_ZNSt3__111char_traitsIcE4moveB8ne180100EPcPKcm.exit: ; preds = %10, %18
  %19 = phi i8 [ %11, %10 ], [ %.pre, %18 ]
  %20 = trunc i8 %19 to i1
  br i1 %20, label %21, label %22

21:                                               ; preds = %_ZNSt3__111char_traitsIcE4moveB8ne180100EPcPKcm.exit
  store i64 %2, ptr %13, align 8, !tbaa !62
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne180100EPcm.exit

22:                                               ; preds = %_ZNSt3__111char_traitsIcE4moveB8ne180100EPcPKcm.exit
  %23 = trunc i64 %2 to i8
  %24 = shl i8 %23, 1
  store i8 %24, ptr %0, align 8
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne180100EPcm.exit

25:                                               ; preds = %3
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %27 = sub nuw i64 %2, %9
  %28 = sub i64 -10, %9
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #28
  unreachable

31:                                               ; preds = %25
  %32 = trunc i64 %6 to i1
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %36 = select i1 %32, ptr %34, ptr %35
  %37 = icmp ult i64 %9, 9223372036854775795
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = shl nuw i64 %9, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %2, i64 %39) ; 2 uses
  %40 = or i64 %.sroa.speculated.i, 7             ; 2 uses
  %41 = icmp eq i64 %40, 23
  %42 = add i64 %40, 1
  %43 = select i1 %41, i64 25, i64 %42
  %.inv.i.inv.i = icmp ult i64 %.sroa.speculated.i, 23
  %44 = select i1 %.inv.i.inv.i, i64 23, i64 %43
  br label %45

45:                                               ; preds = %38, %31
  %46 = phi i64 [ %44, %38 ], [ -9, %31 ]         ; 2 uses
  %47 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %46) #25 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %47, ptr align 1 %1, i64 %2, i1 false)
  %48 = add nuw i64 %9, 1                         ; 2 uses
  %.not51.i = icmp eq i64 %48, 23
  br i1 %.not51.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit, label %49

49:                                               ; preds = %45
  tail call void @_ZdlPvm(ptr noundef %36, i64 noundef %48) #27
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit: ; preds = %45, %49
  store ptr %47, ptr %33, align 8, !tbaa !62
  %50 = or i64 %46, 1
  store i64 %50, ptr %0, align 8
  store i64 %2, ptr %26, align 8, !tbaa !62
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne180100EPcm.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__null_terminate_atB8ne180100EPcm.exit: ; preds = %22, %21, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit
  %.sink24 = phi ptr [ %47, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit ], [ %17, %21 ], [ %17, %22 ]
  %51 = getelementptr inbounds nuw i8, ptr %.sink24, i64 %2
  store i8 0, ptr %51, align 1, !tbaa !62
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %4 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i64 noundef %3)
  ret ptr %4
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.9) #28
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21__push_back_slow_pathIRKS6_EEPS6_OT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__1::__split_buffer.179", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.d = load ptr, ptr %0, align 8, !tbaa !60
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = add nsw i64 %i.h, 1                      ; 2 uses
  %i.j = icmp ugt i64 %i.i, 768614336404564650
  br i1 %i.j, label %bb.b, label %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #28
  unreachable

_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = sdiv exact i64 %i.m, 24                  ; 2 uses
  %.not.i = icmp ult i64 %i.n, 384307168202282325
  %i.o = shl nuw nsw i64 %i.n, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.i)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 768614336404564650 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.a, ptr %i.q, align 8, !tbaa !340
  %i.r = icmp eq i64 %.0.i, 0
  br i1 %i.r, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit
  %i.s = icmp ugt i64 %.0.i, 768614336404564650
  br i1 %i.s, label %bb.d, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #28
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i: ; preds = %bb.c
  %i.t = mul nuw i64 %.0.i, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25
  br label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit

_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit: ; preds = %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i
  %storemerge.i = phi ptr [ %i.u, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_m.exit.i ], [ null, %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit ] ; 3 uses
  store ptr %storemerge.i, ptr %2, align 8, !tbaa !188
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.g ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !187
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.v, ptr %i.x, align 8, !tbaa !186
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %storemerge.i, i64 %.0.i ; 2 uses
  store ptr %i.y, ptr %i.p, align 8, !tbaa !63
  %i.z = load i8, ptr %1, align 8
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !119
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRKS6_EvvEEvRS7_PT_DpOT0_.exit

bb.f:                                             ; preds = %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !62
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !62
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef %i.ac, i64 noundef %i.ae)
          to label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRKS6_EvvEEvRS7_PT_DpOT0_.exit unwind label %bb.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRKS6_EvvEEvRS7_PT_DpOT0_.exit: ; preds = %bb.e, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !61  ; 3 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !60    ; 3 uses
  %.not12.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not12.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRKS6_EvvEEvRS7_PT_DpOT0_.exit, %.lr.ph.i.i
  %i.ai = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.v, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRKS6_EvvEEvRS7_PT_DpOT0_.exit ]
  %.sroa.18.013.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %i.ag, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRKS6_EvvEEvRS7_PT_DpOT0_.exit ]
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -24 ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.18.013.i.i, i64 -24 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %.not.i.i = icmp eq ptr %i.ak, %i.ah
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !2

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !63
  %.pre6 = load ptr, ptr %i.b, align 8, !tbaa !63
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRKS6_EvvEEvRS7_PT_DpOT0_.exit
  %i.al = phi ptr [ %i.ag, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRKS6_EvvEEvRS7_PT_DpOT0_.exit ], [ %.pre6, %.loopexit.loopexit ] ; 2 uses
  %.pr = phi ptr [ %i.ah, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRKS6_EvvEEvRS7_PT_DpOT0_.exit ], [ %.pre, %.loopexit.loopexit ] ; 5 uses
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.v, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB8ne180100IS6_JRKS6_EvvEEvRS7_PT_DpOT0_.exit ], [ %i.aj, %.loopexit.loopexit ]
  store ptr %.sroa.2.0.copyload.i.i, ptr %0, align 8, !tbaa !63
  store ptr %i.af, ptr %i.b, align 8, !tbaa !63
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !63
  store ptr %i.y, ptr %i.a, align 8, !tbaa !63
  %.not2.i.i.i.i = icmp eq ptr %.pr, %i.al
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i
  %i.an = phi ptr [ %i.ao, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i ], [ %i.al, %.loopexit ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -24 ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = trunc i8 %i.ap to i1
  br i1 %i.aq, label %bb.g, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !62
  %i.at = load i64, ptr %i.ao, align 8
  %i.au = and i64 %i.at, -2
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.au) #27
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.pr, %i.ao
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i, %.loopexit
  %.not.i5 = icmp eq ptr %.pr, null
  br i1 %.not.i5, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i
  %i.av = ptrtoint ptr %i.am to i64
  %i.aw = ptrtoint ptr %.pr to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ax) #27
  br label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev.exit

_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %i.af

bb.i:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %2, 23
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = trunc nuw nsw i64 %2 to i8
  %i.d = shl nuw nsw i8 %i.c, 1
  store i8 %i.d, ptr %0, align 8
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, -9
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #28
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = or i64 %2, 7                             ; 2 uses
  %i.g = icmp eq i64 %i.f, 23
  %i.h = add nuw i64 %i.f, 1
  %i.i = select i1 %i.g, i64 25, i64 %i.h         ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #25 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !62
  %i.l = or i64 %i.i, 1
  store i64 %i.l, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8, !tbaa !62
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit: ; preds = %bb.e, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.j, %bb.e ]
  %i.n = add nuw i64 %2, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.n, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE14__assign_multiINS_21__tree_const_iteratorIS5_PNS_11__tree_nodeIS5_PvEElEEEEvT_SK_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !125
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE18_DetachedTreeCacheD2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !13
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.f, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  %spec.select.i.i = select i1 %.not.i.i, ptr %i.c, ptr %i.h ; 6 uses
  %.not.i3.i.not = icmp eq ptr %spec.select.i.i, null
  br i1 %.not.i3.i.not, label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE18_DetachedTreeCacheD2B8ne180100Ev.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86   ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE18_DetachedTreeCacheC2B8ne180100EPSC_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !74   ; 3 uses
  %i.m = icmp eq ptr %spec.select.i.i, %i.l
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.j, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !85   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE18_DetachedTreeCacheC2B8ne180100EPSC_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.e, %.preheader.i.i.i.backedge
  %.0.i.i.i.i = phi ptr [ %.0.i.i.i.i.be, %.preheader.i.i.i.backedge ], [ %i.o, %bb.e ] ; 3 uses
  %i.q = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %bb.f, label %.preheader.i.i.i.backedge

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !85   ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not7.i.i.i.i, label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE18_DetachedTreeCacheC2B8ne180100EPSC_.exit, label %.preheader.i.i.i.backedge

.preheader.i.i.i.backedge:                        ; preds = %bb.f, %.preheader.i.i.i
  %.0.i.i.i.i.be = phi ptr [ %i.s, %bb.f ], [ %i.q, %.preheader.i.i.i ]
  br label %.preheader.i.i.i, !llvm.loop !341

bb.g:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !85
  %i.u = icmp eq ptr %i.l, null
  br i1 %i.u, label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE18_DetachedTreeCacheC2B8ne180100EPSC_.exit, label %.preheader21.i.i.i

.preheader21.i.i.i:                               ; preds = %bb.g, %.preheader21.i.i.i.backedge
  %.0.i15.i.i.i = phi ptr [ %.0.i15.i.i.i.be, %.preheader21.i.i.i.backedge ], [ %i.l, %bb.g ] ; 3 uses
  %i.v = load ptr, ptr %.0.i15.i.i.i, align 8, !tbaa !74 ; 2 uses
  %.not.i16.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i16.i.i.i, label %bb.h, label %.preheader21.i.i.i.backedge

bb.h:                                             ; preds = %.preheader21.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i15.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !85   ; 2 uses
  %.not7.i19.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not7.i19.i.i.i, label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE18_DetachedTreeCacheC2B8ne180100EPSC_.exit, label %.preheader21.i.i.i.backedge

.preheader21.i.i.i.backedge:                      ; preds = %bb.h, %.preheader21.i.i.i
  %.0.i15.i.i.i.be = phi ptr [ %i.x, %bb.h ], [ %i.v, %.preheader21.i.i.i ]
  br label %.preheader21.i.i.i, !llvm.loop !341

_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE18_DetachedTreeCacheC2B8ne180100EPSC_.exit: ; preds = %bb.h, %bb.f, %bb.c, %bb.e, %bb.g
  %.sroa.5.0 = phi ptr [ %.0.i.i.i.i, %bb.f ], [ %i.j, %bb.e ], [ null, %bb.c ], [ %i.j, %bb.g ], [ %.0.i15.i.i.i, %bb.h ] ; 2 uses
  %.not114 = icmp eq ptr %1, %2
  br i1 %.not114, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE18_DetachedTreeCacheC2B8ne180100EPSC_.exit, %_ZNSt3__121__tree_const_iteratorINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEEPNS_11__tree_nodeIS5_PvEElEppB8ne180100Ev.exit
  %.sroa.5.1 = phi ptr [ %.sroa.5.2, %_ZNSt3__121__tree_const_iteratorINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEEPNS_11__tree_nodeIS5_PvEElEppB8ne180100Ev.exit ], [ %.sroa.5.0, %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE18_DetachedTreeCacheC2B8ne180100EPSC_.exit ] ; 5 uses
  %i.y = phi ptr [ %.sroa.5.1, %_ZNSt3__121__tree_const_iteratorINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEEPNS_11__tree_nodeIS5_PvEElEppB8ne180100Ev.exit ], [ %spec.select.i.i, %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE18_DetachedTreeCacheC2B8ne180100EPSC_.exit ] ; 6 uses
  %.sroa.026.046 = phi ptr [ %.06.i.i, %_ZNSt3__121__tree_const_iteratorINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEEPNS_11__tree_nodeIS5_PvEElEppB8ne180100Ev.exit ], [ %1, %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE18_DetachedTreeCacheC2B8ne180100EPSC_.exit ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.026.046, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.aa, ptr noundef nonnull align 8 dereferenceable(312) %i.z, i64 256, i1 false), !tbaa.struct !348
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.026.046, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.ab, ptr noundef nonnull align 8 dereferenceable(50) %i.ac, i64 50, i1 false), !tbaa.struct !352
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !74  ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i4, label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE16__find_leaf_highERPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERKS3_.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph, %.preheader.i.i.backedge
  %.0.i.i = phi ptr [ %.0.i.i.be, %.preheader.i.i.backedge ], [ %i.ad, %.lr.ph ] ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.af = tail call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.aa, ptr noundef nonnull align 8 dereferenceable(312) %i.ae) #30
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader.i.i
  %i.ah = load ptr, ptr %.0.i.i, align 8, !tbaa !74 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.ah, null
  br i1 %.not22.i.i, label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE16__find_leaf_highERPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERKS3_.exit.i, label %.preheader.i.i.backedge

bb.j:                                             ; preds = %.preheader.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !85 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.aj, null
  br i1 %.not21.i.i, label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE16__find_leaf_highERPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERKS3_.exit.i.loopexit.split.loop.exit, label %.preheader.i.i.backedge

.preheader.i.i.backedge:                          ; preds = %bb.j, %bb.i
  %.0.i.i.be = phi ptr [ %i.aj, %bb.j ], [ %i.ah, %bb.i ]
  br label %.preheader.i.i, !llvm.loop !342

_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE16__find_leaf_highERPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERKS3_.exit.i.loopexit.split.loop.exit: ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  br label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE16__find_leaf_highERPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERKS3_.exit.i

_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE16__find_leaf_highERPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERKS3_.exit.i: ; preds = %bb.i, %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE16__find_leaf_highERPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERKS3_.exit.i.loopexit.split.loop.exit, %.lr.ph
  %.sink.i.i = phi ptr [ %i.d, %.lr.ph ], [ %.0.i.i, %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE16__find_leaf_highERPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERKS3_.exit.i.loopexit.split.loop.exit ], [ %.0.i.i, %bb.i ]
  %.017.i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.ak, %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE16__find_leaf_highERPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERKS3_.exit.i.loopexit.split.loop.exit ], [ %.0.i.i, %bb.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store ptr %.sink.i.i, ptr %i.al, align 8, !tbaa !86
  store ptr %i.y, ptr %.017.i.i, align 8, !tbaa !353
  %i.am = load ptr, ptr %0, align 8, !tbaa !13
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !74 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.an, null
  br i1 %.not.i5.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE16__find_leaf_highERPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERKS3_.exit.i
  store ptr %i.an, ptr %0, align 8, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE16__find_leaf_highERPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERKS3_.exit.i
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !74
  tail call void @_ZNSt3__127__tree_balance_after_insertB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %i.ao, ptr noundef nonnull %i.y) #26
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !125
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.a, align 8, !tbaa !125
  %.not.i = icmp ne ptr %.sroa.5.1, null          ; 2 uses
  br i1 %.not.i, label %bb.m, label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE18_DetachedTreeCache9__advanceB8ne180100Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.5.1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !86 ; 7 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE18_DetachedTreeCache9__advanceB8ne180100Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !74 ; 3 uses
  %i.av = icmp eq ptr %.sroa.5.1, %i.au
  br i1 %i.av, label %bb.o, label %bb.q

end_hunk_2
begin_hunk_3_@_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m:bb.a
bb.o:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.ar

bb.q:                                             ; preds = %bb.o
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #29
  unreachable
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(ptr %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(136) %4, i8 noundef signext %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 15 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !400  ; 2 uses
  %.not45 = icmp sgt i64 %i.f, %i.d
  %i.g = sub nsw i64 %i.f, %i.d                   ; 8 uses
  %i.h = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.i = sub i64 %i.h, %i.c                       ; 3 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i64 noundef %i.i), !inline_history !399
  %.not = icmp eq i64 %i.n, %i.i
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %.not45, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.o = icmp samesign ult i64 %i.g, 23
  br i1 %i.o, label %bb.f, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e
  %i.p = or i64 %i.g, 7                           ; 2 uses
  %i.q = icmp eq i64 %i.p, 23
  %i.r = add nuw i64 %i.p, 1
  %i.s = select i1 %i.q, i64 25, i64 %i.r         ; 2 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #25 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !62
  %i.v = or i64 %i.s, 1
  store i64 %i.v, ptr %6, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.g, ptr %i.w, align 8, !tbaa !62
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc.exit

bb.f:                                             ; preds = %bb.e
  %i.x = trunc nuw nsw i64 %i.g to i8
  %i.y = shl nuw nsw i8 %i.x, 1
  store i8 %i.y, ptr %6, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 1
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc.exit: ; preds = %.thread.i.i, %bb.f
  %.017.i.i = phi ptr [ %i.t, %.thread.i.i ], [ %i.z, %bb.f ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.017.i.i, i8 %5, i64 %i.g, i1 false), !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 %i.g
  store i8 0, ptr %i.aa, align 1, !tbaa !62
  %i.ab = load i8, ptr %6, align 8
  %i.ac = trunc i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.ag = select i1 %i.ac, ptr %i.ae, ptr %i.af
  %i.ah = load ptr, ptr %0, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.ag, i64 noundef %i.g)
          to label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl.exit unwind label %bb.h, !inline_history !399

_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc.exit
  %.not42 = icmp eq i64 %i.ak, %i.g
  %i.al = load i8, ptr %6, align 8
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.g:                                             ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl.exit
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !62
  %i.ao = load i64, ptr %6, align 8
  %i.ap = and i64 %i.ao, -2
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ap) #27
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %.not42, label %bb.j, label %bb.m

bb.h:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load i8, ptr %6, align 8
  %i.as = trunc i8 %i.ar to i1
  br i1 %i.as, label %bb.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !62
  %i.au = load i64, ptr %6, align 8
  %i.av = and i64 %i.au, -2
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.av) #27
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit44: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %i.aq

bb.j:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.d
  %i.aw = sub i64 %i.b, %i.h                      ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %0, align 8, !tbaa !53
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %2, i64 noundef %i.aw), !inline_history !399
  %.not43 = icmp eq i64 %i.bb, %i.aw
  br i1 %.not43, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  store i64 0, ptr %i.e, align 8, !tbaa !400
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.c, %bb.k, %bb.a
  %.sroa.034.2 = phi ptr [ null, %bb.a ], [ null, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ null, %bb.c ], [ %0, %bb.l ], [ null, %bb.k ]
  ret ptr %.sroa.034.2
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #6

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind writable sret(%"class.std::__1::locale") align 8, ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

declare noundef ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

declare void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !83}
!1 = distinct !{!1, !83}
!2 = distinct !{!2, !83}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTSNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEE", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any p2 pointer", !11, i64 0}
!15 = !{!"p2 _ZTSN7Imf_3_421DeepScanLineInputFileE", !14, i64 0}
!16 = !{!"_ZTSNSt3__122__compressed_pair_elemIPPN7Imf_3_421DeepScanLineInputFileELi0ELb0EEE", !15, i64 0}
!17 = !{!"_ZTSNSt3__117__compressed_pairIPPN7Imf_3_421DeepScanLineInputFileENS_9allocatorIS3_EEEE", !16, i64 0}
!18 = !{!"_ZTSNSt3__16vectorIPN7Imf_3_421DeepScanLineInputFileENS_9allocatorIS3_EEEE", !15, i64 0, !15, i64 8, !17, i64 16}
!19 = !{!"p2 _ZTSN7Imf_3_421DeepScanLineInputPartE", !14, i64 0}
!20 = !{!"_ZTSNSt3__122__compressed_pair_elemIPPN7Imf_3_421DeepScanLineInputPartELi0ELb0EEE", !19, i64 0}
!21 = !{!"_ZTSNSt3__117__compressed_pairIPPN7Imf_3_421DeepScanLineInputPartENS_9allocatorIS3_EEEE", !20, i64 0}
!22 = !{!"_ZTSNSt3__16vectorIPN7Imf_3_421DeepScanLineInputPartENS_9allocatorIS3_EEEE", !19, i64 0, !19, i64 8, !21, i64 16}
!23 = !{!"p1 _ZTSNSt3__116__tree_node_baseIPvEE", !11, i64 0}
!24 = !{!"_ZTSNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEE", !23, i64 0}
!25 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EEE", !24, i64 0}
!26 = !{!"_ZTSNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIN7Imf_3_44NameENSA_5SliceEEES3_EEEEEE", !25, i64 0}
!27 = !{!"long", !7, i64 0}
!28 = !{!"_ZTSNSt3__122__compressed_pair_elemImLi0ELb0EEE", !27, i64 0}
!29 = !{!"_ZTSNSt3__117__compressed_pairImNS_19__map_value_compareIN7Imf_3_44NameENS_12__value_typeIS3_NS2_5SliceEEENS_4lessIS3_EELb1EEEEE", !28, i64 0}
!30 = !{!"_ZTSNSt3__16__treeINS_12__value_typeIN7Imf_3_44NameENS2_5SliceEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEEE", !12, i64 0, !26, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt3__13mapIN7Imf_3_44NameENS1_5SliceENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEEE", !30, i64 0}
!32 = !{!"_ZTSN7Imf_3_411FrameBufferE", !31, i64 0}
!33 = !{!"bool", !7, i64 0}
!34 = !{!"p1 _ZTSNSt3__16vectorIfNS_9allocatorIfEEEE", !11, i64 0}
!35 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6vectorIfNS_9allocatorIfEEEELi0ELb0EEE", !34, i64 0}
!36 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6vectorIfNS_9allocatorIfEEEENS2_IS4_EEEE", !35, i64 0}
!37 = !{!"_ZTSNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEEE", !34, i64 0, !34, i64 8, !36, i64 16}
!38 = !{!"p1 int", !11, i64 0}
!39 = !{!"_ZTSNSt3__122__compressed_pair_elemIPiLi0ELb0EEE", !38, i64 0}
!40 = !{!"_ZTSNSt3__117__compressed_pairIPiNS_9allocatorIiEEEE", !39, i64 0}
!41 = !{!"_ZTSNSt3__16vectorIiNS_9allocatorIiEEEE", !38, i64 0, !38, i64 8, !40, i64 16}
!42 = !{!"_ZTSN9Imath_3_24Vec2IiEE", !8, i64 0, !8, i64 4}
!43 = !{!"_ZTSN9Imath_3_23BoxINS_4Vec2IiEEEE", !42, i64 0, !42, i64 8}
!44 = !{!"p1 _ZTSN7Imf_3_415DeepCompositingE", !11, i64 0}
!45 = !{!"p1 _ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !11, i64 0}
!46 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEE", !45, i64 0}
!47 = !{!"_ZTSNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !46, i64 0}
!48 = !{!"_ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !45, i64 0, !45, i64 8, !47, i64 16}
!49 = !{!"_ZTSN7Imf_3_421CompositeDeepScanLine4DataE", !18, i64 0, !22, i64 24, !32, i64 48, !33, i64 72, !37, i64 80, !41, i64 104, !43, i64 128, !44, i64 144, !48, i64 152, !41, i64 176}
!50 = !{!49, !33, i64 72}
!51 = !{!8, !8, i64 0}
!52 = !{!"vtable pointer", !6, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"p1 _ZTSN7Imf_3_421CompositeDeepScanLine4DataE", !11, i64 0}
!55 = !{!"_ZTSN7Imf_3_421CompositeDeepScanLineE", !54, i64 8}
!56 = !{!55, !54, i64 8}
!57 = !{!41, !38, i64 0}
!58 = !{!41, !38, i64 8}
!59 = !{!38, !38, i64 0}
!60 = !{!48, !45, i64 0}
!61 = !{!48, !45, i64 8}
!62 = !{!7, !7, i64 0}
!63 = !{!45, !45, i64 0}
!64 = !{!37, !34, i64 0}
!65 = !{!37, !34, i64 8}
!66 = !{!"p1 float", !11, i64 0}
!67 = !{!"_ZTSNSt3__122__compressed_pair_elemIPfLi0ELb0EEE", !66, i64 0}
!68 = !{!"_ZTSNSt3__117__compressed_pairIPfNS_9allocatorIfEEEE", !67, i64 0}
!69 = !{!"_ZTSNSt3__16vectorIfNS_9allocatorIfEEEE", !66, i64 0, !66, i64 8, !68, i64 16}
!70 = !{!69, !66, i64 0}
!71 = !{!69, !66, i64 8}
!72 = !{!66, !66, i64 0}
!73 = !{!34, !34, i64 0}
!74 = !{!24, !23, i64 0}
!75 = !{!22, !19, i64 0}
!76 = !{!22, !19, i64 8}
!77 = !{!19, !19, i64 0}
!78 = !{!18, !15, i64 0}
!79 = !{!18, !15, i64 8}
!80 = !{!15, !15, i64 0}
!81 = !{!"p1 _ZTSN7Imf_3_421DeepScanLineInputPartE", !11, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"_ZTSNSt3__116__tree_node_baseIPvEE", !24, i64 0, !23, i64 8, !12, i64 16, !33, i64 24}
!85 = !{!84, !23, i64 8}
!86 = !{!84, !12, i64 16}
!87 = !{!"p1 _ZTSN7Imf_3_421DeepScanLineInputFileE", !11, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!43, !8, i64 0}
!90 = !{!43, !8, i64 8}
!91 = !{!"p1 _ZTSNSt3__16vectorIPfNS_9allocatorIS1_EEEE", !11, i64 0}
!92 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6vectorIPfNS_9allocatorIS2_EEEELi0ELb0EEE", !91, i64 0}
!93 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6vectorIPfNS_9allocatorIS2_EEEENS3_IS5_EEEE", !92, i64 0}
!94 = !{!"_ZTSNSt3__16vectorINS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEEE", !91, i64 0, !91, i64 8, !93, i64 16}
!95 = !{!94, !91, i64 8}
!96 = !{!94, !91, i64 0}
!97 = !{!"p2 float", !14, i64 0}
!98 = !{!"_ZTSNSt3__122__compressed_pair_elemIPPfLi0ELb0EEE", !97, i64 0}
!99 = !{!"_ZTSNSt3__117__compressed_pairIPPfNS_9allocatorIS1_EEEE", !98, i64 0}
!100 = !{!"_ZTSNSt3__16vectorIPfNS_9allocatorIS1_EEEE", !97, i64 0, !97, i64 8, !99, i64 16}
!101 = !{!100, !97, i64 0}
!102 = !{!100, !97, i64 8}
!103 = !{!97, !97, i64 0}
!104 = !{!"_ZTSNSt3__122__compressed_pair_elemIPjLi0ELb0EEE", !38, i64 0}
!105 = !{!"_ZTSNSt3__117__compressed_pairIPjNS_9allocatorIjEEEE", !104, i64 0}
!106 = !{!"_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE", !38, i64 0, !38, i64 8, !105, i64 16}
!107 = !{!106, !38, i64 8}
!108 = !{!106, !38, i64 0}
!109 = !{!49, !8, i64 128}
!110 = !{i8 0, i8 2}
!111 = !{}
!112 = !{!49, !44, i64 144}
!113 = !{!"_ZTSN7Imf_3_49PixelTypeE", !7, i64 0}
!114 = !{!"p1 omnipotent char", !11, i64 0}
!115 = !{!"double", !7, i64 0}
!116 = !{!"_ZTSN7Imf_3_45SliceE", !113, i64 0, !114, i64 8, !27, i64 16, !27, i64 24, !8, i64 32, !8, i64 36, !115, i64 40, !33, i64 48, !33, i64 49}
!117 = !{!"llvm.loop.isvectorized", i32 1}
!118 = !{!"llvm.loop.unroll.runtime.disable"}
!119 = !{i64 0, i64 24, !62}
!120 = !{!"p1 long", !11, i64 0}
!121 = !{!"_ZTSNSt3__18ios_baseE", !8, i64 8, !27, i64 16, !27, i64 24, !8, i64 32, !8, i64 36, !11, i64 40, !11, i64 48, !14, i64 56, !38, i64 64, !27, i64 72, !27, i64 80, !120, i64 88, !27, i64 96, !27, i64 104, !14, i64 112, !27, i64 120, !27, i64 128}
!122 = !{!"p1 _ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE", !11, i64 0}
!123 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !121, i64 0, !122, i64 136, !8, i64 144}
!124 = !{!123, !8, i64 144}
!125 = !{!27, !27, i64 0}
!126 = !{!"p1 _ZTSNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEE", !11, i64 0}
!127 = !{!"_ZTSNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE16__destroy_vectorE", !126, i64 0}
!128 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorINS1_IjNS_9allocatorIjEEEENS2_IS4_EEE16__destroy_vectorEEE", !127, i64 0, !33, i64 8}
!129 = !{!128, !33, i64 8}
!130 = !{!"p1 _ZTSNSt3__16vectorIjNS_9allocatorIjEEEE", !11, i64 0}
!131 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6vectorIjNS_9allocatorIjEEEELi0ELb0EEE", !130, i64 0}
!132 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6vectorIjNS_9allocatorIjEEEENS2_IS4_EEEE", !131, i64 0}
!133 = !{!"_ZTSNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEEE", !130, i64 0, !130, i64 8, !132, i64 16}
!134 = !{!133, !130, i64 0}
!135 = !{!130, !130, i64 0}
!136 = !{!133, !130, i64 8}
!137 = !{!"p1 _ZTSNSt3__16vectorINS0_INS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEEENS2_IS6_EEEE", !11, i64 0}
!138 = !{!"_ZTSNSt3__16vectorINS0_INS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEEENS2_IS6_EEE16__destroy_vectorE", !137, i64 0}
!139 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorINS1_INS1_IPfNS_9allocatorIS2_EEEENS3_IS5_EEEENS3_IS7_EEE16__destroy_vectorEEE", !138, i64 0, !33, i64 8}
!140 = !{!139, !33, i64 8}
!141 = !{!"p1 _ZTSNSt3__16vectorINS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEEE", !11, i64 0}
!142 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6vectorINS1_IPfNS_9allocatorIS2_EEEENS3_IS5_EEEELi0ELb0EEE", !141, i64 0}
!143 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6vectorINS1_IPfNS_9allocatorIS2_EEEENS3_IS5_EEEENS3_IS7_EEEE", !142, i64 0}
!144 = !{!"_ZTSNSt3__16vectorINS0_INS0_IPfNS_9allocatorIS1_EEEENS2_IS4_EEEENS2_IS6_EEEE", !141, i64 0, !141, i64 8, !143, i64 16}
!145 = !{!144, !141, i64 0}
!146 = !{!141, !141, i64 0}
!147 = !{!144, !141, i64 8}
!148 = !{!"p1 _ZTSN7Imf_3_415DeepFrameBufferE", !11, i64 0}
!149 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN7Imf_3_415DeepFrameBufferELi0ELb0EEE", !148, i64 0}
!150 = !{!"_ZTSNSt3__117__compressed_pairIPN7Imf_3_415DeepFrameBufferENS_9allocatorIS2_EEEE", !149, i64 0}
!151 = !{!"_ZTSNSt3__16vectorIN7Imf_3_415DeepFrameBufferENS_9allocatorIS2_EEEE", !148, i64 0, !148, i64 8, !150, i64 16}
!152 = !{!151, !148, i64 0}
!153 = !{!"p1 _ZTSNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEEE", !11, i64 0}
!154 = !{!"_ZTSNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE16__destroy_vectorE", !153, i64 0}
!155 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorINS1_IfNS_9allocatorIfEEEENS2_IS4_EEE16__destroy_vectorEEE", !154, i64 0, !33, i64 8}
!156 = !{!155, !33, i64 8}
!157 = !{!"p2 omnipotent char", !14, i64 0}
!158 = !{!"_ZTSNSt3__122__compressed_pair_elemIPPKcLi0ELb0EEE", !157, i64 0}
!159 = !{!"_ZTSNSt3__117__compressed_pairIPPKcNS_9allocatorIS2_EEEE", !158, i64 0}
!160 = !{!"_ZTSNSt3__16vectorIPKcNS_9allocatorIS2_EEEE", !157, i64 0, !157, i64 8, !159, i64 16}
!161 = !{!160, !157, i64 0}
!162 = !{!114, !114, i64 0}
!163 = !{!160, !157, i64 8}
!164 = !{!91, !91, i64 0}
!165 = !{!151, !148, i64 8}
!166 = !{!148, !148, i64 0}
!167 = !{!"p1 _ZTSN13IlmThread_3_49TaskGroupE", !11, i64 0}
!168 = !{!"_ZTSN13IlmThread_3_44TaskE", !167, i64 8}
!169 = !{!"p1 _ZTSNSt3__16vectorIPKcNS_9allocatorIS2_EEEE", !11, i64 0}
!170 = !{!"_ZTSN7Imf_3_412_GLOBAL__N_117LineCompositeTaskE", !168, i64 0, !54, i64 16, !8, i64 24, !8, i64 28, !169, i64 32, !137, i64 40, !130, i64 48, !130, i64 56}
!171 = !{!170, !54, i64 16}
!172 = !{!170, !8, i64 24}
!173 = !{!170, !8, i64 28}
!174 = !{!170, !169, i64 32}
!175 = !{!170, !137, i64 40}
!176 = !{!170, !130, i64 48}
!177 = !{!170, !130, i64 56}
!178 = !{!"p1 _ZTSNSt3__16vectorIN7Imf_3_415DeepFrameBufferENS_9allocatorIS2_EEEE", !11, i64 0}
!179 = !{!"_ZTSNSt3__16vectorIN7Imf_3_415DeepFrameBufferENS_9allocatorIS2_EEE16__destroy_vectorE", !178, i64 0}
!180 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorIN7Imf_3_415DeepFrameBufferENS_9allocatorIS3_EEE16__destroy_vectorEEE", !179, i64 0, !33, i64 8}
!181 = !{!180, !33, i64 8}
!182 = !{!"p1 _ZTSNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEEE", !11, i64 0}
!183 = !{!"_ZTSNSt3__122__compressed_pair_elemIRNS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb0EEE", !182, i64 0}
!184 = !{!"_ZTSNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEE", !46, i64 0, !183, i64 8}
!185 = !{!"_ZTSNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEE", !45, i64 0, !45, i64 8, !45, i64 16, !184, i64 24}
!186 = !{!185, !45, i64 8}
!187 = !{!185, !45, i64 16}
end_hunk_3
