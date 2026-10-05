Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUNextUseAnalysis?download=true
inline.NumInlined: 4899
inline.NumDeleted: 2283
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm31AMDGPUNextUseAnalysisLegacyPassC2Ev:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef { ptr, i64 } @_ZNK4llvm31AMDGPUNextUseAnalysisLegacyPass11getPassNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.25, i64 17 }
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm31AMDGPUNextUseAnalysisLegacyPass20runOnMachineFunctionERNS_15MachineFunctionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !394  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !399  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !399  ; 2 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !402
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm26MachineLoopInfoWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !402
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm26MachineLoopInfoWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %i.g, %.lr.ph.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #29 ; 2 uses
  tail call void @_ZN4llvm21AMDGPUNextUseAnalysisC1EPKNS_15MachineFunctionEPKNS_15MachineLoopInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %1, ptr noundef nonnull %i.k) #27
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !403  ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !403
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm21AMDGPUNextUseAnalysisESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN4llvm21AMDGPUNextUseAnalysisEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm21AMDGPUNextUseAnalysisEEclEPS1_.exit.i.i: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit
  tail call void @_ZN4llvm21AMDGPUNextUseAnalysisD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 8) #28
  br label %_ZNSt10unique_ptrIN4llvm21AMDGPUNextUseAnalysisESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN4llvm21AMDGPUNextUseAnalysisESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit, %_ZNKSt14default_deleteIN4llvm21AMDGPUNextUseAnalysisEEclEPS1_.exit.i.i
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm31AMDGPUNextUseAnalysisLegacyPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm26MachineLoopInfoWrapperPass2IDE) #27 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 1, ptr %i.b, align 8, !tbaa !413
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #27
  ret void
}

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm45initializeAMDGPUNextUseAnalysisLegacyPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %class.anon.792, align 8            ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr @_ZL49initializeAMDGPUNextUseAnalysisLegacyPassPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !360
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !415
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !360
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !360
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL49InitializeAMDGPUNextUseAnalysisLegacyPassPassFlag, ptr noundef nonnull @__once_proxy) #27 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #31
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !360
  store ptr null, ptr %i.c, align 8, !tbaa !360
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL49initializeAMDGPUNextUseAnalysisLegacyPassPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #3 {
bb.a:
  tail call void @_ZN4llvm40initializeMachineLoopInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #27
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29 ; 9 uses
  store ptr @.str.25, ptr %i.a, align 8, !tbaa !416
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 17, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !259
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.31, ptr %i.b, align 8, !tbaa !416
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 24, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !259
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN4llvm31AMDGPUNextUseAnalysisLegacyPass2IDE, ptr %i.c, align 8, !tbaa !418
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !419
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 1, ptr %i.e, align 1, !tbaa !420
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorINS_31AMDGPUNextUseAnalysisLegacyPassEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !421
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN4llvm37createAMDGPUNextUseAnalysisLegacyPassEv() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 2 uses
  tail call void @_ZN4llvm31AMDGPUNextUseAnalysisLegacyPassC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #27
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm25AMDGPUNextUseAnalysisPass3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::AMDGPUNextUseAnalysis") align 8 %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_15MachineFunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull @_ZN4llvm19MachineLoopAnalysis3KeyE, ptr noundef nonnull align 8 dereferenceable(1065) %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @_ZN4llvm21AMDGPUNextUseAnalysisC1EPKNS_15MachineFunctionEPKNS_15MachineLoopInfoE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %2, ptr noundef nonnull %i.b) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm38AMDGPUNextUseAnalysisPrinterLegacyPassC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((0, 28), (32, 56)) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !394
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4llvm38AMDGPUNextUseAnalysisPrinterLegacyPass2IDE, ptr %i.b, align 8, !tbaa !395
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.c, align 8, !tbaa !396
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN4llvm38AMDGPUNextUseAnalysisPrinterLegacyPassE, i64 16), ptr %0, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef { ptr, i64 } @_ZNK4llvm38AMDGPUNextUseAnalysisPrinterLegacyPass11getPassNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.26, i64 32 }
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm38AMDGPUNextUseAnalysisPrinterLegacyPass20runOnMachineFunctionERNS_15MachineFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::TimerGroup", align 8  ; 6 uses
  %3 = alloca %"class.llvm::Timer", align 8       ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN4llvm10TimerGroupC1ENS_9StringRefES1_b(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr nonnull @.str.27, i64 29, ptr nonnull @.str.28, i64 37, i1 noundef zeroext false) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %3, i8 0, i64 80, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !422
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 0, ptr %i.c, align 8, !tbaa !201
  store i8 0, ptr %i.b, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !422
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 0, ptr %i.f, align 8, !tbaa !201
  store i8 0, ptr %i.e, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i8 0, ptr %i.g, align 8, !tbaa !429
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 145
  store i8 0, ptr %i.h, align 1, !tbaa !430
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  call void @_ZN4llvm5Timer4initENS_9StringRefES1_RNS_10TimerGroupE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr nonnull @.str.29, i64 4, ptr nonnull @.str.30, i64 32, ptr noundef nonnull align 8 dereferenceable(120) %2) #27
  call void @_ZN4llvm5Timer10startTimerEv(ptr noundef nonnull align 8 dereferenceable(176) %3) #27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !399  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.l, %i.n
  call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !402  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.o, @_ZN4llvm24LiveIntervalsWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %i.l, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.p, %i.n
  call void @llvm.assume(i1 %.not11.i.i.i)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !402
  %.not.i.i.i = icmp eq ptr %i.q, @_ZN4llvm24LiveIntervalsWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.l, %bb.a ], [ %i.p, %.lr.ph.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %.not.i3.i.i6 = icmp eq ptr %i.o, @_ZN4llvm31AMDGPUNextUseAnalysisLegacyPass2IDE
  br i1 %.not.i3.i.i6, label %_ZNK4llvm4Pass11getAnalysisINS_31AMDGPUNextUseAnalysisLegacyPassEEERT_v.exit, label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit, %.lr.ph.i.i.i7
  %.sroa.08.015.i4.i.i8 = phi ptr [ %i.t, %.lr.ph.i.i.i7 ], [ %i.l, %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i8, i64 16 ; 4 uses
  %.not11.i.i.i9 = icmp ne ptr %i.t, %i.n
  call void @llvm.assume(i1 %.not11.i.i.i9)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %.not.i.i.i10 = icmp eq ptr %i.u, @_ZN4llvm31AMDGPUNextUseAnalysisLegacyPass2IDE
  br i1 %.not.i.i.i10, label %_ZNK4llvm4Pass11getAnalysisINS_31AMDGPUNextUseAnalysisLegacyPassEEERT_v.exit, label %.lr.ph.i.i.i7

_ZNK4llvm4Pass11getAnalysisINS_31AMDGPUNextUseAnalysisLegacyPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i7, %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i11 = phi ptr [ %i.l, %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit ], [ %i.t, %.lr.ph.i.i.i7 ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i11, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !403  ; 2 uses
  %i.aa = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #27
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !362
  call fastcc void @_ZN12_GLOBAL__N_111printAsJsonERN4llvm11raw_ostreamERNS0_10TimerGroupERNS0_5TimerERKNS0_15MachineFunctionERKNS0_21AMDGPUNextUseAnalysisERKNS0_25AMDGPUNextUseAnalysisImplERKNS0_13LiveIntervalsE(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(232) %i.ab, ptr noundef nonnull align 8 dereferenceable(424) %i.v)
  call void @_ZN4llvm5TimerD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZN4llvm10TimerGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i1 false
}

declare void @_ZN4llvm10TimerGroupC1ENS_9StringRefES1_b(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64, ptr, i64, i1 noundef zeroext) unnamed_addr #4

declare void @_ZN4llvm5Timer10startTimerEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111printAsJsonERN4llvm11raw_ostreamERNS0_10TimerGroupERNS0_5TimerERKNS0_15MachineFunctionERKNS0_21AMDGPUNextUseAnalysisERKNS0_25AMDGPUNextUseAnalysisImplERKNS0_13LiveIntervalsE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef nonnull align 8 dereferenceable(1065) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(232) %5, ptr noundef nonnull align 8 dereferenceable(424) %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %class.anon.694, align 8            ; 11 uses
  %9 = alloca %"class.std::error_code", align 8   ; 5 uses
  %10 = alloca %"class.llvm::ToolOutputFile", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.b, ptr %7, align 8, !tbaa !422
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_125DumpNextUseDistanceAsJsonB5cxx11E, i64 120), align 8, !tbaa !58 ; 2 uses
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_125DumpNextUseDistanceAsJsonB5cxx11E, i64 128), align 8, !tbaa !201 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.d, ptr %i.a, align 8, !tbaa !259
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #27 ; 2 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !58
  %i.g = load i64, ptr %i.a, align 8, !tbaa !259
  store i64 %i.g, ptr %i.b, align 8, !tbaa !59
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.c, align 1, !tbaa !59
  store i8 %i.i, ptr %i.h, align 1, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.c, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.j = load i64, ptr %i.a, align 8, !tbaa !259  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !201
  %i.l = load ptr, ptr %7, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr %3, ptr %8, align 8, !tbaa !431
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %4, ptr %i.n, align 8, !tbaa !403
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %5, ptr %i.o, align 8, !tbaa !362
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %6, ptr %i.p, align 8, !tbaa !433
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %2, ptr %i.q, align 8, !tbaa !635
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %1, ptr %i.r, align 8, !tbaa !636
  %i.s = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_125DumpNextUseDistanceAsJsonB5cxx11E, i64 8), align 8, !tbaa !212
  %.not = icmp eq i16 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call fastcc void @"_ZZN12_GLOBAL__N_111printAsJsonERN4llvm11raw_ostreamERNS0_10TimerGroupERNS0_5TimerERKNS0_15MachineFunctionERKNS0_21AMDGPUNextUseAnalysisERKNS0_25AMDGPUNextUseAnalysisImplERKNS0_13LiveIntervalsEENK3$_0clES2_"(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.t = load i64, ptr %i.k, align 8, !tbaa !201  ; 2 uses
  switch i64 %i.t, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge [
    i64 0, label %bb.g
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ]

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge: ; preds = %bb.f
  %.pre = load ptr, ptr %7, align 8, !tbaa !58
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f
  %i.u = load ptr, ptr %7, align 8, !tbaa !58     ; 2 uses
  %lhsc = load i8, ptr %i.u, align 1
  %i.v = icmp eq i8 %lhsc, 45
  br i1 %i.v, label %bb.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.g:                                             ; preds = %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.w = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #27
  call fastcc void @"_ZZN12_GLOBAL__N_111printAsJsonERN4llvm11raw_ostreamERNS0_10TimerGroupERNS0_5TimerERKNS0_15MachineFunctionERKNS0_21AMDGPUNextUseAnalysisERKNS0_25AMDGPUNextUseAnalysisImplERKNS0_13LiveIntervalsEENK3$_0clES2_"(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %i.w)
  br label %bb.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.x = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge ], [ %i.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store i32 0, ptr %9, align 8, !tbaa !639
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #32
  store ptr %i.z, ptr %i.y, align 8, !tbaa !640
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @_ZN4llvm14ToolOutputFileC1ENS_9StringRefERSt10error_codeNS_3sys2fs9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(152) %10, ptr %i.x, i64 %i.t, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 0) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !649
  call fastcc void @"_ZZN12_GLOBAL__N_111printAsJsonERN4llvm11raw_ostreamERNS0_10TimerGroupERNS0_5TimerERKNS0_15MachineFunctionERKNS0_21AMDGPUNextUseAnalysisERKNS0_25AMDGPUNextUseAnalysisImplERKNS0_13LiveIntervalsEENK3$_0clES2_"(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 1, ptr %i.ac, align 8, !tbaa !650
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 136 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !651, !range !49, !noundef !50
  %i.af = trunc nuw i8 %i.ae to i1
  store i8 0, ptr %i.ad, align 8, !tbaa !651
  br i1 %i.af, label %bb.h, label %_ZN4llvm14ToolOutputFileD2Ev.exit

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 40
  call void @_ZN4llvm14raw_fd_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(104) %i.ag) #27
  br label %_ZN4llvm14ToolOutputFileD2Ev.exit

_ZN4llvm14ToolOutputFileD2Ev.exit:                ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.h
  call void @_ZN4llvm16CleanupInstallerD1Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(152) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %_ZN4llvm14ToolOutputFileD2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.ah = load ptr, ptr %7, align 8, !tbaa !58    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.b
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !59
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void
}

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm5TimerD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN4llvm10TimerGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120)) unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm38AMDGPUNextUseAnalysisPrinterLegacyPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm26MachineLoopInfoWrapperPass2IDE) #27 ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm24LiveIntervalsWrapperPass2IDE) #27 ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm31AMDGPUNextUseAnalysisLegacyPass2IDE) #27 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 1, ptr %i.d, align 8, !tbaa !413
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm52initializeAMDGPUNextUseAnalysisPrinterLegacyPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %class.anon.792, align 8            ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr @_ZL56initializeAMDGPUNextUseAnalysisPrinterLegacyPassPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !360
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !415
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !360
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !360
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL56InitializeAMDGPUNextUseAnalysisPrinterLegacyPassPassFlag, ptr noundef nonnull @__once_proxy) #27 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #31
  unreachable

end_hunk_0
