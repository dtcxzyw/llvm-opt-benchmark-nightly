Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIInsertWaitcnts?download=true
inline.NumInlined: 4632
inline.NumDeleted: 2109
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK12_GLOBAL__N_122SIInsertWaitcntsLegacy16getAnalysisUsageERN4llvm13AnalysisUsageE:bb.a
  br i1 %i.ad, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i:             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.af = load ptr, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !35
  %i.ag = icmp eq ptr %i.af, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %i.ag, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit54: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit56: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i: ; preds = %bb.b, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit54, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit56, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i, %bb.g
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i, %bb.g ], [ %.2.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i ], [ %i.aj, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit56 ], [ %i.ai, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit54 ], [ %i.ah, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i, %bb.b ]
  %.not.i.i = icmp eq ptr %.028.i.i.i.i.i.i, %i.h
  br i1 %.not.i.i, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i, label %_ZN4llvm13AnalysisUsage18addUsedIfAvailableINS_20AAResultsWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !494
  %.not.i2.i.i = icmp ult i32 %i.f, %i.al
  br i1 %.not.i2.i.i, label %bb.k, label %bb.j, !prof !166

bb.j:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_ZN4llvm20AAResultsWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage18addUsedIfAvailableINS_20AAResultsWrapperPassEEERS0_v.exit

bb.k:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g
  store ptr @_ZN4llvm20AAResultsWrapperPass2IDE, ptr %i.am, align 1
  %i.an = load i32, ptr %i.e, align 8, !tbaa !493
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.e, align 8, !tbaa !493
  br label %_ZN4llvm13AnalysisUsage18addUsedIfAvailableINS_20AAResultsWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage18addUsedIfAvailableINS_20AAResultsWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i, %bb.j, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !493 ; 4 uses
  %i.at = zext i32 %i.as to i64                   ; 3 uses
  %.idx4.i.i.i7 = shl nuw nsw i64 %i.at, 3        ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx4.i.i.i7
  %i.av = lshr i64 %i.at, 2                       ; 2 uses
  %.not.i.i.i8 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i8, label %._crit_edge.i.i.i.i.i.i14, label %.lr.ph.i.i.i.i.i.i9

.lr.ph.i.i.i.i.i.i9:                              ; preds = %_ZN4llvm13AnalysisUsage18addUsedIfAvailableINS_20AAResultsWrapperPassEEERS0_v.exit
  %i.aw = and i64 %.idx4.i.i.i7, 34359738336
  %scevgep.i.i.i.i.i.i10 = getelementptr i8, ptr %i.aq, i64 %i.aw
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i9
  %.047.i.i.i.i.i.i11 = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i9 ], [ %i.bj, %bb.p ] ; 2 uses
  %.02946.i.i.i.i.i.i12 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i9 ], [ %i.bi, %bb.p ] ; 9 uses
  %i.ax = load ptr, ptr %.02946.i.i.i.i.i.i12, align 8, !tbaa !35
  %i.ay = icmp eq ptr %i.ax, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %i.ay, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i12, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !35
  %i.bb = icmp eq ptr %i.ba, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %i.bb, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21.loopexit.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i12, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35
  %i.be = icmp eq ptr %i.bd, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %i.be, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21.loopexit.split.loop.exit62, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i12, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !35
  %i.bh = icmp eq ptr %i.bg, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %i.bh, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21.loopexit.split.loop.exit64, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i12, i64 32
  %i.bj = add nsw i64 %.047.i.i.i.i.i.i11, -1
  %i.bk = icmp sgt i64 %.047.i.i.i.i.i.i11, 1
  br i1 %i.bk, label %bb.l, label %._crit_edge.loopexit.i.i.i.i.i.i13, !llvm.loop !1144

._crit_edge.loopexit.i.i.i.i.i.i13:               ; preds = %bb.p
  %i.bl = and i32 %i.as, 3
  br label %._crit_edge.i.i.i.i.i.i14

._crit_edge.i.i.i.i.i.i14:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i13, %_ZN4llvm13AnalysisUsage18addUsedIfAvailableINS_20AAResultsWrapperPassEEERS0_v.exit
  %.pre-phi56.i.i.i.i.i.i15 = phi i32 [ %i.bl, %._crit_edge.loopexit.i.i.i.i.i.i13 ], [ %i.as, %_ZN4llvm13AnalysisUsage18addUsedIfAvailableINS_20AAResultsWrapperPassEEERS0_v.exit ]
  %.029.lcssa.i.i.i.i.i.i16 = phi ptr [ %scevgep.i.i.i.i.i.i10, %._crit_edge.loopexit.i.i.i.i.i.i13 ], [ %i.aq, %_ZN4llvm13AnalysisUsage18addUsedIfAvailableINS_20AAResultsWrapperPassEEERS0_v.exit ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i15, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i19 [
    i32 3, label %bb.q
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i24
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i17
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i.i14
  %i.bm = load ptr, ptr %.029.lcssa.i.i.i.i.i.i16, align 8, !tbaa !35
  %i.bn = icmp eq ptr %i.bm, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %i.bn, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i16, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i24

._crit_edge._crit_edge.i.i.i.i.i.i24:             ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i14
  %.1.i.i.i.i.i.i25 = phi ptr [ %i.bo, %bb.r ], [ %.029.lcssa.i.i.i.i.i.i16, %._crit_edge.i.i.i.i.i.i14 ] ; 3 uses
  %i.bp = load ptr, ptr %.1.i.i.i.i.i.i25, align 8, !tbaa !35
  %i.bq = icmp eq ptr %i.bp, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %i.bq, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21, label %bb.s

bb.s:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i24
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i25, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i17

._crit_edge._crit_edge52.i.i.i.i.i.i17:           ; preds = %bb.s, %._crit_edge.i.i.i.i.i.i14
  %.2.i.i.i.i.i.i18 = phi ptr [ %i.br, %bb.s ], [ %.029.lcssa.i.i.i.i.i.i16, %._crit_edge.i.i.i.i.i.i14 ] ; 2 uses
  %i.bs = load ptr, ptr %.2.i.i.i.i.i.i18, align 8, !tbaa !35
  %i.bt = icmp eq ptr %i.bs, @_ZN4llvm20AAResultsWrapperPass2IDE
  br i1 %i.bt, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i19

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21.loopexit.split.loop.exit: ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i12, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21.loopexit.split.loop.exit62: ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i12, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21.loopexit.split.loop.exit64: ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i12, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21: ; preds = %bb.l, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21.loopexit.split.loop.exit62, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21.loopexit.split.loop.exit64, %._crit_edge._crit_edge52.i.i.i.i.i.i17, %._crit_edge._crit_edge.i.i.i.i.i.i24, %bb.q
  %.028.i.i.i.i.i.i22 = phi ptr [ %.1.i.i.i.i.i.i25, %._crit_edge._crit_edge.i.i.i.i.i.i24 ], [ %.029.lcssa.i.i.i.i.i.i16, %bb.q ], [ %.2.i.i.i.i.i.i18, %._crit_edge._crit_edge52.i.i.i.i.i.i17 ], [ %i.bw, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21.loopexit.split.loop.exit64 ], [ %i.bv, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21.loopexit.split.loop.exit62 ], [ %i.bu, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i12, %bb.l ]
  %.not.i.i23 = icmp eq ptr %.028.i.i.i.i.i.i22, %i.au
  br i1 %.not.i.i23, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i19, label %_ZN4llvm13AnalysisUsage12addPreservedINS_20AAResultsWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i19: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21, %._crit_edge._crit_edge52.i.i.i.i.i.i17, %._crit_edge.i.i.i.i.i.i14
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !494
  %.not.i2.i.i20 = icmp ult i32 %i.as, %i.by
  br i1 %.not.i2.i.i20, label %bb.u, label %bb.t, !prof !166

bb.t:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i19
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull @_ZN4llvm20AAResultsWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_20AAResultsWrapperPassEEERS0_v.exit

bb.u:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i19
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.at
  store ptr @_ZN4llvm20AAResultsWrapperPass2IDE, ptr %i.bz, align 1
  %i.ca = load i32, ptr %i.ar, align 8, !tbaa !493
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.ar, align 8, !tbaa !493
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_20AAResultsWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_20AAResultsWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21, %bb.t, %bb.u
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #26
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #5

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #5

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_122SIInsertWaitcntsLegacy20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.(anonymous namespace)::SIInsertWaitcnts", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1146 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1146 ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1149 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm26MachineLoopInfoWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1149
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm26MachineLoopInfoWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %i.g, %.lr.ph.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.not.i3.i.i9 = icmp eq ptr %i.f, @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i9, label %_ZNK4llvm4Pass11getAnalysisINS_35MachinePostDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit, %.lr.ph.i.i.i10
  %.sroa.08.015.i4.i.i11 = phi ptr [ %i.l, %.lr.ph.i.i.i10 ], [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i11, i64 16 ; 4 uses
  %.not11.i.i.i12 = icmp ne ptr %i.l, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i12)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1149
  %.not.i.i.i13 = icmp eq ptr %i.m, @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i13, label %_ZNK4llvm4Pass11getAnalysisINS_35MachinePostDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i10

_ZNK4llvm4Pass11getAnalysisINS_35MachinePostDominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i10, %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i14 = phi ptr [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit ], [ %i.l, %.lr.ph.i.i.i10 ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i14, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = tail call noundef ptr @_ZNK4llvm16AnalysisResolver22getAnalysisIfAvailableEPKv(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull @_ZN4llvm20AAResultsWrapperPass2IDE) #26 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm4Pass11getAnalysisINS_35MachinePostDominatorTreeWrapperPassEEERT_v.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1150
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK4llvm4Pass11getAnalysisINS_35MachinePostDominatorTreeWrapperPassEEERT_v.exit
  %.0 = phi ptr [ %i.s, %bb.b ], [ null, %_ZNK4llvm4Pass11getAnalysisINS_35MachinePostDominatorTreeWrapperPassEEERT_v.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(306) %2, i8 0, i64 48, i1 false)
  store ptr %i.k, ptr %i.t, align 8, !tbaa !169
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.p, ptr %i.u, align 8, !tbaa !171
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %.0, ptr %i.v, align 8, !tbaa !204
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %1, ptr %i.w, align 8, !tbaa !205
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i8 0, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr %i.z, ptr %i.y, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aa, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, i8 0, i64 80, i1 false)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !206, !nonnull !31, !align !163 ; 4 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !207
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 912
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !208
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1024
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !209
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !210
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !211
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 304
  store i8 0, ptr %i.am, align 8, !tbaa !212
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 867
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !382, !range !30, !noundef !31
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.d, label %_ZN12_GLOBAL__N_116SIInsertWaitcntsC2ERN4llvm15MachineLoopInfoERNS1_24MachinePostDominatorTreeEPNS1_9AAResultsERNS1_15MachineFunctionE.exit

bb.d:                                             ; preds = %bb.c
  %i.aq = load ptr, ptr %1, align 8, !tbaa !162, !nonnull !31, !align !163
  %i.ar = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140) %i.aq, ptr nonnull @.str.11, i64 15) #26
  %i.as = zext i1 %i.ar to i8
  br label %_ZN12_GLOBAL__N_116SIInsertWaitcntsC2ERN4llvm15MachineLoopInfoERNS1_24MachinePostDominatorTreeEPNS1_9AAResultsERNS1_15MachineFunctionE.exit

_ZN12_GLOBAL__N_116SIInsertWaitcntsC2ERN4llvm15MachineLoopInfoERNS1_24MachinePostDominatorTreeEPNS1_9AAResultsERNS1_15MachineFunctionE.exit: ; preds = %bb.c, %bb.d
  %i.at = phi i8 [ 0, %bb.c ], [ %i.as, %bb.d ]
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 305
  store i8 %i.at, ptr %i.au, align 1, !tbaa !383
  %i.av = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_116SIInsertWaitcnts3runEv(ptr noundef nonnull align 8 dereferenceable(306) %2)
  call fastcc void @_ZN12_GLOBAL__N_116SIInsertWaitcntsD2Ev(ptr noundef nonnull align 8 dead_on_return(306) dereferenceable(306) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 %i.av
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #5

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !493
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #26
  %i.f = load ptr, ptr %0, align 8, !tbaa !34
  %i.g = load i32, ptr %i.a, align 8, !tbaa !493
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !493
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !493
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNK4llvm16AnalysisResolver22getAnalysisIfAvailableEPKv(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140), ptr, i64) local_unnamed_addr #5

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNKSt14default_deleteIN12_GLOBAL__N_115WaitcntBracketsEEclEPS1_(ptr noundef %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvm11SmallVectorISt5arrayIjLm12EELj1EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.c) #26
  br label %_ZN4llvm11SmallVectorISt5arrayIjLm12EELj1EED2Ev.exit.i

_ZN4llvm11SmallVectorISt5arrayIjLm12EELj1EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorISt5arrayIjLm12EELj1EED2Ev.exit.i
  tail call void @free(ptr noundef %i.g) #26
  br label %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EED2Ev.exit.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorISt5arrayIjLm12EELj1EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.k = load i32, ptr %i.j, align 4, !tbaa !513  ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN4llvm8DenseMapINS_9MCRegUnitEN12_GLOBAL__N_115WaitcntBrackets8SGPRInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !514
  %i.o = zext i32 %i.k to i64                     ; 2 uses
  %i.p = mul nuw nsw i64 %i.o, 12
  %i.q = add nuw nsw i64 %i.o, 31
  %i.r = lshr i64 %i.q, 3
  %i.s = and i64 %i.r, 1073741820
  %i.t = add nuw nsw i64 %i.s, %i.p
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.n, i64 noundef %i.t, i64 noundef 4) #26
  br label %_ZN4llvm8DenseMapINS_9MCRegUnitEN12_GLOBAL__N_115WaitcntBrackets8SGPRInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i

_ZN4llvm8DenseMapINS_9MCRegUnitEN12_GLOBAL__N_115WaitcntBrackets8SGPRInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i: ; preds = %bb.e, %_ZN4llvm11SmallVectorIPKNS_12MachineInstrELj6EED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.v = load i32, ptr %i.u, align 4, !tbaa !515  ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN12_GLOBAL__N_115WaitcntBracketsD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8DenseMapINS_9MCRegUnitEN12_GLOBAL__N_115WaitcntBrackets8SGPRInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !516
  %i.z = zext i32 %i.v to i64                     ; 2 uses
  %i.aa = mul nuw nsw i64 %i.z, 56
  %i.ab = add nuw nsw i64 %i.z, 31
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = and i64 %i.ac, 1073741820
  %i.ae = add nuw nsw i64 %i.ad, %i.aa
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.y, i64 noundef %i.ae, i64 noundef 4) #26
  br label %_ZN12_GLOBAL__N_115WaitcntBracketsD2Ev.exit

_ZN12_GLOBAL__N_115WaitcntBracketsD2Ev.exit:      ; preds = %_ZN4llvm8DenseMapINS_9MCRegUnitEN12_GLOBAL__N_115WaitcntBrackets8SGPRInfoENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 360) #29
  br label %bb.g

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_115WaitcntBracketsD2Ev.exit, %bb.a
  ret void
}

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #5

declare void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, ptr noundef nonnull align 8 dereferenceable(17)) unnamed_addr #5

declare { i64, i32 } @_ZN4llvm6AMDGPU13getIsaVersionENS_9StringRefE(ptr, i64) local_unnamed_addr #5

declare void @_ZN4llvm6AMDGPU14HardwareLimitsC1ERKNS0_10IsaVersionE(ptr noundef nonnull align 4 dereferenceable(44), ptr noundef nonnull align 4 dereferenceable(12)) unnamed_addr #5

declare ptr @_ZNK4llvm8Function14getFnAttributeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(140), ptr, i64) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm9Attribute14getValueAsBoolEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef) local_unnamed_addr #5

declare { i64, i64 } @_ZN4llvm6AMDGPU18inst_counter_typesENS0_15InstCounterTypeE(i32 noundef) local_unnamed_addr #5

end_hunk_0
