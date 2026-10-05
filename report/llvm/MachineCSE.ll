Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineCSE?download=true
inline.NumInlined: 2410
inline.NumDeleted: 1305
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK12_GLOBAL__N_116MachineCSELegacy16getAnalysisUsageERN4llvm13AnalysisUsageE:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i26, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i18

._crit_edge._crit_edge52.i.i.i.i.i.i18:           ; preds = %bb.s, %._crit_edge.i.i.i.i.i.i15
  %.2.i.i.i.i.i.i19 = phi ptr [ %i.bp, %bb.s ], [ %.029.lcssa.i.i.i.i.i.i17, %._crit_edge.i.i.i.i.i.i15 ] ; 2 uses
  %i.bq = load ptr, ptr %.2.i.i.i.i.i.i19, align 8, !tbaa !32
  %i.br = icmp eq ptr %i.bq, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %i.br, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i20

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit: ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i13, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit98: ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i13, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit100: ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i13, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22: ; preds = %bb.l, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit98, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit100, %._crit_edge._crit_edge52.i.i.i.i.i.i18, %._crit_edge._crit_edge.i.i.i.i.i.i25, %bb.q
  %.028.i.i.i.i.i.i23 = phi ptr [ %.1.i.i.i.i.i.i26, %._crit_edge._crit_edge.i.i.i.i.i.i25 ], [ %.029.lcssa.i.i.i.i.i.i17, %bb.q ], [ %.2.i.i.i.i.i.i19, %._crit_edge._crit_edge52.i.i.i.i.i.i18 ], [ %i.bu, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit100 ], [ %i.bt, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit98 ], [ %i.bs, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i13, %bb.l ]
  %.not.i.i24 = icmp eq ptr %.028.i.i.i.i.i.i23, %i.as
  br i1 %.not.i.i24, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i20, label %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i20: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22, %._crit_edge._crit_edge52.i.i.i.i.i.i18, %._crit_edge.i.i.i.i.i.i15
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !77
  %.not.i2.i.i21 = icmp ult i32 %i.aq, %i.bw
  br i1 %.not.i2.i.i21, label %bb.u, label %bb.t, !prof !191

bb.t:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i20
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit

bb.u:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i20
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  store ptr @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE, ptr %i.bx, align 1
  %i.by = load i32, ptr %i.d, align 8, !tbaa !76
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.d, align 8, !tbaa !76
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22, %bb.t, %bb.u
  %i.ca = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm36MachineBlockFrequencyInfoWrapperPass2IDE) #18 ; 0 uses
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !31  ; 5 uses
  %i.cc = load i32, ptr %i.d, align 8, !tbaa !76  ; 4 uses
  %i.cd = zext i32 %i.cc to i64                   ; 3 uses
  %.idx4.i.i.i29 = shl nuw nsw i64 %i.cd, 3       ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx4.i.i.i29
  %i.cf = lshr i64 %i.cd, 2                       ; 2 uses
  %.not.i.i.i30 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i30, label %._crit_edge.i.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i31:                             ; preds = %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit
  %i.cg = and i64 %.idx4.i.i.i29, 34359738336
  %scevgep.i.i.i.i.i.i32 = getelementptr i8, ptr %i.cb, i64 %i.cg
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i31
  %.047.i.i.i.i.i.i33 = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i31 ], [ %i.ct, %bb.z ] ; 2 uses
  %.02946.i.i.i.i.i.i34 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i31 ], [ %i.cs, %bb.z ] ; 9 uses
  %i.ch = load ptr, ptr %.02946.i.i.i.i.i.i34, align 8, !tbaa !32
  %i.ci = icmp eq ptr %i.ch, @_ZN4llvm36MachineBlockFrequencyInfoWrapperPass2IDE
  br i1 %i.ci, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i34, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !32
  %i.cl = icmp eq ptr %i.ck, @_ZN4llvm36MachineBlockFrequencyInfoWrapperPass2IDE
  br i1 %i.cl, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i34, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !32
  %i.co = icmp eq ptr %i.cn, @_ZN4llvm36MachineBlockFrequencyInfoWrapperPass2IDE
  br i1 %i.co, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit106, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i34, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !32
  %i.cr = icmp eq ptr %i.cq, @_ZN4llvm36MachineBlockFrequencyInfoWrapperPass2IDE
  br i1 %i.cr, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit108, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i34, i64 32
  %i.ct = add nsw i64 %.047.i.i.i.i.i.i33, -1
  %i.cu = icmp sgt i64 %.047.i.i.i.i.i.i33, 1
  br i1 %i.cu, label %bb.v, label %._crit_edge.loopexit.i.i.i.i.i.i35, !llvm.loop !539

._crit_edge.loopexit.i.i.i.i.i.i35:               ; preds = %bb.z
  %i.cv = and i32 %i.cc, 3
  br label %._crit_edge.i.i.i.i.i.i36

._crit_edge.i.i.i.i.i.i36:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i35, %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit
  %.pre-phi56.i.i.i.i.i.i37 = phi i32 [ %i.cv, %._crit_edge.loopexit.i.i.i.i.i.i35 ], [ %i.cc, %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit ]
  %.029.lcssa.i.i.i.i.i.i38 = phi ptr [ %scevgep.i.i.i.i.i.i32, %._crit_edge.loopexit.i.i.i.i.i.i35 ], [ %i.cb, %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i37, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i41 [
    i32 3, label %bb.aa
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i46
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i39
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i.i36
  %i.cw = load ptr, ptr %.029.lcssa.i.i.i.i.i.i38, align 8, !tbaa !32
  %i.cx = icmp eq ptr %i.cw, @_ZN4llvm36MachineBlockFrequencyInfoWrapperPass2IDE
  br i1 %i.cx, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i38, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i46

._crit_edge._crit_edge.i.i.i.i.i.i46:             ; preds = %bb.ab, %._crit_edge.i.i.i.i.i.i36
  %.1.i.i.i.i.i.i47 = phi ptr [ %i.cy, %bb.ab ], [ %.029.lcssa.i.i.i.i.i.i38, %._crit_edge.i.i.i.i.i.i36 ] ; 3 uses
  %i.cz = load ptr, ptr %.1.i.i.i.i.i.i47, align 8, !tbaa !32
  %i.da = icmp eq ptr %i.cz, @_ZN4llvm36MachineBlockFrequencyInfoWrapperPass2IDE
  br i1 %i.da, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i46
  %i.db = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i47, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i39

._crit_edge._crit_edge52.i.i.i.i.i.i39:           ; preds = %bb.ac, %._crit_edge.i.i.i.i.i.i36
  %.2.i.i.i.i.i.i40 = phi ptr [ %i.db, %bb.ac ], [ %.029.lcssa.i.i.i.i.i.i38, %._crit_edge.i.i.i.i.i.i36 ] ; 2 uses
  %i.dc = load ptr, ptr %.2.i.i.i.i.i.i40, align 8, !tbaa !32
  %i.dd = icmp eq ptr %i.dc, @_ZN4llvm36MachineBlockFrequencyInfoWrapperPass2IDE
  br i1 %i.dd, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i41

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit: ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i34, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit106: ; preds = %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i34, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit108: ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i34, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43: ; preds = %bb.v, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit106, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit108, %._crit_edge._crit_edge52.i.i.i.i.i.i39, %._crit_edge._crit_edge.i.i.i.i.i.i46, %bb.aa
  %.028.i.i.i.i.i.i44 = phi ptr [ %.1.i.i.i.i.i.i47, %._crit_edge._crit_edge.i.i.i.i.i.i46 ], [ %.029.lcssa.i.i.i.i.i.i38, %bb.aa ], [ %.2.i.i.i.i.i.i40, %._crit_edge._crit_edge52.i.i.i.i.i.i39 ], [ %i.dg, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit108 ], [ %i.df, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit106 ], [ %i.de, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i34, %bb.v ]
  %.not.i.i45 = icmp eq ptr %.028.i.i.i.i.i.i44, %i.ce
  br i1 %.not.i.i45, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i41, label %_ZN4llvm13AnalysisUsage12addPreservedINS_36MachineBlockFrequencyInfoWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i41: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43, %._crit_edge._crit_edge52.i.i.i.i.i.i39, %._crit_edge.i.i.i.i.i.i36
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !77
  %.not.i2.i.i42 = icmp ult i32 %i.cc, %i.di
  br i1 %.not.i2.i.i42, label %bb.ae, label %bb.ad, !prof !191

bb.ad:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i41
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @_ZN4llvm36MachineBlockFrequencyInfoWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_36MachineBlockFrequencyInfoWrapperPassEEERS0_v.exit

bb.ae:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i41
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cd
  store ptr @_ZN4llvm36MachineBlockFrequencyInfoWrapperPass2IDE, ptr %i.dj, align 1
  %i.dk = load i32, ptr %i.d, align 8, !tbaa !76
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.d, align 8, !tbaa !76
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_36MachineBlockFrequencyInfoWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_36MachineBlockFrequencyInfoWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43, %bb.ad, %bb.ae
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
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_116MachineCSELegacy20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.(anonymous namespace)::MachineCSEImpl", align 8 ; 22 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !231, !nonnull !28, !align !184
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %i.a) #18
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !282  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !541  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !541  ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.e, %i.g
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !544  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.h, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit.thread, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit.thread: ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 56
  br label %.lr.ph.i.i.i8.preheader

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 3 uses
  %.not11.i.i.i = icmp ne ptr %i.i, %i.g
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !544
  %.not.i.i.i = icmp eq ptr %i.j, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %.not.i3.i.i7 = icmp eq ptr %i.h, @_ZN4llvm36MachineBlockFrequencyInfoWrapperPass2IDE
  br i1 %.not.i3.i.i7, label %_ZNK4llvm4Pass11getAnalysisINS_36MachineBlockFrequencyInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i8.preheader

.lr.ph.i.i.i8.preheader:                          ; preds = %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit.thread, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit
  %6 = phi ptr [ %5, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit.thread ], [ %i.m, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit ]
  br label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %.lr.ph.i.i.i8.preheader, %.lr.ph.i.i.i8
  %.sroa.08.015.i4.i.i9 = phi ptr [ %i.n, %.lr.ph.i.i.i8 ], [ %i.e, %.lr.ph.i.i.i8.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i9, i64 16 ; 4 uses
  %.not11.i.i.i10 = icmp ne ptr %i.n, %i.g
  tail call void @llvm.assume(i1 %.not11.i.i.i10)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !544
  %.not.i.i.i11 = icmp eq ptr %i.o, @_ZN4llvm36MachineBlockFrequencyInfoWrapperPass2IDE
  br i1 %.not.i.i.i11, label %_ZNK4llvm4Pass11getAnalysisINS_36MachineBlockFrequencyInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i8

_ZNK4llvm4Pass11getAnalysisINS_36MachineBlockFrequencyInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i8, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit
  %7 = phi ptr [ %i.m, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit ], [ %6, %.lr.ph.i.i.i8 ]
  %.sroa.08.015.i.lcssa.i.i12 = phi ptr [ %i.e, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit ], [ %i.n, %.lr.ph.i.i.i8 ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i12, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(748) %2, i8 0, i64 16, i1 false)
  store ptr %7, ptr %i.s, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.t, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.r, ptr %i.u, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 0, ptr %i.v, align 8, !tbaa !75
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.w, i8 0, i64 72, i1 false)
  store ptr %i.y, ptr %i.x, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i32 0, ptr %i.z, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 132
  store i32 4, ptr %i.aa, align 4, !tbaa !77
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 184
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i8 0, i64 40, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 232
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 224
  store i32 0, ptr %i.ag, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 228
  store i32 64, ptr %i.ah, align 4, !tbaa !77
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 744
  store i32 0, ptr %i.ai, align 8, !tbaa !78
  %i.aj = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_114MachineCSEImpl3runERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(748) %2, ptr noundef nonnull align 8 dereferenceable(1065) %1)
  call fastcc void @_ZN12_GLOBAL__N_114MachineCSEImplD2Ev(ptr noundef nonnull align 8 dead_on_return(748) dereferenceable(748) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZNK4llvm4Pass11getAnalysisINS_36MachineBlockFrequencyInfoWrapperPassEEERT_v.exit
  %.0 = phi i1 [ %i.aj, %_ZNK4llvm4Pass11getAnalysisINS_36MachineBlockFrequencyInfoWrapperPassEEERT_v.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZNK12_GLOBAL__N_116MachineCSELegacy21getRequiredPropertiesEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret i64 1
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

declare void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #4

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !76
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #18
  %i.f = load ptr, ptr %0, align 8, !tbaa !31
  %i.g = load i32, ptr %i.a, align 8, !tbaa !76
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !76
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !76
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S6_S9_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !186  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS2_S4_EEE18planShrinkAndClearEv.exit.thread, label %_ZNK4llvm8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS2_S4_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS2_S4_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !187  ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated.i, %i.h
  br i1 %.not, label %bb.b, label %bb.c

_ZNK4llvm8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS2_S4_EEE18planShrinkAndClearEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !187  ; 2 uses
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S6_S9_E9initEmptyEv.exit, label %.thread16

bb.b:                                             ; preds = %_ZNK4llvm8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS2_S4_EEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !186
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !188
  %i.m = zext i32 %.sroa.speculated.i to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.p, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S6_S9_E9initEmptyEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS2_S4_EEE18planShrinkAndClearEv.exit
  %.sroa.39.0.insert.ext.i = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.q = icmp eq i32 %i.h, 0
  br i1 %i.q, label %_ZN4llvm8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit, label %.thread16

.thread16:                                        ; preds = %_ZNK4llvm8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS2_S4_EEE18planShrinkAndClearEv.exit.thread, %bb.c
  %i.r = phi ptr [ %i.g, %bb.c ], [ %i.i, %_ZNK4llvm8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS2_S4_EEE18planShrinkAndClearEv.exit.thread ] ; 2 uses
  %i.s = phi i32 [ %i.h, %bb.c ], [ %i.j, %_ZNK4llvm8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS2_S4_EEE18planShrinkAndClearEv.exit.thread ]
  %spec.select10.i1221 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS2_S4_EEE18planShrinkAndClearEv.exit.thread ]
  %.sroa.39.0.insert.ext.i1319 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS2_S4_EEE18planShrinkAndClearEv.exit.thread ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !278
  %i.u = zext i32 %i.s to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #18
  store i32 0, ptr %i.r, align 4, !tbaa !187
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit: ; preds = %bb.c, %.thread16
  %i.aa = phi ptr [ %i.g, %bb.c ], [ %i.r, %.thread16 ] ; 2 uses
  %spec.select10.i1222 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %spec.select10.i1221, %.thread16 ] ; 2 uses
  %.sroa.39.0.insert.ext.i1320 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ %.sroa.39.0.insert.ext.i1319, %.thread16 ] ; 2 uses
  store i32 %spec.select10.i1222, ptr %i.aa, align 4, !tbaa !187
  %.not.i4 = icmp eq i32 %spec.select10.i1222, 0
  br i1 %.not.i4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit
  %i.ab = shl nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 4
  %i.ac = add nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.af, i64 noundef 8) #18 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !187 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !278
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !188
  store i32 0, ptr %i.a, align 8, !tbaa !186
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S6_S9_E9initEmptyEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = add nuw nsw i64 %i.ai, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 0, i64 %i.ao, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S6_S9_E9initEmptyEv.exit

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS2_S4_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S6_S9_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S6_S9_E9initEmptyEv.exit: ; preds = %_ZNK4llvm8DenseMapIPNS_12MachineInstrEPNS_17MachineBasicBlockENS_27MachineInstrExpressionTraitENS_6detail12DenseMapPairIS2_S4_EEE18planShrinkAndClearEv.exit.thread, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
end_hunk_0
