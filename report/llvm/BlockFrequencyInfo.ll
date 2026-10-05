Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BlockFrequencyInfo?download=true
inline.NumInlined: 4014
inline.NumDeleted: 2099
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm14printBlockFreqERKNS_18BlockFrequencyInfoENS_14BlockFrequencyE:_ZN4llvm9PrintableC2ESt8functionIFvRNS_11raw_ostreamEEE.exit
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14printBlockFreqERKNS_18BlockFrequencyInfoERKNS_10BasicBlockE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Printable") align 8 captures(none) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %"struct.llvm::BlockFrequencyInfoImplBase::BlockNode", align 4 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !46     ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK4llvm18BlockFrequencyInfo12getBlockFreqEPKNS_10BasicBlockE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !147  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !52
  %i.f = icmp ugt i32 %i.e, %i.c
  br i1 %i.f, label %bb.c, label %_ZNK4llvm22BlockFrequencyInfoImplINS_10BasicBlockEE12getBlockFreqEPKS1_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = zext i32 %i.c to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g
  %i.k = load i32, ptr %i.j, align 4, !tbaa !148
  br label %_ZNK4llvm22BlockFrequencyInfoImplINS_10BasicBlockEE12getBlockFreqEPKS1_.exit.i

_ZNK4llvm22BlockFrequencyInfoImplINS_10BasicBlockEE12getBlockFreqEPKS1_.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i = phi i32 [ %i.k, %bb.c ], [ -1, %bb.b ]
  store i32 %.sroa.0.0.i.i.i, ptr %3, align 4
  %i.l = call i64 @_ZNK4llvm26BlockFrequencyInfoImplBase12getBlockFreqERKNS0_9BlockNodeE(ptr noundef nonnull align 8 dereferenceable(180) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNK4llvm18BlockFrequencyInfo12getBlockFreqEPKNS_10BasicBlockE.exit

_ZNK4llvm18BlockFrequencyInfo12getBlockFreqEPKNS_10BasicBlockE.exit: ; preds = %bb.a, %_ZNK4llvm22BlockFrequencyInfoImplINS_10BasicBlockEE12getBlockFreqEPKS1_.exit.i
  %.sroa.0.0.i = phi i64 [ %i.l, %_ZNK4llvm22BlockFrequencyInfoImplINS_10BasicBlockEE12getBlockFreqEPKS1_.exit.i ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm11raw_ostreamEEZNS0_14printBlockFreqERKNS0_18BlockFrequencyInfoENS0_14BlockFrequencyEE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.m, align 8, !tbaa !202, !alias.scope !464
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %0, align 8, !alias.scope !464
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !41, !alias.scope !464
  store ptr @"_ZNSt17_Function_handlerIFvRN4llvm11raw_ostreamEEZNS0_14printBlockFreqERKNS0_18BlockFrequencyInfoENS0_14BlockFrequencyEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.n, align 8, !tbaa !25, !alias.scope !464
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm43initializeBlockFrequencyInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %class.anon.455, align 8            ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store ptr @_ZL47initializeBlockFrequencyInfoWrapperPassPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !465
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !69
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !69
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL47InitializeBlockFrequencyInfoWrapperPassPassFlag, ptr noundef nonnull @__once_proxy) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #27
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !69
  store ptr null, ptr %i.c, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL47initializeBlockFrequencyInfoWrapperPassPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 {
bb.a:
  tail call void @_ZN4llvm46initializeBranchProbabilityInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #24
  tail call void @_ZN4llvm33initializeLoopInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #24
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 9 uses
  store ptr @.str.45, ptr %i.a, align 8, !tbaa !204
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 24, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !192
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.46, ptr %i.b, align 8, !tbaa !204
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 10, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !192
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN4llvm29BlockFrequencyInfoWrapperPass2IDE, ptr %i.c, align 8, !tbaa !467
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 1, ptr %i.d, align 8, !tbaa !468
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 1, ptr %i.e, align 1, !tbaa !469
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorINS_29BlockFrequencyInfoWrapperPassEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !470
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm29BlockFrequencyInfoWrapperPassC2Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 28)) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !209
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4llvm29BlockFrequencyInfoWrapperPass2IDE, ptr %i.b, align 8, !tbaa !471
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.c, align 8, !tbaa !472
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4llvm29BlockFrequencyInfoWrapperPassE, i64 16), ptr %0, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4llvm18BlockFrequencyInfoC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm29BlockFrequencyInfoWrapperPassD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4llvm29BlockFrequencyInfoWrapperPassE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4llvm18BlockFrequencyInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #24
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) #24
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm29BlockFrequencyInfoWrapperPassD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4llvm29BlockFrequencyInfoWrapperPassD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #25
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm29BlockFrequencyInfoWrapperPass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree readnone captures(none) %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK4llvm18BlockFrequencyInfo5printERNS_11raw_ostreamE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(180) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1) #24, !inline_history !67 ; 0 uses
  br label %_ZNK4llvm18BlockFrequencyInfo5printERNS_11raw_ostreamE.exit

_ZNK4llvm18BlockFrequencyInfo5printERNS_11raw_ostreamE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm29BlockFrequencyInfoWrapperPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm32BranchProbabilityInfoWrapperPass2IDE) #24 ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm19LoopInfoWrapperPass2IDE) #24 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 1, ptr %i.c, align 8, !tbaa !482
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm29BlockFrequencyInfoWrapperPass13releaseMemoryEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !46
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4llvm18BlockFrequencyInfo13releaseMemoryEv.exit, label %_ZNKSt14default_deleteIN4llvm22BlockFrequencyInfoImplINS0_10BasicBlockEEEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm22BlockFrequencyInfoImplINS0_10BasicBlockEEEEclEPS3_.exit.i.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(180) %i.b) #24, !inline_history !2
  br label %_ZN4llvm18BlockFrequencyInfo13releaseMemoryEv.exit

_ZN4llvm18BlockFrequencyInfo13releaseMemoryEv.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm22BlockFrequencyInfoImplINS0_10BasicBlockEEEEclEPS3_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm29BlockFrequencyInfoWrapperPass13runOnFunctionERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !209  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !484  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !484  ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !487  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm32BranchProbabilityInfoWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_32BranchProbabilityInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !487
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm32BranchProbabilityInfoWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_32BranchProbabilityInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_32BranchProbabilityInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %i.g, %.lr.ph.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i3.i.i5 = icmp eq ptr %i.f, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %.not.i3.i.i5, label %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %_ZNK4llvm4Pass11getAnalysisINS_32BranchProbabilityInfoWrapperPassEEERT_v.exit, %.lr.ph.i.i.i6
  %.sroa.08.015.i4.i.i7 = phi ptr [ %i.k, %.lr.ph.i.i.i6 ], [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_32BranchProbabilityInfoWrapperPassEEERT_v.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i7, i64 16 ; 4 uses
  %.not11.i.i.i8 = icmp ne ptr %i.k, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i8)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !487
  %.not.i.i.i9 = icmp eq ptr %i.l, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %.not.i.i.i9, label %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6

_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i6, %_ZNK4llvm4Pass11getAnalysisINS_32BranchProbabilityInfoWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i10 = phi ptr [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_32BranchProbabilityInfoWrapperPassEEERT_v.exit ], [ %i.k, %.lr.ph.i.i.i6 ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i10, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4llvm18BlockFrequencyInfo9calculateERKNS_8FunctionERKNS_21BranchProbabilityInfoERKNS_8LoopInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(140) %i.m, ptr noundef nonnull align 8 dereferenceable(184) %i.p)
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm22BlockFrequencyAnalysis3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::BlockFrequencyInfo") align 8 %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull @_ZN4llvm25BranchProbabilityAnalysis3KeyE, ptr noundef nonnull align 8 dereferenceable(140) %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull @_ZN4llvm12LoopAnalysis3KeyE, ptr noundef nonnull align 8 dereferenceable(140) %2) #24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @_ZN4llvm18BlockFrequencyInfoC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  tail call void @_ZN4llvm18BlockFrequencyInfo9calculateERKNS_8FunctionERKNS_21BranchProbabilityInfoERKNS_8LoopInfoE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(140) %i.b, ptr noundef nonnull align 8 dereferenceable(184) %i.d)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm25BlockFrequencyPrinterPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !493, !nonnull !34, !align !211 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !199
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !200  ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 46
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull @.str.32, i64 noundef 46) #24 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !200
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.e, ptr noundef nonnull align 1 dereferenceable(46) @.str.32, i64 46, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !200
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 46 ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !200
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %.pre, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.a, %bb.c ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !199
  %i.p = icmp eq ptr %i.o, %i.m
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef nonnull @.str.33, i64 noundef 1) #24
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  store i8 39, ptr %i.m, align 1
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !200
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %i.r, align 8, !tbaa !200
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit6

_ZN4llvm11raw_ostreamlsEPKc.exit6:                ; preds = %bb.d, %bb.e
  %.0.i.i5 = phi ptr [ %i.q, %bb.d ], [ %.0.i.i, %bb.e ] ; 5 uses
  %i.u = tail call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #24 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0        ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.u, 1        ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i5, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !199
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i5, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !200 ; 3 uses
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ugt i64 %i.w, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit6
  %i.af = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i5, ptr noundef %i.v, i64 noundef %i.w) #24 ; 2 uses
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.pre15 = load ptr, ptr %.phi.trans.insert14, align 8, !tbaa !200
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit6
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.v, i64 %i.w, i1 false)
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !200
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.w ; 2 uses
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !200
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.f, %bb.g, %bb.h
  %i.ai = phi ptr [ %.pre15, %bb.f ], [ %i.ah, %bb.h ], [ %i.aa, %bb.g ] ; 2 uses
  %.0.i = phi ptr [ %i.af, %bb.f ], [ %.0.i.i5, %bb.h ], [ %.0.i.i5, %bb.g ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !199
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, 2
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ap = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.34, i64 noundef 2) #24 ; 2 uses
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre17 = load ptr, ptr %.phi.trans.insert16, align 8, !tbaa !200
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  store i16 14887, ptr %i.ai, align 1
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !200
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !200
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit9

_ZN4llvm11raw_ostreamlsEPKc.exit9:                ; preds = %bb.i, %bb.j
  %i.at = phi ptr [ %.pre17, %bb.i ], [ %i.as, %bb.j ] ; 2 uses
  %.0.i.i8 = phi ptr [ %i.ap, %bb.i ], [ %.0.i, %bb.j ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !199
  %i.aw = icmp eq ptr %i.av, %i.at
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit9
  %i.ax = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i8, ptr noundef nonnull @.str.35, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit9
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 32 ; 2 uses
  store i8 10, ptr %i.at, align 1
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !200
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !200
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

_ZN4llvm11raw_ostreamlsEPKc.exit12:               ; preds = %bb.k, %bb.l
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull @_ZN4llvm22BlockFrequencyAnalysis3KeyE, ptr noundef nonnull align 8 dereferenceable(140) %2) #24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !46 ; 3 uses
  %.not.i13 = icmp eq ptr %i.bd, null
  br i1 %.not.i13, label %_ZNK4llvm18BlockFrequencyInfo5printERNS_11raw_ostreamE.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12
  %i.be = load ptr, ptr %1, align 8, !tbaa !493, !nonnull !34, !align !211
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(180) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.be) #24, !inline_history !67 ; 0 uses
  br label %_ZNK4llvm18BlockFrequencyInfo5printERNS_11raw_ostreamE.exit

_ZNK4llvm18BlockFrequencyInfo5printERNS_11raw_ostreamE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit12, %bb.m
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i, ptr %0, align 8, !tbaa !35, !alias.scope !494
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.bj, align 8, !tbaa !212, !alias.scope !494
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.bl, align 8, !tbaa !32, !alias.scope !494
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !35, !alias.scope !494
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.bo, align 8, !tbaa !212, !alias.scope !494
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.bp, align 4, !tbaa !68, !alias.scope !494
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.bq, align 8, !tbaa !32, !alias.scope !494
  store i32 1, ptr %i.bk, align 4, !tbaa !68, !alias.scope !494, !noalias !495
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i, align 8, !tbaa !69, !alias.scope !494, !noalias !495
  ret void
}

declare { ptr, i64 } @_ZNK4llvm4Pass11getPassNameEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass16doInitializationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef ptr @_ZNK4llvm12FunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #7

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1) unnamed_addr #7
end_hunk_0
