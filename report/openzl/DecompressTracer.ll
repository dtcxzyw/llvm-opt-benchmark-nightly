Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/DecompressTracer?download=true
inline.NumInlined: 976
inline.NumDeleted: 629
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_StaticErrorInfo_s = type { i32, ptr, ptr, ptr, i32 }
%"struct.openzl::visualizer::TraceResult" = type { %"class.std::__cxx11::basic_string", %"class.std::vector" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::vector<openzl::visualizer::StreamdumpEntry>, std::allocator<std::vector<openzl::visualizer::StreamdumpEntry>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<openzl::visualizer::StreamdumpEntry>, std::allocator<std::vector<openzl::visualizer::StreamdumpEntry>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<openzl::visualizer::StreamdumpEntry>, std::allocator<std::vector<openzl::visualizer::StreamdumpEntry>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<openzl::visualizer::StreamdumpEntry>, std::allocator<std::vector<openzl::visualizer::StreamdumpEntry>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::map.11" = type { %"class.std::_Rb_tree.12" }
%"class.std::_Rb_tree.12" = type { %"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const unsigned long, std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>, std::less<unsigned long>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const unsigned long, std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>, std::less<unsigned long>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::vector.22" = type { %"struct.std::_Vector_base.23" }
%"struct.std::_Vector_base.23" = type { %"struct.std::_Vector_base<openzl::visualizer::StreamdumpEntry, std::allocator<openzl::visualizer::StreamdumpEntry>>::_Vector_impl" }
%"struct.std::_Vector_base<openzl::visualizer::StreamdumpEntry, std::allocator<openzl::visualizer::StreamdumpEntry>>::_Vector_impl" = type { %"struct.std::_Vector_base<openzl::visualizer::StreamdumpEntry, std::allocator<openzl::visualizer::StreamdumpEntry>>::_Vector_impl_data" }
%"struct.std::_Vector_base<openzl::visualizer::StreamdumpEntry, std::allocator<openzl::visualizer::StreamdumpEntry>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.openzl::visualizer::StreamdumpEntry" = type { i64, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.openzl::visualizer::DecompressChunkTrace" = type { i64, i8, i64, i64, %"class.std::map", %"class.std::map.11", %"class.std::vector.17" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<ZL_DataID, std::pair<const ZL_DataID, openzl::visualizer::Stream>, std::_Select1st<std::pair<const ZL_DataID, openzl::visualizer::Stream>>, openzl::visualizer::ZL_DataIDCustomComparator>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<ZL_DataID, std::pair<const ZL_DataID, openzl::visualizer::Stream>, std::_Select1st<std::pair<const ZL_DataID, openzl::visualizer::Stream>>, openzl::visualizer::ZL_DataIDCustomComparator>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.std::vector.17" = type { %"struct.std::_Vector_base.18" }
%"struct.std::_Vector_base.18" = type { %"struct.std::_Vector_base<openzl::visualizer::Codec, std::allocator<openzl::visualizer::Codec>>::_Vector_impl" }
%"struct.std::_Vector_base<openzl::visualizer::Codec, std::allocator<openzl::visualizer::Codec>>::_Vector_impl" = type { %"struct.std::_Vector_base<openzl::visualizer::Codec, std::allocator<openzl::visualizer::Codec>>::_Vector_impl_data" }
%"struct.std::_Vector_base<openzl::visualizer::Codec, std::allocator<openzl::visualizer::Codec>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<openzl::visualizer::DecompressChunkTrace, std::allocator<openzl::visualizer::DecompressChunkTrace>>::_Vector_impl" }
%"struct.std::_Vector_base<openzl::visualizer::DecompressChunkTrace, std::allocator<openzl::visualizer::DecompressChunkTrace>>::_Vector_impl" = type { %"struct.std::_Vector_base<openzl::visualizer::DecompressChunkTrace, std::allocator<openzl::visualizer::DecompressChunkTrace>>::_Vector_impl_data" }
%"struct.std::_Vector_base<openzl::visualizer::DecompressChunkTrace, std::allocator<openzl::visualizer::DecompressChunkTrace>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.A1C_Arena = type { ptr, ptr }
%"class.std::vector.29" = type { %"struct.std::_Vector_base.30" }
%"struct.std::_Vector_base.30" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }
%struct.A1C_MapBuilder = type { ptr, ptr, i64 }
%struct.A1C_ArrayBuilder = type { ptr, ptr, i64 }
%struct.A1C_Error = type { i32, i64, i64, ptr, ptr, i32 }
%"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const unsigned long, std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>, std::less<unsigned long>>::_Alloc_node" = type { ptr }
%"struct.std::_Rb_tree<ZL_DataID, std::pair<const ZL_DataID, openzl::visualizer::Stream>, std::_Select1st<std::pair<const ZL_DataID, openzl::visualizer::Stream>>, openzl::visualizer::ZL_DataIDCustomComparator>::_Alloc_node" = type { ptr }
%class.anon.102 = type { ptr }

$_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE7reserveEm = comdat any

$_ZN6openzl10visualizer15StreamdumpEntryD2Ev = comdat any

$_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EED2Ev = comdat any

$_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev = comdat any

$_ZN6openzl10visualizer20DecompressChunkTraceD2Ev = comdat any

$_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIhSaIhEE6resizeEm = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E = comdat any

$_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEED2Ev = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN6openzl10visualizer5CodecEEEvT_S6_ = comdat any

$_ZN6openzl11LocalParamsD2Ev = comdat any

$_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E = comdat any

$_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E = comdat any

$_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN6openzl10visualizer20DecompressChunkTraceEEEvT_S6_ = comdat any

$_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_ = comdat any

$_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE17_M_realloc_insertIJRKmRbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZSt19__relocate_object_aIN6openzl10visualizer20DecompressChunkTraceES2_SaIS2_EEvPT_PT0_RT1_ = comdat any

$_ZN6openzl10visualizer20DecompressChunkTraceC2ERKS1_ = comdat any

$_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EEC2ERKS4_ = comdat any

$_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESG_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt4pairIK9ZL_DataIDN6openzl10visualizer6StreamEEC2ERKS5_ = comdat any

$_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEC1ERKSH_EUlOT_T0_E_JRKSt7variantIJS6_S8_SG_EEEEDcOSM_DpOT1_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_ = comdat any

$_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_ = comdat any

$_ZN6openzl10visualizer5CodecC2ERKS1_ = comdat any

$_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_ = comdat any

$_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE17_M_realloc_insertIJRmRbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

@_ZN6openzl10visualizerL14MAIN_CHUNK_IDXE = internal constant i64 0, align 8
@ZL_g_logLevel = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [89 x i8] c"/opt-bench/work/openzl/openzl/cpp/src/openzl/cpp/experimental/trace/DecompressTracer.cpp\00", align 1
@__func__._ZN6openzl10visualizer16DecompressTracer37on_ZL_DCtx_decompressMultiTBuffer_endEP9ZL_DCtx_s18ZL_Result_size_t_u = private unnamed_addr constant [38 x i8] c"on_ZL_DCtx_decompressMultiTBuffer_end\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to serialize decompression trace!\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to serialize decompression trace.\00", align 1
@_ZTISt13runtime_error = external constant ptr
@.str.3 = private unnamed_addr constant [48 x i8] c"Failed to write serialized decompression trace!\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Failed to write serialized decompression trace.\00", align 1
@_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info = internal constant %struct.ZL_StaticErrorInfo_s { i32 70, ptr @.str.5, ptr @.str, ptr @.str.6, i32 142 }, align 8
@.str.5 = private unnamed_addr constant [80 x i8] c"Check `(const char*)(const void*)root == (const char*)0' failed: Allocation: %s\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"serializeStreamdumpToCbor\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (unknown) %lld\0A\09rhs = (unknown) %lld\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"(const char*)(const void*)root\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"(const char*)0\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info_0 = internal constant %struct.ZL_StaticErrorInfo_s { i32 70, ptr @.str.13, ptr @.str, ptr @.str.6, i32 147 }, align 8
@.str.13 = private unnamed_addr constant [91 x i8] c"Check `(const char*)(const void*)rootBuilder.map == (const char*)0' failed: Allocation: %s\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"(const char*)(const void*)rootBuilder.map\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"libraryVersion\00", align 1
@_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info_1 = internal constant %struct.ZL_StaticErrorInfo_s { i32 1, ptr @.str.16, ptr @.str, ptr @.str.6, i32 150 }, align 8
@.str.16 = private unnamed_addr constant [21 x i8] c"Forwarding error: %s\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"frameVersion\00", align 1
@_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info_2 = internal constant %struct.ZL_StaticErrorInfo_s { i32 1, ptr @.str.16, ptr @.str, ptr @.str.6, i32 152 }, align 8
@.str.19 = private unnamed_addr constant [13 x i8] c"traceVersion\00", align 1
@_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info_3 = internal constant %struct.ZL_StaticErrorInfo_s { i32 1, ptr @.str.16, ptr @.str, ptr @.str.6, i32 154 }, align 8
@.str.20 = private unnamed_addr constant [14 x i8] c"operationType\00", align 1
@_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info_4 = internal constant %struct.ZL_StaticErrorInfo_s { i32 1, ptr @.str.16, ptr @.str, ptr @.str.6, i32 155 }, align 8
@.str.21 = private unnamed_addr constant [16 x i8] c"Wrapping error.\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"chunks\00", align 1
@_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info_5 = internal constant %struct.ZL_StaticErrorInfo_s { i32 70, ptr @.str.23, ptr @.str, ptr @.str.6, i32 162 }, align 8
@.str.23 = private unnamed_addr constant [95 x i8] c"Check `(const char*)(const void*)chunksBuilder.array == (const char*)0' failed: Allocation: %s\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"(const char*)(const void*)chunksBuilder.array\00", align 1
@_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info_6 = internal constant %struct.ZL_StaticErrorInfo_s { i32 1, ptr @.str.16, ptr @.str, ptr @.str.6, i32 165 }, align 8
@_ZZN6openzl10visualizer16DecompressTracer25serializeStreamdumpToCborEP9A1C_ArenaRSt6vectorIhSaIhEEE22__zl_static_error_info_7 = internal constant %struct.ZL_StaticErrorInfo_s { i32 70, ptr @.str.25, ptr @.str, ptr @.str.6, i32 177 }, align 8
@.str.25 = private unnamed_addr constant [59 x i8] c"Check `bytesWritten != encodedSize' failed: Allocation: %s\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"bytesWritten\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"encodedSize\00", align 1
@_ZZL21A1C_MapBuilder_tryAdd14A1C_MapBuilderE22__zl_static_error_info = internal constant %struct.ZL_StaticErrorInfo_s { i32 70, ptr @.str.29, ptr @.str.30, ptr @.str.31, i32 99 }, align 8
@.str.29 = private unnamed_addr constant [80 x i8] c"Check `(const char*)(const void*)pair == (const char*)0' failed: Allocation: %s\00", align 1
@.str.30 = private unnamed_addr constant [65 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/common/a1cbor_helpers.h\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"A1C_MapBuilder_tryAdd\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"(const char*)(const void*)pair\00", align 1
@_ZZL21A1C_MapBuilder_tryAdd14A1C_MapBuilderE22__zl_static_error_info_0 = internal constant %struct.ZL_StaticErrorInfo_s { i32 1, ptr @.str.33, ptr @.str.30, ptr @.str.31, i32 101 }, align 8
@.str.33 = private unnamed_addr constant [77 x i8] c"Check `(const char*)(const void*)pair == (const char*)0' failed: Generic: %s\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl10visualizer16DecompressTracer12extractTraceEv(ptr dead_on_unwind noalias writable sret(%"struct.openzl::visualizer::TraceResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::map.11", align 8       ; 10 uses
  %3 = alloca %"class.std::vector.22", align 16   ; 13 uses
  %4 = alloca %"struct.openzl::visualizer::StreamdumpEntry", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 152                 ; 4 uses
  %5 = icmp ugt i64 %i.i, 384307168202282325
  br i1 %5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24
  %i.q = icmp ult i64 %i.p, %i.i
  br i1 %i.q, label %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 3 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.n
  %i.v = mul nuw nsw i64 %i.i, 24
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #20 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.l, %i.s
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.w, %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.l, %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE11_M_allocateEm.exit.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !27, !alias.scope !124, !noalias !123
  store <2 x ptr> %i.x, ptr %.012.i.i.i.i, align 8, !tbaa !27, !alias.scope !123, !noalias !124
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29, !alias.scope !124, !noalias !123
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !29, !alias.scope !123, !noalias !124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !124, !noalias !123
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.s
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !24
  br label %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.loopexit.i, %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE11_M_allocateEm.exit.i
  %i.ad = phi ptr [ %.pre.i, %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.loopexit.i ], [ %i.l, %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.ad, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ah) #21
  br label %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.w, ptr %i.a, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store ptr %i.ai, ptr %i.r, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.i
  store ptr %i.aj, ptr %i.j, align 8, !tbaa !23
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !31
  %.pre33 = load ptr, ptr %i.c, align 8, !tbaa !31
  br label %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE7reserveEm.exit

_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.ak = phi ptr [ %i.d, %bb.c ], [ %.pre33, %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit.i ] ; 2 uses
  %i.al = phi ptr [ %i.e, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseISt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS3_EESaIS5_EE13_M_deallocateEPS5_m.exit.i ] ; 2 uses
  %.not29 = icmp eq ptr %i.al, %i.ak
  br i1 %.not29, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE7reserveEm.exit
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 10 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 10 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  br label %bb.f

._crit_edge32:                                    ; preds = %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit, %_ZNSt6vectorIS_IN6openzl10visualizer15StreamdumpEntryESaIS2_EESaIS4_EE7reserveEm.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bb, ptr %0, align 8, !tbaa !34
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !37 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %._crit_edge32
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !38 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false)
  br label %_ZN6openzl10visualizer11TraceResultC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge32
  store ptr %i.bc, ptr %0, align 8, !tbaa !37
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !39
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !39
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre39 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %_ZN6openzl10visualizer11TraceResultC2EOS1_.exit

_ZN6openzl10visualizer11TraceResultC2EOS1_.exit:  ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bk = phi i64 [ %i.bg, %bb.e ], [ %.pre39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !38
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !37
  store i64 0, ptr %i.bl, align 8, !tbaa !38
  store i8 0, ptr %i.bd, align 8, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load <2 x ptr>, ptr %i.a, align 8, !tbaa !125
  store <2 x ptr> %i.bo, ptr %i.bn, align 8, !tbaa !125
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bq = load ptr, ptr %i.j, align 8, !tbaa !23
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void

bb.f:                                             ; preds = %.lr.ph31, %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit
  %.sroa.023.030 = phi ptr [ %i.al, %.lr.ph31 ], [ %i.fi, %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.br = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6openzl10visualizer20DecompressChunkTrace13getStreamdumpB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.023.030) ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !45
  store ptr %i.bt, ptr %i.an, align 8, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.by = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !46
  store <2 x ptr> %i.by, ptr %i.ao, align 8, !tbaa !46
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.am, ptr %i.bz, align 8, !tbaa !47
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 40 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !48
  store i64 %i.cb, ptr %i.aq, align 8, !tbaa !48
  store ptr null, ptr %i.bs, align 8, !tbaa !44
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !49
  store ptr %i.bu, ptr %i.bx, align 8, !tbaa !50
  store i64 0, ptr %i.ca, align 8, !tbaa !48
  %.pre34 = load i64, ptr %i.aq, align 8, !tbaa !48
  br label %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEEC2EOSD_.exit

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %i.an, align 8, !tbaa !44
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !49
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !50
  store i64 0, ptr %i.aq, align 8, !tbaa !48
  br label %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEEC2EOSD_.exit

_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEEC2EOSD_.exit: ; preds = %bb.g, %bb.h
  %i.cc = phi i64 [ 0, %bb.h ], [ %.pre34, %bb.g ]
  %.sink.i.i.i.i = phi i32 [ 0, %bb.h ], [ %i.bv, %bb.g ]
  store i32 %.sink.i.i.i.i, ptr %i.am, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.cc)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEEC2EOSD_.exit
  %i.cd = load ptr, ptr %i.ao, align 8, !tbaa !49 ; 2 uses
  %.not2627 = icmp eq ptr %i.cd, %i.am
  br i1 %.not2627, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6openzl10visualizer15StreamdumpEntryD2Ev.exit, %bb.i
  %i.ce = load ptr, ptr %i.az, align 8, !tbaa !25 ; 5 uses
  %i.cf = load ptr, ptr %i.j, align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.ce, %i.cf
  br i1 %.not.i.i, label %bb.j, label %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.thread

_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit.i.thread: ; preds = %._crit_edge
  %i.cg = load <2 x ptr>, ptr %3, align 16, !tbaa !27
  store <2 x ptr> %i.cg, ptr %i.ce, align 8, !tbaa !27
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ci = load ptr, ptr %i.ay, align 16, !tbaa !29
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !29
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
end_hunk_0
begin_hunk_1_@_ZN6openzl10visualizer15StreamdumpEntryD2Ev:bb.a
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !39
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !39
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6openzl10visualizer15StreamdumpEntryESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !39
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !39
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #21
  br label %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i

_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6openzl10visualizer15StreamdumpEntryEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.q = phi ptr [ %.pr, %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #21
  br label %_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN6openzl10visualizer15StreamdumpEntryESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6openzl10visualizer15StreamdumpEntryES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl10visualizer16DecompressTracer39on_ZL_DCtx_decompressMultiTBuffer_startEP9ZL_DCtx_smPKvm(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 4)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i32, i64 } @ZL_getFormatVersionFromFrame(ptr noundef %3, i64 noundef %4)
  %i.b = extractvalue { i32, i64 } %i.a, 1
  %i.c = trunc i64 %i.b to i32
  store i32 %i.c, ptr %0, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.e, align 8, !tbaa !68, !range !69, !noundef !70
  store i64 0, ptr %i.g, align 8, !tbaa !87
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %i.j, ptr %i.k, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  store i32 0, ptr %i.m, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr null, ptr %i.n, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store ptr %i.m, ptr %i.o, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr %i.m, ptr %i.p, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i64 0, ptr %i.q, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store ptr null, ptr %i.s, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store ptr %i.r, ptr %i.t, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr %i.r, ptr %i.u, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  store ptr %i.x, ptr %i.f, align 8, !tbaa !19
  br label %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12emplace_backIJRKmRbEEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE17_M_realloc_insertIJRKmRbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(8) @_ZN6openzl10visualizerL14MAIN_CHUNK_IDXE, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
  br label %_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12emplace_backIJRKmRbEEERS2_DpOT_.exit

_ZNSt6vectorIN6openzl10visualizer20DecompressChunkTraceESaIS2_EE12emplace_backIJRKmRbEEERS2_DpOT_.exit: ; preds = %bb.b, %bb.c
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.y, ptr %i.z, align 8, !tbaa !89
  %i.aa = tail call noundef ptr @ZL_DCtx_getOperationContext(ptr noundef readnone %1) #25
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !90
  ret void
}

declare { i32, i64 } @ZL_getFormatVersionFromFrame(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl10visualizer16DecompressTracer37on_ZL_DCtx_decompressMultiTBuffer_endEP9ZL_DCtx_s18ZL_Result_size_t_u(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, i32 %2, i64 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.openzl::visualizer::DecompressChunkTrace", align 8 ; 21 uses
  %5 = alloca %"class.std::vector.3", align 16    ; 15 uses
  %6 = alloca [1 x %"class.openzl::visualizer::DecompressChunkTrace"], align 8 ; 27 uses
  %7 = alloca %struct.A1C_Arena, align 8          ; 6 uses
  %8 = alloca %"class.std::vector.29", align 8    ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %.not4953 = icmp eq ptr %i.b, %i.d
  br i1 %.not4953, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !19
  %.pre66 = load ptr, ptr %i.a, align 8, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre66, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  %i.f = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.g, %i.h
  %9 = sdiv exact i64 %i.i, 152                   ; 2 uses
  %i.j = icmp ugt i64 %9, 1
  br i1 %i.j, label %bb.b, label %bb.z

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.046.054 = phi ptr [ %i.k, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN6openzl10visualizer20DecompressChunkTrace19resolveErrorStringsEPK9ZL_DCtx_s(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.046.054, ptr noundef %1)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.046.054, i64 152 ; 2 uses
  %.not49 = icmp eq ptr %i.k, %i.d
  br i1 %.not49, label %._crit_edge.loopexit, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i8, ptr %i.l, align 8, !tbaa !132, !range !69, !noundef !70
  %i.n = trunc nuw i8 %i.m to i1
  call void @_ZN6openzl10visualizer20DecompressChunkTrace18makeSegmenterChunkEmb(ptr dead_on_unwind nonnull writable sret(%"class.openzl::visualizer::DecompressChunkTrace") align 8 %4, i64 noundef %9, i1 noundef zeroext %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef nonnull align 8 dereferenceable(152) %4, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.q, ptr %i.t, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.o, ptr %i.y, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !48
  store ptr null, ptr %i.p, align 8, !tbaa !44
  store ptr %i.r, ptr %i.u, align 8, !tbaa !49
  store ptr %i.r, ptr %i.w, align 8, !tbaa !50
  store i64 0, ptr %i.z, align 8, !tbaa !48
  br label %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr null, ptr %i.ab, align 8, !tbaa !44
  br label %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i

_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i: ; preds = %bb.d, %bb.c
  %.sink62 = phi ptr [ %i.o, %bb.d ], [ %i.v, %bb.c ]
  %.sink61 = phi ptr [ %i.o, %bb.d ], [ %i.x, %bb.c ]
  %.sink = phi i64 [ 0, %bb.d ], [ %i.aa, %bb.c ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.s, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %.sink62, ptr %i.ac, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %.sink61, ptr %i.ad, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %.sink, ptr %i.ae, align 8, !tbaa !48
  store i32 %.sink.i.i.i.i.i, ptr %i.o, align 8, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i.i5.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i5.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 96
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.af, ptr %i.ap, align 8, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !48
  store ptr null, ptr %i.ag, align 8, !tbaa !44
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !49
  store ptr %i.ai, ptr %i.an, align 8, !tbaa !50
  store i64 0, ptr %i.aq, align 8, !tbaa !48
  br label %_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit

bb.f:                                             ; preds = %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 96
  store ptr null, ptr %i.as, align 8, !tbaa !44
  br label %_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit

_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit: ; preds = %bb.e, %bb.f
  %.sink65 = phi ptr [ %i.af, %bb.f ], [ %i.am, %bb.e ]
  %.sink64 = phi ptr [ %i.af, %bb.f ], [ %i.ao, %bb.e ]
  %.sink63 = phi i64 [ 0, %bb.f ], [ %i.ar, %bb.e ]
  %.sink.i.i.i.i6.i = phi i32 [ 0, %bb.f ], [ %i.aj, %bb.e ]
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 104
  store ptr %.sink65, ptr %i.at, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 112
  store ptr %.sink64, ptr %i.au, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i64 %.sink63, ptr %i.av, align 8, !tbaa !48
  store i32 %.sink.i.i.i.i6.i, ptr %i.af, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.az = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !91
  store <2 x ptr> %i.az, ptr %i.aw, align 8, !tbaa !91
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !92
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bd = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #20
          to label %.noexc unwind label %.body39.thread ; 5 uses

.noexc:                                           ; preds = %_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit
  store ptr %i.bd, ptr %5, align 16, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 152 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.be, ptr %i.bf, align 16, !tbaa !67
  invoke void @_ZN6openzl10visualizer20DecompressChunkTraceC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(152) %i.bd, ptr noundef nonnull align 8 dereferenceable(152) %6)
          to label %_ZSt10_ConstructIN6openzl10visualizer20DecompressChunkTraceEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.g

_ZSt10_ConstructIN6openzl10visualizer20DecompressChunkTraceEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !93
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !94
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6openzl10visualizer5CodecEEEvT_S6_(ptr noundef %i.bi, ptr noundef %i.bk)
          to label %_ZSt8_DestroyIPN6openzl10visualizer5CodecES2_EvT_S4_RSaIT0_E.exit.i.i unwind label %bb.m

bb.g:                                             ; preds = %.noexc
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  %i.bn = call ptr @__cxa_begin_catch(ptr %i.bm) #22 ; 0 uses
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6openzl10visualizer20DecompressChunkTraceEEEvT_S6_(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bd)
          to label %_ZSt8_DestroyIPN6openzl10visualizer20DecompressChunkTraceEEvT_S4_.exit.i.i.i.i.i unwind label %bb.h

_ZSt8_DestroyIPN6openzl10visualizer20DecompressChunkTraceEEvT_S4_.exit.i.i.i.i.i: ; preds = %bb.g
  invoke void @__cxa_rethrow() #19
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6openzl10visualizer20DecompressChunkTraceEEvT_S4_.exit.i.i.i.i.i, %bb.g
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body39 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #24
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6openzl10visualizer20DecompressChunkTraceEEvT_S4_.exit.i.i.i.i.i
  unreachable

.body39.thread:                                   ; preds = %_ZN6openzl10visualizer20DecompressChunkTraceC2EOS1_.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body39:                                          ; preds = %bb.h
  %.pr = load ptr, ptr %5, align 16, !tbaa !20    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %.body, label %bb.k

bb.k:                                             ; preds = %.body39
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !67
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.pr to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.bw) #21
  br label %.body

_ZSt8_DestroyIPN6openzl10visualizer5CodecES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt10_ConstructIN6openzl10visualizer20DecompressChunkTraceEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !93 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN6openzl10visualizer5CodecES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !92
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #21
  br label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i

bb.m:                                             ; preds = %_ZSt10_ConstructIN6openzl10visualizer20DecompressChunkTraceEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #24
  unreachable

_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i: ; preds = %bb.l, %_ZSt8_DestroyIPN6openzl10visualizer5CodecES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef %i.ch)
          to label %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit.i unwind label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i
end_hunk_1
begin_hunk_2_@_ZSt19__relocate_object_aIN6openzl10visualizer20DecompressChunkTraceES2_SaIS2_EEvPT_PT0_RT1_:bb.a

bb.e:                                             ; preds = %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2EOS9_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.ae, align 8, !tbaa !44
  br label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i: ; preds = %bb.d, %bb.e
  %.sink9 = phi ptr [ %i.r, %bb.e ], [ %i.y, %bb.d ]
  %.sink8 = phi ptr [ %i.r, %bb.e ], [ %i.aa, %bb.d ]
  %.sink7 = phi i64 [ 0, %bb.e ], [ %i.ad, %bb.d ]
  %.sink.i.i.i.i6.i = phi i32 [ 0, %bb.e ], [ %i.v, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sink9, ptr %i.af, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sink8, ptr %i.ag, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sink7, ptr %i.ah, align 8, !tbaa !48
  store i32 %.sink.i.i.i.i6.i, ptr %i.r, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !91
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !tbaa !91
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !92
  store ptr %i.an, ptr %i.al, align 8, !tbaa !92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef null)
          to label %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #24
  unreachable

_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef %i.as)
          to label %_ZN6openzl10visualizer20DecompressChunkTraceD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit.i
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #24
  unreachable

_ZN6openzl10visualizer20DecompressChunkTraceD2Ev.exit: ; preds = %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6openzl10visualizer20DecompressChunkTraceC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const unsigned long, std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>, std::less<unsigned long>>::_Alloc_node", align 8 ; 4 uses
  %3 = alloca %"struct.std::_Rb_tree<ZL_DataID, std::pair<const ZL_DataID, openzl::visualizer::Stream>, std::_Select1st<std::pair<const ZL_DataID, openzl::visualizer::Stream>>, openzl::visualizer::ZL_DataIDCustomComparator>::_Alloc_node", align 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2ERKS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.a, ptr %3, align 8, !tbaa !200
  %i.i = call noundef ptr @_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc.i.i, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ %i.k, %.noexc.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !197

_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.d, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.i, %_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102  ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i8.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !198

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.e, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !48
  store i64 %i.o, ptr %i.f, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store ptr %i.i, ptr %i.c, align 8, !tbaa !46
  br label %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2ERKS9_.exit

_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2ERKS9_.exit: ; preds = %bb.a, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store i32 0, ptr %i.q, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.q, ptr %i.s, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.q, ptr %i.t, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i64 0, ptr %i.u, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44   ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.w, null
  br i1 %.not.i.i8, label %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEEC2ERKSD_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2ERKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.p, ptr %2, align 8, !tbaa !202
  %i.x = invoke noundef ptr @_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull %i.w, ptr noundef nonnull %i.q, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.i9 unwind label %bb.i ; 3 uses

.noexc.i.i9:                                      ; preds = %bb.e, %.noexc.i.i9
  %.0.i.i.i.i.i.i10 = phi ptr [ %i.z, %.noexc.i.i9 ], [ %i.x, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i10, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i.i.i.i11 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i11, label %_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i9, !llvm.loop !197

_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i9
  store ptr %.0.i.i.i.i.i.i10, ptr %i.s, align 8, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i12 = phi ptr [ %i.x, %_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.ab, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i12, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !102 ; 2 uses
  %.not.i.i8.i.i.i.i13 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i8.i.i.i.i13, label %bb.g, label %bb.f, !llvm.loop !198

bb.g:                                             ; preds = %bb.f
  store ptr %.0.i.i7.i.i.i.i12, ptr %i.t, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !48
  store i64 %i.ad, ptr %i.u, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store ptr %i.x, ptr %i.r, align 8, !tbaa !46
  br label %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEEC2ERKSD_.exit

_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEEC2ERKSD_.exit: ; preds = %bb.g, %_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEC2ERKS9_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEEC2ERKSD_.exit
  ret void

bb.i:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEEC2ERKSD_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.p) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !93     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 360
  %i.g = icmp ugt i64 %2, 25620477880152155
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN6openzl10visualizer5CodecEE8allocateEmPKv.exit.i.i.i, !prof !99

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt15__new_allocatorIN6openzl10visualizer5CodecEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN6openzl10visualizer5CodecEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN6openzl10visualizer5CodecEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !94
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !92
  %i.m = load ptr, ptr %1, align 8, !tbaa !91     ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6openzl10visualizer5CodecESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN6openzl10visualizer5CodecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN6openzl10visualizer5CodecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN6openzl10visualizer5CodecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN6openzl10visualizer5CodecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(360) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN6openzl10visualizer5CodecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN6openzl10visualizer5CodecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 360 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 360 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6openzl10visualizer5CodecESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !203

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #22 ; 0 uses
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6openzl10visualizer5CodecEEEvT_S6_(ptr noundef %i.i, ptr noundef nonnull %.014.i.i.i.i)
          to label %_ZSt8_DestroyIPN6openzl10visualizer5CodecEEvT_S4_.exit.i.i.i.i unwind label %bb.e

_ZSt8_DestroyIPN6openzl10visualizer5CodecEEvT_S4_.exit.i.i.i.i: ; preds = %bb.d
  invoke void @__cxa_rethrow() #19
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6openzl10visualizer5CodecEEvT_S4_.exit.i.i.i.i, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #24
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6openzl10visualizer5CodecEEvT_S4_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6openzl10visualizer5CodecESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6openzl10visualizer5CodecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructIN6openzl10visualizer5CodecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !94
  ret void

.body:                                            ; preds = %bb.e
  %i.w = load ptr, ptr %0, align 8, !tbaa !93     ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !92
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #21
  br label %_ZNSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #20 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  invoke void @_ZNSt4pairIK9ZL_DataIDN6openzl10visualizer6StreamEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.a)
          to label %_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE13_M_clone_nodeILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESG_RT0_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.e) #22 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 192) #21
  invoke void @__cxa_rethrow() #19
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.d

common.resume:                                    ; preds = %bb.t, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.ak, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE13_M_clone_nodeILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESG_RT0_.exit: ; preds = %bb.a
  %i.j = load i32, ptr %1, align 8, !tbaa !115
  store i32 %i.j, ptr %i.b, align 8, !tbaa !115
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !102  ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE13_M_clone_nodeILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESG_RT0_.exit
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.o, ptr %i.p, align 8, !tbaa !102
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.i:                                             ; preds = %bb.g, %_ZNSt8_Rb_treeI9ZL_DataIDSt4pairIKS0_N6openzl10visualizer6StreamEESt10_Select1stIS6_ENS4_25ZL_DataIDCustomComparatorESaIS6_EE13_M_clone_nodeILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESG_RT0_.exit
  %.030.in36 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03037 = load ptr, ptr %.030.in36, align 8, !tbaa !103 ; 2 uses
  %.not3238 = icmp eq ptr %.03037, null
  br i1 %.not3238, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.s
  %.03040 = phi ptr [ %.030, %bb.s ], [ %.03037, %bb.i ] ; 4 uses
  %.03139 = phi ptr [ %i.r, %bb.s ], [ %i.b, %bb.i ] ; 2 uses
  %i.r = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #20
          to label %.noexc unwind label %bb.q     ; 9 uses

.noexc:                                           ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.03040, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  invoke void @_ZNSt4pairIK9ZL_DataIDN6openzl10visualizer6StreamEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(160) %i.t, ptr noundef nonnull align 8 dereferenceable(160) %i.s)
          to label %bb.n unwind label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #22 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 192) #21
  invoke void @__cxa_rethrow() #19
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #24
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable

bb.n:                                             ; preds = %.noexc
  %i.aa = load i32, ptr %.03040, align 8, !tbaa !115
  store i32 %i.aa, ptr %i.r, align 8, !tbaa !115
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.03139, i64 16
  store ptr %i.r, ptr %i.ac, align 8, !tbaa !103
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
end_hunk_2
