Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DWARFDebugAddr?download=true
inline.NumInlined: 1181
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%"class.llvm::format_object.122" = type { ptr, %"class.std::tuple.123" }
%"class.std::tuple.123" = type { %"struct.std::_Tuple_impl.124" }
%"struct.std::_Tuple_impl.124" = type { %"struct.std::_Tuple_impl.125", %"struct.std::_Head_base.52" }
%"struct.std::_Tuple_impl.125" = type { %"struct.std::_Head_base.75" }
%class.anon.120 = type { ptr }
%"class.llvm::format_object.115" = type { ptr, %"class.std::tuple.116" }
%"class.std::tuple.116" = type { %"struct.std::_Tuple_impl.117" }
%"struct.std::_Tuple_impl.117" = type { %"struct.std::_Tuple_impl.118", %"struct.std::_Head_base.52" }
%"struct.std::_Tuple_impl.118" = type { %"struct.std::_Head_base.119" }
%"struct.std::_Head_base.119" = type { ptr }
%class.anon.96 = type { i8 }
%"class.llvm::DataExtractor::Cursor" = type { i64, %"class.llvm::Error" }
%class.anon.132 = type { ptr }
%"class.llvm::format_object.127" = type { ptr, %"class.std::tuple.128" }
%"class.std::tuple.128" = type { %"struct.std::_Tuple_impl.129" }
%"struct.std::_Tuple_impl.129" = type { %"struct.std::_Tuple_impl.130", %"struct.std::_Head_base.52" }
%"struct.std::_Tuple_impl.130" = type { %"struct.std::_Head_base.131" }
%"struct.std::_Head_base.131" = type { i16 }
%class.anon.138 = type { ptr }
%"class.llvm::format_object.133" = type { ptr, %"class.std::tuple.134" }
%"class.std::tuple.134" = type { %"struct.std::_Tuple_impl.135" }
%"struct.std::_Tuple_impl.135" = type { %"struct.std::_Tuple_impl.136", %"struct.std::_Head_base.52" }
%"struct.std::_Tuple_impl.136" = type { %"struct.std::_Head_base.137" }
%"struct.std::_Head_base.137" = type { i8 }
%class.anon.143 = type { ptr }
%"class.llvm::format_object.139" = type { ptr, %"class.std::tuple.140" }
%"class.std::tuple.140" = type { %"struct.std::_Tuple_impl.141" }
%"struct.std::_Tuple_impl.141" = type { %"struct.std::_Tuple_impl.142", %"struct.std::_Head_base.52" }
%"struct.std::_Tuple_impl.142" = type { %"struct.std::_Tuple_impl.73", %"struct.std::_Head_base.137" }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.llvm::formatv_object" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple.7", %"struct.std::array" }
%"class.llvm::formatv_object_base.base" = type <{ %"class.llvm::StringRef", %"class.llvm::ArrayRef", i8 }>
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"class.std::tuple.7" = type { %"struct.std::_Tuple_impl.8" }
%"struct.std::_Tuple_impl.8" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { %"class.llvm::support::detail::FormatFunctor" }
%"class.llvm::support::detail::FormatFunctor" = type { ptr }
%"struct.std::array" = type { [1 x %"class.llvm::function_ref"] }
%"class.llvm::function_ref" = type { ptr, i64 }
%"class.llvm::formatv_object.10" = type { %"class.llvm::formatv_object_base.base", [7 x i8], %"class.std::tuple.11", %"struct.std::array" }
%"class.std::tuple.11" = type { %"struct.std::_Tuple_impl.12" }
%"struct.std::_Tuple_impl.12" = type { %"struct.std::_Head_base.13" }
%"struct.std::_Head_base.13" = type { %"class.llvm::support::detail::FormatFunctor.14" }
%"class.llvm::support::detail::FormatFunctor.14" = type { %"class.llvm::support::detail::AlignAdapter" }
%"class.llvm::support::detail::AlignAdapter" = type <{ %"class.llvm::FormatAdapter", i32, [4 x i8], i64, i8, [7 x i8] }>
%"class.llvm::FormatAdapter" = type { ptr }
%"class.llvm::formatv_object.15" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple.16", %"struct.std::array" }
%"class.std::tuple.16" = type { %"struct.std::_Tuple_impl.17" }
%"struct.std::_Tuple_impl.17" = type { %"struct.std::_Head_base.18" }
%"struct.std::_Head_base.18" = type { %"class.llvm::support::detail::FormatFunctor.19" }
%"class.llvm::support::detail::FormatFunctor.19" = type { ptr }
%"class.llvm::formatv_object.20" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple.21", %"struct.std::array" }
%"class.std::tuple.21" = type { %"struct.std::_Tuple_impl.22" }
%"struct.std::_Tuple_impl.22" = type { %"struct.std::_Head_base.23" }
%"struct.std::_Head_base.23" = type { %"class.llvm::support::detail::FormatFunctor.24" }
%"class.llvm::support::detail::FormatFunctor.24" = type { ptr }
%"class.llvm::formatv_object.25" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple.26", %"struct.std::array" }
%"class.std::tuple.26" = type { %"struct.std::_Tuple_impl.27" }
%"struct.std::_Tuple_impl.27" = type { %"struct.std::_Head_base.28" }
%"struct.std::_Head_base.28" = type { %"class.llvm::support::detail::FormatFunctor.29" }
%"class.llvm::support::detail::FormatFunctor.29" = type { ptr }
%"class.llvm::Expected" = type <{ %union.anon.30, i8, [7 x i8] }>
%union.anon.30 = type { i64 }
%class.anon.148 = type { ptr }
%"class.llvm::format_object.144" = type { ptr, %"class.std::tuple.145" }
%"class.std::tuple.145" = type { %"struct.std::_Tuple_impl.base", [4 x i8] }
%"struct.std::_Tuple_impl.base" = type <{ %"struct.std::_Tuple_impl.125", %"struct.std::_Head_base.147" }>
%"struct.std::_Head_base.147" = type { i32 }
%"struct.llvm::FmtAlign" = type <{ %"class.llvm::function_ref", i32, i32, i8, [7 x i8] }>
%"class.llvm::SmallString" = type { %"class.llvm::SmallVector.44" }
%"class.llvm::SmallVector.44" = type { %"class.llvm::SmallVectorImpl.45", %"struct.llvm::SmallVectorStorage.49" }
%"class.llvm::SmallVectorImpl.45" = type { %"class.llvm::SmallVectorTemplateBase.46" }
%"class.llvm::SmallVectorTemplateBase.46" = type { %"class.llvm::SmallVectorTemplateCommon.47" }
%"class.llvm::SmallVectorTemplateCommon.47" = type { %"class.llvm::SmallVectorBase.48" }
%"struct.llvm::SmallVectorStorage.49" = type { [64 x i8] }
%"class.llvm::raw_svector_ostream" = type { %"class.llvm::raw_pwrite_stream", ptr }
%"class.llvm::raw_pwrite_stream" = type { %"class.llvm::raw_ostream" }
%"class.std::optional.78" = type { %"struct.std::_Optional_base.79" }
%"struct.std::_Optional_base.79" = type { %"struct.std::_Optional_payload.81" }
%"struct.std::_Optional_payload.81" = type { %"struct.std::_Optional_payload_base.base.92", [7 x i8] }
%"struct.std::_Optional_payload_base.base.92" = type <{ %"union.std::_Optional_payload_base<llvm::RelocAddrEntry>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::RelocAddrEntry>::_Storage" = type { %"struct.llvm::RelocAddrEntry" }
%"struct.llvm::RelocAddrEntry" = type { i64, %"class.llvm::object::RelocationRef", i64, %"class.std::optional.84", i64, ptr }
%"class.llvm::object::RelocationRef" = type { %"union.llvm::object::DataRefImpl", ptr }
%"union.llvm::object::DataRefImpl" = type { i64 }
%"class.std::optional.84" = type { %"struct.std::_Optional_base.85" }
%"struct.std::_Optional_base.85" = type { %"struct.std::_Optional_payload.87" }
%"struct.std::_Optional_payload.87" = type { %"struct.std::_Optional_payload_base.base.89", [7 x i8] }
%"struct.std::_Optional_payload_base.base.89" = type <{ %"union.std::_Optional_payload_base<llvm::object::RelocationRef>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::object::RelocationRef>::_Storage" = type { %"class.llvm::object::RelocationRef" }

$_ZN4llvm12DWARFContext25checkAddressSizeSupportedIJmEEENS_5ErrorEjSt10error_codePKcDpRKT_ = comdat any

$_ZN4llvm17createStringErrorIJmmhEEENS_5ErrorESt10error_codePKcDpRKT_ = comdat any

$_ZNK4llvm22DWARFDataExtractorBaseINS_18DWARFDataExtractorEE16getInitialLengthEPmPNS_5ErrorE = comdat any

$_ZN4llvm17createStringErrorIJmtEEENS_5ErrorESt10error_codePKcDpRKT_ = comdat any

$_ZN4llvm17createStringErrorIJmhEEENS_5ErrorESt10error_codePKcDpRKT_ = comdat any

$_ZN4llvm17createStringErrorIJmhhEEENS_5ErrorESt10error_codePKcDpRKT_ = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKmEEEEvlS2_S3_ = comdat any

$_ZN4llvm15format_providerImvE6formatERKmRNS_11raw_ostreamENS_9StringRefE = comdat any

$_ZN4llvm7support6detail15HelperFunctions15consumeHexStyleERNS_9StringRefE = comdat any

$_ZN4llvm9StringRef13consume_frontES0_ = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorINS8_12AlignAdapterIRKmEEEEEEvlS2_S3_ = comdat any

$_ZN4llvm8FmtAlign6formatERNS_11raw_ostreamENS_9StringRefE = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKtEEEEvlS2_S3_ = comdat any

$_ZN4llvm15format_providerItvE6formatERKtRNS_11raw_ostreamENS_9StringRefE = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKhEEEEvlS2_S3_ = comdat any

$_ZN4llvm15format_providerIhvE6formatERKhRNS_11raw_ostreamENS_9StringRefE = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRmEEEEvlS2_S3_ = comdat any

$_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m = comdat any

$_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmmhEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m = comdat any

$_ZNK4llvm18DWARFDataExtractor21getRelocatedValueImplEjPmS1_PNS_5ErrorE = comdat any

$_ZN4llvm17createStringErrorIJmEEENS_5ErrorESt4errcPKcDpRKT_ = comdat any

$_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_ = comdat any

$_ZN4llvm9ErrorList4joinENS_5ErrorES1_ = comdat any

$_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmPKcEEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m = comdat any

$_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m = comdat any

$_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmtEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m = comdat any

$_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmhEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m = comdat any

$_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmhhEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m = comdat any

$_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJjmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [30 x i8] c"address table at offset 0x%lx\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"address table at offset 0x%lx contains data of size 0x%lx which is not a multiple of addr size %u\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"parsing address table at offset 0x%lx: %s\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"section is not large enough to contain an address table at offset 0x%lx with a unit_length value of 0x%lx\00", align 1
@.str.4 = private unnamed_addr constant [112 x i8] c"address table at offset 0x%lx has a unit_length value of 0x%lx, which is too small to contain a complete header\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"address table at offset 0x%lx has unsupported version %u\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"address table at offset 0x%lx has unsupported segment selector size %u\00", align 1
@.str.7 = private unnamed_addr constant [93 x i8] c"address table at offset 0x%lx has address size %u which is different from CU address size %u\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"DWARF version is not defined in CU, assuming version 5\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"{0:x+8}: \00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Address table header: \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"length = 0x{0:x-}\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c", format = \00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c", version = {0:x+4}\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c", addr_size = {0:x+2}\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c", seg_size = {0:x+2}\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"{0:x+4}\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"{0:x+8}\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"{0:x+16}\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Addrs: [\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.22 = private unnamed_addr constant [62 x i8] c"Index %u is out of range of the address table at offset 0x%lx\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@_ZTVN4llvm19raw_svector_ostreamE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.34 = private unnamed_addr constant [32 x i8] c" has unsupported address size: \00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c" (supported are \00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c", \00", align 1
@_ZTVN4llvm18raw_string_ostreamE = external unnamed_addr constant { [15 x ptr] }, align 8
@.str.38 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"unsupported reserved unit length of value 0x%8.8lx\00", align 1
@_ZN4llvm9ErrorList2IDE = external global i8, align 1
@_ZTVN4llvm9ErrorListE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZN4llvm13ErrorInfoBase2IDE = external global i8, align 1
@switch.table._ZNK4llvm19DWARFDebugAddrTable4dumpERNS_11raw_ostreamENS_13DIDumpOptionsE = private unnamed_addr constant [7 x ptr] [ptr @.str.17, ptr poison, ptr @.str.18, ptr poison, ptr poison, ptr poison, ptr @.str.19], align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19DWARFDebugAddrTable16extractAddressesERKNS_18DWARFDataExtractorEPmm(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = load i64, ptr %3, align 8, !tbaa !12
  %i.c = sub i64 %4, %i.b                         ; 4 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 4 uses
  %i.e = load i8, ptr %i.d, align 2, !tbaa !22
  %i.f = zext i8 %i.e to i32
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #19 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @_ZN4llvm12DWARFContext25checkAddressSizeSupportedIJmEEENS_5ErrorEjSt10error_codePKcDpRKT_(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, i32 noundef %i.f, i32 95, ptr nonnull %i.g, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.i = load ptr, ptr %0, align 8, !tbaa !25
  %.not19 = icmp eq ptr %i.i, null
  br i1 %.not19, label %_ZN4llvm5ErrorD2Ev.exit, label %.critedge

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  %i.j = load i8, ptr %i.d, align 2, !tbaa !22
  %i.k = zext i8 %i.j to i64                      ; 3 uses
  %i.l = urem i64 %i.c, %i.k
  %i.m = udiv i64 %i.c, %i.k                      ; 5 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.n, align 8, !tbaa !26
  call void @_ZN4llvm17createStringErrorIJmmhEEENS_5ErrorESt10error_codePKcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, i32 22, ptr nonnull %i.g, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  br label %.critedge

bb.c:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  %.not.i.i = icmp eq ptr %i.r, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.p, ptr %i.q, align 8, !tbaa !28
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %bb.c, %bb.d
  %i.s = icmp ugt i64 %i.m, 1152921504606846975
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #20
  unreachable

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = icmp ult i64 %i.y, %i.m
  br i1 %i.z, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.aa = shl nuw nsw i64 %i.m, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #21 ; 4 uses
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !27  ; 4 uses
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.g:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %i.ac, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.g, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ac, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !107
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ak) #22
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.ab, ptr %i.o, align 8, !tbaa !27
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !28
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.m
  store ptr %i.al, ptr %i.t, align 8, !tbaa !107
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %bb.f, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %.not1020 = icmp ult i64 %i.c, %i.k
  br i1 %.not1020, label %_ZN4llvm5ErrorD2Ev.exit13, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.021 = phi i64 [ %i.am, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %i.m, %_ZNSt6vectorImSaImEE7reserveEm.exit ]
  %i.am = add i64 %.021, -1                       ; 2 uses
  %i.an = load i8, ptr %i.d, align 2, !tbaa !22
  %i.ao = zext i8 %i.an to i32
  %i.ap = tail call noundef i64 @_ZNK4llvm18DWARFDataExtractor21getRelocatedValueImplEjPmS1_PNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %i.ao, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) ; 2 uses
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !28  ; 4 uses
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !107
  %.not.i.i12 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i.i12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.as, ptr %i.q, align 8, !tbaa !28
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.j:                                             ; preds = %.lr.ph
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !27  ; 4 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 5 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.k, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #20
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #21 ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  store i64 %i.ap, ptr %i.bf, align 8, !tbaa !12
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.l, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr align 8 %i.at, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.bi = load ptr, ptr %i.t, align 8, !tbaa !107
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bk) #22
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.be, ptr %i.o, align 8, !tbaa !27
  store ptr %i.bh, ptr %i.q, align 8, !tbaa !28
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bl, ptr %i.t, align 8, !tbaa !107
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %.not10 = icmp eq i64 %i.am, 0
  br i1 %.not10, label %_ZN4llvm5ErrorD2Ev.exit13, label %.lr.ph, !llvm.loop !106

_ZN4llvm5ErrorD2Ev.exit13:                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %_ZNSt6vectorImSaImEE7reserveEm.exit
  store ptr null, ptr %0, align 8, !tbaa !25
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZN4llvm5ErrorD2Ev.exit13, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DWARFContext25checkAddressSizeSupportedIJmEEENS_5ErrorEjSt10error_codePKcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, i32 noundef %1, i32 %2, ptr %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %class.anon, align 8                ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.llvm::raw_string_ostream", align 8 ; 21 uses
  %10 = alloca %"class.llvm::format_object", align 8 ; 3 uses
  %11 = alloca %"class.llvm::SmallVector.53", align 8 ; 9 uses
  switch i32 %1, label %_ZN4llvm12DWARFContext22isAddressSizeSupportedEj.exit [
    i32 4, label %_ZN4llvm5ErrorD2Ev.exit
    i32 2, label %_ZN4llvm5ErrorD2Ev.exit
    i32 8, label %_ZN4llvm5ErrorD2Ev.exit
  ]

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a, %bb.a, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !25
  br label %bb.m

_ZN4llvm12DWARFContext22isAddressSizeSupportedEj.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.a, ptr %8, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !34
  store i8 0, ptr %i.a, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %9, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %8, ptr %i.g, align 8, !tbaa !46
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef null, i64 noundef 0, i32 noundef 0) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  store ptr %4, ptr %10, align 8, !tbaa !51, !alias.scope !116
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.i = load i64, ptr %5, align 8, !tbaa !12, !noalias !116
  store i64 %i.i, ptr %i.h, align 8, !tbaa !117, !alias.scope !116
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr %10, ptr %7, align 8, !tbaa !53
  %i.j = ptrtoint ptr %7 to i64
  %i.k = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.j) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 11 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55   ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ult i64 %i.r, 31
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm12DWARFContext22isAddressSizeSupportedEj.exit
  %i.t = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.34, i64 noundef 31) #18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %_ZN4llvm12DWARFContext22isAddressSizeSupportedEj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.o, ptr noundef nonnull align 1 dereferenceable(31) @.str.34, i64 31, i1 false)
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 31
  store ptr %i.v, ptr %i.n, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.t, %bb.b ], [ %9, %bb.c ]
  %i.w = zext i32 %1 to i64
  %i.x = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.w) #18 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55 ; 2 uses
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp ult i64 %i.ae, 16
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ag = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull @.str.35, i64 noundef 16) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ab, ptr noundef nonnull align 1 dereferenceable(16) @.str.35, i64 16, i1 false)
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ai, ptr %i.aa, align 8, !tbaa !55
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.2
  call void @free(ptr noundef %i.bv) #18
  br label %_ZN4llvm11SmallVectorIhLj3EED2Ev.exit

_ZN4llvm11SmallVectorIhLj3EED2Ev.exit:            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.2, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !55  ; 3 uses
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !54
  %.not.i = icmp ult ptr %i.aj, %i.ak
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIhLj3EED2Ev.exit
  %i.al = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 noundef zeroext 41) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIhLj3EED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.am, ptr %i.n, align 8, !tbaa !55
  store i8 41, ptr %i.aj, align 1, !tbaa !35
end_hunk_0
