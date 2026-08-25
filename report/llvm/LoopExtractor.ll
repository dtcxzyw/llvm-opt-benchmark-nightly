Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopExtractor?download=true
inline.NumInlined: 602
inline.NumDeleted: 444
begin_hunk_0_@_ZN12_GLOBAL__N_123LoopExtractorLegacyPass11runOnModuleERN4llvm6ModuleE:bb.a
  %i.e = load i32, ptr %i.d, align 4, !tbaa !31
  %i.f = ptrtoint ptr %2 to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = ptrtoint ptr %4 to i64
  store i32 %i.e, ptr %5, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @"_ZN4llvm12function_refIFRNS_13DominatorTreeERNS_8FunctionEEE11callback_fnIZN12_GLOBAL__N_123LoopExtractorLegacyPass11runOnModuleERNS_6ModuleEE3$_0EES2_lS4_", ptr %i.i, align 8, !tbaa !8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.f, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr @"_ZN4llvm12function_refIFRNS_8LoopInfoERNS_8FunctionEEE11callback_fnIZN12_GLOBAL__N_123LoopExtractorLegacyPass11runOnModuleERNS_6ModuleEE3$_1EES2_lS4_", ptr %i.j, align 8, !tbaa !8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.g, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @"_ZN4llvm12function_refIFPNS_15AssumptionCacheERNS_8FunctionEEE11callback_fnIZN12_GLOBAL__N_123LoopExtractorLegacyPass11runOnModuleERNS_6ModuleEE3$_2EES2_lS4_", ptr %i.k, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %i.l = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_113LoopExtractor11runOnModuleERN4llvm6ModuleE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(1288) %1)
  %i.m = load i8, ptr %i.a, align 1, !range !114
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.l, i1 true, i1 %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.o, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #13
  %i.f = load ptr, ptr %0, align 8, !tbaa !89
  %i.g = load i32, ptr %i.a, align 8, !tbaa !91
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !91
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !91
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm10ModulePass10skipModuleERKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(1288)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(204) ptr @"_ZN4llvm12function_refIFRNS_13DominatorTreeERNS_8FunctionEEE11callback_fnIZN12_GLOBAL__N_123LoopExtractorLegacyPass11runOnModuleERNS_6ModuleEE3$_0EES2_lS4_"(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(140) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.153", align 8    ; 4 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  call void @_ZN4llvm16AnalysisResolver12findImplPassEPNS_4PassEPKvRNS_8FunctionE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.153") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(28) %.val, ptr noundef nonnull @_ZN4llvm24DominatorTreeWrapperPass2IDE, ptr noundef nonnull align 8 dereferenceable(140) %1) #13
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  ret ptr %i.f
}

declare void @_ZN4llvm16AnalysisResolver12findImplPassEPNS_4PassEPKvRNS_8FunctionE(ptr dead_on_unwind writable sret(%"class.std::tuple.153") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noundef nonnull align 8 dereferenceable(184) ptr @"_ZN4llvm12function_refIFRNS_8LoopInfoERNS_8FunctionEEE11callback_fnIZN12_GLOBAL__N_123LoopExtractorLegacyPass11runOnModuleERNS_6ModuleEE3$_1EES2_lS4_"(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(140) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.153", align 8    ; 5 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !tbaa !117 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  call void @_ZN4llvm16AnalysisResolver12findImplPassEPNS_4PassEPKvRNS_8FunctionE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.153") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(28) %.val, ptr noundef nonnull @_ZN4llvm19LoopInfoWrapperPass2IDE, ptr noundef nonnull align 8 dereferenceable(140) %1) #13
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.g = load i8, ptr %2, align 8, !tbaa !104, !range !114, !noundef !100
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.h = load i8, ptr %.val1, align 1, !tbaa !104, !range !114, !noundef !100
  %i.i = or i8 %i.h, %i.g
  store i8 %i.i, ptr %.val1, align 1, !tbaa !104
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @"_ZN4llvm12function_refIFPNS_15AssumptionCacheERNS_8FunctionEEE11callback_fnIZN12_GLOBAL__N_123LoopExtractorLegacyPass11runOnModuleERNS_6ModuleEE3$_2EES2_lS4_"(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(140) %1) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.c = tail call noundef ptr @_ZNK4llvm16AnalysisResolver22getAnalysisIfAvailableEPKv(ptr noundef nonnull align 8 dereferenceable(32) %.val.val, ptr noundef nonnull @_ZN4llvm22AssumptionCacheTracker2IDE) #13 ; 2 uses
  %.not.not.i = icmp eq ptr %i.c, null
  br i1 %.not.not.i, label %"_ZZN12_GLOBAL__N_123LoopExtractorLegacyPass11runOnModuleERN4llvm6ModuleEENK3$_2clERNS1_8FunctionE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4llvm22AssumptionCacheTracker21lookupAssumptionCacheERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(140) %1) #13
  br label %"_ZZN12_GLOBAL__N_123LoopExtractorLegacyPass11runOnModuleERN4llvm6ModuleEENK3$_2clERNS1_8FunctionE.exit"

"_ZZN12_GLOBAL__N_123LoopExtractorLegacyPass11runOnModuleERN4llvm6ModuleEENK3$_2clERNS1_8FunctionE.exit": ; preds = %bb.a, %bb.b
  %spec.select.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %spec.select.i
}

declare noundef ptr @_ZN4llvm22AssumptionCacheTracker21lookupAssumptionCacheERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm16AnalysisResolver22getAnalysisIfAvailableEPKv(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4llvm10ModulePassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_119SingleLoopExtractorD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4llvm10ModulePassD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_113LoopExtractor12extractLoopsEN9__gnu_cxx17__normal_iteratorIPKPN4llvm4LoopESt6vectorIS5_SaIS5_EEEESB_RNS3_8LoopInfoERNS3_13DominatorTreeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef nonnull align 8 dereferenceable(204) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SmallVector.208", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 8, ptr %i.c, align 4, !tbaa !92
  store i32 0, ptr %i.b, align 8, !tbaa !91
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %i.h = icmp ugt i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %_ZN4llvm15SmallVectorImplIPNS_4LoopEE7reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #13
  %.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !91 ; 2 uses
  %.pre12.i.i = zext i32 %.pre.i.i to i64
  %.pre = load ptr, ptr %5, align 8, !tbaa !89
  br label %_ZN4llvm15SmallVectorImplIPNS_4LoopEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIPNS_4LoopEE7reserveEm.exit.i.i: ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %i.a, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  %.pre-phi.i.i = phi i64 [ 0, %bb.a ], [ %.pre12.i.i, %bb.b ]
  %i.j = phi i32 [ 0, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.pre-phi.i.i ; 2 uses
  %i.l = icmp sgt i64 %i.f, 8
  br i1 %i.l, label %bb.c, label %bb.d, !prof !103

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_4LoopEE7reserveEm.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %1, i64 %i.f, i1 false)
  %.pre11.i.i = load i32, ptr %i.b, align 8, !tbaa !91
  %.pre27 = load ptr, ptr %5, align 8, !tbaa !89
  br label %_ZN4llvm15SmallVectorImplIPNS_4LoopEE6assignIN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEvEEvT_SD_.exit

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_4LoopEE7reserveEm.exit.i.i
  %i.m = icmp eq i64 %i.f, 8
  br i1 %i.m, label %bb.e, label %_ZN4llvm15SmallVectorImplIPNS_4LoopEE6assignIN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEvEEvT_SD_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %1, align 8, !tbaa !69
  store ptr %i.n, ptr %i.k, align 8, !tbaa !69
  br label %_ZN4llvm15SmallVectorImplIPNS_4LoopEE6assignIN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEvEEvT_SD_.exit

_ZN4llvm15SmallVectorImplIPNS_4LoopEE6assignIN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEvEEvT_SD_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.o = phi ptr [ %.pre27, %bb.c ], [ %i.i, %bb.d ], [ %i.i, %bb.e ] ; 3 uses
  %i.p = phi i32 [ %.pre11.i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.j, %bb.e ]
  %i.q = trunc i64 %i.g to i32
  %i.r = add i32 %i.p, %i.q                       ; 3 uses
  store i32 %i.r, ptr %i.b, align 8, !tbaa !91
  %i.s = zext i32 %i.r to i64
  %.idx = shl nuw nsw i64 %i.s, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %.not22 = icmp eq i32 %i.r, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPNS_4LoopEE6assignIN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEvEEvT_SD_.exit, %bb.g
  %.01624 = phi ptr [ %i.z, %bb.g ], [ %i.o, %_ZN4llvm15SmallVectorImplIPNS_4LoopEE6assignIN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEvEEvT_SD_.exit ] ; 2 uses
  %.01723 = phi i1 [ %.1.ph, %bb.g ], [ false, %_ZN4llvm15SmallVectorImplIPNS_4LoopEE6assignIN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEvEEvT_SD_.exit ] ; 2 uses
  %i.u = load ptr, ptr %.01624, align 8, !tbaa !69 ; 2 uses
  %i.v = call noundef zeroext i1 @_ZNK4llvm4Loop18isLoopSimplifyFormEv(ptr noundef nonnull align 8 dereferenceable(144) %i.u) #13
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.w = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_113LoopExtractor11extractLoopEPN4llvm4LoopERNS1_8LoopInfoERNS1_13DominatorTreeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef nonnull align 8 dereferenceable(204) %4)
  %i.x = or i1 %.01723, %i.w                      ; 2 uses
  %i.y = load i32, ptr %0, align 8, !tbaa !40
  %.not18 = icmp eq i32 %i.y, 0
  br i1 %.not18, label %._crit_edge.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.1.ph = phi i1 [ %i.x, %bb.f ], [ %.01723, %.lr.ph ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01624, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.t
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.f, %bb.g
  %.2.ph = phi i1 [ %.1.ph, %bb.g ], [ %i.x, %bb.f ]
  %.pre28 = load ptr, ptr %5, align 8, !tbaa !89
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm15SmallVectorImplIPNS_4LoopEE6assignIN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEvEEvT_SD_.exit
  %i.aa = phi ptr [ %i.o, %_ZN4llvm15SmallVectorImplIPNS_4LoopEE6assignIN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEvEEvT_SD_.exit ], [ %.pre28, %._crit_edge.loopexit ] ; 2 uses
  %.2 = phi i1 [ false, %_ZN4llvm15SmallVectorImplIPNS_4LoopEE6assignIN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEvEEvT_SD_.exit ], [ %.2.ph, %._crit_edge.loopexit ]
  %i.ab = icmp eq ptr %i.aa, %i.a
  br i1 %i.ab, label %_ZN4llvm11SmallVectorIPNS_4LoopELj8EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.aa) #13
  br label %_ZN4llvm11SmallVectorIPNS_4LoopELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_4LoopELj8EED2Ev.exit:   ; preds = %._crit_edge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret i1 %.2
}

declare noundef zeroext i1 @_ZNK4llvm4Loop18isLoopSimplifyFormEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #3

declare void @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE13getExitBlocksERNS_15SmallVectorImplIPS1_EE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_113LoopExtractor11extractLoopEPN4llvm4LoopERNS1_8LoopInfoERNS1_13DominatorTreeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(204) %3) unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %4 = alloca %"class.llvm::CodeExtractorAnalysisCache", align 8 ; 11 uses
  %5 = alloca %"class.llvm::CodeExtractor", align 8 ; 6 uses
  %6 = alloca %"class.llvm::ArrayRef", align 8    ; 2 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !133
  %i.j = tail call noundef ptr %i.g(i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(140) %i.e) #13, !inline_history !134
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN4llvm26CodeExtractorAnalysisCacheC1ERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(192) %4, ptr noundef nonnull align 8 dereferenceable(140) %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !135
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr %i.r, ptr %7, align 8, !tbaa !136
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !138
  store i8 0, ptr %i.r, align 8, !tbaa !99
  call void @_ZN4llvm13CodeExtractorC1ENS_8ArrayRefIPNS_10BasicBlockEEEPNS_13DominatorTreeEbPNS_18BlockFrequencyInfoEPNS_21BranchProbabilityInfoEPNS_15AssumptionCacheEbbS3_S4_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(320) %5, ptr %i.k, i64 %i.q, ptr noundef nonnull %3, i1 noundef zeroext false, ptr noundef null, ptr noundef null, ptr noundef %i.j, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %6, ptr nofree noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext false, i1 noundef zeroext true) #13
  %i.t = load ptr, ptr %7, align 8, !tbaa !140    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.r
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.v = load i64, ptr %i.r, align 8, !tbaa !99
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = call noundef zeroext i1 @_ZNK4llvm13CodeExtractor10isEligibleEv(ptr noundef nonnull align 8 dereferenceable(320) %5) #13 ; 2 uses
  br i1 %i.x, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN4llvm8LoopInfo5eraseEPNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull %1) #13
  %i.y = call noundef ptr @_ZN4llvm13CodeExtractor17extractCodeRegionERKNS_26CodeExtractorAnalysisCacheE(ptr noundef nonnull align 8 dereferenceable(320) %5, ptr noundef nonnull align 8 dereferenceable(192) %4) #13 ; 0 uses
  %i.z = load i32, ptr %0, align 8, !tbaa !40
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr %0, align 8, !tbaa !40
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  call void @_ZN4llvm13CodeExtractorD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 188
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !141 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !145
  %i.ag = zext i32 %i.ac to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.af, i64 noundef %i.al, i64 noundef 8) #13
  br label %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i

_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 164 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !146 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !149
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !150
  %i.at = zext i32 %i.ao to i64
  %i.au = add nuw nsw i64 %i.at, 31
  %i.av = lshr i64 %i.au, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i10, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i10 ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !151 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i10, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ay = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.d

bb.d:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.ax, %.lr.ph.i.i ], [ %i.bp, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.az = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ba = or disjoint i32 %i.az, %i.ay
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !152 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !155
  %i.bi = zext i32 %i.be to i64                   ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bn, i64 noundef 8) #13
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.e, %bb.d
  %i.bo = add i32 %.0.i3.i.i, -1
  %i.bp = and i32 %i.bo, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i10, label %bb.d, !llvm.loop !156

._crit_edge.i.i10:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.av
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !157

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i10
  %.pr.i = load i32, ptr %i.an, align 4, !tbaa !146 ; 2 uses
  %i.bq = icmp eq i32 %.pr.i, 0
  br i1 %i.bq, label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i
  %i.br = load ptr, ptr %i.am, align 8, !tbaa !149
  %i.bs = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bt = shl nuw nsw i64 %i.bs, 5
  %i.bu = add nuw nsw i64 %i.bs, 31
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = and i64 %i.bv, 1073741820
  %i.bx = add nuw nsw i64 %i.bw, %i.bt
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.br, i64 noundef %i.bx, i64 noundef 8) #13
  br label %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SA_SD_E10destroyAllEv.exit.i, %bb.f
  %i.by = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZN4llvm26CodeExtractorAnalysisCacheD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit
  call void @free(ptr noundef %i.by) #13
  br label %_ZN4llvm26CodeExtractorAnalysisCacheD2Ev.exit

_ZN4llvm26CodeExtractorAnalysisCacheD2Ev.exit:    ; preds = %_ZN4llvm8DenseMapIPNS_10BasicBlockENS_8DenseSetIPNS_5ValueENS_12DenseMapInfoIS5_vEEEENS6_IS2_vEENS_6detail12DenseMapPairIS2_S8_EEED2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i1 %i.x
}

declare noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1
end_hunk_0
