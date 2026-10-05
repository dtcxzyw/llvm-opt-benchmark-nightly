Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LiveRegMatrix?download=true
inline.NumInlined: 703
inline.NumDeleted: 425
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%class.anon.239 = type { ptr, ptr }
%"class.std::reference_wrapper" = type { ptr }
%"class.llvm::CoalescerPair" = type { ptr, %"class.llvm::Register", %"class.llvm::Register", i32, i32, i8, i8, i8, ptr }
%"class.llvm::Register" = type { i32 }
%"class.llvm::VNInfo" = type { i32, [4 x i8], %"class.llvm::SlotIndex" }
%"class.llvm::SlotIndex" = type { %"class.llvm::PointerIntPair" }
%"class.llvm::PointerIntPair" = type { %"struct.llvm::detail::PunnedPointer" }
%"struct.llvm::detail::PunnedPointer" = type { [8 x i8] }
%"class.llvm::LiveRange" = type { %"class.llvm::SmallVector.193", %"class.llvm::SmallVector.198", %"class.std::unique_ptr.203" }
%"class.llvm::SmallVector.193" = type { %"class.llvm::SmallVectorImpl.194", %"struct.llvm::SmallVectorStorage.197" }
%"class.llvm::SmallVectorImpl.194" = type { %"class.llvm::SmallVectorTemplateBase.195" }
%"class.llvm::SmallVectorTemplateBase.195" = type { %"class.llvm::SmallVectorTemplateCommon.196" }
%"class.llvm::SmallVectorTemplateCommon.196" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.197" = type { [48 x i8] }
%"class.llvm::SmallVector.198" = type { %"class.llvm::SmallVectorImpl.199", %"struct.llvm::SmallVectorStorage.202" }
%"class.llvm::SmallVectorImpl.199" = type { %"class.llvm::SmallVectorTemplateBase.200" }
%"class.llvm::SmallVectorTemplateBase.200" = type { %"class.llvm::SmallVectorTemplateCommon.201" }
%"class.llvm::SmallVectorTemplateCommon.201" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.202" = type { [16 x i8] }
%"class.std::unique_ptr.203" = type { %"struct.std::__uniq_ptr_data.204" }
%"struct.std::__uniq_ptr_data.204" = type { %"class.std::__uniq_ptr_impl.205" }
%"class.std::__uniq_ptr_impl.205" = type { %"class.std::tuple.206" }
%"class.std::tuple.206" = type { %"struct.std::_Tuple_impl.207" }
%"struct.std::_Tuple_impl.207" = type { %"struct.std::_Head_base.210" }
%"struct.std::_Head_base.210" = type { ptr }
%"struct.llvm::LiveRange::Segment" = type { %"class.llvm::SlotIndex", %"class.llvm::SlotIndex", ptr }
%"class.llvm::LiveIntervalUnion::Query" = type <{ ptr, ptr, ptr, %"class.llvm::IntervalMap<llvm::SlotIndex, const llvm::LiveInterval *>::const_iterator", %"class.llvm::SmallVector.183", i8, i8, [2 x i8], i32, i32, [4 x i8] }>
%"class.llvm::IntervalMap<llvm::SlotIndex, const llvm::LiveInterval *>::const_iterator" = type { ptr, %"class.llvm::IntervalMapImpl::Path" }
%"class.llvm::IntervalMapImpl::Path" = type { %"class.llvm::SmallVector.178" }
%"class.llvm::SmallVector.178" = type { %"class.llvm::SmallVectorImpl.179", %"struct.llvm::SmallVectorStorage.182" }
%"class.llvm::SmallVectorImpl.179" = type { %"class.llvm::SmallVectorTemplateBase.180" }
%"class.llvm::SmallVectorTemplateBase.180" = type { %"class.llvm::SmallVectorTemplateCommon.181" }
%"class.llvm::SmallVectorTemplateCommon.181" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.182" = type { [64 x i8] }
%"class.llvm::SmallVector.183" = type { %"class.llvm::SmallVectorImpl.184", %"struct.llvm::SmallVectorStorage.187" }
%"class.llvm::SmallVectorImpl.184" = type { %"class.llvm::SmallVectorTemplateBase.185" }
%"class.llvm::SmallVectorTemplateBase.185" = type { %"class.llvm::SmallVectorTemplateCommon.186" }
%"class.llvm::SmallVectorTemplateCommon.186" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.187" = type { [32 x i8] }
%"class.llvm::LiveRegMatrix" = type { ptr, ptr, ptr, i32, %"class.std::unique_ptr", %"class.llvm::LiveIntervalUnion::Array", %"class.std::unique_ptr.11", i32, %"class.llvm::Register", %"class.llvm::BitVector" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.10" }
%"struct.std::_Head_base.10" = type { ptr }
%"class.llvm::LiveIntervalUnion::Array" = type { i32, ptr }
%"class.std::unique_ptr.11" = type { %"struct.std::__uniq_ptr_data.12" }
%"struct.std::__uniq_ptr_data.12" = type { %"class.std::__uniq_ptr_impl.13" }
%"class.std::__uniq_ptr_impl.13" = type { %"class.std::tuple.14" }
%"class.std::tuple.14" = type { %"struct.std::_Tuple_impl.15" }
%"struct.std::_Tuple_impl.15" = type { %"struct.std::_Head_base.18" }
%"struct.std::_Head_base.18" = type { ptr }
%"class.llvm::BitVector" = type <{ %"class.llvm::SmallVector.19", i32, [4 x i8] }>
%"class.llvm::SmallVector.19" = type { %"class.llvm::SmallVectorImpl.20", %"struct.llvm::SmallVectorStorage.23" }
%"class.llvm::SmallVectorImpl.20" = type { %"class.llvm::SmallVectorTemplateBase.21" }
%"class.llvm::SmallVectorTemplateBase.21" = type { %"class.llvm::SmallVectorTemplateCommon.22" }
%"class.llvm::SmallVectorTemplateCommon.22" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.23" = type { [48 x i8] }
%"class.llvm::SmallVector.223" = type { %"class.llvm::SmallVectorImpl.224", %"struct.llvm::SmallVectorStorage.227" }
%"class.llvm::SmallVectorImpl.224" = type { %"class.llvm::SmallVectorTemplateBase.225" }
%"class.llvm::SmallVectorTemplateBase.225" = type { %"class.llvm::SmallVectorTemplateCommon.226" }
%"class.llvm::SmallVectorTemplateCommon.226" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.227" = type { [32 x i8] }

$_ZN4llvm13LiveRegMatrixD2Ev = comdat any

$_ZN4llvm26LiveRegMatrixWrapperLegacyD2Ev = comdat any

$_ZN4llvm26LiveRegMatrixWrapperLegacyD0Ev = comdat any

$_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE = comdat any

$_ZN4llvm4Pass14doFinalizationERNS_6ModuleE = comdat any

$_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv = comdat any

$_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv = comdat any

$_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv = comdat any

$_ZN4llvm15callDefaultCtorINS_26LiveRegMatrixWrapperLegacyEEEPNS_4PassEv = comdat any

$_ZN4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE10visitNodesEMS7_FvNS_15IntervalMapImpl7NodeRefEjE = comdat any

$_ZN4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE10deleteNodeENS_15IntervalMapImpl7NodeRefEj = comdat any

$_ZN4llvm15SmallVectorImplINS_15IntervalMapImpl7NodeRefEE4swapERS3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_15IntervalMapImpl7NodeRefELb1EE15growAndPushBackES2_ = comdat any

$_ZNSt8_Rb_treeIN4llvm9LiveRange7SegmentES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E = comdat any

$_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev = comdat any

$_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN4llvm26LiveRegMatrixWrapperLegacy2IDE = global i8 0, align 1
@_ZL44InitializeLiveRegMatrixWrapperLegacyPassFlag = internal global %"struct.std::once_flag" zeroinitializer, align 4
@_ZN4llvm21LiveRegMatrixAnalysis3KeyE = local_unnamed_addr global %"struct.llvm::AnalysisKey" zeroinitializer, align 8
@_ZTVN4llvm26LiveRegMatrixWrapperLegacyE = unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN4llvm26LiveRegMatrixWrapperLegacyD2Ev, ptr @_ZN4llvm26LiveRegMatrixWrapperLegacyD0Ev, ptr @_ZNK4llvm4Pass11getPassNameEv, ptr @_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE, ptr @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE, ptr @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE, ptr @_ZNK4llvm19MachineFunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE, ptr @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE, ptr @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv, ptr @_ZNK4llvm26LiveRegMatrixWrapperLegacy16getAnalysisUsageERNS_13AnalysisUsageE, ptr @_ZN4llvm26LiveRegMatrixWrapperLegacy13releaseMemoryEv, ptr @_ZN4llvm4Pass18getAsImmutablePassEv, ptr @_ZN4llvm4Pass18getAsPMDataManagerEv, ptr @_ZNK4llvm4Pass14verifyAnalysisEv, ptr @_ZN4llvm4Pass17dumpPassStructureEj, ptr @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE, ptr @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE, ptr @_ZN4llvm26LiveRegMatrixWrapperLegacy20runOnMachineFunctionERNS_15MachineFunctionE, ptr @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv, ptr @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv, ptr @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv] }, align 8
@.str = private unnamed_addr constant [21 x i8] c"Live Register Matrix\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"liveregmatrix\00", align 1
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8
@_ZN4llvm24LiveIntervalsWrapperPass2IDE = external global i8, align 1
@_ZN4llvm23VirtRegMapWrapperLegacy2IDE = external global i8, align 1
@_ZN4llvm24UseSegmentSetForPhysRegsE = external local_unnamed_addr global %"class.llvm::cl::opt", align 8
@_ZN4llvm21LiveIntervalsAnalysis3KeyE = external global %"struct.llvm::AnalysisKey", align 8
@_ZN4llvm18VirtRegMapAnalysis3KeyE = external global %"struct.llvm::AnalysisKey", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm40initializeLiveRegMatrixWrapperLegacyPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %class.anon.239, align 8            ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr @_ZL44initializeLiveRegMatrixWrapperLegacyPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !173
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !10
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !10
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL44InitializeLiveRegMatrixWrapperLegacyPassFlag, ptr noundef nonnull @__once_proxy) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #18
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !10
  store ptr null, ptr %i.c, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL44initializeLiveRegMatrixWrapperLegacyPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 {
bb.a:
  tail call void @_ZN4llvm38initializeLiveIntervalsWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #17
  tail call void @_ZN4llvm37initializeVirtRegMapWrapperLegacyPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #17
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19 ; 9 uses
  store ptr @.str, ptr %i.a, align 8, !tbaa !174
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 20, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.1, ptr %i.b, align 8, !tbaa !174
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 13, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN4llvm26LiveRegMatrixWrapperLegacy2IDE, ptr %i.c, align 8, !tbaa !177
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !178
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 1, ptr %i.e, align 1, !tbaa !179
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorINS_26LiveRegMatrixWrapperLegacyEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !180
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm26LiveRegMatrixWrapperLegacy16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(161) initializes((160, 161)) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 1, ptr %i.a, align 8, !tbaa !190
  %i.b = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage23addRequiredTransitiveIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm24LiveIntervalsWrapperPass2IDE) #17 ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage23addRequiredTransitiveIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm23VirtRegMapWrapperLegacy2IDE) #17 ; 0 uses
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #17
  ret void
}

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm26LiveRegMatrixWrapperLegacy20runOnMachineFunctionERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !192  ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !195  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm24LiveIntervalsWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit.thread, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit.thread: ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %3 = load ptr, ptr %2, align 8
  br label %.lr.ph.i.i.i6.preheader

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 3 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !195
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm24LiveIntervalsWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i3.i.i5 = icmp eq ptr %i.f, @_ZN4llvm23VirtRegMapWrapperLegacy2IDE
  br i1 %.not.i3.i.i5, label %_ZNK4llvm4Pass11getAnalysisINS_23VirtRegMapWrapperLegacyEEERT_v.exit, label %.lr.ph.i.i.i6.preheader

.lr.ph.i.i.i6.preheader:                          ; preds = %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit.thread, %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit
  %4 = phi ptr [ %3, %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit.thread ], [ %i.j, %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit ]
  br label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %.lr.ph.i.i.i6.preheader, %.lr.ph.i.i.i6
  %.sroa.08.015.i4.i.i7 = phi ptr [ %i.k, %.lr.ph.i.i.i6 ], [ %i.c, %.lr.ph.i.i.i6.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i7, i64 16 ; 4 uses
  %.not11.i.i.i8 = icmp ne ptr %i.k, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i8)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !195
  %.not.i.i.i9 = icmp eq ptr %i.l, @_ZN4llvm23VirtRegMapWrapperLegacy2IDE
  br i1 %.not.i.i.i9, label %_ZNK4llvm4Pass11getAnalysisINS_23VirtRegMapWrapperLegacyEEERT_v.exit, label %.lr.ph.i.i.i6

_ZNK4llvm4Pass11getAnalysisINS_23VirtRegMapWrapperLegacyEEERT_v.exit: ; preds = %.lr.ph.i.i.i6, %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit
  %5 = phi ptr [ %i.j, %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit ], [ %4, %.lr.ph.i.i.i6 ]
  %.sroa.08.015.i.lcssa.i.i10 = phi ptr [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit ], [ %i.k, %.lr.ph.i.i.i6 ]
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i10, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN4llvm13LiveRegMatrix4initERNS_15MachineFunctionERNS_13LiveIntervalsERNS_10VirtRegMapE(ptr noundef nonnull align 8 dereferenceable(144) %i.q, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(424) %i.m, ptr noundef nonnull align 8 dereferenceable(128) %i.p)
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm13LiveRegMatrix4initERNS_15MachineFunctionERNS_13LiveIntervalsERNS_10VirtRegMapE(ptr noundef nonnull align 8 dereferenceable(144) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(424) %2, ptr noundef nonnull align 8 dereferenceable(128) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !299, !nonnull !33, !align !34 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(344) %i.b) #17 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !300  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !81
  %.not = icmp eq i32 %i.j, %i.l
  br i1 %.not, label %_ZNSt10unique_ptrIA_N4llvm17LiveIntervalUnion5QueryESt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = zext i32 %i.j to i64                     ; 3 uses
  %i.o = mul nuw nsw i64 %i.n, 176
  %i.p = or disjoint i64 %i.o, 8
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #19 ; 2 uses
  store i64 %i.n, ptr %i.q, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [176 x i8], ptr %i.r, i64 %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.u = phi ptr [ %i.r, %bb.c ], [ %i.ai, %bb.d ] ; 15 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr null, ptr %i.v, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(172) %i.u, i8 0, i64 16, i1 false)
  store ptr %i.x, ptr %i.w, align 8, !tbaa !91
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i32 0, ptr %i.y, align 8, !tbaa !92
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 4, ptr %i.z, align 4, !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !91
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  store i32 0, ptr %i.ac, align 8, !tbaa !92
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 124
  store i32 4, ptr %i.ad, align 4, !tbaa !93
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  store i8 0, ptr %i.ae, align 8, !tbaa !102
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 161
  store i8 0, ptr %i.af, align 1, !tbaa !103
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 164
  store i32 0, ptr %i.ag, align 4, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 168
  store i32 0, ptr %i.ah, align 8, !tbaa !105
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 176 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.t
  br i1 %i.aj, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.b
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !106 ; 4 uses
  store ptr %i.r, ptr %i.m, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_N4llvm17LiveIntervalUnion5QueryESt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %.idx.i.i.i = mul i64 %i.am, 176                ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZNKSt14default_deleteIA_N4llvm17LiveIntervalUnion5QueryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.e
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %.idx.i.i.i
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZN4llvm17LiveIntervalUnion5QueryD2Ev.exit.i.i.i, %.preheader.preheader.i.i.i
  %i.ap = phi ptr [ %i.aq, %_ZN4llvm17LiveIntervalUnion5QueryD2Ev.exit.i.i.i ], [ %i.ao, %.preheader.preheader.i.i.i ] ; 5 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -176 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !91 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 -48
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN4llvm11SmallVectorIPKNS_12LiveIntervalELj4EED2Ev.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i.i
  tail call void @free(ptr noundef %i.as) #17
  br label %_ZN4llvm11SmallVectorIPKNS_12LiveIntervalELj4EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorIPKNS_12LiveIntervalELj4EED2Ev.exit.i.i.i.i: ; preds = %bb.f, %.preheader.i.i.i
  %i.av = getelementptr inbounds i8, ptr %i.ap, i64 -144
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !91 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.ap, i64 -128
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN4llvm17LiveIntervalUnion5QueryD2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIPKNS_12LiveIntervalELj4EED2Ev.exit.i.i.i.i
  tail call void @free(ptr noundef %i.aw) #17
  br label %_ZN4llvm17LiveIntervalUnion5QueryD2Ev.exit.i.i.i

_ZN4llvm17LiveIntervalUnion5QueryD2Ev.exit.i.i.i: ; preds = %bb.g, %_ZN4llvm11SmallVectorIPKNS_12LiveIntervalELj4EED2Ev.exit.i.i.i.i
  %i.az = icmp eq ptr %i.aq, %i.ak
  br i1 %i.az, label %_ZNKSt14default_deleteIA_N4llvm17LiveIntervalUnion5QueryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i, label %.preheader.i.i.i

_ZNKSt14default_deleteIA_N4llvm17LiveIntervalUnion5QueryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i: ; preds = %_ZN4llvm17LiveIntervalUnion5QueryD2Ev.exit.i.i.i, %bb.e
  %i.ba = or disjoint i64 %.idx.i.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.al, i64 noundef %i.ba) #20
  br label %_ZNSt10unique_ptrIA_N4llvm17LiveIntervalUnion5QueryESt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit

_ZNSt10unique_ptrIA_N4llvm17LiveIntervalUnion5QueryESt14default_deleteIS3_EE5resetIPS2_vEEvT_.exit: ; preds = %_ZNKSt14default_deleteIA_N4llvm17LiveIntervalUnion5QueryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i, %.loopexit, %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !107
  tail call void @_ZN4llvm17LiveIntervalUnion5Array4initERNS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEcLm192ELm64EEEj(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(88) %i.bc, i32 noundef %i.j) #17
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !108
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !108
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

declare void @_ZN4llvm17LiveIntervalUnion5Array4initERNS_18RecyclingAllocatorINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEcLm192ELm64EEEj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm26LiveRegMatrixWrapperLegacy13releaseMemoryEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not4.i = icmp eq i32 %i.b, 0
  br i1 %.not4.i, label %_ZN4llvm13LiveRegMatrix13releaseMemoryEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm17LiveIntervalUnion5clearEv.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN4llvm17LiveIntervalUnion5clearEv.exit.i ] ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.f = getelementptr inbounds nuw [216 x i8], ptr %i.e, i64 %indvars.iv.i ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.h = load i32, ptr %i.g, align 8, !tbaa !111
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN4llvm17LiveIntervalUnion5clearEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  tail call void @_ZN4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE10visitNodesEMS7_FvNS_15IntervalMapImpl7NodeRefEjE(ptr noundef nonnull align 8 dereferenceable(208) %i.i, i64 ptrtoint (ptr @_ZN4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE10deleteNodeENS_15IntervalMapImpl7NodeRefEj to i64), i64 0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.i, i8 0, i64 196, i1 false)
  br label %_ZN4llvm17LiveIntervalUnion5clearEv.exit.i

_ZN4llvm17LiveIntervalUnion5clearEv.exit.i:       ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 204
  store i32 0, ptr %i.j, align 4, !tbaa !112
  %i.k = load i32, ptr %i.f, align 8, !tbaa !114
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.f, align 8, !tbaa !114
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.d
  br i1 %.not.i, label %_ZN4llvm13LiveRegMatrix13releaseMemoryEv.exit, label %bb.b, !llvm.loop !0

_ZN4llvm13LiveRegMatrix13releaseMemoryEv.exit:    ; preds = %_ZN4llvm17LiveIntervalUnion5clearEv.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm13LiveRegMatrix13releaseMemoryEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = zext i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm17LiveIntervalUnion5clearEv.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm17LiveIntervalUnion5clearEv.exit
end_hunk_0
