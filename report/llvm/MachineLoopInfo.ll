Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineLoopInfo?download=true
inline.NumInlined: 2299
inline.NumDeleted: 1077
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4llvm15MachineLoopInfo10invalidateERNS_15MachineFunctionERKNS_17PreservedAnalysesERNS_15AnalysisManagerIS1_JEE11InvalidatorE:bb.a
  br i1 %.not17.i.i.i26, label %_ZN4llvm17PreservedAnalyses24PreservedAnalysisChecker9preservedEv.exit.thread40, label %.lr.ph.i.i.i27

bb.i:                                             ; preds = %.lr.ph.i.i.i27
  %i.bc = getelementptr inbounds nuw i8, ptr %.01218.i.i.i28, i64 8 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i.i.i30, label %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.thread.i18, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %.thread46.thread, %bb.i
  %.01218.i.i.i28 = phi ptr [ %i.bc, %bb.i ], [ %i.ax, %.thread46.thread ] ; 2 uses
  %i.bd = load ptr, ptr %.01218.i.i.i28, align 8, !tbaa !51
  %.not15.i.i.i29 = icmp eq ptr %i.bd, @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE
  br i1 %.not15.i.i.i29, label %_ZN4llvm17PreservedAnalyses24PreservedAnalysisChecker9preservedEv.exit.thread40, label %bb.i

_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.i12: ; preds = %.thread46
  %i.be = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE) #17
  %.not15.i13 = icmp eq ptr %i.be, null
  br i1 %.not15.i13, label %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.i14, label %_ZN4llvm17PreservedAnalyses24PreservedAnalysisChecker9preservedEv.exit.thread40

_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.i14: ; preds = %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.i12
  %.pre18.i17 = load i8, ptr %i.m, align 8, !tbaa !46, !range !47
  %i.bf = trunc nuw i8 %.pre18.i17 to i1
  br i1 %i.bf, label %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.i14._ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.thread.i18_crit_edge, label %bb.j

_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.i14._ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.thread.i18_crit_edge: ; preds = %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.i14
  %.pre70 = load ptr, ptr %2, align 8, !tbaa !49
  %.phi.trans.insert71 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.pre72 = load i32, ptr %.phi.trans.insert71, align 4, !tbaa !50
  br label %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.thread.i18

_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.thread.i18: ; preds = %bb.i, %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.i14._ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.thread.i18_crit_edge
  %i.bg = phi i32 [ %.pre72, %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.i14._ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.thread.i18_crit_edge ], [ %i.az, %bb.i ] ; 2 uses
  %i.bh = phi ptr [ %.pre70, %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.i14._ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.thread.i18_crit_edge ], [ %i.ax, %bb.i ] ; 2 uses
  %i.bi = zext i32 %i.bg to i64
  %.idx.i.i3.i19 = shl nuw nsw i64 %i.bi, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i.i3.i19
  %.not17.i.i4.i20 = icmp eq i32 %i.bg, 0
  br i1 %.not17.i.i4.i20, label %_ZN4llvm17PreservedAnalyses24PreservedAnalysisChecker9preservedEv.exit.thread40, label %.lr.ph.i.i5.i21

.lr.ph.i.i5.i21:                                  ; preds = %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.thread.i18, %.lr.ph.i.i5.i21
  %.01218.i.i6.i22 = phi ptr [ %i.bl, %.lr.ph.i.i5.i21 ], [ %i.bh, %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.thread.i18 ] ; 2 uses
  %i.bk = load ptr, ptr %.01218.i.i6.i22, align 8, !tbaa !51
  %.not15.i.i7.i23.not = icmp ne ptr %i.bk, @_ZN4llvm11CFGAnalyses6SetKeyE ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01218.i.i6.i22, i64 8 ; 2 uses
  %.not.i.i8.i24 = icmp ne ptr %i.bl, %i.bj
  %or.cond.not = select i1 %.not15.i.i7.i23.not, i1 %.not.i.i8.i24, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i5.i21, label %_ZN4llvm17PreservedAnalyses24PreservedAnalysisChecker9preservedEv.exit.thread40

bb.j:                                             ; preds = %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.i14
  %i.bm = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull @_ZN4llvm11CFGAnalyses6SetKeyE) #17
  %i.bn = icmp eq ptr %i.bm, null
  br label %_ZN4llvm17PreservedAnalyses24PreservedAnalysisChecker9preservedEv.exit.thread40

_ZN4llvm17PreservedAnalyses24PreservedAnalysisChecker9preservedEv.exit.thread40: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i4.i, %.lr.ph.i.i.i8, %.lr.ph.i.i5.i, %.lr.ph.i.i.i27, %.lr.ph.i.i5.i21, %.thread46.thread, %bb.j, %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.thread.i18, %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.i12, %_ZNK4llvm17PreservedAnalyses10getCheckerINS_19MachineLoopAnalysisEEENS0_24PreservedAnalysisCheckerEv.exit, %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.i1, %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.i, %_ZN4llvm17PreservedAnalyses24PreservedAnalysisChecker12preservedSetINS_13AllAnalysesOnINS_15MachineFunctionEEEEEbv.exit, %_ZN4llvm17PreservedAnalyses24PreservedAnalysisChecker9preservedEv.exit
  %i.bo = phi i1 [ false, %_ZN4llvm17PreservedAnalyses24PreservedAnalysisChecker12preservedSetINS_13AllAnalysesOnINS_15MachineFunctionEEEEEbv.exit ], [ false, %_ZN4llvm17PreservedAnalyses24PreservedAnalysisChecker9preservedEv.exit ], [ false, %.lr.ph.i.i4.i ], [ true, %.thread46.thread ], [ false, %.lr.ph.i.i.i27 ], [ false, %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.i ], [ %.not15.i.i7.i23.not, %.lr.ph.i.i5.i21 ], [ false, %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.i1 ], [ false, %.lr.ph.i.i5.i ], [ false, %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.i12 ], [ false, %.lr.ph.i.i.i8 ], [ %i.bn, %bb.j ], [ true, %_ZNK4llvm15SmallPtrSetImplIPvE5countEPKv.exit.thread.thread.i18 ], [ true, %_ZNK4llvm17PreservedAnalyses10getCheckerINS_19MachineLoopAnalysisEEENS0_24PreservedAnalysisCheckerEv.exit ], [ false, %.lr.ph.i.i.i ], [ true, %.lr.ph.i.i.i.i ]
  ret i1 %i.bo
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm26MachineLoopInfoWrapperPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(161) initializes((160, 161)) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i8 1, ptr %i.a, align 8, !tbaa !509
  %i.b = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE) #17 ; 0 uses
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #17
  ret void
}

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm11MachineLoop11getTopBlockEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !277  ; 3 uses
  %.not = icmp eq ptr %i.c, %i.g
  br i1 %.not, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !278  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.l = load i8, ptr %i.j, align 8, !tbaa !46, !range !47, !noundef !48
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader.split.us, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader.split.us: ; preds = %.lr.ph.i.preheader
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %i.o = load i32, ptr %i.k, align 4, !tbaa !50   ; 2 uses
  %i.p = zext i32 %i.o to i64
  %.idx.i.i.i.us = shl nuw nsw i64 %i.p, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i.i.i.us
  %.not17.i.i.i.us = icmp eq i32 %i.o, 0
  br i1 %.not17.i.i.i.us, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread, label %.lr.ph.i.i.i.preheader.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.preheader.us, %bb.b
  %.01218.i.i.i.us = phi ptr [ %i.s, %bb.b ], [ %i.n, %.lr.ph.i.i.i.preheader.us ] ; 2 uses
  %i.r = load ptr, ptr %.01218.i.i.i.us, align 8, !tbaa !51
  %.not15.i.i.i.us = icmp eq ptr %i.r, %.010.us32
  br i1 %.not15.i.i.i.us, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread25.loopexit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.us
  %i.s = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.us, i64 8 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %i.s, %i.q
  br i1 %.not.i.i.i.us, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread, label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.preheader.us:                        ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader.split.us, %.lr.ph.i13.us.preheader
  %.0.us33 = phi ptr [ %.010.us32, %.lr.ph.i13.us.preheader ], [ %i.c, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader.split.us ]
  %.010.us32 = phi ptr [ %i.u, %.lr.ph.i13.us.preheader ], [ %i.h, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader.split.us ] ; 5 uses
  br label %.lr.ph.i.i.i.us

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread25.loopexit.us: ; preds = %.lr.ph.i.i.i.us
  %i.t = icmp eq ptr %.010.us32, %i.g
  br i1 %i.t, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread, label %.lr.ph.i13.us.preheader

.lr.ph.i13.us.preheader:                          ; preds = %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread25.loopexit.us
  %i.u = load ptr, ptr %.010.us32, align 8, !tbaa !278
  br label %.lr.ph.i.i.i.preheader.us, !llvm.loop !510

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %.lr.ph.i.preheader, %.lr.ph.i13.preheader
  %i.v = phi i8 [ %.pre, %.lr.ph.i13.preheader ], [ 0, %.lr.ph.i.preheader ]
  %.010 = phi ptr [ %i.af, %.lr.ph.i13.preheader ], [ %i.h, %.lr.ph.i.preheader ] ; 6 uses
  %.0 = phi ptr [ %.010, %.lr.ph.i13.preheader ], [ %i.c, %.lr.ph.i.preheader ] ; 3 uses
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit

bb.c:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %i.y = load i32, ptr %i.k, align 4, !tbaa !50   ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.z, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i.i
  %.not17.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not17.i.i.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.01218.i.i.i = phi ptr [ %i.ab, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %i.ac = load ptr, ptr %.01218.i.i.i, align 8, !tbaa !51
  %.not15.i.i.i = icmp eq ptr %i.ac, %.010
  br i1 %.not15.i.i.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread25, label %bb.d

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit: ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.ad = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.i, ptr noundef nonnull %.010) #17
  %.not27 = icmp eq ptr %i.ad, null
  br i1 %.not27, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread25

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread25: ; preds = %.lr.ph.i.i.i, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit
  %i.ae = icmp eq ptr %.010, %i.g
  br i1 %i.ae, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread, label %.lr.ph.i13.preheader

.lr.ph.i13.preheader:                             ; preds = %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread25
  %i.af = load ptr, ptr %.010, align 8, !tbaa !278
  %.pre = load i8, ptr %i.j, align 8, !tbaa !46, !range !47
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, !llvm.loop !511

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread: ; preds = %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread25, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit, %bb.c, %bb.d, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread25.loopexit.us, %bb.b, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader.split.us, %bb.a
  %.2 = phi ptr [ %i.c, %bb.a ], [ %.0.us33, %bb.b ], [ %.0, %bb.d ], [ %i.c, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader.split.us ], [ %.010.us32, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread25.loopexit.us ], [ %.010, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread25 ], [ %.0, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit ], [ %.0, %bb.c ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm11MachineLoop14getBottomBlockEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 align 2 {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !278
  %.not = icmp eq ptr %i.c, %i.g
  br i1 %.not, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread, label %.preheader40.preheader

.preheader40.preheader:                           ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !277  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.m = load i8, ptr %i.k, align 8, !tbaa !46, !range !47, !noundef !48
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit18.preheader.split.us, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit18

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit18.preheader.split.us: ; preds = %.preheader40.preheader
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %i.p = load i32, ptr %i.l, align 4, !tbaa !50   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx.i.i.i.us = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i.us
  %.not17.i.i.i.us = icmp eq i32 %i.p, 0
  br i1 %.not17.i.i.i.us, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread, label %bb.a

.lr.ph.i.i.i.us:                                  ; preds = %bb.a, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread36.loopexit.us.preheader
  %.01218.i.i.i.us = phi ptr [ %i.t, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread36.loopexit.us.preheader ], [ %i.o, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.01218.i.i.i.us, align 8, !tbaa !51
  %.not15.i.i.i.us = icmp eq ptr %i.s, %.014.us46
  br i1 %.not15.i.i.i.us, label %.lr.ph.i.i.i.preheader.us, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread36.loopexit.us.preheader

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread36.loopexit.us.preheader: ; preds = %.lr.ph.i.i.i.us
  %i.t = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.us, i64 8 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.r
  br i1 %i.u, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread, label %.lr.ph.i.i.i.us

bb.a:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit18.preheader.split.us, %.lr.ph.i.i.i.preheader.us
  %.0.us47 = phi ptr [ %.014.us46, %.lr.ph.i.i.i.preheader.us ], [ %i.c, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit18.preheader.split.us ]
  %.014.us46 = phi ptr [ %2, %.lr.ph.i.i.i.preheader.us ], [ %i.i, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit18.preheader.split.us ] ; 5 uses
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.preheader.us:                        ; preds = %.lr.ph.i.i.i.us
  %1 = getelementptr inbounds nuw i8, ptr %.014.us46, i64 8
  %2 = load ptr, ptr %1, align 8, !tbaa !277      ; 2 uses
  %3 = icmp eq ptr %.014.us46, %2
  br i1 %3, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread, label %bb.a

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit18: ; preds = %.preheader40.preheader, %.preheader.preheader
  %i.v = phi i8 [ %.pre, %.preheader.preheader ], [ 0, %.preheader40.preheader ]
  %.014 = phi ptr [ %i.af, %.preheader.preheader ], [ %i.i, %.preheader40.preheader ] ; 6 uses
  %.0 = phi ptr [ %.014, %.preheader.preheader ], [ %i.c, %.preheader40.preheader ] ; 3 uses
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.b, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit

bb.b:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit18
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %i.y = load i32, ptr %i.l, align 4, !tbaa !50   ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.z, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i.i
  %.not17.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not17.i.i.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.01218.i.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.x, %bb.b ] ; 2 uses
  %i.ac = load ptr, ptr %.01218.i.i.i, align 8, !tbaa !51
  %.not15.i.i.i = icmp eq ptr %i.ac, %.014
  br i1 %.not15.i.i.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread36, label %bb.c

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit: ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit18
  %i.ad = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.j, ptr noundef nonnull %.014) #17
  %.not38 = icmp eq ptr %i.ad, null
  br i1 %.not38, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread36

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread36: ; preds = %.lr.ph.i.i.i, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !277 ; 2 uses
  %i.ag = icmp eq ptr %.014, %i.af
  br i1 %i.ag, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread36
  %.pre = load i8, ptr %i.k, align 8, !tbaa !46, !range !47
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit18, !llvm.loop !512

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread: ; preds = %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread36, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit, %bb.b, %bb.c, %.lr.ph.i.i.i.preheader.us, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread36.loopexit.us.preheader, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit18.preheader.split.us, %.lr.ph.i
  %.2 = phi ptr [ %i.c, %.lr.ph.i ], [ %.0.us47, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread36.loopexit.us.preheader ], [ %.014.us46, %.lr.ph.i.i.i.preheader.us ], [ %i.c, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_17MachineBasicBlockELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit18.preheader.split.us ], [ %.0, %bb.c ], [ %.014, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread36 ], [ %.0, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit ], [ %.0, %bb.b ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm11MachineLoop20findLoopControlBlockEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !55   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 2 uses
  %.not44.i = icmp eq i32 %i.g, 0
  br i1 %.not44.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE15getExitingBlockEv.exit.thread31, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  %i.m = load i8, ptr %i.k, align 8, !tbaa !46, !range !47, !noundef !48
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %i.p = load i32, ptr %i.l, align 4, !tbaa !50   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx.i.i.i.us.i = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i.us.i
  %.not17.i.i.i.us.i = icmp eq i32 %i.p, 0
  br i1 %.not17.i.i.i.us.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE15getExitingBlockEv.exit.thread31, label %.lr.ph.i.i.i.preheader.us.i

.lr.ph.i.i.i.preheader.us.i:                      ; preds = %.lr.ph.split.us.i, %.thread40.us.i
  %.01446.us.i = phi ptr [ %i.w, %.thread40.us.i ], [ %i.e, %.lr.ph.split.us.i ] ; 2 uses
  %.01545.us.i = phi ptr [ %i.v, %.thread40.us.i ], [ null, %.lr.ph.split.us.i ] ; 2 uses
  %i.s = load ptr, ptr %.01446.us.i, align 8, !tbaa !44 ; 2 uses
  br label %.lr.ph.i.i.i.us.i

.lr.ph.i.i.i.us.i:                                ; preds = %bb.b, %.lr.ph.i.i.i.preheader.us.i
  %.01218.i.i.i.us.i = phi ptr [ %i.u, %bb.b ], [ %i.o, %.lr.ph.i.i.i.preheader.us.i ] ; 2 uses
  %i.t = load ptr, ptr %.01218.i.i.i.us.i, align 8, !tbaa !51
  %.not15.i.i.i.us.i = icmp eq ptr %i.t, %i.s
  br i1 %.not15.i.i.i.us.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.us.i
  %i.u = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.us.i, i64 8 ; 2 uses
  %.not.i.i.i.us.i = icmp eq ptr %i.u, %i.r
  br i1 %.not.i.i.i.us.i, label %.thread40.us.i, label %.lr.ph.i.i.i.us.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.us.i
  %.not2131.us.i = icmp eq ptr %.01545.us.i, null
  br i1 %.not2131.us.i, label %.thread40.us.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE15getExitingBlockEv.exit.thread31

.thread40.us.i:                                   ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.s, %bb.c ], [ %.01545.us.i, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01446.us.i, i64 8 ; 2 uses
  %.not.us.i = icmp eq ptr %i.w, %i.i
  br i1 %.not.us.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit, label %.lr.ph.i.i.i.preheader.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.thread40.i
  %.01446.i = phi ptr [ %i.ai, %.thread40.i ], [ %i.e, %.lr.ph.i ] ; 2 uses
  %.01545.i = phi ptr [ %i.ah, %.thread40.i ], [ null, %.lr.ph.i ] ; 5 uses
  %i.x = load ptr, ptr %.01446.i, align 8, !tbaa !44 ; 4 uses
  %i.y = load i8, ptr %i.k, align 8, !tbaa !46, !range !47, !noundef !48
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %i.ab = load i32, ptr %i.l, align 4, !tbaa !50  ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i.i.i.i
  %.not17.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not17.i.i.i.i, label %.thread40.i, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i.i, label %.thread40.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %.01218.i.i.i.i = phi ptr [ %i.ae, %bb.e ], [ %i.aa, %bb.d ] ; 2 uses
  %i.af = load ptr, ptr %.01218.i.i.i.i, align 8, !tbaa !51
  %.not15.i.i.i.i = icmp eq ptr %i.af, %i.x
  br i1 %.not15.i.i.i.i, label %bb.f, label %bb.e

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i: ; preds = %.lr.ph.split.i
  %i.ag = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.j, ptr noundef %i.x) #17
  %.not43.i = icmp eq ptr %i.ag, null             ; 2 uses
  %.not21.i = icmp eq ptr %.01545.i, null
  %brmerge.i = select i1 %.not43.i, i1 true, i1 %.not21.i
  %.015.mux.i = select i1 %.not43.i, ptr %.01545.i, ptr %i.x
  br i1 %brmerge.i, label %.thread40.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE15getExitingBlockEv.exit.thread31

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %.not2131.i = icmp eq ptr %.01545.i, null
  br i1 %.not2131.i, label %.thread40.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE15getExitingBlockEv.exit.thread31

.thread40.i:                                      ; preds = %bb.e, %bb.f, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i, %bb.d
  %i.ah = phi ptr [ %.015.mux.i, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i ], [ %i.x, %bb.f ], [ %.01545.i, %bb.d ], [ %.01545.i, %bb.e ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01446.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.i
  br i1 %.not.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit, label %.lr.ph.split.i, !llvm.loop !4

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit: ; preds = %.thread40.i, %.thread40.us.i
  %spec.select.i = phi ptr [ %i.v, %.thread40.us.i ], [ %i.ah, %.thread40.i ] ; 8 uses
  %.not.not = icmp eq ptr %spec.select.i, null
  br i1 %.not.not, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE15getExitingBlockEv.exit.thread31, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 112
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !54 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 120
  %i.am = load i32, ptr %i.al, align 8, !tbaa !55 ; 2 uses
  %i.an = zext i32 %i.am to i64
  %.idx.i7 = shl nuw nsw i64 %i.an, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i7 ; 2 uses
  %.not21.not.i = icmp eq i32 %i.am, 0
  br i1 %.not21.not.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE13isLoopExitingEPKS1_.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.g
  %i.ap = load i8, ptr %i.k, align 8, !tbaa !46, !range !47, !noundef !48
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.split.us.i17, label %.lr.ph.split.i9

.lr.ph.split.us.i17:                              ; preds = %.lr.ph.i8
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %i.as = load i32, ptr %i.l, align 4, !tbaa !50  ; 2 uses
  %i.at = zext i32 %i.as to i64
  %.idx.i.i.i.us.i18 = shl nuw nsw i64 %i.at, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx.i.i.i.us.i18
  %.not17.i.i.i.us.i19 = icmp eq i32 %i.as, 0
  br i1 %.not17.i.i.i.us.i19, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE15getExitingBlockEv.exit.thread31, label %.lr.ph.i.i.i.preheader.us.i20

.lr.ph.i.i.i.preheader.us.i20:                    ; preds = %.lr.ph.split.us.i17, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread14.loopexit.us.i
  %.01022.us.i = phi ptr [ %i.ay, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread14.loopexit.us.i ], [ %i.ak, %.lr.ph.split.us.i17 ] ; 2 uses
  %i.av = load ptr, ptr %.01022.us.i, align 8, !tbaa !44
  br label %.lr.ph.i.i.i.us.i21

.lr.ph.i.i.i.us.i21:                              ; preds = %bb.h, %.lr.ph.i.i.i.preheader.us.i20
  %.01218.i.i.i.us.i22 = phi ptr [ %i.ax, %bb.h ], [ %i.ar, %.lr.ph.i.i.i.preheader.us.i20 ] ; 2 uses
  %i.aw = load ptr, ptr %.01218.i.i.i.us.i22, align 8, !tbaa !51
  %.not15.i.i.i.us.i23 = icmp eq ptr %i.aw, %i.av
  br i1 %.not15.i.i.i.us.i23, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread14.loopexit.us.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.us.i21
  %i.ax = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.us.i22, i64 8 ; 2 uses
  %.not.i.i.i.us.i24 = icmp eq ptr %i.ax, %i.au
  br i1 %.not.i.i.i.us.i24, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE15getExitingBlockEv.exit.thread31, label %.lr.ph.i.i.i.us.i21

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread14.loopexit.us.i: ; preds = %.lr.ph.i.i.i.us.i21
  %i.ay = getelementptr inbounds nuw i8, ptr %.01022.us.i, i64 8 ; 2 uses
  %.not.us.not.i = icmp eq ptr %i.ay, %i.ao
  br i1 %.not.us.not.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE13isLoopExitingEPKS1_.exit, label %.lr.ph.i.i.i.preheader.us.i20

.lr.ph.split.i9:                                  ; preds = %.lr.ph.i8, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread14.i
  %.01022.i = phi ptr [ %i.bj, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread14.i ], [ %i.ak, %.lr.ph.i8 ] ; 2 uses
  %i.az = load ptr, ptr %.01022.i, align 8, !tbaa !44 ; 2 uses
  %i.ba = load i8, ptr %i.k, align 8, !tbaa !46, !range !47, !noundef !48
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i10

bb.i:                                             ; preds = %.lr.ph.split.i9
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %i.bd = load i32, ptr %i.l, align 4, !tbaa !50  ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %.idx.i.i.i.i11 = shl nuw nsw i64 %i.be, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i.i.i.i11
  %.not17.i.i.i.i12 = icmp eq i32 %i.bd, 0
  br i1 %.not17.i.i.i.i12, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE15getExitingBlockEv.exit.thread31, label %.lr.ph.i.i.i.i13

bb.j:                                             ; preds = %.lr.ph.i.i.i.i13
  %i.bg = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i14, i64 8 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.bg, %i.bf
  br i1 %.not.i.i.i.i16, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE15getExitingBlockEv.exit.thread31, label %.lr.ph.i.i.i.i13

.lr.ph.i.i.i.i13:                                 ; preds = %bb.i, %bb.j
  %.01218.i.i.i.i14 = phi ptr [ %i.bg, %bb.j ], [ %i.bc, %bb.i ] ; 2 uses
  %i.bh = load ptr, ptr %.01218.i.i.i.i14, align 8, !tbaa !51
  %.not15.i.i.i.i15 = icmp eq ptr %i.bh, %i.az
  br i1 %.not15.i.i.i.i15, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread14.i, label %bb.j

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i10: ; preds = %.lr.ph.split.i9
  %i.bi = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.j, ptr noundef %i.az) #17
  %.not17.i = icmp eq ptr %i.bi, null
  br i1 %.not17.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE15getExitingBlockEv.exit.thread31, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread14.i

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread14.i: ; preds = %.lr.ph.i.i.i.i13, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i10
  %i.bj = getelementptr inbounds nuw i8, ptr %.01022.i, i64 8 ; 2 uses
  %.not.not.i = icmp eq ptr %i.bj, %i.ao
  br i1 %.not.not.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE13isLoopExitingEPKS1_.exit, label %.lr.ph.split.i9, !llvm.loop !2

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE13isLoopExitingEPKS1_.exit: ; preds = %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread14.i, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread14.loopexit.us.i, %bb.g
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !45 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.bk, %i.bm
  br i1 %.not37.i.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE15getExitingBlockEv.exit.thread31, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE13isLoopExitingEPKS1_.exit, %.thread.us.i.i
  %.02139.us.i.i = phi ptr [ %i.bv, %.thread.us.i.i ], [ %i.bk, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE13isLoopExitingEPKS1_.exit ] ; 2 uses
  %.02238.us.i.i = phi ptr [ %.235.us.i.i, %.thread.us.i.i ], [ null, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE13isLoopExitingEPKS1_.exit ] ; 2 uses
  %i.bn = load ptr, ptr %.02139.us.i.i, align 8, !tbaa !44 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !54 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !55
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bs ; 2 uses
  %i.bu = tail call noundef ptr @_ZSt9__find_ifIPPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops10_Iter_predIZNKS0_8LoopBaseIS1_NS0_11MachineLoopEE15getExitingBlockEvEUlS2_E_EEET_SC_SC_T0_St26random_access_iterator_tag(ptr noundef %i.bp, ptr noundef %i.bt, ptr nonnull align 8 dereferenceable(144) %0)
  %.not.i.us.i.i = icmp eq ptr %i.bt, %i.bu
  %.not2936.us.i.i = icmp eq ptr %i.bn, null
  %.not29.us.i.i = or i1 %.not2936.us.i.i, %.not.i.us.i.i
  br i1 %.not29.us.i.i, label %.thread.us.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.us.i.i
  %.not30.us.i.i = icmp eq ptr %.02238.us.i.i, null
  br i1 %.not30.us.i.i, label %.thread.us.i.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE15getExitingBlockEv.exit.thread31

.thread.us.i.i:                                   ; preds = %bb.k, %.lr.ph.split.us.i.i
  %.235.us.i.i = phi ptr [ %.02238.us.i.i, %.lr.ph.split.us.i.i ], [ %i.bn, %bb.k ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02139.us.i.i, i64 8 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.bv, %i.bm
  br i1 %.not.us.i.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE15getExitingBlockEv.exit.thread31, label %.lr.ph.split.us.i.i

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE15getExitingBlockEv.exit.thread31: ; preds = %bb.f, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i, %bb.c, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i10, %bb.i, %bb.j, %bb.h, %bb.k, %.thread.us.i.i, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit, %bb.a, %.lr.ph.split.us.i, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE13isLoopExitingEPKS1_.exit, %.lr.ph.split.us.i17
  %i.bw = phi ptr [ null, %.lr.ph.split.us.i ], [ %spec.select.i, %.lr.ph.split.us.i17 ], [ null, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE13isLoopExitingEPKS1_.exit ], [ null, %bb.a ], [ null, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit ], [ %spec.select.i, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i10 ], [ %spec.select.i, %bb.h ], [ %spec.select.i, %bb.j ], [ null, %bb.c ], [ %.235.us.i.i, %.thread.us.i.i ], [ null, %bb.k ], [ %spec.select.i, %bb.i ], [ null, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i ], [ null, %bb.f ]
  ret ptr %i.bw
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZNK4llvm11MachineLoop11getStartLocEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE18getLoopPredecessorEv(ptr noundef nonnull align 8 dereferenceable(144) %0) ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock18isLegalToHoistIntoEv(ptr noundef nonnull align 8 dereferenceable(360) %i.a) #17
  br i1 %i.b, label %bb.c, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !55
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit.thread

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !279  ; 2 uses
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !282
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !513  ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit.thread, label %bb.f

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit.thread: ; preds = %bb.d, %bb.a, %bb.c, %bb.b, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44   ; 2 uses
  %.not18 = icmp eq ptr %i.o, null
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !279  ; 2 uses
  %.not19 = icmp eq ptr %i.q, null
  br i1 %.not19, label %bb.f, label %.critedge21

.critedge21:                                      ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !282
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !513
  %i.v = inttoptr i64 %i.u to ptr
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit.thread, %bb.e, %.critedge21, %bb.d
  %.sroa.0.3 = phi ptr [ %i.l, %bb.d ], [ %i.v, %.critedge21 ], [ null, %bb.e ], [ null, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit.thread ]
  ret ptr %.sroa.0.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm15MachineLoopInfo17findLoopPreheaderEPNS_11MachineLoopEbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0, ptr noundef nonnull %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE18getLoopPredecessorEv(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock18isLegalToHoistIntoEv(ptr noundef nonnull align 8 dereferenceable(360) %i.a) #17
  br i1 %i.b, label %bb.c, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !55
  %i.e = icmp eq i32 %i.d, 1
  %spec.select.i = select i1 %i.e, ptr %i.a, ptr null
  br label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.b ], [ %spec.select.i, %bb.c ], [ null, %bb.a ] ; 2 uses
  %.not.not = icmp eq ptr %.0.i, null
  %brmerge.not = and i1 %2, %.not.not
  br i1 %brmerge.not, label %bb.d, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.thread

bb.d:                                             ; preds = %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !55   ; 5 uses
  %i.m = zext i32 %i.l to i64
  %.idx.i = shl nuw nsw i64 %i.m, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i ; 2 uses
  %.not44.i = icmp eq i32 %i.l, 0
  br i1 %.not44.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.r = load i8, ptr %i.p, align 8, !tbaa !46, !range !47, !noundef !48
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !49   ; 2 uses
  %i.u = load i32, ptr %i.q, align 4, !tbaa !50   ; 2 uses
  %i.v = zext i32 %i.u to i64
  %.idx.i.i.i.us.i = shl nuw nsw i64 %i.v, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i.i.us.i
  %.not17.i.i.i.us.i = icmp eq i32 %i.u, 0
  br i1 %.not17.i.i.i.us.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit, label %.lr.ph.i.i.i.preheader.us.i

.lr.ph.i.i.i.preheader.us.i:                      ; preds = %.lr.ph.split.us.i, %.thread40.us.i
  %.01446.us.i = phi ptr [ %i.ab, %.thread40.us.i ], [ %i.j, %.lr.ph.split.us.i ] ; 2 uses
  %.01545.us.i = phi ptr [ %i.aa, %.thread40.us.i ], [ null, %.lr.ph.split.us.i ] ; 2 uses
  %i.x = load ptr, ptr %.01446.us.i, align 8, !tbaa !44 ; 2 uses
  br label %.lr.ph.i.i.i.us.i

.lr.ph.i.i.i.us.i:                                ; preds = %bb.e, %.lr.ph.i.i.i.preheader.us.i
  %.01218.i.i.i.us.i = phi ptr [ %i.z, %bb.e ], [ %i.t, %.lr.ph.i.i.i.preheader.us.i ] ; 2 uses
  %i.y = load ptr, ptr %.01218.i.i.i.us.i, align 8, !tbaa !51
  %.not15.i.i.i.us.i = icmp eq ptr %i.y, %i.x
  br i1 %.not15.i.i.i.us.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.us.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.us.i, i64 8 ; 2 uses
  %.not.i.i.i.us.i = icmp eq ptr %i.z, %i.w
  br i1 %.not.i.i.i.us.i, label %.thread40.us.i, label %.lr.ph.i.i.i.us.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.us.i
  %.not2131.us.i = icmp eq ptr %.01545.us.i, null
  br i1 %.not2131.us.i, label %.thread40.us.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit

.thread40.us.i:                                   ; preds = %bb.e, %bb.f
  %i.aa = phi ptr [ %i.x, %bb.f ], [ %.01545.us.i, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01446.us.i, i64 8 ; 2 uses
  %.not.us.i = icmp eq ptr %i.ab, %i.n
  br i1 %.not.us.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit, label %.lr.ph.i.i.i.preheader.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.thread40.i
  %.01446.i = phi ptr [ %i.an, %.thread40.i ], [ %i.j, %.lr.ph.i ] ; 2 uses
  %.01545.i = phi ptr [ %i.am, %.thread40.i ], [ null, %.lr.ph.i ] ; 5 uses
  %i.ac = load ptr, ptr %.01446.i, align 8, !tbaa !44 ; 4 uses
  %i.ad = load i8, ptr %i.p, align 8, !tbaa !46, !range !47, !noundef !48
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !49  ; 2 uses
  %i.ag = load i32, ptr %i.q, align 4, !tbaa !50  ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ah, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i.i.i.i
  %.not17.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not17.i.i.i.i, label %.thread40.i, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i.i.i, label %.thread40.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.01218.i.i.i.i = phi ptr [ %i.aj, %bb.h ], [ %i.af, %bb.g ] ; 2 uses
  %i.ak = load ptr, ptr %.01218.i.i.i.i, align 8, !tbaa !51
  %.not15.i.i.i.i = icmp eq ptr %i.ak, %i.ac
  br i1 %.not15.i.i.i.i, label %bb.i, label %bb.h

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i: ; preds = %.lr.ph.split.i
  %i.al = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.o, ptr noundef %i.ac) #17
  %.not43.i = icmp eq ptr %i.al, null             ; 2 uses
  %.not21.i = icmp eq ptr %.01545.i, null
  %brmerge.i = select i1 %.not43.i, i1 true, i1 %.not21.i
  %.015.mux.i = select i1 %.not43.i, ptr %.01545.i, ptr %i.ac
  br i1 %brmerge.i, label %.thread40.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.loopexit101

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %.not2131.i = icmp eq ptr %.01545.i, null
  br i1 %.not2131.i, label %.thread40.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.loopexit101

.thread40.i:                                      ; preds = %bb.h, %bb.i, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i, %bb.g
  %i.am = phi ptr [ %.015.mux.i, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i ], [ %i.ac, %bb.i ], [ %.01545.i, %bb.g ], [ %.01545.i, %bb.h ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01446.i, i64 8 ; 2 uses
  %.not.i65 = icmp eq ptr %i.an, %i.n
  br i1 %.not.i65, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.loopexit101, label %.lr.ph.split.i, !llvm.loop !4

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.loopexit101: ; preds = %.thread40.i, %bb.i, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i
  %spec.select.i64.ph.ph102 = phi ptr [ null, %bb.i ], [ %i.am, %.thread40.i ], [ null, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i ]
  %.pr.pre = load i32, ptr %i.k, align 8, !tbaa !55
  br label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit: ; preds = %bb.f, %.thread40.us.i, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.loopexit101, %.lr.ph.split.us.i
  %.pr = phi i32 [ %.pr.pre, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.loopexit101 ], [ %i.l, %.lr.ph.split.us.i ], [ %i.l, %.thread40.us.i ], [ %i.l, %bb.f ]
  %spec.select.i64.ph = phi ptr [ %spec.select.i64.ph.ph102, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.loopexit101 ], [ null, %.lr.ph.split.us.i ], [ null, %bb.f ], [ %i.aa, %.thread40.us.i ] ; 2 uses
  %.not57 = icmp eq i32 %.pr, 2
  br i1 %.not57, label %bb.j, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.thread

bb.j:                                             ; preds = %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 217
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !514, !range !47, !noundef !48
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.as = load ptr, ptr %i.ar, align 8
  %.not.i66 = icmp ne ptr %i.as, null
  %or.cond.not.i = select i1 %i.aq, i1 true, i1 %.not.i66
  br i1 %or.cond.not.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.thread, label %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit

_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit: ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 330
  %i.au = load i8, ptr %i.at, align 2, !tbaa !515, !range !47, !noundef !48
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.thread, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !54  ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !44 ; 2 uses
  %.not = icmp eq ptr %i.ax, %spec.select.i64.ph
  %.1 = select i1 %.not, ptr null, ptr %i.ax      ; 2 uses
  %.04392.ptr.1 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %.04392.ptr.1, align 8, !tbaa !44 ; 2 uses
  %i.az = icmp ne ptr %i.ay, %spec.select.i64.ph  ; 2 uses
  %.not59.1 = icmp ne ptr %.1, null               ; 2 uses
  %.not84.1 = select i1 %i.az, i1 %.not59.1, i1 false
  br i1 %.not84.1, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.1
  %i.ba = xor i1 %.not59.1, true
  %i.bb = select i1 %i.az, i1 %i.ba, i1 false
  %.1.1 = select i1 %i.bb, ptr %i.ay, ptr %.1     ; 5 uses
  br i1 %3, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.1, i64 112
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !54 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.1.1, i64 120
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !55 ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %.idx = shl nuw nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx
  %.not6093 = icmp eq i32 %i.bf, 0
  br i1 %.not6093, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.thread, label %.lr.ph96

.lr.ph96:                                         ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph96, %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread
  %.094 = phi ptr [ %i.bd, %.lr.ph96 ], [ %i.bx, %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread ] ; 2 uses
  %i.bj = load ptr, ptr %.094, align 8, !tbaa !44 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, %i.h
  br i1 %i.bk, label %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 220
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !121 ; 2 uses
  %i.bn = load i32, ptr %i.bi, align 8, !tbaa !55
  %i.bo = icmp ugt i32 %i.bn, %i.bm
  br i1 %i.bo, label %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit, label %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread

_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit: ; preds = %bb.m
  %i.bp = zext i32 %i.bm to i64
  %i.bq = load ptr, ptr %0, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65 ; 2 uses
  %.not61 = icmp eq ptr %i.bs, null
  br i1 %.not61, label %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !42
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !44
  %i.bw = icmp eq ptr %i.bv, %i.bj
  br i1 %i.bw, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.thread, label %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread

_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread: ; preds = %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit, %bb.n, %bb.m, %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.094, i64 8 ; 2 uses
  %.not60 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not60, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.thread, label %bb.l

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit.thread: ; preds = %bb.n, %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread, %.lr.ph.1, %bb.k, %bb.j, %bb.d, %._crit_edge, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit, %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit
  %.10 = phi ptr [ null, %bb.d ], [ %.0.i, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE16getLoopPreheaderEv.exit ], [ null, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12getLoopLatchEv.exit ], [ null, %_ZNK4llvm17MachineBasicBlock15hasAddressTakenEv.exit ], [ null, %bb.j ], [ %.1.1, %bb.k ], [ %.1.1, %._crit_edge ], [ null, %.lr.ph.1 ], [ null, %bb.n ], [ %.1.1, %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread ]
  ret ptr %.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm11MachineLoop9getLoopIDEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::SmallVector", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 4, ptr %i.c, align 4, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !55   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx.i = shl nuw nsw i64 %i.k, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i
  %.not14.i = icmp eq i32 %i.j, 0
  br i1 %.not14.i, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit.i, %.lr.ph.i
  %.015.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.ag, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit.i ] ; 2 uses
  %i.p = load ptr, ptr %.015.i, align 8, !tbaa !44 ; 4 uses
  %i.q = load i8, ptr %i.n, align 8, !tbaa !46, !range !47, !noundef !48
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !49   ; 2 uses
  %i.t = load i32, ptr %i.o, align 4, !tbaa !50   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.u, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i.i.i.i
  %.not17.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not17.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit.i, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.v
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.01218.i.i.i.i = phi ptr [ %i.w, %bb.d ], [ %i.s, %bb.c ] ; 2 uses
  %i.x = load ptr, ptr %.01218.i.i.i.i, align 8, !tbaa !51
  %.not15.i.i.i.i = icmp eq ptr %i.x, %i.p
  br i1 %.not15.i.i.i.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread11.i, label %bb.d

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i: ; preds = %bb.b
  %i.y = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.m, ptr noundef %i.p) #17
  %.not13.i = icmp eq ptr %i.y, null
  br i1 %.not13.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread11.i

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread11.i: ; preds = %.lr.ph.i.i.i.i, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i
  %i.z = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !57
  %.not.i.i = icmp ult i32 %i.z, %i.aa
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !58

bb.e:                                             ; preds = %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread11.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit.i

bb.f:                                             ; preds = %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.thread11.i
  %i.ab = zext i32 %i.z to i64
  %i.ac = load ptr, ptr %1, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  store ptr %i.p, ptr %i.ad, align 1
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !55
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit.i: ; preds = %bb.d, %bb.f, %bb.e, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, %i.l
  br i1 %.not.i, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE14getLoopLatchesERNS_15SmallVectorImplIPS1_EE.exit, label %bb.b

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE14getLoopLatchesERNS_15SmallVectorImplIPS1_EE.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !54    ; 4 uses
  %.pre72 = load i32, ptr %i.b, align 8, !tbaa !55 ; 2 uses
  %i.ah = zext i32 %.pre72 to i64
  %.idx = shl nuw nsw i64 %i.ah, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx
  %.not69 = icmp eq i32 %.pre72, 0
  br i1 %.not69, label %.thread61, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE14getLoopLatchesERNS_15SmallVectorImplIPS1_EE.exit, %.thread56
  %.02771 = phi ptr [ %i.as, %.thread56 ], [ %.pre, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE14getLoopLatchesERNS_15SmallVectorImplIPS1_EE.exit ] ; 2 uses
  %.02870 = phi ptr [ %.459, %.thread56 ], [ null, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE14getLoopLatchesERNS_15SmallVectorImplIPS1_EE.exit ] ; 3 uses
  %i.aj = load ptr, ptr %.02771, align 8, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !279 ; 2 uses
  %.not41 = icmp eq ptr %i.al, null
  br i1 %.not41, label %.thread61, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !282 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !528
  %.not.i49 = icmp eq i32 %i.ap, 0
  br i1 %.not.i49, label %.thread61, label %_ZNK4llvm11Instruction11getMetadataEj.exit

_ZNK4llvm11Instruction11getMetadataEj.exit:       ; preds = %bb.g
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 -24
  %i.ar = call noundef ptr @_ZNK4llvm5Value15getMetadataImplEj(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, i32 noundef 18) #21 ; 3 uses
  %.not43 = icmp eq ptr %i.ar, null
  br i1 %.not43, label %.thread61, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm11Instruction11getMetadataEj.exit
  %.not44 = icmp eq ptr %.02870, null
  br i1 %.not44, label %.thread56, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not45 = icmp eq ptr %i.ar, %.02870
  br i1 %.not45, label %.thread56, label %.thread61

.thread56:                                        ; preds = %bb.h, %bb.i
  %.459 = phi ptr [ %.02870, %bb.i ], [ %i.ar, %bb.h ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.02771, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.ai
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.thread56
  %i.at = getelementptr inbounds i8, ptr %.459, i64 -16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 3 uses
  %i.av = and i64 %i.au, 2
  %.not.i.i50 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i50, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread

_ZNK4llvm6MDNode14getNumOperandsEv.exit:          ; preds = %._crit_edge
  %i.aw = and i64 %i.au, 960
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.thread61, label %bb.j

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread:   ; preds = %._crit_edge
  %i.ay = getelementptr inbounds i8, ptr %.459, i64 -24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !55
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.thread61, label %.thread67

.thread67:                                        ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread
  %i.bb = getelementptr inbounds i8, ptr %.459, i64 -32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !54
  br label %_ZNK4llvm6MDNode10getOperandEj.exit

bb.j:                                             ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit
  %i.bd = lshr i64 %i.au, 2
  %i.be = and i64 %i.bd, 15
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bf
  br label %_ZNK4llvm6MDNode10getOperandEj.exit

_ZNK4llvm6MDNode10getOperandEj.exit:              ; preds = %.thread67, %bb.j
  %.sroa.0.0.i.i = phi ptr [ %i.bg, %bb.j ], [ %i.bc, %.thread67 ]
  %i.bh = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !531
  %.not47 = icmp eq ptr %i.bh, %.459
  %spec.select48 = select i1 %.not47, ptr %.459, ptr null
  br label %.thread61

.thread61:                                        ; preds = %bb.g, %_ZNK4llvm11Instruction11getMetadataEj.exit, %.lr.ph, %bb.i, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE14getLoopLatchesERNS_15SmallVectorImplIPS1_EE.exit, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread, %_ZNK4llvm6MDNode10getOperandEj.exit, %_ZNK4llvm6MDNode14getNumOperandsEv.exit
  %.537 = phi ptr [ null, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE14getLoopLatchesERNS_15SmallVectorImplIPS1_EE.exit ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit ], [ %spec.select48, %_ZNK4llvm6MDNode10getOperandEj.exit ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread ], [ null, %bb.i ], [ null, %.lr.ph ], [ null, %_ZNK4llvm11Instruction11getMetadataEj.exit ], [ null, %bb.g ] ; 2 uses
  %i.bi = icmp eq ptr %.pre, %i.a
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread61
  call void @free(ptr noundef %.pre) #17
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit: ; preds = %bb.a, %.thread61, %bb.k
  %.53784 = phi ptr [ %.537, %bb.k ], [ %.537, %.thread61 ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret ptr %.53784
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !285  ; 3 uses
  %i.h = tail call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo17isConstantPhysRegENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.g, i32 %1) #17
  br i1 %i.h, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_11MachineLoop30isLoopInvariantImplicitPhysRegENS_8RegisterEE3$_0EEbOT_T0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !286, !nonnull !48, !align !268 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !274
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(344) %i.j) #17 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !274
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 176
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(316) %i.n, i32 %1) #17
  br i1 %i.r, label %bb.c, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_11MachineLoop30isLoopInvariantImplicitPhysRegENS_8RegisterEE3$_0EEbOT_T0_.exit"

bb.c:                                             ; preds = %bb.b
  %i.s = icmp slt i32 %1, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.u = and i32 %1, 2147483647
  %i.v = zext nneg i32 %i.u to i64
  %i.w = load ptr, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.aa = zext nneg i32 %1 to i64
  %i.ab = load ptr, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %.0.in.i.i.i = select i1 %i.s, ptr %i.y, ptr %i.ac
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !535 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_11MachineLoop30isLoopInvariantImplicitPhysRegENS_8RegisterEE3$_0EEbOT_T0_.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i32, ptr %.0.i.i.i, align 8
  %i.ae = and i32 %i.ad, 16777216
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %.lr.ph.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !240 ; 3 uses
  %.not.i4.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i4.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_11MachineLoop30isLoopInvariantImplicitPhysRegENS_8RegisterEE3$_0EEbOT_T0_.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 16777216
  %.not.i.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_11MachineLoop30isLoopInvariantImplicitPhysRegENS_8RegisterEE3$_0EEbOT_T0_.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %bb.f
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i, %bb.d ], [ %i.ag, %bb.f ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.am = load i8, ptr %i.ak, align 8, !tbaa !46, !range !47, !noundef !48
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.lr.ph.split.us.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.i.i.preheader:               ; preds = %.lr.ph.i.i.i.i.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %.pre33 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !538
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.ap = load i32, ptr %i.al, align 4, !tbaa !50 ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %.idx.i.i.i.i.i.i.us.i.i.i.i.i.i = shl nuw nsw i64 %i.aq, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i.i.i.i.i.i.us.i.i.i.i.i.i
  %.not17.i.i.i.i.i.i.us.i.i.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not17.i.i.i.i.i.i.us.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_11MachineLoop30isLoopInvariantImplicitPhysRegENS_8RegisterEE3$_0EEbOT_T0_.exit", label %.lr.ph.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.us.i.i.i.i.i.i
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %.pre35 = load ptr, ptr %.phi.trans.insert34, align 8, !tbaa !538
  br label %.lr.ph.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.preheader, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.us.i.i.i.i.i.i
  %i.as = phi ptr [ %i.bb, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.us.i.i.i.i.i.i ], [ %.pre35, %.lr.ph.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.03.013.us.i.i.i.i.i.i = phi ptr [ %i.ax, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.us.i.i.i.i.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i.preheader ]
  %i.at = getelementptr i8, ptr %i.as, i64 24
  %.val1.i.us.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !294
  br label %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i:                ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i
  %.01218.i.i.i.i.i.i.us.i.i.i.i.i.i = phi ptr [ %i.av, %bb.g ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i ] ; 2 uses
  %i.au = load ptr, ptr %.01218.i.i.i.i.i.i.us.i.i.i.i.i.i, align 8, !tbaa !51
  %.not15.i.i.i.i.i.i.us.i.i.i.i.i.i = icmp eq ptr %i.au, %.val1.i.us.i.i.i.i.i.i
  br i1 %.not15.i.i.i.i.i.i.us.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_11MachineLoop30isLoopInvariantImplicitPhysRegENS_8RegisterEE3$_0EEbOT_T0_.exit", label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i.i.us.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.us.i.i.i.i.i.i = icmp eq ptr %i.av, %i.ar
  br i1 %.not.i.i.i.i.i.i.us.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.loopexit.us.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.loopexit.us.i.i.i.i.i.i": ; preds = %bb.g, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i.us.i.i.i.i.i.i
  %.pr3.i.us.i.i.i.i.i.i = phi ptr [ %i.ax, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i.us.i.i.i.i.i.i ], [ %.sroa.03.013.us.i.i.i.i.i.i, %bb.g ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.pr3.i.us.i.i.i.i.i.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !240 ; 5 uses
  %.not.i.i.us.i.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.us.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_11MachineLoop30isLoopInvariantImplicitPhysRegENS_8RegisterEE3$_0EEbOT_T0_.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.loopexit.us.i.i.i.i.i.i"
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = and i32 %i.ay, 16777216
  %.not.i.i.i.us.i.i.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.us.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_11MachineLoop30isLoopInvariantImplicitPhysRegENS_8RegisterEE3$_0EEbOT_T0_.exit", label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i.us.i.i.i.i.i.i

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i.us.i.i.i.i.i.i: ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !538 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.as
  br i1 %i.bc, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.loopexit.us.i.i.i.i.i.i", label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.us.i.i.i.i.i.i, !llvm.loop !532

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.us.i.i.i.i.i.i: ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i.us.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.preheader.us.i.i.i.i.i.i, !llvm.loop !533

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i.preheader, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.i.i.i.i.i.i
  %i.bd = phi ptr [ %i.bv, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.i.i.i.i.i.i ], [ %.pre33, %.lr.ph.split.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.be = phi i8 [ %.pre, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.split.i.i.i.i.i.i.preheader ]
  %.sroa.03.013.i.i.i.i.i.i = phi ptr [ %i.br, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.split.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.03.013.i.i.i.i.i.i, i64 8
  %i.bg = getelementptr i8, ptr %i.bd, i64 24
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !294 ; 2 uses
  %i.bh = trunc nuw i8 %i.be to i1
  br i1 %i.bh, label %bb.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i"

bb.i:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.bj = load i32, ptr %i.al, align 4, !tbaa !50 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  %.not17.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not17.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.bl
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.i, %bb.j
  %.01218.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %bb.j ], [ %i.bi, %bb.i ] ; 2 uses
  %i.bn = load ptr, ptr %.01218.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !51
  %.not15.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %.val1.i.i.i.i.i.i.i
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_11MachineLoop30isLoopInvariantImplicitPhysRegENS_8RegisterEE3$_0EEbOT_T0_.exit", label %bb.j

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.bo = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.aj, ptr noundef %.val1.i.i.i.i.i.i.i) #17
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not8.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit._ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread_crit_edge.i.i.i.i.i.i", label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_11MachineLoop30isLoopInvariantImplicitPhysRegENS_8RegisterEE3$_0EEbOT_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit._ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread_crit_edge.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !538
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i": ; preds = %bb.j, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit._ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread_crit_edge.i.i.i.i.i.i", %bb.i
  %i.bp = phi ptr [ %.pre.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit._ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread_crit_edge.i.i.i.i.i.i" ], [ %i.bd, %bb.i ], [ %i.bd, %bb.j ]
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i"
  %.pr3.i.i.i.i.i.i.i = phi ptr [ %i.br, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i.i.i.i.i.i.i ], [ %.sroa.03.013.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.i.i.i.i.i.i" ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.pr3.i.i.i.i.i.i.i, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !240 ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_11MachineLoop30isLoopInvariantImplicitPhysRegENS_8RegisterEE3$_0EEbOT_T0_.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = and i32 %i.bs, 16777216
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm6any_ofINS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_11MachineLoop30isLoopInvariantImplicitPhysRegENS_8RegisterEE3$_0EEbOT_T0_.exit", label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i.i.i.i.i.i.i

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !538 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bp
  br i1 %i.bw, label %bb.k, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.i.i.i.i.i.i, !llvm.loop !532

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEppEv.exit.i.i.i.i.i.i: ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EE7advanceEv.exit.i.i.i.i.i.i.i
  %.pre = load i8, ptr %i.ak, align 8, !tbaa !46, !range !47
  br label %.lr.ph.split.i.i.i.i.i.i, !llvm.loop !534

"_ZN4llvm6any_ofINS_14iterator_rangeINS_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEZNKS_11MachineLoop30isLoopInvariantImplicitPhysRegENS_8RegisterEE3$_0EEbOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %bb.l, %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.loopexit.us.i.i.i.i.i.i", %bb.h, %.lr.ph.split.us.i.i.i.i.i.i, %bb.c, %bb.e, %bb.f, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.f ], [ false, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.k ], [ false, %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ true, %.lr.ph.split.us.i.i.i.i.i.i ], [ true, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.thread.loopexit.us.i.i.i.i.i.i" ], [ true, %bb.c ], [ true, %bb.e ], [ true, %bb.h ], [ true, %bb.l ], [ false, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS2_8RegisterEE3$_0EclINS2_19MachineRegisterInfo26defusechain_instr_iteratorILb0ELb1ELb0ELb1EEEEEbT_.exit.i.i.i.i.i.i" ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo17isConstantPhysRegENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm11MachineLoop15isLoopInvariantERNS_12MachineInstrENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !294
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !285
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !286, !nonnull !48, !align !268 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !274
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(344) %i.h) #17 ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !274
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(344) %i.h) #17 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !539  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i24, ptr %i.s, align 8              ; 2 uses
  %i.u = zext i24 %i.t to i64
  %.idx = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %.not55 = icmp eq i24 %i.t, 0
  br i1 %.not55, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 68
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread43
  %.03456 = phi ptr [ %i.r, %.lr.ph ], [ %i.bn, %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread43 ] ; 5 uses
  %i.aa = load i32, ptr %.03456, align 8          ; 4 uses
  %i.ab = and i32 %i.aa, 255
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread43

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %.03456, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !240 ; 7 uses
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = icmp eq i32 %2, %i.ae
  %or.cond = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread43, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = icmp ult i32 %i.ae, 1073741824
  br i1 %i.ah, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.ai = and i32 %i.aa, 16777216
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call noundef zeroext i1 @_ZNK4llvm11MachineLoop30isLoopInvariantImplicitPhysRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %i.ae)
  br i1 %i.aj, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread43, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #17
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !274
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 184
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(316) %i.l, i32 %i.ae, ptr noundef nonnull align 8 dereferenceable(1065) %i.ak) #17
  br i1 %i.ao, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !274
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(112) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %.03456) #17
  br i1 %i.as, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread43, label %.critedge

bb.i:                                             ; preds = %bb.e
  %i.at = and i32 %i.aa, 83886080
  %i.au = icmp eq i32 %i.at, 83886080
  br i1 %i.au, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44
  %i.ax = tail call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock8isLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360) %i.aw, i32 %i.ae, i64 -1) #17
  br i1 %i.ax, label %.critedge, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %.pre = load i32, ptr %.03456, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.d
  %i.ay = phi i32 [ %.pre, %._crit_edge ], [ %i.aa, %bb.d ] ; 2 uses
  %i.az = and i32 %i.ay, 805306368
  %or.cond.not.i = icmp ne i32 %i.az, 0
  %i.ba = and i32 %i.ay, 17825536
  %or.cond49.not = icmp eq i32 %i.ba, 16777216
  %or.cond51 = or i1 %or.cond.not.i, %or.cond49.not
  br i1 %or.cond51, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread43, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread

_ZNK4llvm14MachineOperand8readsRegEv.exit.thread: ; preds = %bb.k
  %i.bb = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.f, i32 %i.ae) #17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !294 ; 2 uses
  %i.be = load i8, ptr %i.y, align 8, !tbaa !46, !range !47, !noundef !48
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.l, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsINS_12MachineInstrEEEbPKT_.exit

bb.l:                                             ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread
  %i.bg = load ptr, ptr %i.x, align 8, !tbaa !49  ; 2 uses
  %i.bh = load i32, ptr %i.z, align 4, !tbaa !50  ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bi, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i.i.i.i
  %.not17.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not17.i.i.i.i, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread43, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, %i.bj
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread43, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %.01218.i.i.i.i = phi ptr [ %i.bk, %bb.m ], [ %i.bg, %bb.l ] ; 2 uses
  %i.bl = load ptr, ptr %.01218.i.i.i.i, align 8, !tbaa !51
  %.not15.i.i.i.i = icmp eq ptr %i.bl, %i.bd
  br i1 %.not15.i.i.i.i, label %.critedge, label %bb.m

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsINS_12MachineInstrEEEbPKT_.exit: ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread
  %i.bm = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.x, ptr noundef %i.bd) #17
  %.not50 = icmp eq ptr %i.bm, null
  br i1 %.not50, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread43, label %.critedge

_ZNK4llvm14MachineOperand8readsRegEv.exit.thread43: ; preds = %bb.m, %bb.l, %bb.k, %bb.f, %bb.g, %bb.h, %bb.b, %bb.c, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsINS_12MachineInstrEEEbPKT_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.03456, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bn, %i.v
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.j, %bb.i, %bb.h, %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread43, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsINS_12MachineInstrEEEbPKT_.exit, %.lr.ph.i.i.i.i, %bb.a
  %.not54 = phi i1 [ false, %.lr.ph.i.i.i.i ], [ true, %bb.a ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ true, %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread43 ], [ false, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsINS_12MachineInstrEEEbPKT_.exit ]
  ret i1 %.not54
}

declare noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock8isLiveInENS_10MCRegisterENS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(360), i32, i64) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm26MachineLoopInfoWrapperPassD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN4llvm26MachineLoopInfoWrapperPassE, i64 16), ptr %0, align 8, !tbaa !274
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !233  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !232
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #20
  br label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EED2Ev.exit.i

_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EED2Ev.exit.i
  tail call void @free(ptr noundef %i.j) #17
  br label %_ZN4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEED2Ev.exit

_ZN4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEED2Ev.exit: ; preds = %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EED2Ev.exit.i, %bb.c
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm26MachineLoopInfoWrapperPassD0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN4llvm26MachineLoopInfoWrapperPassE, i64 16), ptr %0, align 8, !tbaa !274
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(184) %i.a), !inline_history !540
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #17, !inline_history !540
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !233  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !232
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #20, !inline_history !540
  br label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4llvm26MachineLoopInfoWrapperPassD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.j) #17, !inline_history !540
  br label %_ZN4llvm26MachineLoopInfoWrapperPassD2Ev.exit

_ZN4llvm26MachineLoopInfoWrapperPassD2Ev.exit:    ; preds = %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EED2Ev.exit.i.i, %bb.c
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(240) %0) #17, !inline_history !540
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #20
  ret void
}

declare { ptr, i64 } @_ZNK4llvm4Pass11getPassNameEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !274
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.c(ptr noundef nonnull align 8 dereferenceable(56) %0) #17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.d, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8, !tbaa !274
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i64 %i.h(ptr noundef nonnull align 8 dereferenceable(56) %0) #17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %i.j, align 8
  %i.k = load ptr, ptr %0, align 8, !tbaa !274
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
define linkonce_odr hidden void @_ZN4llvm26MachineLoopInfoWrapperPass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(184) %i.a)
  ret void
}

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #3

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm45initializeMachineDominatorTreeWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN4llvm15callDefaultCtorINS_26MachineLoopInfoWrapperPassEEEPNS_4PassEv() #0 comdat {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #19 ; 2 uses
  tail call void @_ZN4llvm26MachineLoopInfoWrapperPassC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.a) #17
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZNK4llvm5Value15getMetadataImplEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #10

declare noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #0 comdat($_ZN4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEED5Ev) align 2 {
bb.a:
  tail call void @_ZN4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !233  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !232
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20
  br label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4llvm11SmallVectorIPNS_11MachineLoopELj6EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EED2Ev.exit
  tail call void @free(ptr noundef %i.i) #17
  br label %_ZN4llvm11SmallVectorIPNS_11MachineLoopELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_11MachineLoopELj6EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !54
  %i.g = load i32, ptr %i.a, align 8, !tbaa !55
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !55
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !55
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZSt9__find_ifIPPN4llvm17MachineBasicBlockEN9__gnu_cxx5__ops10_Iter_predIZNKS0_8LoopBaseIS1_NS0_11MachineLoopEE15getExitingBlockEvEUlS2_E_EEET_SC_SC_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr i64 %i.c, 5                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit53.thread94
  %.0146 = phi i64 [ %i.d, %.lr.ph ], [ %i.bn, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit53.thread94 ] ; 2 uses
  %.029145 = phi ptr [ %0, %.lr.ph ], [ %i.bm, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit53.thread94 ] ; 11 uses
  %i.i = load ptr, ptr %.029145, align 8, !tbaa !44 ; 2 uses
  %i.j = load i8, ptr %i.g, align 8, !tbaa !46, !range !47, !noundef !48
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %i.m = load i32, ptr %i.h, align 4, !tbaa !50   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.n, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i.i.i
  %.not17.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not17.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %.lr.ph.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.01218.i.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.q = load ptr, ptr %.01218.i.i.i.i.i, align 8, !tbaa !51
  %.not15.i.i.i.not.i.not.i = icmp eq ptr %i.q, %i.i
  br i1 %.not15.i.i.i.not.i.not.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread85.thread, label %bb.d

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread85.thread: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.029145, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44
  br label %bb.e

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit: ; preds = %bb.b
  %i.t = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.f, ptr noundef %i.i) #17
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread85

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread85: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit
  %.pre = load i8, ptr %i.g, align 8, !tbaa !46, !range !47
  %i.v = trunc nuw i8 %.pre to i1
  %i.w = getelementptr inbounds nuw i8, ptr %.029145, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !44   ; 2 uses
  br i1 %i.v, label %bb.e, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit37

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread85.thread, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread85
  %i.y = phi ptr [ %i.s, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread85.thread ], [ %i.x, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread85 ]
  %i.z = phi ptr [ %i.r, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread85.thread ], [ %i.w, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread85 ] ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !49  ; 2 uses
  %i.ab = load i32, ptr %i.h, align 4, !tbaa !50  ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i.i.i.i.i31
  %.not17.i.i.i.i.i32 = icmp eq i32 %i.ab, 0
  br i1 %.not17.i.i.i.i.i32, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %.lr.ph.i.i.i.i.i33

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i33
  %i.ae = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i34, i64 8 ; 2 uses
  %.not.i.i.i.i.i36 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i.i.i36, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %.lr.ph.i.i.i.i.i33

.lr.ph.i.i.i.i.i33:                               ; preds = %bb.e, %bb.f
  %.01218.i.i.i.i.i34 = phi ptr [ %i.ae, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.af = load ptr, ptr %.01218.i.i.i.i.i34, align 8, !tbaa !51
  %.not15.i.i.i.not.i.not.i35 = icmp eq ptr %i.af, %i.y
  br i1 %.not15.i.i.i.not.i.not.i35, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit37.thread88.thread, label %bb.f

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit37.thread88.thread: ; preds = %.lr.ph.i.i.i.i.i33
  %i.ag = getelementptr inbounds nuw i8, ptr %.029145, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  br label %bb.g

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit37: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread85
  %i.ai = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.f, ptr noundef %i.x) #17
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit37.thread88

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit37.thread88: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit37
  %.pre162 = load i8, ptr %i.g, align 8, !tbaa !46, !range !47
  %i.ak = trunc nuw i8 %.pre162 to i1
  %i.al = getelementptr inbounds nuw i8, ptr %.029145, i64 16 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44 ; 2 uses
  br i1 %i.ak, label %bb.g, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit45

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit37.thread88.thread, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit37.thread88
  %i.an = phi ptr [ %i.ah, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit37.thread88.thread ], [ %i.am, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit37.thread88 ]
  %i.ao = phi ptr [ %i.ag, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit37.thread88.thread ], [ %i.al, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit37.thread88 ] ; 2 uses
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !49  ; 2 uses
  %i.aq = load i32, ptr %i.h, align 4, !tbaa !50  ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i.i.i.i39 = shl nuw nsw i64 %i.ar, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i.i.i.i.i39
  %.not17.i.i.i.i.i40 = icmp eq i32 %i.aq, 0
  br i1 %.not17.i.i.i.i.i40, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %.lr.ph.i.i.i.i.i41

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i41
  %i.at = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i42, i64 8 ; 2 uses
  %.not.i.i.i.i.i44 = icmp eq ptr %i.at, %i.as
  br i1 %.not.i.i.i.i.i44, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %.lr.ph.i.i.i.i.i41

.lr.ph.i.i.i.i.i41:                               ; preds = %bb.g, %bb.h
  %.01218.i.i.i.i.i42 = phi ptr [ %i.at, %bb.h ], [ %i.ap, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.01218.i.i.i.i.i42, align 8, !tbaa !51
  %.not15.i.i.i.not.i.not.i43 = icmp eq ptr %i.au, %i.an
  br i1 %.not15.i.i.i.not.i.not.i43, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit45.thread91.thread, label %bb.h

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit45.thread91.thread: ; preds = %.lr.ph.i.i.i.i.i41
  %i.av = getelementptr inbounds nuw i8, ptr %.029145, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44
  br label %bb.i

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit45: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit37.thread88
  %i.ax = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.f, ptr noundef %i.am) #17
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit45.thread91

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit45.thread91: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit45
  %.pre163 = load i8, ptr %i.g, align 8, !tbaa !46, !range !47
  %i.az = trunc nuw i8 %.pre163 to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %.029145, i64 24 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !44 ; 2 uses
  br i1 %i.az, label %bb.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit53

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit45.thread91.thread, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit45.thread91
  %i.bc = phi ptr [ %i.aw, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit45.thread91.thread ], [ %i.bb, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit45.thread91 ]
  %i.bd = phi ptr [ %i.av, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit45.thread91.thread ], [ %i.ba, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit45.thread91 ] ; 2 uses
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !49  ; 2 uses
  %i.bf = load i32, ptr %i.h, align 4, !tbaa !50  ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %.idx.i.i.i.i.i47 = shl nuw nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i47
  %.not17.i.i.i.i.i48 = icmp eq i32 %i.bf, 0
  br i1 %.not17.i.i.i.i.i48, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %.lr.ph.i.i.i.i.i49

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i49
  %i.bi = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i50, i64 8 ; 2 uses
  %.not.i.i.i.i.i52 = icmp eq ptr %i.bi, %i.bh
  br i1 %.not.i.i.i.i.i52, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %bb.i, %bb.j
  %.01218.i.i.i.i.i50 = phi ptr [ %i.bi, %bb.j ], [ %i.be, %bb.i ] ; 2 uses
  %i.bj = load ptr, ptr %.01218.i.i.i.i.i50, align 8, !tbaa !51
  %.not15.i.i.i.not.i.not.i51 = icmp eq ptr %i.bj, %i.bc
  br i1 %.not15.i.i.i.not.i.not.i51, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit53.thread94, label %bb.j

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit53: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit45.thread91
  %i.bk = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.f, ptr noundef %i.bb) #17
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit53.thread94

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit53.thread94: ; preds = %.lr.ph.i.i.i.i.i49, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit53
  %i.bm = getelementptr inbounds nuw i8, ptr %.029145, i64 32 ; 3 uses
  %i.bn = add nsw i64 %.0146, -1
  %i.bo = icmp sgt i64 %.0146, 1
  br i1 %i.bo, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !541

._crit_edge.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit53.thread94
  %.pre164 = ptrtoint ptr %i.bm to i64
  %.pre165 = sub i64 %i.a, %.pre164
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi166 = phi i64 [ %.pre165, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.029.lcssa = phi ptr [ %i.bm, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 7 uses
  %i.bp = ashr exact i64 %.pre-phi166, 3
  switch i64 %i.bp, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit77.thread103 [
    i64 3, label %bb.k
    i64 2, label %bb.n
    i64 1, label %bb.q
  ]

bb.k:                                             ; preds = %._crit_edge
  %i.bq = load ptr, ptr %.029.lcssa, align 8, !tbaa !44 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !46, !range !47, !noundef !48
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.l, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit61

bb.l:                                             ; preds = %bb.k
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !49 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !50 ; 2 uses
  %i.by = zext i32 %i.bx to i64
  %.idx.i.i.i.i.i55 = shl nuw nsw i64 %i.by, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i.i.i.i.i55
  %.not17.i.i.i.i.i56 = icmp eq i32 %i.bx, 0
  br i1 %.not17.i.i.i.i.i56, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %.lr.ph.i.i.i.i.i57

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i57
  %i.ca = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i58, i64 8 ; 2 uses
  %.not.i.i.i.i.i60 = icmp eq ptr %i.ca, %i.bz
  br i1 %.not.i.i.i.i.i60, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %bb.l, %bb.m
  %.01218.i.i.i.i.i58 = phi ptr [ %i.ca, %bb.m ], [ %i.bv, %bb.l ] ; 2 uses
  %i.cb = load ptr, ptr %.01218.i.i.i.i.i58, align 8, !tbaa !51
  %.not15.i.i.i.not.i.not.i59 = icmp eq ptr %i.cb, %i.bq
  br i1 %.not15.i.i.i.not.i.not.i59, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit61.thread97, label %bb.m

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit61: ; preds = %bb.k
  %i.cc = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.br, ptr noundef %i.bq) #17
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit61.thread97

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit61.thread97: ; preds = %.lr.ph.i.i.i.i.i57, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit61
  %i.ce = getelementptr inbounds nuw i8, ptr %.029.lcssa, i64 8
  br label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit61.thread97, %._crit_edge
  %.1 = phi ptr [ %i.ce, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit61.thread97 ], [ %.029.lcssa, %._crit_edge ] ; 5 uses
  %i.cf = load ptr, ptr %.1, align 8, !tbaa !44   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !46, !range !47, !noundef !48
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.o, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit69

bb.o:                                             ; preds = %bb.n
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !49 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !50 ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %.idx.i.i.i.i.i63 = shl nuw nsw i64 %i.cn, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx.i.i.i.i.i63
  %.not17.i.i.i.i.i64 = icmp eq i32 %i.cm, 0
  br i1 %.not17.i.i.i.i.i64, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %.lr.ph.i.i.i.i.i65

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i65
  %i.cp = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i66, i64 8 ; 2 uses
  %.not.i.i.i.i.i68 = icmp eq ptr %i.cp, %i.co
  br i1 %.not.i.i.i.i.i68, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %.lr.ph.i.i.i.i.i65

.lr.ph.i.i.i.i.i65:                               ; preds = %bb.o, %bb.p
  %.01218.i.i.i.i.i66 = phi ptr [ %i.cp, %bb.p ], [ %i.ck, %bb.o ] ; 2 uses
  %i.cq = load ptr, ptr %.01218.i.i.i.i.i66, align 8, !tbaa !51
  %.not15.i.i.i.not.i.not.i67 = icmp eq ptr %i.cq, %i.cf
  br i1 %.not15.i.i.i.not.i.not.i67, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit69.thread100, label %bb.p

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit69: ; preds = %bb.n
  %i.cr = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.cg, ptr noundef %i.cf) #17
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit69.thread100

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit69.thread100: ; preds = %.lr.ph.i.i.i.i.i65, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit69
  %i.ct = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br label %bb.q

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit69.thread100, %._crit_edge
  %.2 = phi ptr [ %i.ct, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit69.thread100 ], [ %.029.lcssa, %._crit_edge ] ; 4 uses
  %i.cu = load ptr, ptr %.2, align 8, !tbaa !44   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !46, !range !47, !noundef !48
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.r, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit77

bb.r:                                             ; preds = %bb.q
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !49 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.db = load i32, ptr %i.da, align 4, !tbaa !50 ; 2 uses
  %i.dc = zext i32 %i.db to i64
  %.idx.i.i.i.i.i71 = shl nuw nsw i64 %i.dc, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx.i.i.i.i.i71
  %.not17.i.i.i.i.i72 = icmp eq i32 %i.db, 0
  br i1 %.not17.i.i.i.i.i72, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %.lr.ph.i.i.i.i.i73

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i73
  %i.de = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.de, %i.dd
  br i1 %.not.i.i.i.i.i76, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %bb.r, %bb.s
  %.01218.i.i.i.i.i74 = phi ptr [ %i.de, %bb.s ], [ %i.cz, %bb.r ] ; 2 uses
  %i.df = load ptr, ptr %.01218.i.i.i.i.i74, align 8, !tbaa !51
  %.not15.i.i.i.not.i.not.i75 = icmp eq ptr %i.df, %i.cu
  br i1 %.not15.i.i.i.not.i.not.i75, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit77.thread103, label %bb.s

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit77: ; preds = %bb.q
  %i.dg = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.cv, ptr noundef %i.cu) #17
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit77.thread103

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit77.thread103: ; preds = %.lr.ph.i.i.i.i.i73, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit77, %._crit_edge
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit.thread: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit, %bb.c, %bb.i, %bb.g, %bb.e, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit53, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit45, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit37, %bb.d, %bb.f, %bb.h, %bb.j, %bb.m, %bb.p, %bb.s, %bb.r, %bb.o, %bb.l, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit77, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit69, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit61, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit77.thread103
  %.028 = phi ptr [ %.1, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit69 ], [ %.029.lcssa, %bb.l ], [ %.1, %bb.o ], [ %.2, %bb.r ], [ %1, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit77.thread103 ], [ %.029145, %bb.d ], [ %.029.lcssa, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit61 ], [ %.2, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit77 ], [ %.029.lcssa, %bb.m ], [ %i.z, %bb.f ], [ %i.ao, %bb.h ], [ %.2, %bb.s ], [ %.1, %bb.p ], [ %i.bd, %bb.j ], [ %.029145, %bb.c ], [ %i.w, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit37 ], [ %i.al, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit45 ], [ %i.ba, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit53 ], [ %i.z, %bb.e ], [ %i.ao, %bb.g ], [ %i.bd, %bb.i ], [ %.029145, %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm8LoopBaseINS2_17MachineBasicBlockENS2_11MachineLoopEE15getExitingBlockEvEUlPS4_E_EclIPS7_EEbT_.exit ]
  ret ptr %.028
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i8 } @_ZN4llvm21find_singleton_nestedINS_17MachineBasicBlockENS_14iterator_rangeIPPS1_EEZNS_18getExitBlockHelperIS1_NS_11MachineLoopEEESt4pairIPT_bEPKNS_8LoopBaseIS9_T0_EEbEUlS3_bE_EESB_OSD_T1_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !63     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 6 uses
  %.not31 = icmp eq ptr %i.a, %i.c
  br i1 %.not31, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !60     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i8, ptr %i.e, align 8, !tbaa !46, !range !47, !noundef !48
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !50   ; 2 uses
  %i.l = zext i32 %i.k to i64
  %.idx.i.i.i.i.us = shl nuw nsw i64 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i.i.i.i.us ; 2 uses
  %.not17.i.i.i.i.us = icmp eq i32 %i.k, 0
  br i1 %.not17.i.i.i.i.us, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %2, label %.lr.ph.split.us.split.us.split, label %.lr.ph.split.us.split.us.split.us

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us.split.us, %.thread.us.us.us
  %.034.us.us.us = phi ptr [ %i.o, %.thread.us.us.us ], [ %i.a, %.lr.ph.split.us.split.us ] ; 2 uses
  %.02632.us.us.us = phi ptr [ %.1.us.us.us, %.thread.us.us.us ], [ null, %.lr.ph.split.us.split.us ] ; 2 uses
  %i.n = load ptr, ptr %.034.us.us.us, align 8, !tbaa !44 ; 2 uses
  %.not19.old.us.us.us = icmp eq ptr %i.n, null
  br i1 %.not19.old.us.us.us, label %.thread.us.us.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split.us.split.us
  %.not20.us.us.us = icmp eq ptr %.02632.us.us.us, null
  br i1 %.not20.us.us.us, label %.thread.us.us.us, label %.critedge

.thread.us.us.us:                                 ; preds = %bb.b, %.lr.ph.split.us.split.us.split.us
  %.1.us.us.us = phi ptr [ %.02632.us.us.us, %.lr.ph.split.us.split.us.split.us ], [ %i.n, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.034.us.us.us, i64 8 ; 2 uses
  %.not.us.us.us = icmp eq ptr %i.o, %i.c
  br i1 %.not.us.us.us, label %.critedge, label %.lr.ph.split.us.split.us.split.us

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us.split.us, %.thread.us.us
  %.034.us.us = phi ptr [ %i.q, %.thread.us.us ], [ %i.a, %.lr.ph.split.us.split.us ] ; 2 uses
  %.02632.us.us = phi ptr [ %.1.us.us, %.thread.us.us ], [ null, %.lr.ph.split.us.split.us ] ; 4 uses
  %i.p = load ptr, ptr %.034.us.us, align 8, !tbaa !44 ; 3 uses
  %.not19.old.us.us = icmp eq ptr %i.p, null
  br i1 %.not19.old.us.us, label %.thread.us.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.split.us.split
  %.not20.us.us = icmp eq ptr %.02632.us.us, null
  br i1 %.not20.us.us, label %.thread.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not21.us.us = icmp eq ptr %i.p, %.02632.us.us
  br i1 %.not21.us.us, label %.thread.us.us, label %.critedge

.thread.us.us:                                    ; preds = %bb.d, %bb.c, %.lr.ph.split.us.split.us.split
  %.1.us.us = phi ptr [ %.02632.us.us, %.lr.ph.split.us.split.us.split ], [ %i.p, %bb.c ], [ %.02632.us.us, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.034.us.us, i64 8 ; 2 uses
  %.not.us.us = icmp eq ptr %i.q, %i.c
  br i1 %.not.us.us, label %.critedge, label %.lr.ph.split.us.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %2, label %.lr.ph.i.i.i.i.preheader.us, label %.lr.ph.i.i.i.i.preheader.us.us

.lr.ph.i.i.i.i.preheader.us.us:                   ; preds = %.lr.ph.split.us.split, %.thread.us.us51
  %.034.us.us46 = phi ptr [ %i.u, %.thread.us.us51 ], [ %i.a, %.lr.ph.split.us.split ] ; 2 uses
  %.02632.us.us47 = phi ptr [ %.1.us.us52, %.thread.us.us51 ], [ null, %.lr.ph.split.us.split ] ; 3 uses
  %i.r = load ptr, ptr %.034.us.us46, align 8, !tbaa !44 ; 3 uses
  br label %.lr.ph.i.i.i.i.us.us

.lr.ph.i.i.i.i.us.us:                             ; preds = %bb.e, %.lr.ph.i.i.i.i.preheader.us.us
  %.01218.i.i.i.i.us.us = phi ptr [ %i.t, %bb.e ], [ %i.i, %.lr.ph.i.i.i.i.preheader.us.us ] ; 2 uses
  %i.s = load ptr, ptr %.01218.i.i.i.i.us.us, align 8, !tbaa !51
  %.not15.i.i.i.i.us.us = icmp eq ptr %i.s, %i.r
  br i1 %.not15.i.i.i.i.us.us, label %.thread.us.us51, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.us.us
  %i.t = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.us.us, i64 8 ; 2 uses
  %.not.i.i.i.i.us.us = icmp eq ptr %i.t, %i.m
  br i1 %.not.i.i.i.i.us.us, label %.loopexit.us.us, label %.lr.ph.i.i.i.i.us.us

bb.f:                                             ; preds = %.loopexit.us.us
  %.not20.us.us48 = icmp eq ptr %.02632.us.us47, null
  br i1 %.not20.us.us48, label %.thread.us.us51, label %.critedge

.thread.us.us51:                                  ; preds = %.lr.ph.i.i.i.i.us.us, %.loopexit.us.us, %bb.f
  %.1.us.us52 = phi ptr [ %.02632.us.us47, %.loopexit.us.us ], [ %i.r, %bb.f ], [ %.02632.us.us47, %.lr.ph.i.i.i.i.us.us ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.034.us.us46, i64 8 ; 2 uses
  %.not.us.us53 = icmp eq ptr %i.u, %i.c
  br i1 %.not.us.us53, label %.critedge, label %.lr.ph.i.i.i.i.preheader.us.us

.loopexit.us.us:                                  ; preds = %bb.e
  %.not19.old.us.us54 = icmp eq ptr %i.r, null
  br i1 %.not19.old.us.us54, label %.thread.us.us51, label %bb.f

.lr.ph.i.i.i.i.preheader.us:                      ; preds = %.lr.ph.split.us.split, %.thread.us
  %.034.us = phi ptr [ %i.y, %.thread.us ], [ %i.a, %.lr.ph.split.us.split ] ; 2 uses
  %.02632.us = phi ptr [ %.1.us, %.thread.us ], [ null, %.lr.ph.split.us.split ] ; 5 uses
  %i.v = load ptr, ptr %.034.us, align 8, !tbaa !44 ; 4 uses
  br label %.lr.ph.i.i.i.i.us

.lr.ph.i.i.i.i.us:                                ; preds = %.lr.ph.i.i.i.i.preheader.us, %bb.g
  %.01218.i.i.i.i.us = phi ptr [ %i.x, %bb.g ], [ %i.i, %.lr.ph.i.i.i.i.preheader.us ] ; 2 uses
  %i.w = load ptr, ptr %.01218.i.i.i.i.us, align 8, !tbaa !51
  %.not15.i.i.i.i.us = icmp eq ptr %i.w, %i.v
  br i1 %.not15.i.i.i.i.us, label %.thread.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.us
  %i.x = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.us, i64 8 ; 2 uses
  %.not.i.i.i.i.us = icmp eq ptr %i.x, %i.m
  br i1 %.not.i.i.i.i.us, label %.loopexit.us, label %.lr.ph.i.i.i.i.us

bb.h:                                             ; preds = %.loopexit.us
  %.not20.us = icmp eq ptr %.02632.us, null
  br i1 %.not20.us, label %.thread.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not21.us = icmp eq ptr %i.v, %.02632.us
  br i1 %.not21.us, label %.thread.us, label %.critedge

.thread.us:                                       ; preds = %.lr.ph.i.i.i.i.us, %bb.i, %bb.h, %.loopexit.us
  %.1.us = phi ptr [ %.02632.us, %.loopexit.us ], [ %i.v, %bb.h ], [ %.02632.us, %bb.i ], [ %.02632.us, %.lr.ph.i.i.i.i.us ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.034.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.y, %i.c
  br i1 %.not.us, label %.critedge, label %.lr.ph.i.i.i.i.preheader.us

.loopexit.us:                                     ; preds = %bb.g
  %.not19.old.us = icmp eq ptr %i.v, null
  br i1 %.not19.old.us, label %.thread.us, label %bb.h

.lr.ph.split:                                     ; preds = %.lr.ph, %.thread
  %.034 = phi ptr [ %i.an, %.thread ], [ %i.a, %.lr.ph ] ; 2 uses
  %.02632 = phi ptr [ %.1, %.thread ], [ null, %.lr.ph ] ; 6 uses
  %i.z = load ptr, ptr %.034, align 8, !tbaa !44  ; 6 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !60    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !46, !range !47, !noundef !48
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.j, label %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i

bb.j:                                             ; preds = %.lr.ph.split
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !49 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 68
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !50 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i.i.i.i
  %.not17.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not17.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %bb.k
  %.01218.i.i.i.i = phi ptr [ %i.ak, %bb.k ], [ %i.af, %bb.j ] ; 2 uses
  %i.al = load ptr, ptr %.01218.i.i.i.i, align 8, !tbaa !51
  %.not15.i.i.i.i = icmp eq ptr %i.al, %i.z
  br i1 %.not15.i.i.i.i, label %.thread, label %bb.k

_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i: ; preds = %.lr.ph.split
  %i.am = tail call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.ab, ptr noundef %i.z) #17
  %.not.i = icmp ne ptr %i.am, null
  %.not19 = icmp eq ptr %i.z, null
  %or.cond30 = select i1 %.not.i, i1 true, i1 %.not19
  br i1 %or.cond30, label %.thread, label %bb.l

.loopexit:                                        ; preds = %bb.k, %bb.j
  %.not19.old = icmp eq ptr %i.z, null
  br i1 %.not19.old, label %.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i, %.loopexit
  %.not20 = icmp eq ptr %.02632, null
  br i1 %.not20, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not21 = icmp eq ptr %i.z, %.02632
  %or.cond = select i1 %2, i1 %.not21, i1 false
  br i1 %or.cond, label %.thread, label %.critedge

.thread:                                          ; preds = %.lr.ph.i.i.i.i, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i, %bb.l, %bb.m, %.loopexit
  %.1 = phi ptr [ %.02632, %.loopexit ], [ %i.z, %bb.l ], [ %.02632, %bb.m ], [ %.02632, %_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE8containsEPKS1_.exit.i ], [ %.02632, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.034, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.an, %i.c
  br i1 %.not, label %.critedge, label %.lr.ph.split, !llvm.loop !542

.critedge:                                        ; preds = %bb.m, %.thread, %bb.f, %.thread.us.us51, %bb.i, %.thread.us, %bb.b, %.thread.us.us.us, %bb.d, %.thread.us.us, %bb.a
  %.sroa.025.1 = phi ptr [ %.1.us.us52, %.thread.us.us51 ], [ null, %bb.a ], [ %.1.us.us, %.thread.us.us ], [ %.1.us, %.thread.us ], [ %.1.us.us.us, %.thread.us.us.us ], [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.i ], [ null, %bb.f ], [ %.1, %.thread ], [ null, %bb.m ]
  %.sroa.4.1 = phi i8 [ 0, %.thread.us.us51 ], [ 0, %bb.a ], [ 0, %.thread.us.us ], [ 0, %.thread.us ], [ 0, %.thread.us.us.us ], [ 1, %bb.d ], [ 1, %bb.b ], [ 1, %bb.i ], [ 1, %bb.f ], [ 0, %.thread ], [ 1, %bb.m ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.025.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_17MachineBasicBlockES3_ELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !54
  %i.g = load i32, ptr %i.a, align 8, !tbaa !55
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !55
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !55
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock18isLegalToHoistIntoEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_11MachineLoopELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !54
  %i.g = load i32, ptr %i.a, align 8, !tbaa !55
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !55
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11MachineLoopELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !54
  %i.g = load i32, ptr %i.a, align 8, !tbaa !55
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !55
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !55
  ret void
}

declare void @_ZN4llvm19SmallPtrSetImplBase15eraseFromBucketEPPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !267, !noalias !547 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !295, !noalias !547 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !266, !noalias !547 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !296
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !297

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.c, !prof !58

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !296
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !298, !llvm.loop !13

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !299
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !300
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !58

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !299
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !295
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !267
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !296
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !296
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !300
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !65
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !65
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !267, !noalias !552 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !295, !noalias !552 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !266, !noalias !552 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !296
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !297

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !65
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !58

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !296
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !298, !llvm.loop !13

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !299
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !266
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #17 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !267
  store ptr %i.y, ptr %i.q, align 8, !tbaa !295
  store i32 0, ptr %i.p, align 16, !tbaa !300
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !51
  %i.aa = load ptr, ptr %0, align 8, !tbaa !299
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !51
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !51
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !296 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !296
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !296
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !296
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !296
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !267    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !295
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !266  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !295  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !267
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !266
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !296  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !65   ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !296 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !296 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !553

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !65
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !296
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !554

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !555

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !266
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !300
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !300
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #17
  store i32 0, ptr %i.d, align 4, !tbaa !266
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_11MachineLoopEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !54     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIPNS_11MachineLoopEE12assignRemoteEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #17
  %.pre = load ptr, ptr %1, align 8, !tbaa !54
  br label %_ZN4llvm15SmallVectorImplIPNS_11MachineLoopEE12assignRemoteEOS3_.exit

_ZN4llvm15SmallVectorImplIPNS_11MachineLoopEE12assignRemoteEOS3_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !296
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !296
  store ptr %i.c, ptr %1, align 8, !tbaa !54
  store i32 0, ptr %i.k, align 4, !tbaa !57
  store i32 0, ptr %i.j, align 8, !tbaa !55
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !55   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !55   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPPN4llvm11MachineLoopES3_ET0_T_S5_S4_.exit
    i32 1, label %bb.h
  ], !prof !301

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPPN4llvm11MachineLoopES3_ET0_T_S5_S4_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !65
  store ptr %i.t, ptr %i.s, align 8, !tbaa !65
  br label %_ZSt4moveIPPN4llvm11MachineLoopES3_ET0_T_S5_S4_.exit

_ZSt4moveIPPN4llvm11MachineLoopES3_ET0_T_S5_S4_.exit: ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !55
  store i32 0, ptr %i.m, align 8, !tbaa !55
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !57
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #17
  br label %_ZSt4moveIPPN4llvm11MachineLoopES3_ET0_T_S5_S4_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPPN4llvm11MachineLoopES3_ET0_T_S5_S4_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !254

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPPN4llvm11MachineLoopES3_ET0_T_S5_S4_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !65
  store ptr %i.z, ptr %i.y, align 8, !tbaa !65
  br label %_ZSt4moveIPPN4llvm11MachineLoopES3_ET0_T_S5_S4_.exit34

_ZSt4moveIPPN4llvm11MachineLoopES3_ET0_T_S5_S4_.exit34: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !55
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11MachineLoopELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPPN4llvm11MachineLoopES3_ET0_T_S5_S4_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !54
  %.idx39 = shl nuw nsw i64 %.026, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11MachineLoopELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_11MachineLoopELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit: ; preds = %_ZSt4moveIPPN4llvm11MachineLoopES3_ET0_T_S5_S4_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !55
  store i32 0, ptr %i.m, align 8, !tbaa !55
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPPN4llvm11MachineLoopES3_ET0_T_S5_S4_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_11MachineLoopELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplIPNS_11MachineLoopEE12assignRemoteEOS3_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPvEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !54     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIPvE12assignRemoteEOS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #17
  %.pre = load ptr, ptr %1, align 8, !tbaa !54
  br label %_ZN4llvm15SmallVectorImplIPvE12assignRemoteEOS2_.exit

_ZN4llvm15SmallVectorImplIPvE12assignRemoteEOS2_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !296
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !296
  store ptr %i.c, ptr %1, align 8, !tbaa !54
  store i32 0, ptr %i.k, align 4, !tbaa !57
  store i32 0, ptr %i.j, align 8, !tbaa !55
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !55   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !55   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPPvS1_ET0_T_S3_S2_.exit
    i32 1, label %bb.h
  ], !prof !301

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPPvS1_ET0_T_S3_S2_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !51
  store ptr %i.t, ptr %i.s, align 8, !tbaa !51
  br label %_ZSt4moveIPPvS1_ET0_T_S3_S2_.exit

_ZSt4moveIPPvS1_ET0_T_S3_S2_.exit:                ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !55
  store i32 0, ptr %i.m, align 8, !tbaa !55
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !57
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #17
  br label %_ZSt4moveIPPvS1_ET0_T_S3_S2_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPPvS1_ET0_T_S3_S2_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !254

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPPvS1_ET0_T_S3_S2_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !51
  store ptr %i.z, ptr %i.y, align 8, !tbaa !51
  br label %_ZSt4moveIPPvS1_ET0_T_S3_S2_.exit34

_ZSt4moveIPPvS1_ET0_T_S3_S2_.exit34:              ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !55
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPPvS1_ET0_T_S3_S2_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !54
  %.idx39 = shl nuw nsw i64 %.026, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit: ; preds = %_ZSt4moveIPPvS1_ET0_T_S3_S2_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !55
  store i32 0, ptr %i.m, align 8, !tbaa !55
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPPvS1_ET0_T_S3_S2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplIPvE12assignRemoteEOS2_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairIPvmEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !54     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplISt4pairIPvmEE12assignRemoteEOS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #17
  %.pre = load ptr, ptr %1, align 8, !tbaa !54
  br label %_ZN4llvm15SmallVectorImplISt4pairIPvmEE12assignRemoteEOS4_.exit

_ZN4llvm15SmallVectorImplISt4pairIPvmEE12assignRemoteEOS4_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !296
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !296
  store ptr %i.c, ptr %1, align 8, !tbaa !54
  store i32 0, ptr %i.k, align 4, !tbaa !57
  store i32 0, ptr %i.j, align 8, !tbaa !55
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !55   ; 7 uses
  %i.o = zext i32 %i.n to i64                     ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !55   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 5 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not33 = icmp eq i32 %i.n, 0
  br i1 %.not33, label %_ZSt4moveIPSt4pairIPvmES3_ET0_T_S5_S4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %bb.g, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %bb.g ]
  %.0811.i.i.i.i.i.prol = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.prol ], [ %i.s, %bb.g ] ; 3 uses
  %.0910.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.prol ], [ %i.b, %bb.g ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %bb.g ]
  %i.t = load ptr, ptr %.0910.i.i.i.i.i.prol, align 8, !tbaa !51
  store ptr %i.t, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !242
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !276
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !243
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.z = add nsw i64 %.012.i.i.i.i.i.prol, -1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !556

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %bb.g
  %.012.i.i.i.i.i.unr = phi i64 [ %i.o, %bb.g ], [ %i.z, %.lr.ph.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %i.s, %bb.g ], [ %i.y, %.lr.ph.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %i.b, %bb.g ], [ %i.x, %.lr.ph.i.i.i.i.i.prol ]
  %i.aa = icmp ult i32 %i.n, 4
  br i1 %i.aa, label %_ZSt4moveIPSt4pairIPvmES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ab = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !51
  store ptr %i.ab, ptr %.0811.i.i.i.i.i, align 8, !tbaa !242
  %i.ac = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !276
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !243
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !51
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !242
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !276
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !243
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !51
  store ptr %i.an, ptr %i.am, align 8, !tbaa !242
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !276
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !243
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !51
  store ptr %i.at, ptr %i.as, align 8, !tbaa !242
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56
  %i.av = load i64, ptr %i.au, align 8, !tbaa !276
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !243
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64
  %i.az = add nsw i64 %.012.i.i.i.i.i, -4
  %i.ba = icmp sgt i64 %.012.i.i.i.i.i, 4
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt4pairIPvmES3_ET0_T_S5_S4_.exit, !llvm.loop !557

_ZSt4moveIPSt4pairIPvmES3_ET0_T_S5_S4_.exit:      ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.f
  store i32 %i.n, ptr %i.p, align 8, !tbaa !55
  store i32 0, ptr %i.m, align 8, !tbaa !55
  br label %bb.m

bb.h:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !57
  %i.bd = icmp ult i32 %i.bc, %i.n
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.p, align 8, !tbaa !55
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.be, i64 noundef %i.o, i64 noundef 16) #17
  %.pre41 = load i32, ptr %i.m, align 8, !tbaa !55
  %.pre42 = zext i32 %.pre41 to i64
  br label %_ZSt4moveIPSt4pairIPvmES3_ET0_T_S5_S4_.exit39

bb.j:                                             ; preds = %bb.h
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPSt4pairIPvmES3_ET0_T_S5_S4_.exit39, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %xtraiter50 = and i64 %i.r, 3                   ; 2 uses
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %.lr.ph.i.i.i.i.i35.prol.loopexit, label %.lr.ph.i.i.i.i.i35.prol

.lr.ph.i.i.i.i.i35.prol:                          ; preds = %bb.k, %.lr.ph.i.i.i.i.i35.prol
  %.012.i.i.i.i.i36.prol = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i35.prol ], [ %i.r, %bb.k ]
  %.0811.i.i.i.i.i37.prol = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i35.prol ], [ %i.bf, %bb.k ] ; 3 uses
  %.0910.i.i.i.i.i38.prol = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i35.prol ], [ %i.b, %bb.k ] ; 3 uses
  %prol.iter52 = phi i64 [ %prol.iter52.next, %.lr.ph.i.i.i.i.i35.prol ], [ 0, %bb.k ]
  %i.bg = load ptr, ptr %.0910.i.i.i.i.i38.prol, align 8, !tbaa !51
  store ptr %i.bg, ptr %.0811.i.i.i.i.i37.prol, align 8, !tbaa !242
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38.prol, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !276
  %i.bj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37.prol, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !243
  %i.bk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38.prol, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37.prol, i64 16 ; 2 uses
  %i.bm = add nsw i64 %.012.i.i.i.i.i36.prol, -1  ; 2 uses
  %prol.iter52.next = add i64 %prol.iter52, 1     ; 2 uses
  %prol.iter52.cmp.not = icmp eq i64 %prol.iter52.next, %xtraiter50
  br i1 %prol.iter52.cmp.not, label %.lr.ph.i.i.i.i.i35.prol.loopexit, label %.lr.ph.i.i.i.i.i35.prol, !llvm.loop !558

.lr.ph.i.i.i.i.i35.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i35.prol, %bb.k
  %.012.i.i.i.i.i36.unr = phi i64 [ %i.r, %bb.k ], [ %i.bm, %.lr.ph.i.i.i.i.i35.prol ]
  %.0811.i.i.i.i.i37.unr = phi ptr [ %i.bf, %bb.k ], [ %i.bl, %.lr.ph.i.i.i.i.i35.prol ]
  %.0910.i.i.i.i.i38.unr = phi ptr [ %i.b, %bb.k ], [ %i.bk, %.lr.ph.i.i.i.i.i35.prol ]
  %i.bn = icmp ult i32 %i.q, 4
  br i1 %i.bn, label %_ZSt4moveIPSt4pairIPvmES3_ET0_T_S5_S4_.exit39, label %.lr.ph.i.i.i.i.i35

.lr.ph.i.i.i.i.i35:                               ; preds = %.lr.ph.i.i.i.i.i35.prol.loopexit, %.lr.ph.i.i.i.i.i35
  %.012.i.i.i.i.i36 = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i35 ], [ %.012.i.i.i.i.i36.unr, %.lr.ph.i.i.i.i.i35.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i37 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i35 ], [ %.0811.i.i.i.i.i37.unr, %.lr.ph.i.i.i.i.i35.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i38 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i35 ], [ %.0910.i.i.i.i.i38.unr, %.lr.ph.i.i.i.i.i35.prol.loopexit ] ; 9 uses
  %i.bo = load ptr, ptr %.0910.i.i.i.i.i38, align 8, !tbaa !51
  store ptr %i.bo, ptr %.0811.i.i.i.i.i37, align 8, !tbaa !242
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !276
  %i.br = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !243
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 16
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !51
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !242
  %i.bv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !276
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 24
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !243
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 32
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !51
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !242
  %i.cb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 40
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !276
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 40
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !243
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 48
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !51
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !242
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 56
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !276
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 56
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !243
  %i.ck = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 64
  %i.cm = add nsw i64 %.012.i.i.i.i.i36, -4
  %i.cn = icmp sgt i64 %.012.i.i.i.i.i36, 4
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i35, label %_ZSt4moveIPSt4pairIPvmES3_ET0_T_S5_S4_.exit39, !llvm.loop !557

_ZSt4moveIPSt4pairIPvmES3_ET0_T_S5_S4_.exit39:    ; preds = %.lr.ph.i.i.i.i.i35.prol.loopexit, %.lr.ph.i.i.i.i.i35, %bb.j, %bb.i
  %.pre-phi = phi i64 [ %.pre42, %bb.i ], [ %i.o, %bb.j ], [ %i.o, %.lr.ph.i.i.i.i.i35 ], [ %i.o, %.lr.ph.i.i.i.i.i35.prol.loopexit ] ; 2 uses
  %.026 = phi i64 [ 0, %bb.i ], [ 0, %bb.j ], [ %i.r, %.lr.ph.i.i.i.i.i35 ], [ %i.r, %.lr.ph.i.i.i.i.i35.prol.loopexit ] ; 4 uses
  %.not.i.i = icmp samesign eq i64 %.026, %.pre-phi
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt4moveIPSt4pairIPvmES3_ET0_T_S5_S4_.exit39
  %i.co = load ptr, ptr %1, align 8, !tbaa !54
  %.idx40 = shl nuw nsw i64 %.026, 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx40
  %i.cq = load ptr, ptr %0, align 8, !tbaa !54
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.026
  %i.cs = sub nsw i64 %.pre-phi, %.026
  %gepdiff = shl nsw i64 %i.cs, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr align 8 %i.cp, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit: ; preds = %_ZSt4moveIPSt4pairIPvmES3_ET0_T_S5_S4_.exit39, %bb.l
  store i32 %i.n, ptr %i.p, align 8, !tbaa !55
  store i32 0, ptr %i.m, align 8, !tbaa !55
  br label %bb.m

bb.m:                                             ; preds = %_ZSt4moveIPSt4pairIPvmES3_ET0_T_S5_S4_.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplISt4pairIPvmEE12assignRemoteEOS4_.exit
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i8 %3) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = zext nneg i8 %3 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = add i64 %i.c, %2                         ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4096
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.d, i64 noundef 16) #17 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i32, ptr %i.j, align 4, !tbaa !57
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr nonnull %i.f, i64 %i.d)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store ptr %i.f, ptr %i.n, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !55
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit: ; preds = %bb.c, %bb.d
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = add i64 %i.c, %i.q
  %i.s = sub i64 0, %i.b
  %i.t = and i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !55
  %i.y = lshr i32 %i.x, 7
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.y, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.z to i64
  %i.aa = shl nuw nsw i64 4096, %.sroa.speculated.i.i ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aa, i64 noundef 16) #17 ; 3 uses
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !55  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !57
  %.not.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !58

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %i.ab)
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

bb.g:                                             ; preds = %bb.e
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store ptr %i.ab, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !55
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !55
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit: ; preds = %bb.f, %bb.g
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.al = add i64 %i.ak, 1
  %i.am = add i64 %i.al, %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !245
  %i.ao = add i64 %i.c, %i.ak
  %i.ap = sub i64 0, %i.b
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %2
  store ptr %i.as, ptr %0, align 8, !tbaa !244
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit
  %.0 = phi ptr [ %i.u, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit ], [ %i.ar, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !54
  %i.g = load i32, ptr %i.a, align 8, !tbaa !55
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !55
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !54
  %i.g = load i32, ptr %i.a, align 8, !tbaa !55
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !55
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE15_M_range_insertIPS2_EEvN9__gnu_cxx17__normal_iteratorIS6_S4_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPPN4llvm17MachineBasicBlockEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !230
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not46 = icmp ult i64 %i.k, %i.c
  br i1 %.not46, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPPN4llvm17MachineBasicBlockElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 8                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !58

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.q, i64 %i.c, i1 false)
  %.pre61 = load ptr, ptr %i.g, align 8, !tbaa !45
  br label %_ZSt22__uninitialized_move_aIPPN4llvm17MachineBasicBlockES3_SaIS2_EET0_T_S6_S5_RT1_.exit
end_hunk_0
begin_hunk_1_@_ZN4llvm16PopulateLoopsDFSINS_17MachineBasicBlockENS_11MachineLoopEE14insertIntoLoopEPS1_:bb.a
  %i.e = load i32, ptr %i.d, align 8, !tbaa !55
  %i.f = icmp ugt i32 %i.e, %i.c
  br i1 %i.f, label %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit, label %._crit_edge

_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit: ; preds = %bb.a
  %i.g = zext i32 %i.c to i64
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65   ; 12 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.n = icmp eq ptr %1, %i.m
  br i1 %i.n, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !40   ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !231  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !232
  %.not.i = icmp eq ptr %i.s, %i.u
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr %i.s, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.v, ptr %i.r, align 8, !tbaa !231
  br label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE9push_backERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !233  ; 4 uses
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 5 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.g, label %_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
  unreachable

_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #19 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  store ptr %i.j, ptr %i.ai, align 8, !tbaa !65
  %i.aj = icmp sgt i64 %i.z, 0
  br i1 %i.aj, label %bb.h, label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.w, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.not.i17.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !232
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.an) #20
  br label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.ah, ptr %i.q, align 8, !tbaa !233
  store ptr %i.ak, ptr %i.r, align 8, !tbaa !231
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.ao, ptr %i.t, align 8, !tbaa !232
  br label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE9push_backERKS2_.exit

bb.j:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !231 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !232
  %.not.i.i = icmp eq ptr %i.ar, %i.at
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.j, ptr %i.ar, align 8, !tbaa !65
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !231
  br label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE9push_backERKS2_.exit

bb.l:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !233 ; 4 uses
  %i.aw = ptrtoint ptr %i.ar to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 5 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.m, label %_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
  unreachable

_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #19 ; 4 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  store ptr %i.j, ptr %i.bh, align 8, !tbaa !65
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %bb.n, label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 8 %i.av, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.bk = load ptr, ptr %i.as, align 8, !tbaa !232
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bm) #20
  br label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.bg, ptr %i.ap, align 8, !tbaa !233
  store ptr %i.bj, ptr %i.aq, align 8, !tbaa !231
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bn, ptr %i.as, align 8, !tbaa !232
  br label %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.k, %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.e
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !234
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !234 ; 2 uses
  %i.bs = icmp ne ptr %i.bp, %i.br
  %.sroa.0.08.i.i.i = getelementptr inbounds i8, ptr %i.br, i64 -8 ; 2 uses
  %i.bt = icmp ult ptr %i.bp, %.sroa.0.08.i.i.i
  %or.cond.i.i.i = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %_ZN4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12reverseBlockEj.exit

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE9push_backERKS2_.exit, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i, %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %.sroa.05.09.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i ], [ %i.bp, %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.bu = load ptr, ptr %.sroa.05.09.i.i.i, align 8, !tbaa !44
  %i.bv = load ptr, ptr %.sroa.0.010.i.i.i, align 8, !tbaa !44
  store ptr %i.bv, ptr %.sroa.05.09.i.i.i, align 8, !tbaa !44
  store ptr %i.bu, ptr %.sroa.0.010.i.i.i, align 8, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i, i64 -8 ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %.sroa.0.0.i.i.i
  br i1 %i.bx, label %.lr.ph.i.i.i, label %_ZN4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12reverseBlockEj.exit, !llvm.loop !7

_ZN4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12reverseBlockEj.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt6vectorIPN4llvm11MachineLoopESaIS2_EE9push_backERKS2_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !52 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !52 ; 2 uses
  %i.cc = icmp ne ptr %i.bz, %i.cb
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.cb, i64 -8 ; 2 uses
  %i.cd = icmp ult ptr %i.bz, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread

.lr.ph.i.i:                                       ; preds = %_ZN4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12reverseBlockEj.exit, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %_ZN4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12reverseBlockEj.exit ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.bz, %_ZN4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12reverseBlockEj.exit ] ; 3 uses
  %i.ce = load ptr, ptr %.sroa.05.09.i.i, align 8, !tbaa !65
  %i.cf = load ptr, ptr %.sroa.0.010.i.i, align 8, !tbaa !65
  store ptr %i.cf, ptr %.sroa.05.09.i.i, align 8, !tbaa !65
  store ptr %i.ce, ptr %.sroa.0.010.i.i, align 8, !tbaa !65
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 8 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.ch = icmp ult ptr %i.cg, %.sroa.0.0.i.i
  br i1 %i.ch, label %.lr.ph.i.i, label %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread, !llvm.loop !559

_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread: ; preds = %.lr.ph.i.i, %_ZN4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE12reverseBlockEj.exit
  %i.ci = load ptr, ptr %i.j, align 8, !tbaa !40  ; 2 uses
  %.not618 = icmp eq ptr %i.ci, null
  br i1 %.not618, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b, %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread
  %.119.ph = phi ptr [ %i.j, %bb.b ], [ %i.ci, %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.119 = phi ptr [ %i.cj, %.lr.ph ], [ %.119.ph, %.lr.ph.preheader ] ; 2 uses
  tail call void @_ZN4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE13addBlockEntryEPS1_(ptr noundef nonnull align 8 dereferenceable(144) %.119, ptr noundef nonnull %1)
  %i.cj = load ptr, ptr %.119, align 8, !tbaa !40 ; 2 uses
  %.not6 = icmp eq ptr %i.cj, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph, !llvm.loop !560

._crit_edge:                                      ; preds = %.lr.ph, %bb.a, %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit, %_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE10getLoopForEPKS1_.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS3_EEEENS_11GraphTraitsIS3_EEE4initES3_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.llvm::iterator_range.5", align 8 ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.d = load i32, ptr %i.c, align 4, !tbaa !121  ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !260  ; 4 uses
  %.not.i.i = icmp ugt i64 %i.g, %i.e
  br i1 %.not.i.i, label %_ZN4llvm18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS2_EEE10insertEdgeESt8optionalIS2_ES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.d, 1
  %i.i = zext i32 %i.h to i64                     ; 7 uses
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %_ZN4llvm18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS2_EEE10insertEdgeESt8optionalIS2_ES2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp samesign ugt i64 %i.g, %i.i
  br i1 %i.k, label %.sink.split.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = load i64, ptr %i.l, align 8, !tbaa !261
  %i.n = icmp ult i64 %i.m, %i.i
  br i1 %i.n, label %bb.e, label %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull %i.o, i64 noundef %i.i, i64 noundef 1) #17
  %.pre.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !260
  br label %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.p = phi i64 [ %i.g, %bb.d ], [ %.pre.i.i.i.i, %bb.e ] ; 3 uses
  %.not11.i.i.i.i = icmp samesign eq i64 %i.p, %i.i
  br i1 %.not11.i.i.i.i, label %.sink.split.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i.i.i
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.r = getelementptr i8, ptr %i.q, i64 %i.p
  %i.s = sub i64 %i.i, %i.p
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 0, i64 %i.s, i1 false), !tbaa !302
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %.lr.ph.preheader.i.i.i.i, %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i.i.i, %bb.c
  store i64 %i.i, ptr %i.f, align 8, !tbaa !260
  br label %_ZN4llvm18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS2_EEE10insertEdgeESt8optionalIS2_ES2_.exit

_ZN4llvm18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS2_EEE10insertEdgeESt8optionalIS2_ES2_.exit: ; preds = %bb.a, %bb.b, %.sink.split.i.i.i.i
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !259
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.e ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !302, !range !47, !noundef !48
  store i8 1, ptr %i.u, align 1, !tbaa !302
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN4llvm18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS2_EEE10insertEdgeESt8optionalIS2_ES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !55
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ab ; 2 uses
  store ptr %i.y, ptr %2, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !55 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !57
  %.not.i = icmp ult i32 %i.af, %i.ah
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !58

bb.g:                                             ; preds = %bb.f
  %i.ai = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryELb1EE18growAndEmplaceBackIJRS4_NS_14iterator_rangeIPS4_EEEEERSC_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryEE12emplace_backIJRS4_NS_14iterator_rangeIPS4_EEEEERSC_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = zext i32 %i.af to i64
  %i.ak = load ptr, ptr %0, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.aj ; 3 uses
  store ptr %1, ptr %i.al, align 8, !tbaa !263
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.y, ptr %i.am, align 8, !tbaa !303
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.ac, ptr %i.an, align 8, !tbaa !304
  %i.ao = add nuw i32 %i.af, 1
  store i32 %i.ao, ptr %i.ae, align 8, !tbaa !55
  br label %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryEE12emplace_backIJRS4_NS_14iterator_rangeIPS4_EEEEERSC_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryEE12emplace_backIJRS4_NS_14iterator_rangeIPS4_EEEEERSC_DpOT_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS3_EEEENS_11GraphTraitsIS3_EEE13traverseChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryEE12emplace_backIJRS4_NS_14iterator_rangeIPS4_EEEEERSC_DpOT_.exit, %_ZN4llvm18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS2_EEE10insertEdgeESt8optionalIS2_ES2_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS3_EEEENS_11GraphTraitsIS3_EEE13traverseChildEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"class.llvm::iterator_range.5", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !54
  %i.d = load i32, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !303
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !304
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.pre67 = phi i32 [ %i.d, %.lr.ph ], [ %.pre68, %bb.j ] ; 2 uses
  %i.r = phi ptr [ %i.g, %.lr.ph ], [ %i.bf, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !303  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.r, align 8, !tbaa !303
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !44   ; 2 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 220
  %i.w = load i32, ptr %i.v, align 4, !tbaa !121  ; 2 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = load i64, ptr %i.m, align 8, !tbaa !260  ; 4 uses
  %.not.i.i = icmp ugt i64 %i.y, %i.x
  br i1 %.not.i.i, label %_ZN4llvm18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS2_EEE10insertEdgeESt8optionalIS2_ES2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = add i32 %i.w, 1
  %i.aa = zext i32 %i.z to i64                    ; 7 uses
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %_ZN4llvm18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS2_EEE10insertEdgeESt8optionalIS2_ES2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp samesign ugt i64 %i.y, %i.aa
  br i1 %i.ac, label %.sink.split.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !261
  %i.ae = icmp ult i64 %i.ad, %i.aa
  br i1 %i.ae, label %bb.f, label %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull %i.o, i64 noundef %i.aa, i64 noundef 1) #17
  %.pre.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !260
  br label %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.af = phi i64 [ %i.y, %bb.e ], [ %.pre.i.i.i.i, %bb.f ] ; 3 uses
  %.not11.i.i.i.i = icmp samesign eq i64 %i.af, %i.aa
  br i1 %.not11.i.i.i.i, label %.sink.split.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i.i.i
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !259
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.af
  %i.ai = sub i64 %i.aa, %i.af
  call void @llvm.memset.p0.i64(ptr align 1 %i.ah, i8 0, i64 %i.ai, i1 false), !tbaa !302
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %.lr.ph.preheader.i.i.i.i, %_ZN4llvm15SmallVectorImplIbE7reserveEm.exit.i.i.i.i, %bb.d
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !260
  %.pre6.pre = load i32, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS2_EEE10insertEdgeESt8optionalIS2_ES2_.exit

_ZN4llvm18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS2_EEE10insertEdgeESt8optionalIS2_ES2_.exit: ; preds = %bb.b, %bb.c, %.sink.split.i.i.i.i
  %.pre6 = phi i32 [ %.pre67, %bb.b ], [ %.pre67, %bb.c ], [ %.pre6.pre, %.sink.split.i.i.i.i ] ; 4 uses
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !259
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.x ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !302, !range !47, !noundef !48
  store i8 1, ptr %i.ak, align 1, !tbaa !302
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN4llvm18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS2_EEE10insertEdgeESt8optionalIS2_ES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !44  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !54 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !55
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.as ; 2 uses
  store ptr %i.ap, ptr %1, align 8
  store ptr %i.at, ptr %i.p, align 8
  %i.au = load i32, ptr %i.q, align 4, !tbaa !57
  %.not.i = icmp ult i32 %.pre6, %i.au
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !58

bb.h:                                             ; preds = %bb.g
  %i.av = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryELb1EE18growAndEmplaceBackIJRS4_NS_14iterator_rangeIPS4_EEEEERSC_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 0 uses
  %.pre.pre = load i32, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryEE12emplace_backIJRS4_NS_14iterator_rangeIPS4_EEEEERSC_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.aw = zext i32 %.pre6 to i64
  %i.ax = load ptr, ptr %0, align 8, !tbaa !54
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.aw ; 3 uses
  store ptr %i.an, ptr %i.ay, align 8, !tbaa !263
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ap, ptr %i.az, align 8, !tbaa !303
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.at, ptr %i.ba, align 8, !tbaa !304
  %i.bb = add nuw i32 %.pre6, 1                   ; 2 uses
  store i32 %i.bb, ptr %i.b, align 8, !tbaa !55
  br label %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryEE12emplace_backIJRS4_NS_14iterator_rangeIPS4_EEEEERSC_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryEE12emplace_backIJRS4_NS_14iterator_rangeIPS4_EEEEERSC_DpOT_.exit: ; preds = %bb.h, %bb.i
  %.pre = phi i32 [ %.pre.pre, %bb.h ], [ %i.bb, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS2_EEE10insertEdgeESt8optionalIS2_ES2_.exit, %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryEE12emplace_backIJRS4_NS_14iterator_rangeIPS4_EEEEERSC_DpOT_.exit
  %.pre68 = phi i32 [ %.pre6, %_ZN4llvm18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS2_EEE10insertEdgeESt8optionalIS2_ES2_.exit ], [ %.pre, %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryEE12emplace_backIJRS4_NS_14iterator_rangeIPS4_EEEEERSC_DpOT_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bc = load ptr, ptr %0, align 8, !tbaa !54
  %i.bd = zext i32 %.pre68 to i64
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !303
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 -8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !304
  %i.bj = icmp eq ptr %i.bg, %i.bi
  br i1 %i.bj, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryELb1EE18growAndEmplaceBackIJRS4_NS_14iterator_rangeIPS4_EEEEERSC_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.llvm::PostOrderTraversalBase<llvm::PostOrderTraversal<llvm::MachineBasicBlock *>, llvm::GraphTraits<MachineBasicBlock *>>::StackEntry", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = load ptr, ptr %1, align 8, !tbaa !44
  store ptr %i.a, ptr %3, align 8, !tbaa !263
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !234
  store <2 x ptr> %i.c, ptr %i.b, align 8, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !57
  %.not.i = icmp ult i32 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryELb1EE15growAndPushBackERKSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pre = load i32, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryELb1EE9push_backERKSC_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.k = load i32, ptr %i.d, align 8, !tbaa !55
  %i.l = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryELb1EE9push_backERKSC_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryELb1EE9push_backERKSC_.exit: ; preds = %bb.b, %bb.c
  %i.m = phi i32 [ %.pre, %bb.b ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.n = load ptr, ptr %0, align 8, !tbaa !54
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -24
  ret ptr %i.q
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPNS_17MachineBasicBlockENS_9po_detail9NumberSetIS4_EEEENS_11GraphTraitsIS4_EEE10StackEntryELb1EE15growAndPushBackERKSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load <3 x ptr>, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !54
  %i.g = load i32, ptr %i.a, align 8, !tbaa !55
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  store <3 x ptr> %.sroa.0.0.copyload, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !55
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !55
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_15MachineFunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #3

declare void @__once_proxy() #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv() #2 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !563, !nonnull !48
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !564, !nonnull !48, !align !268
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !567
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(160) %i.f) #17, !inline_history !561
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{!0, !41}
!1 = distinct !{!1, !41}
!2 = distinct !{!2, !56}
!3 = distinct !{!3, !41}
!4 = distinct !{!4, !56}
!5 = distinct !{!5, !41}
!6 = distinct !{!6, !41}
!7 = distinct !{!7, !41}
!8 = distinct !{!8, !41}
!9 = distinct !{!9, !41}
!10 = distinct !{!10, !41}
!11 = distinct !{!11, !41}
!12 = distinct !{!12, !41}
!13 = distinct !{!13, !41}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"any pointer", !18, i64 0}
!23 = !{!"p1 _ZTSN4llvm11MachineLoopE", !22, i64 0}
!24 = !{!"any p2 pointer", !22, i64 0}
!25 = !{!"p2 _ZTSN4llvm11MachineLoopE", !24, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIPN4llvm11MachineLoopESaIS2_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIPN4llvm11MachineLoopESaIS2_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIPN4llvm11MachineLoopESaIS2_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIPN4llvm11MachineLoopESaIS2_EE", !28, i64 0}
!30 = !{!"p2 _ZTSN4llvm17MachineBasicBlockE", !24, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE12_Vector_implE", !31, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE", !33, i64 0}
!35 = !{!"bool", !18, i64 0}
!36 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !24, i64 0, !19, i64 8, !19, i64 12, !35, i64 16}
!37 = !{!"_ZTSN4llvm15SmallPtrSetImplIPKNS_17MachineBasicBlockEEE", !36, i64 0}
!38 = !{!"_ZTSN4llvm11SmallPtrSetIPKNS_17MachineBasicBlockELj8EEE", !37, i64 0, !18, i64 24}
!39 = !{!"_ZTSN4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEEE", !23, i64 0, !29, i64 8, !34, i64 32, !38, i64 56}
!40 = !{!39, !23, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!31, !30, i64 0}
!43 = !{!"p1 _ZTSN4llvm17MachineBasicBlockE", !22, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!31, !30, i64 8}
!46 = !{!36, !35, i64 16}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!36, !24, i64 0}
!50 = !{!36, !19, i64 12}
!51 = !{!22, !22, i64 0}
!52 = !{!25, !25, i64 0}
!53 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !22, i64 0, !19, i64 8, !19, i64 12}
!54 = !{!53, !22, i64 0}
!55 = !{!53, !19, i64 8}
!56 = !{!"llvm.loop.unswitch.partial.disable"}
!57 = !{!53, !19, i64 12}
!58 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!59 = !{!"p1 _ZTSN4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEEE", !22, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!36, !19, i64 8}
!62 = !{!"_ZTSN4llvm14iterator_rangeIPPNS_17MachineBasicBlockEEE", !30, i64 0, !30, i64 8}
!63 = !{!62, !30, i64 0}
!64 = !{!62, !30, i64 8}
!65 = !{!23, !23, i64 0}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !22, i64 0}
!68 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !67, i64 0, !67, i64 8}
!69 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !68, i64 0}
!70 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !69, i64 0}
!71 = !{!"_ZTSN4llvm10ilist_nodeINS_17MachineBasicBlockEJEEE", !70, i64 0}
!72 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_17MachineBasicBlockENS_15MachineFunctionEJEEE", !71, i64 0}
!73 = !{!"p1 _ZTSN4llvm10BasicBlockE", !22, i64 0}
!74 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !22, i64 0}
!75 = !{!"_ZTSN4llvm12ilist_traitsINS_12MachineInstrEEE", !43, i64 0}
!76 = !{!"_ZTSN4llvm6detail13PunnedPointerIPNS_15ilist_node_baseILb1EvEEEE", !18, i64 0}
!77 = !{!"_ZTSN4llvm14PointerIntPairIPNS_15ilist_node_baseILb1EvEELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEE", !76, i64 0}
!78 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb1EvEE", !22, i64 0}
!79 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb1EvEELb1EEE", !77, i64 0, !78, i64 8}
!80 = !{!"_ZTSN4llvm15ilist_node_baseILb1EvEE", !79, i64 0}
!81 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEEEE", !80, i64 0}
!82 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEEEE", !81, i64 0}
!83 = !{!"_ZTSN4llvm12simple_ilistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEE", !82, i64 0}
!84 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEENS_12ilist_traitsIS2_EEEE", !75, i64 0, !83, i64 8}
!85 = !{!"_ZTSN4llvm6iplistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEE", !84, i64 0}
!86 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_17MachineBasicBlockEvEE", !53, i64 0}
!87 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EEE", !86, i64 0}
!88 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_17MachineBasicBlockEEE", !87, i64 0}
!89 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_17MachineBasicBlockELj4EEE", !18, i64 0}
!90 = !{!"_ZTSN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EEE", !88, i64 0, !89, i64 16}
!91 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_17MachineBasicBlockELj2EEE", !18, i64 0}
!92 = !{!"_ZTSN4llvm11SmallVectorIPNS_17MachineBasicBlockELj2EEE", !88, i64 0, !91, i64 16}
!93 = !{!"p1 _ZTSN4llvm17BranchProbabilityE", !22, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIN4llvm17BranchProbabilityESaIS1_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!95 = !{!"_ZTSNSt12_Vector_baseIN4llvm17BranchProbabilityESaIS1_EE12_Vector_implE", !94, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseIN4llvm17BranchProbabilityESaIS1_EE", !95, i64 0}
!97 = !{!"_ZTSSt6vectorIN4llvm17BranchProbabilityESaIS1_EE", !96, i64 0}
!98 = !{!"_ZTSSt22_Optional_payload_baseImE", !18, i64 0, !35, i64 8}
!99 = !{!"_ZTSSt17_Optional_payloadImLb1ELb1ELb1EE", !98, i64 0}
!100 = !{!"_ZTSSt14_Optional_baseImLb1ELb1EE", !99, i64 0}
!101 = !{!"_ZTSSt8optionalImE", !100, i64 0}
!102 = !{!"p1 _ZTSN4llvm17MachineBasicBlock16RegisterMaskPairE", !22, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!104 = !{!"_ZTSNSt12_Vector_baseIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_Vector_implE", !103, i64 0}
!105 = !{!"_ZTSSt12_Vector_baseIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE", !104, i64 0}
!106 = !{!"_ZTSSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE", !105, i64 0}
!107 = !{!"_ZTSN4llvm5AlignE", !18, i64 0}
!108 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm10UniqueBBIDEE", !18, i64 0, !35, i64 8}
!109 = !{!"_ZTSSt17_Optional_payloadIN4llvm10UniqueBBIDELb1ELb1ELb1EE", !108, i64 0}
!110 = !{!"_ZTSSt14_Optional_baseIN4llvm10UniqueBBIDELb1ELb1EE", !109, i64 0}
!111 = !{!"_ZTSSt8optionalIN4llvm10UniqueBBIDEE", !110, i64 0}
!112 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIjvEE", !53, i64 0}
!113 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIjLb1EEE", !112, i64 0}
!114 = !{!"_ZTSN4llvm15SmallVectorImplIjEE", !113, i64 0}
!115 = !{!"_ZTSN4llvm18SmallVectorStorageIjLj12EEE", !18, i64 0}
!116 = !{!"_ZTSN4llvm11SmallVectorIjLj12EEE", !114, i64 0, !115, i64 16}
!117 = !{!"_ZTSN4llvm12MBBSectionID11SectionTypeE", !18, i64 0}
!118 = !{!"_ZTSN4llvm12MBBSectionIDE", !117, i64 0, !19, i64 4}
!119 = !{!"p1 _ZTSN4llvm8MCSymbolE", !22, i64 0}
!120 = !{!"_ZTSN4llvm17MachineBasicBlockE", !72, i64 0, !73, i64 16, !19, i64 24, !19, i64 28, !74, i64 32, !85, i64 40, !90, i64 64, !92, i64 112, !97, i64 144, !101, i64 168, !106, i64 184, !107, i64 208, !19, i64 212, !35, i64 216, !35, i64 217, !19, i64 220, !73, i64 224, !35, i64 232, !35, i64 233, !35, i64 234, !35, i64 235, !35, i64 236, !111, i64 240, !116, i64 256, !118, i64 320, !35, i64 328, !35, i64 329, !35, i64 330, !119, i64 336, !119, i64 344, !119, i64 352}
!121 = !{!120, !19, i64 220}
!122 = !{!120, !74, i64 32}
!123 = !{!"p1 _ZTSN4llvm8FunctionE", !22, i64 0}
!124 = !{!"p1 _ZTSN4llvm13TargetMachineE", !22, i64 0}
!125 = !{!"p1 _ZTSN4llvm19TargetSubtargetInfoE", !22, i64 0}
!126 = !{!"p1 _ZTSN4llvm9MCContextE", !22, i64 0}
!127 = !{!"p1 _ZTSN4llvm19MachineRegisterInfoE", !22, i64 0}
!128 = !{!"p1 _ZTSN4llvm19MachineFunctionInfoE", !22, i64 0}
!129 = !{!"p1 _ZTSN4llvm16MachineFrameInfoE", !22, i64 0}
!130 = !{!"p1 _ZTSN4llvm19MachineConstantPoolE", !22, i64 0}
!131 = !{!"p1 _ZTSN4llvm20MachineJumpTableInfoE", !22, i64 0}
!132 = !{!"p1 _ZTSN4llvm9MCSectionE", !22, i64 0}
!133 = !{!"p1 _ZTSN4llvm13WinEHFuncInfoE", !22, i64 0}
!134 = !{!"p1 omnipotent char", !22, i64 0}
!135 = !{!"long", !18, i64 0}
!136 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !53, i64 0}
!137 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !136, i64 0}
!138 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !137, i64 0}
!139 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !18, i64 0}
!140 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !138, i64 0, !139, i64 16}
!141 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !53, i64 0}
!142 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !141, i64 0}
!143 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !142, i64 0}
!144 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !143, i64 0}
!145 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !134, i64 0, !135, i64 8, !140, i64 16, !144, i64 64}
!146 = !{!"p1 _ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EE8FreeNodeE", !22, i64 0}
!147 = !{!"_ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EEE", !146, i64 0}
end_hunk_1
begin_hunk_2_@llvm.umin.i32
!312 = distinct !{!312, !41}
!313 = distinct !{!313, !41, !56}
!314 = distinct !{!314, !56}
!315 = distinct !{!315, !56}
!316 = distinct !{!316, !"_ZN4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE6insertES2_"}
!317 = distinct !{!317, !316, !"_ZN4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE6insertES2_: argument 0"}
!318 = !{!317}
!319 = distinct !{!319, !"_ZN4llvm17make_filter_rangeINS_14iterator_rangeIPKPNS_17MachineBasicBlockEEEZNKS_8LoopBaseIS2_NS_11MachineLoopEE27getUniqueNonLatchExitBlocksERNS_15SmallVectorImplIS3_EEEUlPKS2_E_EENS1_INS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISJ_E17iterator_categoryEEESM_St20forward_iterator_tagE4typeEEEEEOSH_SK_"}
!320 = distinct !{!320, !319, !"_ZN4llvm17make_filter_rangeINS_14iterator_rangeIPKPNS_17MachineBasicBlockEEEZNKS_8LoopBaseIS2_NS_11MachineLoopEE27getUniqueNonLatchExitBlocksERNS_15SmallVectorImplIS3_EEEUlPKS2_E_EENS1_INS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISJ_E17iterator_categoryEEESM_St20forward_iterator_tagE4typeEEEEEOSH_SK_: argument 0"}
!321 = distinct !{!321, !41}
!322 = distinct !{!322, !"_ZN4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE6insertES2_"}
!323 = distinct !{!323, !322, !"_ZN4llvm15SmallPtrSetImplIPNS_17MachineBasicBlockEE6insertES2_: argument 0"}
!324 = !{!320}
!325 = !{!323}
!326 = distinct !{!326, !56}
!327 = !{!"_ZTSSt4pairIPN4llvm17MachineBasicBlockES2_E", !43, i64 0, !43, i64 8}
!328 = !{!327, !43, i64 0}
!329 = !{!327, !43, i64 8}
!330 = distinct !{!330, !56}
!331 = distinct !{!331, !"_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE6rbeginEv"}
!332 = distinct !{!332, !331, !"_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE6rbeginEv: argument 0"}
!333 = distinct !{!333, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE6rbeginEv"}
!334 = distinct !{!334, !333, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE6rbeginEv: argument 0"}
!335 = distinct !{!335, !"_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE4rendEv"}
!336 = distinct !{!336, !335, !"_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE4rendEv: argument 0"}
!337 = distinct !{!337, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE4rendEv"}
!338 = distinct !{!338, !337, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE4rendEv: argument 0"}
!339 = distinct !{!339, !66}
!340 = distinct !{!340, !"_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE6rbeginEv"}
!341 = distinct !{!341, !340, !"_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE6rbeginEv: argument 0"}
!342 = distinct !{!342, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE6rbeginEv"}
!343 = distinct !{!343, !342, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE6rbeginEv: argument 0"}
!344 = distinct !{!344, !"_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE4rendEv"}
!345 = distinct !{!345, !344, !"_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE4rendEv: argument 0"}
!346 = distinct !{!346, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE4rendEv"}
!347 = distinct !{!347, !346, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE4rendEv: argument 0"}
!348 = distinct !{!348, !66}
!349 = distinct !{!349, !41}
!350 = !{!334, !332}
!351 = !{!338, !336}
!352 = !{!343, !341}
!353 = !{!347, !345}
!354 = distinct !{!354, !"_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE6rbeginEv"}
!355 = distinct !{!355, !354, !"_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE6rbeginEv: argument 0"}
!356 = distinct !{!356, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE6rbeginEv"}
!357 = distinct !{!357, !356, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE6rbeginEv: argument 0"}
!358 = distinct !{!358, !"_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE4rendEv"}
!359 = distinct !{!359, !358, !"_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE4rendEv: argument 0"}
!360 = distinct !{!360, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE4rendEv"}
!361 = distinct !{!361, !360, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE4rendEv: argument 0"}
!362 = distinct !{!362, !66}
!363 = distinct !{!363, !"_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE6rbeginEv"}
!364 = distinct !{!364, !363, !"_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE6rbeginEv: argument 0"}
!365 = distinct !{!365, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE6rbeginEv"}
!366 = distinct !{!366, !365, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE6rbeginEv: argument 0"}
!367 = distinct !{!367, !"_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE4rendEv"}
!368 = distinct !{!368, !367, !"_ZNK4llvm8LoopBaseINS_17MachineBasicBlockENS_11MachineLoopEE4rendEv: argument 0"}
!369 = distinct !{!369, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE4rendEv"}
!370 = distinct !{!370, !369, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE4rendEv: argument 0"}
!371 = distinct !{!371, !66}
!372 = distinct !{!372, !41}
!373 = !{!357, !355}
!374 = !{!361, !359}
!375 = !{!366, !364}
!376 = !{!370, !368}
!377 = distinct !{!377, !41}
!378 = distinct !{!378, !"_ZN4llvm15SmallPtrSetImplIPKNS_17MachineBasicBlockEE6insertES3_"}
!379 = distinct !{!379, !378, !"_ZN4llvm15SmallPtrSetImplIPKNS_17MachineBasicBlockEE6insertES3_: argument 0"}
!380 = !{!379}
!381 = distinct !{!381, !41}
!382 = distinct !{!382, !41}
!383 = distinct !{!383, !41}
!384 = distinct !{!384, !"_ZN4llvm6detail12DenseSetImplIPKNS_11MachineLoopENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE6insertEOS4_"}
!385 = distinct !{!385, !384, !"_ZN4llvm6detail12DenseSetImplIPKNS_11MachineLoopENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE6insertEOS4_: argument 0"}
!386 = distinct !{!386, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_"}
!387 = distinct !{!387, !386, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_: argument 0"}
!388 = distinct !{!388, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16try_emplace_implIS4_JEEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOT_DpOT0_"}
!389 = distinct !{!389, !388, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16try_emplace_implIS4_JEEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOT_DpOT0_: argument 0"}
!390 = distinct !{!390, !41}
!391 = !{!389, !387, !385}
!392 = distinct !{!392, !41}
!393 = distinct !{!393, !41}
!394 = distinct !{!394, !"_ZN4llvm15SmallPtrSetImplIPKNS_17MachineBasicBlockEE6insertES3_"}
!395 = distinct !{!395, !394, !"_ZN4llvm15SmallPtrSetImplIPKNS_17MachineBasicBlockEE6insertES3_: argument 0"}
!396 = !{!395}
!397 = distinct !{!397, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE6rbeginEv"}
!398 = distinct !{!398, !397, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE6rbeginEv: argument 0"}
!399 = !{!398}
!400 = distinct !{!400, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE4rendEv"}
!401 = distinct !{!401, !400, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE4rendEv: argument 0"}
!402 = !{!401}
!403 = distinct !{!403, !"_ZN4llvm7reverseIRKNS_12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEEEEEDaOT_"}
!404 = distinct !{!404, !403, !"_ZN4llvm7reverseIRKNS_12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEEEEEDaOT_: argument 0"}
!405 = distinct !{!405, !"_ZN4llvm10adl_rbeginIRKNS_12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEEEEEDTclsr10adl_detailE11rbegin_implclsr3stdE7forwardIT_Efp_EEEOS7_"}
!406 = distinct !{!406, !405, !"_ZN4llvm10adl_rbeginIRKNS_12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEEEEEDTclsr10adl_detailE11rbegin_implclsr3stdE7forwardIT_Efp_EEEOS7_: argument 0"}
!407 = distinct !{!407, !"_ZN4llvm10adl_detail11rbegin_implIRKNS_12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEEEEEDTcl6rbeginclsr3stdE7forwardIT_Efp_EEEOS8_"}
!408 = distinct !{!408, !407, !"_ZN4llvm10adl_detail11rbegin_implIRKNS_12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEEEEEDTcl6rbeginclsr3stdE7forwardIT_Efp_EEEOS8_: argument 0"}
!409 = distinct !{!409, !"_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE6rbeginEv"}
!410 = distinct !{!410, !409, !"_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE6rbeginEv: argument 0"}
!411 = distinct !{!411, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE6rbeginEv"}
!412 = distinct !{!412, !411, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE6rbeginEv: argument 0"}
!413 = distinct !{!413, !"_ZN4llvm8adl_rendIRKNS_12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEEEEEDTclsr10adl_detailE9rend_implclsr3stdE7forwardIT_Efp_EEEOS7_"}
!414 = distinct !{!414, !413, !"_ZN4llvm8adl_rendIRKNS_12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEEEEEDTclsr10adl_detailE9rend_implclsr3stdE7forwardIT_Efp_EEEOS7_: argument 0"}
!415 = distinct !{!415, !"_ZN4llvm10adl_detail9rend_implIRKNS_12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEEEEEDTcl4rendclsr3stdE7forwardIT_Efp_EEEOS8_"}
!416 = distinct !{!416, !415, !"_ZN4llvm10adl_detail9rend_implIRKNS_12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEEEEEDTcl4rendclsr3stdE7forwardIT_Efp_EEEOS8_: argument 0"}
!417 = distinct !{!417, !"_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE4rendEv"}
!418 = distinct !{!418, !417, !"_ZNK4llvm12LoopInfoBaseINS_17MachineBasicBlockENS_11MachineLoopEE4rendEv: argument 0"}
!419 = distinct !{!419, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE4rendEv"}
!420 = distinct !{!420, !419, !"_ZNKSt6vectorIPN4llvm11MachineLoopESaIS2_EE4rendEv: argument 0"}
!421 = !{!412, !410, !408, !406, !404}
!422 = !{!420, !418, !416, !414, !404}
!423 = distinct !{!423, !41}
!424 = distinct !{!424, !41}
!425 = distinct !{!425, !"_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE5nodesEv"}
!426 = distinct !{!426, !425, !"_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE5nodesEv: argument 0"}
!427 = distinct !{!427, !"_ZN4llvm17make_filter_rangeIRKNS_11SmallVectorIPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEELj6EEEZNKS_17DominatorTreeBaseIS3_Lb0EE5nodesEvEUlPKS4_E_EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISI_E17iterator_categoryEEESL_St20forward_iterator_tagE4typeEEEEEOSG_SJ_"}
!428 = distinct !{!428, !427, !"_ZN4llvm17make_filter_rangeIRKNS_11SmallVectorIPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEELj6EEEZNKS_17DominatorTreeBaseIS3_Lb0EE5nodesEvEUlPKS4_E_EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISI_E17iterator_categoryEEESL_St20forward_iterator_tagE4typeEEEEEOSG_SJ_: argument 0"}
!429 = distinct !{!429, !41}
!430 = distinct !{!430, !"_ZN4llvm7reverseIRNS_11SmallVectorIPKNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEELj32EEEEEDaOT_"}
!431 = distinct !{!431, !430, !"_ZN4llvm7reverseIRNS_11SmallVectorIPKNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEELj32EEEEEDaOT_: argument 0"}
!432 = distinct !{!432, !"_ZN4llvm10adl_rbeginIRNS_11SmallVectorIPKNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEELj32EEEEEDTclsr10adl_detailE11rbegin_implclsr3stdE7forwardIT_Efp_EEEOS9_"}
!433 = distinct !{!433, !432, !"_ZN4llvm10adl_rbeginIRNS_11SmallVectorIPKNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEELj32EEEEEDTclsr10adl_detailE11rbegin_implclsr3stdE7forwardIT_Efp_EEEOS9_: argument 0"}
!434 = distinct !{!434, !"_ZN4llvm10adl_detail11rbegin_implIRNS_11SmallVectorIPKNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEELj32EEEEEDTcl6rbeginclsr3stdE7forwardIT_Efp_EEEOSA_"}
!435 = distinct !{!435, !434, !"_ZN4llvm10adl_detail11rbegin_implIRNS_11SmallVectorIPKNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEELj32EEEEEDTcl6rbeginclsr3stdE7forwardIT_Efp_EEEOSA_: argument 0"}
!436 = distinct !{!436, !"_ZN4llvm25SmallVectorTemplateCommonIPKNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEEvE6rbeginEv"}
!437 = distinct !{!437, !436, !"_ZN4llvm25SmallVectorTemplateCommonIPKNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEEvE6rbeginEv: argument 0"}
!438 = distinct !{!438, !41}
!439 = distinct !{!439, !41}
!440 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_17MachineBasicBlockELj1EEE", !18, i64 0}
!441 = !{!"_ZTSN4llvm11SmallVectorIPNS_17MachineBasicBlockELj1EEE", !88, i64 0, !440, i64 16}
!442 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEEvEE", !53, i64 0}
!443 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEELb1EEE", !442, i64 0}
!444 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEEEE", !443, i64 0}
!445 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEELj6EEE", !18, i64 0}
!446 = !{!"_ZTSN4llvm11SmallVectorIPNS_15DomTreeNodeBaseINS_17MachineBasicBlockEEELj6EEE", !444, i64 0, !445, i64 16}
!447 = !{!"_ZTSSt5tupleIJEE"}
!448 = !{!"p1 _ZTSN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEEE", !22, i64 0}
!449 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm448ELm448ELm2ELm8EEE", !134, i64 0, !135, i64 8, !140, i64 16, !144, i64 64}
!450 = !{!"_ZTSN4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EEE", !441, i64 0, !446, i64 24, !447, i64 88, !448, i64 96, !74, i64 104, !449, i64 112, !35, i64 192, !19, i64 196, !19, i64 200}
!451 = !{!450, !448, i64 96}
!452 = !{!"p2 _ZTSN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEEE", !24, i64 0}
!453 = !{!"_ZTSN4llvm15DomTreeNodeBaseINS_17MachineBasicBlockEEE", !43, i64 0, !448, i64 8, !19, i64 16, !448, i64 24, !448, i64 32, !452, i64 40, !19, i64 48, !19, i64 52}
!454 = !{!453, !43, i64 0}
!455 = !{!228, !19, i64 112}
!456 = !{!453, !19, i64 52}
!457 = !{!448, !448, i64 0}
!458 = !{!428, !426}
!459 = !{!437, !435, !433, !431}
!460 = !{!453, !19, i64 48}
!461 = !{!453, !448, i64 8}
!462 = !{!453, !19, i64 16}
!463 = !{!450, !35, i64 192}
!464 = !{!450, !19, i64 196}
!465 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!466 = distinct !{!466, !"_ZN4llvm15SmallPtrSetImplIPKNS_17MachineBasicBlockEE6insertES3_"}
!467 = distinct !{!467, !466, !"_ZN4llvm15SmallPtrSetImplIPKNS_17MachineBasicBlockEE6insertES3_: argument 0"}
!468 = !{!467}
!469 = distinct !{!469, !"_ZN4llvm10post_orderIPNS_17MachineBasicBlockEEEDaRKT_"}
!470 = distinct !{!470, !469, !"_ZN4llvm10post_orderIPNS_17MachineBasicBlockEEEDaRKT_: argument 0"}
!471 = !{!470}
!472 = distinct !{!472, !41}
!473 = distinct !{!473, !"_ZN4llvm17PreservedAnalyses3allEv"}
!474 = distinct !{!474, !473, !"_ZN4llvm17PreservedAnalyses3allEv: argument 0"}
!475 = distinct !{!475, !"_ZN4llvm15SmallPtrSetImplIPvE6insertES1_"}
!476 = distinct !{!476, !475, !"_ZN4llvm15SmallPtrSetImplIPvE6insertES1_: argument 0"}
!477 = !{!"p1 _ZTSN4llvm11raw_ostreamE", !22, i64 0}
!478 = !{!"_ZTSN4llvm22MachineLoopPrinterPassE", !477, i64 0}
!479 = !{!478, !477, i64 0}
!480 = !{!474}
!481 = !{!476}
!482 = !{!271, !22, i64 16}
!483 = !{!271, !270, i64 24}
!484 = !{!275, !275, i64 0}
!485 = !{!134, !134, i64 0}
!486 = !{!"_ZTSN4llvm9StringRefE", !134, i64 0, !135, i64 8}
!487 = !{!"_ZTSN4llvm8PassInfoE", !486, i64 0, !486, i64 16, !22, i64 32, !35, i64 40, !35, i64 41, !22, i64 48}
!488 = !{!487, !22, i64 32}
!489 = !{!487, !35, i64 40}
!490 = !{!487, !35, i64 41}
!491 = !{!487, !22, i64 48}
!492 = !{!"p1 _ZTSSt4pairIPKvPN4llvm4PassEE", !22, i64 0}
!493 = !{!492, !492, i64 0}
!494 = !{!"p1 _ZTSN4llvm4PassE", !22, i64 0}
!495 = !{!"_ZTSSt4pairIPKvPN4llvm4PassEE", !22, i64 0, !494, i64 8}
!496 = !{!495, !22, i64 0}
!497 = distinct !{!497, !"_ZNK4llvm17PreservedAnalyses10getCheckerINS_19MachineLoopAnalysisEEENS0_24PreservedAnalysisCheckerEv"}
!498 = distinct !{!498, !497, !"_ZNK4llvm17PreservedAnalyses10getCheckerINS_19MachineLoopAnalysisEEENS0_24PreservedAnalysisCheckerEv: argument 0"}
!499 = !{!498}
!500 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPKvvEE", !53, i64 0}
!501 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPKvLb1EEE", !500, i64 0}
!502 = !{!"_ZTSN4llvm15SmallVectorImplIPKvEE", !501, i64 0}
!503 = !{!"_ZTSN4llvm18SmallVectorStorageIPKvLj8EEE", !18, i64 0}
!504 = !{!"_ZTSN4llvm11SmallVectorIPKvLj8EEE", !502, i64 0, !503, i64 16}
!505 = !{!"_ZTSN4llvm18SmallVectorStorageIPKvLj2EEE", !18, i64 0}
!506 = !{!"_ZTSN4llvm11SmallVectorIPKvLj2EEE", !502, i64 0, !505, i64 16}
!507 = !{!"_ZTSN4llvm11SmallVectorIPKvLj0EEE", !502, i64 0}
!508 = !{!"_ZTSN4llvm13AnalysisUsageE", !504, i64 0, !506, i64 80, !506, i64 112, !507, i64 144, !35, i64 160}
!509 = !{!508, !35, i64 160}
!510 = distinct !{!510, !41}
!511 = distinct !{!511, !41, !56}
!512 = distinct !{!512, !41, !56}
!513 = !{!283, !283, i64 0}
!514 = !{!120, !35, i64 217}
!515 = !{!120, !35, i64 330}
!516 = !{!"short", !18, i64 0}
!517 = !{!"p1 _ZTSN4llvm4TypeE", !22, i64 0}
!518 = !{!"p1 _ZTSN4llvm3UseE", !22, i64 0}
!519 = !{!"_ZTSN4llvm5ValueE", !18, i64 0, !18, i64 1, !18, i64 1, !516, i64 2, !19, i64 4, !19, i64 7, !19, i64 7, !19, i64 7, !19, i64 7, !517, i64 8, !518, i64 16}
!520 = !{!"_ZTSN4llvm4UserE", !519, i64 0}
!521 = !{!"_ZTSN4llvm12ilist_detail16node_base_parentINS_10BasicBlockEEE", !73, i64 0}
!522 = !{!"_ZTSN4llvm15ilist_node_baseILb0ENS_10BasicBlockEEE", !281, i64 0, !521, i64 16}
!523 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEEEE", !522, i64 0}
!524 = !{!"_ZTSN4llvm10ilist_nodeINS_11InstructionEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentINS_10BasicBlockEEEEEE", !523, i64 0}
!525 = !{!"_ZTSN4llvm22ilist_node_with_parentINS_11InstructionENS_10BasicBlockEJNS_19ilist_iterator_bitsILb1EEENS_12ilist_parentIS2_EEEEE", !524, i64 0}
!526 = !{!"p1 _ZTSN4llvm9DbgMarkerE", !22, i64 0}
!527 = !{!"_ZTSN4llvm11InstructionE", !520, i64 0, !525, i64 24, !284, i64 48, !19, i64 56, !19, i64 60, !526, i64 64}
!528 = !{!527, !19, i64 56}
!529 = !{!"p1 _ZTSN4llvm8MetadataE", !22, i64 0}
!530 = !{!"_ZTSN4llvm9MDOperandE", !529, i64 0}
!531 = !{!530, !529, i64 0}
!532 = distinct !{!532, !41}
!533 = distinct !{!533, !41}
!534 = distinct !{!534, !41, !56}
!535 = !{!287, !287, i64 0}
!536 = !{!"p1 _ZTSN4llvm12MachineInstrE", !22, i64 0}
!537 = !{!"_ZTSN4llvm14MachineOperandE", !19, i64 0, !19, i64 1, !19, i64 2, !19, i64 3, !19, i64 3, !19, i64 3, !19, i64 3, !19, i64 3, !19, i64 3, !19, i64 3, !19, i64 3, !18, i64 4, !536, i64 8, !18, i64 16}
!538 = !{!537, !536, i64 8}
!539 = !{!293, !287, i64 32}
!540 = !{ptr @_ZN4llvm26MachineLoopInfoWrapperPassD2Ev}
!541 = distinct !{!541, !41}
!542 = distinct !{!542, !56}
!543 = distinct !{!543, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E6getRepEv"}
!544 = distinct !{!544, !543, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E6getRepEv: argument 0"}
!545 = distinct !{!545, !"_ZNK4llvm8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE6getRepEv"}
!546 = distinct !{!546, !545, !"_ZNK4llvm8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE6getRepEv: argument 0"}
!547 = !{!546, !544}
!548 = distinct !{!548, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E6getRepEv"}
!549 = distinct !{!549, !548, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E6getRepEv: argument 0"}
!550 = distinct !{!550, !"_ZNK4llvm8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE6getRepEv"}
!551 = distinct !{!551, !550, !"_ZNK4llvm8DenseMapIPKNS_11MachineLoopENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE6getRepEv: argument 0"}
!552 = !{!551, !549}
!553 = distinct !{!553, !41}
!554 = distinct !{!554, !41}
!555 = distinct !{!555, !41}
!556 = distinct !{!556, !66}
!557 = distinct !{!557, !41}
!558 = distinct !{!558, !66}
!559 = distinct !{!559, !41}
!560 = distinct !{!560, !41}
!561 = distinct !{null, null, null, null}
!562 = !{!"_ZTSZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS1_EEEvRSt9once_flagOT_DpOT0_EUlvE_", !22, i64 0, !275, i64 8}
!563 = !{!562, !22, i64 0}
!564 = !{!562, !275, i64 8}
!565 = !{!"p1 _ZTSN4llvm12PassRegistryE", !22, i64 0}
!566 = !{!"_ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !565, i64 0}
!567 = !{!566, !565, i64 0}
end_hunk_2
