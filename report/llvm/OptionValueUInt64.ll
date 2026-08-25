Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OptionValueUInt64?download=true
inline.NumInlined: 214
inline.NumDeleted: 162
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.lldb_private::Status" = type { %"class.llvm::Error", %"class.std::__cxx11::basic_string" }
%"class.llvm::Error" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::json::Value" = type { i16, [6 x i8], %"struct.llvm::AlignedCharArrayUnion" }
%"struct.llvm::AlignedCharArrayUnion" = type { [32 x i8] }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type { %"union.std::_Optional_payload_base<lldb_private::Stream::HighlightSettings>::_Storage", i8 }
%"union.std::_Optional_payload_base<lldb_private::Stream::HighlightSettings>::_Storage" = type { %"struct.lldb_private::Stream::HighlightSettings" }
%"struct.lldb_private::Stream::HighlightSettings" = type <{ %"class.llvm::StringRef", %"class.llvm::StringRef", %"class.llvm::StringRef", i8, [7 x i8] }>
%"class.llvm::raw_string_ostream" = type { %"class.llvm::raw_ostream", ptr }
%"class.llvm::raw_ostream" = type { ptr, i32, ptr, ptr, ptr, i8, i32 }
%"class.llvm::formatv_object" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple", %"struct.std::array" }
%"class.llvm::formatv_object_base.base" = type <{ %"class.llvm::StringRef", %"class.llvm::ArrayRef", i8 }>
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { %"class.llvm::support::detail::FormatFunctor" }
%"class.llvm::support::detail::FormatFunctor" = type { ptr }
%"struct.std::array" = type { [1 x %"class.llvm::function_ref"] }
%"class.llvm::function_ref" = type { ptr, i64 }

$_ZN12lldb_private11OptionValueD2Ev = comdat any

$_ZN12lldb_private17OptionValueUInt64D0Ev = comdat any

$_ZNK12lldb_private17OptionValueUInt647GetTypeEv = comdat any

$_ZNK12lldb_private11OptionValue18ValueIsTransparentEv = comdat any

$_ZNK12lldb_private11OptionValue16GetTypeAsCStringEv = comdat any

$_ZNK12lldb_private17OptionValueUInt646ToJSONEPKNS_16ExecutionContextE = comdat any

$_ZN12lldb_private17OptionValueUInt645ClearEv = comdat any

$_ZNK12lldb_private11OptionValue11GetSubValueEPKNS_16ExecutionContextEN4llvm9StringRefERNS_6StatusE = comdat any

$_ZNK12lldb_private11OptionValue16IsAggregateValueEv = comdat any

$_ZNK12lldb_private11OptionValue7GetNameEv = comdat any

$_ZNK12lldb_private17OptionValueUInt649IsDefaultEv = comdat any

$_ZNK12lldb_private9CloneableINS_17OptionValueUInt64ENS_11OptionValueEE5CloneEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN12lldb_private6Status26FromErrorStringWithFormatvIJRN4llvm9StringRefEEEES0_PKcDpOT_ = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_ = comdat any

$_ZNSt15_Sp_counted_ptrIPN12lldb_private17OptionValueUInt64ELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN12lldb_private17OptionValueUInt64ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN12lldb_private17OptionValueUInt64ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN12lldb_private17OptionValueUInt64ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private17OptionValueUInt64ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private17OptionValueUInt64ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private17OptionValueUInt64ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private17OptionValueUInt64ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZTVSt15_Sp_counted_ptrIPN12lldb_private17OptionValueUInt64ELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private17OptionValueUInt64ESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" \09\0A\0B\0C\0D\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"%lu is out of range, valid values must be between %lu and %lu.\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"invalid uint64_t string value: '%s'\00", align 1
@_ZTVN12lldb_private17OptionValueUInt64E = unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr null, ptr @_ZN12lldb_private11OptionValueD2Ev, ptr @_ZN12lldb_private17OptionValueUInt64D0Ev, ptr @_ZNK12lldb_private17OptionValueUInt647GetTypeEv, ptr @_ZNK12lldb_private11OptionValue18ValueIsTransparentEv, ptr @_ZNK12lldb_private11OptionValue16GetTypeAsCStringEv, ptr @_ZN12lldb_private17OptionValueUInt649DumpValueEPKNS_16ExecutionContextERNS_6StreamEj, ptr @_ZNK12lldb_private17OptionValueUInt646ToJSONEPKNS_16ExecutionContextE, ptr @_ZN12lldb_private17OptionValueUInt6418SetValueFromStringEN4llvm9StringRefENS_19VarSetOperationTypeE, ptr @_ZN12lldb_private17OptionValueUInt645ClearEv, ptr @_ZNK12lldb_private11OptionValue8DeepCopyERKSt10shared_ptrIS0_E, ptr @_ZN12lldb_private11OptionValue12AutoCompleteERNS_18CommandInterpreterERNS_17CompletionRequestE, ptr @_ZNK12lldb_private11OptionValue11GetSubValueEPKNS_16ExecutionContextEN4llvm9StringRefERNS_6StatusE, ptr @_ZN12lldb_private11OptionValue11SetSubValueEPKNS_16ExecutionContextENS_19VarSetOperationTypeEN4llvm9StringRefES6_, ptr @_ZNK12lldb_private11OptionValue16IsAggregateValueEv, ptr @_ZNK12lldb_private11OptionValue7GetNameEv, ptr @_ZNK12lldb_private11OptionValue17DumpQualifiedNameERNS_6StreamESt8optionalINS1_17HighlightSettingsEE, ptr @_ZNK12lldb_private17OptionValueUInt649IsDefaultEv, ptr @_ZNK12lldb_private9CloneableINS_17OptionValueUInt64ENS_11OptionValueEE5CloneEv] }, align 8
@_ZTVN12lldb_private11OptionValueE = external unnamed_addr constant { [20 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" (default: \00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"'{0}' is not a valid subvalue\00", align 1
@_ZTVN4llvm18raw_string_ostreamE = external unnamed_addr constant { [15 x ptr] }, align 8
@_ZTVSt15_Sp_counted_ptrIPN12lldb_private17OptionValueUInt64ELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private17OptionValueUInt64ELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private17OptionValueUInt64ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private17OptionValueUInt64ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private17OptionValueUInt64ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private17OptionValueUInt64ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private17OptionValueUInt64ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private17OptionValueUInt64ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private17OptionValueUInt64ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private17OptionValueUInt64ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private17OptionValueUInt646CreateEN4llvm9StringRefERNS_6StatusE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 16)) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #12 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, i8 0, i64 112, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12lldb_private17OptionValueUInt64E, i64 16), ptr %i.a, align 16, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i64 -1, ptr %i.c, align 16, !tbaa !10
  store ptr %i.a, ptr %0, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store i32 1, ptr %i.f, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  store i32 1, ptr %i.g, align 4, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN12lldb_private17OptionValueUInt64ELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.e, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.a, ptr %i.h, align 8, !tbaa !32
  store ptr %i.e, ptr %i.d, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %5 = load ptr, ptr %i.a, align 16, !tbaa !8
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr %1, i64 %2, i32 noundef 6) #13
  %i.i = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) #13 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.j = call noundef zeroext i1 @_ZNK12lldb_private6Status4FailEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  br i1 %i.j, label %bb.b, label %_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.k = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !29
  store i32 0, ptr %i.g, align 4, !tbaa !31
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #13, !inline_history !36
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #13, !inline_history !36
  br label %_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.m, -1
  store i32 %i.u, ptr %i.f, align 8, !tbaa !38
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.m, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, !prof !39

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #13
  br label %_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

_ZNSt12__shared_ptrIN12lldb_private11OptionValueELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noundef zeroext i1 @_ZNK12lldb_private6Status4FailEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private17OptionValueUInt649DumpValueEPKNS_16ExecutionContextERNS_6StreamEj(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nofree readnone captures(none) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i32 %3, 2
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %3, 4
  %.not9 = icmp eq i32 %i.b, 0
  br i1 %.not9, label %bb.g, label %bb.d

.thread:                                          ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(104) %0) #13
  %i.g = tail call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull @.str, ptr noundef %i.f) #13 ; 0 uses
  %i.h = and i32 %3, 4
  %.not913 = icmp eq i32 %i.h, 0
  br i1 %.not913, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.i = tail call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr nonnull @.str.1, i64 3) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !40
  %i.l = tail call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull @.str.2, i64 noundef %i.k) #13 ; 0 uses
  %i.m = and i32 %3, 64
  %.not10 = icmp eq i32 %i.m, 0
  br i1 %.not10, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.j, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !41
  %.not11 = icmp eq i64 %i.n, %i.p
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr nonnull @.str.6, i64 11) #13 ; 0 uses
  %i.r = load i64, ptr %i.o, align 8, !tbaa !41
  %i.s = tail call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull @.str.2, i64 noundef %i.r) #13 ; 0 uses
  %i.t = tail call noundef i64 @_ZN12lldb_private6Stream7PutCharEc(ptr noundef nonnull align 8 dereferenceable(88) %2, i8 noundef signext 41) #13 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.f, %bb.b
  ret void
}

declare noundef i64 @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ...) local_unnamed_addr #4

declare noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private17OptionValueUInt6418SetValueFromStringEN4llvm9StringRefENS_19VarSetOperationTypeE(ptr dead_on_unwind noalias nonnull writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %6 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %7 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %8 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  store ptr %2, ptr %6, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %3, ptr %i.c, align 8
  tail call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  switch i32 %4, label %_ZN12lldb_private11OptionValue18NotifyValueChangedEv.exit [
    i32 5, label %bb.b
    i32 0, label %bb.c
    i32 6, label %bb.c
    i32 1, label %bb.l
    i32 2, label %bb.l
    i32 3, label %bb.l
    i32 4, label %bb.l
    i32 7, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(136) %1) #13
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %.not.i.i.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.not.i, label %_ZN12lldb_private11OptionValue18NotifyValueChangedEv.exit, label %_ZNKSt8functionIFvvEEclEv.exit.i

_ZNKSt8functionIFvvEEclEv.exit.i:                 ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.i) #13, !inline_history !44
  br label %_ZN12lldb_private11OptionValue18NotifyValueChangedEv.exit

bb.c:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.l = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull @.str.3, i64 6, i64 noundef 0) #13
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.l, i64 %3)
  %i.m = load i64, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %.sroa.speculated4.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.m, i64 %.sroa.speculated.i.i) ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.speculated4.i.i.i.i
  %i.p = sub i64 %i.m, %.sroa.speculated4.i.i.i.i ; 2 uses
  store ptr %i.o, ptr %5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.q, align 8
  %i.r = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str.3, i64 6, i64 noundef -1) #13
  %i.s = add i64 %i.r, 1
  %i.t = call i64 @llvm.usub.sat.i64(i64 %i.p, i64 %i.s)
  %i.u = load i64, ptr %i.q, align 8, !tbaa !45   ; 2 uses
  %i.v = sub i64 %i.u, %i.t
  %i.w = load ptr, ptr %5, align 8, !tbaa !48
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.x = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %i.w, i64 %.sroa.speculated.i.i.i.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #13
  br i1 %i.x, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i64, ptr %i.b, align 8, !tbaa !49   ; 4 uses
end_hunk_0
