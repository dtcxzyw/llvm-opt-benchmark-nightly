Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Event?download=true
inline.NumInlined: 556
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"class.std::tuple.60" = type { %"struct.std::_Tuple_impl.61" }
%"struct.std::_Tuple_impl.61" = type { %"struct.std::_Head_base.62" }
%"struct.std::_Head_base.62" = type { %"class.llvm::support::detail::FormatFunctor.63" }
%"class.llvm::support::detail::FormatFunctor.63" = type { %"class.llvm::iterator_range" }
%"class.llvm::iterator_range" = type { ptr, ptr }
%"struct.std::array" = type { [1 x %"class.llvm::function_ref"] }
%"class.llvm::function_ref" = type { ptr, i64 }
%"class.llvm::formatv_object" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple", %"struct.std::array" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { %"class.llvm::support::detail::FormatFunctor" }
%"class.llvm::support::detail::FormatFunctor" = type { ptr }
%"class.llvm::json::OStream" = type { %"class.llvm::SmallVector.53", %"class.llvm::StringRef", ptr, i32, i32 }
%"class.llvm::SmallVector.53" = type { %"class.llvm::SmallVectorImpl.54", %"struct.llvm::SmallVectorStorage.57" }
%"class.llvm::SmallVectorImpl.54" = type { %"class.llvm::SmallVectorTemplateBase.55" }
%"class.llvm::SmallVectorTemplateBase.55" = type { %"class.llvm::SmallVectorTemplateCommon.56" }
%"class.llvm::SmallVectorTemplateCommon.56" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.57" = type { [128 x i8] }
%"class.std::shared_ptr.41" = type { %"class.std::__shared_ptr.42" }
%"class.std::__shared_ptr.42" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.44" = type { %"class.std::__shared_ptr.45" }
%"class.std::__shared_ptr.45" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.47" = type { %"class.std::__shared_ptr.48" }
%"class.std::__shared_ptr.48" = type { ptr, %"class.std::__shared_count" }
%"struct.std::pair" = type { %"class.llvm::StringRef", %"class.llvm::StringRef" }

$_ZN12lldb_private9EventData13GetLogChannelEv = comdat any

$_ZN12lldb_private9EventData30ForwardEventToPendingListenersEPNS_5EventE = comdat any

$_ZN12lldb_private9EventData11DoOnRemovalEPNS_5EventE = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvlS2_S3_ = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorINS_14iterator_rangeIPKhEEEEEEvlS2_S3_ = comdat any

$_ZN4llvm15format_providerINS_14iterator_rangeIPKhEEvE6formatERKS4_RNS_11raw_ostreamENS_9StringRefE = comdat any

$_ZN4llvm15format_providerINS_14iterator_rangeIPKhEEvE12parseOptionsENS_9StringRefE = comdat any

$_ZN4llvm15format_providerIhvE6formatERKhRNS_11raw_ostreamENS_9StringRefE = comdat any

$_ZN4llvm7support6detail15HelperFunctions15consumeHexStyleERNS_9StringRefE = comdat any

$_ZN4llvm9StringRef13consume_frontES0_ = comdat any

$_ZTVSt15_Sp_counted_ptrIPN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [62 x i8] c"%p Event: broadcaster = %p (%s), type = 0x%8.8x (%s), data = \00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"%p Event: broadcaster = %p (%s), type = 0x%8.8x, data = \00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"%p Event: broadcaster = NULL, type = 0x%8.8x, data = \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@_ZTVN12lldb_private9EventDataE = unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr null, ptr @_ZN12lldb_private9EventDataD1Ev, ptr @_ZN12lldb_private9EventDataD0Ev, ptr @__cxa_pure_virtual, ptr @_ZN12lldb_private9EventData13GetLogChannelEv, ptr @_ZNK12lldb_private9EventData4DumpEPNS_6StreamE, ptr @_ZN12lldb_private9EventData30ForwardEventToPendingListenersEPNS_5EventE, ptr @_ZN12lldb_private9EventData11DoOnRemovalEPNS_5EventE] }, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Generic Event Data\00", align 1
@_ZTVN12lldb_private14EventDataBytesE = unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr null, ptr @_ZN12lldb_private14EventDataBytesD1Ev, ptr @_ZN12lldb_private14EventDataBytesD0Ev, ptr @_ZNK12lldb_private14EventDataBytes9GetFlavorEv, ptr @_ZN12lldb_private9EventData13GetLogChannelEv, ptr @_ZNK12lldb_private14EventDataBytes4DumpEPNS_6StreamE, ptr @_ZN12lldb_private9EventData30ForwardEventToPendingListenersEPNS_5EventE, ptr @_ZN12lldb_private9EventData11DoOnRemovalEPNS_5EventE] }, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"EventDataBytes\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\22{0}\22\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"{0:$[ ]@[x-2]}\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Process::ProcessEventData\00", align 1
@_ZTVN12lldb_private23EventDataStructuredDataE = unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr null, ptr @_ZN12lldb_private23EventDataStructuredDataD1Ev, ptr @_ZN12lldb_private23EventDataStructuredDataD0Ev, ptr @_ZNK12lldb_private23EventDataStructuredData9GetFlavorEv, ptr @_ZN12lldb_private9EventData13GetLogChannelEv, ptr @_ZNK12lldb_private23EventDataStructuredData4DumpEPNS_6StreamE, ptr @_ZN12lldb_private9EventData30ForwardEventToPendingListenersEPNS_5EventE, ptr @_ZN12lldb_private9EventData11DoOnRemovalEPNS_5EventE] }, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"EventDataStructuredData\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVSt15_Sp_counted_ptrIPN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"X\00", align 1

@_ZN12lldb_private5EventC1EPNS_11BroadcasterEjPNS_9EventDataE = unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN12lldb_private5EventC2EPNS_11BroadcasterEjPNS_9EventDataE
@_ZN12lldb_private5EventC1EPNS_11BroadcasterEjRKSt10shared_ptrINS_9EventDataEE = unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN12lldb_private5EventC2EPNS_11BroadcasterEjRKSt10shared_ptrINS_9EventDataEE
@_ZN12lldb_private5EventC1EjPNS_9EventDataE = unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN12lldb_private5EventC2EjPNS_9EventDataE
@_ZN12lldb_private5EventC1EjRKSt10shared_ptrINS_9EventDataEE = unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN12lldb_private5EventC2EjRKSt10shared_ptrINS_9EventDataEE
@_ZN12lldb_private5EventD1Ev = unnamed_addr alias void (ptr), ptr @_ZN12lldb_private5EventD2Ev
@_ZN12lldb_private9EventDataD1Ev = unnamed_addr alias void (ptr), ptr @_ZN12lldb_private9EventDataD2Ev
@_ZN12lldb_private14EventDataBytesC1Ev = unnamed_addr alias void (ptr), ptr @_ZN12lldb_private14EventDataBytesC2Ev
@_ZN12lldb_private14EventDataBytesC1EN4llvm9StringRefE = unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN12lldb_private14EventDataBytesC2EN4llvm9StringRefE
@_ZN12lldb_private14EventDataBytesD1Ev = unnamed_addr alias void (ptr), ptr @_ZN12lldb_private14EventDataBytesD2Ev
@_ZN12lldb_private23EventDataStructuredDataC1Ev = unnamed_addr alias void (ptr), ptr @_ZN12lldb_private23EventDataStructuredDataC2Ev
@_ZN12lldb_private23EventDataStructuredDataC1ERKSt10shared_ptrINS_7ProcessEERKS1_INS_14StructuredData6ObjectEERKS1_INS_20StructuredDataPluginEE = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN12lldb_private23EventDataStructuredDataC2ERKSt10shared_ptrINS_7ProcessEERKS1_INS_14StructuredData6ObjectEERKS1_INS_20StructuredDataPluginEE
@_ZN12lldb_private23EventDataStructuredDataD1Ev = unnamed_addr alias void (ptr), ptr @_ZN12lldb_private23EventDataStructuredDataD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private5EventC2EPNS_11BroadcasterEjPNS_9EventDataE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(120) initializes((0, 36), (40, 120)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8, !noalias !14 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17, !noalias !14 ; 10 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt8weak_ptrIN12lldb_private11Broadcaster15BroadcasterImplEEC2IS2_vEERKSt10shared_ptrIT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 7 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18, !noalias !14
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.j = load i32, ptr %i.f, align 4, !tbaa !19, !noalias !14
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.f, align 4, !tbaa !19, !noalias !14
  store ptr %i.c, ptr %i.a, align 8, !tbaa !20
  store ptr %i.e, ptr %i.h, align 8, !tbaa !23
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !14 ; 0 uses
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %i.m = icmp eq i8 %.pre, 0
  store ptr %i.c, ptr %i.a, align 8, !tbaa !20
  store ptr %i.e, ptr %i.h, align 8, !tbaa !23
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.n = load i32, ptr %i.i, align 4, !tbaa !19
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.i, align 4, !tbaa !19
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.f

_ZNSt8weak_ptrIN12lldb_private11Broadcaster15BroadcasterImplEEC2IS2_vEERKSt10shared_ptrIT_E.exit: ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !23
  br label %_ZNSt12__shared_ptrIN12lldb_private11Broadcaster15BroadcasterImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.r = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.f, align 8, !tbaa !24
  store i32 0, ptr %i.i, align 4, !tbaa !26
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !29
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !29
  br label %_ZNSt12__shared_ptrIN12lldb_private11Broadcaster15BroadcasterImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i4 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.t, -1
  store i32 %i.ab, ptr %i.f, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.k, label %_ZNSt12__shared_ptrIN12lldb_private11Broadcaster15BroadcasterImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt12__shared_ptrIN12lldb_private11Broadcaster15BroadcasterImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private11Broadcaster15BroadcasterImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt8weak_ptrIN12lldb_private11Broadcaster15BroadcasterImplEEC2IS2_vEERKSt10shared_ptrIT_E.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %2, ptr %i.ae, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.af, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !17
  %i.ah = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 1, ptr %i.ai, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 1, ptr %i.aj, align 4, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ah, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %3, ptr %i.ak, align 8, !tbaa !49
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.al, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private5EventC2EPNS_11BroadcasterEjRKSt10shared_ptrINS_9EventDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(120) initializes((0, 36), (40, 120)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8, !noalias !51 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17, !noalias !51 ; 10 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt8weak_ptrIN12lldb_private11Broadcaster15BroadcasterImplEEC2IS2_vEERKSt10shared_ptrIT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 7 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18, !noalias !51
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.j = load i32, ptr %i.f, align 4, !tbaa !19, !noalias !51
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.f, align 4, !tbaa !19, !noalias !51
  store ptr %i.c, ptr %i.a, align 8, !tbaa !20
  store ptr %i.e, ptr %i.h, align 8, !tbaa !23
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !51 ; 0 uses
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %i.m = icmp eq i8 %.pre, 0
  store ptr %i.c, ptr %i.a, align 8, !tbaa !20
  store ptr %i.e, ptr %i.h, align 8, !tbaa !23
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.n = load i32, ptr %i.i, align 4, !tbaa !19
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.i, align 4, !tbaa !19
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.f

_ZNSt8weak_ptrIN12lldb_private11Broadcaster15BroadcasterImplEEC2IS2_vEERKSt10shared_ptrIT_E.exit: ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !23
  br label %_ZNSt12__shared_ptrIN12lldb_private11Broadcaster15BroadcasterImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.r = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.f, align 8, !tbaa !24
  store i32 0, ptr %i.i, align 4, !tbaa !26
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !29
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !29
  br label %_ZNSt12__shared_ptrIN12lldb_private11Broadcaster15BroadcasterImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i4 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.t, -1
  store i32 %i.ab, ptr %i.f, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.k, label %_ZNSt12__shared_ptrIN12lldb_private11Broadcaster15BroadcasterImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZNSt12__shared_ptrIN12lldb_private11Broadcaster15BroadcasterImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private11Broadcaster15BroadcasterImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt8weak_ptrIN12lldb_private11Broadcaster15BroadcasterImplEEC2IS2_vEERKSt10shared_ptrIT_E.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %2, ptr %i.ae, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !17 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %3, align 8, !tbaa !54
  store <2 x ptr> %i.ai, ptr %i.af, align 8, !tbaa !54
  %.not.i.i.i5 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i5, label %_ZNSt10shared_ptrIN12lldb_private9EventDataEEC2ERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private11Broadcaster15BroadcasterImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i6 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !19
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !19
  br label %_ZNSt10shared_ptrIN12lldb_private9EventDataEEC2ERKS2_.exit

bb.n:                                             ; preds = %bb.l
  %i.an = atomicrmw volatile add ptr %i.aj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private9EventDataEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private9EventDataEEC2ERKS2_.exit: ; preds = %_ZNSt12__shared_ptrIN12lldb_private11Broadcaster15BroadcasterImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.m, %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private5EventC2EjPNS_9EventDataE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(120) initializes((0, 36), (40, 120)) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 %1, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !17
  %i.d = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !26
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %2, ptr %i.g, align 8, !tbaa !49
  store ptr %i.d, ptr %i.c, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local void @_ZN12lldb_private5EventC2EjRKSt10shared_ptrINS_9EventDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(120) initializes((0, 36), (40, 120)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 %1, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.e = load <2 x ptr>, ptr %2, align 8, !tbaa !54
  store <2 x ptr> %i.e, ptr %i.b, align 8, !tbaa !54
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private9EventDataEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !19
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !19
  br label %_ZNSt10shared_ptrIN12lldb_private9EventDataEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private9EventDataEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private9EventDataEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private5EventD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(120) dereferenceable(120) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private8ListenerEEEvT_S5_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN12lldb_private8ListenerEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN12lldb_private8ListenerEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private8ListenerEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !26
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22, !inline_history !57
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22, !inline_history !57
  br label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private8ListenerEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private8ListenerEEEvPT_.exit.i.i.i, !prof !30

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22
  br label %_ZSt8_DestroyISt10shared_ptrIN12lldb_private8ListenerEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN12lldb_private8ListenerEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private8ListenerEEEvT_S5_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !58

_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private8ListenerEEEvT_S5_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN12lldb_private8ListenerEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private8ListenerEEEvT_S5_.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private8ListenerEEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private8ListenerEEEvT_S5_.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private8ListenerEEEvT_S5_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN12lldb_private8ListenerEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private8ListenerEEEvT_S5_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #24
  br label %_ZNSt6vectorISt10shared_ptrIN12lldb_private8ListenerEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN12lldb_private8ListenerEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN12lldb_private8ListenerEEEvT_S5_.exit.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN12lldb_private8ListenerEESaIS3_EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ae, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !26
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !61
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !inline_history !61
  br label %_ZNSt12__shared_ptrIN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i1 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.ah, %bb.l ], [ %i.ar, %bb.m ]
  %i.as = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.as, label %bb.n, label %_ZNSt12__shared_ptrIN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !30

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22
  br label %_ZNSt12__shared_ptrIN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN12lldb_private8ListenerEESaIS3_EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !23 ; 4 uses
  %.not.i.i2 = icmp eq ptr %i.au, null
  br i1 %.not.i.i2, label %_ZNSt10__weak_ptrIN12lldb_private11Broadcaster15BroadcasterImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private9EventDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i3 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_0
