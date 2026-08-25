Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NativeRegisterContextDBReg_arm64?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::formatv_object" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple.10", %"struct.std::array.13" }
%"class.llvm::formatv_object_base.base" = type <{ %"class.llvm::StringRef", %"class.llvm::ArrayRef.9", i8 }>
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::ArrayRef.9" = type { ptr, i64 }
%"class.std::tuple.10" = type { %"struct.std::_Tuple_impl.11" }
%"struct.std::_Tuple_impl.11" = type { %"struct.std::_Head_base.12" }
%"struct.std::_Head_base.12" = type { %"class.llvm::support::detail::FormatFunctor" }
%"class.llvm::support::detail::FormatFunctor" = type { ptr }
%"struct.std::array.13" = type { [1 x %"class.llvm::function_ref"] }
%"class.llvm::function_ref" = type { ptr, i64 }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<lldb_private::NativeRegisterContextDBReg::WatchpointDetails>::_Storage", i8 }>
%"union.std::_Optional_payload_base<lldb_private::NativeRegisterContextDBReg::WatchpointDetails>::_Storage" = type { %"struct.lldb_private::NativeRegisterContextDBReg::WatchpointDetails" }
%"struct.lldb_private::NativeRegisterContextDBReg::WatchpointDetails" = type { i64, i64 }
%"class.lldb_private::Status" = type { %"class.llvm::Error", %"class.std::__cxx11::basic_string" }
%"class.llvm::Error" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN12lldb_private26NativeRegisterContextDBReg18ValidateBreakpointEmm = comdat any

$_ZN12lldb_private26NativeRegisterContextDBReg16AdjustBreakpointERKNS0_17WatchpointDetailsE = comdat any

$_ZN12lldb_private26NativeRegisterContextDBReg23FixWatchpointHitAddressEm = comdat any

$_ZN12lldb_private26NativeRegisterContextDBRegD1Ev = comdat any

$_ZN12lldb_private26NativeRegisterContextDBRegD0Ev = comdat any

$_ZTv0_n24_N12lldb_private26NativeRegisterContextDBRegD1Ev = comdat any

$_ZTv0_n24_N12lldb_private26NativeRegisterContextDBRegD0Ev = comdat any

$_ZN12lldb_private21NativeRegisterContext9GetThreadEv = comdat any

$_ZNK12lldb_private21NativeRegisterContext23RegisterOffsetIsDynamicEv = comdat any

$_ZN12lldb_private33NativeRegisterContextRegisterInfo22InvalidateAllRegistersEv = comdat any

$_ZN12lldb_private32NativeRegisterContextDBReg_arm64D1Ev = comdat any

$_ZN12lldb_private32NativeRegisterContextDBReg_arm64D0Ev = comdat any

$_ZTv0_n24_N12lldb_private32NativeRegisterContextDBReg_arm64D1Ev = comdat any

$_ZTv0_n24_N12lldb_private32NativeRegisterContextDBReg_arm64D0Ev = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRjEEEEvlS2_S3_ = comdat any

$_ZN4llvm15format_providerIjvE6formatERKjRNS_11raw_ostreamENS_9StringRefE = comdat any

$_ZN4llvm7support6detail15HelperFunctions15consumeHexStyleERNS_9StringRefE = comdat any

$_ZN4llvm9StringRef13consume_frontES0_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [107 x i8] c"/opt-bench/work/llvm/llvm-project/lldb/source/Plugins/Process/Utility/NativeRegisterContextDBReg_arm64.cpp\00", align 1
@__func__._ZN12lldb_private32NativeRegisterContextDBReg_arm6417GetWatchpointSizeEj = private unnamed_addr constant [18 x i8] c"GetWatchpointSize\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"wp_index: {0}\00", align 1
@_ZTVN12lldb_private32NativeRegisterContextDBReg_arm64E = unnamed_addr constant { [26 x ptr], [71 x ptr] } { [26 x ptr] [ptr inttoptr (i64 1048 to ptr), ptr null, ptr null, ptr @_ZN12lldb_private26NativeRegisterContextDBReg31NumSupportedHardwareBreakpointsEv, ptr @_ZN12lldb_private26NativeRegisterContextDBReg21SetHardwareBreakpointEmm, ptr @_ZN12lldb_private26NativeRegisterContextDBReg23ClearHardwareBreakpointEj, ptr @_ZN12lldb_private26NativeRegisterContextDBReg27ClearAllHardwareBreakpointsEv, ptr @_ZN12lldb_private26NativeRegisterContextDBReg24GetHardwareBreakHitIndexERjm, ptr @_ZN12lldb_private26NativeRegisterContextDBReg31NumSupportedHardwareWatchpointsEv, ptr @_ZN12lldb_private26NativeRegisterContextDBReg21SetHardwareWatchpointEmmj, ptr @_ZN12lldb_private26NativeRegisterContextDBReg23ClearHardwareWatchpointEj, ptr @_ZN12lldb_private26NativeRegisterContextDBReg27ClearAllHardwareWatchpointsEv, ptr @_ZN12lldb_private26NativeRegisterContextDBReg21GetWatchpointHitIndexERjm, ptr @_ZN12lldb_private26NativeRegisterContextDBReg23GetWatchpointHitAddressEj, ptr @_ZN12lldb_private26NativeRegisterContextDBReg20GetWatchpointAddressEj, ptr @_ZN12lldb_private26NativeRegisterContextDBReg18ValidateBreakpointEmm, ptr @_ZN12lldb_private32NativeRegisterContextDBReg_arm6416AdjustWatchpointERKNS_26NativeRegisterContextDBReg17WatchpointDetailsE, ptr @_ZN12lldb_private26NativeRegisterContextDBReg16AdjustBreakpointERKNS0_17WatchpointDetailsE, ptr @_ZN12lldb_private32NativeRegisterContextDBReg_arm6421MakeBreakControlValueEm, ptr @_ZN12lldb_private32NativeRegisterContextDBReg_arm6421MakeWatchControlValueEmj, ptr @_ZN12lldb_private32NativeRegisterContextDBReg_arm6417GetWatchpointSizeEj, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private26NativeRegisterContextDBReg23FixWatchpointHitAddressEm, ptr @_ZN12lldb_private32NativeRegisterContextDBReg_arm64D1Ev, ptr @_ZN12lldb_private32NativeRegisterContextDBReg_arm64D0Ev], [71 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr null, ptr inttoptr (i64 -1048 to ptr), ptr null, ptr inttoptr (i64 -1048 to ptr), ptr null, ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr null, ptr @_ZTv0_n24_N12lldb_private32NativeRegisterContextDBReg_arm64D1Ev, ptr @_ZTv0_n24_N12lldb_private32NativeRegisterContextDBReg_arm64D0Ev, ptr @_ZNK12lldb_private33NativeRegisterContextRegisterInfo16GetRegisterCountEv, ptr @_ZNK12lldb_private33NativeRegisterContextRegisterInfo20GetUserRegisterCountEv, ptr @_ZNK12lldb_private33NativeRegisterContextRegisterInfo22GetRegisterInfoAtIndexEj, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZTv0_n104_N12lldb_private26NativeRegisterContextDBReg31NumSupportedHardwareBreakpointsEv, ptr @_ZTv0_n112_N12lldb_private26NativeRegisterContextDBReg21SetHardwareBreakpointEmm, ptr @_ZTv0_n120_N12lldb_private26NativeRegisterContextDBReg23ClearHardwareBreakpointEj, ptr @_ZTv0_n128_N12lldb_private26NativeRegisterContextDBReg27ClearAllHardwareBreakpointsEv, ptr @_ZTv0_n136_N12lldb_private26NativeRegisterContextDBReg24GetHardwareBreakHitIndexERjm, ptr @_ZTv0_n144_N12lldb_private26NativeRegisterContextDBReg31NumSupportedHardwareWatchpointsEv, ptr @_ZTv0_n152_N12lldb_private26NativeRegisterContextDBReg21SetHardwareWatchpointEmmj, ptr @_ZTv0_n160_N12lldb_private26NativeRegisterContextDBReg23ClearHardwareWatchpointEj, ptr @_ZN12lldb_private21NativeRegisterContext18ClearWatchpointHitEj, ptr @_ZTv0_n176_N12lldb_private26NativeRegisterContextDBReg27ClearAllHardwareWatchpointsEv, ptr @_ZN12lldb_private21NativeRegisterContext15IsWatchpointHitEjRb, ptr @_ZTv0_n192_N12lldb_private26NativeRegisterContextDBReg21GetWatchpointHitIndexERjm, ptr @_ZN12lldb_private21NativeRegisterContext18IsWatchpointVacantEjRb, ptr @_ZTv0_n208_N12lldb_private26NativeRegisterContextDBReg20GetWatchpointAddressEj, ptr @_ZTv0_n216_N12lldb_private26NativeRegisterContextDBReg23GetWatchpointHitAddressEj, ptr @_ZN12lldb_private21NativeRegisterContext18HardwareSingleStepEb, ptr @_ZN12lldb_private21NativeRegisterContext27ReadRegisterValueFromMemoryEPKNS_12RegisterInfoEmmRNS_13RegisterValueE, ptr @_ZN12lldb_private21NativeRegisterContext26WriteRegisterValueToMemoryEPKNS_12RegisterInfoEmmRKNS_13RegisterValueE, ptr @_ZNK12lldb_private21NativeRegisterContext11GetThreadIDEv, ptr @_ZN12lldb_private21NativeRegisterContext9GetThreadEv, ptr @_ZNK12lldb_private21NativeRegisterContext21GetExpeditedRegistersENS_13ExpeditedRegsE, ptr @_ZNK12lldb_private21NativeRegisterContext23RegisterOffsetIsDynamicEv, ptr @_ZN12lldb_private21NativeRegisterContext27GetPCfromBreakpointLocationEm, ptr @_ZN12lldb_private33NativeRegisterContextRegisterInfo22InvalidateAllRegistersEv] }, align 8
@_ZTTN12lldb_private32NativeRegisterContextDBReg_arm64E = unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds inrange(-24, 184) ({ [26 x ptr], [71 x ptr] }, ptr @_ZTVN12lldb_private32NativeRegisterContextDBReg_arm64E, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 184) ({ [26 x ptr], [71 x ptr] }, ptr @_ZTCN12lldb_private32NativeRegisterContextDBReg_arm64E0_NS_26NativeRegisterContextDBRegE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-288, 280) ({ [26 x ptr], [71 x ptr] }, ptr @_ZTCN12lldb_private32NativeRegisterContextDBReg_arm64E0_NS_26NativeRegisterContextDBRegE, i32 0, i32 1, i32 36), ptr getelementptr inbounds inrange(-288, 280) ({ [26 x ptr], [71 x ptr] }, ptr @_ZTVN12lldb_private32NativeRegisterContextDBReg_arm64E, i32 0, i32 1, i32 36)], align 8
@_ZTCN12lldb_private32NativeRegisterContextDBReg_arm64E0_NS_26NativeRegisterContextDBRegE = unnamed_addr constant { [26 x ptr], [71 x ptr] } { [26 x ptr] [ptr inttoptr (i64 1048 to ptr), ptr null, ptr null, ptr @_ZN12lldb_private26NativeRegisterContextDBReg31NumSupportedHardwareBreakpointsEv, ptr @_ZN12lldb_private26NativeRegisterContextDBReg21SetHardwareBreakpointEmm, ptr @_ZN12lldb_private26NativeRegisterContextDBReg23ClearHardwareBreakpointEj, ptr @_ZN12lldb_private26NativeRegisterContextDBReg27ClearAllHardwareBreakpointsEv, ptr @_ZN12lldb_private26NativeRegisterContextDBReg24GetHardwareBreakHitIndexERjm, ptr @_ZN12lldb_private26NativeRegisterContextDBReg31NumSupportedHardwareWatchpointsEv, ptr @_ZN12lldb_private26NativeRegisterContextDBReg21SetHardwareWatchpointEmmj, ptr @_ZN12lldb_private26NativeRegisterContextDBReg23ClearHardwareWatchpointEj, ptr @_ZN12lldb_private26NativeRegisterContextDBReg27ClearAllHardwareWatchpointsEv, ptr @_ZN12lldb_private26NativeRegisterContextDBReg21GetWatchpointHitIndexERjm, ptr @_ZN12lldb_private26NativeRegisterContextDBReg23GetWatchpointHitAddressEj, ptr @_ZN12lldb_private26NativeRegisterContextDBReg20GetWatchpointAddressEj, ptr @_ZN12lldb_private26NativeRegisterContextDBReg18ValidateBreakpointEmm, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private26NativeRegisterContextDBReg16AdjustBreakpointERKNS0_17WatchpointDetailsE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private26NativeRegisterContextDBReg23FixWatchpointHitAddressEm, ptr @_ZN12lldb_private26NativeRegisterContextDBRegD1Ev, ptr @_ZN12lldb_private26NativeRegisterContextDBRegD0Ev], [71 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr null, ptr inttoptr (i64 -1048 to ptr), ptr null, ptr inttoptr (i64 -1048 to ptr), ptr null, ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i64 -1048 to ptr), ptr inttoptr (i64 -1048 to ptr), ptr null, ptr @_ZTv0_n24_N12lldb_private26NativeRegisterContextDBRegD1Ev, ptr @_ZTv0_n24_N12lldb_private26NativeRegisterContextDBRegD0Ev, ptr @_ZNK12lldb_private33NativeRegisterContextRegisterInfo16GetRegisterCountEv, ptr @_ZNK12lldb_private33NativeRegisterContextRegisterInfo20GetUserRegisterCountEv, ptr @_ZNK12lldb_private33NativeRegisterContextRegisterInfo22GetRegisterInfoAtIndexEj, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZTv0_n104_N12lldb_private26NativeRegisterContextDBReg31NumSupportedHardwareBreakpointsEv, ptr @_ZTv0_n112_N12lldb_private26NativeRegisterContextDBReg21SetHardwareBreakpointEmm, ptr @_ZTv0_n120_N12lldb_private26NativeRegisterContextDBReg23ClearHardwareBreakpointEj, ptr @_ZTv0_n128_N12lldb_private26NativeRegisterContextDBReg27ClearAllHardwareBreakpointsEv, ptr @_ZTv0_n136_N12lldb_private26NativeRegisterContextDBReg24GetHardwareBreakHitIndexERjm, ptr @_ZTv0_n144_N12lldb_private26NativeRegisterContextDBReg31NumSupportedHardwareWatchpointsEv, ptr @_ZTv0_n152_N12lldb_private26NativeRegisterContextDBReg21SetHardwareWatchpointEmmj, ptr @_ZTv0_n160_N12lldb_private26NativeRegisterContextDBReg23ClearHardwareWatchpointEj, ptr @_ZN12lldb_private21NativeRegisterContext18ClearWatchpointHitEj, ptr @_ZTv0_n176_N12lldb_private26NativeRegisterContextDBReg27ClearAllHardwareWatchpointsEv, ptr @_ZN12lldb_private21NativeRegisterContext15IsWatchpointHitEjRb, ptr @_ZTv0_n192_N12lldb_private26NativeRegisterContextDBReg21GetWatchpointHitIndexERjm, ptr @_ZN12lldb_private21NativeRegisterContext18IsWatchpointVacantEjRb, ptr @_ZTv0_n208_N12lldb_private26NativeRegisterContextDBReg20GetWatchpointAddressEj, ptr @_ZTv0_n216_N12lldb_private26NativeRegisterContextDBReg23GetWatchpointHitAddressEj, ptr @_ZN12lldb_private21NativeRegisterContext18HardwareSingleStepEb, ptr @_ZN12lldb_private21NativeRegisterContext27ReadRegisterValueFromMemoryEPKNS_12RegisterInfoEmmRNS_13RegisterValueE, ptr @_ZN12lldb_private21NativeRegisterContext26WriteRegisterValueToMemoryEPKNS_12RegisterInfoEmmRKNS_13RegisterValueE, ptr @_ZNK12lldb_private21NativeRegisterContext11GetThreadIDEv, ptr @_ZN12lldb_private21NativeRegisterContext9GetThreadEv, ptr @_ZNK12lldb_private21NativeRegisterContext21GetExpeditedRegistersENS_13ExpeditedRegsE, ptr @_ZNK12lldb_private21NativeRegisterContext23RegisterOffsetIsDynamicEv, ptr @_ZN12lldb_private21NativeRegisterContext27GetPCfromBreakpointLocationEm, ptr @_ZN12lldb_private33NativeRegisterContextRegisterInfo22InvalidateAllRegistersEv] }, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@switch.table._ZN12lldb_private32NativeRegisterContextDBReg_arm6417GetWatchpointSizeEj = private unnamed_addr constant [17 x i8] c"\08\00\01\00\02\00\00\00\00\00\00\00\00\00\00\00\04", align 4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 9) i32 @_ZN12lldb_private32NativeRegisterContextDBReg_arm6417GetWatchpointSizeEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1044) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !8
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_7LLDBLogEEERNS_3Log7ChannelEv() #11
  %i.c = load atomic ptr, ptr %i.b monotonic, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.c) #11
  %i.e = and i64 %i.d, 1073741824
  %.not6.i.i = icmp eq i64 %i.e, 0
  br i1 %.not6.i.i, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit

_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr @.str.1, ptr %2, align 8, !tbaa !9, !alias.scope !12
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 13, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !17, !alias.scope !12
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !19, !alias.scope !12
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !17, !alias.scope !12
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 1, ptr %i.i, align 8, !tbaa !21, !alias.scope !12
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i64 %i.f, ptr %i.j, align 8, !tbaa !26, !alias.scope !12
  %i.k = ptrtoint ptr %i.j to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRjEEEEvlS2_S3_, ptr %i.g, align 8, !alias.scope !12
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !28, !alias.scope !12
  call void @_ZN12lldb_private3Log6FormatEN4llvm9StringRefES2_RKNS1_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr nonnull @.str, i64 106, ptr nonnull @__func__._ZN12lldb_private32NativeRegisterContextDBReg_arm6417GetWatchpointSizeEj, i64 17, ptr noundef nonnull align 8 dereferenceable(33) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %.pre = load i32, ptr %i.a, align 4, !tbaa !8
  br label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread

_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread: ; preds = %bb.b, %bb.a, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit
  %i.l = phi i32 [ %1, %bb.b ], [ %1, %bb.a ], [ %.pre, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit ]
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 544
  %i.p = load i32, ptr %i.o, align 8, !tbaa !29
  %i.q = lshr i32 %i.p, 5
  %trunc = trunc i32 %i.q to i8
  %switch.tableidx = add i8 %trunc, 1             ; 2 uses
  %i.r = icmp ult i8 %switch.tableidx, 17
  br i1 %i.r, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread
  %i.s = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12lldb_private32NativeRegisterContextDBReg_arm6417GetWatchpointSizeEj, i64 %i.s
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.c

bb.c:                                             ; preds = %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN12lldb_private32NativeRegisterContextDBReg_arm6416AdjustWatchpointERKNS_26NativeRegisterContextDBReg17WatchpointDetailsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) initializes((16, 17)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !31     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !33   ; 3 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.a)
  %i.e = icmp eq i64 %i.d, 1
  %i.f = and i64 %i.a, 15
  %switch = icmp ne i64 %i.f, 0
  %or.cond = and i1 %i.e, %switch
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.c, 7                          ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw nsw i64 %i.g, %i.a
  %i.i = trunc nuw i64 %i.h to i32                ; 3 uses
  %i.j = icmp slt i32 %i.i, 9
  br i1 %i.j, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.c
  %i.k = icmp slt i32 %i.i, 3
  %i.l = icmp slt i32 %i.i, 5
  %. = select i1 %i.l, i64 4, i64 8
  %.0 = select i1 %i.k, i64 2, i64 %.
  %i.m = and i64 %i.c, -8
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.b
  %.122 = phi i64 [ %i.m, %.thread ], [ %i.c, %bb.b ]
  %.2 = phi i64 [ %.0, %.thread ], [ %i.a, %bb.b ]
  store i64 %.2, ptr %0, align 8, !tbaa !17
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.122, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.sink = phi i8 [ 0, %bb.a ], [ 1, %bb.d ], [ 0, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.n, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 4, 0) i32 @_ZN12lldb_private32NativeRegisterContextDBReg_arm6421MakeBreakControlValueEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1044) %0, i64 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %notmask = shl nsw i32 -1, %i.a
  %i.b = xor i32 %notmask, -1
  %i.c = shl i32 %i.b, 5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.e = load i32, ptr %i.d, align 8, !tbaa !36
  %i.f = or i32 %i.c, %i.e
  %i.g = or i32 %i.f, 4
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 4, 0) i32 @_ZN12lldb_private32NativeRegisterContextDBReg_arm6421MakeWatchControlValueEmj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1044) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %notmask = shl nsw i32 -1, %i.a
  %i.b = xor i32 %notmask, -1
  %i.c = shl i32 %i.b, 5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.e = load i32, ptr %i.d, align 8, !tbaa !36
  %i.f = shl i32 %2, 3
  %i.g = or i32 %i.f, %i.c
  %i.h = or i32 %i.g, %i.e
  %i.i = or i32 %i.h, 4
  ret i32 %i.i
}

declare noundef i32 @_ZN12lldb_private26NativeRegisterContextDBReg31NumSupportedHardwareBreakpointsEv(ptr noundef nonnull align 8 dereferenceable(1044)) unnamed_addr #4

declare noundef i32 @_ZN12lldb_private26NativeRegisterContextDBReg21SetHardwareBreakpointEmm(ptr noundef nonnull align 8 dereferenceable(1044), i64 noundef, i64 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN12lldb_private26NativeRegisterContextDBReg23ClearHardwareBreakpointEj(ptr noundef nonnull align 8 dereferenceable(1044), i32 noundef) unnamed_addr #4

declare void @_ZN12lldb_private26NativeRegisterContextDBReg27ClearAllHardwareBreakpointsEv(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef nonnull align 8 dereferenceable(1044)) unnamed_addr #4

declare void @_ZN12lldb_private26NativeRegisterContextDBReg24GetHardwareBreakHitIndexERjm(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef nonnull align 8 dereferenceable(1044), ptr noundef nonnull align 4 dereferenceable(4), i64 noundef) unnamed_addr #4

declare noundef i32 @_ZN12lldb_private26NativeRegisterContextDBReg31NumSupportedHardwareWatchpointsEv(ptr noundef nonnull align 8 dereferenceable(1044)) unnamed_addr #4

declare noundef i32 @_ZN12lldb_private26NativeRegisterContextDBReg21SetHardwareWatchpointEmmj(ptr noundef nonnull align 8 dereferenceable(1044), i64 noundef, i64 noundef, i32 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN12lldb_private26NativeRegisterContextDBReg23ClearHardwareWatchpointEj(ptr noundef nonnull align 8 dereferenceable(1044), i32 noundef) unnamed_addr #4

declare void @_ZN12lldb_private26NativeRegisterContextDBReg27ClearAllHardwareWatchpointsEv(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef nonnull align 8 dereferenceable(1044)) unnamed_addr #4

declare void @_ZN12lldb_private26NativeRegisterContextDBReg21GetWatchpointHitIndexERjm(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef nonnull align 8 dereferenceable(1044), ptr noundef nonnull align 4 dereferenceable(4), i64 noundef) unnamed_addr #4

declare noundef i64 @_ZN12lldb_private26NativeRegisterContextDBReg23GetWatchpointHitAddressEj(ptr noundef nonnull align 8 dereferenceable(1044), i32 noundef) unnamed_addr #4

declare noundef i64 @_ZN12lldb_private26NativeRegisterContextDBReg20GetWatchpointAddressEj(ptr noundef nonnull align 8 dereferenceable(1044), i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12lldb_private26NativeRegisterContextDBReg18ValidateBreakpointEmm(ptr noundef nonnull align 8 dereferenceable(1044) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 4
  %i.b = and i64 %2, 3
  %.not = icmp eq i64 %i.b, 0
  %i.c = and i1 %i.a, %.not
  ret i1 %i.c
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZN12lldb_private26NativeRegisterContextDBReg16AdjustBreakpointERKNS0_17WatchpointDetailsE(ptr noundef nonnull align 8 dereferenceable(1044) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !17
  %.sroa.2.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..0..sroa_idx, align 8, !tbaa !17
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN12lldb_private26NativeRegisterContextDBReg23FixWatchpointHitAddressEm(ptr noundef nonnull align 8 dereferenceable(1044) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 %1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private26NativeRegisterContextDBRegD1Ev(ptr noundef nonnull align 8 dereferenceable(1044) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private26NativeRegisterContextDBRegD0Ev(ptr noundef nonnull align 8 dereferenceable(1044) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N12lldb_private26NativeRegisterContextDBRegD1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N12lldb_private26NativeRegisterContextDBRegD0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #12
  unreachable
}

declare noundef i32 @_ZNK12lldb_private33NativeRegisterContextRegisterInfo16GetRegisterCountEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

declare noundef i32 @_ZNK12lldb_private33NativeRegisterContextRegisterInfo20GetUserRegisterCountEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

declare noundef ptr @_ZNK12lldb_private33NativeRegisterContextRegisterInfo22GetRegisterInfoAtIndexEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) unnamed_addr #4

; Function Attrs: nounwind uwtable
declare noundef i32 @_ZTv0_n104_N12lldb_private26NativeRegisterContextDBReg31NumSupportedHardwareBreakpointsEv(ptr noundef) unnamed_addr #7 align 2

; Function Attrs: nounwind uwtable
declare noundef i32 @_ZTv0_n112_N12lldb_private26NativeRegisterContextDBReg21SetHardwareBreakpointEmm(ptr noundef, i64 noundef, i64 noundef) unnamed_addr #7 align 2

; Function Attrs: nounwind uwtable
declare noundef zeroext i1 @_ZTv0_n120_N12lldb_private26NativeRegisterContextDBReg23ClearHardwareBreakpointEj(ptr noundef, i32 noundef) unnamed_addr #7 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n128_N12lldb_private26NativeRegisterContextDBReg27ClearAllHardwareBreakpointsEv(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::Status") align 8, ptr noundef) unnamed_addr #7 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n136_N12lldb_private26NativeRegisterContextDBReg24GetHardwareBreakHitIndexERjm(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::Status") align 8, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), i64 noundef) unnamed_addr #7 align 2

; Function Attrs: nounwind uwtable
declare noundef i32 @_ZTv0_n144_N12lldb_private26NativeRegisterContextDBReg31NumSupportedHardwareWatchpointsEv(ptr noundef) unnamed_addr #7 align 2

; Function Attrs: nounwind uwtable
declare noundef i32 @_ZTv0_n152_N12lldb_private26NativeRegisterContextDBReg21SetHardwareWatchpointEmmj(ptr noundef, i64 noundef, i64 noundef, i32 noundef) unnamed_addr #7 align 2

; Function Attrs: nounwind uwtable
declare noundef zeroext i1 @_ZTv0_n160_N12lldb_private26NativeRegisterContextDBReg23ClearHardwareWatchpointEj(ptr noundef, i32 noundef) unnamed_addr #7 align 2

declare void @_ZN12lldb_private21NativeRegisterContext18ClearWatchpointHitEj(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n176_N12lldb_private26NativeRegisterContextDBReg27ClearAllHardwareWatchpointsEv(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::Status") align 8, ptr noundef) unnamed_addr #7 align 2

declare void @_ZN12lldb_private21NativeRegisterContext15IsWatchpointHitEjRb(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n192_N12lldb_private26NativeRegisterContextDBReg21GetWatchpointHitIndexERjm(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::Status") align 8, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), i64 noundef) unnamed_addr #7 align 2

declare void @_ZN12lldb_private21NativeRegisterContext18IsWatchpointVacantEjRb(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: nounwind uwtable
declare noundef i64 @_ZTv0_n208_N12lldb_private26NativeRegisterContextDBReg20GetWatchpointAddressEj(ptr noundef, i32 noundef) unnamed_addr #7 align 2

; Function Attrs: nounwind uwtable
declare noundef i64 @_ZTv0_n216_N12lldb_private26NativeRegisterContextDBReg23GetWatchpointHitAddressEj(ptr noundef, i32 noundef) unnamed_addr #7 align 2

declare noundef zeroext i1 @_ZN12lldb_private21NativeRegisterContext18HardwareSingleStepEb(ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) unnamed_addr #4

declare void @_ZN12lldb_private21NativeRegisterContext27ReadRegisterValueFromMemoryEPKNS_12RegisterInfoEmmRNS_13RegisterValueE(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(344)) unnamed_addr #4

declare void @_ZN12lldb_private21NativeRegisterContext26WriteRegisterValueToMemoryEPKNS_12RegisterInfoEmmRKNS_13RegisterValueE(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(344)) unnamed_addr #4

declare noundef i64 @_ZNK12lldb_private21NativeRegisterContext11GetThreadIDEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 1 ptr @_ZN12lldb_private21NativeRegisterContext9GetThreadEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  ret ptr %i.b
}

declare void @_ZNK12lldb_private21NativeRegisterContext21GetExpeditedRegistersENS_13ExpeditedRegsE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK12lldb_private21NativeRegisterContext23RegisterOffsetIsDynamicEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef i64 @_ZN12lldb_private21NativeRegisterContext27GetPCfromBreakpointLocationEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private33NativeRegisterContextRegisterInfo22InvalidateAllRegistersEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

end_hunk_0
