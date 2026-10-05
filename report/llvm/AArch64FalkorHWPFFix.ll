Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64FalkorHWPFFix?download=true
inline.NumInlined: 1562
inline.NumDeleted: 965
begin_hunk_0_@_ZNK12_GLOBAL__N_131FalkorMarkStridedAccessesLegacy16getAnalysisUsageERN4llvm13AnalysisUsageE:bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @_ZN4llvm19LoopInfoWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit

bb.u:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i18
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  store ptr @_ZN4llvm19LoopInfoWrapperPass2IDE, ptr %i.bx, align 1
  %i.by = load i32, ptr %i.d, align 8, !tbaa !55
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i20, %bb.t, %bb.u
  %i.ca = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm26ScalarEvolutionWrapperPass2IDE) #20 ; 0 uses
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !13  ; 5 uses
  %i.cc = load i32, ptr %i.d, align 8, !tbaa !55  ; 4 uses
  %i.cd = zext i32 %i.cc to i64                   ; 3 uses
  %.idx4.i.i.i28 = shl nuw nsw i64 %i.cd, 3       ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx4.i.i.i28
  %i.cf = lshr i64 %i.cd, 2                       ; 2 uses
  %.not.i.i.i29 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i29, label %._crit_edge.i.i.i.i.i.i35, label %.lr.ph.i.i.i.i.i.i30

.lr.ph.i.i.i.i.i.i30:                             ; preds = %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit
  %i.cg = and i64 %.idx4.i.i.i28, 34359738336
  %scevgep.i.i.i.i.i.i31 = getelementptr i8, ptr %i.cb, i64 %i.cg
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i30
  %.047.i.i.i.i.i.i32 = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i30 ], [ %i.ct, %bb.z ] ; 2 uses
  %.02946.i.i.i.i.i.i33 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i30 ], [ %i.cs, %bb.z ] ; 9 uses
  %i.ch = load ptr, ptr %.02946.i.i.i.i.i.i33, align 8, !tbaa !14
  %i.ci = icmp eq ptr %i.ch, @_ZN4llvm26ScalarEvolutionWrapperPass2IDE
  br i1 %i.ci, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i33, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !14
  %i.cl = icmp eq ptr %i.ck, @_ZN4llvm26ScalarEvolutionWrapperPass2IDE
  br i1 %i.cl, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42.loopexit.split.loop.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i33, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !14
  %i.co = icmp eq ptr %i.cn, @_ZN4llvm26ScalarEvolutionWrapperPass2IDE
  br i1 %i.co, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42.loopexit.split.loop.exit104, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i33, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !14
  %i.cr = icmp eq ptr %i.cq, @_ZN4llvm26ScalarEvolutionWrapperPass2IDE
  br i1 %i.cr, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42.loopexit.split.loop.exit106, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i33, i64 32
  %i.ct = add nsw i64 %.047.i.i.i.i.i.i32, -1
  %i.cu = icmp sgt i64 %.047.i.i.i.i.i.i32, 1
  br i1 %i.cu, label %bb.v, label %._crit_edge.loopexit.i.i.i.i.i.i34, !llvm.loop !341

._crit_edge.loopexit.i.i.i.i.i.i34:               ; preds = %bb.z
  %i.cv = and i32 %i.cc, 3
  br label %._crit_edge.i.i.i.i.i.i35

._crit_edge.i.i.i.i.i.i35:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i34, %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit
  %.pre-phi56.i.i.i.i.i.i36 = phi i32 [ %i.cv, %._crit_edge.loopexit.i.i.i.i.i.i34 ], [ %i.cc, %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit ]
  %.029.lcssa.i.i.i.i.i.i37 = phi ptr [ %scevgep.i.i.i.i.i.i31, %._crit_edge.loopexit.i.i.i.i.i.i34 ], [ %i.cb, %_ZN4llvm13AnalysisUsage12addPreservedINS_19LoopInfoWrapperPassEEERS0_v.exit ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i36, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i40 [
    i32 3, label %bb.aa
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i45
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i38
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i.i35
  %i.cw = load ptr, ptr %.029.lcssa.i.i.i.i.i.i37, align 8, !tbaa !14
  %i.cx = icmp eq ptr %i.cw, @_ZN4llvm26ScalarEvolutionWrapperPass2IDE
  br i1 %i.cx, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i37, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i45

._crit_edge._crit_edge.i.i.i.i.i.i45:             ; preds = %bb.ab, %._crit_edge.i.i.i.i.i.i35
  %.1.i.i.i.i.i.i46 = phi ptr [ %i.cy, %bb.ab ], [ %.029.lcssa.i.i.i.i.i.i37, %._crit_edge.i.i.i.i.i.i35 ] ; 3 uses
  %i.cz = load ptr, ptr %.1.i.i.i.i.i.i46, align 8, !tbaa !14
  %i.da = icmp eq ptr %i.cz, @_ZN4llvm26ScalarEvolutionWrapperPass2IDE
  br i1 %i.da, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i45
  %i.db = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i46, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i38

._crit_edge._crit_edge52.i.i.i.i.i.i38:           ; preds = %bb.ac, %._crit_edge.i.i.i.i.i.i35
  %.2.i.i.i.i.i.i39 = phi ptr [ %i.db, %bb.ac ], [ %.029.lcssa.i.i.i.i.i.i37, %._crit_edge.i.i.i.i.i.i35 ] ; 2 uses
  %i.dc = load ptr, ptr %.2.i.i.i.i.i.i39, align 8, !tbaa !14
  %i.dd = icmp eq ptr %i.dc, @_ZN4llvm26ScalarEvolutionWrapperPass2IDE
  br i1 %i.dd, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i40

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42.loopexit.split.loop.exit: ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i33, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42.loopexit.split.loop.exit104: ; preds = %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i33, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42.loopexit.split.loop.exit106: ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i33, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42: ; preds = %bb.v, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42.loopexit.split.loop.exit104, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42.loopexit.split.loop.exit106, %._crit_edge._crit_edge52.i.i.i.i.i.i38, %._crit_edge._crit_edge.i.i.i.i.i.i45, %bb.aa
  %.028.i.i.i.i.i.i43 = phi ptr [ %.1.i.i.i.i.i.i46, %._crit_edge._crit_edge.i.i.i.i.i.i45 ], [ %.029.lcssa.i.i.i.i.i.i37, %bb.aa ], [ %.2.i.i.i.i.i.i39, %._crit_edge._crit_edge52.i.i.i.i.i.i38 ], [ %i.dg, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42.loopexit.split.loop.exit106 ], [ %i.df, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42.loopexit.split.loop.exit104 ], [ %i.de, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i33, %bb.v ]
  %.not.i.i44 = icmp eq ptr %.028.i.i.i.i.i.i43, %i.ce
  br i1 %.not.i.i44, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i40, label %_ZN4llvm13AnalysisUsage12addPreservedINS_26ScalarEvolutionWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i40: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42, %._crit_edge._crit_edge52.i.i.i.i.i.i38, %._crit_edge.i.i.i.i.i.i35
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !56
  %.not.i2.i.i41 = icmp ult i32 %i.cc, %i.di
  br i1 %.not.i2.i.i41, label %bb.ae, label %bb.ad, !prof !42

bb.ad:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i40
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @_ZN4llvm26ScalarEvolutionWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_26ScalarEvolutionWrapperPassEEERS0_v.exit

bb.ae:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i40
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cd
  store ptr @_ZN4llvm26ScalarEvolutionWrapperPass2IDE, ptr %i.dj, align 1
  %i.dk = load i32, ptr %i.d, align 8, !tbaa !55
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_26ScalarEvolutionWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_26ScalarEvolutionWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i42, %bb.ad, %bb.ae
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_131FalkorMarkStridedAccessesLegacy13runOnFunctionERN4llvm8FunctionE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.llvm::iterator_range.292", align 8 ; 14 uses
  %3 = alloca %"class.llvm::df_iterator", align 8 ; 13 uses
  %4 = alloca %"class.llvm::df_iterator", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %.not1114.i.i.i = icmp ne ptr %i.d, %i.f
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !61
  %.not.i3.i.i = icmp eq ptr %i.g, @_ZN4llvm16TargetPassConfig2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.d, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.h, %i.f
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %.not.i.i.i = icmp eq ptr %i.i, @_ZN4llvm16TargetPassConfig2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.d, %bb.a ], [ %i.h, %.lr.ph.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !362  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(1761) %i.m, ptr noundef nonnull align 8 dereferenceable(140) %1) #20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 344
  %i.s = load i8, ptr %i.r, align 8, !tbaa !209
  %.not = icmp eq i8 %i.s, 58
  br i1 %.not, label %bb.b, label %_ZN12_GLOBAL__N_125FalkorMarkStridedAccesses3runEv.exit

bb.b:                                             ; preds = %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit
  %i.t = tail call noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) #20
  br i1 %i.t, label %_ZN12_GLOBAL__N_125FalkorMarkStridedAccesses3runEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !58   ; 3 uses
  %.not1114.i.i.i10 = icmp ne ptr %i.v, %i.x
  tail call void @llvm.assume(i1 %.not1114.i.i.i10)
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !61   ; 2 uses
  %.not.i3.i.i11 = icmp eq ptr %i.y, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %.not.i3.i.i11, label %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %bb.c, %.lr.ph.i.i.i12
  %.sroa.08.015.i4.i.i13 = phi ptr [ %i.z, %.lr.ph.i.i.i12 ], [ %i.v, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i13, i64 16 ; 4 uses
  %.not11.i.i.i14 = icmp ne ptr %i.z, %i.x
  tail call void @llvm.assume(i1 %.not11.i.i.i14)
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !61
  %.not.i.i.i15 = icmp eq ptr %i.aa, @_ZN4llvm19LoopInfoWrapperPass2IDE
  br i1 %.not.i.i.i15, label %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i12

_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i12, %bb.c
  %.sroa.08.015.i.lcssa.i.i16 = phi ptr [ %i.v, %bb.c ], [ %i.z, %.lr.ph.i.i.i12 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i16, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i3.i.i18 = icmp eq ptr %i.y, @_ZN4llvm26ScalarEvolutionWrapperPass2IDE
  br i1 %.not.i3.i.i18, label %_ZNK4llvm4Pass11getAnalysisINS_26ScalarEvolutionWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit, %.lr.ph.i.i.i19
  %.sroa.08.015.i4.i.i20 = phi ptr [ %i.ad, %.lr.ph.i.i.i19 ], [ %i.v, %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i20, i64 16 ; 4 uses
  %.not11.i.i.i21 = icmp ne ptr %i.ad, %i.x
  tail call void @llvm.assume(i1 %.not11.i.i.i21)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !61
  %.not.i.i.i22 = icmp eq ptr %i.ae, @_ZN4llvm26ScalarEvolutionWrapperPass2IDE
  br i1 %.not.i.i.i22, label %_ZNK4llvm4Pass11getAnalysisINS_26ScalarEvolutionWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i19

_ZNK4llvm4Pass11getAnalysisINS_26ScalarEvolutionWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i19, %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i23 = phi ptr [ %i.v, %_ZNK4llvm4Pass11getAnalysisINS_19LoopInfoWrapperPassEEERT_v.exit ], [ %i.ad, %.lr.ph.i.i.i19 ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i23, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !364
  %i.aj = getelementptr i8, ptr %i.ac, i64 112
  %.val.val = load ptr, ptr %i.aj, align 8, !tbaa !366 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ac, i64 120
  %.val.val9 = load ptr, ptr %i.ak, align 8, !tbaa !366 ; 2 uses
  %.not25.i = icmp eq ptr %.val.val, %.val.val9
  br i1 %.not25.i, label %_ZN12_GLOBAL__N_125FalkorMarkStridedAccesses3runEv.exit, label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %_ZNK4llvm4Pass11getAnalysisINS_26ScalarEvolutionWrapperPassEEERT_v.exit
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEED2Ev.exit.i, %.lr.ph28.i
  %.027.i = phi i1 [ false, %.lr.ph28.i ], [ %.1.i, %_ZN4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEED2Ev.exit.i ]
  %.sroa.01.026.i = phi ptr [ %.val.val, %.lr.ph28.i ], [ %i.ep, %_ZN4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEED2Ev.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bg = load ptr, ptr %.sroa.01.026.i, align 8, !tbaa !212
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !212
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN4llvm11depth_firstIPNS_4LoopEEENS_14iterator_rangeINS_11df_iteratorIT_NS_23df_iterator_default_setINS_11GraphTraitsIS5_E7NodeRefELj8EEELb0ES8_EEEERKS5_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.292") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull %i.al, ptr noundef nonnull align 8 dereferenceable(224) %2) #20
  %i.bh = load ptr, ptr %i.ao, align 8, !tbaa !215, !noalias !367 ; 3 uses
  %i.bi = load ptr, ptr %i.an, align 8, !tbaa !216, !noalias !367 ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false), !alias.scope !367
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEESaISE_EEC2EmRKSF_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = sdiv exact i64 %i.bl, 24
  %i.bn = icmp ugt i64 %i.bm, 384307168202282325
  br i1 %i.bn, label %bb.f, label %_ZNSt15__new_allocatorISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !217

bb.f:                                             ; preds = %bb.e
  call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

_ZNSt15__new_allocatorISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.bo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #22
  %.pre.i.i = load ptr, ptr %i.an, align 8, !tbaa !218, !noalias !367
  %.pre1.i.i = load ptr, ptr %i.ao, align 8, !tbaa !218, !noalias !367
  br label %_ZNSt12_Vector_baseISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEESaISE_EEC2EmRKSF_.exit.i.i.i.i

_ZNSt12_Vector_baseISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEESaISE_EEC2EmRKSF_.exit.i.i.i.i: ; preds = %_ZNSt15__new_allocatorISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.d
  %i.bp = phi ptr [ %.pre1.i.i, %_ZNSt15__new_allocatorISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ], [ %i.bh, %bb.d ] ; 2 uses
  %i.bq = phi ptr [ %.pre.i.i, %_ZNSt15__new_allocatorISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ], [ %i.bi, %bb.d ] ; 2 uses
  %i.br = phi ptr [ %i.bo, %_ZNSt15__new_allocatorISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ], [ null, %bb.d ] ; 5 uses
  store ptr %i.br, ptr %i.am, align 8, !tbaa !216, !alias.scope !367
  store ptr %i.br, ptr %i.ap, align 8, !tbaa !215, !alias.scope !367
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bl
  store ptr %i.bs, ptr %i.aq, align 8, !tbaa !219, !alias.scope !367
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.bp
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNK4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEE5beginEv.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNSt12_Vector_baseISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEESaISE_EEC2EmRKSF_.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.br, %_ZNSt12_Vector_baseISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEESaISE_EEC2EmRKSF_.exit.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bq, %_ZNSt12_Vector_baseISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEESaISE_EEC2EmRKSF_.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.bp
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEE5beginEv.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !344

_ZNK4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEE5beginEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEESaISE_EEC2EmRKSF_.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.br, %_ZNSt12_Vector_baseISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEESaISE_EEC2EmRKSF_.exit.i.i.i.i ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !215, !alias.scope !367
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull %i.as, ptr noundef nonnull align 8 dereferenceable(112) %i.ar) #20
  %i.bv = load ptr, ptr %i.av, align 8, !tbaa !215, !noalias !368 ; 3 uses
  %i.bw = load ptr, ptr %i.au, align 8, !tbaa !216, !noalias !368 ; 3 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false), !alias.scope !368
  %.not.i.i.i.i.i.i7.i = icmp eq ptr %i.bv, %i.bw
  br i1 %.not.i.i.i.i.i.i7.i, label %_ZNSt12_Vector_baseISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEESaISE_EEC2EmRKSF_.exit.i.i.i11.i, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEE5beginEv.exit.i
  %i.ca = sdiv exact i64 %i.bz, 24
  %i.cb = icmp ugt i64 %i.ca, 384307168202282325
  br i1 %i.cb, label %bb.h, label %_ZNSt15__new_allocatorISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i8.i, !prof !217

bb.h:                                             ; preds = %bb.g
  call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

_ZNSt15__new_allocatorISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i8.i: ; preds = %bb.g
  %i.cc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #22
  %.pre.i9.i = load ptr, ptr %i.au, align 8, !tbaa !218, !noalias !368
  %.pre1.i10.i = load ptr, ptr %i.av, align 8, !tbaa !218, !noalias !368
  br label %_ZNSt12_Vector_baseISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEESaISE_EEC2EmRKSF_.exit.i.i.i11.i

_ZNSt12_Vector_baseISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEESaISE_EEC2EmRKSF_.exit.i.i.i11.i: ; preds = %_ZNSt15__new_allocatorISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i8.i, %_ZNK4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEE5beginEv.exit.i
  %i.cd = phi ptr [ %.pre1.i10.i, %_ZNSt15__new_allocatorISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i8.i ], [ %i.bv, %_ZNK4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEE5beginEv.exit.i ] ; 2 uses
  %i.ce = phi ptr [ %.pre.i9.i, %_ZNSt15__new_allocatorISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i8.i ], [ %i.bw, %_ZNK4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEE5beginEv.exit.i ] ; 2 uses
  %i.cf = phi ptr [ %i.cc, %_ZNSt15__new_allocatorISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i8.i ], [ null, %_ZNK4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEE5beginEv.exit.i ] ; 6 uses
  store ptr %i.cf, ptr %i.at, align 8, !tbaa !216, !alias.scope !368
  store ptr %i.cf, ptr %i.aw, align 8, !tbaa !215, !alias.scope !368
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bz
  store ptr %i.cg, ptr %i.ax, align 8, !tbaa !219, !alias.scope !368
  %.not7.i.i.i.i.i.i.i12.i = icmp eq ptr %i.ce, %i.cd
  br i1 %.not7.i.i.i.i.i.i.i12.i, label %_ZNK4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEE3endEv.exit.i, label %.lr.ph.i.i.i.i.i.i.i13.i

.lr.ph.i.i.i.i.i.i.i13.i:                         ; preds = %_ZNSt12_Vector_baseISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEESaISE_EEC2EmRKSF_.exit.i.i.i11.i, %.lr.ph.i.i.i.i.i.i.i13.i
  %.09.i.i.i.i.i.i.i14.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i13.i ], [ %i.cf, %_ZNSt12_Vector_baseISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEESaISE_EEC2EmRKSF_.exit.i.i.i11.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i15.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i13.i ], [ %i.ce, %_ZNSt12_Vector_baseISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEESaISE_EEC2EmRKSF_.exit.i.i.i11.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i15.i, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i15.i, i64 24 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i14.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i16.i = icmp eq ptr %i.ch, %i.cd
  br i1 %.not.i.i.i.i.i.i.i16.i, label %_ZNK4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEE3endEv.exit.i, label %.lr.ph.i.i.i.i.i.i.i13.i, !llvm.loop !344

_ZNK4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEE3endEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i13.i, %_ZNSt12_Vector_baseISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEESaISE_EEC2EmRKSF_.exit.i.i.i11.i
  %.0.lcssa.i.i.i.i.i.i.i17.i = phi ptr [ %i.cf, %_ZNSt12_Vector_baseISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_St6vectorIS3_SaIS3_EEEEEESaISE_EEC2EmRKSF_.exit.i.i.i11.i ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i13.i ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i.i.i17.i, ptr %i.aw, align 8, !tbaa !215, !alias.scope !368
  %.pre.i = load ptr, ptr %i.ap, align 8, !tbaa !215
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS2_Lj8EEELb0ENS_11GraphTraitsIS2_EEE6toNextEv.exit.i, %_ZNK4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEE3endEv.exit.i
  %i.cj = phi ptr [ %i.cf, %_ZNK4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEE3endEv.exit.i ], [ %.pre47.i, %_ZN4llvm11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS2_Lj8EEELb0ENS_11GraphTraitsIS2_EEE6toNextEv.exit.i ] ; 4 uses
  %i.ck = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i17.i, %_ZNK4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEE3endEv.exit.i ], [ %.pre46.i, %_ZN4llvm11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS2_Lj8EEELb0ENS_11GraphTraitsIS2_EEE6toNextEv.exit.i ]
  %i.cl = phi ptr [ %.pre.i, %_ZNK4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEE3endEv.exit.i ], [ %i.if, %_ZN4llvm11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS2_Lj8EEELb0ENS_11GraphTraitsIS2_EEE6toNextEv.exit.i ] ; 6 uses
  %.1.i = phi i1 [ %.027.i, %_ZNK4llvm14iterator_rangeINS_11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEEE3endEv.exit.i ], [ %.0.i.i, %_ZN4llvm11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS2_Lj8EEELb0ENS_11GraphTraitsIS2_EEE6toNextEv.exit.i ] ; 5 uses
  %i.cm = load ptr, ptr %i.am, align 8, !tbaa !216 ; 3 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ptrtoint ptr %i.ck to i64
  %i.cr = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = icmp eq i64 %i.cp, %i.cs
  br i1 %i.ct, label %bb.j, label %.loopexit4.i

bb.j:                                             ; preds = %bb.i
  %.not9.i.i.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.cl
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZNK4llvm11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS2_Lj8EEELb0ENS_11GraphTraitsIS2_EEEneERKS7_.exit.i, label %.lr.ph.i.i.i.i.i.i.i18.i

.lr.ph.i.i.i.i.i.i.i18.i:                         ; preds = %bb.j, %bb.k
  %.011.i.i.i.i.i.i.i.i = phi ptr [ %i.dk, %bb.k ], [ %i.cj, %bb.j ] ; 4 uses
  %.0810.i.i.i.i.i.i.i.i = phi ptr [ %i.dj, %bb.k ], [ %i.cm, %bb.j ] ; 4 uses
  %i.cu = load ptr, ptr %.0810.i.i.i.i.i.i.i.i, align 8, !tbaa !374
  %i.cv = load ptr, ptr %.011.i.i.i.i.i.i.i.i, align 8, !tbaa !374
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZSteqIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEEEbRKSt4pairIT_T0_ESI_.exit.i.i.i.i.i.i.i.i, label %.loopexit4.i

_ZSteqIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEEEbRKSt4pairIT_T0_ESI_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i18.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i, i64 16
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !375, !range !220, !noundef !221 ; 2 uses
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i, i64 16
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !375, !range !220, !noundef !221
  %i.de = icmp eq i8 %i.da, %i.dd                 ; 2 uses
  %brmerge.not.i.i.i.i.i.i.i.i.i.i = and i1 %i.de, %i.db
  %i.df = load ptr, ptr %i.cx, align 8
  %i.dg = load ptr, ptr %i.cy, align 8
  %i.dh = icmp eq ptr %i.df, %i.dg
  %i.di = select i1 %brmerge.not.i.i.i.i.i.i.i.i.i.i, i1 %i.dh, i1 %i.de
  br i1 %i.di, label %bb.k, label %.loopexit4.i

bb.k:                                             ; preds = %_ZSteqIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEEEbRKSt4pairIT_T0_ESI_.exit.i.i.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i.i19.i = icmp eq ptr %i.dj, %i.cl
  br i1 %.not.i.i.i.i.i.i.i19.i, label %_ZNK4llvm11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS2_Lj8EEELb0ENS_11GraphTraitsIS2_EEEneERKS7_.exit.i, label %.lr.ph.i.i.i.i.i.i.i18.i, !llvm.loop !347

_ZNK4llvm11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS2_Lj8EEELb0ENS_11GraphTraitsIS2_EEEneERKS7_.exit.i: ; preds = %bb.j, %bb.k
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_S_IS3_SaIS3_EEEEEESaISD_EED2Ev.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS2_Lj8EEELb0ENS_11GraphTraitsIS2_EEEneERKS7_.exit.i
  %i.dl = load ptr, ptr %i.ax, align 8, !tbaa !219
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.dn) #23
  br label %_ZNSt6vectorISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_S_IS3_SaIS3_EEEEEESaISD_EED2Ev.exit.i.i

_ZNSt6vectorISt4pairIPN4llvm4LoopESt8optionalIN9__gnu_cxx17__normal_iteratorIPKS3_S_IS3_SaIS3_EEEEEESaISD_EED2Ev.exit.i.i: ; preds = %bb.l, %_ZNK4llvm11df_iteratorIPNS_4LoopENS_23df_iterator_default_setIS2_Lj8EEELb0ENS_11GraphTraitsIS2_EEEneERKS7_.exit.i
end_hunk_0
