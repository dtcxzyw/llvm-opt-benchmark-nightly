Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPURegBankSelect?download=true
inline.NumInlined: 602
inline.NumDeleted: 409
begin_hunk_0_@_ZN4llvm33initializeAMDGPURegBankSelectPassERNS_12PassRegistryE:bb.a
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !9
  store ptr null, ptr %i.c, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL37initializeAMDGPURegBankSelectPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 {
bb.a:
  tail call void @_ZN4llvm30initializeTargetPassConfigPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #17
  tail call void @_ZN4llvm41initializeGISelCSEAnalysisWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #17
  tail call void @_ZN4llvm43initializeMachineUniformityAnalysisPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #17
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19 ; 9 uses
  store ptr @.str, ptr %i.a, align 8, !tbaa !68
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 27, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.1, ptr %i.b, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 20, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN12_GLOBAL__N_119AMDGPURegBankSelect2IDE, ptr %i.c, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 0, ptr %i.e, align 1, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_119AMDGPURegBankSelectEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !75
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4llvm29createAMDGPURegBankSelectPassEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_119AMDGPURegBankSelect2IDE, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN12_GLOBAL__N_119AMDGPURegBankSelectE, i64 16), ptr %i.a, align 8, !tbaa !21
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare void @_ZN4llvm30initializeTargetPassConfigPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

declare void @_ZN4llvm41initializeGISelCSEAnalysisWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

declare void @_ZN4llvm43initializeMachineUniformityAnalysisPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_119AMDGPURegBankSelectEEEPNS_4PassEv() #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_119AMDGPURegBankSelect2IDE, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN12_GLOBAL__N_119AMDGPURegBankSelectE, i64 16), ptr %i.a, align 8, !tbaa !21
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_119AMDGPURegBankSelectD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK12_GLOBAL__N_119AMDGPURegBankSelect11getPassNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str, i64 27 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.c(ptr noundef nonnull align 8 dereferenceable(56) %0) #17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.d, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i64 %i.h(ptr noundef nonnull align 8 dereferenceable(56) %0) #17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %i.j, align 8
  %i.k = load ptr, ptr %0, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 %i.m(ptr noundef nonnull align 8 dereferenceable(56) %0) #17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.n, ptr %i.o, align 8
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #3

declare noundef ptr @_ZNK4llvm19MachineFunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #3

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef i32 @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_119AMDGPURegBankSelect16getAnalysisUsageERN4llvm13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm16TargetPassConfig2IDE) #17 ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE) #17 ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm29MachineUniformityAnalysisPass2IDE) #17 ; 0 uses
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #17
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_119AMDGPURegBankSelect20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %3 = alloca %"class.llvm::SrcOp", align 8       ; 5 uses
  %4 = alloca %"class.llvm::LLT", align 8         ; 4 uses
  %5 = alloca %"class.llvm::LLT", align 8         ; 4 uses
  %6 = alloca %"class.llvm::DstOp", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SrcOp", align 8       ; 5 uses
  %8 = alloca %"class.llvm::LLT", align 8         ; 4 uses
  %9 = alloca %"class.llvm::LLT", align 8         ; 4 uses
  %10 = alloca %"class.std::unique_ptr.87", align 8 ; 3 uses
  %11 = alloca %"class.llvm::GISelObserverWrapper", align 8 ; 15 uses
  %12 = alloca %"class.llvm::CSEMIRBuilder", align 8 ; 10 uses
  %13 = alloca %"class.llvm::RAIIDelegateInstaller", align 8 ; 4 uses
  %14 = alloca %"class.llvm::RAIIMFObserverInstaller", align 8 ; 4 uses
  %15 = alloca %"class.llvm::AMDGPU::IntrinsicLaneMaskAnalyzer", align 8 ; 7 uses
  %16 = alloca %class.RegBankSelectHelper, align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.b = load i64, ptr %i.a, align 8, !tbaa !81
  %i.c = and i64 %i.b, 16
  %.not135 = icmp eq i64 %i.c, 0                  ; 2 uses
  br i1 %.not135, label %bb.b, label %bb.ay

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83   ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.f, %i.h
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !86   ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.i, @_ZN4llvm16TargetPassConfig2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.f, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.j, %i.h
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86
  %.not.i.i.i = icmp eq ptr %i.k, @_ZN4llvm16TargetPassConfig2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.b
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.f, %bb.b ], [ %i.j, %.lr.ph.i.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i3.i.i75 = icmp eq ptr %i.i, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %.not.i3.i.i75, label %_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i76

.lr.ph.i.i.i76:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, %.lr.ph.i.i.i76
  %.sroa.08.015.i4.i.i77 = phi ptr [ %i.n, %.lr.ph.i.i.i76 ], [ %i.f, %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i77, i64 16 ; 4 uses
  %.not11.i.i.i78 = icmp ne ptr %i.n, %i.h
  tail call void @llvm.assume(i1 %.not11.i.i.i78)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86
  %.not.i.i.i79 = icmp eq ptr %i.o, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %.not.i.i.i79, label %_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i76

_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i76, %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i80 = phi ptr [ %i.f, %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit ], [ %i.n, %.lr.ph.i.i.i76 ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i80, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.87") align 8 %10, ptr noundef nonnull align 8 dereferenceable(134) %i.m) #17
  %i.v = call noundef nonnull align 8 dereferenceable(337) ptr @_ZN4llvm23GISelCSEAnalysisWrapper3getESt10unique_ptrINS_13CSEConfigBaseESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(353) %i.r, ptr nofree noundef nonnull align 8 dereferenceable(8) %10) #17 ; 2 uses
  %i.w = load ptr, ptr %10, align 8, !tbaa !88    ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZN4llvm20GISelObserverWrapper11addObserverEPNS_19GISelChangeObserverE.exit, label %_ZNKSt14default_deleteIN4llvm13CSEConfigBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm13CSEConfigBaseEEclEPS1_.exit.i: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #17, !inline_history !76
  br label %_ZN4llvm20GISelObserverWrapper11addObserverEPNS_19GISelChangeObserverE.exit

_ZN4llvm20GISelObserverWrapper11addObserverEPNS_19GISelChangeObserverE.exit: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit, %_ZNKSt14default_deleteIN4llvm13CSEConfigBaseEEclEPS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 4, ptr %i.ad, align 8, !tbaa !89
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i32 0, ptr %i.ae, align 4, !tbaa !90
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store i8 1, ptr %i.af, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm20GISelObserverWrapperE, i64 16), ptr %11, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm20GISelObserverWrapperE, i64 112), ptr %i.aa, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 3 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 84
  store i32 4, ptr %i.aj, align 4, !tbaa !91
  store ptr %i.v, ptr %i.ah, align 8
  store i32 1, ptr %i.ai, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm16MachineIRBuilderE, i64 16), ptr %12, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ak, i8 0, i64 88, i1 false)
  call void @_ZN4llvm16MachineIRBuilder5setMFERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 8 dereferenceable(1065) %1) #17
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm13CSEMIRBuilderE, i64 16), ptr %12, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 88
  store ptr %i.v, ptr %i.al, align 8, !tbaa !102
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 80
  store ptr %i.aa, ptr %i.am, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @_ZN4llvm21RAIIDelegateInstallerC1ERNS_15MachineFunctionEPNS1_8DelegateE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @_ZN4llvm23RAIIMFObserverInstallerC1ERNS_15MachineFunctionERNS_19GISelChangeObserverE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.aa) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @_ZN4llvm6AMDGPU25IntrinsicLaneMaskAnalyzerC1ERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(1065) %1) #17
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !83 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !83 ; 2 uses
  %.not1114.i.i.i81 = icmp ne ptr %i.ao, %i.aq
  call void @llvm.assume(i1 %.not1114.i.i.i81)
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !86
  %.not.i3.i.i82 = icmp eq ptr %i.ar, @_ZN4llvm29MachineUniformityAnalysisPass2IDE
  br i1 %.not.i3.i.i82, label %_ZNK4llvm4Pass11getAnalysisINS_29MachineUniformityAnalysisPassEEERT_v.exit, label %.lr.ph.i.i.i83

.lr.ph.i.i.i83:                                   ; preds = %_ZN4llvm20GISelObserverWrapper11addObserverEPNS_19GISelChangeObserverE.exit, %.lr.ph.i.i.i83
  %.sroa.08.015.i4.i.i84 = phi ptr [ %i.as, %.lr.ph.i.i.i83 ], [ %i.ao, %_ZN4llvm20GISelObserverWrapper11addObserverEPNS_19GISelChangeObserverE.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i84, i64 16 ; 4 uses
  %.not11.i.i.i85 = icmp ne ptr %i.as, %i.aq
  call void @llvm.assume(i1 %.not11.i.i.i85)
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !86
  %.not.i.i.i86 = icmp eq ptr %i.at, @_ZN4llvm29MachineUniformityAnalysisPass2IDE
  br i1 %.not.i.i.i86, label %_ZNK4llvm4Pass11getAnalysisINS_29MachineUniformityAnalysisPassEEERT_v.exit, label %.lr.ph.i.i.i83

_ZNK4llvm4Pass11getAnalysisINS_29MachineUniformityAnalysisPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i83, %_ZN4llvm20GISelObserverWrapper11addObserverEPNS_19GISelChangeObserverE.exit
  %.sroa.08.015.i.lcssa.i.i87 = phi ptr [ %i.ao, %_ZN4llvm20GISelObserverWrapper11addObserverEPNS_19GISelChangeObserverE.exit ], [ %i.as, %.lr.ph.i.i.i83 ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i87, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !104 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !216, !nonnull !34, !align !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1024
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 432
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !218
  store ptr %12, ptr %16, align 8, !tbaa !219
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 9 uses
  store ptr %i.ay, ptr %i.be, align 8, !tbaa !220
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %15, ptr %i.bf, align 8, !tbaa !221
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  store ptr %i.aw, ptr %i.bg, align 8, !tbaa !222
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  store ptr %i.bb, ptr %i.bh, align 8, !tbaa !223
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !236 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !41
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !237
  %i.bn = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !41
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !238
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !239
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %.sroa.0132.0169 = load ptr, ptr %i.bt, align 8, !tbaa !240 ; 2 uses
  %.not136170 = icmp eq ptr %.sroa.0132.0169, %i.bu
  br i1 %.not136170, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %_ZNK4llvm4Pass11getAnalysisINS_29MachineUniformityAnalysisPassEEERT_v.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.g

._crit_edge173:                                   ; preds = %._crit_edge168, %_ZNK4llvm4Pass11getAnalysisINS_29MachineUniformityAnalysisPassEEERT_v.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.ca = load i32, ptr %15, align 8
  %i.cb = and i32 %i.ca, 1
  %.not.i.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4llvm6AMDGPU25IntrinsicLaneMaskAnalyzerD2Ev.exit

bb.c:                                             ; preds = %._crit_edge173
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !43 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %_ZN4llvm6AMDGPU25IntrinsicLaneMaskAnalyzerD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !43
  %i.ch = zext i32 %i.cd to i64                   ; 2 uses
  %i.ci = add nuw nsw i64 %i.ch, 31
  %i.cj = lshr i64 %i.ci, 5
  %i.ck = add nuw nsw i64 %i.cj, %i.ch
  %i.cl = shl nuw nsw i64 %i.ck, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cg, i64 noundef %i.cl, i64 noundef 4) #17
  br label %_ZN4llvm6AMDGPU25IntrinsicLaneMaskAnalyzerD2Ev.exit

_ZN4llvm6AMDGPU25IntrinsicLaneMaskAnalyzerD2Ev.exit: ; preds = %._crit_edge173, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @_ZN4llvm23RAIIMFObserverInstallerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @_ZN4llvm21RAIIDelegateInstallerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm20GISelObserverWrapperE, i64 16), ptr %11, align 8, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm20GISelObserverWrapperE, i64 112), ptr %i.aa, align 8, !tbaa !21
  %i.cm = load ptr, ptr %i.ag, align 8, !tbaa !27 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.ah
  br i1 %i.cn, label %_ZN4llvm11SmallVectorIPNS_19GISelChangeObserverELj4EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm6AMDGPU25IntrinsicLaneMaskAnalyzerD2Ev.exit
  call void @free(ptr noundef %i.cm) #17, !inline_history !44
  br label %_ZN4llvm11SmallVectorIPNS_19GISelChangeObserverELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_19GISelChangeObserverELj4EED2Ev.exit.i: ; preds = %bb.e, %_ZN4llvm6AMDGPU25IntrinsicLaneMaskAnalyzerD2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm19GISelChangeObserverE, i64 16), ptr %i.aa, align 8, !tbaa !21
  %i.co = load i8, ptr %i.af, align 8, !tbaa !25, !range !45, !noundef !34
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %_ZN4llvm20GISelObserverWrapperD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_19GISelChangeObserverELj4EED2Ev.exit.i
  %i.cq = load ptr, ptr %i.ab, align 8, !tbaa !24
  call void @free(ptr noundef %i.cq) #17, !inline_history !46
  br label %_ZN4llvm20GISelObserverWrapperD2Ev.exit

_ZN4llvm20GISelObserverWrapperD2Ev.exit:          ; preds = %_ZN4llvm11SmallVectorIPNS_19GISelChangeObserverELj4EED2Ev.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.ay

bb.g:                                             ; preds = %.lr.ph172, %._crit_edge168
  %.sroa.0132.0171 = phi ptr [ %.sroa.0132.0169, %.lr.ph172 ], [ %.sroa.0132.0, %._crit_edge168 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0132.0171, i64 56
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0132.0171, i64 48 ; 2 uses
  %.sroa.0129.0163 = load ptr, ptr %i.cr, align 8, !tbaa !241 ; 2 uses
  %.not137164 = icmp eq ptr %.sroa.0129.0163, %i.cs
  br i1 %.not137164, label %._crit_edge168, label %.lr.ph167

._crit_edge168:                                   ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %bb.g
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0132.0171, i64 8
  %.sroa.0132.0 = load ptr, ptr %i.ct, align 8, !tbaa !240 ; 2 uses
  %.not136 = icmp eq ptr %.sroa.0132.0, %i.bu
  br i1 %.not136, label %._crit_edge173, label %bb.g

.lr.ph167:                                        ; preds = %bb.g, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit
  %.sroa.0129.0165 = phi ptr [ %.sroa.0129.0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.0129.0163, %bb.g ] ; 18 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0129.0165, i64 52 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !60
  %i.cw = icmp eq i32 %i.cv, 20
  br i1 %i.cw, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.lr.ph167
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0129.0165, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !61 ; 2 uses
  %.val = load i32, ptr %i.cy, align 8
end_hunk_0
