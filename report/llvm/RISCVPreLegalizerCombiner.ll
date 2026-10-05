Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVPreLegalizerCombiner?download=true
inline.NumInlined: 3522
inline.NumDeleted: 1392
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK12_GLOBAL__N_125RISCVPreLegalizerCombiner16getAnalysisUsageERN4llvm13AnalysisUsageE:bb.a
  %i.bs = icmp eq ptr %i.br, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %i.bs, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i25, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i23

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i25.loopexit.split.loop.exit: ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i16, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i25

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i25.loopexit.split.loop.exit101: ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i16, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i25

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i25.loopexit.split.loop.exit103: ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i16, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i25

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i25: ; preds = %bb.l, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i25.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i25.loopexit.split.loop.exit101, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i25.loopexit.split.loop.exit103, %._crit_edge._crit_edge52.i.i.i.i.i.i21, %._crit_edge._crit_edge.i.i.i.i.i.i28, %bb.q
  %.028.i.i.i.i.i.i26 = phi ptr [ %.1.i.i.i.i.i.i29, %._crit_edge._crit_edge.i.i.i.i.i.i28 ], [ %.029.lcssa.i.i.i.i.i.i20, %bb.q ], [ %.2.i.i.i.i.i.i22, %._crit_edge._crit_edge52.i.i.i.i.i.i21 ], [ %i.bv, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i25.loopexit.split.loop.exit103 ], [ %i.bu, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i25.loopexit.split.loop.exit101 ], [ %i.bt, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i25.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i16, %bb.l ]
  %.not.i.i27 = icmp eq ptr %.028.i.i.i.i.i.i26, %i.at
  br i1 %.not.i.i27, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i23, label %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i23: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i25, %._crit_edge._crit_edge52.i.i.i.i.i.i21, %._crit_edge.i.i.i.i.i.i18
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !82
  %.not.i2.i.i24 = icmp ult i32 %i.ar, %i.bx
  br i1 %.not.i2.i.i24, label %bb.u, label %bb.t, !prof !83

bb.t:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i23
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit

bb.u:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i23
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  store ptr @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.e, align 8, !tbaa !81
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.e, align 8, !tbaa !81
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i25, %bb.t, %bb.u
  %i.cb = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE) #24 ; 0 uses
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !46  ; 5 uses
  %i.cd = load i32, ptr %i.e, align 8, !tbaa !81  ; 4 uses
  %i.ce = zext i32 %i.cd to i64                   ; 3 uses
  %.idx4.i.i.i33 = shl nuw nsw i64 %i.ce, 3       ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx4.i.i.i33
  %i.cg = lshr i64 %i.ce, 2                       ; 2 uses
  %.not.i.i.i34 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i34, label %._crit_edge.i.i.i.i.i.i40, label %.lr.ph.i.i.i.i.i.i35

.lr.ph.i.i.i.i.i.i35:                             ; preds = %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit
  %i.ch = and i64 %.idx4.i.i.i33, 34359738336
  %scevgep.i.i.i.i.i.i36 = getelementptr i8, ptr %i.cc, i64 %i.ch
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i35
  %.047.i.i.i.i.i.i37 = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.i.i35 ], [ %i.cu, %bb.z ] ; 2 uses
  %.02946.i.i.i.i.i.i38 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i35 ], [ %i.ct, %bb.z ] ; 9 uses
  %i.ci = load ptr, ptr %.02946.i.i.i.i.i.i38, align 8, !tbaa !47
  %i.cj = icmp eq ptr %i.ci, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %i.cj, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i38, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !47
  %i.cm = icmp eq ptr %i.cl, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %i.cm, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47.loopexit.split.loop.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i38, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !47
  %i.cp = icmp eq ptr %i.co, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %i.cp, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47.loopexit.split.loop.exit109, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i38, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !47
  %i.cs = icmp eq ptr %i.cr, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %i.cs, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47.loopexit.split.loop.exit111, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i38, i64 32
  %i.cu = add nsw i64 %.047.i.i.i.i.i.i37, -1
  %i.cv = icmp sgt i64 %.047.i.i.i.i.i.i37, 1
  br i1 %i.cv, label %bb.v, label %._crit_edge.loopexit.i.i.i.i.i.i39, !llvm.loop !392

._crit_edge.loopexit.i.i.i.i.i.i39:               ; preds = %bb.z
  %i.cw = and i32 %i.cd, 3
  br label %._crit_edge.i.i.i.i.i.i40

._crit_edge.i.i.i.i.i.i40:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i39, %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit
  %.pre-phi56.i.i.i.i.i.i41 = phi i32 [ %i.cw, %._crit_edge.loopexit.i.i.i.i.i.i39 ], [ %i.cd, %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit ]
  %.029.lcssa.i.i.i.i.i.i42 = phi ptr [ %scevgep.i.i.i.i.i.i36, %._crit_edge.loopexit.i.i.i.i.i.i39 ], [ %i.cc, %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i41, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i45 [
    i32 3, label %bb.aa
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i50
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i43
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i.i40
  %i.cx = load ptr, ptr %.029.lcssa.i.i.i.i.i.i42, align 8, !tbaa !47
  %i.cy = icmp eq ptr %i.cx, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %i.cy, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i42, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i50

._crit_edge._crit_edge.i.i.i.i.i.i50:             ; preds = %bb.ab, %._crit_edge.i.i.i.i.i.i40
  %.1.i.i.i.i.i.i51 = phi ptr [ %i.cz, %bb.ab ], [ %.029.lcssa.i.i.i.i.i.i42, %._crit_edge.i.i.i.i.i.i40 ] ; 3 uses
  %i.da = load ptr, ptr %.1.i.i.i.i.i.i51, align 8, !tbaa !47
  %i.db = icmp eq ptr %i.da, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %i.db, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i50
  %i.dc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i51, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i43

._crit_edge._crit_edge52.i.i.i.i.i.i43:           ; preds = %bb.ac, %._crit_edge.i.i.i.i.i.i40
  %.2.i.i.i.i.i.i44 = phi ptr [ %i.dc, %bb.ac ], [ %.029.lcssa.i.i.i.i.i.i42, %._crit_edge.i.i.i.i.i.i40 ] ; 2 uses
  %i.dd = load ptr, ptr %.2.i.i.i.i.i.i44, align 8, !tbaa !47
  %i.de = icmp eq ptr %i.dd, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %i.de, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i45

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47.loopexit.split.loop.exit: ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i38, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47.loopexit.split.loop.exit109: ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i38, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47.loopexit.split.loop.exit111: ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i38, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47: ; preds = %bb.v, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47.loopexit.split.loop.exit109, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47.loopexit.split.loop.exit111, %._crit_edge._crit_edge52.i.i.i.i.i.i43, %._crit_edge._crit_edge.i.i.i.i.i.i50, %bb.aa
  %.028.i.i.i.i.i.i48 = phi ptr [ %.1.i.i.i.i.i.i51, %._crit_edge._crit_edge.i.i.i.i.i.i50 ], [ %.029.lcssa.i.i.i.i.i.i42, %bb.aa ], [ %.2.i.i.i.i.i.i44, %._crit_edge._crit_edge52.i.i.i.i.i.i43 ], [ %i.dh, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47.loopexit.split.loop.exit111 ], [ %i.dg, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47.loopexit.split.loop.exit109 ], [ %i.df, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i38, %bb.v ]
  %.not.i.i49 = icmp eq ptr %.028.i.i.i.i.i.i48, %i.cf
  br i1 %.not.i.i49, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i45, label %_ZN4llvm13AnalysisUsage12addPreservedINS_27GISelCSEAnalysisWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i45: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47, %._crit_edge._crit_edge52.i.i.i.i.i.i43, %._crit_edge.i.i.i.i.i.i40
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !82
  %.not.i2.i.i46 = icmp ult i32 %i.cd, %i.dj
  br i1 %.not.i2.i.i46, label %bb.ae, label %bb.ad, !prof !83

bb.ad:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i45
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_27GISelCSEAnalysisWrapperPassEEERS0_v.exit

bb.ae:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i45
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ce
  store ptr @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE, ptr %i.dk, align 1
  %i.dl = load i32, ptr %i.e, align 8, !tbaa !81
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.e, align 8, !tbaa !81
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_27GISelCSEAnalysisWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_27GISelCSEAnalysisWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47, %bb.ad, %bb.ae
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #24
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #6

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #6

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #6

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_125RISCVPreLegalizerCombiner20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::unique_ptr.130", align 8 ; 3 uses
  %3 = alloca %"struct.llvm::CombinerInfo", align 8 ; 13 uses
  %4 = alloca %"class.(anonymous namespace)::RISCVPreLegalizerCombinerImpl", align 8 ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.c = load i64, ptr %i.b, align 8, !tbaa !394
  %i.d = and i64 %i.c, 16
  %.not40 = icmp eq i64 %i.d, 0
  br i1 %.not40, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !396  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !396  ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.g, %i.i
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !399  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.j, @_ZN4llvm16TargetPassConfig2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.g, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.k, %i.i
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !399
  %.not.i.i.i = icmp eq ptr %i.l, @_ZN4llvm16TargetPassConfig2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.b
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.g, %bb.b ], [ %i.k, %.lr.ph.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i3.i.i20 = icmp eq ptr %i.j, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %.not.i3.i.i20, label %_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i21

.lr.ph.i.i.i21:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, %.lr.ph.i.i.i21
  %.sroa.08.015.i4.i.i22 = phi ptr [ %i.o, %.lr.ph.i.i.i21 ], [ %i.g, %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i22, i64 16 ; 4 uses
  %.not11.i.i.i23 = icmp ne ptr %i.o, %i.i
  tail call void @llvm.assume(i1 %.not11.i.i.i23)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !399
  %.not.i.i.i24 = icmp eq ptr %i.p, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %.not.i.i.i24, label %_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i21

_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i21, %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i25 = phi ptr [ %i.g, %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit ], [ %i.o, %.lr.ph.i.i.i21 ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i25, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.130") align 8 %2, ptr noundef nonnull align 8 dereferenceable(134) %i.n) #24
  %i.w = call noundef nonnull align 8 dereferenceable(337) ptr @_ZN4llvm23GISelCSEAnalysisWrapper3getESt10unique_ptrINS_13CSEConfigBaseESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(353) %i.s, ptr nofree noundef nonnull align 8 dereferenceable(8) %2) #24
  %i.x = load ptr, ptr %2, align 8, !tbaa !401    ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13CSEConfigBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm13CSEConfigBaseEEclEPS1_.exit.i: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #24, !inline_history !393
  br label %_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit, %_ZNKSt14default_deleteIN4llvm13CSEConfigBaseEEclEPS1_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !402, !nonnull !44, !align !196 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 192
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(519768) %i.ac) #24
  %i.ah = load ptr, ptr %1, align 8, !tbaa !197, !nonnull !44, !align !196 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !403, !nonnull !44, !align !196
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1064
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !505
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit
  %i.am = call noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %i.ah) #24
  %i.an = xor i1 %i.am, true
  %i.ao = zext i1 %i.an to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit
  %i.ap = phi i8 [ 0, %_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit ], [ %i.ao, %bb.c ]
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !55  ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !396 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !396 ; 2 uses
  %.not1114.i.i.i26 = icmp ne ptr %i.ar, %i.at
  call void @llvm.assume(i1 %.not1114.i.i.i26)
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !399
  %.not.i3.i.i27 = icmp eq ptr %i.au, @_ZN4llvm32GISelValueTrackingAnalysisLegacy2IDE
  br i1 %.not.i3.i.i27, label %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %bb.d, %.lr.ph.i.i.i28
  %.sroa.08.015.i4.i.i29 = phi ptr [ %i.av, %.lr.ph.i.i.i28 ], [ %i.ar, %bb.d ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i29, i64 16 ; 4 uses
  %.not11.i.i.i30 = icmp ne ptr %i.av, %i.at
  call void @llvm.assume(i1 %.not11.i.i.i30)
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !399
  %.not.i.i.i31 = icmp eq ptr %i.aw, @_ZN4llvm32GISelValueTrackingAnalysisLegacy2IDE
  br i1 %.not.i.i.i31, label %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit, label %.lr.ph.i.i.i28

_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit: ; preds = %.lr.ph.i.i.i28, %bb.d
  %.sroa.08.015.i.lcssa.i.i32 = phi ptr [ %i.ar, %bb.d ], [ %i.av, %.lr.ph.i.i.i28 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i32, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN4llvm32GISelValueTrackingAnalysisLegacy3getERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull align 8 dereferenceable(1065) %1) #24 ; 2 uses
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !55  ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !396 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !396 ; 2 uses
  %.not1114.i.i.i33 = icmp ne ptr %i.bb, %i.bd
  call void @llvm.assume(i1 %.not1114.i.i.i33)
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !399
  %.not.i3.i.i34 = icmp eq ptr %i.be, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i34, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit, %.lr.ph.i.i.i35
  %.sroa.08.015.i4.i.i36 = phi ptr [ %i.bf, %.lr.ph.i.i.i35 ], [ %i.bb, %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i36, i64 16 ; 4 uses
  %.not11.i.i.i37 = icmp ne ptr %i.bf, %i.bd
  call void @llvm.assume(i1 %.not11.i.i.i37)
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !399
  %.not.i.i.i38 = icmp eq ptr %i.bg, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i38, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i35

_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i35, %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i39 = phi ptr [ %i.bb, %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit ], [ %i.bf, %.lr.ph.i.i.i35 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i39, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.bk = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.ah, i32 noundef 51) #24
  br i1 %i.bk, label %_ZNK4llvm8Function10hasOptSizeEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit
  %i.bl = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.ah, i32 noundef 19) #24
  %i.bm = zext i1 %i.bl to i8
  br label %_ZNK4llvm8Function10hasOptSizeEv.exit

_ZNK4llvm8Function10hasOptSizeEv.exit:            ; preds = %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, %bb.e
  %i.bn = phi i8 [ 1, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit ], [ %i.bm, %bb.e ]
  %i.bo = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.ah, i32 noundef 19) #24
  %i.bp = zext i1 %i.bo to i8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm12CombinerInfoE, i64 16), ptr %3, align 8, !tbaa !31
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 1, ptr %i.bq, align 8, !tbaa !508
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.br, align 1, !tbaa !509
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.bs, align 8, !tbaa !510
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 %i.ap, ptr %i.bt, align 8, !tbaa !511
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 %i.bn, ptr %i.bu, align 1, !tbaa !512
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 %i.bp, ptr %i.bv, align 2, !tbaa !513
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 1, ptr %i.bw, align 4, !tbaa !514
  store i32 2, ptr %i.bx, align 8, !tbaa !515
  store i8 1, ptr %i.by, align 4, !tbaa !516
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZN4llvm8CombinerC2ERNS_15MachineFunctionERKNS_12CombinerInfoEPNS_18GISelValueTrackingEPNS_12GISelCSEInfoE(ptr noundef nonnull align 8 dereferenceable(5624) %4, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(37) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.az, ptr noundef nonnull %i.w) #24
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_129RISCVPreLegalizerCombinerImplE, i64 16), ptr %4, align 8, !tbaa !31
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 4280
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 4232
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !517, !nonnull !44, !align !196
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 4240
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !238, !nonnull !44, !align !196
  call void @_ZN4llvm14CombinerHelperC1ERNS_19GISelChangeObserverERNS_16MachineIRBuilderEbPNS_18GISelValueTrackingEPNS_20MachineDominatorTreeEPKNS_13LegalizerInfoE(ptr noundef nonnull align 8 dereferenceable(80) %i.ca, ptr noundef nonnull align 8 dereferenceable(64) %i.cc, ptr noundef nonnull align 8 dereferenceable(96) %i.ce, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %i.az, ptr noundef nonnull %i.bj, ptr noundef %i.ag) #24
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 4360
  store ptr %i.bz, ptr %i.cf, align 8, !tbaa !518
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 4368
  store ptr %i.ac, ptr %i.cg, align 8, !tbaa !519
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 4377
  store i8 0, ptr %i.ch, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 4384 ; 2 uses
  call void @_ZN4llvm20GIMatchTableExecutor12MatcherStateC1Ej(ptr noundef nonnull align 8 dereferenceable(168) %i.ci, i32 noundef 0) #24
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 4552
  store ptr @_ZN12_GLOBAL__N_111TypeObjectsE, ptr %i.cj, align 8, !tbaa !245
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 4560
  store ptr @_ZN12_GLOBAL__N_114FeatureBitsetsE, ptr %i.ck, align 8, !tbaa !520
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 4568
  store ptr @_ZN12_GLOBAL__N_129RISCVPreLegalizerCombinerImpl19ComplexPredicateFnsE, ptr %i.cl, align 8, !tbaa !246
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 4576
  store ptr @_ZN12_GLOBAL__N_129RISCVPreLegalizerCombinerImpl15CustomRenderersE, ptr %i.cm, align 8, !tbaa !247
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 4584 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 5616
  store i32 1, ptr %i.cn, align 8
  store i64 0, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 1152921504875282432, ptr %i.a, align 8, !tbaa !50
  %i.cp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImjLj64ENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.cp, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  store i32 0, ptr %i.cq, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.cr = call noundef zeroext i1 @_ZN4llvm8Combiner20combineMachineInstrsEv(ptr noundef nonnull align 8 dereferenceable(4280) %4) #24
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_129RISCVPreLegalizerCombinerImplE, i64 16), ptr %4, align 8, !tbaa !31
  %i.cs = load i32, ptr %i.cn, align 8
  %i.ct = and i32 %i.cs, 1
  %.not.i.i.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZN12_GLOBAL__N_129RISCVPreLegalizerCombinerImplD2Ev.exit

bb.f:                                             ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 4608
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !27 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %_ZN12_GLOBAL__N_129RISCVPreLegalizerCombinerImplD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 4592
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !27
  %i.cz = zext i32 %i.cv to i64                   ; 2 uses
  %i.da = shl nuw nsw i64 %i.cz, 4
  %i.db = add nuw nsw i64 %i.cz, 31
  %i.dc = lshr i64 %i.db, 3
  %i.dd = and i64 %i.dc, 1073741820
  %i.de = add nuw nsw i64 %i.dd, %i.da
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cy, i64 noundef %i.de, i64 noundef 8) #24, !inline_history !248
  br label %_ZN12_GLOBAL__N_129RISCVPreLegalizerCombinerImplD2Ev.exit

_ZN12_GLOBAL__N_129RISCVPreLegalizerCombinerImplD2Ev.exit: ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit, %bb.f, %bb.g
  call void @_ZN4llvm20GIMatchTableExecutor12MatcherStateD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.ci) #24, !inline_history !248
  call void @_ZN4llvm8CombinerD2Ev(ptr noundef nonnull align 8 dead_on_return(4280) dereferenceable(5624) %4) #24, !inline_history !248
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN12_GLOBAL__N_129RISCVPreLegalizerCombinerImplD2Ev.exit
  %.0 = phi i1 [ %i.cr, %_ZN12_GLOBAL__N_129RISCVPreLegalizerCombinerImplD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

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
end_hunk_0
