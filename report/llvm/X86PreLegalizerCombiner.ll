Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86PreLegalizerCombiner?download=true
inline.NumInlined: 2634
inline.NumDeleted: 1187
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK12_GLOBAL__N_129X86PreLegalizerCombinerLegacy16getAnalysisUsageERN4llvm13AnalysisUsageE:bb.a
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
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !413
  %.not.i2.i.i24 = icmp ult i32 %i.ar, %i.bx
  br i1 %.not.i2.i.i24, label %bb.u, label %bb.t, !prof !416

bb.t:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i23
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit

bb.u:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i23
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  store ptr @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.e, align 8, !tbaa !395
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.e, align 8, !tbaa !395
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i25, %bb.t, %bb.u
  %i.cb = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE) #24 ; 0 uses
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !48  ; 5 uses
  %i.cd = load i32, ptr %i.e, align 8, !tbaa !395 ; 4 uses
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
  %i.ci = load ptr, ptr %.02946.i.i.i.i.i.i38, align 8, !tbaa !49
  %i.cj = icmp eq ptr %i.ci, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %i.cj, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i38, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !49
  %i.cm = icmp eq ptr %i.cl, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %i.cm, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47.loopexit.split.loop.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i38, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !49
  %i.cp = icmp eq ptr %i.co, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %i.cp, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47.loopexit.split.loop.exit109, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i38, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !49
  %i.cs = icmp eq ptr %i.cr, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %i.cs, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47.loopexit.split.loop.exit111, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i38, i64 32
  %i.cu = add nsw i64 %.047.i.i.i.i.i.i37, -1
  %i.cv = icmp sgt i64 %.047.i.i.i.i.i.i37, 1
  br i1 %i.cv, label %bb.v, label %._crit_edge.loopexit.i.i.i.i.i.i39, !llvm.loop !1116

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
  %i.cx = load ptr, ptr %.029.lcssa.i.i.i.i.i.i42, align 8, !tbaa !49
  %i.cy = icmp eq ptr %i.cx, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %i.cy, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i42, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i50

._crit_edge._crit_edge.i.i.i.i.i.i50:             ; preds = %bb.ab, %._crit_edge.i.i.i.i.i.i40
  %.1.i.i.i.i.i.i51 = phi ptr [ %i.cz, %bb.ab ], [ %.029.lcssa.i.i.i.i.i.i42, %._crit_edge.i.i.i.i.i.i40 ] ; 3 uses
  %i.da = load ptr, ptr %.1.i.i.i.i.i.i51, align 8, !tbaa !49
  %i.db = icmp eq ptr %i.da, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %i.db, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i50
  %i.dc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i51, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i43

._crit_edge._crit_edge52.i.i.i.i.i.i43:           ; preds = %bb.ac, %._crit_edge.i.i.i.i.i.i40
  %.2.i.i.i.i.i.i44 = phi ptr [ %i.dc, %bb.ac ], [ %.029.lcssa.i.i.i.i.i.i42, %._crit_edge.i.i.i.i.i.i40 ] ; 2 uses
  %i.dd = load ptr, ptr %.2.i.i.i.i.i.i44, align 8, !tbaa !49
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
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !413
  %.not.i2.i.i46 = icmp ult i32 %i.cd, %i.dj
  br i1 %.not.i2.i.i46, label %bb.ae, label %bb.ad, !prof !416

bb.ad:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i45
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_27GISelCSEAnalysisWrapperPassEEERS0_v.exit

bb.ae:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i45
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ce
  store ptr @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE, ptr %i.dk, align 1
  %i.dl = load i32, ptr %i.e, align 8, !tbaa !395
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.e, align 8, !tbaa !395
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_27GISelCSEAnalysisWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_27GISelCSEAnalysisWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47, %bb.ad, %bb.ae
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #24
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
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_129X86PreLegalizerCombinerLegacy20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::unique_ptr.620", align 8 ; 3 uses
  %3 = alloca %"struct.llvm::CombinerInfo", align 8 ; 13 uses
  %4 = alloca %"class.(anonymous namespace)::X86PreLegalizerCombinerImpl", align 8 ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.c = load i64, ptr %i.b, align 8, !tbaa !55
  %i.d = and i64 %i.c, 16
  %.not35 = icmp eq i64 %i.d, 0
  br i1 %.not35, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !365  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1121 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1121 ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.g, %i.i
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !1124 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.j, @_ZN4llvm16TargetPassConfig2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.g, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.k, %i.i
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1124
  %.not.i.i.i = icmp eq ptr %i.l, @_ZN4llvm16TargetPassConfig2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.b
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.g, %bb.b ], [ %i.k, %.lr.ph.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i3.i.i15 = icmp eq ptr %i.j, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %.not.i3.i.i15, label %_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, %.lr.ph.i.i.i16
  %.sroa.08.015.i4.i.i17 = phi ptr [ %i.o, %.lr.ph.i.i.i16 ], [ %i.g, %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i17, i64 16 ; 4 uses
  %.not11.i.i.i18 = icmp ne ptr %i.o, %i.i
  tail call void @llvm.assume(i1 %.not11.i.i.i18)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1124
  %.not.i.i.i19 = icmp eq ptr %i.p, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %.not.i.i.i19, label %_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i16

_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i16, %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i20 = phi ptr [ %i.g, %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit ], [ %i.o, %.lr.ph.i.i.i16 ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i20, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.620") align 8 %2, ptr noundef nonnull align 8 dereferenceable(134) %i.n) #24
  %i.w = call noundef nonnull align 8 dereferenceable(337) ptr @_ZN4llvm23GISelCSEAnalysisWrapper3getESt10unique_ptrINS_13CSEConfigBaseESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(353) %i.s, ptr nofree noundef nonnull align 8 dereferenceable(8) %2) #24
  %i.x = load ptr, ptr %2, align 8, !tbaa !1126   ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13CSEConfigBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm13CSEConfigBaseEEclEPS1_.exit.i: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #24, !inline_history !1117
  br label %_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit, %_ZNKSt14default_deleteIN4llvm13CSEConfigBaseEEclEPS1_.exit.i
  %i.ab = load ptr, ptr %1, align 8, !tbaa !175, !nonnull !45, !align !176 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !177, !nonnull !45, !align !176
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1064
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !282
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit
  %i.ag = call noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %i.ab) #24
  %i.ah = xor i1 %i.ag, true
  %i.ai = zext i1 %i.ah to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit
  %i.aj = phi i8 [ 0, %_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit ], [ %i.ai, %bb.c ]
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !365 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1121 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1121 ; 2 uses
  %.not1114.i.i.i21 = icmp ne ptr %i.al, %i.an
  call void @llvm.assume(i1 %.not1114.i.i.i21)
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !1124
  %.not.i3.i.i22 = icmp eq ptr %i.ao, @_ZN4llvm32GISelValueTrackingAnalysisLegacy2IDE
  br i1 %.not.i3.i.i22, label %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit, label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %bb.d, %.lr.ph.i.i.i23
  %.sroa.08.015.i4.i.i24 = phi ptr [ %i.ap, %.lr.ph.i.i.i23 ], [ %i.al, %bb.d ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i24, i64 16 ; 4 uses
  %.not11.i.i.i25 = icmp ne ptr %i.ap, %i.an
  call void @llvm.assume(i1 %.not11.i.i.i25)
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1124
  %.not.i.i.i26 = icmp eq ptr %i.aq, @_ZN4llvm32GISelValueTrackingAnalysisLegacy2IDE
  br i1 %.not.i.i.i26, label %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit, label %.lr.ph.i.i.i23

_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit: ; preds = %.lr.ph.i.i.i23, %bb.d
  %.sroa.08.015.i.lcssa.i.i27 = phi ptr [ %i.al, %bb.d ], [ %i.ap, %.lr.ph.i.i.i23 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i27, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN4llvm32GISelValueTrackingAnalysisLegacy3getERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull align 8 dereferenceable(1065) %1) #24 ; 2 uses
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !365 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1121 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1121 ; 2 uses
  %.not1114.i.i.i28 = icmp ne ptr %i.av, %i.ax
  call void @llvm.assume(i1 %.not1114.i.i.i28)
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !1124
  %.not.i3.i.i29 = icmp eq ptr %i.ay, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i29, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit, %.lr.ph.i.i.i30
  %.sroa.08.015.i4.i.i31 = phi ptr [ %i.az, %.lr.ph.i.i.i30 ], [ %i.av, %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i31, i64 16 ; 4 uses
  %.not11.i.i.i32 = icmp ne ptr %i.az, %i.ax
  call void @llvm.assume(i1 %.not11.i.i.i32)
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1124
  %.not.i.i.i33 = icmp eq ptr %i.ba, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i33, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i30

_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i30, %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i34 = phi ptr [ %i.av, %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit ], [ %i.az, %.lr.ph.i.i.i30 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i34, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %i.be = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.ab, i32 noundef 51) #24, !noalias !1127
  br i1 %i.be, label %_ZN12_GLOBAL__N_118createCombinerInfoEbRKN4llvm8FunctionE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit
  %i.bf = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.ab, i32 noundef 19) #24, !noalias !1127
  %i.bg = zext i1 %i.bf to i8
  br label %_ZN12_GLOBAL__N_118createCombinerInfoEbRKN4llvm8FunctionE.exit

_ZN12_GLOBAL__N_118createCombinerInfoEbRKN4llvm8FunctionE.exit: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, %bb.e
  %i.bh = phi i8 [ 1, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit ], [ %i.bg, %bb.e ]
  %i.bi = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.ab, i32 noundef 19) #24, !noalias !1127
  %i.bj = zext i1 %i.bi to i8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm12CombinerInfoE, i64 16), ptr %3, align 8, !tbaa !31, !alias.scope !1127
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 1, ptr %i.bk, align 8, !tbaa !286, !alias.scope !1127
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.bl, align 1, !tbaa !287, !alias.scope !1127
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.bm, align 8, !tbaa !288, !alias.scope !1127
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 %i.aj, ptr %i.bn, align 8, !tbaa !289, !alias.scope !1127
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 %i.bh, ptr %i.bo, align 1, !tbaa !290, !alias.scope !1127
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 %i.bj, ptr %i.bp, align 2, !tbaa !291, !alias.scope !1127
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.bq, align 4, !tbaa !292, !alias.scope !1127
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.br, align 8, !tbaa !293, !alias.scope !1127
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i8 1, ptr %i.bs, align 4, !tbaa !294, !alias.scope !1127
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZN4llvm8CombinerC2ERNS_15MachineFunctionERKNS_12CombinerInfoEPNS_18GISelValueTrackingEPNS_12GISelCSEInfoE(ptr noundef nonnull align 8 dereferenceable(5624) %4, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(37) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.at, ptr noundef nonnull %i.w) #24
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_127X86PreLegalizerCombinerImplE, i64 16), ptr %4, align 8, !tbaa !31
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 4280
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4232
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !334, !nonnull !45, !align !176
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 4240
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !335, !nonnull !45, !align !176
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !336, !nonnull !45, !align !176
  %i.cb = call noundef ptr @_ZNK4llvm12X86Subtarget16getLegalizerInfoEv(ptr noundef nonnull align 8 dereferenceable(519752) %i.ca) #24
  call void @_ZN4llvm14CombinerHelperC1ERNS_19GISelChangeObserverERNS_16MachineIRBuilderEbPNS_18GISelValueTrackingEPNS_20MachineDominatorTreeEPKNS_13LegalizerInfoE(ptr noundef nonnull align 8 dereferenceable(80) %i.bu, ptr noundef nonnull align 8 dereferenceable(64) %i.bw, ptr noundef nonnull align 8 dereferenceable(96) %i.by, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %i.at, ptr noundef nonnull %i.bd, ptr noundef %i.cb) #24
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 4360
  store ptr %i.bt, ptr %i.cc, align 8, !tbaa !338
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 4368
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !336, !nonnull !45, !align !176
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !340
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 4377
  store i8 0, ptr %i.cf, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 4384 ; 2 uses
  call void @_ZN4llvm20GIMatchTableExecutor12MatcherStateC1Ej(ptr noundef nonnull align 8 dereferenceable(168) %i.cg, i32 noundef 0) #24
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 4552
  store ptr @_ZN12_GLOBAL__N_111TypeObjectsE, ptr %i.ch, align 8, !tbaa !345
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 4560
  store ptr @_ZN12_GLOBAL__N_114FeatureBitsetsE, ptr %i.ci, align 8, !tbaa !346
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 4568
  store ptr @_ZN12_GLOBAL__N_127X86PreLegalizerCombinerImpl19ComplexPredicateFnsE, ptr %i.cj, align 8, !tbaa !347
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 4576
  store ptr @_ZN12_GLOBAL__N_127X86PreLegalizerCombinerImpl15CustomRenderersE, ptr %i.ck, align 8, !tbaa !348
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 4584 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 5616
  store i32 1, ptr %i.cl, align 8
  store i64 0, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 1152921504875282432, ptr %i.a, align 8, !tbaa !52
  %i.cn = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImjLj64ENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cl, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.cn, 0
  %i.co = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  store i32 0, ptr %i.co, align 4, !tbaa !349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.cp = call noundef zeroext i1 @_ZN4llvm8Combiner20combineMachineInstrsEv(ptr noundef nonnull align 8 dereferenceable(4280) %4) #24
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_127X86PreLegalizerCombinerImplE, i64 16), ptr %4, align 8, !tbaa !31
  %i.cq = load i32, ptr %i.cl, align 8
  %i.cr = and i32 %i.cq, 1
  %.not.i.i.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZN12_GLOBAL__N_127X86PreLegalizerCombinerImplD2Ev.exit

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_118createCombinerInfoEbRKN4llvm8FunctionE.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 4608
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !27 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %_ZN12_GLOBAL__N_127X86PreLegalizerCombinerImplD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 4592
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !27
  %i.cx = zext i32 %i.ct to i64                   ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cx, 4
  %i.cz = add nuw nsw i64 %i.cx, 31
  %i.da = lshr i64 %i.cz, 3
  %i.db = and i64 %i.da, 1073741820
  %i.dc = add nuw nsw i64 %i.db, %i.cy
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cw, i64 noundef %i.dc, i64 noundef 8) #24, !inline_history !350
  br label %_ZN12_GLOBAL__N_127X86PreLegalizerCombinerImplD2Ev.exit

_ZN12_GLOBAL__N_127X86PreLegalizerCombinerImplD2Ev.exit: ; preds = %_ZN12_GLOBAL__N_118createCombinerInfoEbRKN4llvm8FunctionE.exit, %bb.f, %bb.g
  call void @_ZN4llvm20GIMatchTableExecutor12MatcherStateD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.cg) #24, !inline_history !350
  call void @_ZN4llvm8CombinerD2Ev(ptr noundef nonnull align 8 dead_on_return(4280) dereferenceable(5624) %4) #24, !inline_history !350
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN12_GLOBAL__N_127X86PreLegalizerCombinerImplD2Ev.exit
  %.0 = phi i1 [ %i.cp, %_ZN12_GLOBAL__N_127X86PreLegalizerCombinerImplD2Ev.exit ], [ false, %bb.a ]
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
