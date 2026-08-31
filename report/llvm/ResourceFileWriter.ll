Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ResourceFileWriter?download=true
inline.NumInlined: 2532
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::StringMap" = type { %"class.llvm::StringMapImpl.base", [4 x i8] }
%"class.llvm::StringMapImpl.base" = type <{ ptr, i32, i32, i32 }>
%"class.llvm::SmallVector.166" = type { %"class.llvm::SmallVectorImpl.167", %"struct.llvm::SmallVectorStorage.170" }
%"class.llvm::SmallVectorImpl.167" = type { %"class.llvm::SmallVectorTemplateBase.168" }
%"class.llvm::SmallVectorTemplateBase.168" = type { %"class.llvm::SmallVectorTemplateCommon.169" }
%"class.llvm::SmallVectorTemplateCommon.169" = type { %"class.llvm::SmallVectorBase.164" }
%"class.llvm::SmallVectorBase.164" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.170" = type { [16 x i8] }
%"class.llvm::Error" = type { ptr }
%"struct.llvm::support::detail::packed_endian_specific_integral.75" = type { %struct.anon.76 }
%struct.anon.76 = type { [2 x i8] }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage" = type { [256 x i8] }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.llvm::StringRef" = type { ptr, i64 }
%class.anon.207 = type { %class.anon.205, i8, i32 }
%class.anon.205 = type <{ ptr, i32, i8, [3 x i8] }>
%"struct.llvm::support::detail::packed_endian_specific_integral" = type { %struct.anon.74 }
%struct.anon.74 = type { [4 x i8] }
%"class.llvm::Expected" = type <{ %union.anon, i8, [7 x i8] }>
%union.anon = type { %"class.std::unique_ptr.24" }
%"class.std::unique_ptr.24" = type { %"struct.std::__uniq_ptr_data.25" }
%"struct.std::__uniq_ptr_data.25" = type { %"class.std::__uniq_ptr_impl.26" }
%"class.std::__uniq_ptr_impl.26" = type { %"class.std::tuple.27" }
%"class.std::tuple.27" = type { %"struct.std::_Tuple_impl.28" }
%"struct.std::_Tuple_impl.28" = type { %"struct.std::_Head_base.31" }
%"struct.std::_Head_base.31" = type { ptr }
%"class.llvm::SmallString" = type { %"class.llvm::SmallVector.178" }
%"class.llvm::SmallVector.178" = type { %"class.llvm::SmallVectorImpl.179", %"struct.llvm::SmallVectorStorage.182" }
%"class.llvm::SmallVectorImpl.179" = type { %"class.llvm::SmallVectorTemplateBase.180" }
%"class.llvm::SmallVectorTemplateBase.180" = type { %"class.llvm::SmallVectorTemplateCommon.181" }
%"class.llvm::SmallVectorTemplateCommon.181" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.182" = type { [128 x i8] }
%"class.llvm::ErrorOr" = type <{ %union.anon.183, i8, [7 x i8] }>
%union.anon.183 = type { %"class.std::error_code" }
%"class.std::error_code" = type { i32, ptr }
%"class.std::optional.195" = type { %"struct.std::_Optional_base.196" }
%"struct.std::_Optional_base.196" = type { %"struct.std::_Optional_payload.198" }
%"struct.std::_Optional_payload.198" = type { %"struct.std::_Optional_payload.base.202", [7 x i8] }
%"struct.std::_Optional_payload.base.202" = type { %"struct.std::_Optional_payload_base.base.201" }
%"struct.std::_Optional_payload_base.base.201" = type <{ %"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage" = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.194 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.194 = type { i64, [8 x i8] }
%"struct.llvm::support::detail::packed_endian_specific_integral.247" = type { %struct.anon.248 }
%struct.anon.248 = type { [1 x i8] }
%"struct.llvm::object::WinResHeaderPrefix" = type { %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral" }
%"class.llvm::rc::IntOrString" = type <{ %"union.llvm::rc::IntOrString::Data", i8, [7 x i8] }>
%"union.llvm::rc::IntOrString::Data" = type { %"class.llvm::StringRef" }
%"struct.llvm::rc::ResourceFileWriter::ObjectInfo" = type { i16, i32, i32, %"class.std::optional", %"class.std::optional", %"class.llvm::StringRef", %"class.std::optional.0", %"class.llvm::rc::IntOrString", %"class.llvm::rc::IntOrString" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [3 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<unsigned int>::_Storage", i8 }>
%"union.std::_Optional_payload_base<unsigned int>::_Storage" = type { i32 }
%"class.std::optional.0" = type { %"struct.std::_Optional_base.1" }
%"struct.std::_Optional_base.1" = type { %"struct.std::_Optional_payload.3" }
%"struct.std::_Optional_payload.3" = type { %"struct.std::_Optional_payload_base.base.5", [7 x i8] }
%"struct.std::_Optional_payload_base.base.5" = type { %"union.std::_Optional_payload_base<llvm::rc::ResourceFileWriter::ObjectInfo::FontInfo>::_Storage", i8 }
%"union.std::_Optional_payload_base<llvm::rc::ResourceFileWriter::ObjectInfo::FontInfo>::_Storage" = type { %"struct.llvm::rc::ResourceFileWriter::ObjectInfo::FontInfo" }
%"struct.llvm::rc::ResourceFileWriter::ObjectInfo::FontInfo" = type <{ i32, [4 x i8], %"class.llvm::StringRef", i32, i8, [3 x i8], i32, [4 x i8] }>
%"struct.llvm::object::WinResHeaderSuffix" = type { %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral" }
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"class.llvm::BinaryStreamReader" = type { ptr, %"class.llvm::BinaryStreamRef", i64 }
%"class.llvm::BinaryStreamRef" = type { %"class.llvm::BinaryStreamRefBase" }
%"class.llvm::BinaryStreamRefBase" = type { %"class.std::shared_ptr", ptr, i64, %"class.std::optional.90" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::optional.90" = type { %"struct.std::_Optional_base.91" }
%"struct.std::_Optional_base.91" = type { %"struct.std::_Optional_payload.93" }
%"struct.std::_Optional_payload.93" = type { %"struct.std::_Optional_payload_base.base.95", [7 x i8] }
%"struct.std::_Optional_payload_base.base.95" = type <{ %"union.std::_Optional_payload_base<unsigned long>::_Storage", i8 }>
%"union.std::_Optional_payload_base<unsigned long>::_Storage" = type { i64 }
%"class.llvm::rc::SingleIconCursorResource" = type { %"class.llvm::rc::RCResource.base", i32, ptr, %"class.llvm::ArrayRef" }
%"class.llvm::rc::RCResource.base" = type <{ ptr, %"class.llvm::rc::IntOrString", i16 }>
%"class.llvm::rc::IconCursorGroupResource" = type { %"class.llvm::rc::RCResource.base", i32, %"struct.llvm::rc::GroupIconDir", %"class.std::vector.84" }
%"struct.llvm::rc::GroupIconDir" = type { %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral.75" }
%"class.std::vector.84" = type { %"struct.std::_Vector_base.85" }
%"struct.std::_Vector_base.85" = type { %"struct.std::_Vector_base<llvm::rc::ResourceDirEntryStart, std::allocator<llvm::rc::ResourceDirEntryStart>>::_Vector_impl" }
%"struct.std::_Vector_base<llvm::rc::ResourceDirEntryStart, std::allocator<llvm::rc::ResourceDirEntryStart>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvm::rc::ResourceDirEntryStart, std::allocator<llvm::rc::ResourceDirEntryStart>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvm::rc::ResourceDirEntryStart, std::allocator<llvm::rc::ResourceDirEntryStart>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.anon.119 = type { %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral" }
%struct.anon.120 = type { %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral" }
%struct.anon.121 = type { %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral.75" }
%"struct.std::pair.58" = type { i16, i16 }
%"struct.llvm::rc::ResourceFileWriter::StringTableInfo::Bundle" = type <{ %"struct.std::array", %"struct.llvm::rc::ResourceFileWriter::ObjectInfo", i16, [6 x i8] }>
%"struct.std::array" = type { [16 x %"class.std::optional.62"] }
%"class.std::optional.62" = type { %"struct.std::_Optional_base.63" }
%"struct.std::_Optional_base.63" = type { %"struct.std::_Optional_payload.65" }
%"struct.std::_Optional_payload.65" = type { %"struct.std::_Optional_payload.base.69", [7 x i8] }
%"struct.std::_Optional_payload.base.69" = type { %"struct.std::_Optional_payload_base.base.68" }
%"struct.std::_Optional_payload_base.base.68" = type <{ %"union.std::_Optional_payload_base<std::vector<llvm::StringRef>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::vector<llvm::StringRef>>::_Storage" = type { %"class.std::vector.53" }
%"class.std::vector.53" = type { %"struct.std::_Vector_base.54" }
%"struct.std::_Vector_base.54" = type { %"struct.std::_Vector_base<llvm::StringRef, std::allocator<llvm::StringRef>>::_Vector_impl" }
%"struct.std::_Vector_base<llvm::StringRef, std::allocator<llvm::StringRef>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvm::StringRef, std::allocator<llvm::StringRef>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvm::StringRef, std::allocator<llvm::StringRef>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.anon.176 = type { %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral" }
%class.anon.177 = type { ptr }
%struct.AccelTableEntry = type { %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral.75", i16 }
%"struct.llvm::rc::ResourceDirEntryStart" = type { %union.anon.83, %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral" }
%union.anon.83 = type { %"struct.llvm::rc::CursorDir" }
%"struct.llvm::rc::CursorDir" = type { %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral.75" }
%"class.llvm::rc::RCInt" = type <{ i32, i8, [3 x i8] }>
%struct.anon.111 = type { %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral" }
%struct.anon.112 = type { %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral", %"struct.llvm::support::detail::packed_endian_specific_integral" }
%struct.anon.113 = type { %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral.75", %"struct.llvm::support::detail::packed_endian_specific_integral.75" }
%"class.llvm::rc::BundleResource" = type { %"class.llvm::rc::RCResource.base", [6 x i8], %"struct.llvm::rc::ResourceFileWriter::StringTableInfo::Bundle" }

$_ZN4llvm2rc18ResourceFileWriter8writeIntItEEmRKT_ = comdat any

$_ZN4llvm2rc18ResourceFileWriter8writeIntIhEEmRKT_ = comdat any

$_ZN4llvm2rc10RCResourceD2Ev = comdat any

$_ZN4llvm2rc23IconCursorGroupResourceD2Ev = comdat any

$_ZN4llvm18BinaryStreamReaderD2Ev = comdat any

$_ZN4llvm2rc14BundleResourceD2Ev = comdat any

$_ZN4llvm11SmallVectorIjLj4EED2Ev = comdat any

$_ZN4llvm2rc18ResourceFileWriterD2Ev = comdat any

$_ZN4llvm2rc18ResourceFileWriterD0Ev = comdat any

$_ZN4llvm15SmallVectorImplItE4swapERS1_ = comdat any

$_ZN4llvm9ErrorList4joinENS_5ErrorES1_ = comdat any

$_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt5arrayISt8optionalISt6vectorIN4llvm9StringRefESaIS3_EEELm16EED2Ev = comdat any

$_ZNK4llvm2rc10RCResource3logERNS_11raw_ostreamE = comdat any

$_ZN4llvm2rc24SingleIconCursorResourceD0Ev = comdat any

$_ZNK4llvm2rc10RCResource5visitEPNS0_7VisitorE = comdat any

$_ZNK4llvm2rc10RCResource10applyStmtsEPNS0_7VisitorE = comdat any

$_ZNK4llvm2rc24SingleIconCursorResource7getKindEv = comdat any

$_ZNK4llvm2rc24SingleIconCursorResource15getResourceTypeEv = comdat any

$_ZNK4llvm2rc24SingleIconCursorResource19getResourceTypeNameEv = comdat any

$_ZN4llvm2rc23IconCursorGroupResourceD0Ev = comdat any

$_ZNK4llvm2rc23IconCursorGroupResource7getKindEv = comdat any

$_ZNK4llvm2rc23IconCursorGroupResource15getResourceTypeEv = comdat any

$_ZNK4llvm2rc23IconCursorGroupResource19getResourceTypeNameEv = comdat any

$_ZN4llvm18BinaryStreamReaderD0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN4llvm2rc14BundleResourceD0Ev = comdat any

$_ZNK4llvm2rc14BundleResource7getKindEv = comdat any

$_ZNK4llvm2rc14BundleResource15getResourceTypeEv = comdat any

$_ZNK4llvm2rc14BundleResource19getResourceTypeNameEv = comdat any

$_ZNSt8_Rb_treeISt4pairIttES0_IKS1_N4llvm2rc18ResourceFileWriter15StringTableInfo6BundleEESt10_Select1stIS8_ESt4lessIS1_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZN4llvm23SmallVectorTemplateBaseItLb1EE15growAndPushBackEt = comdat any

$_ZNSt8_Rb_treeISt4pairIttES0_IKS1_N4llvm2rc18ResourceFileWriter15StringTableInfo6BundleEESt10_Select1stIS8_ESt4lessIS1_ESaIS8_EE22_M_emplace_hint_uniqueIJRS1_S7_EEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_ = comdat any

$_ZNSt8_Rb_treeISt4pairIttES0_IKS1_N4llvm2rc18ResourceFileWriter15StringTableInfo6BundleEESt10_Select1stIS8_ESt4lessIS1_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS2_ = comdat any

$_ZNSt5arrayISt8optionalISt6vectorIN4llvm9StringRefESaIS3_EEELm16EEC2EOS7_ = comdat any

$_ZTVN4llvm2rc24SingleIconCursorResourceE = comdat any

$_ZTVN4llvm2rc23IconCursorGroupResourceE = comdat any

$_ZTVN4llvm18BinaryStreamReaderE = comdat any

$_ZTVN4llvm2rc14BundleResourceE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [10 x i8] c"Error in \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" statement (ID \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"): \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"String ID\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Font size\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Font weight\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Font charset\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Primary language ID\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Sublanguage ID\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Resource type\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Resource ID\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"ACCELERATORS entry ID\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"Accelerator can't be both ASCII and VIRTKEY\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"Can only apply SHIFT or CONTROL to VIRTKEY accelerators\00", align 1
@.str.14 = private unnamed_addr constant [65 x i8] c"Accelerator with a numeric event must be either ASCII or VIRTKEY\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Numeric event key ID\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"Accelerator string events should have length 1 or 2\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"No character following '^' in accelerator event\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"VIRTKEY accelerator events can't be preceded by '^'\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"Control character accelerator event should be alphabetic\00", align 1
@.str.20 = private unnamed_addr constant [63 x i8] c"Event string should be one-character, possibly preceded by '^'\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"Non-alphanumeric characters cannot describe virtual keys\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"Non-ASCII description of accelerator\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Incorrect bitmap file.\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"Incorrect icon/cursor Reserved field; should be 0.\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"Incorrect icon/cursor ResType field; should be \00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_ZN4llvm2rc7Control13SupportedCtlsE = external global %"class.llvm::StringMap", align 8
@.str.27 = private unnamed_addr constant [28 x i8] c"Dialog control x-coordinate\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"Dialog control y-coordinate\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"Dialog control width\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Dialog control height\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Control ID in simple DIALOG resource\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Control reference ID\00", align 1
@.str.34 = private unnamed_addr constant [66 x i8] c"16 higher bits of DIALOG resource style cannot be equal to 0xFFFF\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"Number of dialog controls\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"Dialog x-coordinate\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"Dialog y-coordinate\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"Dialog width\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"Dialog height\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"MENUITEM action ID\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"Multiple STRINGTABLE strings located under ID \00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"STRINGTABLE string size\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"Number in user-defined resource\00", align 1
@.str.44 = private unnamed_addr constant [52 x i8] c"Character in narrow string in user-defined resource\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"VALUE \00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c" cannot contain both strings and integers\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"VERSIONINFO integer value\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"VS_VERSION_INFO\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"FILEVERSION fields\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"PRODUCTVERSION fields\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"INCLUDE\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"error : file not found : \00", align 1
@_ZTVN4llvm2rc18ResourceFileWriterE = unnamed_addr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr null, ptr @_ZN4llvm2rc18ResourceFileWriter17visitNullResourceEPKNS0_10RCResourceE, ptr @_ZN4llvm2rc18ResourceFileWriter25visitAcceleratorsResourceEPKNS0_10RCResourceE, ptr @_ZN4llvm2rc18ResourceFileWriter19visitBitmapResourceEPKNS0_10RCResourceE, ptr @_ZN4llvm2rc18ResourceFileWriter19visitCursorResourceEPKNS0_10RCResourceE, ptr @_ZN4llvm2rc18ResourceFileWriter19visitDialogResourceEPKNS0_10RCResourceE, ptr @_ZN4llvm2rc18ResourceFileWriter17visitHTMLResourceEPKNS0_10RCResourceE, ptr @_ZN4llvm2rc18ResourceFileWriter17visitIconResourceEPKNS0_10RCResourceE, ptr @_ZN4llvm2rc18ResourceFileWriter17visitMenuResourceEPKNS0_10RCResourceE, ptr @_ZN4llvm2rc18ResourceFileWriter19visitMenuExResourceEPKNS0_10RCResourceE, ptr @_ZN4llvm2rc18ResourceFileWriter24visitStringTableResourceEPKNS0_10RCResourceE, ptr @_ZN4llvm2rc18ResourceFileWriter24visitUserDefinedResourceEPKNS0_10RCResourceE, ptr @_ZN4llvm2rc18ResourceFileWriter24visitVersionInfoResourceEPKNS0_10RCResourceE, ptr @_ZN4llvm2rc18ResourceFileWriter16visitCaptionStmtEPKNS0_11CaptionStmtE, ptr @_ZN4llvm2rc18ResourceFileWriter14visitClassStmtEPKNS0_9ClassStmtE, ptr @_ZN4llvm2rc18ResourceFileWriter24visitCharacteristicsStmtEPKNS0_19CharacteristicsStmtE, ptr @_ZN4llvm2rc18ResourceFileWriter16visitExStyleStmtEPKNS0_11ExStyleStmtE, ptr @_ZN4llvm2rc18ResourceFileWriter13visitFontStmtEPKNS0_8FontStmtE, ptr @_ZN4llvm2rc18ResourceFileWriter17visitLanguageStmtEPKNS0_16LanguageResourceE, ptr @_ZN4llvm2rc18ResourceFileWriter14visitStyleStmtEPKNS0_9StyleStmtE, ptr @_ZN4llvm2rc18ResourceFileWriter16visitVersionStmtEPKNS0_11VersionStmtE, ptr @_ZN4llvm2rc18ResourceFileWriter13visitMenuStmtEPKNS0_8MenuStmtE, ptr @_ZN4llvm2rc18ResourceFileWriterD2Ev, ptr @_ZN4llvm2rc18ResourceFileWriterD0Ev] }, align 8
@.str.53 = private unnamed_addr constant [28 x i8] c"Non-ASCII 8-bit codepoint (\00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c") can't be interpreted in the current codepage\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"Expected \22\22\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"Expected \\\22\22\00", align 1
@_ZZN4llvm2rcL15cp1252ToUnicodeEhE5Map80 = internal unnamed_addr constant [32 x i16] [i16 8364, i16 129, i16 8218, i16 402, i16 8222, i16 8230, i16 8224, i16 8225, i16 710, i16 8240, i16 352, i16 8249, i16 338, i16 141, i16 381, i16 143, i16 144, i16 8216, i16 8217, i16 8220, i16 8221, i16 8226, i16 8211, i16 8212, i16 732, i16 8482, i16 353, i16 8250, i16 339, i16 157, i16 382, i16 376], align 16
@.str.57 = private unnamed_addr constant [22 x i8] c"Non-8-bit codepoint (\00", align 1
@.str.58 = private unnamed_addr constant [46 x i8] c") can't occur in a user-defined narrow string\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"Non-8-bit escaped char (\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c") can't occur in narrow string\00", align 1
@.str.61 = private unnamed_addr constant [34 x i8] c"Unable to interpret single byte (\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c") as UTF-8\00", align 1
@.str.63 = private unnamed_addr constant [38 x i8] c") can't occur in a non-Unicode string\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@_ZN4llvm9ErrorList2IDE = external global i8, align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN4llvm9ErrorListE = external unnamed_addr constant { [10 x ptr] }, align 8
@.str.67 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c") does not fit in \00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c" bits.\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"Accelerator ID \00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVN4llvm2rc24SingleIconCursorResourceE = linkonce_odr unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2rc10RCResource3logERNS_11raw_ostreamE, ptr @_ZN4llvm2rc10RCResourceD2Ev, ptr @_ZN4llvm2rc24SingleIconCursorResourceD0Ev, ptr @_ZNK4llvm2rc10RCResource5visitEPNS0_7VisitorE, ptr @_ZNK4llvm2rc10RCResource10applyStmtsEPNS0_7VisitorE, ptr @_ZNK4llvm2rc24SingleIconCursorResource7getKindEv, ptr @_ZNK4llvm2rc24SingleIconCursorResource15getResourceTypeEv, ptr @_ZNK4llvm2rc24SingleIconCursorResource19getResourceTypeNameEv] }, comdat, align 8
@.str.72 = private unnamed_addr constant [16 x i8] c"Base statement\0A\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"Icon/cursor image\00", align 1
@_ZTVN4llvm2rc23IconCursorGroupResourceE = linkonce_odr unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2rc10RCResource3logERNS_11raw_ostreamE, ptr @_ZN4llvm2rc23IconCursorGroupResourceD2Ev, ptr @_ZN4llvm2rc23IconCursorGroupResourceD0Ev, ptr @_ZNK4llvm2rc10RCResource5visitEPNS0_7VisitorE, ptr @_ZNK4llvm2rc10RCResource10applyStmtsEPNS0_7VisitorE, ptr @_ZNK4llvm2rc23IconCursorGroupResource7getKindEv, ptr @_ZNK4llvm2rc23IconCursorGroupResource15getResourceTypeEv, ptr @_ZNK4llvm2rc23IconCursorGroupResource19getResourceTypeNameEv] }, comdat, align 8
@.str.74 = private unnamed_addr constant [18 x i8] c"Icon/cursor group\00", align 1
@_ZTVN4llvm18BinaryStreamReaderE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4llvm18BinaryStreamReaderD2Ev, ptr @_ZN4llvm18BinaryStreamReaderD0Ev] }, comdat, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.75 = private unnamed_addr constant [15 x i8] c" control  (ID \00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"):\00", align 1
@_ZTVN4llvm2rc14BundleResourceE = linkonce_odr unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2rc10RCResource3logERNS_11raw_ostreamE, ptr @_ZN4llvm2rc14BundleResourceD2Ev, ptr @_ZN4llvm2rc14BundleResourceD0Ev, ptr @_ZNK4llvm2rc10RCResource5visitEPNS0_7VisitorE, ptr @_ZNK4llvm2rc10RCResource10applyStmtsEPNS0_7VisitorE, ptr @_ZNK4llvm2rc14BundleResource7getKindEv, ptr @_ZNK4llvm2rc14BundleResource15getResourceTypeEv, ptr @_ZNK4llvm2rc14BundleResource19getResourceTypeNameEv] }, comdat, align 8
@.str.77 = private unnamed_addr constant [12 x i8] c"STRINGTABLE\00", align 1
@"_ZZZN4llvm2rc18ResourceFileWriter20writeVersionInfoBodyEPKNS0_10RCResourceEENK3$_1clENS0_19VersionInfoResource16VersionInfoFixed20VersionInfoFixedTypeEE10DefaultOut" = internal global %"class.llvm::SmallVector.166" zeroinitializer, align 8
@"_ZGVZZN4llvm2rc18ResourceFileWriter20writeVersionInfoBodyEPKNS0_10RCResourceEENK3$_1clENS0_19VersionInfoResource16VersionInfoFixed20VersionInfoFixedTypeEE10DefaultOut" = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@.str.81 = private unnamed_addr constant [26 x i8] c"-bit signed integer type.\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c") cannot be negative.\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4llvm2rc18ResourceFileWriter11writeObjectENS_8ArrayRefIhEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(250) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #20, !inline_history !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = add i64 %i.f, %i.k
  %i.n = sub i64 %i.m, %i.l
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef %1, i64 noundef %2) #20 ; 0 uses
  ret i64 %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_0
begin_hunk_1_@_ZN4llvm2rc18ResourceFileWriter27writeSingleIconOrCursorBodyEPKNS0_10RCResourceE:bb.a
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(48) %i.h) #20, !inline_history !212 ; 0 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.n = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 1 dereferenceable(2) %i.f, i64 noundef 2) #20 ; 0 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !833, !nonnull !63
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(48) %i.q) #20, !inline_history !212 ; 0 uses
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.w = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 1 dereferenceable(2) %i.p, i64 noundef 2) #20 ; 0 uses
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload = load ptr, ptr %i.x, align 8, !tbaa !80
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8    ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(48) %i.z) #20, !inline_history !832 ; 0 uses
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !8
  %i.af = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload) #20 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm2rc18ResourceFileWriter26writeIconOrCursorGroupBodyEPKNS0_10RCResourceE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(250) %1, ptr noundef %2) #0 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::support::detail::packed_endian_specific_integral.75", align 2 ; 4 uses
  %4 = alloca %"struct.llvm::rc::ResourceDirEntryStart", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(48) %i.c) #20, !inline_history !834 ; 0 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 1 dereferenceable(6) %i.a, i64 noundef 6) #20 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !437  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !437  ; 2 uses
  %.not11 = icmp eq ptr %i.k, %i.m
  br i1 %.not11, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  br label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !72
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.08.012 = phi ptr [ %i.k, %.lr.ph ], [ %i.ae, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.08.012, i64 12, i1 false), !tbaa.struct !405
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(48) %i.o) #20, !inline_history !835 ; 0 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.u = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 1 dereferenceable(12) %4, i64 noundef 12) #20 ; 0 uses
  %i.v = load i16, ptr %i.n, align 8, !tbaa !438  ; 2 uses
  %i.w = add i16 %i.v, 1
  store i16 %i.w, ptr %i.n, align 8, !tbaa !438
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i16 %i.v, ptr %3, align 2
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(48) %i.x) #20, !inline_history !76 ; 0 uses
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.ad = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef 2) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.m
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm2rc18ResourceFileWriter23visitSingleIconOrCursorEPKNS0_10RCResourceE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(250) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm2rc18ResourceFileWriter13writeResourceEPKNS0_10RCResourceEMS1_FNS_5ErrorES4_E(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(250) %1, ptr noundef %2, i64 ptrtoint (ptr @_ZN4llvm2rc18ResourceFileWriter27writeSingleIconOrCursorBodyEPKNS0_10RCResourceE to i64), i64 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm2rc18ResourceFileWriter22visitIconOrCursorGroupEPKNS0_10RCResourceE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(250) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm2rc18ResourceFileWriter13writeResourceEPKNS0_10RCResourceEMS1_FNS_5ErrorES4_E(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(250) %1, ptr noundef %2, i64 ptrtoint (ptr @_ZN4llvm2rc18ResourceFileWriter26writeIconOrCursorGroupBodyEPKNS0_10RCResourceE to i64), i64 0)
  ret void
}

declare void @_ZN4llvm18BinaryStreamReaderC1ENS_9StringRefENS_10endiannessE(ptr noundef nonnull align 8 dereferenceable(64), ptr, i64, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2rc10RCResourceD2Ev(ptr noundef nonnull align 8 dead_on_return(34) dereferenceable(34) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2rc23IconCursorGroupResourceD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm2rc23IconCursorGroupResourceE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !449  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !451
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm2rc21ResourceDirEntryStartESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18BinaryStreamReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !453  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !454
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !456
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !836
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !836
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !233
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, !prof !458

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit

_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm2rc18ResourceFileWriter24writeSingleDialogControlERKNS0_7ControlEb(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Error") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(250) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::support::detail::packed_endian_specific_integral.75", align 2 ; 4 uses
  %5 = alloca %"struct.llvm::support::detail::packed_endian_specific_integral.75", align 2 ; 4 uses
  %6 = alloca %"struct.llvm::support::detail::packed_endian_specific_integral", align 4 ; 4 uses
  %7 = alloca %"struct.llvm::support::detail::packed_endian_specific_integral.75", align 2 ; 4 uses
  %8 = alloca %"struct.llvm::support::detail::packed_endian_specific_integral.247", align 1 ; 4 uses
  %9 = alloca %"class.llvm::rc::RCInt", align 4   ; 5 uses
  %10 = alloca %struct.anon.111, align 4          ; 5 uses
  %11 = alloca %struct.anon.112, align 4          ; 6 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %struct.anon.113, align 8          ; 4 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 17 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(48) %i.c) #20, !inline_history !336
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = add i64 %i.g, %i.l
  %i.o = sub i64 %i.n, %i.m
  %.fr109 = freeze i64 %i.o
  %i.p = and i64 %.fr109, 3                       ; 2 uses
  %i.q = sub nuw nsw i64 4, %i.p
  %.cmp.not.not = icmp eq i64 %i.p, 0
  br i1 %.cmp.not.not, label %_ZN4llvm2rc18ResourceFileWriter9padStreamEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.08.i = phi i64 [ %i.y, %.lr.ph.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store i8 0, ptr %8, align 1
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(48) %i.r) #20, !inline_history !337 ; 0 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.x = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %8, i64 noundef 1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.y = add nuw nsw i64 %.08.i, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.q
  br i1 %exitcond.not, label %_ZN4llvm2rc18ResourceFileWriter9padStreamEm.exit, label %.lr.ph.i, !llvm.loop !271

_ZN4llvm2rc18ResourceFileWriter9padStreamEm.exit: ; preds = %.lr.ph.i, %bb.a
  %.sroa.024.0.copyload = load ptr, ptr %2, align 8, !tbaa !80 ; 2 uses
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.225.0.copyload = load i64, ptr %.sroa.225.0..sroa_idx, align 8, !tbaa !81 ; 2 uses
  %i.z = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %.sroa.024.0.copyload, i64 %.sroa.225.0.copyload) #20
  %i.aa = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) @_ZN4llvm2rc7Control13SupportedCtlsE, ptr %.sroa.024.0.copyload, i64 %.sroa.225.0.copyload, i32 noundef %i.z) #20 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  %i.ac = load ptr, ptr @_ZN4llvm2rc7Control13SupportedCtlsE, align 8, !tbaa !837
  br i1 %i.ab, label %_ZNK4llvm9StringMapINS_2rc7Control7CtlInfoENS_15MallocAllocatorEE6lookupENS_9StringRefE.exit, label %_ZNK4llvm9StringMapINS_2rc7Control7CtlInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i

_ZNK4llvm9StringMapINS_2rc7Control7CtlInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i: ; preds = %_ZN4llvm2rc18ResourceFileWriter9padStreamEm.exit
  %i.ad = sext i32 %i.aa to i64                   ; 2 uses
  %.pre.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm2rc7Control13SupportedCtlsE, i64 8), align 8, !tbaa !841
  %.pre6.i = zext i32 %.pre.i to i64
  %i.ae = icmp eq i64 %i.ad, %.pre6.i
  br i1 %i.ae, label %_ZNK4llvm9StringMapINS_2rc7Control7CtlInfoENS_15MallocAllocatorEE6lookupENS_9StringRefE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm9StringMapINS_2rc7Control7CtlInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !842
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.03.0.copyload.i = load i64, ptr %i.ah, align 8
  %i.ai = trunc i64 %.sroa.03.0.copyload.i to i32
  br label %_ZNK4llvm9StringMapINS_2rc7Control7CtlInfoENS_15MallocAllocatorEE6lookupENS_9StringRefE.exit

_ZNK4llvm9StringMapINS_2rc7Control7CtlInfoENS_15MallocAllocatorEE6lookupENS_9StringRefE.exit: ; preds = %_ZN4llvm2rc18ResourceFileWriter9padStreamEm.exit, %_ZNK4llvm9StringMapINS_2rc7Control7CtlInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i, %bb.b
  %.sroa.03.0.i = phi i32 [ %i.ai, %bb.b ], [ 0, %_ZNK4llvm9StringMapINS_2rc7Control7CtlInfoENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i ], [ 0, %_ZN4llvm2rc18ResourceFileWriter9padStreamEm.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 60
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 0, ptr %9, align 4, !tbaa !844
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i8 0, ptr %.4..4..4..sroa_idx, align 4, !tbaa !846
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !847, !range !108, !noundef !63
  %i.am = trunc nuw i8 %i.al to i1                ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 68
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4
  %.sroa.0.0.in.i = select i1 %i.am, ptr %i.aj, ptr %9
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 4
  %i.an = xor i32 %.sroa.3.0.copyload.i, -1
  %i.ao = select i1 %i.am, i32 %i.an, i32 -1
  %i.ap = and i32 %i.ao, %.sroa.03.0.i
  %.sroa.096.0.extract.trunc = trunc i64 %.sroa.0.0.i to i32
  %i.aq = or i32 %i.ap, %.sroa.096.0.extract.trunc ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.at = load i8, ptr %i.as, align 8, !tbaa !461, !range !108, !noundef !63
  %i.au = trunc nuw i8 %i.at to i1
  %.val.i = load i32, ptr %i.ar, align 4
  %.0.i = select i1 %i.au, i32 %.val.i, i32 0     ; 2 uses
  br i1 %3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm9StringMapINS_2rc7Control7CtlInfoENS_15MallocAllocatorEE6lookupENS_9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store i32 %i.aq, ptr %10, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %.0.i, ptr %i.av, align 4
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef i64 %i.az(ptr noundef nonnull align 8 dereferenceable(48) %i.aw) #20, !inline_history !848 ; 0 uses
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.bc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 1 dereferenceable(8) %10, i64 noundef 8) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.e

bb.d:                                             ; preds = %_ZNK4llvm9StringMapINS_2rc7Control7CtlInfoENS_15MallocAllocatorEE6lookupENS_9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !461, !range !108, !noundef !63
  %i.bg = trunc nuw i8 %i.bf to i1
  %.val.i73 = load i32, ptr %i.bd, align 4
  %.0.i75 = select i1 %i.bg, i32 %.val.i73, i32 0
  store i32 %.0.i75, ptr %11, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %.0.i, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %i.aq, ptr %i.bi, align 4
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef i64 %i.bm(ptr noundef nonnull align 8 dereferenceable(48) %i.bj) #20, !inline_history !849 ; 0 uses
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.bp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull align 1 dereferenceable(12) %11, i64 noundef 12) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !850
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.bt, align 1, !tbaa !92
  store ptr @.str.27, ptr %12, align 8, !tbaa !82
  store i8 3, ptr %i.bs, align 8, !tbaa !89
  call fastcc void @_ZN4llvm2rcL21checkSignedNumberFitsIsEENS_5ErrorEjRKNS_5TwineEb(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef %i.br, ptr noundef nonnull align 8 dereferenceable(34) %12, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.bu = load ptr, ptr %0, align 8, !tbaa !72
  %.not110 = icmp eq ptr %i.bu, null
  br i1 %.not110, label %_ZN4llvm5ErrorD2Ev.exit, label %.critedge

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !851
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.by, align 1, !tbaa !92
  store ptr @.str.28, ptr %13, align 8, !tbaa !82
  store i8 3, ptr %i.bx, align 8, !tbaa !89
  call fastcc void @_ZN4llvm2rcL21checkSignedNumberFitsIsEENS_5ErrorEjRKNS_5TwineEb(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(34) %13, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.bz = load ptr, ptr %0, align 8, !tbaa !72
  %.not111 = icmp eq ptr %i.bz, null
  br i1 %.not111, label %_ZN4llvm5ErrorD2Ev.exit77, label %.critedge

_ZN4llvm5ErrorD2Ev.exit77:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !852
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.cd, align 1, !tbaa !92
  store ptr @.str.29, ptr %14, align 8, !tbaa !82
  store i8 3, ptr %i.cc, align 8, !tbaa !89
  call fastcc void @_ZN4llvm2rcL21checkSignedNumberFitsIsEENS_5ErrorEjRKNS_5TwineEb(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 noundef %i.cb, ptr noundef nonnull align 8 dereferenceable(34) %14, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.ce = load ptr, ptr %0, align 8, !tbaa !72
  %.not112 = icmp eq ptr %i.ce, null
  br i1 %.not112, label %_ZN4llvm5ErrorD2Ev.exit78, label %.critedge

_ZN4llvm5ErrorD2Ev.exit78:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit77
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !853
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.ci, align 1, !tbaa !92
  store ptr @.str.30, ptr %15, align 8, !tbaa !82
  store i8 3, ptr %i.ch, align 8, !tbaa !89
  call fastcc void @_ZN4llvm2rcL21checkSignedNumberFitsIsEENS_5ErrorEjRKNS_5TwineEb(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 noundef %i.cg, ptr noundef nonnull align 8 dereferenceable(34) %15, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.cj = load ptr, ptr %0, align 8, !tbaa !72
  %.not113 = icmp eq ptr %i.cj, null
  br i1 %.not113, label %_ZN4llvm5ErrorD2Ev.exit79, label %.critedge

_ZN4llvm5ErrorD2Ev.exit79:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.ck = load <4 x i32>, ptr %i.bq, align 4, !tbaa !233
  %i.cl = trunc <4 x i32> %i.ck to <4 x i16>
  store <4 x i16> %i.cl, ptr %16, align 8
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 80
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef i64 %i.cp(ptr noundef nonnull align 8 dereferenceable(48) %i.cm) #20, !inline_history !854 ; 0 uses
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.cs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cr, ptr noundef nonnull align 1 dereferenceable(8) %16, i64 noundef 8) #20 ; 0 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  br i1 %3, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit79
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !520 ; 2 uses
  %.not = icmp eq i32 %i.cu, -1
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit80, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.cv = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 1, ptr %i.cw, align 1, !tbaa !92
  store ptr @.str.31, ptr %17, align 8, !tbaa !82
  store i8 3, ptr %i.cv, align 8, !tbaa !89
  call fastcc void @_ZN4llvm2rcL15checkNumberFitsEjmRKNS_5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 noundef %i.cu, i64 noundef 16, ptr noundef nonnull align 8 dereferenceable(34) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.cx = load ptr, ptr %0, align 8, !tbaa !72
  %.not114 = icmp eq ptr %i.cx, null
  br i1 %.not114, label %._ZN4llvm5ErrorD2Ev.exit80_crit_edge, label %.critedge65

._ZN4llvm5ErrorD2Ev.exit80_crit_edge:             ; preds = %bb.g
  %.pre = load i32, ptr %i.ct, align 8, !tbaa !520
  %i.cy = trunc i32 %.pre to i16
  br label %_ZN4llvm5ErrorD2Ev.exit80

_ZN4llvm5ErrorD2Ev.exit80:                        ; preds = %._ZN4llvm5ErrorD2Ev.exit80_crit_edge, %bb.f
  %i.cz = phi i16 [ %i.cy, %._ZN4llvm5ErrorD2Ev.exit80_crit_edge ], [ -1, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i16 %i.cz, ptr %7, align 2
  %i.da = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call noundef i64 %i.dd(ptr noundef nonnull align 8 dereferenceable(48) %i.da) #20, !inline_history !76 ; 0 uses
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.dg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.df, ptr noundef nonnull align 1 dereferenceable(2) %7, i64 noundef 2) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.i

bb.h:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit79
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.dh = load i32, ptr %i.ct, align 8, !tbaa !233
  store i32 %i.dh, ptr %6, align 4
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 80
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = call noundef i64 %i.dl(ptr noundef nonnull align 8 dereferenceable(48) %i.di) #20, !inline_history !218 ; 0 uses
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.do = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dn, ptr noundef nonnull align 1 dereferenceable(4) %6, i64 noundef 4) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4llvm5ErrorD2Ev.exit80
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !216, !range !108, !noalias !855, !noundef !63
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %_ZN4llvm2rc18ResourceFileWriter16writeIntOrStringERKNS0_11IntOrStringE.exit.thread, label %_ZN4llvm2rc18ResourceFileWriter16writeIntOrStringERKNS0_11IntOrStringE.exit

_ZN4llvm2rc18ResourceFileWriter16writeIntOrStringERKNS0_11IntOrStringE.exit.thread: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !855
  store i16 -1, ptr %5, align 2, !noalias !855
  %i.dt = load ptr, ptr %i.b, align 8, !tbaa !8, !noalias !855 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !11, !noalias !855
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 80
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !855
  %i.dx = call noundef i64 %i.dw(ptr noundef nonnull align 8 dereferenceable(48) %i.dt) #20, !noalias !855, !inline_history !217 ; 0 uses
  %i.dy = load ptr, ptr %i.b, align 8, !tbaa !8, !noalias !855
  %i.dz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dy, ptr noundef nonnull align 1 dereferenceable(2) %5, i64 noundef 2) #20, !noalias !855 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !855
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dp, align 8, !noalias !855
  %i.ea = trunc i64 %.sroa.0.0.copyload.i.i to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !855
  store i16 %i.ea, ptr %4, align 2, !noalias !855
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !8, !noalias !855 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !11, !noalias !855
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !855
  %i.ef = call noundef i64 %i.ee(ptr noundef nonnull align 8 dereferenceable(48) %i.eb) #20, !noalias !855, !inline_history !217 ; 0 uses
  %i.eg = load ptr, ptr %i.b, align 8, !tbaa !8, !noalias !855
  %i.eh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.eg, ptr noundef nonnull align 1 dereferenceable(2) %4, i64 noundef 2) #20, !noalias !855 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !855
  br label %_ZN4llvm5ErrorD2Ev.exit82

_ZN4llvm2rc18ResourceFileWriter16writeIntOrStringERKNS0_11IntOrStringE.exit: ; preds = %bb.i
  %.sroa.0.0.copyload.i81 = load ptr, ptr %i.dp, align 8, !tbaa !80, !noalias !855
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !81, !noalias !855
  call void @_ZN4llvm2rc18ResourceFileWriter12writeCStringENS_9StringRefEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull readonly align 8 dereferenceable(250) %1, ptr %.sroa.0.0.copyload.i81, i64 %.sroa.2.0.copyload.i, i1 noundef zeroext true)
  %.pr = load ptr, ptr %0, align 8, !tbaa !72
  %.not115 = icmp eq ptr %.pr, null
  br i1 %.not115, label %_ZN4llvm5ErrorD2Ev.exit82, label %.critedge65

_ZN4llvm5ErrorD2Ev.exit82:                        ; preds = %_ZN4llvm2rc18ResourceFileWriter16writeIntOrStringERKNS0_11IntOrStringE.exit, %_ZN4llvm2rc18ResourceFileWriter16writeIntOrStringERKNS0_11IntOrStringE.exit.thread
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.088.0.copyload = load i64, ptr %i.ei, align 8
  %.sroa.290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.290.0.copyload = load i8, ptr %.sroa.290.0..sroa_idx, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.ej = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.ek, align 1, !tbaa !92
  store ptr @.str.32, ptr %18, align 8, !tbaa !82
  store i8 3, ptr %i.ej, align 8, !tbaa !89
  %i.el = trunc nuw i8 %.sroa.290.0.copyload to i1
  br i1 %i.el, label %_ZN4llvm2rcL16checkIntOrStringENS0_11IntOrStringERKNS_5TwineE.exit, label %_ZN4llvm2rcL16checkIntOrStringENS0_11IntOrStringERKNS_5TwineE.exit.thread

_ZN4llvm2rcL16checkIntOrStringENS0_11IntOrStringERKNS_5TwineE.exit.thread: ; preds = %_ZN4llvm5ErrorD2Ev.exit82
  store ptr null, ptr %0, align 8, !tbaa !72, !alias.scope !858
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %_ZN4llvm5ErrorD2Ev.exit84

_ZN4llvm2rcL16checkIntOrStringENS0_11IntOrStringERKNS_5TwineE.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit82
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.088.0.copyload to i32
  call fastcc void @_ZN4llvm2rcL15checkNumberFitsEjmRKNS_5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 noundef %.sroa.0.0.extract.trunc.i, i64 noundef 16, ptr noundef nonnull align 8 dereferenceable(34) %18)
  %.pr108 = load ptr, ptr %0, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %.not116 = icmp eq ptr %.pr108, null
  br i1 %.not116, label %_ZN4llvm5ErrorD2Ev.exit84, label %.critedge65

_ZN4llvm5ErrorD2Ev.exit84:                        ; preds = %_ZN4llvm2rcL16checkIntOrStringENS0_11IntOrStringERKNS_5TwineE.exit, %_ZN4llvm2rcL16checkIntOrStringENS0_11IntOrStringERKNS_5TwineE.exit.thread
  call void @_ZN4llvm2rc18ResourceFileWriter16writeIntOrStringERKNS0_11IntOrStringE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(250) %1, ptr noundef nonnull align 8 dereferenceable(17) %i.ei)
  %i.em = load ptr, ptr %0, align 8, !tbaa !72
  %.not117 = icmp eq ptr %i.em, null
  br i1 %.not117, label %_ZN4llvm5ErrorD2Ev.exit86, label %.critedge65

_ZN4llvm5ErrorD2Ev.exit86:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i16 0, ptr %i.a, align 2, !tbaa !75
  %i.en = call noundef i64 @_ZN4llvm2rc18ResourceFileWriter8writeIntItEEmRKT_(ptr noundef nonnull align 8 dereferenceable(250) %1, ptr noundef nonnull align 2 dereferenceable(2) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.critedge65

.critedge65:                                      ; preds = %_ZN4llvm5ErrorD2Ev.exit84, %_ZN4llvm2rcL16checkIntOrStringENS0_11IntOrStringERKNS_5TwineE.exit, %_ZN4llvm2rc18ResourceFileWriter16writeIntOrStringERKNS0_11IntOrStringE.exit, %bb.g, %_ZN4llvm5ErrorD2Ev.exit86
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm5ErrorD2Ev.exit78, %_ZN4llvm5ErrorD2Ev.exit77, %_ZN4llvm5ErrorD2Ev.exit, %bb.e, %.critedge65
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm2rcL21checkSignedNumberFitsIsEENS_5ErrorEjRKNS_5TwineEb(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) initializes((0, 8)) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(34) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 9 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 9 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 10 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 14 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 10 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 14 uses
  %i.a = add i32 %1, -32768
  %or.cond = icmp ult i32 %i.a, -65536
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !89, !noalias !867 ; 2 uses
  switch i8 %i.c, label %_ZN4llvmplERKNS_5TwineES2_.exit [
    i8 0, label %_ZN4llvmplERKNS_5TwineES2_.exit.thread167
    i8 1, label %bb.c
  ]

_ZN4llvmplERKNS_5TwineES2_.exit.thread167:        ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 0, ptr %i.d, align 8, !tbaa !89, !alias.scope !867
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !92, !alias.scope !867
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 0, ptr %i.f, align 8, !tbaa !89, !alias.scope !868
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.g, align 1, !tbaa !92, !alias.scope !868
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 0, ptr %i.h, align 8, !tbaa !89, !alias.scope !873
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.i, align 1, !tbaa !92, !alias.scope !873
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 0, ptr %i.j, align 8, !tbaa !89, !alias.scope !878
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.k, align 1, !tbaa !92, !alias.scope !878
  br label %_ZN4llvmplERKNS_5TwineES2_.exit69

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.m = load i8, ptr %i.l, align 1, !tbaa !92, !noalias !867
  %i.n = icmp eq i8 %i.m, 1                       ; 3 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %2, align 8, !noalias !867
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.56.0.copyload.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !867
  %.014.i.i = select i1 %i.n, i8 %i.c, i8 2
  %.sroa.05.0.i.i = select i1 %i.n, ptr %.sroa.05.0.copyload.i.i, ptr %2
  %.sroa.56.0.i.i = select i1 %i.n, i64 %.sroa.56.0.copyload.i.i, i64 undef
  store ptr %.sroa.05.0.i.i, ptr %8, align 8, !alias.scope !867
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.56.0.i.i, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !82, !alias.scope !867
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.67, ptr %i.o, align 8, !alias.scope !867
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 %.014.i.i, ptr %i.p, align 8, !tbaa !89, !alias.scope !867
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 3, ptr %i.q, align 1, !tbaa !92, !alias.scope !867
  tail call void @llvm.experimental.noalias.scope.decl(metadata !883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr @.str.67, ptr %8, align 8
  %.sroa.5155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 3, ptr %.sroa.5155.0..sroa_idx, align 8, !tbaa !280
  %.sroa.7156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %.sroa.7156.0..sroa_idx, align 1, !tbaa !280
  %.sroa.56.0..sroa_idx.i.i11171 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.56.0.copyload.i.i12172 = load i64, ptr %.sroa.56.0..sroa_idx.i.i11171, align 8, !noalias !868
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.c
  %i.r = phi ptr [ @.str.67, %bb.c ], [ %8, %_ZN4llvmplERKNS_5TwineES2_.exit ]
  %i.s = phi i8 [ 3, %bb.c ], [ 2, %_ZN4llvmplERKNS_5TwineES2_.exit ]
  %i.t = phi i64 [ %.sroa.56.0.copyload.i.i12172, %bb.c ], [ undef, %_ZN4llvmplERKNS_5TwineES2_.exit ]
  %.in260 = zext i32 %1 to i64
  %i.u = inttoptr i64 %.in260 to ptr
  store ptr %i.r, ptr %7, align 8, !alias.scope !868
  %.sroa.23.0..sroa_idx.i.i.i22 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.t, ptr %.sroa.23.0..sroa_idx.i.i.i22, align 8, !tbaa !82, !alias.scope !868
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !868
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 %i.s, ptr %i.w, align 8, !tbaa !89, !alias.scope !868
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 10, ptr %i.x, align 1, !tbaa !92, !alias.scope !868
  store ptr %7, ptr %6, align 8, !alias.scope !873
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.68, ptr %i.y, align 8, !alias.scope !873
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.z, align 8, !tbaa !89, !alias.scope !873
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.aa, align 1, !tbaa !92, !alias.scope !873
  store ptr %6, ptr %5, align 8, !alias.scope !878
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.ab, align 8, !alias.scope !878
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.ac, align 8, !tbaa !89, !alias.scope !878
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 11, ptr %i.ad, align 1, !tbaa !92, !alias.scope !878
  store ptr %5, ptr %4, align 8, !alias.scope !885
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.81, ptr %i.ae, align 8, !alias.scope !885
  br label %_ZN4llvmplERKNS_5TwineES2_.exit69

_ZN4llvmplERKNS_5TwineES2_.exit69:                ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit.thread167, %bb.d
  %.sink254 = phi i8 [ 0, %_ZN4llvmplERKNS_5TwineES2_.exit.thread167 ], [ 2, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN4llvmplERKNS_5TwineES2_.exit.thread167 ], [ 3, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 %.sink254, ptr %i.af, align 8, !tbaa !89, !alias.scope !885
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 %.sink, ptr %i.ag, align 1, !tbaa !92, !alias.scope !885
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #21
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %i.ai = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22, !noalias !896 ; 2 uses
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.ai, ptr noundef nonnull align 8 dereferenceable(34) %4, i32 75, ptr nonnull %i.ah) #20, !noalias !896
  store ptr %i.ai, ptr %0, align 8, !tbaa !72, !alias.scope !899
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.aj = icmp sgt i32 %1, -1
  %or.cond.not = or i1 %i.aj, %3
  br i1 %or.cond.not, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !89, !noalias !906 ; 2 uses
  switch i8 %i.al, label %_ZN4llvmplERKNS_5TwineES2_.exit84 [
    i8 0, label %_ZN4llvmplERKNS_5TwineES2_.exit84.thread212
    i8 1, label %bb.g
  ]

_ZN4llvmplERKNS_5TwineES2_.exit84.thread212:      ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 0, ptr %i.am, align 8, !tbaa !89, !alias.scope !906
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.an, align 1, !tbaa !92, !alias.scope !906
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 0, ptr %i.ao, align 8, !tbaa !89, !alias.scope !907
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.ap, align 1, !tbaa !92, !alias.scope !907
  br label %_ZN4llvmplERKNS_5TwineES2_.exit114

_ZN4llvmplERKNS_5TwineES2_.exit84:                ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !92, !noalias !906
  %i.as = icmp eq i8 %i.ar, 1                     ; 3 uses
  %.sroa.05.0.copyload.i.i70 = load ptr, ptr %2, align 8, !noalias !906
  %.sroa.56.0..sroa_idx.i.i71 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.56.0.copyload.i.i72 = load i64, ptr %.sroa.56.0..sroa_idx.i.i71, align 8, !noalias !906
  %.014.i.i73 = select i1 %i.as, i8 %i.al, i8 2
  %.sroa.05.0.i.i74 = select i1 %i.as, ptr %.sroa.05.0.copyload.i.i70, ptr %2
  %.sroa.56.0.i.i75 = select i1 %i.as, i64 %.sroa.56.0.copyload.i.i72, i64 undef
  store ptr %.sroa.05.0.i.i74, ptr %11, align 8, !alias.scope !906
  %.sroa.23.0..sroa_idx.i.i.i82 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.56.0.i.i75, ptr %.sroa.23.0..sroa_idx.i.i.i82, align 8, !tbaa !82, !alias.scope !906
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str.67, ptr %i.at, align 8, !alias.scope !906
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 %.014.i.i73, ptr %i.au, align 8, !tbaa !89, !alias.scope !906
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 3, ptr %i.av, align 1, !tbaa !92, !alias.scope !906
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr @.str.67, ptr %11, align 8
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 3, ptr %.sroa.5125.0..sroa_idx, align 8, !tbaa !280
  %.sroa.7126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %.sroa.7126.0..sroa_idx, align 1, !tbaa !280
end_hunk_1
