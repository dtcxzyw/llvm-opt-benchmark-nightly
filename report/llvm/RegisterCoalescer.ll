Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegisterCoalescer?download=true
inline.NumInlined: 5517
inline.NumDeleted: 2347
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK12_GLOBAL__N_123RegisterCoalescerLegacy16getAnalysisUsageERN4llvm13AnalysisUsageE:bb.a
  br i1 %i.em, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68, label %bb.am

bb.am:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i71
  %i.en = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i72, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i64

._crit_edge._crit_edge52.i.i.i.i.i.i64:           ; preds = %bb.am, %._crit_edge.i.i.i.i.i.i61
  %.2.i.i.i.i.i.i65 = phi ptr [ %i.en, %bb.am ], [ %.029.lcssa.i.i.i.i.i.i63, %._crit_edge.i.i.i.i.i.i61 ] ; 2 uses
  %i.eo = load ptr, ptr %.2.i.i.i.i.i.i65, align 8, !tbaa !54
  %i.ep = icmp eq ptr %i.eo, @_ZN4llvm26MachineLoopInfoWrapperPass2IDE
  br i1 %i.ep, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i66

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68.loopexit.split.loop.exit: ; preds = %bb.ag
  %i.eq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i59, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68.loopexit.split.loop.exit187: ; preds = %bb.ah
  %i.er = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i59, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68.loopexit.split.loop.exit189: ; preds = %bb.ai
  %i.es = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i59, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68: ; preds = %bb.af, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68.loopexit.split.loop.exit187, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68.loopexit.split.loop.exit189, %._crit_edge._crit_edge52.i.i.i.i.i.i64, %._crit_edge._crit_edge.i.i.i.i.i.i71, %bb.ak
  %.028.i.i.i.i.i.i69 = phi ptr [ %.1.i.i.i.i.i.i72, %._crit_edge._crit_edge.i.i.i.i.i.i71 ], [ %.029.lcssa.i.i.i.i.i.i63, %bb.ak ], [ %.2.i.i.i.i.i.i65, %._crit_edge._crit_edge52.i.i.i.i.i.i64 ], [ %i.es, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68.loopexit.split.loop.exit189 ], [ %i.er, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68.loopexit.split.loop.exit187 ], [ %i.eq, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i59, %bb.af ]
  %.not.i.i70 = icmp eq ptr %.028.i.i.i.i.i.i69, %i.dq
  br i1 %.not.i.i70, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i66, label %_ZN4llvm13AnalysisUsage12addPreservedINS_26MachineLoopInfoWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i66: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68, %._crit_edge._crit_edge52.i.i.i.i.i.i64, %._crit_edge.i.i.i.i.i.i61
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !281
  %.not.i2.i.i67 = icmp ult i32 %i.do, %i.eu
  br i1 %.not.i2.i.i67, label %bb.ao, label %bb.an, !prof !216

bb.an:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i66
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull @_ZN4llvm26MachineLoopInfoWrapperPass2IDE)
  %.pre157 = load i32, ptr %i.aq, align 8, !tbaa !280
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_26MachineLoopInfoWrapperPassEEERS0_v.exit

bb.ao:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i66
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dp
  store ptr @_ZN4llvm26MachineLoopInfoWrapperPass2IDE, ptr %i.ev, align 1
  %i.ew = load i32, ptr %i.aq, align 8, !tbaa !280
  %i.ex = add i32 %i.ew, 1                        ; 2 uses
  store i32 %i.ex, ptr %i.aq, align 8, !tbaa !280
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_26MachineLoopInfoWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_26MachineLoopInfoWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68, %bb.an, %bb.ao
  %i.ey = phi i32 [ %i.do, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i68 ], [ %.pre157, %bb.an ], [ %i.ex, %bb.ao ] ; 4 uses
  %i.ez = load ptr, ptr @_ZN4llvm19MachineDominatorsIDE, align 8, !tbaa !57, !nonnull !50 ; 9 uses
  %i.fa = load ptr, ptr %i.ao, align 8, !tbaa !53 ; 5 uses
  %i.fb = zext i32 %i.ey to i64                   ; 3 uses
  %.idx4.i.i.i76 = shl nuw nsw i64 %i.fb, 3       ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx4.i.i.i76
  %i.fd = lshr i64 %i.fb, 2                       ; 2 uses
  %.not.i.i.i77 = icmp eq i64 %i.fd, 0
  br i1 %.not.i.i.i77, label %._crit_edge.i.i.i.i.i.i83, label %.lr.ph.i.i.i.i.i.i78

.lr.ph.i.i.i.i.i.i78:                             ; preds = %_ZN4llvm13AnalysisUsage12addPreservedINS_26MachineLoopInfoWrapperPassEEERS0_v.exit
  %i.fe = and i64 %.idx4.i.i.i76, 34359738336
  %scevgep.i.i.i.i.i.i79 = getelementptr i8, ptr %i.fa, i64 %i.fe
  br label %bb.ap

bb.ap:                                            ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i78
  %.047.i.i.i.i.i.i80 = phi i64 [ %i.fd, %.lr.ph.i.i.i.i.i.i78 ], [ %i.fr, %bb.at ] ; 2 uses
  %.02946.i.i.i.i.i.i81 = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i78 ], [ %i.fq, %bb.at ] ; 9 uses
  %i.ff = load ptr, ptr %.02946.i.i.i.i.i.i81, align 8, !tbaa !54
  %i.fg = icmp eq ptr %i.ff, %i.ez
  br i1 %i.fg, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fh = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i81, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !54
  %i.fj = icmp eq ptr %i.fi, %i.ez
  br i1 %i.fj, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90.loopexit.split.loop.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fk = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i81, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !54
  %i.fm = icmp eq ptr %i.fl, %i.ez
  br i1 %i.fm, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90.loopexit.split.loop.exit195, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i81, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !54
  %i.fp = icmp eq ptr %i.fo, %i.ez
  br i1 %i.fp, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90.loopexit.split.loop.exit197, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i81, i64 32
  %i.fr = add nsw i64 %.047.i.i.i.i.i.i80, -1
  %i.fs = icmp sgt i64 %.047.i.i.i.i.i.i80, 1
  br i1 %i.fs, label %bb.ap, label %._crit_edge.loopexit.i.i.i.i.i.i82, !llvm.loop !807

._crit_edge.loopexit.i.i.i.i.i.i82:               ; preds = %bb.at
  %i.ft = and i32 %i.ey, 3
  br label %._crit_edge.i.i.i.i.i.i83

._crit_edge.i.i.i.i.i.i83:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i82, %_ZN4llvm13AnalysisUsage12addPreservedINS_26MachineLoopInfoWrapperPassEEERS0_v.exit
  %.pre-phi56.i.i.i.i.i.i84 = phi i32 [ %i.ft, %._crit_edge.loopexit.i.i.i.i.i.i82 ], [ %i.ey, %_ZN4llvm13AnalysisUsage12addPreservedINS_26MachineLoopInfoWrapperPassEEERS0_v.exit ]
  %.029.lcssa.i.i.i.i.i.i85 = phi ptr [ %scevgep.i.i.i.i.i.i79, %._crit_edge.loopexit.i.i.i.i.i.i82 ], [ %i.fa, %_ZN4llvm13AnalysisUsage12addPreservedINS_26MachineLoopInfoWrapperPassEEERS0_v.exit ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i84, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i88 [
    i32 3, label %bb.au
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i93
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i86
  ]

bb.au:                                            ; preds = %._crit_edge.i.i.i.i.i.i83
  %i.fu = load ptr, ptr %.029.lcssa.i.i.i.i.i.i85, align 8, !tbaa !54
  %i.fv = icmp eq ptr %i.fu, %i.ez
  br i1 %i.fv, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fw = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i85, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i93

._crit_edge._crit_edge.i.i.i.i.i.i93:             ; preds = %bb.av, %._crit_edge.i.i.i.i.i.i83
  %.1.i.i.i.i.i.i94 = phi ptr [ %i.fw, %bb.av ], [ %.029.lcssa.i.i.i.i.i.i85, %._crit_edge.i.i.i.i.i.i83 ] ; 3 uses
  %i.fx = load ptr, ptr %.1.i.i.i.i.i.i94, align 8, !tbaa !54
  %i.fy = icmp eq ptr %i.fx, %i.ez
  br i1 %i.fy, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i93
  %i.fz = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i94, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i86

._crit_edge._crit_edge52.i.i.i.i.i.i86:           ; preds = %bb.aw, %._crit_edge.i.i.i.i.i.i83
  %.2.i.i.i.i.i.i87 = phi ptr [ %i.fz, %bb.aw ], [ %.029.lcssa.i.i.i.i.i.i85, %._crit_edge.i.i.i.i.i.i83 ] ; 2 uses
  %i.ga = load ptr, ptr %.2.i.i.i.i.i.i87, align 8, !tbaa !54
  %i.gb = icmp eq ptr %i.ga, %i.ez
  br i1 %i.gb, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i88

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90.loopexit.split.loop.exit: ; preds = %bb.aq
  %i.gc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i81, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90.loopexit.split.loop.exit195: ; preds = %bb.ar
  %i.gd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i81, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90.loopexit.split.loop.exit197: ; preds = %bb.as
  %i.ge = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i81, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90: ; preds = %bb.ap, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90.loopexit.split.loop.exit195, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90.loopexit.split.loop.exit197, %._crit_edge._crit_edge52.i.i.i.i.i.i86, %._crit_edge._crit_edge.i.i.i.i.i.i93, %bb.au
  %.028.i.i.i.i.i.i91 = phi ptr [ %.1.i.i.i.i.i.i94, %._crit_edge._crit_edge.i.i.i.i.i.i93 ], [ %.029.lcssa.i.i.i.i.i.i85, %bb.au ], [ %.2.i.i.i.i.i.i87, %._crit_edge._crit_edge52.i.i.i.i.i.i86 ], [ %i.ge, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90.loopexit.split.loop.exit197 ], [ %i.gd, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90.loopexit.split.loop.exit195 ], [ %i.gc, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i81, %bb.ap ]
  %.not.i.i92 = icmp eq ptr %.028.i.i.i.i.i.i91, %i.fc
  br i1 %.not.i.i92, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i88, label %_ZN4llvm13AnalysisUsage14addPreservedIDERc.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i88: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90, %._crit_edge._crit_edge52.i.i.i.i.i.i86, %._crit_edge.i.i.i.i.i.i83
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !281
  %.not.i2.i.i89 = icmp ult i32 %i.ey, %i.gg
  br i1 %.not.i2.i.i89, label %bb.ay, label %bb.ax, !prof !216

bb.ax:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i88
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.ez)
  br label %_ZN4llvm13AnalysisUsage14addPreservedIDERc.exit

bb.ay:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i88
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fb
  store ptr %i.ez, ptr %i.gh, align 1
  %i.gi = load i32, ptr %i.aq, align 8, !tbaa !280
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr %i.aq, align 8, !tbaa !280
  br label %_ZN4llvm13AnalysisUsage14addPreservedIDERc.exit

_ZN4llvm13AnalysisUsage14addPreservedIDERc.exit:  ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i90, %bb.ax, %bb.ay
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #22
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #4

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #4

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #4

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #4

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_123RegisterCoalescerLegacy20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.(anonymous namespace)::RegisterCoalescer", align 8 ; 33 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !511  ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !809  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !809  ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !812  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm24LiveIntervalsWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !812
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm24LiveIntervalsWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.c, %bb.a ], [ %i.g, %.lr.ph.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i3.i.i8 = icmp eq ptr %i.f, @_ZN4llvm26MachineLoopInfoWrapperPass2IDE
  br i1 %.not.i3.i.i8, label %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i9

.lr.ph.i.i.i9:                                    ; preds = %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit, %.lr.ph.i.i.i9
  %.sroa.08.015.i4.i.i10 = phi ptr [ %i.k, %.lr.ph.i.i.i9 ], [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i10, i64 16 ; 4 uses
  %.not11.i.i.i11 = icmp ne ptr %i.k, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i11)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !812
  %.not.i.i.i12 = icmp eq ptr %i.l, @_ZN4llvm26MachineLoopInfoWrapperPass2IDE
  br i1 %.not.i.i.i12, label %_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i9

_ZNK4llvm4Pass11getAnalysisINS_26MachineLoopInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i9, %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i13 = phi ptr [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit ], [ %i.k, %.lr.ph.i.i.i9 ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i13, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = tail call noundef ptr @_ZNK4llvm16AnalysisResolver22getAnalysisIfAvailableEPKv(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull @_ZN4llvm22SlotIndexesWrapperPass2IDE) #22 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %spec.select = select i1 %.not, ptr null, ptr %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN12_GLOBAL__N_117RegisterCoalescerE, i64 16), ptr %2, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  store ptr %i.m, ptr %i.t, align 8, !tbaa !277
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %spec.select, ptr %i.u, align 8, !tbaa !278
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.p, ptr %i.v, align 8, !tbaa !279
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZN4llvm17RegisterClassInfoC1Ev(ptr noundef nonnull align 8 dereferenceable(320) %i.w) #22
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 472
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 488
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(83) %i.x, i8 0, i64 83, i1 false)
  store ptr %i.z, ptr %i.y, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 480
  store i32 0, ptr %i.aa, align 8, !tbaa !280
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 484
  store i32 8, ptr %i.ab, align 4, !tbaa !281
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 552
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 568
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 560
  store i32 0, ptr %i.ae, align 8, !tbaa !280
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 564
  store i32 8, ptr %i.af, align 4, !tbaa !281
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 632
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 656
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 640
  store i32 8, ptr %i.ai, align 8, !tbaa !282
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 644
  store i32 0, ptr %i.aj, align 4, !tbaa !283
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 648
  store i8 1, ptr %i.ak, align 8, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 720
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 736
  store ptr %i.am, ptr %i.al, align 8, !tbaa !53
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 728
  store i32 0, ptr %i.an, align 8, !tbaa !280
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 732
  store i32 8, ptr %i.ao, align 4, !tbaa !281
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 800
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 816
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !53
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 808
  store i32 0, ptr %i.ar, align 8, !tbaa !280
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 812
  store i32 8, ptr %i.as, align 4, !tbaa !281
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 848
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, i8 0, i64 48, i1 false)
  %i.au = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117RegisterCoalescer3runERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(896) %2, ptr noundef nonnull align 8 dereferenceable(1065) %1)
  call void @_ZN12_GLOBAL__N_117RegisterCoalescerD2Ev(ptr noundef nonnull align 8 dead_on_return(896) dereferenceable(896) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 %i.au
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZNK12_GLOBAL__N_123RegisterCoalescerLegacy20getClearedPropertiesEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  ret i64 1
}

declare void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #4

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !280
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #22
  %i.f = load ptr, ptr %0, align 8, !tbaa !53
  %i.g = load i32, ptr %i.a, align 8, !tbaa !280
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !280
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !280
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm16AnalysisResolver22getAnalysisIfAvailableEPKv(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare void @_ZN4llvm17RegisterClassInfoC1Ev(ptr noundef nonnull align 8 dereferenceable(320)) unnamed_addr #4

declare void @_ZN4llvm13LiveRangeEdit8Delegate6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117RegisterCoalescerD0Ev(ptr noundef nonnull align 8 dereferenceable(896) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN12_GLOBAL__N_117RegisterCoalescerD2Ev(ptr noundef nonnull align 8 dead_on_return(896) dereferenceable(896) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 896) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117RegisterCoalescer24LRE_WillEraseInstructionEPN4llvm12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.c = load i8, ptr %i.b, align 8, !tbaa !48, !range !49, !noalias !815, !noundef !50
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !51, !noalias !815 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !283, !noalias !815 ; 4 uses
  %i.h = zext i32 %i.g to i64
  %.idx.i.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.g, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.k, %.critedge.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %.023.i.i, align 8, !tbaa !54, !noalias !815
  %.not15.i.i = icmp eq ptr %i.j, %1
  br i1 %.not15.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.m = load i32, ptr %i.l, align 8, !tbaa !282, !noalias !815
  %i.n = icmp ult i32 %i.g, %i.m
  br i1 %i.n, label %bb.c, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = add nuw i32 %i.g, 1
  store i32 %i.o, ptr %i.f, align 4, !tbaa !283, !noalias !815
  store ptr %1, ptr %i.i, align 8, !tbaa !54, !noalias !815
  br label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %bb.a
  %i.p = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef %1) #22, !noalias !815 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit

_ZN4llvm15SmallPtrSetImplIPNS_12MachineInstrEE6insertES2_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm13LiveRangeEdit8Delegate19LRE_CanEraseVirtRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13LiveRangeEdit8Delegate21LRE_WillShrinkVirtRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13LiveRangeEdit8Delegate19LRE_DidCloneVirtRegENS_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 %1, i32 %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
