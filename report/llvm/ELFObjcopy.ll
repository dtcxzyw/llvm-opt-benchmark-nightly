Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELFObjcopy?download=true
inline.NumInlined: 3773
inline.NumDeleted: 2081
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::Error" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%class.anon = type { ptr, ptr }
%class.anon.70 = type { ptr, ptr, %"class.std::optional" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [3 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<llvm::DebugCompressionType>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::DebugCompressionType>::_Storage" = type { i32 }
%"class.llvm::DenseMap.71" = type { ptr, ptr, i32, i32 }
%"struct.std::pair.66" = type { ptr, %"class.std::function.68" }
%"class.std::function.68" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.llvm::CachedHashStringRef" = type { ptr, i32, i32 }
%"class.llvm::objcopy::elf::IHexReader" = type { %"class.llvm::objcopy::elf::Reader", ptr }
%"class.llvm::objcopy::elf::Reader" = type { ptr }
%"class.llvm::Expected" = type <{ %union.anon.73, i8, [7 x i8] }>
%union.anon.73 = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.75" }
%"struct.std::_Head_base.75" = type { ptr }
%"class.std::unique_ptr.76" = type { %"struct.std::__uniq_ptr_data.77" }
%"struct.std::__uniq_ptr_data.77" = type { %"class.std::__uniq_ptr_impl.78" }
%"class.std::__uniq_ptr_impl.78" = type { %"class.std::tuple.79" }
%"class.std::tuple.79" = type { %"struct.std::_Tuple_impl.80" }
%"struct.std::_Tuple_impl.80" = type { %"struct.std::_Head_base.83" }
%"struct.std::_Head_base.83" = type { ptr }
%class.anon.463 = type { ptr }
%class.anon.231 = type { ptr, ptr }
%class.anon.232 = type { ptr, ptr, ptr }
%"class.std::function.119" = type { %"class.std::_Function_base", ptr }
%class.anon.213 = type { %"class.std::function.119" }
%class.anon.214 = type { %"class.std::function.119", ptr }
%class.anon.215 = type { %"class.std::function.119", ptr }
%class.anon.216 = type { %"class.std::function.119" }
%class.anon.217 = type { %"class.std::function.119" }
%class.anon.218 = type { %"class.std::function.119", ptr }
%class.anon.219 = type { %"class.std::function.119", ptr }
%class.anon.220 = type { %"class.std::function.119" }
%class.anon.221 = type { ptr, %"class.std::function.119", ptr }
%class.anon.222 = type { ptr, %"class.std::function.119" }
%class.anon.228 = type { ptr, %"class.std::function.119" }
%"class.llvm::Expected.183" = type <{ %union.anon.184, i8, [7 x i8] }>
%union.anon.184 = type { %"class.std::unique_ptr.185" }
%"class.std::unique_ptr.185" = type { %"struct.std::__uniq_ptr_data.186" }
%"struct.std::__uniq_ptr_data.186" = type { %"class.std::__uniq_ptr_impl.187" }
%"class.std::__uniq_ptr_impl.187" = type { %"class.std::tuple.188" }
%"class.std::tuple.188" = type { %"struct.std::_Tuple_impl.189" }
%"struct.std::_Tuple_impl.189" = type { %"struct.std::_Head_base.192" }
%"struct.std::_Head_base.192" = type { ptr }
%"class.llvm::StringMap.133" = type { %"class.llvm::StringMapImpl.base", [4 x i8] }
%"class.llvm::StringMapImpl.base" = type <{ ptr, i32, i32, i32 }>
%class.anon.144 = type { ptr, ptr, ptr }
%"class.std::vector.155" = type { %"struct.std::_Vector_base.156" }
%"struct.std::_Vector_base.156" = type { %"struct.std::_Vector_base<llvm::objcopy::elf::RelocationSectionBase *, std::allocator<llvm::objcopy::elf::RelocationSectionBase *>>::_Vector_impl" }
%"struct.std::_Vector_base<llvm::objcopy::elf::RelocationSectionBase *, std::allocator<llvm::objcopy::elf::RelocationSectionBase *>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvm::objcopy::elf::RelocationSectionBase *, std::allocator<llvm::objcopy::elf::RelocationSectionBase *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvm::objcopy::elf::RelocationSectionBase *, std::allocator<llvm::objcopy::elf::RelocationSectionBase *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::DenseSet.160" = type { %"class.llvm::detail::DenseSetImpl.161" }
%"class.llvm::detail::DenseSetImpl.161" = type { %"class.llvm::DenseMap.162" }
%"class.llvm::DenseMap.162" = type { ptr, ptr, i32, i32 }
%"class.llvm::objcopy::elf::BinaryReader" = type <{ %"class.llvm::objcopy::elf::Reader", ptr, i8, [7 x i8] }>
%"class.llvm::objcopy::elf::ELFReader" = type { %"class.llvm::objcopy::elf::Reader", ptr, %"class.std::optional.20" }
%"class.std::optional.20" = type { %"struct.std::_Optional_base.21" }
%"struct.std::_Optional_base.21" = type { %"struct.std::_Optional_payload.23" }
%"struct.std::_Optional_payload.23" = type { %"struct.std::_Optional_payload_base.base.25", [7 x i8] }
%"struct.std::_Optional_payload_base.base.25" = type <{ %"union.std::_Optional_payload_base<llvm::StringRef>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::StringRef>::_Storage" = type { %"class.llvm::StringRef" }
%"class.std::vector.257" = type { %"struct.std::_Vector_base.258" }
%"struct.std::_Vector_base.258" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.anon.198 = type { ptr }
%"class.llvm::format_object" = type { ptr, %"class.std::tuple.194" }
%"class.std::tuple.194" = type { %"struct.std::_Tuple_impl.195" }
%"struct.std::_Tuple_impl.195" = type { %"struct.std::_Head_base.196" }
%"struct.std::_Head_base.196" = type { ptr }
%"class.llvm::raw_string_ostream" = type { %"class.llvm::raw_ostream", ptr }
%"class.llvm::raw_ostream" = type { ptr, i32, ptr, ptr, ptr, i8, i32 }
%"class.llvm::ArrayRef.5" = type { ptr, i64 }
%"class.llvm::objcopy::elf::CompressedSection" = type { %"class.llvm::objcopy::elf::SectionBase.base", i32, i32, i64, i64, %"class.llvm::SmallVector.113" }
%"class.llvm::objcopy::elf::SectionBase.base" = type <{ ptr, %"class.std::__cxx11::basic_string", ptr, i64, i32, i32, i64, i64, i64, i64, i64, i32, [4 x i8], i64, i64, i64, i64, i64, i64, i64, %"class.llvm::ArrayRef.5", i8 }>
%"class.llvm::SmallVector.113" = type { %"class.llvm::SmallVectorImpl.114", %"struct.llvm::SmallVectorStorage.118" }
%"class.llvm::SmallVectorImpl.114" = type { %"class.llvm::SmallVectorTemplateBase.115" }
%"class.llvm::SmallVectorTemplateBase.115" = type { %"class.llvm::SmallVectorTemplateCommon.116" }
%"class.llvm::SmallVectorTemplateCommon.116" = type { %"class.llvm::SmallVectorBase.117" }
%"class.llvm::SmallVectorBase.117" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.118" = type { [128 x i8] }

$_ZNK4llvm7objcopy11NameMatcher7matchesENS_9StringRefE = comdat any

$_ZN4llvm15createFileErrorERKNS_5TwineENS_5ErrorE = comdat any

$_ZN4llvm12DenseMapInfoINS_19CachedHashStringRefEvE7isEqualERKS1_S4_ = comdat any

$_ZSt9__find_ifIPKN4llvm7objcopy13NameOrPatternEN9__gnu_cxx5__ops16_Iter_equals_valIKNS0_9StringRefEEEET_SB_SB_T0_St26random_access_iterator_tag = comdat any

$_ZN4llvm15createFileErrorERKNS_5TwineESt10error_codeS2_ = comdat any

$_ZN4llvmplERKNS_5TwineES2_ = comdat any

$_ZN4llvm15createFileErrorIJEEENS_5ErrorERKNS_5TwineESt10error_codePKcDpRKT_ = comdat any

$_ZN4llvm9StringMapINS_7objcopy13AddressUpdateENS_15MallocAllocatorEED2Ev = comdat any

$_ZN4llvm7objcopy3elf6Object10addSectionINS1_19GnuDebugLinkSectionEJRKNS_9StringRefERKjEEERT_DpOT0_ = comdat any

$_ZNSt6vectorIPN4llvm7objcopy3elf21RelocationSectionBaseESaIS4_EE9push_backERKS4_ = comdat any

$_ZN4llvm6detail12DenseSetImplIPNS_7objcopy3elf11SectionBaseENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEED2Ev = comdat any

$_ZNK4llvm6detail12DenseSetImplIPNS_7objcopy3elf11SectionBaseENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEE5countEPKS4_ = comdat any

$_ZN4llvm15createFileErrorIJPKcEEENS_5ErrorERKNS_5TwineESt10error_codeS2_DpRKT_ = comdat any

$_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcEEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m = comdat any

$_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag = comdat any

$_ZN4llvm12function_refIFNS_5ErrorES1_EE11callback_fnIKSt8functionIS2_EEES1_lS1_ = comdat any

$_ZN4llvm7objcopy3elf6Object10addSectionINS1_16OwnedDataSectionEJRNS_9StringRefERNS_8ArrayRefIhEEEEERT_DpOT0_ = comdat any

$_ZN4llvm7objcopy3elf16OwnedDataSectionC2ENS_9StringRefENS_8ArrayRefIhEE = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm7objcopy3elf11SectionBaseESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEENS0_5__ops10_Iter_predIZNS5_6Object11findSectionENS3_9StringRefEEUlRKS9_E_EEET_SN_SN_T0_St26random_access_iterator_tag = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7objcopy3elf11SectionBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSB_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7objcopy3elf11SectionBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7objcopy3elf11SectionBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7objcopy3elf11SectionBaseENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_ = comdat any

$_ZN4llvm9FileErrorC2ERKNS_5TwineESt8optionalImESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS7_EE = comdat any

$_ZN4llvm12handleErrorsIJZNS_9FileError5buildERKNS_5TwineESt8optionalImENS_5ErrorEEUlSt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS9_EEE_EEES7_S7_DpOT_ = comdat any

$_ZN4llvm9ErrorList4joinENS_5ErrorES1_ = comdat any

$_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN4llvm7objcopy3elf6Object10addSectionINS1_19DecompressedSectionEJRNS1_17CompressedSectionEEEERT_DpOT0_ = comdat any

$_ZN4llvm7objcopy3elf6Object10addSectionINS1_17CompressedSectionEJS4_EEERT_DpOT0_ = comdat any

$_ZN4llvm15SmallVectorImplIhEaSEOS1_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7objcopy3elf11SectionBaseES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7objcopy3elf11SectionBaseES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7objcopy3elf11SectionBaseES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7objcopy3elf11SectionBaseES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E8moveFromERSB_ = comdat any

$_ZN4llvm7objcopy3elf6ObjectD2Ev = comdat any

$_ZNSt8_Rb_treeIPKN4llvm7objcopy3elf11SectionBaseES5_St9_IdentityIS5_ENS2_7Segment14SectionCompareESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"section '\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"' within a segment cannot be (de)compressed\00", align 1
@_ZTVN4llvm7objcopy3elf10IHexReaderE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"address 0x\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c" cannot be increased by 0x\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c". The result would overflow\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c" cannot be decreased by 0x\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c". The result would underflow\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"cannot change section address in a non-relocatable file\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"cannot dump section '%s': it has no contents\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"section '%s' not found\00", align 1
@_ZTVN4llvm18raw_string_ostreamE = external unnamed_addr constant { [15 x ptr] }, align 8
@.str.12 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"note segments are not supported\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"cannot remove note(s) from \00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c": sections in segments are not supported\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@_ZTVN4llvm7objcopy3elf16OwnedDataSectionE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVN4llvm7objcopy3elf11SectionBaseE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.33 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.34 = private unnamed_addr constant [53 x i8] c" data must be either empty or at least 12 bytes long\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c" data size must be a  multiple of 4 bytes\00", align 1
@.str.36 = private unnamed_addr constant [85 x i8] c" data size is incompatible with the content of the name and description size fields:\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c" expecting \00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c", found \00", align 1
@.str.39 = private unnamed_addr constant [72 x i8] c"section flag SHF_X86_64_LARGE can only be used with x86_64 architecture\00", align 1
@_ZTVN4llvm7objcopy3elf12BinaryWriterE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN4llvm7objcopy3elf10IHexWriterE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4llvm7objcopy3elf10SRECWriterE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4llvm7objcopy3elf12BinaryReaderE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN4llvm7objcopy3elf9ELFReaderE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZN4llvm9ErrorList2IDE = external global i8, align 1
@_ZTVN4llvm9ErrorListE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZN4llvm13ErrorInfoBase2IDE = external global i8, align 1
@_ZTVN4llvm9FileErrorE = external unnamed_addr constant { [10 x ptr] }, align 8
@.str.41 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVN4llvm7objcopy3elf19DecompressedSectionE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVN4llvm7objcopy3elf17CompressedSectionE = external unnamed_addr constant { [16 x ptr] }, align 8
@switch.table._ZN4llvm7objcopy3elf22executeObjcopyOnBinaryERKNS0_12CommonConfigERKNS0_9ELFConfigERNS_6object17ELFObjectFileBaseERNS_11raw_ostreamE = private unnamed_addr constant [4 x i8] c"\00\02\01\03", align 4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7objcopy3elf6Object28compressOrDecompressSectionsERKNS0_12CommonConfigE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(457) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1104) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  %5 = alloca %"class.llvm::SmallVector", align 8 ; 13 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %class.anon, align 8                ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %class.anon.70, align 8            ; 7 uses
  %11 = alloca %"class.llvm::DenseMap.71", align 8 ; 9 uses
  %12 = alloca %"struct.std::pair.66", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm7objcopy3elf6Object28compressOrDecompressSectionsERKNS0_12CommonConfigE:bb.a
bb.aa:                                            ; preds = %.lr.ph128, %_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEED2Ev.exit
  %.039127 = phi ptr [ %.pre, %.lr.ph128 ], [ %i.hn, %_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.gz = load ptr, ptr %.039127, align 8, !tbaa !130
  store ptr %i.gz, ptr %12, align 8, !tbaa !130
  %i.ha = getelementptr inbounds nuw i8, ptr %.039127, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, i8 0, i64 32, i1 false)
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !148 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEEC2ERKS8_.exit.thread, label %_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEEC2ERKS8_.exit

_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEEC2ERKS8_.exit: ; preds = %bb.aa
  %i.hc = getelementptr inbounds nuw i8, ptr %.039127, i64 8
  %i.hd = call noundef zeroext i1 %i.hb(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, ptr noundef nonnull align 8 dereferenceable(32) %i.hc, i32 noundef 2) #23, !inline_history !149 ; 0 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.039127, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !150 ; 2 uses
  store ptr %i.hf, ptr %i.gn, align 8, !tbaa !150
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !148 ; 2 uses
  store ptr %i.hg, ptr %i.go, align 8, !tbaa !148
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEEC2ERKS8_.exit.thread, label %_ZNKSt8functionIFPN4llvm7objcopy3elf11SectionBaseEvEEclEv.exit

_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEEC2ERKS8_.exit.thread: ; preds = %bb.aa, %_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEEC2ERKS8_.exit
  call void @_ZSt25__throw_bad_function_callv() #25
  unreachable

_ZNKSt8functionIFPN4llvm7objcopy3elf11SectionBaseEvEEclEv.exit: ; preds = %_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEEC2ERKS8_.exit
  %i.hi = call noundef ptr %i.hf(ptr noundef nonnull align 8 dereferenceable(32) %i.gm) #23, !inline_history !151
  %i.hj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7objcopy3elf11SectionBaseES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEES5_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.hj, 0
  %i.hk = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store ptr %i.hi, ptr %i.hk, align 8, !tbaa !17
  %i.hl = load ptr, ptr %i.go, align 8, !tbaa !148 ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i60, label %_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt8functionIFPN4llvm7objcopy3elf11SectionBaseEvEEclEv.exit
  %i.hm = call noundef zeroext i1 %i.hl(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, ptr noundef nonnull align 8 dereferenceable(32) %i.gm, i32 noundef 3) #23, !inline_history !152 ; 0 uses
  br label %_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEED2Ev.exit

_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEED2Ev.exit: ; preds = %_ZNKSt8functionIFPN4llvm7objcopy3elf11SectionBaseEvEEclEv.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.hn = getelementptr inbounds nuw i8, ptr %.039127, i64 40 ; 2 uses
  %.not47 = icmp eq ptr %i.hn, %i.gl
  br i1 %.not47, label %._crit_edge129, label %bb.aa

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i53, %_ZN4llvm8DenseMapIPNS_7objcopy3elf11SectionBaseES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEED2Ev.exit
  %i.ho = load ptr, ptr %5, align 8, !tbaa !8     ; 3 uses
  %i.hp = load i32, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %.not4.i.i = icmp eq i32 %i.hp, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_7objcopy3elf11SectionBaseESt8functionIFS5_vEEELb0EE13destroy_rangeEPS9_SB_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.ac
  %i.hq = zext i32 %i.hp to i64
  %.idx.i = mul nuw nsw i64 %i.hq, 40
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.hs, %_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEED2Ev.exit.i.i ], [ %i.hr, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr %.05.i.i, i64 -40 ; 2 uses
  %i.ht = getelementptr inbounds i8, ptr %.05.i.i, i64 -16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !148 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i, label %_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEED2Ev.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.hv = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 2 uses
  %i.hw = call noundef zeroext i1 %i.hu(ptr noundef nonnull align 8 dereferenceable(32) %i.hv, ptr noundef nonnull align 8 dereferenceable(32) %i.hv, i32 noundef 3) #23, !inline_history !153 ; 0 uses
  br label %_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEED2Ev.exit.i.i

_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEED2Ev.exit.i.i: ; preds = %bb.ad, %.lr.ph.i.i
  %.not.i.i61 = icmp eq ptr %i.ho, %i.hs
  br i1 %.not.i.i61, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_7objcopy3elf11SectionBaseESt8functionIFS5_vEEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !154

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_7objcopy3elf11SectionBaseESt8functionIFS5_vEEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i: ; preds = %_ZNSt4pairIPN4llvm7objcopy3elf11SectionBaseESt8functionIFS4_vEEED2Ev.exit.i.i
  %.pre.i62 = load ptr, ptr %5, align 8, !tbaa !8
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_7objcopy3elf11SectionBaseESt8functionIFS5_vEEELb0EE13destroy_rangeEPS9_SB_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_7objcopy3elf11SectionBaseESt8functionIFS5_vEEELb0EE13destroy_rangeEPS9_SB_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_7objcopy3elf11SectionBaseESt8functionIFS5_vEEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i, %bb.ac
  %i.hx = phi ptr [ %.pre.i62, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_7objcopy3elf11SectionBaseESt8functionIFS5_vEEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i ], [ %i.ho, %bb.ac ] ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.c
  br i1 %i.hy, label %_ZN4llvm11SmallVectorISt4pairIPNS_7objcopy3elf11SectionBaseESt8functionIFS5_vEEELj0EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_7objcopy3elf11SectionBaseESt8functionIFS5_vEEELb0EE13destroy_rangeEPS9_SB_.exit.i
  call void @free(ptr noundef %i.hx) #23
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_7objcopy3elf11SectionBaseESt8functionIFS5_vEEELj0EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairIPNS_7objcopy3elf11SectionBaseESt8functionIFS5_vEEELj0EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_7objcopy3elf11SectionBaseESt8functionIFS5_vEEELb0EE13destroy_rangeEPS9_SB_.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm7objcopy11NameMatcher7matchesENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %4 = alloca %"class.llvm::CachedHashStringRef", align 8 ; 6 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.b = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %1, i64 %2) #23 ; 2 uses
  store ptr %1, ptr %4, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = trunc i64 %2 to i32
  store i32 %i.d, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.b, ptr %i.e, align 4, !tbaa !43
  %i.f = load ptr, ptr %0, align 8, !tbaa !30, !noalias !156
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39, !noalias !156 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !40, !noalias !156 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %.017.i.i.i = and i32 %i.l, %i.b                ; 3 uses
  %i.m = zext i32 %.017.i.i.i to i64              ; 2 uses
  %i.n = lshr i64 %i.m, 5
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !41
  %i.q = and i32 %.017.i.i.i, 31
  %i.r = lshr i32 %i.p, %i.q
  %i.s = trunc i32 %i.r to i1
  br i1 %i.s, label %.lr.ph.i.i.i, label %.loopexit, !prof !42

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.t = add nuw i32 %.018.i.i.i, 1
  %.0.i.i.i = and i32 %i.t, %i.l                  ; 3 uses
  %i.u = zext i32 %.0.i.i.i to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !41
  %i.y = and i32 %.0.i.i.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i.i.i, label %.loopexit, !prof !47

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.ab = phi i64 [ %i.u, %bb.c ], [ %i.m, %bb.b ]
  %.018.i.i.i = phi i32 [ %.0.i.i.i, %bb.c ], [ %.017.i.i.i, %bb.b ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.ab
  %i.ad = call noundef zeroext i1 @_ZN4llvm12DenseMapInfoINS_19CachedHashStringRefEvE7isEqualERKS1_S4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ac)
  br i1 %i.ad, label %_ZNK4llvm6detail12DenseSetImplINS_19CachedHashStringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE8containsERKS2_.exit, label %bb.c, !prof !129

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !8  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !11
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.af, i64 %i.ai
  %i.ak = call noundef ptr @_ZSt9__find_ifIPKN4llvm7objcopy13NameOrPatternEN9__gnu_cxx5__ops16_Iter_equals_valIKNS0_9StringRefEEEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %i.af, ptr noundef %i.aj, ptr nonnull align 8 dereferenceable(16) %3)
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !8
  %i.am = load i32, ptr %i.ag, align 8, !tbaa !11
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.al, i64 %i.an
  %.not = icmp eq ptr %i.ak, %i.ao
  br i1 %.not, label %bb.d, label %_ZNK4llvm6detail12DenseSetImplINS_19CachedHashStringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE8containsERKS2_.exit

_ZNK4llvm6detail12DenseSetImplINS_19CachedHashStringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE8containsERKS2_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !8  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !11
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %i.at
  %i.av = call noundef ptr @_ZSt9__find_ifIPKN4llvm7objcopy13NameOrPatternEN9__gnu_cxx5__ops16_Iter_equals_valIKNS0_9StringRefEEEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %i.aq, ptr noundef %i.au, ptr nonnull align 8 dereferenceable(16) %3)
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !8
  %i.ax = load i32, ptr %i.ar, align 8, !tbaa !11
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [56 x i8], ptr %i.aw, i64 %i.ay
  %.not2 = icmp eq ptr %i.av, %i.az
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm6detail12DenseSetImplINS_19CachedHashStringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE8containsERKS2_.exit, %.loopexit
  %i.ba = phi i1 [ false, %.loopexit ], [ %.not2, %_ZNK4llvm6detail12DenseSetImplINS_19CachedHashStringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE8containsERKS2_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %i.ba
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4llvm7objcopy3elf6Object15replaceSectionsERKNS_8DenseMapIPNS1_11SectionBaseES5_NS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S5_EEEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(457), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7objcopy3elf20executeObjcopyOnIHexERKNS0_12CommonConfigERKNS0_9ELFConfigERNS_12MemoryBufferERNS_11raw_ostreamE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1104) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.llvm::objcopy::elf::IHexReader", align 8 ; 6 uses
  %6 = alloca %"class.llvm::Expected", align 8    ; 9 uses
  %.sroa.0.sroa.0 = alloca [6 x i8], align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm7objcopy3elf10IHexReaderE, i64 16), ptr %5, align 8, !tbaa !161
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNK4llvm7objcopy3elf10IHexReader6createEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext true) #23
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.b

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.e = load i64, ptr %6, align 8, !tbaa !170, !noalias !167
  %i.f = inttoptr i64 %i.e to ptr
  store ptr null, ptr %6, align 8, !tbaa !170, !noalias !167
  store ptr %i.f, ptr %0, align 8, !tbaa !172, !alias.scope !167
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %.sroa.0.sroa.0, i8 0, i64 5, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.i = load i8, ptr %i.h, align 2, !tbaa !174, !range !102, !noundef !103
  %i.j = trunc nuw i8 %i.i to i1
  %spec.select.i = select i1 %i.j, ptr %i.g, ptr %.sroa.0.sroa.0
  %.sroa.0.0.i = load i48, ptr %spec.select.i, align 4 ; 2 uses
  %i.k = and i48 %.sroa.0.0.i, 16777216
  %.not = icmp eq i48 %i.k, 0
  %i.l = and i48 %.sroa.0.0.i, 4294967296
  %.not13 = icmp eq i48 %i.l, 0                   ; 2 uses
  %i.m = select i1 %.not13, i32 3, i32 1
  %i.n = select i1 %.not13, i32 2, i32 0
  %.0.i = select i1 %.not, i32 %i.n, i32 %i.m     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0)
  %i.o = load ptr, ptr %6, align 8, !tbaa !134
  call fastcc void @_ZL10handleArgsRKN4llvm7objcopy12CommonConfigERKNS0_9ELFConfigENS0_3elf7ElfTypeERNS7_6ObjectE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(1104) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(457) %i.o)
  %i.p = load ptr, ptr %0, align 8, !tbaa !172
  %.not14 = icmp eq ptr %i.p, null
  %.pre15 = load ptr, ptr %6, align 8, !tbaa !136 ; 2 uses
  br i1 %.not14, label %_ZN4llvm5ErrorD2Ev.exit, label %.critedge

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.b
  call fastcc void @_ZL11writeOutputRKN4llvm7objcopy12CommonConfigERNS0_3elf6ObjectERNS_11raw_ostreamENS4_7ElfTypeE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(1104) %1, ptr noundef nonnull align 8 dereferenceable(457) %.pre15, ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef %.0.i)
  %.pre = load ptr, ptr %6, align 8, !tbaa !136
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm5ErrorD2Ev.exit, %bb.b, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.q = phi ptr [ %.pre, %_ZN4llvm5ErrorD2Ev.exit ], [ %.pre15, %bb.b ], [ null, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ] ; 5 uses
  %i.r = load i8, ptr %i.b, align 8
  %i.s = trunc i8 %i.r to i1
  %.not.i1.i = icmp eq ptr %i.q, null             ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  br i1 %.not.i1.i, label %_ZN4llvm8ExpectedISt10unique_ptrINS_7objcopy3elf6ObjectESt14default_deleteIS4_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm7objcopy3elf6ObjectEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4llvm7objcopy3elf6ObjectEEclEPS3_.exit.i.i: ; preds = %bb.c
  call void @_ZN4llvm7objcopy3elf6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(457) dereferenceable(457) %i.q) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 464) #26
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_7objcopy3elf6ObjectESt14default_deleteIS4_EEED2Ev.exit

bb.d:                                             ; preds = %.critedge
  br i1 %.not.i1.i, label %_ZN4llvm8ExpectedISt10unique_ptrINS_7objcopy3elf6ObjectESt14default_deleteIS4_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.d
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #23, !inline_history !175
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_7objcopy3elf6ObjectESt14default_deleteIS4_EEED2Ev.exit

_ZN4llvm8ExpectedISt10unique_ptrINS_7objcopy3elf6ObjectESt14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN4llvm7objcopy3elf6ObjectEEclEPS3_.exit.i.i, %bb.d, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN4llvm7objcopy3elf6ReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

declare void @_ZNK4llvm7objcopy3elf10IHexReader6createEb(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL10handleArgsRKN4llvm7objcopy12CommonConfigERKNS0_9ELFConfigENS0_3elf7ElfTypeERNS7_6ObjectE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(1104) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef range(i32 0, 4) %3, ptr noundef nonnull align 8 dereferenceable(457) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %9 = alloca %"class.std::unique_ptr.76", align 8 ; 7 uses
  %10 = alloca %class.anon.463, align 8           ; 4 uses
  %11 = alloca %"class.std::unique_ptr.76", align 8 ; 5 uses
  %12 = alloca %class.anon.231, align 8           ; 5 uses
  %13 = alloca %class.anon.232, align 8           ; 6 uses
  %14 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %15 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %16 = alloca %"class.std::unique_ptr.76", align 8 ; 7 uses
  %17 = alloca %class.anon.463, align 8           ; 4 uses
  %18 = alloca %"class.std::unique_ptr.76", align 8 ; 5 uses
  %19 = alloca %"class.std::function.119", align 16 ; 10 uses
  %20 = alloca %"class.std::function.119", align 16 ; 10 uses
  %21 = alloca %"class.std::function.119", align 16 ; 10 uses
  %22 = alloca %"class.std::function.119", align 16 ; 10 uses
  %23 = alloca %"class.std::function.119", align 16 ; 10 uses
  %24 = alloca %"class.std::function.119", align 16 ; 10 uses
  %25 = alloca %"class.std::function.119", align 16 ; 10 uses
  %26 = alloca %"class.std::function.119", align 16 ; 10 uses
  %27 = alloca %"class.std::function.119", align 16 ; 10 uses
  %28 = alloca %"class.std::function.119", align 16 ; 10 uses
  %29 = alloca %"class.std::function.119", align 16 ; 10 uses
  %30 = alloca %"class.std::function.119", align 16 ; 42 uses
  %31 = alloca %class.anon.213, align 8           ; 9 uses
  %32 = alloca %class.anon.214, align 8           ; 11 uses
  %33 = alloca %class.anon.215, align 8           ; 11 uses
  %34 = alloca %class.anon.216, align 8           ; 10 uses
  %35 = alloca %class.anon.217, align 8           ; 10 uses
  %36 = alloca %class.anon.218, align 8           ; 11 uses
  %37 = alloca %class.anon.219, align 8           ; 11 uses
  %38 = alloca %class.anon.220, align 8           ; 10 uses
  %39 = alloca %class.anon.221, align 8           ; 9 uses
  %40 = alloca %class.anon.222, align 8           ; 8 uses
  %41 = alloca %class.anon.228, align 8           ; 8 uses
  %42 = alloca %"class.std::function.119", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %43 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %44 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %45 = alloca %"class.std::unique_ptr.76", align 8 ; 7 uses
  %46 = alloca %class.anon.463, align 8           ; 4 uses
  %47 = alloca %"class.std::unique_ptr.76", align 8 ; 5 uses
  %48 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %49 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %50 = alloca %"class.std::unique_ptr.76", align 8 ; 7 uses
  %51 = alloca %class.anon.463, align 8           ; 4 uses
  %52 = alloca %"class.std::unique_ptr.76", align 8 ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %53 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %55 = alloca %"class.llvm::Expected.183", align 8 ; 9 uses
  %56 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %57 = alloca %"class.llvm::Error", align 8      ; 7 uses
  %58 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %59 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %61 = alloca %"class.std::function.119", align 8 ; 7 uses
  %62 = alloca %"class.llvm::StringRef", align 8  ; 7 uses
  %63 = alloca %"class.llvm::Error", align 8      ; 9 uses
  %64 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %65 = alloca %"class.llvm::Error", align 8      ; 7 uses
  %66 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %67 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %68 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %69 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %70 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %71 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %72 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %73 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %74 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %75 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %76 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %77 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %78 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %79 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %80 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %81 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %82 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %83 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %84 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %85 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %86 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %87 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %88 = alloca %"class.llvm::StringMap.133", align 8 ; 11 uses
  %89 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %90 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %91 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %92 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %93 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %94 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %95 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %96 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %97 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %98 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %99 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %100 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %101 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %102 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %103 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %104 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %105 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %106 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %107 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %108 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %109 = alloca %"class.llvm::Error", align 8     ; 7 uses
  %110 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %111 = alloca %"class.llvm::Error", align 8     ; 3 uses
  %112 = alloca %class.anon.144, align 8          ; 7 uses
  %113 = alloca %"class.llvm::Error", align 8     ; 7 uses
  %114 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %115 = alloca %"class.llvm::Error", align 8     ; 3 uses
  %116 = alloca %"class.llvm::Error", align 8     ; 7 uses
  %117 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %118 = alloca %"class.llvm::Error", align 8     ; 3 uses
  %119 = alloca %"class.llvm::Error", align 8     ; 7 uses
  %120 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %121 = alloca %"class.llvm::Error", align 8     ; 3 uses
  %122 = alloca %"class.llvm::Error", align 8     ; 5 uses
  %123 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %124 = alloca %"class.llvm::Error", align 8     ; 3 uses
  %125 = alloca %"class.std::vector.155", align 8 ; 11 uses
  %126 = alloca %"class.llvm::DenseSet.160", align 8 ; 10 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  %127 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %128 = alloca %"class.llvm::Error", align 8     ; 5 uses
  %129 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %130 = alloca %"class.llvm::Error", align 8     ; 3 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %131 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %132 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %133 = alloca %"class.llvm::DenseSet.160", align 8 ; 6 uses
  %134 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %135 = alloca %"class.llvm::Twine", align 8     ; 8 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %136 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %137 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %138 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %139 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %140 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %141 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %142 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %143 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %144 = alloca %"class.llvm::Twine", align 8     ; 7 uses
end_hunk_1
begin_hunk_2_@_ZL10handleArgsRKN4llvm7objcopy12CommonConfigERKNS0_9ELFConfigENS0_3elf7ElfTypeERNS7_6ObjectE:bb.a
  br label %_ZN4llvm8dyn_castINS_7objcopy3elf21RelocationSectionBaseENS2_11SectionBaseEEEDcPT0_.exit509.thread

_ZN4llvm8dyn_castINS_7objcopy3elf21RelocationSectionBaseENS2_11SectionBaseEEEDcPT0_.exit509.thread: ; preds = %bb.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515, %bb.id, %_ZN4llvm8dyn_castINS_7objcopy3elf21RelocationSectionBaseENS2_11SectionBaseEEEDcPT0_.exit509, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501
  %i.atq = getelementptr inbounds nuw i8, ptr %.sroa.0524.0768, i64 8 ; 2 uses
  %.not701 = icmp eq ptr %i.atq, %i.aqq
  br i1 %.not701, label %._crit_edge771, label %bb.hv

bb.ih:                                            ; preds = %._crit_edge771, %bb.ht
  %i.atr = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ats = load ptr, ptr %i.atr, align 8, !tbaa !148
  %.not.i.i516.not = icmp eq ptr %i.ats, null
  br i1 %.not.i.i516.not, label %_ZN4llvm5ErrorD2Ev.exit518, label %_ZNKSt8functionIFmmEEclEm.exit

_ZNKSt8functionIFmmEEclEm.exit:                   ; preds = %bb.ih
  %i.att = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.atu = getelementptr inbounds nuw i8, ptr %4, i64 392 ; 2 uses
  %i.atv = load i64, ptr %i.atu, align 8, !tbaa !509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.atv, ptr %i.a, align 8, !tbaa !225
  %i.atw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.atx = load ptr, ptr %i.atw, align 8, !tbaa !510
  %i.aty = call noundef i64 %i.atx(ptr noundef nonnull align 8 dereferenceable(32) %i.att, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #23, !inline_history !511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.aty, ptr %i.atu, align 8, !tbaa !509
  br label %_ZN4llvm5ErrorD2Ev.exit518

_ZN4llvm5ErrorD2Ev.exit518:                       ; preds = %bb.ih, %_ZNKSt8functionIFmmEEclEm.exit
  store ptr null, ptr %0, align 8, !tbaa !172
  br label %bb.ij

.critedge371:                                     ; preds = %.critedge367, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  call void @_ZN4llvm6detail12DenseSetImplIPNS_7objcopy3elf11SectionBaseENS_8DenseMapIS5_NS0_13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS0_12DenseSetPairIS5_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %126) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #23
  %i.atz = load ptr, ptr %125, align 8, !tbaa !470 ; 3 uses
  %.not.i.i.i519 = icmp eq ptr %i.atz, null
  br i1 %.not.i.i.i519, label %_ZNSt6vectorIPN4llvm7objcopy3elf21RelocationSectionBaseESaIS4_EED2Ev.exit520, label %bb.ii

bb.ii:                                            ; preds = %.critedge371
  %i.aua = getelementptr inbounds nuw i8, ptr %125, i64 16
  %i.aub = load ptr, ptr %i.aua, align 8, !tbaa !472
  %i.auc = ptrtoint ptr %i.aub to i64
  %i.aud = ptrtoint ptr %i.atz to i64
  %i.aue = sub i64 %i.auc, %i.aud
  call void @_ZdlPvm(ptr noundef nonnull %i.atz, i64 noundef %i.aue) #26
  br label %_ZNSt6vectorIPN4llvm7objcopy3elf21RelocationSectionBaseESaIS4_EED2Ev.exit520

_ZNSt6vectorIPN4llvm7objcopy3elf21RelocationSectionBaseESaIS4_EED2Ev.exit520: ; preds = %.critedge371, %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #23
  br label %bb.ij

bb.ij:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit442, %_ZN4llvm5ErrorD2Ev.exit428, %_ZN4llvm5ErrorD2Ev.exit422, %_ZN4llvm5ErrorD2Ev.exit432, %_ZN4llvm5ErrorD2Ev.exit419, %_ZNSt6vectorIPN4llvm7objcopy3elf21RelocationSectionBaseESaIS4_EED2Ev.exit520, %_ZN4llvm5ErrorD2Ev.exit518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZL17dumpSectionToFileN4llvm9StringRefES0_S0_RNS_7objcopy3elf6ObjectE.exit, %bb.dg, %bb.di, %.thread676, %_ZN4llvm5ErrorD2Ev.exit404.thread, %_ZN4llvm5ErrorD2Ev.exit386.thread, %bb.f, %bb.e, %bb.ij, %bb.dl
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL11writeOutputRKN4llvm7objcopy12CommonConfigERNS0_3elf6ObjectERNS_11raw_ostreamENS4_7ElfTypeE(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1104) %1, ptr noundef nonnull align 8 dereferenceable(457) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef range(i32 0, 4) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !512, !noalias !513
  switch i32 %i.b, label %bb.b [
    i32 2, label %_ZNSt10unique_ptrIN4llvm7objcopy3elf12BinaryWriterESt14default_deleteIS3_EED2Ev.exit.i
    i32 3, label %_ZNSt10unique_ptrIN4llvm7objcopy3elf10IHexWriterESt14default_deleteIS3_EED2Ev.exit.i
    i32 4, label %_ZNSt10unique_ptrIN4llvm7objcopy3elf10SRECWriterESt14default_deleteIS3_EED2Ev.exit.i
  ]

_ZNSt10unique_ptrIN4llvm7objcopy3elf12BinaryWriterESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27, !noalias !516 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !134, !noalias !516
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !519, !noalias !516
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %3, ptr %i.f, align 8, !tbaa !522, !noalias !516
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm7objcopy3elf12BinaryWriterE, i64 16), ptr %i.c, align 8, !tbaa !161, !noalias !516
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load i8, ptr %i.h, align 8, !tbaa !524, !noalias !516
  store i8 %i.i, ptr %i.g, align 8, !tbaa !525, !noalias !516
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.l = load i64, ptr %i.k, align 8, !tbaa !540, !noalias !516
  store i64 %i.l, ptr %i.j, align 8, !tbaa !541, !noalias !516
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !516
  br label %_ZL12createWriterRKN4llvm7objcopy12CommonConfigERNS0_3elf6ObjectERNS_11raw_ostreamENS4_7ElfTypeE.exit

_ZNSt10unique_ptrIN4llvm7objcopy3elf10IHexWriterESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27, !noalias !542 ; 8 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.n, align 8, !tbaa !224, !noalias !542
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !225, !noalias !542
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %2, ptr %i.p, align 8, !tbaa !134, !noalias !542
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr null, ptr %i.q, align 8, !tbaa !519, !noalias !542
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %3, ptr %i.r, align 8, !tbaa !522, !noalias !542
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.s, align 8, !tbaa !224, !noalias !542
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !225, !noalias !542
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false), !noalias !542
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm7objcopy3elf10IHexWriterE, i64 16), ptr %i.o, align 8, !tbaa !161, !noalias !542
  br label %_ZL12createWriterRKN4llvm7objcopy12CommonConfigERNS0_3elf6ObjectERNS_11raw_ostreamENS4_7ElfTypeE.exit

_ZNSt10unique_ptrIN4llvm7objcopy3elf10SRECWriterESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27, !noalias !545 ; 8 uses
  %.sroa.0.0.copyload.i14.i = load ptr, ptr %i.u, align 8, !tbaa !224, !noalias !545
  %.sroa.2.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload.i16.i = load i64, ptr %.sroa.2.0..sroa_idx.i15.i, align 8, !tbaa !225, !noalias !545
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %2, ptr %i.w, align 8, !tbaa !134, !noalias !545
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr null, ptr %i.x, align 8, !tbaa !519, !noalias !545
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %3, ptr %i.y, align 8, !tbaa !522, !noalias !545
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %.sroa.0.0.copyload.i14.i, ptr %i.z, align 8, !tbaa !224, !noalias !545
  %.sroa.2.0..sroa_idx.i.i.i17.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 %.sroa.2.0.copyload.i16.i, ptr %.sroa.2.0..sroa_idx.i.i.i17.i, align 8, !tbaa !225, !noalias !545
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i8 0, i64 32, i1 false), !noalias !545
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm7objcopy3elf10SRECWriterE, i64 16), ptr %i.v, align 8, !tbaa !161, !noalias !545
  br label %_ZL12createWriterRKN4llvm7objcopy12CommonConfigERNS0_3elf6ObjectERNS_11raw_ostreamENS4_7ElfTypeE.exit

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1042
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !297, !range !102, !noalias !548, !noundef !103
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1035
  %i.ae = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27, !noalias !548 ; 8 uses
  %i.af = trunc nuw i8 %i.ac to i1
  %i.ag = xor i1 %i.af, true                      ; 4 uses
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !551, !range !102, !noalias !548, !noundef !103
  %i.ai = trunc nuw i8 %i.ah to i1                ; 4 uses
  switch i32 %4, label %default.unreachable [
    i32 0, label %_ZNSt10unique_ptrIN4llvm7objcopy3elf9ELFWriterINS0_6object7ELFTypeILNS0_10endiannessE1ELb0EEEEESt14default_deleteIS8_EED2Ev.exit.i.i
    i32 1, label %_ZNSt10unique_ptrIN4llvm7objcopy3elf9ELFWriterINS0_6object7ELFTypeILNS0_10endiannessE1ELb1EEEEESt14default_deleteIS8_EED2Ev.exit.i.i
    i32 2, label %_ZNSt10unique_ptrIN4llvm7objcopy3elf9ELFWriterINS0_6object7ELFTypeILNS0_10endiannessE0ELb0EEEEESt14default_deleteIS8_EED2Ev.exit.i.i
    i32 3, label %_ZNSt10unique_ptrIN4llvm7objcopy3elf9ELFWriterINS0_6object7ELFTypeILNS0_10endiannessE0ELb1EEEEESt14default_deleteIS8_EED2Ev.exit.i.i
  ]

_ZNSt10unique_ptrIN4llvm7objcopy3elf9ELFWriterINS0_6object7ELFTypeILNS0_10endiannessE1ELb0EEEEESt14default_deleteIS8_EED2Ev.exit.i.i: ; preds = %bb.b
  tail call void @_ZN4llvm7objcopy3elf9ELFWriterINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEC1ERNS1_6ObjectERNS_11raw_ostreamEbb(ptr noundef nonnull align 8 dereferenceable(42) %i.ae, ptr noundef nonnull align 8 dereferenceable(457) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %i.ag, i1 noundef zeroext %i.ai) #23, !noalias !552
  br label %_ZL12createWriterRKN4llvm7objcopy12CommonConfigERNS0_3elf6ObjectERNS_11raw_ostreamENS4_7ElfTypeE.exit

_ZNSt10unique_ptrIN4llvm7objcopy3elf9ELFWriterINS0_6object7ELFTypeILNS0_10endiannessE1ELb1EEEEESt14default_deleteIS8_EED2Ev.exit.i.i: ; preds = %bb.b
  tail call void @_ZN4llvm7objcopy3elf9ELFWriterINS_6object7ELFTypeILNS_10endiannessE1ELb1EEEEC1ERNS1_6ObjectERNS_11raw_ostreamEbb(ptr noundef nonnull align 8 dereferenceable(42) %i.ae, ptr noundef nonnull align 8 dereferenceable(457) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %i.ag, i1 noundef zeroext %i.ai) #23, !noalias !555
  br label %_ZL12createWriterRKN4llvm7objcopy12CommonConfigERNS0_3elf6ObjectERNS_11raw_ostreamENS4_7ElfTypeE.exit

_ZNSt10unique_ptrIN4llvm7objcopy3elf9ELFWriterINS0_6object7ELFTypeILNS0_10endiannessE0ELb0EEEEESt14default_deleteIS8_EED2Ev.exit.i.i: ; preds = %bb.b
  tail call void @_ZN4llvm7objcopy3elf9ELFWriterINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEC1ERNS1_6ObjectERNS_11raw_ostreamEbb(ptr noundef nonnull align 8 dereferenceable(42) %i.ae, ptr noundef nonnull align 8 dereferenceable(457) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %i.ag, i1 noundef zeroext %i.ai) #23, !noalias !558
  br label %_ZL12createWriterRKN4llvm7objcopy12CommonConfigERNS0_3elf6ObjectERNS_11raw_ostreamENS4_7ElfTypeE.exit

_ZNSt10unique_ptrIN4llvm7objcopy3elf9ELFWriterINS0_6object7ELFTypeILNS0_10endiannessE0ELb1EEEEESt14default_deleteIS8_EED2Ev.exit.i.i: ; preds = %bb.b
  tail call void @_ZN4llvm7objcopy3elf9ELFWriterINS_6object7ELFTypeILNS_10endiannessE0ELb1EEEEC1ERNS1_6ObjectERNS_11raw_ostreamEbb(ptr noundef nonnull align 8 dereferenceable(42) %i.ae, ptr noundef nonnull align 8 dereferenceable(457) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %i.ag, i1 noundef zeroext %i.ai) #23, !noalias !561
  br label %_ZL12createWriterRKN4llvm7objcopy12CommonConfigERNS0_3elf6ObjectERNS_11raw_ostreamENS4_7ElfTypeE.exit

default.unreachable:                              ; preds = %bb.b
  unreachable

_ZL12createWriterRKN4llvm7objcopy12CommonConfigERNS0_3elf6ObjectERNS_11raw_ostreamENS4_7ElfTypeE.exit: ; preds = %_ZNSt10unique_ptrIN4llvm7objcopy3elf12BinaryWriterESt14default_deleteIS3_EED2Ev.exit.i, %_ZNSt10unique_ptrIN4llvm7objcopy3elf10IHexWriterESt14default_deleteIS3_EED2Ev.exit.i, %_ZNSt10unique_ptrIN4llvm7objcopy3elf10SRECWriterESt14default_deleteIS3_EED2Ev.exit.i, %_ZNSt10unique_ptrIN4llvm7objcopy3elf9ELFWriterINS0_6object7ELFTypeILNS0_10endiannessE1ELb0EEEEESt14default_deleteIS8_EED2Ev.exit.i.i, %_ZNSt10unique_ptrIN4llvm7objcopy3elf9ELFWriterINS0_6object7ELFTypeILNS0_10endiannessE1ELb1EEEEESt14default_deleteIS8_EED2Ev.exit.i.i, %_ZNSt10unique_ptrIN4llvm7objcopy3elf9ELFWriterINS0_6object7ELFTypeILNS0_10endiannessE0ELb0EEEEESt14default_deleteIS8_EED2Ev.exit.i.i, %_ZNSt10unique_ptrIN4llvm7objcopy3elf9ELFWriterINS0_6object7ELFTypeILNS0_10endiannessE0ELb1EEEEESt14default_deleteIS8_EED2Ev.exit.i.i
  %.sink.i = phi ptr [ %i.c, %_ZNSt10unique_ptrIN4llvm7objcopy3elf12BinaryWriterESt14default_deleteIS3_EED2Ev.exit.i ], [ %i.v, %_ZNSt10unique_ptrIN4llvm7objcopy3elf10SRECWriterESt14default_deleteIS3_EED2Ev.exit.i ], [ %i.o, %_ZNSt10unique_ptrIN4llvm7objcopy3elf10IHexWriterESt14default_deleteIS3_EED2Ev.exit.i ], [ %i.ae, %_ZNSt10unique_ptrIN4llvm7objcopy3elf9ELFWriterINS0_6object7ELFTypeILNS0_10endiannessE1ELb0EEEEESt14default_deleteIS8_EED2Ev.exit.i.i ], [ %i.ae, %_ZNSt10unique_ptrIN4llvm7objcopy3elf9ELFWriterINS0_6object7ELFTypeILNS0_10endiannessE1ELb1EEEEESt14default_deleteIS8_EED2Ev.exit.i.i ], [ %i.ae, %_ZNSt10unique_ptrIN4llvm7objcopy3elf9ELFWriterINS0_6object7ELFTypeILNS0_10endiannessE0ELb0EEEEESt14default_deleteIS8_EED2Ev.exit.i.i ], [ %i.ae, %_ZNSt10unique_ptrIN4llvm7objcopy3elf9ELFWriterINS0_6object7ELFTypeILNS0_10endiannessE0ELb1EEEEESt14default_deleteIS8_EED2Ev.exit.i.i ] ; 6 uses
  %i.aj = load ptr, ptr %.sink.i, align 8, !tbaa !161
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i) #23
  %i.am = load ptr, ptr %0, align 8, !tbaa !172
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZNSt10unique_ptrIN4llvm7objcopy3elf6WriterESt14default_deleteIS3_EED2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZL12createWriterRKN4llvm7objcopy12CommonConfigERNS0_3elf6ObjectERNS_11raw_ostreamENS4_7ElfTypeE.exit
  %i.an = load ptr, ptr %.sink.i, align 8, !tbaa !161
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i) #23
  br label %_ZNSt10unique_ptrIN4llvm7objcopy3elf6WriterESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm7objcopy3elf6WriterESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZL12createWriterRKN4llvm7objcopy12CommonConfigERNS0_3elf6ObjectERNS_11raw_ostreamENS4_7ElfTypeE.exit, %_ZN4llvm5ErrorD2Ev.exit
  %i.aq = load ptr, ptr %.sink.i, align 8, !tbaa !161
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(32) %.sink.i) #23, !inline_history !564
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7objcopy3elf25executeObjcopyOnRawBinaryERKNS0_12CommonConfigERKNS0_9ELFConfigERNS_12MemoryBufferERNS_11raw_ostreamE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1104) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.llvm::objcopy::elf::BinaryReader", align 8 ; 7 uses
  %6 = alloca %"class.llvm::Expected", align 8    ; 9 uses
  %.sroa.0.sroa.0 = alloca [6 x i8], align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = load i8, ptr %2, align 8, !tbaa !441
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm7objcopy3elf12BinaryReaderE, i64 16), ptr %5, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.b, align 8, !tbaa !565
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 %i.a, ptr %i.c, align 8, !tbaa !567
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNK4llvm7objcopy3elf12BinaryReader6createEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %6, ptr noundef nonnull align 8 dereferenceable(17) %5, i1 noundef zeroext true) #23
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.b

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.g = load i64, ptr %6, align 8, !tbaa !170, !noalias !568
  %i.h = inttoptr i64 %i.g to ptr
  store ptr null, ptr %6, align 8, !tbaa !170, !noalias !568
  store ptr %i.h, ptr %0, align 8, !tbaa !172, !alias.scope !568
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %.sroa.0.sroa.0, i8 0, i64 5, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.k = load i8, ptr %i.j, align 2, !tbaa !174, !range !102, !noundef !103
  %i.l = trunc nuw i8 %i.k to i1
  %spec.select.i = select i1 %i.l, ptr %i.i, ptr %.sroa.0.sroa.0
  %.sroa.0.0.i = load i48, ptr %spec.select.i, align 4 ; 2 uses
  %i.m = and i48 %.sroa.0.0.i, 16777216
  %.not = icmp eq i48 %i.m, 0
  %i.n = and i48 %.sroa.0.0.i, 4294967296
  %.not14 = icmp eq i48 %i.n, 0                   ; 2 uses
  %i.o = select i1 %.not14, i32 3, i32 1
  %i.p = select i1 %.not14, i32 2, i32 0
  %.0.i = select i1 %.not, i32 %i.p, i32 %i.o     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0)
  %i.q = load ptr, ptr %6, align 8, !tbaa !134
  call fastcc void @_ZL10handleArgsRKN4llvm7objcopy12CommonConfigERKNS0_9ELFConfigENS0_3elf7ElfTypeERNS7_6ObjectE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(1104) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(457) %i.q)
  %i.r = load ptr, ptr %0, align 8, !tbaa !172
  %.not15 = icmp eq ptr %i.r, null
  %.pre16 = load ptr, ptr %6, align 8, !tbaa !136 ; 2 uses
  br i1 %.not15, label %_ZN4llvm5ErrorD2Ev.exit, label %.critedge

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.b
  call fastcc void @_ZL11writeOutputRKN4llvm7objcopy12CommonConfigERNS0_3elf6ObjectERNS_11raw_ostreamENS4_7ElfTypeE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(1104) %1, ptr noundef nonnull align 8 dereferenceable(457) %.pre16, ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef %.0.i)
  %.pre = load ptr, ptr %6, align 8, !tbaa !136
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm5ErrorD2Ev.exit, %bb.b, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.s = phi ptr [ %.pre, %_ZN4llvm5ErrorD2Ev.exit ], [ %.pre16, %bb.b ], [ null, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ] ; 5 uses
  %i.t = load i8, ptr %i.d, align 8
  %i.u = trunc i8 %i.t to i1
  %.not.i1.i = icmp eq ptr %i.s, null             ; 2 uses
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  br i1 %.not.i1.i, label %_ZN4llvm8ExpectedISt10unique_ptrINS_7objcopy3elf6ObjectESt14default_deleteIS4_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm7objcopy3elf6ObjectEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4llvm7objcopy3elf6ObjectEEclEPS3_.exit.i.i: ; preds = %bb.c
  call void @_ZN4llvm7objcopy3elf6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(457) dereferenceable(457) %i.s) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 464) #26
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_7objcopy3elf6ObjectESt14default_deleteIS4_EEED2Ev.exit

bb.d:                                             ; preds = %.critedge
  br i1 %.not.i1.i, label %_ZN4llvm8ExpectedISt10unique_ptrINS_7objcopy3elf6ObjectESt14default_deleteIS4_EEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.d
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !161
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #23, !inline_history !175
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_7objcopy3elf6ObjectESt14default_deleteIS4_EEED2Ev.exit

_ZN4llvm8ExpectedISt10unique_ptrINS_7objcopy3elf6ObjectESt14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN4llvm7objcopy3elf6ObjectEEclEPS3_.exit.i.i, %bb.d, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN4llvm7objcopy3elf6ReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

declare void @_ZNK4llvm7objcopy3elf12BinaryReader6createEb(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr noundef nonnull align 8 dereferenceable(17), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7objcopy3elf22executeObjcopyOnBinaryERKNS0_12CommonConfigERKNS0_9ELFConfigERNS_6object17ELFObjectFileBaseERNS_11raw_ostreamE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1104) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %7 = alloca %"class.std::unique_ptr.76", align 8 ; 7 uses
  %8 = alloca %class.anon.463, align 8            ; 4 uses
  %9 = alloca %"class.std::unique_ptr.76", align 8 ; 5 uses
  %10 = alloca %"class.llvm::objcopy::elf::ELFReader", align 8 ; 7 uses
  %11 = alloca %"class.llvm::Expected", align 8   ; 9 uses
  %12 = alloca %"class.llvm::Error", align 8      ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm7objcopy3elf9ELFReaderE, i64 16), ptr %10, align 8, !tbaa !161
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %3, ptr %i.c, align 8, !tbaa !571
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.e = load i32, ptr %i.d, align 8, !tbaa !11
  %.not.i = icmp ne i32 %i.e, 0
  call void @_ZNK4llvm7objcopy3elf9ELFReader6createEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %11, ptr noundef nonnull align 8 dereferenceable(40) %10, i1 noundef zeroext %.not.i) #23
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.b

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  %i.i = load i64, ptr %11, align 8, !tbaa !170, !noalias !574
  %i.j = inttoptr i64 %i.i to ptr
  store ptr null, ptr %11, align 8, !tbaa !170, !noalias !574
  store ptr %i.j, ptr %0, align 8, !tbaa !172, !alias.scope !574
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.l = load i8, ptr %i.k, align 2, !tbaa !174, !range !102, !noundef !103
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %switch.lookup

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 47
  %.val = load i8, ptr %i.n, align 1, !tbaa !577, !range !102, !noundef !103
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val19 = load i8, ptr %i.o, align 8
  %i.p = trunc nuw i8 %.val to i1
  %i.q = trunc nuw i8 %.val19 to i1               ; 2 uses
  %i.r = select i1 %i.q, i32 1, i32 3
  %i.s = select i1 %i.q, i32 0, i32 2
  %.0.i = select i1 %i.p, i32 %i.r, i32 %i.s
  br label %_ZL16getOutputElfTypeRKN4llvm6object6BinaryE.exit

switch.lookup:                                    ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val20 = load i32, ptr %i.t, align 8, !tbaa !578
  %i.u = sext i32 %.val20 to i64
  %i.v = getelementptr i8, ptr @switch.table._ZN4llvm7objcopy3elf22executeObjcopyOnBinaryERKNS0_12CommonConfigERKNS0_9ELFConfigERNS_6object17ELFObjectFileBaseERNS_11raw_ostreamE, i64 %i.u
  %switch.gep = getelementptr i8, ptr %i.v, i64 -13
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZL16getOutputElfTypeRKN4llvm6object6BinaryE.exit

_ZL16getOutputElfTypeRKN4llvm6object6BinaryE.exit: ; preds = %switch.lookup, %bb.c
  %i.w = phi i32 [ %.0.i, %bb.c ], [ %switch.ext, %switch.lookup ] ; 2 uses
  %i.x = load ptr, ptr %11, align 8, !tbaa !134
  call fastcc void @_ZL10handleArgsRKN4llvm7objcopy12CommonConfigERKNS0_9ELFConfigENS0_3elf7ElfTypeERNS7_6ObjectE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(1104) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef %i.w, ptr noundef nonnull align 8 dereferenceable(457) %i.x)
  %i.y = load ptr, ptr %0, align 8, !tbaa !172
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %.critedgethread-pre-split

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZL16getOutputElfTypeRKN4llvm6object6BinaryE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.z = load ptr, ptr %11, align 8, !tbaa !134
  call fastcc void @_ZL11writeOutputRKN4llvm7objcopy12CommonConfigERNS0_3elf6ObjectERNS_11raw_ostreamENS4_7ElfTypeE(ptr dead_on_unwind noalias nonnull writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(1104) %1, ptr noundef nonnull align 8 dereferenceable(457) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef %i.w)
  %i.aa = load ptr, ptr %12, align 8, !tbaa !172  ; 2 uses
  %.not31 = icmp eq ptr %i.aa, null
  br i1 %.not31, label %_ZN4llvm5ErrorD2Ev.exit25, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !224
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !225
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 5, ptr %i.ab, align 8, !tbaa !116
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !119
  store ptr %.sroa.0.0.copyload, ptr %13, align 8, !tbaa !112
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %.sroa.2.0.copyload, ptr %i.ad, align 8, !tbaa !112
  store ptr null, ptr %12, align 8, !tbaa !172
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !581
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !587
  store ptr null, ptr %7, align 8, !tbaa !253, !noalias !587
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !587
  store ptr %7, ptr %8, align 8, !tbaa !255, !noalias !587
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !587
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !587
  store ptr %i.aa, ptr %6, align 8, !tbaa !172, !noalias !587
  call void @_ZN4llvm12handleErrorsIJZNS_9FileError5buildERKNS_5TwineESt8optionalImENS_5ErrorEEUlSt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS9_EEE_EEES7_S7_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %5, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8), !noalias !587
  %i.ae = load ptr, ptr %6, align 8, !tbaa !172, !noalias !587 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZNSt10unique_ptrIN4llvm9FileErrorESt14default_deleteIS1_EED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !161, !noalias !587
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !587
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #23, !noalias !587, !inline_history !347
  br label %_ZNSt10unique_ptrIN4llvm9FileErrorESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4llvm9FileErrorESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !587
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !587
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !587
  %i.aj = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27, !noalias !587 ; 2 uses
  %i.ak = load i64, ptr %7, align 8, !tbaa !170, !noalias !587
  store i64 %i.ak, ptr %9, align 8, !tbaa !170, !noalias !587
  store ptr null, ptr %7, align 8, !tbaa !170, !noalias !587
  call void @_ZN4llvm9FileErrorC2ERKNS_5TwineESt8optionalImESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS7_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(34) %13, i64 undef, i8 0, ptr nofree noundef nonnull align 8 dereferenceable(8) %9), !noalias !587
  store ptr %i.aj, ptr %0, align 8, !tbaa !172, !alias.scope !587
  %i.al = load ptr, ptr %9, align 8, !tbaa !170, !noalias !587 ; 3 uses
  %.not.i4.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i4.i.i, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit6.i.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i5.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i5.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm9FileErrorESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !161, !noalias !587
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !587
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #23, !noalias !587, !inline_history !348
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit6.i.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit6.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i5.i.i, %_ZNSt10unique_ptrIN4llvm9FileErrorESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.ap = load ptr, ptr %7, align 8, !tbaa !170, !noalias !587 ; 3 uses
  %.not.i7.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i7.i.i, label %_ZN4llvm5ErrorD2Ev.exit22, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i8.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i8.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit6.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !161, !noalias !587
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !587
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #23, !noalias !587, !inline_history !348
  br label %_ZN4llvm5ErrorD2Ev.exit22

_ZN4llvm5ErrorD2Ev.exit22:                        ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i8.i.i, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !587
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !581
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.at = load ptr, ptr %12, align 8, !tbaa !172  ; 3 uses
end_hunk_2
