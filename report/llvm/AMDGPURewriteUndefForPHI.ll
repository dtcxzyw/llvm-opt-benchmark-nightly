Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPURewriteUndefForPHI?download=true
inline.NumInlined: 320
inline.NumDeleted: 246
begin_hunk_0_@_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_:bb.a
  store i32 %i.k, ptr %i.a, align 8, !tbaa !14
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_130AMDGPURewriteUndefForPHILegacyD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK12_GLOBAL__N_130AMDGPURewriteUndefForPHILegacy11getPassNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.2, i64 28 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass16doInitializationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK4llvm12FunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #2

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1) unnamed_addr #2

declare noundef i32 @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_130AMDGPURewriteUndefForPHILegacy16getAnalysisUsageERN4llvm13AnalysisUsageE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm25UniformityInfoWrapperPass2IDE) #13 ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm24DominatorTreeWrapperPass2IDE) #13 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14   ; 4 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %.idx4.i.i.i = shl nuw nsw i64 %i.g, 3          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx4.i.i.i
  %i.i = lshr i64 %i.g, 2                         ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a
  %i.j = and i64 %.idx4.i.i.i, 34359738336
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.d, i64 %i.j
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  %.047.i.i.i.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %bb.f ] ; 2 uses
  %.02946.i.i.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %bb.f ] ; 9 uses
  %i.k = load ptr, ptr %.02946.i.i.i.i.i.i, align 8, !tbaa !9
  %i.l = icmp eq ptr %i.k, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.l, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = icmp eq ptr %i.n, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.o, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !9
  %i.r = icmp eq ptr %i.q, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.r, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit16, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9
  %i.u = icmp eq ptr %i.t, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.u, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit18, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 32
  %i.w = add nsw i64 %.047.i.i.i.i.i.i, -1
  %i.x = icmp sgt i64 %.047.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.b, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !82

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.f
  %i.y = and i32 %i.f, 3
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.a
  %.pre-phi56.i.i.i.i.i.i = phi i32 [ %i.y, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.f, %bb.a ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i [
    i32 3, label %bb.g
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.z = load ptr, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !9
  %i.aa = icmp eq ptr %i.z, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.aa, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.h ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !9
  %i.ad = icmp eq ptr %i.ac, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.ad, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i:             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.af = load ptr, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !9
  %i.ag = icmp eq ptr %i.af, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %i.ag, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit16: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit18: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i: ; preds = %bb.b, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit16, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit18, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i, %bb.g
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i, %bb.g ], [ %.2.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i ], [ %i.aj, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit18 ], [ %i.ai, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit16 ], [ %i.ah, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i, %bb.b ]
  %.not.i.i = icmp eq ptr %.028.i.i.i.i.i.i, %i.h
  br i1 %.not.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i, label %_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !15
  %.not.i2.i.i = icmp ult i32 %i.f, %i.al
  br i1 %.not.i2.i.i, label %bb.k, label %bb.j, !prof !17

bb.j:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_ZN4llvm24DominatorTreeWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit

bb.k:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g
  store ptr @_ZN4llvm24DominatorTreeWrapperPass2IDE, ptr %i.am, align 1
  %i.an = load i32, ptr %i.e, align 8, !tbaa !14
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.e, align 8, !tbaa !14
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_24DominatorTreeWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, %bb.j, %bb.k
  tail call void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161) %1) #13
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_130AMDGPURewriteUndefForPHILegacy13runOnFunctionERN4llvm8FunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(140) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !84   ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !87   ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm25UniformityInfoWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_25UniformityInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm25UniformityInfoWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_25UniformityInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_25UniformityInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %i.g, %.lr.ph.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i3.i.i5 = icmp eq ptr %i.f, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i5, label %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %_ZNK4llvm4Pass11getAnalysisINS_25UniformityInfoWrapperPassEEERT_v.exit, %.lr.ph.i.i.i6
  %.sroa.08.015.i4.i.i7 = phi ptr [ %i.k, %.lr.ph.i.i.i6 ], [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_25UniformityInfoWrapperPassEEERT_v.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i7, i64 16 ; 4 uses
  %.not11.i.i.i8 = icmp ne ptr %i.k, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i8)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %.not.i.i.i9 = icmp eq ptr %i.l, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i9, label %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6

_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i6, %_ZNK4llvm4Pass11getAnalysisINS_25UniformityInfoWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i10 = phi ptr [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_25UniformityInfoWrapperPassEEERT_v.exit ], [ %i.k, %.lr.ph.i.i.i6 ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i10, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = tail call noundef zeroext i1 @_Z11rewritePHIsRN4llvm8FunctionERNS_21GenericUniformityInfoINS_17GenericSSAContextIS0_EEEEPNS_13DominatorTreeE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p)
  ret i1 %i.q
}

declare noundef zeroext i1 @_ZN4llvm12FunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #13
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  %i.g = load i32, ptr %i.a, align 8, !tbaa !14
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !14
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !14
  ret void
}

declare void @__once_proxy() #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv() #7 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90, !nonnull !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91, !nonnull !19, !align !92
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(160) %i.f) #13, !inline_history !88
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4llvm21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEE21isDivergentTerminatorEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_7PHINodeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #13
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  %i.g = load i32, ptr %i.a, align 8, !tbaa !14
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !14
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !14
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_8FunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind allocsize(0) }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"p1 _ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !8, i64 0}
!11 = !{!"bool", !4, i64 0}
!12 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !8, i64 0, !5, i64 8, !5, i64 12}
!13 = !{!12, !8, i64 0}
!14 = !{!12, !5, i64 8}
!15 = !{!12, !5, i64 12}
!16 = !{!"any p2 pointer", !8, i64 0}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{}
!20 = !{!"p1 _ZTSN4llvm16AnalysisResolverE", !8, i64 0}
!21 = !{!"_ZTSN4llvm8PassKindE", !4, i64 0}
!22 = !{!"_ZTSN4llvm4PassE", !20, i64 8, !8, i64 16, !21, i64 24}
!23 = !{!22, !20, i64 8}
!24 = !{!22, !8, i64 16}
!25 = !{!22, !21, i64 24}
!26 = !{!"vtable pointer", !3, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!10, !10, i64 0}
!29 = !{!"p1 omnipotent char", !8, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"long", !4, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"_ZTSN4llvm9StringRefE", !29, i64 0, !31, i64 8}
!34 = !{!"_ZTSN4llvm8PassInfoE", !33, i64 0, !33, i64 16, !8, i64 32, !11, i64 40, !11, i64 41, !8, i64 48}
!35 = !{!34, !8, i64 32}
!36 = !{!34, !11, i64 40}
!37 = !{!34, !11, i64 41}
!38 = !{!34, !8, i64 48}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !8, i64 0}
!42 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !41, i64 0, !41, i64 8}
!43 = !{!42, !41, i64 8}
!44 = !{!"p1 _ZTSN4llvm3UseE", !8, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"p1 _ZTSN4llvm5ValueE", !8, i64 0}
!47 = !{!"p2 _ZTSN4llvm3UseE", !16, i64 0}
!48 = !{!"p1 _ZTSN4llvm4UserE", !8, i64 0}
!49 = !{!"_ZTSN4llvm3UseE", !46, i64 0, !44, i64 8, !47, i64 16, !48, i64 24}
!50 = !{!49, !46, i64 0}
!51 = !{!"short", !4, i64 0}
!52 = !{!"p1 _ZTSN4llvm4TypeE", !8, i64 0}
!53 = !{!"_ZTSN4llvm5ValueE", !4, i64 0, !4, i64 1, !4, i64 1, !51, i64 2, !5, i64 4, !5, i64 7, !5, i64 7, !5, i64 7, !5, i64 7, !52, i64 8, !44, i64 16}
!54 = !{!"_ZTSN4llvm4UserE", !53, i64 0}
!55 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0ENS_10BasicBlockEEE", !8, i64 0}
!56 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0ENS_10BasicBlockEEELb0EEE", !55, i64 0, !55, i64 8}
!57 = !{!"p1 _ZTSN4llvm10BasicBlockE", !8, i64 0}
!58 = !{!"_ZTSN4llvm12ilist_detail16node_base_parentINS_10BasicBlockEEE", !57, i64 0}
!59 = !{!"_ZTSN4llvm15ilist_node_baseILb0ENS_10BasicBlockEEE", !56, i64 0, !58, i64 16}
!60 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEEEE", !59, i64 0}
!61 = !{!"_ZTSN4llvm10ilist_nodeINS_11InstructionEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentINS_10BasicBlockEEEEEE", !60, i64 0}
!62 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_11InstructionENS_10BasicBlockEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentIS2_EEEEE", !61, i64 0}
!63 = !{!"p1 _ZTSN4llvm10DILocationE", !8, i64 0}
!64 = !{!"_ZTSN4llvm8DebugLocE", !63, i64 0}
!65 = !{!"p1 _ZTSN4llvm9DbgMarkerE", !8, i64 0}
!66 = !{!"_ZTSN4llvm11InstructionE", !54, i64 0, !62, i64 24, !64, i64 48, !5, i64 56, !5, i64 60, !65, i64 64}
!67 = !{!"_ZTSN4llvm13FastMathFlagsE", !5, i64 0}
!68 = !{!"_ZTSN4llvm20FastMathFlagsStorageE", !67, i64 0}
!69 = !{!"_ZTSN4llvm7PHINodeE", !66, i64 0, !68, i64 72, !5, i64 76}
!70 = !{!69, !5, i64 76}
!71 = !{!57, !57, i64 0}
!72 = !{!53, !4, i64 0}
!73 = !{!56, !55, i64 0}
!74 = !{!56, !55, i64 8}
!75 = !{!"p1 _ZTSN4llvm7PHINodeE", !8, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !16, i64 0, !5, i64 8, !5, i64 12, !11, i64 16}
!78 = !{!77, !16, i64 0}
!79 = !{!77, !5, i64 8}
!80 = !{!77, !11, i64 16}
!81 = !{!77, !5, i64 12}
!82 = distinct !{!82, !18}
!83 = !{!"p1 _ZTSSt4pairIPKvPN4llvm4PassEE", !8, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!"p1 _ZTSN4llvm4PassE", !8, i64 0}
!86 = !{!"_ZTSSt4pairIPKvPN4llvm4PassEE", !8, i64 0, !85, i64 8}
!87 = !{!86, !8, i64 0}
!88 = distinct !{null, null, null, null}
!89 = !{!"_ZTSZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS1_EEEvRSt9once_flagOT_DpOT0_EUlvE_", !8, i64 0, !10, i64 8}
!90 = !{!89, !8, i64 0}
!91 = !{!89, !10, i64 8}
end_hunk_0
