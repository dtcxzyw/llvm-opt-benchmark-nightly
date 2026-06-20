inline.NumInlined: 2123
inline.NumDeleted: 685
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.absl::base_internal::AtomicHook" = type { %"struct.std::atomic.2", ptr }
%"struct.std::atomic.2" = type { %"struct.std::__atomic_base.3" }
%"struct.std::__atomic_base.3" = type { ptr }
%"struct.absl::cord_internal::SamplingState" = type { i64, i64 }
%struct.StringReleaser = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.0 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.0 = type { i64, [8 x i8] }
%"class.absl::InlinedVector" = type { %"class.absl::inlined_vector_internal::Storage" }
%"class.absl::inlined_vector_internal::Storage" = type { %"class.absl::container_internal::CompressedTuple", %"union.absl::inlined_vector_internal::Storage<absl::cord_internal::CordRep *, 2, std::allocator<absl::cord_internal::CordRep *>>::Data" }
%"class.absl::container_internal::CompressedTuple" = type { %"struct.absl::container_internal::internal_compressed_tuple::CompressedTupleImpl" }
%"struct.absl::container_internal::internal_compressed_tuple::CompressedTupleImpl" = type { %"struct.absl::container_internal::internal_compressed_tuple::Storage.14" }
%"struct.absl::container_internal::internal_compressed_tuple::Storage.14" = type { i64 }
%"union.absl::inlined_vector_internal::Storage<absl::cord_internal::CordRep *, 2, std::allocator<absl::cord_internal::CordRep *>>::Data" = type { %"struct.absl::inlined_vector_internal::Storage<absl::cord_internal::CordRep *, 2, std::allocator<absl::cord_internal::CordRep *>>::Allocated" }
%"struct.absl::inlined_vector_internal::Storage<absl::cord_internal::CordRep *, 2, std::allocator<absl::cord_internal::CordRep *>>::Allocated" = type { ptr, i64 }
%"class.std::allocator" = type { i8 }
%"class.absl::CordBuffer" = type { %"struct.absl::CordBuffer::Rep" }
%"struct.absl::CordBuffer::Rep" = type { %union.anon.1 }
%union.anon.1 = type { %"struct.absl::CordBuffer::Rep::Long" }
%"struct.absl::CordBuffer::Rep::Long" = type { ptr, ptr }
%"class.absl::Cord" = type { %"class.absl::Cord::InlineRep" }
%"class.absl::Cord::InlineRep" = type { %"class.absl::cord_internal::InlineData" }
%"class.absl::cord_internal::InlineData" = type { %"struct.absl::cord_internal::InlineData::Rep" }
%"struct.absl::cord_internal::InlineData::Rep" = type { %union.anon }
%union.anon = type { %"struct.absl::cord_internal::InlineData::Rep::AsTree" }
%"struct.absl::cord_internal::InlineData::Rep::AsTree" = type { i64, ptr }
%"class.absl::Cord::ChunkIterator" = type { %"class.std::basic_string_view", ptr, i64, %"class.absl::cord_internal::CordRepBtreeReader" }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.absl::cord_internal::CordRepBtreeReader" = type { i64, %"class.absl::cord_internal::CordRepBtreeNavigator" }
%"class.absl::cord_internal::CordRepBtreeNavigator" = type { i32, [12 x i8], [12 x ptr] }
%"class.absl::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%"class.absl::crc_internal::CrcCordState" = type { ptr }
%"struct.absl::crc_internal::CrcCordState::PrefixCrc" = type <{ i64, %"class.absl::crc32c_t", [4 x i8] }>
%"class.absl::crc32c_t" = type { i32 }
%"class.absl::Cord::CharIterator" = type { %"class.absl::Cord::ChunkIterator" }
%"class.absl::str_format_internal::Streamable" = type { ptr, %"class.absl::InlinedVector.25" }
%"class.absl::InlinedVector.25" = type { %"class.absl::inlined_vector_internal::Storage.26" }
%"class.absl::inlined_vector_internal::Storage.26" = type { %"class.absl::container_internal::CompressedTuple.27", %"union.absl::inlined_vector_internal::Storage<absl::str_format_internal::FormatArgImpl, 4, std::allocator<absl::str_format_internal::FormatArgImpl>>::Data" }
%"class.absl::container_internal::CompressedTuple.27" = type { %"struct.absl::container_internal::internal_compressed_tuple::CompressedTupleImpl.28" }
%"struct.absl::container_internal::internal_compressed_tuple::CompressedTupleImpl.28" = type { %"struct.absl::container_internal::internal_compressed_tuple::Storage.33" }
%"struct.absl::container_internal::internal_compressed_tuple::Storage.33" = type { i64 }
%"union.absl::inlined_vector_internal::Storage<absl::str_format_internal::FormatArgImpl, 4, std::allocator<absl::str_format_internal::FormatArgImpl>>::Data" = type { %"struct.absl::inlined_vector_internal::Storage<absl::str_format_internal::FormatArgImpl, 4, std::allocator<absl::str_format_internal::FormatArgImpl>>::Allocated", [48 x i8] }
%"struct.absl::inlined_vector_internal::Storage<absl::str_format_internal::FormatArgImpl, 4, std::allocator<absl::str_format_internal::FormatArgImpl>>::Allocated" = type { ptr, i64 }
%"class.absl::str_format_internal::FormatSpecTemplate" = type { %"class.absl::UntypedFormatSpec" }
%"class.absl::UntypedFormatSpec" = type { %"class.absl::str_format_internal::UntypedFormatSpecImpl" }
%"class.absl::str_format_internal::UntypedFormatSpecImpl" = type { ptr, i64 }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"struct.std::_Deque_iterator.65" = type { ptr, ptr, ptr, ptr }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }

$_ZN4absl4CordC5INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3std7is_sameIT_S7_EE5valueEiE4typeELi0EEEOS9_ = comdat any

$_ZN4absl4Cord6AppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3std7is_sameIT_S7_EE5valueEiE4typeELi0EEEvOS9_ = comdat any

$_ZN4absl4Cord7PrependINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnNSt9enable_ifIXsr3std7is_sameIT_S7_EE5valueEiE4typeELi0EEEvOS9_ = comdat any

$_ZNK4absl13cord_internal10InlineData10cordz_infoEv = comdat any

$_ZN4absl13cord_internal7CordRep5UnrefEPS1_ = comdat any

$_ZNK4absl4Cord9InlineRep10cordz_infoEv = comdat any

$_ZN4absl4Cord10AppendImplIRKS0_EEvOT_ = comdat any

$_ZN4absl4Cord10AppendImplIS0_EEvOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN4absl8AlphaNumC2Em = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN4absl4Cord9InlineRep13remove_prefixEm = comdat any

$_ZN4absl12crc_internal12CrcCordState11mutable_repEv = comdat any

$_ZN4absl14GenericCompareIbNS_4CordEEET_RKS1_RKT0_m = comdat any

$_ZN4absl17SharedCompareImplISt17basic_string_viewIcSt11char_traitsIcEEEEiRKNS_4CordERKT_ = comdat any

$_ZN4absl4CordC2ERKS0_ = comdat any

$_ZN4absl13cord_internal18CordRepBtreeReader4NextEv = comdat any

$_ZN4absl23inlined_vector_internal7StorageIPNS_13cord_internal7CordRepELm2ESaIS4_EE15EmplaceBackSlowIJRKS4_EEERS4_DpOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZN4absl13cord_internal10InlineData18is_either_profiledERKS1_S3_ = comdat any

$_ZN4absl13cord_internal12CordRepBtree15GetAppendBufferEm = comdat any

$_ZN4absl10CordBuffer25CreateWithCustomLimitImplIJEEES0_mmDpT_ = comdat any

$_ZN4absl4Cord13ChunkIterator8InitTreeEPNS_13cord_internal7CordRepE = comdat any

$_ZN4absl13cord_internal21CordRepBtreeNavigator4InitILNS0_12CordRepBtree8EdgeTypeE0EEEPNS0_7CordRepEPS3_ = comdat any

$_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm = comdat any

$_ZN4absl13cord_internal18CordRepBtreeReader4SeekEm = comdat any

$_ZN4absl13cord_internal21CordRepBtreeNavigator4SeekEm = comdat any

$_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EEaSERKS5_ = comdat any

$_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE19_M_range_insert_auxISt15_Deque_iteratorIS3_RKS3_PS8_EEEvS7_IS3_RS3_PS3_ET_SF_St20forward_iterator_tag = comdat any

$_ZSt15__copy_move_ditILb0EN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_St15_Deque_iteratorIS3_RS3_PS3_EET3_S7_IT0_T1_T2_ESF_SB_ = comdat any

$_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE13_M_insert_auxISt15_Deque_iteratorIS3_RKS3_PS8_EEEvS7_IS3_RS3_PS3_ET_SF_m = comdat any

$_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE24_M_new_elements_at_frontEm = comdat any

$_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE17_M_reallocate_mapEmb = comdat any

$_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE23_M_new_elements_at_backEm = comdat any

$_ZSt15__copy_move_ditILb1EN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_St15_Deque_iteratorIS3_S4_S5_EET3_S6_IT0_T1_T2_ESC_S8_ = comdat any

$_ZSt24__copy_move_backward_ditILb1EN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_St15_Deque_iteratorIS3_S4_S5_EET3_S6_IT0_T1_T2_ESC_S8_ = comdat any

$_ZN4absl13cord_internal21CordRepBtreeNavigator6NextUpEv = comdat any

$_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_ = comdat any

$_ZNK4absl4Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm = comdat any

$_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv = comdat any

$_ZNK4absl13cord_internal12CordRepBtree4DataEm = comdat any

$_ZNK4absl4Cord15CompareSlowPathERKS0_mm = comdat any

$_ZN4absl14GenericCompareIiNS_4CordEEET_RKS1_RKT0_m = comdat any

@.str = private unnamed_addr constant [14 x i8] c"!data.empty()\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/strings/cord.cc\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal25InitializeCordRepExternalESt17basic_string_viewIcSt11char_traitsIcEEPNS0_15CordRepExternalE = private unnamed_addr constant [99 x i8] c"void absl::cord_internal::InitializeCordRepExternal(absl::string_view, CordRepExternal * _Nonnull)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"!is_tree()\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep19AppendTreeToInlinedEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE = private unnamed_addr constant [86 x i8] c"void absl::Cord::InlineRep::AppendTreeToInlined(CordRep * _Nonnull, MethodIdentifier)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"is_tree()\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep16AppendTreeToTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE = private unnamed_addr constant [83 x i8] c"void absl::Cord::InlineRep::AppendTreeToTree(CordRep * _Nonnull, MethodIdentifier)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"tree != nullptr\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep10AppendTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE = private unnamed_addr constant [77 x i8] c"void absl::Cord::InlineRep::AppendTree(CordRep * _Nonnull, MethodIdentifier)\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"tree->length != 0\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"!tree->IsCrc()\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep20PrependTreeToInlinedEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE = private unnamed_addr constant [87 x i8] c"void absl::Cord::InlineRep::PrependTreeToInlined(CordRep * _Nonnull, MethodIdentifier)\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep17PrependTreeToTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE = private unnamed_addr constant [84 x i8] c"void absl::Cord::InlineRep::PrependTreeToTree(CordRep * _Nonnull, MethodIdentifier)\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep11PrependTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE = private unnamed_addr constant [78 x i8] c"void absl::Cord::InlineRep::PrependTree(CordRep * _Nonnull, MethodIdentifier)\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"&src != this\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep10AssignSlowERKS1_ = private unnamed_addr constant [64 x i8] c"void absl::Cord::InlineRep::AssignSlow(const Cord::InlineRep &)\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"is_tree() || src.is_tree()\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"contents_.is_tree()\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord15DestroyCordSlowEv = private unnamed_addr constant [35 x i8] c"void absl::Cord::DestroyCordSlow()\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"src.size() > kMaxBytesToCopy\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord17AssignLargeStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = private unnamed_addr constant [52 x i8] c"Cord &absl::Cord::AssignLargeString(std::string &&)\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"!src.empty()\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord13AppendPreciseESt17basic_string_viewIcSt11char_traitsIcEENS_13cord_internal18CordzUpdateTracker16MethodIdentifierE = private unnamed_addr constant [68 x i8] c"void absl::Cord::AppendPrecise(absl::string_view, MethodIdentifier)\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"src.size() <= cord_internal::kMaxFlatLength\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord14PrependPreciseESt17basic_string_viewIcSt11char_traitsIcEENS_13cord_internal18CordzUpdateTracker16MethodIdentifierE = private unnamed_addr constant [69 x i8] c"void absl::Cord::PrependPrecise(absl::string_view, MethodIdentifier)\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Check n <= size() failed: \00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Requested prefix size \00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c" exceeds Cord's size \00", align 1
@_ZN4absl16raw_log_internal21internal_log_functionB5cxx11E = external local_unnamed_addr global %"class.absl::base_internal::AtomicHook", align 8
@.str.16 = private unnamed_addr constant [36 x i8] c"false && \22ABSL_UNREACHABLE reached\22\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord12RemovePrefixEm = private unnamed_addr constant [38 x i8] c"void absl::Cord::RemovePrefix(size_t)\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Requested suffix size \00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord12RemoveSuffixEm = private unnamed_addr constant [38 x i8] c"void absl::Cord::RemoveSuffix(size_t)\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"tree->IsFlat() || tree->IsSubstring()\00", align 1
@__PRETTY_FUNCTION__._ZNK4absl4Cord19CopyToArraySlowPathEPc = private unnamed_addr constant [60 x i8] c"void absl::Cord::CopyToArraySlowPath(char * _Nonnull) const\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"current_leaf_ != nullptr\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIterator19AdvanceAndReadBytesEm = private unnamed_addr constant [60 x i8] c"Cord absl::Cord::ChunkIterator::AdvanceAndReadBytes(size_t)\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"rep != nullptr\00", align 1
@__PRETTY_FUNCTION__._ZNK4absl4CordixEm = private unnamed_addr constant [42 x i8] c"char absl::Cord::operator[](size_t) const\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"offset < rep->length\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"rep->IsSubstring()\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"!needle.empty()\00", align 1
@__PRETTY_FUNCTION__._ZNK4absl4Cord8FindImplENS0_12CharIteratorESt17basic_string_viewIcSt11char_traitsIcEE = private unnamed_addr constant [85 x i8] c"absl::Cord::CharIterator absl::Cord::FindImpl(CharIterator, absl::string_view) const\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"it.chunk_iterator_.bytes_remaining_ >= needle.size()\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"!haystack_chunk.empty()\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord15FlattenSlowPathEv = private unnamed_addr constant [48 x i8] c"absl::string_view absl::Cord::FlattenSlowPath()\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord10GetFlatAuxEPNS_13cord_internal7CordRepEPSt17basic_string_viewIcSt11char_traitsIcEE = private unnamed_addr constant [85 x i8] c"static bool absl::Cord::GetFlatAux(CordRep * _Nonnull, absl::string_view * _Nonnull)\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord15ForEachChunkAuxEPNS_13cord_internal7CordRepENS_11FunctionRefIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE = private unnamed_addr constant [126 x i8] c"static void absl::Cord::ForEachChunkAux(absl::cord_internal::CordRep * _Nonnull, absl::FunctionRef<void (absl::string_view)>)\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"Check s <= kMaxFlatLength failed: \00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"Invalid length \00", align 1
@__PRETTY_FUNCTION__._ZN4absl16strings_internal14CordTestAccess11LengthToTagEm = private unnamed_addr constant [75 x i8] c"static uint8_t absl::strings_internal::CordTestAccess::LengthToTag(size_t)\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"rep\00", align 1
@.str.31 = private unnamed_addr constant [57 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/strings/cord.h\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE = private unnamed_addr constant [78 x i8] c"void absl::Cord::InlineRep::EmplaceTree(CordRep * _Nonnull, MethodIdentifier)\00", align 1
@_ZN4absl13cord_internal17cordz_next_sampleE = external thread_local global %"struct.absl::cord_internal::SamplingState", align 8
@.str.33 = private unnamed_addr constant [31 x i8] c"Check node != nullptr failed: \00", align 1
@__PRETTY_FUNCTION__._ZN4abslL10VerifyNodeEPNS_13cord_internal7CordRepES2_ = private unnamed_addr constant [62 x i8] c"bool absl::VerifyNode(CordRep * _Nonnull, CordRep * _Nonnull)\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"Check node->length != 0 failed: \00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Check !node->IsCrc() failed: \00", align 1
@.str.36 = private unnamed_addr constant [56 x i8] c"Check node->length <= node->flat()->Capacity() failed: \00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"Check node->external()->base != nullptr failed: \00", align 1
@.str.38 = private unnamed_addr constant [75 x i8] c"Check node->substring()->start < node->substring()->child->length failed: \00", align 1
@.str.39 = private unnamed_addr constant [91 x i8] c"Check node->substring()->start + node->length <= node->substring()->child->length failed: \00", align 1
@.str.40 = private unnamed_addr constant [73 x i8] c"Check node->crc()->child != nullptr || node->crc()->length == 0 failed: \00", align 1
@.str.41 = private unnamed_addr constant [65 x i8] c"Check node->crc()->length == node->crc()->child->length failed: \00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"Error at node \00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c" in:\00", align 1
@_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.48 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.51 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"CRC crc=\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"SUBSTRING @ \00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"EXTERNAL [\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"FLAT cap=\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.65 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.66 = private unnamed_addr constant [41 x i8] c"src.length() > cord_internal::kMaxInline\00", align 1
@__PRETTY_FUNCTION__._ZN4abslL17CordRepFromStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = private unnamed_addr constant [59 x i8] c"CordRep * _Nonnull absl::CordRepFromString(std::string &&)\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"false && \22n <= kMaxInline\22\00", align 1
@.str.68 = private unnamed_addr constant [75 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/strings/internal/cord_internal.h\00", align 1
@__PRETTY_FUNCTION__._ZZN4absl13cord_internal10InlineData15set_inline_dataEPKcmENKUlvE_clEv = private unnamed_addr constant [106 x i8] c"auto absl::cord_internal::InlineData::set_inline_data(const char *, size_t)::(lambda)::operator()() const\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"n <= 15\00", align 1
@.str.70 = private unnamed_addr constant [30 x i8] c"false && \22!self()->is_tree()\22\00", align 1
@__PRETTY_FUNCTION__._ZZNK4absl13cord_internal10InlineData3Rep11inline_sizeEvENKUlvE_clEv = private unnamed_addr constant [87 x i8] c"auto absl::cord_internal::InlineData::Rep::inline_size()::(lambda)::operator()() const\00", align 1
@__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData18copy_max_inline_toEPc = private unnamed_addr constant [71 x i8] c"void absl::cord_internal::InlineData::copy_max_inline_to(char *) const\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"edge != nullptr\00", align 1
@.str.72 = private unnamed_addr constant [76 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/strings/internal/cord_data_edge.h\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE = private unnamed_addr constant [54 x i8] c"bool absl::cord_internal::IsDataEdge(const CordRep *)\00", align 1
@__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData10cordz_infoEv = private unnamed_addr constant [63 x i8] c"CordzInfo *absl::cord_internal::InlineData::cordz_info() const\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"info & 1\00", align 1
@__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData7as_treeEv = private unnamed_addr constant [58 x i8] c"CordRep *absl::cord_internal::InlineData::as_tree() const\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep7SetTreeEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE = private unnamed_addr constant [82 x i8] c"void absl::Cord::InlineRep::SetTree(CordRep * _Nonnull, const CordzUpdateScope &)\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"data_.is_tree()\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep3RefEPS1_ = private unnamed_addr constant [61 x i8] c"static CordRep *absl::cord_internal::CordRep::Ref(CordRep *)\00", align 1
@__PRETTY_FUNCTION__._ZNK4absl4Cord9InlineRep7as_treeEv = private unnamed_addr constant [79 x i8] c"absl::cord_internal::CordRep * _Nonnull absl::Cord::InlineRep::as_tree() const\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE = private unnamed_addr constant [58 x i8] c"void absl::cord_internal::InlineData::set_tree(CordRep *)\00", align 1
@.str.75 = private unnamed_addr constant [35 x i8] c"data1.is_tree() && data2.is_tree()\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal10InlineData18is_either_profiledERKS1_S3_ = private unnamed_addr constant [104 x i8] c"static bool absl::cord_internal::InlineData::is_either_profiled(const InlineData &, const InlineData &)\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5UnrefEPS1_ = private unnamed_addr constant [59 x i8] c"static void absl::cord_internal::CordRep::Unref(CordRep *)\00", align 1
@.str.76 = private unnamed_addr constant [41 x i8] c"refcount > 0 || refcount & kImmortalFlag\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv = private unnamed_addr constant [74 x i8] c"bool absl::cord_internal::RefcountAndFlags::DecrementExpectHighRefcount()\00", align 1
@.str.77 = private unnamed_addr constant [35 x i8] c"tag >= FLAT && tag <= MAX_FLAT_TAG\00", align 1
@.str.78 = private unnamed_addr constant [75 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/strings/internal/cord_rep_flat.h\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep4flatEv = private unnamed_addr constant [50 x i8] c"CordRepFlat *absl::cord_internal::CordRep::flat()\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"rep->IsCrc()\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv = private unnamed_addr constant [54 x i8] c"void absl::Cord::InlineRep::MaybeRemoveEmptyCrcNode()\00", align 1
@.str.80 = private unnamed_addr constant [29 x i8] c"rep->crc()->child == nullptr\00", align 1
@.str.81 = private unnamed_addr constant [74 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/strings/internal/cord_rep_crc.h\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE = private unnamed_addr constant [55 x i8] c"CordRep *absl::cord_internal::RemoveCrcNode(CordRep *)\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"refcount.IsOne()\00", align 1
@.str.83 = private unnamed_addr constant [76 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/strings/internal/cord_rep_btree.h\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal12CordRepBtree15GetAppendBufferEm = private unnamed_addr constant [70 x i8] c"Span<char> absl::cord_internal::CordRepBtree::GetAppendBuffer(size_t)\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"IsBtree()\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv = private unnamed_addr constant [52 x i8] c"CordRepBtree *absl::cord_internal::CordRep::btree()\00", align 1
@__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep14SetTreeOrEmptyEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE = private unnamed_addr constant [90 x i8] c"void absl::Cord::InlineRep::SetTreeOrEmpty(CordRep * _Nullable, const CordzUpdateScope &)\00", align 1
@.str.85 = private unnamed_addr constant [64 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/strings/cord_buffer.h\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"IsPow2(block_size)\00", align 1
@__PRETTY_FUNCTION__._ZN4absl10CordBuffer25CreateWithCustomLimitImplIJEEES0_mmDpT_ = private unnamed_addr constant [121 x i8] c"static CordBuffer absl::CordBuffer::CreateWithCustomLimitImpl(size_t, size_t, AllocationHints...) [AllocationHints = <>]\00", align 1
@.str.89 = private unnamed_addr constant [32 x i8] c"false && \22length <= capacity()\22\00", align 1
@__PRETTY_FUNCTION__._ZZN4absl10CordBuffer9SetLengthEmENKUlvE_clEv = private unnamed_addr constant [71 x i8] c"auto absl::CordBuffer::SetLength(size_t)::(lambda)::operator()() const\00", align 1
@.str.91 = private unnamed_addr constant [30 x i8] c"false && \22size <= kMaxInline\22\00", align 1
@__PRETTY_FUNCTION__._ZZN4absl13cord_internal10InlineData3Rep15set_inline_sizeEmENKUlvE_clEv = private unnamed_addr constant [97 x i8] c"auto absl::cord_internal::InlineData::Rep::set_inline_size(size_t)::(lambda)::operator()() const\00", align 1
@.str.93 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c"IsSubstring()\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep9substringEv = private unnamed_addr constant [60 x i8] c"CordRepSubstring *absl::cord_internal::CordRep::substring()\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm = private unnamed_addr constant [92 x i8] c"static CordRep *absl::cord_internal::CordRepSubstring::Substring(CordRep *, size_t, size_t)\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"n != 0\00", align 1
end_hunk_0
begin_hunk_1_@_ZNK4absl4Cord20MaybeGetCrcCordStateEv:bb.a
  %i.f = load i8, ptr %i.e, align 4
  %i.g = icmp eq i8 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %spec.select = select i1 %i.g, ptr %i.h, ptr null
  br label %_ZN4absl13cord_internal7CordRep3crcEv.exit

_ZN4absl13cord_internal7CordRep3crcEv.exit:       ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZNK4absl4Cord16ExpectedChecksumEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i8, ptr %i.e, align 4
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %_ZN4absl13cord_internal7CordRep3crcEv.exit, label %bb.c

_ZN4absl13cord_internal7CordRep3crcEv.exit:       ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = tail call i32 @_ZNK4absl12crc_internal12CrcCordState8ChecksumEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #21
  %i.j = zext i32 %i.i to i64
  %i.k = or disjoint i64 %i.j, 4294967296
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %_ZN4absl13cord_internal7CordRep3crcEv.exit
  %.sroa.2.0 = phi i64 [ %i.k, %_ZN4absl13cord_internal7CordRep3crcEv.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.2.0
}

declare i32 @_ZNK4absl12crc_internal12CrcCordState8ChecksumEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4absl4Cord10EqualsImplESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8                 ; 2 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i.i, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i.i

_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i64, ptr %i.d, align 8
  br label %_ZNK4absl4Cord5emptyEv.exit.i.i

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl4Cord5emptyEv.exit.i.i

_ZNK4absl4Cord5emptyEv.exit.i.i:                  ; preds = %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i.i, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i.i
  %i.h = phi i64 [ %i.e, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i.i ], [ %i.g, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i.i ]
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.thread, label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i

_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i:        ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i
  %i.j = tail call { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = extractvalue { i64, ptr } %i.j, 1
  %i.m = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.k) ; 4 uses
  %.not.i = icmp ult i64 %3, %i.m
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.1, i32 noundef 977, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl14GenericCompareIbSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m) #20
  unreachable

bb.c:                                             ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i
  %.not19.i = icmp eq i64 %i.m, 0
  br i1 %.not19.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %2, i64 noundef %i.m) #25
  br label %.thread

.thread:                                          ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i, %bb.d, %bb.c
  %.sroa.0.0.i.i49 = phi i64 [ %i.m, %bb.d ], [ 0, %bb.c ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i.i ] ; 2 uses
  %i.o = phi i32 [ %i.n, %bb.d ], [ 0, %bb.c ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i.i ] ; 2 uses
  %i.p = icmp eq i64 %.sroa.0.0.i.i49, %3
  %i.q = icmp ne i32 %i.o, 0
  %or.cond.i = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond.i, label %_ZN4absl14GenericCompareIbSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.r = tail call noundef i32 @_ZNK4absl4Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2, i64 noundef %.sroa.0.0.i.i49, i64 noundef %3)
  br label %_ZN4absl14GenericCompareIbSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit

_ZN4absl14GenericCompareIbSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit: ; preds = %.thread, %bb.e
  %.0.in.i = phi i32 [ %i.r, %bb.e ], [ %i.o, %.thread ]
  %.0.i = icmp eq i32 %.0.in.i, 0
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4absl4Cord10EqualsImplERKS0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl14GenericCompareIbNS_4CordEEET_RKS1_RKT0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4absl14GenericCompareIbNS_4CordEEET_RKS1_RKT0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 8                 ; 2 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i

_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i:  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i64, ptr %i.d, align 8
  br label %_ZNK4absl4Cord5emptyEv.exit.i

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i: ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl4Cord5emptyEv.exit.i

_ZNK4absl4Cord5emptyEv.exit.i:                    ; preds = %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i
  %i.h = phi i64 [ %i.e, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i ], [ %i.g, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i ]
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK4absl4Cord5emptyEv.exit.i
  %i.j = tail call { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = extractvalue { i64, ptr } %i.j, 1
  br label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit

_ZN4absl4Cord13GetFirstChunkERKS0_.exit:          ; preds = %_ZNK4absl4Cord5emptyEv.exit.i, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.k, %bb.b ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i ]
  %.sroa.3.0.i = phi ptr [ %i.l, %bb.b ], [ null, %_ZNK4absl4Cord5emptyEv.exit.i ]
  %i.m = load i8, ptr %1, align 8                 ; 2 uses
  %i.n = trunc i8 %i.m to i1
  br i1 %i.n, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i24, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i18

_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i24: ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i64, ptr %i.p, align 8
  br label %_ZNK4absl4Cord5emptyEv.exit.i19

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i18: ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit
  %i.r = sext i8 %i.m to i64
  %i.s = lshr exact i64 %i.r, 1
  br label %_ZNK4absl4Cord5emptyEv.exit.i19

_ZNK4absl4Cord5emptyEv.exit.i19:                  ; preds = %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i18, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i24
  %i.t = phi i64 [ %i.q, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i24 ], [ %i.s, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i18 ]
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.thread, label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit25

_ZN4absl4Cord13GetFirstChunkERKS0_.exit25:        ; preds = %_ZNK4absl4Cord5emptyEv.exit.i19
  %i.v = tail call { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %.sroa.0.0.i) ; 4 uses
  %.not = icmp ult i64 %2, %i.y
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit25
  tail call void @__assert_fail(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.1, i32 noundef 977, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl14GenericCompareIbNS_4CordEEET_RKS1_RKT0_m) #20
  unreachable

bb.d:                                             ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit25
  %.not17 = icmp eq i64 %i.y, 0
  br i1 %.not17, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = tail call i32 @memcmp(ptr noundef %.sroa.3.0.i, ptr noundef %i.x, i64 noundef %i.y) #25
  br label %.thread

.thread:                                          ; preds = %_ZNK4absl4Cord5emptyEv.exit.i19, %bb.d, %bb.e
  %.sroa.0.0.i203540 = phi i64 [ %i.y, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i19 ] ; 2 uses
  %i.aa = phi i32 [ %i.z, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i19 ] ; 2 uses
  %i.ab = icmp eq i64 %.sroa.0.0.i203540, %2
  %i.ac = icmp ne i32 %i.aa, 0
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.ad = tail call noundef i32 @_ZNK4absl4Cord15CompareSlowPathERKS0_mm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.sroa.0.0.i203540, i64 noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.0.in = phi i32 [ %i.ad, %bb.f ], [ %i.aa, %.thread ]
  %.0 = icmp eq i32 %.0.in, 0
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4absl4Cord7CompareESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  store i64 %1, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %4, align 8
  %5 = call noundef i32 @_ZN4absl17SharedCompareImplISt17basic_string_viewIcSt11char_traitsIcEEEEiRKNS_4CordERKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
  ret i32 %5
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4absl17SharedCompareImplISt17basic_string_viewIcSt11char_traitsIcEEEEiRKNS_4CordERKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat {
  %3 = load i8, ptr %0, align 8                   ; 2 uses
  %4 = trunc i8 %3 to i1
  br i1 %4, label %_ZNK4absl4Cord4sizeEv.exit, label %_ZNK4absl4Cord4sizeEv.exit.thread

_ZNK4absl4Cord4sizeEv.exit:                       ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i64, ptr %6, align 8                  ; 5 uses
  %8 = load i64, ptr %1, align 8                  ; 4 uses
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %_ZNK4absl4Cord5emptyEv.exit.i.i, label %30

_ZNK4absl4Cord4sizeEv.exit.thread:                ; preds = %2
  %10 = sext i8 %3 to i64
  %11 = lshr exact i64 %10, 1                     ; 5 uses
  %12 = load i64, ptr %1, align 8                 ; 4 uses
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %_ZNK4absl4Cord5emptyEv.exit.i.i, label %.thread51

_ZNK4absl4Cord5emptyEv.exit.i.i:                  ; preds = %_ZNK4absl4Cord4sizeEv.exit.thread, %_ZNK4absl4Cord4sizeEv.exit
  %.sroa.08.0.copyload.i58 = phi i64 [ %7, %_ZNK4absl4Cord4sizeEv.exit ], [ %11, %_ZNK4absl4Cord4sizeEv.exit.thread ] ; 4 uses
  %14 = icmp eq i64 %.sroa.08.0.copyload.i58, 0
  br i1 %14, label %.thread, label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i

_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i:        ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i
  %15 = tail call { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %16 = extractvalue { i64, ptr } %15, 0
  %17 = extractvalue { i64, ptr } %15, 1
  %.sroa.08.0.copyload.i.pre = load i64, ptr %1, align 8 ; 3 uses
  %18 = tail call i64 @llvm.umin.i64(i64 %.sroa.08.0.copyload.i.pre, i64 %16) ; 4 uses
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.29.0.copyload.i = load ptr, ptr %.sroa.29.0..sroa_idx.i, align 8 ; 3 uses
  %.not.i = icmp ult i64 %.sroa.08.0.copyload.i58, %18
  br i1 %.not.i, label %19, label %20

.thread:                                          ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i
  %.sroa.29.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.29.0.copyload.i70 = load ptr, ptr %.sroa.29.0..sroa_idx.i69, align 8
  br label %23

19:                                               ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.1, i32 noundef 977, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m) #20
  unreachable

20:                                               ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i
  %.not19.i = icmp eq i64 %18, 0
  br i1 %.not19.i, label %23, label %21

21:                                               ; preds = %20
  %22 = tail call i32 @memcmp(ptr noundef %17, ptr noundef %.sroa.29.0.copyload.i, i64 noundef %18) #25
  br label %23

23:                                               ; preds = %.thread, %21, %20
  %.sroa.08.0.copyload.i7283 = phi i64 [ %.sroa.08.0.copyload.i.pre, %21 ], [ %.sroa.08.0.copyload.i.pre, %20 ], [ 0, %.thread ]
  %.sroa.0.0.i.i7382 = phi i64 [ %18, %21 ], [ 0, %20 ], [ 0, %.thread ] ; 2 uses
  %.sroa.29.0.copyload.i7581 = phi ptr [ %.sroa.29.0.copyload.i, %21 ], [ %.sroa.29.0.copyload.i, %20 ], [ %.sroa.29.0.copyload.i70, %.thread ]
  %24 = phi i32 [ %22, %21 ], [ 0, %20 ], [ 0, %.thread ] ; 2 uses
  %25 = icmp eq i64 %.sroa.0.0.i.i7382, %.sroa.08.0.copyload.i58
  %26 = icmp ne i32 %24, 0
  %or.cond.i = select i1 %25, i1 true, i1 %26
  br i1 %or.cond.i, label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit, label %27

27:                                               ; preds = %23
  %28 = tail call noundef i32 @_ZNK4absl4Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.08.0.copyload.i7283, ptr %.sroa.29.0.copyload.i7581, i64 noundef %.sroa.0.0.i.i7382, i64 noundef %.sroa.08.0.copyload.i58)
  br label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit

_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit: ; preds = %23, %27
  %.sink.i = phi i32 [ %28, %27 ], [ %24, %23 ]
  %29 = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %.sink.i, i32 0)
  br label %71

30:                                               ; preds = %_ZNK4absl4Cord4sizeEv.exit
  %31 = icmp ult i64 %7, %8
  br i1 %31, label %_ZNK4absl4Cord5emptyEv.exit.i.i22, label %_ZNK4absl4Cord5emptyEv.exit.i.i37

.thread51:                                        ; preds = %_ZNK4absl4Cord4sizeEv.exit.thread
  %32 = icmp ult i64 %11, %12
  br i1 %32, label %_ZNK4absl4Cord5emptyEv.exit.i.i22, label %_ZNK4absl4Cord5emptyEv.exit.i.i37

_ZNK4absl4Cord5emptyEv.exit.i.i22:                ; preds = %.thread51, %30
  %.sroa.08.0.copyload.i2656 = phi i64 [ %8, %30 ], [ %12, %.thread51 ]
  %33 = phi i64 [ %7, %30 ], [ %11, %.thread51 ]  ; 4 uses
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %.thread94, label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i23

_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i23:      ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i22
  %35 = tail call { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %36 = extractvalue { i64, ptr } %35, 0
  %37 = extractvalue { i64, ptr } %35, 1
  %.sroa.08.0.copyload.i26.pre = load i64, ptr %1, align 8 ; 3 uses
  %38 = tail call i64 @llvm.umin.i64(i64 %.sroa.08.0.copyload.i26.pre, i64 %36) ; 4 uses
  %.sroa.29.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.29.0.copyload.i28 = load ptr, ptr %.sroa.29.0..sroa_idx.i27, align 8 ; 3 uses
  %.not.i30 = icmp ult i64 %33, %38
  br i1 %.not.i30, label %39, label %40

.thread94:                                        ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i22
  %.sroa.29.0..sroa_idx.i2787 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.29.0.copyload.i2888 = load ptr, ptr %.sroa.29.0..sroa_idx.i2787, align 8
  br label %43

39:                                               ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i23
  tail call void @__assert_fail(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.1, i32 noundef 977, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m) #20
  unreachable

40:                                               ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i23
  %.not19.i31 = icmp eq i64 %38, 0
  br i1 %.not19.i31, label %43, label %41

41:                                               ; preds = %40
  %42 = tail call i32 @memcmp(ptr noundef %37, ptr noundef %.sroa.29.0.copyload.i28, i64 noundef %38) #25
  br label %43

43:                                               ; preds = %.thread94, %41, %40
  %.sroa.08.0.copyload.i2690102 = phi i64 [ %.sroa.08.0.copyload.i26.pre, %41 ], [ %.sroa.08.0.copyload.i26.pre, %40 ], [ %.sroa.08.0.copyload.i2656, %.thread94 ]
  %.sroa.0.0.i.i2491101 = phi i64 [ %38, %41 ], [ 0, %40 ], [ 0, %.thread94 ] ; 2 uses
  %.sroa.29.0.copyload.i2893100 = phi ptr [ %.sroa.29.0.copyload.i28, %41 ], [ %.sroa.29.0.copyload.i28, %40 ], [ %.sroa.29.0.copyload.i2888, %.thread94 ]
  %44 = phi i32 [ %42, %41 ], [ 0, %40 ], [ 0, %.thread94 ] ; 2 uses
  %45 = icmp eq i64 %.sroa.0.0.i.i2491101, %33
  %46 = icmp ne i32 %44, 0
  %or.cond.i32 = select i1 %45, i1 true, i1 %46
  br i1 %or.cond.i32, label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit35, label %47

47:                                               ; preds = %43
  %48 = tail call noundef i32 @_ZNK4absl4Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.08.0.copyload.i2690102, ptr %.sroa.29.0.copyload.i2893100, i64 noundef %.sroa.0.0.i.i2491101, i64 noundef %33)
  br label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit35

_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit35: ; preds = %43, %47
  %.sink.i33 = phi i32 [ %48, %47 ], [ %44, %43 ] ; 2 uses
  %49 = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %.sink.i33, i32 0)
  %50 = icmp eq i32 %.sink.i33, 0
  %51 = select i1 %50, i32 -1, i32 %49
  br label %71

_ZNK4absl4Cord5emptyEv.exit.i.i37:                ; preds = %.thread51, %30
  %52 = phi i64 [ %8, %30 ], [ %12, %.thread51 ]  ; 4 uses
  %53 = phi i64 [ %7, %30 ], [ %11, %.thread51 ]
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %.thread113, label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i38

_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i38:      ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i37
  %55 = tail call { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %56 = extractvalue { i64, ptr } %55, 0
  %57 = extractvalue { i64, ptr } %55, 1
  %.sroa.08.0.copyload.i41.pre = load i64, ptr %1, align 8 ; 3 uses
  %58 = tail call i64 @llvm.umin.i64(i64 %.sroa.08.0.copyload.i41.pre, i64 %56) ; 4 uses
  %.sroa.29.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.29.0.copyload.i43 = load ptr, ptr %.sroa.29.0..sroa_idx.i42, align 8 ; 3 uses
  %.not.i45 = icmp ult i64 %52, %58
  br i1 %.not.i45, label %59, label %60

.thread113:                                       ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i37
  %.sroa.29.0..sroa_idx.i42106 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.29.0.copyload.i43107 = load ptr, ptr %.sroa.29.0..sroa_idx.i42106, align 8
  br label %63

59:                                               ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i38
  tail call void @__assert_fail(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.1, i32 noundef 977, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m) #20
  unreachable

60:                                               ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit.i38
  %.not19.i46 = icmp eq i64 %58, 0
  br i1 %.not19.i46, label %63, label %61

61:                                               ; preds = %60
  %62 = tail call i32 @memcmp(ptr noundef %57, ptr noundef %.sroa.29.0.copyload.i43, i64 noundef %58) #25
  br label %63

63:                                               ; preds = %.thread113, %61, %60
  %.sroa.08.0.copyload.i41109121 = phi i64 [ %.sroa.08.0.copyload.i41.pre, %61 ], [ %.sroa.08.0.copyload.i41.pre, %60 ], [ %52, %.thread113 ]
  %.sroa.0.0.i.i39110120 = phi i64 [ %58, %61 ], [ 0, %60 ], [ 0, %.thread113 ] ; 2 uses
  %.sroa.29.0.copyload.i43112119 = phi ptr [ %.sroa.29.0.copyload.i43, %61 ], [ %.sroa.29.0.copyload.i43, %60 ], [ %.sroa.29.0.copyload.i43107, %.thread113 ]
  %64 = phi i32 [ %62, %61 ], [ 0, %60 ], [ 0, %.thread113 ] ; 2 uses
  %65 = icmp eq i64 %.sroa.0.0.i.i39110120, %52
  %66 = icmp ne i32 %64, 0
  %or.cond.i47 = select i1 %65, i1 true, i1 %66
  br i1 %or.cond.i47, label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit50, label %67

67:                                               ; preds = %63
  %68 = tail call noundef i32 @_ZNK4absl4Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.08.0.copyload.i41109121, ptr %.sroa.29.0.copyload.i43112119, i64 noundef %.sroa.0.0.i.i39110120, i64 noundef %52)
  br label %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit50

_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit50: ; preds = %63, %67
  %.sink.i48 = phi i32 [ %68, %67 ], [ %64, %63 ]
  %69 = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %.sink.i48, i32 0)
  %70 = tail call i32 @llvm.umax.i32(i32 %69, i32 1)
  br label %71

71:                                               ; preds = %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit50, %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit35, %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit
  %.0 = phi i32 [ %29, %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit ], [ %51, %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit35 ], [ %70, %_ZN4absl14GenericCompareIiSt17basic_string_viewIcSt11char_traitsIcEEEET_RKNS_4CordERKT0_m.exit50 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4absl4Cord11CompareImplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8                 ; 2 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i

_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i:    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i64, ptr %i.d, align 8
  br label %_ZNK4absl4Cord4sizeEv.exit.i

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i: ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl4Cord4sizeEv.exit.i

_ZNK4absl4Cord4sizeEv.exit.i:                     ; preds = %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i
  %i.h = phi i64 [ %i.e, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i ], [ %i.g, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i ] ; 4 uses
  %i.i = load i8, ptr %1, align 8                 ; 2 uses
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i22.i, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i21.i

_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i22.i:  ; preds = %_ZNK4absl4Cord4sizeEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i64, ptr %i.l, align 8
  br label %_ZNK4absl4Cord4sizeEv.exit23.i

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i21.i: ; preds = %_ZNK4absl4Cord4sizeEv.exit.i
  %i.n = sext i8 %i.i to i64
  %i.o = lshr exact i64 %i.n, 1
  br label %_ZNK4absl4Cord4sizeEv.exit23.i

_ZNK4absl4Cord4sizeEv.exit23.i:                   ; preds = %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i21.i, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i22.i
  %i.p = phi i64 [ %i.m, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i22.i ], [ %i.o, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i21.i ] ; 3 uses
  %i.q = icmp eq i64 %i.h, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4absl4Cord4sizeEv.exit23.i
  %i.r = tail call noundef i32 @_ZN4absl14GenericCompareIiNS_4CordEEET_RKS1_RKT0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.h)
  br label %_ZN4absl17SharedCompareImplINS_4CordEEEiRKS1_RKT_.exit

bb.c:                                             ; preds = %_ZNK4absl4Cord4sizeEv.exit23.i
  %i.s = icmp ult i64 %i.h, %i.p
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call noundef i32 @_ZN4absl14GenericCompareIiNS_4CordEEET_RKS1_RKT0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.h) ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  %i.v = select i1 %i.u, i32 -1, i32 %i.t
  br label %_ZN4absl17SharedCompareImplINS_4CordEEEiRKS1_RKT_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = tail call noundef i32 @_ZN4absl14GenericCompareIiNS_4CordEEET_RKS1_RKT0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.p)
  %i.x = tail call i32 @llvm.umax.i32(i32 %i.w, i32 1)
  br label %_ZN4absl17SharedCompareImplINS_4CordEEEiRKS1_RKT_.exit

_ZN4absl17SharedCompareImplINS_4CordEEEiRKS1_RKT_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.v, %bb.d ], [ %i.x, %bb.e ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4absl4Cord8EndsWithESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.absl::Cord", align 8        ; 13 uses
  %i.a = load i8, ptr %0, align 8                 ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  br i1 %i.b, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i

_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i:      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i64, ptr %i.d, align 8
  br label %_ZNK4absl4Cord4sizeEv.exit

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i: ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl4Cord4sizeEv.exit

_ZNK4absl4Cord4sizeEv.exit:                       ; preds = %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i
  %i.h = phi i64 [ %i.e, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i ], [ %i.g, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i ] ; 2 uses
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZNK4absl4Cord4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not7.i.i = icmp ne ptr %i.k, null
  %.not.not.i.i = select i1 %i.b, i1 %.not7.i.i, i1 false
  br i1 %.not.not.i.i, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i.i, label %bb.d

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = atomicrmw add ptr %i.l, i32 2 monotonic, align 4 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.k, ptr %i.n, align 8
  store i64 1, ptr %3, align 8
  %i.o = load i8, ptr %0, align 8
  %i.p = trunc i8 %i.o to i1
  br i1 %i.p, label %_ZN4absl13cord_internal10InlineData18is_either_profiledERKS1_S3_.exit.i.i.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.68, i32 noundef 567, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal10InlineData18is_either_profiledERKS1_S3_) #20
  unreachable

_ZN4absl13cord_internal10InlineData18is_either_profiledERKS1_S3_.exit.i.i.i: ; preds = %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i.i
  %i.q = load i64, ptr %0, align 8
  %.not.i6.i.i = icmp ult i64 %i.q, 2
  br i1 %.not.i6.i.i, label %_ZN4absl4CordC2ERKS0_.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %_ZN4absl13cord_internal10InlineData18is_either_profiledERKS1_S3_.exit.i.i.i
  call void @_ZN4absl13cord_internal9CordzInfo18MaybeTrackCordImplERNS0_10InlineDataERKS2_NS0_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 8) #21
  br label %_ZN4absl4CordC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  br label %_ZN4absl4CordC2ERKS0_.exit

_ZN4absl4CordC2ERKS0_.exit:                       ; preds = %_ZN4absl13cord_internal10InlineData18is_either_profiledERKS1_S3_.exit.i.i.i, %bb.c, %bb.d
  %i.r = sub nuw i64 %i.h, %1
  call void @_ZN4absl4Cord12RemovePrefixEm(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.r)
  %i.s = load i8, ptr %3, align 8                 ; 2 uses
  %i.t = trunc i8 %i.s to i1
  br i1 %i.t, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i.i.i, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i.i.i

_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i.i.i: ; preds = %_ZN4absl4CordC2ERKS0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i64, ptr %i.v, align 8
  br label %_ZNK4absl4Cord5emptyEv.exit.i.i.i

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i.i.i: ; preds = %_ZN4absl4CordC2ERKS0_.exit
  %i.x = sext i8 %i.s to i64
  %i.y = lshr exact i64 %i.x, 1
  br label %_ZNK4absl4Cord5emptyEv.exit.i.i.i

_ZNK4absl4Cord5emptyEv.exit.i.i.i:                ; preds = %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i.i.i, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i.i.i
  %i.z = phi i64 [ %i.w, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i.i.i ], [ %i.y, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i.i.i ]
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZNK4absl4Cord5emptyEv.exit.i.i.i
  %i.ab = call { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = call i64 @llvm.umin.i64(i64 %1, i64 %i.ac) ; 3 uses
  %.not19.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not19.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = extractvalue { i64, ptr } %i.ab, 1
  %i.af = call i32 @memcmp(ptr noundef %i.ae, ptr noundef %2, i64 noundef %i.ad) #25
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e, %_ZNK4absl4Cord5emptyEv.exit.i.i.i
  %.sroa.0.0.i.i49.i = phi i64 [ %i.ad, %bb.f ], [ 0, %bb.e ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i.i.i ] ; 2 uses
  %i.ag = phi i32 [ %i.af, %bb.f ], [ 0, %bb.e ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i.i.i ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.0.0.i.i49.i, %1
  %i.ai = icmp ne i32 %i.ag, 0
  %or.cond.i.i = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %or.cond.i.i, label %_ZNK4absl4Cord10EqualsImplESt17basic_string_viewIcSt11char_traitsIcEEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.aj = call noundef i32 @_ZNK4absl4Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 %1, ptr %2, i64 noundef %.sroa.0.0.i.i49.i, i64 noundef %1)
  br label %_ZNK4absl4Cord10EqualsImplESt17basic_string_viewIcSt11char_traitsIcEEm.exit

_ZNK4absl4Cord10EqualsImplESt17basic_string_viewIcSt11char_traitsIcEEm.exit: ; preds = %.thread.i, %bb.g
  %.0.in.i.i = phi i32 [ %i.aj, %bb.g ], [ %i.ag, %.thread.i ]
  %.0.i.i = icmp eq i32 %.0.in.i.i, 0
  %i.ak = load i8, ptr %3, align 8
  %i.al = trunc i8 %i.ak to i1
  br i1 %i.al, label %bb.h, label %_ZN4absl4CordD2Ev.exit

bb.h:                                             ; preds = %_ZNK4absl4Cord10EqualsImplESt17basic_string_viewIcSt11char_traitsIcEEm.exit
  call void @_ZN4absl4Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZN4absl4CordD2Ev.exit

_ZN4absl4CordD2Ev.exit:                           ; preds = %_ZNK4absl4Cord10EqualsImplESt17basic_string_viewIcSt11char_traitsIcEEm.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4absl4Cord4sizeEv.exit, %_ZN4absl4CordD2Ev.exit
  %.0 = phi i1 [ %.0.i.i, %_ZN4absl4CordD2Ev.exit ], [ false, %_ZNK4absl4Cord4sizeEv.exit ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl4CordC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not7.i = icmp ne ptr %i.d, null
end_hunk_1
begin_hunk_2_@_ZNK4absl4Cord15CompareSlowPathERKS0_mm:bb.a
bb.w:                                             ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.31, i32 noundef 1563, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIteratorppEv) #20
  unreachable

_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 16, i1 false)
  br label %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i

_ZN4absl4Cord13ChunkIteratorppEv.exit.i:          ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i
  %i.ap = call { i64, ptr } @_ZN4absl13cord_internal18CordRepBtreeReader4NextEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ab) ; 2 uses
  %i.aq = extractvalue { i64, ptr } %i.ap, 0      ; 2 uses
  %i.ar = extractvalue { i64, ptr } %i.ap, 1      ; 2 uses
  store i64 %i.aq, ptr %4, align 8
  store ptr %i.ar, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.pr.pre.i = load i64, ptr %i.a, align 8
  %i.as = icmp eq i64 %.pr.pre.i, 0
  br i1 %i.as, label %.critedge, label %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i

_ZNK4absl4Cord13ChunkIteratordeEv.exit.i:         ; preds = %_ZN4absl4Cord13ChunkIteratorppEv.exit.i, %bb.p, %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i
  %.sroa.059.2.ph = phi i64 [ %.sroa.059.1, %bb.p ], [ 0, %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i ], [ %i.aq, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i ] ; 4 uses
  %.sroa.1365.2.ph = phi ptr [ %.sroa.1365.1, %bb.p ], [ null, %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i ], [ %i.ar, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i ] ; 2 uses
  %i.at = icmp eq i64 %.sroa.0.1, 0
  br i1 %i.at, label %bb.x, label %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i36

bb.x:                                             ; preds = %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i
  %i.au = load i64, ptr %i.k, align 8             ; 4 uses
  %.not.i.i31 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i31, label %bb.y, label %bb.z, !prof !7

bb.y:                                             ; preds = %bb.x
  call void @__assert_fail(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.31, i32 noundef 1556, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN4absl4Cord13ChunkIteratorppEvENKUlvE_clEv) #20
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.av = load i64, ptr %5, align 8               ; 4 uses
  %.not2.i.i32 = icmp ult i64 %i.au, %i.av
  br i1 %.not2.i.i32, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @__assert_fail(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.31, i32 noundef 1557, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIteratorppEv) #20
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.aw = sub nuw i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.k, align 8
  %.not3.i.i33 = icmp eq i64 %i.au, %i.av
  br i1 %.not3.i.i33, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ax = load i32, ptr %i.l, align 8             ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i40, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i34

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i40: ; preds = %bb.ac
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8
  %.not4.i.i41 = icmp eq ptr %i.bb, null
  br i1 %.not4.i.i41, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i34, label %_ZN4absl4Cord13ChunkIteratorppEv.exit.i42

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i34: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i40, %bb.ac
  %i.bc = icmp eq i64 %i.av, 0
  br i1 %i.bc, label %bb.ad, label %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i35

bb.ad:                                            ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i34
  call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.31, i32 noundef 1563, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIteratorppEv) #20
  unreachable

_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i35: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 16, i1 false)
  br label %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i36

_ZN4absl4Cord13ChunkIteratorppEv.exit.i42:        ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i40
  %i.bd = call { i64, ptr } @_ZN4absl13cord_internal18CordRepBtreeReader4NextEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ad) ; 2 uses
  %i.be = extractvalue { i64, ptr } %i.bd, 0      ; 2 uses
  %i.bf = extractvalue { i64, ptr } %i.bd, 1      ; 2 uses
  store i64 %i.be, ptr %5, align 8
  store ptr %i.bf, ptr %.sroa.2.0..sroa_idx.i25, align 8
  %.pr.pre.i44 = load i64, ptr %i.k, align 8
  %i.bg = icmp eq i64 %.pr.pre.i44, 0
  br i1 %i.bg, label %.critedge, label %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i36

_ZNK4absl4Cord13ChunkIteratordeEv.exit.i36:       ; preds = %_ZN4absl4Cord13ChunkIteratorppEv.exit.i42, %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i, %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i35
  %.sroa.0.3.ph = phi i64 [ %.sroa.0.1, %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i ], [ 0, %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i35 ], [ %i.be, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i42 ] ; 2 uses
  %.sroa.13.2.ph = phi ptr [ %.sroa.13.1, %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i ], [ null, %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i35 ], [ %i.bf, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i42 ] ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %.sroa.0.3.ph, i64 %.sroa.059.2.ph) ; 7 uses
  %.not.i46 = icmp ult i64 %.0, %.sroa.speculated.i
  br i1 %.not.i46, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i36
  call void @__assert_fail(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.1, i32 noundef 782, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm) #20
  unreachable

bb.af:                                            ; preds = %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i36
  %i.bh = call i32 @memcmp(ptr noundef %.sroa.1365.2.ph, ptr noundef %.sroa.13.2.ph, i64 noundef %.sroa.speculated.i) #25 ; 2 uses
  %.not18.i = icmp eq i32 %i.bh, 0
  br i1 %.not18.i, label %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit, label %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit.thread

_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit: ; preds = %bb.af
  %i.bi = sub nuw i64 %.0, %.sroa.speculated.i    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.1365.2.ph, i64 %.sroa.speculated.i
  %i.bk = sub i64 %.sroa.059.2.ph, %.sroa.speculated.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.13.2.ph, i64 %.sroa.speculated.i
  %i.bm = sub i64 %.sroa.0.3.ph, %.sroa.speculated.i
  %.not94 = icmp eq i64 %i.bi, 0
  br i1 %.not94, label %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit.thread, label %bb.p, !llvm.loop !411

.critedge:                                        ; preds = %_ZN4absl4Cord13ChunkIteratorppEv.exit.i42, %bb.ab, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i, %bb.u
  %.sroa.059.279 = phi i64 [ 0, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i ], [ 0, %bb.u ], [ %.sroa.059.2.ph, %bb.ab ], [ %.sroa.059.2.ph, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i42 ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i ], [ %.sroa.0.1, %bb.u ], [ 0, %bb.ab ], [ 0, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i42 ]
  %i.bn = icmp eq i64 %.sroa.0.2, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i64 %.sroa.059.279, 0
  %.neg = sext i1 %i.bp to i32
  %i.bq = add nsw i32 %i.bo, %.neg
  br label %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit.thread

_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit.thread: ; preds = %bb.af, %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit, %.critedge
  %.2 = phi i32 [ %i.bq, %.critedge ], [ %i.bh, %bb.af ], [ 0, %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4absl14GenericCompareIiNS_4CordEEET_RKS1_RKT0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 8                 ; 2 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i

_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i:  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i64, ptr %i.d, align 8
  br label %_ZNK4absl4Cord5emptyEv.exit.i

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i: ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl4Cord5emptyEv.exit.i

_ZNK4absl4Cord5emptyEv.exit.i:                    ; preds = %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i
  %i.h = phi i64 [ %i.e, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i ], [ %i.g, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i ]
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK4absl4Cord5emptyEv.exit.i
  %i.j = tail call { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = extractvalue { i64, ptr } %i.j, 1
  br label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit

_ZN4absl4Cord13GetFirstChunkERKS0_.exit:          ; preds = %_ZNK4absl4Cord5emptyEv.exit.i, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.k, %bb.b ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i ]
  %.sroa.3.0.i = phi ptr [ %i.l, %bb.b ], [ null, %_ZNK4absl4Cord5emptyEv.exit.i ]
  %i.m = load i8, ptr %1, align 8                 ; 2 uses
  %i.n = trunc i8 %i.m to i1
  br i1 %i.n, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i24, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i18

_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i24: ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i64, ptr %i.p, align 8
  br label %_ZNK4absl4Cord5emptyEv.exit.i19

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i18: ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit
  %i.r = sext i8 %i.m to i64
  %i.s = lshr exact i64 %i.r, 1
  br label %_ZNK4absl4Cord5emptyEv.exit.i19

_ZNK4absl4Cord5emptyEv.exit.i19:                  ; preds = %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i18, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i24
  %i.t = phi i64 [ %i.q, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i24 ], [ %i.s, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i18 ]
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.thread, label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit25

_ZN4absl4Cord13GetFirstChunkERKS0_.exit25:        ; preds = %_ZNK4absl4Cord5emptyEv.exit.i19
  %i.v = tail call { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %.sroa.0.0.i) ; 4 uses
  %.not = icmp ult i64 %2, %i.y
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit25
  tail call void @__assert_fail(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.1, i32 noundef 977, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl14GenericCompareIiNS_4CordEEET_RKS1_RKT0_m) #20
  unreachable

bb.d:                                             ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit25
  %.not17 = icmp eq i64 %i.y, 0
  br i1 %.not17, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = tail call i32 @memcmp(ptr noundef %.sroa.3.0.i, ptr noundef %i.x, i64 noundef %i.y) #25
  br label %.thread

.thread:                                          ; preds = %_ZNK4absl4Cord5emptyEv.exit.i19, %bb.d, %bb.e
  %.sroa.0.0.i203843 = phi i64 [ %i.y, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i19 ] ; 2 uses
  %i.aa = phi i32 [ %i.z, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i19 ] ; 2 uses
  %i.ab = icmp eq i64 %.sroa.0.0.i203843, %2
  %i.ac = icmp ne i32 %i.aa, 0
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.ad = tail call noundef i32 @_ZNK4absl4Cord15CompareSlowPathERKS0_mm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.sroa.0.0.i203843, i64 noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.lobit.neg.i.i26.sink.in = phi i32 [ %i.ad, %bb.f ], [ %i.aa, %.thread ]
  %3 = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %.lobit.neg.i.i26.sink.in, i32 0)
  ret i32 %3
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4absl13cord_internal19CordRepExternalImplIZNS_4Cord15FlattenSlowPathEvE3$_0E7ReleaseEPNS0_15CordRepExternalE"(ptr noundef %0) #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.b, align 8
  tail call void @_ZdlPvm(ptr noundef %.val1, i64 noundef %.val) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind }
attributes #22 = { builtin nounwind allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = distinct !{null, null}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN4absl23inlined_vector_internal7StorageIPNS_13cord_internal7CordRepELm2ESaIS4_EE15MakeStorageViewEv: argument 0"}
!11 = distinct !{!11, !"_ZN4absl23inlined_vector_internal7StorageIPNS_13cord_internal7CordRepELm2ESaIS4_EE15MakeStorageViewEv"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"branch_weights", i32 2146410443, i32 1073205}
!15 = !{!"branch_weights", !"expected", i32 2146409907, i32 1073741}
!16 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!17 = !{!"branch_weights", !"expected", i32 1073741, i32 2146409907}
!18 = !{!"branch_weights", !"expected", i32 2145173774, i32 2309874}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN4absl10CordBuffer22CreateWithDefaultLimitEm: argument 0"}
!21 = distinct !{!21, !"_ZN4absl10CordBuffer22CreateWithDefaultLimitEm"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN4abslL18CreateAppendBufferERNS_13cord_internal10InlineDataEmm: argument 0"}
!24 = distinct !{!24, !"_ZN4abslL18CreateAppendBufferERNS_13cord_internal10InlineDataEmm"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN4absl10CordBuffer22CreateWithDefaultLimitEm: argument 0"}
!27 = distinct !{!27, !"_ZN4absl10CordBuffer22CreateWithDefaultLimitEm"}
!28 = !{!26, !23}
!29 = !{ptr @_ZN4absl4Cord6AppendEOS0_}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZNK4absl4Cord10ChunkRange5beginEv: argument 0"}
!32 = distinct !{!32, !"_ZNK4absl4Cord10ChunkRange5beginEv"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZNK4absl4Cord11chunk_beginEv: argument 0"}
!35 = distinct !{!35, !"_ZNK4absl4Cord11chunk_beginEv"}
!36 = !{!34, !31}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNK4absl4Cord10ChunkRange5beginEv: argument 0"}
!39 = distinct !{!39, !"_ZNK4absl4Cord10ChunkRange5beginEv"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNK4absl4Cord11chunk_beginEv: argument 0"}
!42 = distinct !{!42, !"_ZNK4absl4Cord11chunk_beginEv"}
!43 = !{!41, !38}
!44 = distinct !{null}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNK4absl4Cord11chunk_beginEv: argument 0"}
!47 = distinct !{!47, !"_ZNK4absl4Cord11chunk_beginEv"}
!48 = !{!"branch_weights", i32 16371591, i32 2131112057}
!49 = !{!"branch_weights", i32 0, i32 -2147483648}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNK4absl4Cord10ChunkRange5beginEv: argument 0"}
!54 = distinct !{!54, !"_ZNK4absl4Cord10ChunkRange5beginEv"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNK4absl4Cord11chunk_beginEv: argument 0"}
!57 = distinct !{!57, !"_ZNK4absl4Cord11chunk_beginEv"}
!58 = !{!56, !53}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = !{!"branch_weights", !"expected", i32 664591, i32 2146819057}
!63 = distinct !{!63, !13}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZNK4absl4Cord8char_endEv: argument 0"}
!66 = distinct !{!66, !"_ZNK4absl4Cord8char_endEv"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNK4absl4Cord10char_beginEv: argument 0"}
!69 = distinct !{!69, !"_ZNK4absl4Cord10char_beginEv"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNK4absl4Cord8char_endEv: argument 0"}
!72 = distinct !{!72, !"_ZNK4absl4Cord8char_endEv"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNK4absl4Cord10char_beginEv: argument 0:thread"}
!75 = distinct !{!75, !"_ZNK4absl4Cord10char_beginEv"}
!76 = !{!77}
!77 = distinct !{!77, !75, !"_ZNK4absl4Cord10char_beginEv: argument 0"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZNK4absl4Cord10char_beginEv: argument 0"}
!80 = distinct !{!80, !"_ZNK4absl4Cord10char_beginEv"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZNK4absl4Cord8char_endEv: argument 0"}
!83 = distinct !{!83, !"_ZNK4absl4Cord8char_endEv"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZNK4absl4Cord10char_beginEv: argument 0"}
!86 = distinct !{!86, !"_ZNK4absl4Cord10char_beginEv"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZNK4absl4Cord8char_endEv: argument 0"}
!89 = distinct !{!89, !"_ZNK4absl4Cord8char_endEv"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZNK4absl4Cord10char_beginEv: argument 0"}
!92 = distinct !{!92, !"_ZNK4absl4Cord10char_beginEv"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZNK4absl4Cord8char_endEv: argument 0"}
!95 = distinct !{!95, !"_ZNK4absl4Cord8char_endEv"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZNK4absl4Cord10char_beginEv: argument 0"}
!98 = distinct !{!98, !"_ZNK4absl4Cord10char_beginEv"}
!99 = !{!"branch_weights", !"expected", i32 536602, i32 2146947046}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNK4absl4Cord10char_beginEv: argument 0"}
!102 = distinct !{!102, !"_ZNK4absl4Cord10char_beginEv"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZNK4absl4Cord10char_beginEv: argument 0"}
!105 = distinct !{!105, !"_ZNK4absl4Cord10char_beginEv"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNK4absl4Cord10char_beginEv: argument 0"}
!108 = distinct !{!108, !"_ZNK4absl4Cord10char_beginEv"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZNK4absl4Cord8char_endEv: argument 0"}
!111 = distinct !{!111, !"_ZNK4absl4Cord8char_endEv"}
!112 = distinct !{null}
!113 = distinct !{!113, !13}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZNK4absl4Cord10ChunkRange5beginEv: argument 0"}
!116 = distinct !{!116, !"_ZNK4absl4Cord10ChunkRange5beginEv"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZNK4absl4Cord11chunk_beginEv: argument 0"}
!119 = distinct !{!119, !"_ZNK4absl4Cord11chunk_beginEv"}
!120 = !{!118, !115}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN4absl12StreamFormatIJjEEENS_19str_format_internal10StreamableERKNS1_18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKS4_: argument 0"}
!123 = distinct !{!123, !"_ZN4absl12StreamFormatIJjEEENS_19str_format_internal10StreamableERKNS1_18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKS4_"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!126 = distinct !{!126, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!129 = distinct !{!129, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!130 = !{!128, !125}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN4absl23inlined_vector_internal7StorageIPNS_13cord_internal7CordRepELm2ESaIS4_EE15MakeStorageViewEv: argument 0"}
!133 = distinct !{!133, !"_ZN4absl23inlined_vector_internal7StorageIPNS_13cord_internal7CordRepELm2ESaIS4_EE15MakeStorageViewEv"}
!134 = distinct !{!134, !13, !135, !136}
!135 = !{!"llvm.loop.isvectorized", i32 1}
!136 = !{!"llvm.loop.unroll.runtime.disable"}
!137 = distinct !{!137, !138}
!138 = !{!"llvm.loop.unroll.disable"}
!139 = distinct !{!139, !13, !135}
!140 = distinct !{!140, !13, !141}
!141 = !{!"llvm.loop.peeled.count", i32 1}
!142 = distinct !{!142, !13}
!143 = distinct !{!143, !13}
!144 = !{}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZNKSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE3endEv: argument 0"}
!147 = distinct !{!147, !"_ZNKSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE3endEv"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZSt4copyISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS4_PS5_ES0_IS4_RS4_PS4_EET0_T_SD_SC_: argument 0"}
!150 = distinct !{!150, !"_ZSt4copyISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS4_PS5_ES0_IS4_RS4_PS4_EET0_T_SD_SC_"}
!151 = !{!152, !149}
end_hunk_2
