Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StraightLineStrengthReduce?download=true
inline.NumInlined: 3795
inline.NumDeleted: 2083
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefEPNS_12DebugCounter11CounterInfoEELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESC_IJEEEEERS6_DpOT_:bb.a
bb.c:                                             ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.k = load i32, ptr %i.d, align 8, !tbaa !131
  %i.l = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %i.d, align 8, !tbaa !131
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefEPNS_12DebugCounter11CounterInfoEELb1EE9push_backERKS6_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefEPNS_12DebugCounter11CounterInfoEELb1EE9push_backERKS6_.exit: ; preds = %bb.b, %bb.c
  %i.m = phi i32 [ %.pre, %bb.b ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.n = load ptr, ptr %0, align 8, !tbaa !27
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -24
  ret ptr %i.q
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefEPNS_12DebugCounter11CounterInfoEELb1EE15growAndPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.164", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !131
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #21
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  %i.g = load i32, ptr %i.a, align 8, !tbaa !131
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !131
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZN4llvm38initializeDominatorTreeWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #5

declare void @_ZN4llvm40initializeScalarEvolutionWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #5

declare void @_ZN4llvm44initializeTargetTransformInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_136StraightLineStrengthReduceLegacyPassEEEPNS_4PassEv() #3 {
bb.a:
  %0 = alloca %class.anon.534, align 8            ; 5 uses
  %1 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_136StraightLineStrengthReduceLegacyPass2IDE, ptr %i.c, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12_GLOBAL__N_136StraightLineStrengthReduceLegacyPassE, i64 16), ptr %i.a, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.e, align 8, !tbaa !56
  %i.f = tail call noundef ptr @_ZN4llvm12PassRegistry15getPassRegistryEv() #21, !inline_history !1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %i.f, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #21
  store ptr @_ZL54initializeStraightLineStrengthReduceLegacyPassPassOnceRN4llvm12PassRegistryE, ptr %0, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !41
  %i.h = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %0, ptr %i.h, align 8, !tbaa !39
  %i.i = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.i, align 8, !tbaa !39
  %i.j = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL54InitializeStraightLineStrengthReduceLegacyPassPassFlag, ptr noundef nonnull @__once_proxy) #21, !inline_history !2 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_136StraightLineStrengthReduceLegacyPassC2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.j) #22, !inline_history !2
  unreachable

_ZN12_GLOBAL__N_136StraightLineStrengthReduceLegacyPassC2Ev.exit: ; preds = %bb.a
  store ptr null, ptr %i.h, align 8, !tbaa !39
  store ptr null, ptr %i.i, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm12PassRegistry15getPassRegistryEv() local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_136StraightLineStrengthReduceLegacyPassD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #24
  ret void
}

declare { ptr, i64 } @_ZNK4llvm4Pass11getPassNameEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_136StraightLineStrengthReduceLegacyPass16doInitializationERN4llvm6ModuleE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((32, 40)) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.b, align 8, !tbaa !56
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #5

declare noundef ptr @_ZNK4llvm12FunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #5

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1) unnamed_addr #5

declare noundef i32 @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_136StraightLineStrengthReduceLegacyPass16getAnalysisUsageERN4llvm13AnalysisUsageE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm24DominatorTreeWrapperPass2IDE) #21 ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm26ScalarEvolutionWrapperPass2IDE) #21 ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm30TargetTransformInfoWrapperPass2IDE) #21 ; 0 uses
  tail call void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161) %1) #21
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_136StraightLineStrengthReduceLegacyPass13runOnFunctionERN4llvm8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.(anonymous namespace)::StraightLineStrengthReduce", align 8 ; 14 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) #21
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !470  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !470  ; 2 uses
  %.not1114.i.i.i = icmp ne ptr %i.d, %i.f
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !473
  %.not.i3.i.i = icmp eq ptr %i.g, @_ZN4llvm30TargetTransformInfoWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_30TargetTransformInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.d, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.h, %i.f
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !473
  %.not.i.i.i = icmp eq ptr %i.i, @_ZN4llvm30TargetTransformInfoWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_30TargetTransformInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_30TargetTransformInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.b
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.d, %bb.b ], [ %i.h, %.lr.ph.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm30TargetTransformInfoWrapperPass6getTTIERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(140) %1) #21
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !470  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !470  ; 3 uses
  %.not1114.i.i.i8 = icmp ne ptr %i.n, %i.p
  tail call void @llvm.assume(i1 %.not1114.i.i.i8)
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !473  ; 2 uses
  %.not.i3.i.i9 = icmp eq ptr %i.q, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i9, label %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit.thread, label %.lr.ph.i.i.i10

_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit.thread: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_30TargetTransformInfoWrapperPassEEERT_v.exit
  %3 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i10:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_30TargetTransformInfoWrapperPassEEERT_v.exit, %.lr.ph.i.i.i10
  %.sroa.08.015.i4.i.i11 = phi ptr [ %i.r, %.lr.ph.i.i.i10 ], [ %i.n, %_ZNK4llvm4Pass11getAnalysisINS_30TargetTransformInfoWrapperPassEEERT_v.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i11, i64 16 ; 3 uses
  %.not11.i.i.i12 = icmp ne ptr %i.r, %i.p
  tail call void @llvm.assume(i1 %.not11.i.i.i12)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !473
  %.not.i.i.i13 = icmp eq ptr %i.s, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i13, label %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i10

_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i10
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i11, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %.not.i3.i.i16 = icmp eq ptr %i.q, @_ZN4llvm26ScalarEvolutionWrapperPass2IDE
  br i1 %.not.i3.i.i16, label %_ZNK4llvm4Pass11getAnalysisINS_26ScalarEvolutionWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit.thread, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit
  %6 = phi ptr [ %5, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit.thread ], [ %i.v, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader, %.lr.ph.i.i.i17
  %.sroa.08.015.i4.i.i18 = phi ptr [ %i.w, %.lr.ph.i.i.i17 ], [ %i.n, %.lr.ph.i.i.i17.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i18, i64 16 ; 4 uses
  %.not11.i.i.i19 = icmp ne ptr %i.w, %i.p
  tail call void @llvm.assume(i1 %.not11.i.i.i19)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !473
  %.not.i.i.i20 = icmp eq ptr %i.x, @_ZN4llvm26ScalarEvolutionWrapperPass2IDE
  br i1 %.not.i.i.i20, label %_ZNK4llvm4Pass11getAnalysisINS_26ScalarEvolutionWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i17

_ZNK4llvm4Pass11getAnalysisINS_26ScalarEvolutionWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i17, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit
  %7 = phi ptr [ %i.v, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit ], [ %6, %.lr.ph.i.i.i17 ]
  %.sroa.08.015.i.lcssa.i.i21 = phi ptr [ %i.n, %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit ], [ %i.w, %.lr.ph.i.i.i17 ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i21, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !474
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !56
  store ptr %i.ad, ptr %2, align 8, !tbaa !89
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %7, ptr %i.ae, align 8, !tbaa !90
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ab, ptr %i.af, align 8, !tbaa !91
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !92
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !93
  store ptr %i.ah, ptr %i.ah, align 8, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, i8 0, i64 56, i1 false)
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.am, i8 0, i64 152, i1 false)
  %i.an = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126StraightLineStrengthReduce13runOnFunctionERN4llvm8FunctionE(ptr noundef nonnull align 8 dereferenceable(264) %2)
  call fastcc void @_ZN12_GLOBAL__N_126StraightLineStrengthReduceD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZNK4llvm4Pass11getAnalysisINS_26ScalarEvolutionWrapperPassEEERT_v.exit
  %.0 = phi i1 [ %i.an, %_ZNK4llvm4Pass11getAnalysisINS_26ScalarEvolutionWrapperPassEEERT_v.exit ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN4llvm12FunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm30TargetTransformInfoWrapperPass6getTTIERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm11depth_firstIPNS_13DominatorTreeEEENS_14iterator_rangeINS_11df_iteratorIT_NS_23df_iterator_default_setINS_11GraphTraitsIS5_E7NodeRefELj8EEELb0ES8_EEEERKS5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.287") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"class.llvm::df_iterator", align 8 ; 10 uses
  %3 = alloca %"class.llvm::df_iterator", align 8 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.a = load ptr, ptr %1, align 8, !tbaa !489, !noalias !490
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !513, !noalias !490 ; 2 uses
  %.ptr13.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %.ptr13.i.i.i, ptr %2, align 8, !tbaa !38, !alias.scope !490
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 8, ptr %i.d, align 8, !tbaa !95, !alias.scope !490
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i8 1, ptr %i.f, align 8, !tbaa !35, !alias.scope !490
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false), !alias.scope !490
  store i32 1, ptr %i.e, align 4, !tbaa !96, !alias.scope !490, !noalias !514
  store ptr %i.c, ptr %.ptr13.i.i.i, align 8, !tbaa !39, !alias.scope !490, !noalias !514
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.j = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 4 uses
  store ptr %i.c, ptr %i.j, align 8
  %.sroa.56.0..sroa_idx7.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i8 0, ptr %.sroa.56.0..sroa_idx7.i.i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !100, !alias.scope !490
  store ptr %i.k, ptr %i.h, align 8, !tbaa !99, !alias.scope !490
  store ptr %i.k, ptr %i.i, align 8, !tbaa !103, !alias.scope !490
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, i8 0, i64 72, i1 false), !alias.scope !515
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.m, ptr %3, align 8, !tbaa !38, !alias.scope !515
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 8, ptr %i.n, align 8, !tbaa !95, !alias.scope !515
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !96, !alias.scope !515
  store i8 1, ptr %i.l, align 8, !tbaa !35, !alias.scope !515
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false), !alias.scope !515
  call void @_ZN4llvm10make_rangeINS_11df_iteratorIPNS_13DominatorTreeENS_23df_iterator_default_setIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj8EEELb0ENS_11GraphTraitsIS3_EEEEEENS_14iterator_rangeIT_EESE_SE_(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range.287") align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(112) %2, ptr nofree noundef nonnull align 8 dereferenceable(112) %3)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm15DomTreeNodeBaseINS1_10BasicBlockEEESt8optionalINS4_14const_iteratorEEESaIS9_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !103
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #24
  br label %_ZNSt6vectorISt4pairIPN4llvm15DomTreeNodeBaseINS1_10BasicBlockEEESt8optionalINS4_14const_iteratorEEESaIS9_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPN4llvm15DomTreeNodeBaseINS1_10BasicBlockEEESt8optionalINS4_14const_iteratorEEESaIS9_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.w = load i8, ptr %i.l, align 8, !tbaa !35, !range !36, !noundef !37
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN4llvm11df_iteratorIPNS_13DominatorTreeENS_23df_iterator_default_setIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj8EEELb0ENS_11GraphTraitsIS2_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm15DomTreeNodeBaseINS1_10BasicBlockEEESt8optionalINS4_14const_iteratorEEESaIS9_EED2Ev.exit.i
  %i.y = load ptr, ptr %3, align 8, !tbaa !38
  call void @free(ptr noundef %i.y) #21
  br label %_ZN4llvm11df_iteratorIPNS_13DominatorTreeENS_23df_iterator_default_setIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj8EEELb0ENS_11GraphTraitsIS2_EEED2Ev.exit

_ZN4llvm11df_iteratorIPNS_13DominatorTreeENS_23df_iterator_default_setIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj8EEELb0ENS_11GraphTraitsIS2_EEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPN4llvm15DomTreeNodeBaseINS1_10BasicBlockEEESt8optionalINS4_14const_iteratorEEESaIS9_EED2Ev.exit.i, %bb.c
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i2, label %_ZNSt6vectorISt4pairIPN4llvm15DomTreeNodeBaseINS1_10BasicBlockEEESt8optionalINS4_14const_iteratorEEESaIS9_EED2Ev.exit.i3, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11df_iteratorIPNS_13DominatorTreeENS_23df_iterator_default_setIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj8EEELb0ENS_11GraphTraitsIS2_EEED2Ev.exit
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #24
  br label %_ZNSt6vectorISt4pairIPN4llvm15DomTreeNodeBaseINS1_10BasicBlockEEESt8optionalINS4_14const_iteratorEEESaIS9_EED2Ev.exit.i3

_ZNSt6vectorISt4pairIPN4llvm15DomTreeNodeBaseINS1_10BasicBlockEEESt8optionalINS4_14const_iteratorEEESaIS9_EED2Ev.exit.i3: ; preds = %bb.d, %_ZN4llvm11df_iteratorIPNS_13DominatorTreeENS_23df_iterator_default_setIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj8EEELb0ENS_11GraphTraitsIS2_EEED2Ev.exit
  %i.ae = load i8, ptr %i.f, align 8, !tbaa !35, !range !36, !noundef !37
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZN4llvm11df_iteratorIPNS_13DominatorTreeENS_23df_iterator_default_setIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj8EEELb0ENS_11GraphTraitsIS2_EEED2Ev.exit4, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm15DomTreeNodeBaseINS1_10BasicBlockEEESt8optionalINS4_14const_iteratorEEESaIS9_EED2Ev.exit.i3
  %i.ag = load ptr, ptr %2, align 8, !tbaa !38
  call void @free(ptr noundef %i.ag) #21
  br label %_ZN4llvm11df_iteratorIPNS_13DominatorTreeENS_23df_iterator_default_setIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj8EEELb0ENS_11GraphTraitsIS2_EEED2Ev.exit4

_ZN4llvm11df_iteratorIPNS_13DominatorTreeENS_23df_iterator_default_setIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj8EEELb0ENS_11GraphTraitsIS2_EEED2Ev.exit4: ; preds = %_ZNSt6vectorISt4pairIPN4llvm15DomTreeNodeBaseINS1_10BasicBlockEEESt8optionalINS4_14const_iteratorEEESaIS9_EED2Ev.exit.i3, %bb.e
  ret void
}

declare noundef zeroext i1 @_ZN4llvm42RecursivelyDeleteTriviallyDeadInstructionsEPNS_5ValueEPKNS_17TargetLibraryInfoEPNS_16MemorySSAUpdaterESt8functionIFvS1_EE(ptr noundef, ptr noundef, ptr noundef, ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm10make_rangeINS_11df_iteratorIPNS_13DominatorTreeENS_23df_iterator_default_setIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj8EEELb0ENS_11GraphTraitsIS3_EEEEEENS_14iterator_rangeIT_EESE_SE_(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.287") align 8 %0, ptr nofree noundef align 8 dereferenceable(112) %1, ptr nofree noundef align 8 dereferenceable(112) %2) local_unnamed_addr #3 comdat {
_ZNSt6vectorISt4pairIPN4llvm15DomTreeNodeBaseINS1_10BasicBlockEEESt8optionalINS4_14const_iteratorEEESaIS9_EED2Ev.exit.i:
  %3 = alloca %"class.llvm::df_iterator", align 8 ; 7 uses
  %4 = alloca %"class.llvm::df_iterator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull %i.a, i32 noundef 8, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(112) %1) #21
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !102
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103
  store ptr %i.h, ptr %i.f, align 8, !tbaa !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull %i.i, i32 noundef 8, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(112) %2) #21
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !102
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !103
  store ptr %i.p, ptr %i.n, align 8, !tbaa !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %i.q, i32 noundef 8, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load <2 x ptr>, ptr %i.c, align 8, !tbaa !102
  store <2 x ptr> %i.s, ptr %i.r, align 8, !tbaa !102
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !103
  store ptr %i.u, ptr %i.t, align 8, !tbaa !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.v, ptr noundef nonnull %i.w, i32 noundef 8, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(112) %4) #21
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.y = load <2 x ptr>, ptr %i.k, align 8, !tbaa !102
  store <2 x ptr> %i.y, ptr %i.x, align 8, !tbaa !102
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !103
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !35, !range !36, !noundef !37
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN4llvm11df_iteratorIPNS_13DominatorTreeENS_23df_iterator_default_setIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj8EEELb0ENS_11GraphTraitsIS2_EEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm15DomTreeNodeBaseINS1_10BasicBlockEEESt8optionalINS4_14const_iteratorEEESaIS9_EED2Ev.exit.i
  %i.ae = load ptr, ptr %4, align 8, !tbaa !38
  call void @free(ptr noundef %i.ae) #21
  br label %_ZN4llvm11df_iteratorIPNS_13DominatorTreeENS_23df_iterator_default_setIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj8EEELb0ENS_11GraphTraitsIS2_EEED2Ev.exit

_ZN4llvm11df_iteratorIPNS_13DominatorTreeENS_23df_iterator_default_setIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj8EEELb0ENS_11GraphTraitsIS2_EEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPN4llvm15DomTreeNodeBaseINS1_10BasicBlockEEESt8optionalINS4_14const_iteratorEEESaIS9_EED2Ev.exit.i, %bb.a
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i1, label %_ZNSt6vectorISt4pairIPN4llvm15DomTreeNodeBaseINS1_10BasicBlockEEESt8optionalINS4_14const_iteratorEEESaIS9_EED2Ev.exit.i2, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm11df_iteratorIPNS_13DominatorTreeENS_23df_iterator_default_setIPNS_15DomTreeNodeBaseINS_10BasicBlockEEELj8EEELb0ENS_11GraphTraitsIS2_EEED2Ev.exit
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
end_hunk_0
