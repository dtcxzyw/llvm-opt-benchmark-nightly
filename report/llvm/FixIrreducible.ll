Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FixIrreducible?download=true
inline.NumInlined: 1566
inline.NumDeleted: 949
begin_hunk_0_@_ZNK12_GLOBAL__N_114FixIrreducible16getAnalysisUsageERN4llvm13AnalysisUsageE:bb.a

._crit_edge._crit_edge.i.i.i.i.i.i22:             ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i12
  %.1.i.i.i.i.i.i23 = phi ptr [ %i.bm, %bb.r ], [ %.029.lcssa.i.i.i.i.i.i14, %._crit_edge.i.i.i.i.i.i12 ] ; 3 uses
  %i.bn = load ptr, ptr %.1.i.i.i.i.i.i23, align 8, !tbaa !19
  %i.bo = icmp eq ptr %i.bn, @_ZN4llvm20CycleInfoWrapperPass2IDE
  br i1 %i.bo, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19, label %bb.s

bb.s:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i22
  %i.bp = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i23, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i15

._crit_edge._crit_edge52.i.i.i.i.i.i15:           ; preds = %bb.s, %._crit_edge.i.i.i.i.i.i12
  %.2.i.i.i.i.i.i16 = phi ptr [ %i.bp, %bb.s ], [ %.029.lcssa.i.i.i.i.i.i14, %._crit_edge.i.i.i.i.i.i12 ] ; 2 uses
  %i.bq = load ptr, ptr %.2.i.i.i.i.i.i16, align 8, !tbaa !19
  %i.br = icmp eq ptr %i.bq, @_ZN4llvm20CycleInfoWrapperPass2IDE
  br i1 %i.br, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i17

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit: ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i10, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit96: ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i10, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit98: ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i10, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19: ; preds = %bb.l, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit96, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit98, %._crit_edge._crit_edge52.i.i.i.i.i.i15, %._crit_edge._crit_edge.i.i.i.i.i.i22, %bb.q
  %.028.i.i.i.i.i.i20 = phi ptr [ %.1.i.i.i.i.i.i23, %._crit_edge._crit_edge.i.i.i.i.i.i22 ], [ %.029.lcssa.i.i.i.i.i.i14, %bb.q ], [ %.2.i.i.i.i.i.i16, %._crit_edge._crit_edge52.i.i.i.i.i.i15 ], [ %i.bu, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit98 ], [ %i.bt, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit96 ], [ %i.bs, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i10, %bb.l ]
  %.not.i.i21 = icmp eq ptr %.028.i.i.i.i.i.i20, %i.as
  br i1 %.not.i.i21, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i17, label %_ZN4llvm13AnalysisUsage12addPreservedINS_20CycleInfoWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i17: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19, %._crit_edge._crit_edge52.i.i.i.i.i.i15, %._crit_edge.i.i.i.i.i.i12
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !51
  %.not.i2.i.i18 = icmp ult i32 %i.ap, %i.bw
  br i1 %.not.i2.i.i18, label %bb.u, label %bb.t, !prof !29

bb.t:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i17
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_ZN4llvm20CycleInfoWrapperPass2IDE)
  %.pre85 = load i32, ptr %i.e, align 8, !tbaa !49
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_20CycleInfoWrapperPassEEERS0_v.exit

bb.u:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i17
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  store ptr @_ZN4llvm20CycleInfoWrapperPass2IDE, ptr %i.bx, align 1
  %i.by = load i32, ptr %i.e, align 8, !tbaa !49
  %i.bz = add i32 %i.by, 1                        ; 2 uses
  store i32 %i.bz, ptr %i.e, align 8, !tbaa !49
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_20CycleInfoWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_20CycleInfoWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19, %bb.t, %bb.u
  %i.ca = phi i32 [ %i.ap, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i19 ], [ %.pre85, %bb.t ], [ %i.bz, %bb.u ] ; 4 uses
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !50  ; 5 uses
  %i.cc = zext i32 %i.ca to i64                   ; 3 uses
  %.idx4.i.i.i27 = shl nuw nsw i64 %i.cc, 3       ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx4.i.i.i27
  %i.ce = lshr i64 %i.cc, 2                       ; 2 uses
  %.not.i.i.i28 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i.i28, label %._crit_edge.i.i.i.i.i.i34, label %.lr.ph.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i29:                             ; preds = %_ZN4llvm13AnalysisUsage12addPreservedINS_20CycleInfoWrapperPassEEERS0_v.exit
  %i.cf = and i64 %.idx4.i.i.i27, 34359738336
  %scevgep.i.i.i.i.i.i30 = getelementptr i8, ptr %i.cb, i64 %i.cf
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i29
  %.047.i.i.i.i.i.i31 = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i.i29 ], [ %i.cs, %bb.z ] ; 2 uses
  %.02946.i.i.i.i.i.i32 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i29 ], [ %i.cr, %bb.z ] ; 9 uses
  %i.cg = load ptr, ptr %.02946.i.i.i.i.i.i32, align 8, !tbaa !19
  %i.ch = icmp eq ptr %i.cg, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %i.ch, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i32, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !19
  %i.ck = icmp eq ptr %i.cj, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %i.ck, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41.loopexit.split.loop.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i32, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !19
  %i.cn = icmp eq ptr %i.cm, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %i.cn, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41.loopexit.split.loop.exit104, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i32, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !19
  %i.cq = icmp eq ptr %i.cp, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %i.cq, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41.loopexit.split.loop.exit106, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i32, i64 32
  %i.cs = add nsw i64 %.047.i.i.i.i.i.i31, -1
  %i.ct = icmp sgt i64 %.047.i.i.i.i.i.i31, 1
  br i1 %i.ct, label %bb.v, label %._crit_edge.loopexit.i.i.i.i.i.i33, !llvm.loop !418

._crit_edge.loopexit.i.i.i.i.i.i33:               ; preds = %bb.z
  %i.cu = and i32 %i.ca, 3
  br label %._crit_edge.i.i.i.i.i.i34

._crit_edge.i.i.i.i.i.i34:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i33, %_ZN4llvm13AnalysisUsage12addPreservedINS_20CycleInfoWrapperPassEEERS0_v.exit
  %.pre-phi56.i.i.i.i.i.i35 = phi i32 [ %i.cu, %._crit_edge.loopexit.i.i.i.i.i.i33 ], [ %i.ca, %_ZN4llvm13AnalysisUsage12addPreservedINS_20CycleInfoWrapperPassEEERS0_v.exit ]
  %.029.lcssa.i.i.i.i.i.i36 = phi ptr [ %scevgep.i.i.i.i.i.i30, %._crit_edge.loopexit.i.i.i.i.i.i33 ], [ %i.cb, %_ZN4llvm13AnalysisUsage12addPreservedINS_20CycleInfoWrapperPassEEERS0_v.exit ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i35, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i39 [
    i32 3, label %bb.aa
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i44
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i37
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i.i34
  %i.cv = load ptr, ptr %.029.lcssa.i.i.i.i.i.i36, align 8, !tbaa !19
  %i.cw = icmp eq ptr %i.cv, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %i.cw, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i36, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i44

._crit_edge._crit_edge.i.i.i.i.i.i44:             ; preds = %bb.ab, %._crit_edge.i.i.i.i.i.i34
  %.1.i.i.i.i.i.i45 = phi ptr [ %i.cx, %bb.ab ], [ %.029.lcssa.i.i.i.i.i.i36, %._crit_edge.i.i.i.i.i.i34 ] ; 3 uses
  %i.cy = load ptr, ptr %.1.i.i.i.i.i.i45, align 8, !tbaa !19
  %i.cz = icmp eq ptr %i.cy, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %i.cz, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i44
  %i.da = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i45, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i37

._crit_edge._crit_edge52.i.i.i.i.i.i37:           ; preds = %bb.ac, %._crit_edge.i.i.i.i.i.i34
  %.2.i.i.i.i.i.i38 = phi ptr [ %i.da, %bb.ac ], [ %.029.lcssa.i.i.i.i.i.i36, %._crit_edge.i.i.i.i.i.i34 ] ; 2 uses
  %i.db = load ptr, ptr %.2.i.i.i.i.i.i38, align 8, !tbaa !19
  %i.dc = icmp eq ptr %i.db, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %i.dc, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i39

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41.loopexit.split.loop.exit: ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i32, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41.loopexit.split.loop.exit104: ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i32, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41.loopexit.split.loop.exit106: ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i32, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41: ; preds = %bb.v, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41.loopexit.split.loop.exit104, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41.loopexit.split.loop.exit106, %._crit_edge._crit_edge52.i.i.i.i.i.i37, %._crit_edge._crit_edge.i.i.i.i.i.i44, %bb.aa
  %.028.i.i.i.i.i.i42 = phi ptr [ %.1.i.i.i.i.i.i45, %._crit_edge._crit_edge.i.i.i.i.i.i44 ], [ %.029.lcssa.i.i.i.i.i.i36, %bb.aa ], [ %.2.i.i.i.i.i.i38, %._crit_edge._crit_edge52.i.i.i.i.i.i37 ], [ %i.df, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41.loopexit.split.loop.exit106 ], [ %i.de, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41.loopexit.split.loop.exit104 ], [ %i.dd, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i32, %bb.v ]
  %.not.i.i43 = icmp eq ptr %.028.i.i.i.i.i.i42, %i.cd
  br i1 %.not.i.i43, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i39, label %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i39: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41, %._crit_edge._crit_edge52.i.i.i.i.i.i37, %._crit_edge.i.i.i.i.i.i34
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !51
  %.not.i2.i.i40 = icmp ult i32 %i.ca, %i.dh
  br i1 %.not.i2.i.i40, label %bb.ae, label %bb.ad, !prof !29

bb.ad:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i39
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_ZN4llvm19LoopInfoWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit

bb.ae:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i39
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cc
  store ptr @_ZN4llvm19LoopInfoWrapperPass2IDE, ptr %i.di, align 1
  %i.dj = load i32, ptr %i.e, align 8, !tbaa !49
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.e, align 8, !tbaa !49
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i41, %bb.ad, %bb.ae
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_114FixIrreducible13runOnFunctionERN4llvm8FunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = tail call noundef ptr @_ZNK4llvm16AnalysisResolver22getAnalysisIfAvailableEPKv(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull @_ZN4llvm19LoopInfoWrapperPass2IDE) #16 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !420  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !420  ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.e, %i.g
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !423  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.h, @_ZN4llvm20CycleInfoWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.i, %i.g
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !423
  %.not.i.i.i = icmp eq ptr %i.j, @_ZN4llvm20CycleInfoWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.e, %bb.a ], [ %i.i, %.lr.ph.i.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %.not.i3.i.i8 = icmp eq ptr %i.h, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i8, label %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i9

.lr.ph.i.i.i9:                                    ; preds = %_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit, %.lr.ph.i.i.i9
  %.sroa.08.015.i4.i.i10 = phi ptr [ %i.m, %.lr.ph.i.i.i9 ], [ %i.e, %_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i10, i64 16 ; 4 uses
  %.not11.i.i.i11 = icmp ne ptr %i.m, %i.g
  tail call void @llvm.assume(i1 %.not11.i.i.i11)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !423
  %.not.i.i.i12 = icmp eq ptr %i.n, @_ZN4llvm24DominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i12, label %_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i9

_ZNK4llvm4Pass11getAnalysisINS_24DominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i9, %_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i13 = phi ptr [ %i.e, %_ZNK4llvm4Pass11getAnalysisINS_20CycleInfoWrapperPassEEERT_v.exit ], [ %i.m, %.lr.ph.i.i.i9 ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.not = icmp eq ptr %i.c, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %spec.select = select i1 %.not, ptr null, ptr %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i13, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = tail call fastcc noundef zeroext i1 @_ZL18FixIrreducibleImplRN4llvm8FunctionERNS_9CycleInfoERNS_13DominatorTreeEPNS_8LoopInfoE(ptr noundef nonnull align 8 dereferenceable(104) %i.o, ptr noundef nonnull align 8 dereferenceable(204) %i.s, ptr noundef %spec.select)
  ret i1 %i.t
}

declare noundef zeroext i1 @_ZN4llvm12FunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #16
  %i.f = load ptr, ptr %0, align 8, !tbaa !50
  %i.g = load i32, ptr %i.a, align 8, !tbaa !49
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !49
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !49
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm16AnalysisResolver22getAnalysisIfAvailableEPKv(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm38initializeDominatorTreeWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

declare void @_ZN4llvm33initializeLoopInfoWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_114FixIrreducibleEEEPNS_4PassEv() #0 {
bb.a:
  %0 = alloca %class.anon.219, align 8            ; 5 uses
  %1 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_114FixIrreducible2IDE, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN12_GLOBAL__N_114FixIrreducibleE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.e = tail call noundef ptr @_ZN4llvm12PassRegistry15getPassRegistryEv() #16, !inline_history !0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store ptr %i.e, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  store ptr @_ZL32initializeFixIrreduciblePassOnceRN4llvm12PassRegistryE, ptr %0, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !21
  %i.g = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %0, ptr %i.g, align 8, !tbaa !19
  %i.h = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.h, align 8, !tbaa !19
  %i.i = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL32InitializeFixIrreduciblePassFlag, ptr noundef nonnull @__once_proxy) #16, !inline_history !1 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_114FixIrreducibleC2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #17, !inline_history !1
  unreachable

_ZN12_GLOBAL__N_114FixIrreducibleC2Ev.exit:       ; preds = %bb.a
  store ptr null, ptr %i.g, align 8, !tbaa !19
  store ptr null, ptr %i.h, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret ptr %i.a
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm11depth_firstIPNS_12GenericCycleINS_17GenericSSAContextINS_8FunctionEEEEEEENS_14iterator_rangeINS_11df_iteratorIT_NS_23df_iterator_default_setINS_11GraphTraitsIS9_E7NodeRefELj8EEELb0ESC_EEEERKS9_(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.71") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvm::df_iterator", align 8 ; 10 uses
  %3 = alloca %"class.llvm::df_iterator", align 8 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.a = load ptr, ptr %1, align 8, !tbaa !38, !noalias !438 ; 2 uses
  %.ptr13.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %.ptr13.i.i.i, ptr %2, align 8, !tbaa !33, !alias.scope !438
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 8, ptr %i.b, align 8, !tbaa !34, !alias.scope !438
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i8 1, ptr %i.d, align 8, !tbaa !35, !alias.scope !438
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !alias.scope !438
  store i32 1, ptr %i.c, align 4, !tbaa !36, !alias.scope !438, !noalias !439
  store ptr %i.a, ptr %.ptr13.i.i.i, align 8, !tbaa !19, !alias.scope !438, !noalias !439
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.h = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15 ; 4 uses
  store ptr %i.a, ptr %i.h, align 8
  %.sroa.56.0..sroa_idx7.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 0, ptr %.sroa.56.0..sroa_idx7.i.i.i, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.h, ptr %i.e, align 8, !tbaa !42, !alias.scope !438
  store ptr %i.i, ptr %i.f, align 8, !tbaa !41, !alias.scope !438
  store ptr %i.i, ptr %i.g, align 8, !tbaa !44, !alias.scope !438
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i8 0, i64 72, i1 false), !alias.scope !440
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.k, ptr %3, align 8, !tbaa !33, !alias.scope !440
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 8, ptr %i.l, align 8, !tbaa !34, !alias.scope !440
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !36, !alias.scope !440
  store i8 1, ptr %i.j, align 8, !tbaa !35, !alias.scope !440
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !alias.scope !440
  call void @_ZN4llvm10make_rangeINS_11df_iteratorIPNS_12GenericCycleINS_17GenericSSAContextINS_8FunctionEEEEENS_23df_iterator_default_setIS7_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEEENS_14iterator_rangeIT_EESE_SE_(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range.71") align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(112) %2, ptr nofree noundef nonnull align 8 dereferenceable(112) %3)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm12GenericCycleINS1_17GenericSSAContextINS1_8FunctionEEEEESt8optionalINS6_20const_child_iteratorEEESaISB_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #18
  br label %_ZNSt6vectorISt4pairIPN4llvm12GenericCycleINS1_17GenericSSAContextINS1_8FunctionEEEEESt8optionalINS6_20const_child_iteratorEEESaISB_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPN4llvm12GenericCycleINS1_17GenericSSAContextINS1_8FunctionEEEEESt8optionalINS6_20const_child_iteratorEEESaISB_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.u = load i8, ptr %i.j, align 8, !tbaa !35, !range !46, !noundef !47
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4llvm11df_iteratorIPNS_12GenericCycleINS_17GenericSSAContextINS_8FunctionEEEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm12GenericCycleINS1_17GenericSSAContextINS1_8FunctionEEEEESt8optionalINS6_20const_child_iteratorEEESaISB_EED2Ev.exit.i
  %i.w = load ptr, ptr %3, align 8, !tbaa !33
  call void @free(ptr noundef %i.w) #16
  br label %_ZN4llvm11df_iteratorIPNS_12GenericCycleINS_17GenericSSAContextINS_8FunctionEEEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEED2Ev.exit

_ZN4llvm11df_iteratorIPNS_12GenericCycleINS_17GenericSSAContextINS_8FunctionEEEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPN4llvm12GenericCycleINS1_17GenericSSAContextINS1_8FunctionEEEEESt8optionalINS6_20const_child_iteratorEEESaISB_EED2Ev.exit.i, %bb.c
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !42   ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i2, label %_ZNSt6vectorISt4pairIPN4llvm12GenericCycleINS1_17GenericSSAContextINS1_8FunctionEEEEESt8optionalINS6_20const_child_iteratorEEESaISB_EED2Ev.exit.i3, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11df_iteratorIPNS_12GenericCycleINS_17GenericSSAContextINS_8FunctionEEEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEED2Ev.exit
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #18
  br label %_ZNSt6vectorISt4pairIPN4llvm12GenericCycleINS1_17GenericSSAContextINS1_8FunctionEEEEESt8optionalINS6_20const_child_iteratorEEESaISB_EED2Ev.exit.i3

_ZNSt6vectorISt4pairIPN4llvm12GenericCycleINS1_17GenericSSAContextINS1_8FunctionEEEEESt8optionalINS6_20const_child_iteratorEEESaISB_EED2Ev.exit.i3: ; preds = %bb.d, %_ZN4llvm11df_iteratorIPNS_12GenericCycleINS_17GenericSSAContextINS_8FunctionEEEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEED2Ev.exit
  %i.ac = load i8, ptr %i.d, align 8, !tbaa !35, !range !46, !noundef !47
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN4llvm11df_iteratorIPNS_12GenericCycleINS_17GenericSSAContextINS_8FunctionEEEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEED2Ev.exit4, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm12GenericCycleINS1_17GenericSSAContextINS1_8FunctionEEEEESt8optionalINS6_20const_child_iteratorEEESaISB_EED2Ev.exit.i3
  %i.ae = load ptr, ptr %2, align 8, !tbaa !33
  call void @free(ptr noundef %i.ae) #16
  br label %_ZN4llvm11df_iteratorIPNS_12GenericCycleINS_17GenericSSAContextINS_8FunctionEEEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEED2Ev.exit4

_ZN4llvm11df_iteratorIPNS_12GenericCycleINS_17GenericSSAContextINS_8FunctionEEEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEED2Ev.exit4: ; preds = %_ZNSt6vectorISt4pairIPN4llvm12GenericCycleINS1_17GenericSSAContextINS1_8FunctionEEEEESt8optionalINS6_20const_child_iteratorEEESaISB_EED2Ev.exit.i3, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm10make_rangeINS_11df_iteratorIPNS_12GenericCycleINS_17GenericSSAContextINS_8FunctionEEEEENS_23df_iterator_default_setIS7_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEEENS_14iterator_rangeIT_EESE_SE_(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.71") align 8 %0, ptr nofree noundef align 8 dereferenceable(112) %1, ptr nofree noundef align 8 dereferenceable(112) %2) local_unnamed_addr #0 comdat {
_ZNSt6vectorISt4pairIPN4llvm12GenericCycleINS1_17GenericSSAContextINS1_8FunctionEEEEESt8optionalINS6_20const_child_iteratorEEESaISB_EED2Ev.exit.i:
  %3 = alloca %"class.llvm::df_iterator", align 8 ; 7 uses
  %4 = alloca %"class.llvm::df_iterator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull %i.a, i32 noundef 8, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(112) %1) #16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !43
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  store ptr %i.h, ptr %i.f, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
end_hunk_0
