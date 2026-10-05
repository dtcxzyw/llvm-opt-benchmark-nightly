Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVPostLegalizerCombiner?download=true
inline.NumInlined: 2508
inline.NumDeleted: 1129
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK12_GLOBAL__N_126RISCVPostLegalizerCombiner16getAnalysisUsageERN4llvm13AnalysisUsageE:bb.a
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !48
  %i.cp = icmp eq ptr %i.co, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %i.cp, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47.loopexit.split.loop.exit109, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i38, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !48
  %i.cs = icmp eq ptr %i.cr, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %i.cs, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47.loopexit.split.loop.exit111, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i38, i64 32
  %i.cu = add nsw i64 %.047.i.i.i.i.i.i37, -1
  %i.cv = icmp sgt i64 %.047.i.i.i.i.i.i37, 1
  br i1 %i.cv, label %bb.v, label %._crit_edge.loopexit.i.i.i.i.i.i39, !llvm.loop !412

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
  %i.cx = load ptr, ptr %.029.lcssa.i.i.i.i.i.i42, align 8, !tbaa !48
  %i.cy = icmp eq ptr %i.cx, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %i.cy, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i42, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i50

._crit_edge._crit_edge.i.i.i.i.i.i50:             ; preds = %bb.ab, %._crit_edge.i.i.i.i.i.i40
  %.1.i.i.i.i.i.i51 = phi ptr [ %i.cz, %bb.ab ], [ %.029.lcssa.i.i.i.i.i.i42, %._crit_edge.i.i.i.i.i.i40 ] ; 3 uses
  %i.da = load ptr, ptr %.1.i.i.i.i.i.i51, align 8, !tbaa !48
  %i.db = icmp eq ptr %i.da, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %i.db, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i47, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i50
  %i.dc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i51, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i43

._crit_edge._crit_edge52.i.i.i.i.i.i43:           ; preds = %bb.ac, %._crit_edge.i.i.i.i.i.i40
  %.2.i.i.i.i.i.i44 = phi ptr [ %i.dc, %bb.ac ], [ %.029.lcssa.i.i.i.i.i.i42, %._crit_edge.i.i.i.i.i.i40 ] ; 2 uses
  %i.dd = load ptr, ptr %.2.i.i.i.i.i.i44, align 8, !tbaa !48
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
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !83
  %.not.i2.i.i46 = icmp ult i32 %i.cd, %i.dj
  br i1 %.not.i2.i.i46, label %bb.ae, label %bb.ad, !prof !84

bb.ad:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i45
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_27GISelCSEAnalysisWrapperPassEEERS0_v.exit

bb.ae:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i45
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ce
  store ptr @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE, ptr %i.dk, align 1
  %i.dl = load i32, ptr %i.e, align 8, !tbaa !82
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.e, align 8, !tbaa !82
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
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_126RISCVPostLegalizerCombiner20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::unique_ptr.334", align 8 ; 3 uses
  %3 = alloca %"struct.llvm::CombinerInfo", align 8 ; 13 uses
  %4 = alloca %"class.(anonymous namespace)::RISCVPostLegalizerCombinerImpl", align 8 ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.c = load i64, ptr %i.b, align 8, !tbaa !414
  %i.d = and i64 %i.c, 16
  %.not40 = icmp eq i64 %i.d, 0
  br i1 %.not40, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !416  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !416  ; 2 uses
  %.not1114.i.i.i = icmp ne ptr %i.g, %i.i
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !419
  %.not.i3.i.i = icmp eq ptr %i.j, @_ZN4llvm16TargetPassConfig2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.g, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 4 uses
  %.not11.i.i.i = icmp ne ptr %i.k, %i.i
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !419
  %.not.i.i.i = icmp eq ptr %i.l, @_ZN4llvm16TargetPassConfig2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit: ; preds = %.lr.ph.i.i.i, %bb.b
  %.sroa.08.015.i.lcssa.i.i = phi ptr [ %i.g, %bb.b ], [ %i.k, %.lr.ph.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !197, !nonnull !45, !align !198 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !420, !nonnull !45, !align !198
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1064
  %i.s = load i32, ptr %i.r, align 8, !tbaa !515
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit
  %i.t = tail call noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %i.o) #24
  %i.u = xor i1 %i.t, true
  %i.v = zext i1 %i.u to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit
  %i.w = phi i8 [ 0, %_ZNK4llvm4Pass11getAnalysisINS_16TargetPassConfigEEERT_v.exit ], [ %i.v, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !516, !nonnull !45, !align !198 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(519768) %i.y) #24
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !56  ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !416 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !416 ; 2 uses
  %.not1114.i.i.i19 = icmp ne ptr %i.ae, %i.ag
  tail call void @llvm.assume(i1 %.not1114.i.i.i19)
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !419
  %.not.i3.i.i20 = icmp eq ptr %i.ah, @_ZN4llvm32GISelValueTrackingAnalysisLegacy2IDE
  br i1 %.not.i3.i.i20, label %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit, label %.lr.ph.i.i.i21

.lr.ph.i.i.i21:                                   ; preds = %bb.d, %.lr.ph.i.i.i21
  %.sroa.08.015.i4.i.i22 = phi ptr [ %i.ai, %.lr.ph.i.i.i21 ], [ %i.ae, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i22, i64 16 ; 4 uses
  %.not11.i.i.i23 = icmp ne ptr %i.ai, %i.ag
  tail call void @llvm.assume(i1 %.not11.i.i.i23)
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !419
  %.not.i.i.i24 = icmp eq ptr %i.aj, @_ZN4llvm32GISelValueTrackingAnalysisLegacy2IDE
  br i1 %.not.i.i.i24, label %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit, label %.lr.ph.i.i.i21

_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit: ; preds = %.lr.ph.i.i.i21, %bb.d
  %.sroa.08.015.i.lcssa.i.i25 = phi ptr [ %i.ae, %bb.d ], [ %i.ai, %.lr.ph.i.i.i21 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i25, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN4llvm32GISelValueTrackingAnalysisLegacy3getERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull align 8 dereferenceable(1065) %1) #24 ; 2 uses
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !56  ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !416 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !416 ; 3 uses
  %.not1114.i.i.i26 = icmp ne ptr %i.ao, %i.aq
  tail call void @llvm.assume(i1 %.not1114.i.i.i26)
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !419 ; 2 uses
  %.not.i3.i.i27 = icmp eq ptr %i.ar, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i27, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit, %.lr.ph.i.i.i28
  %.sroa.08.015.i4.i.i29 = phi ptr [ %i.as, %.lr.ph.i.i.i28 ], [ %i.ao, %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i29, i64 16 ; 4 uses
  %.not11.i.i.i30 = icmp ne ptr %i.as, %i.aq
  tail call void @llvm.assume(i1 %.not11.i.i.i30)
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !419
  %.not.i.i.i31 = icmp eq ptr %i.at, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i31, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i28

_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i28, %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i32 = phi ptr [ %i.ao, %_ZNK4llvm4Pass11getAnalysisINS_32GISelValueTrackingAnalysisLegacyEEERT_v.exit ], [ %i.as, %.lr.ph.i.i.i28 ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i32, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %.not.i3.i.i34 = icmp eq ptr %i.ar, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %.not.i3.i.i34, label %_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, %.lr.ph.i.i.i35
  %.sroa.08.015.i4.i.i36 = phi ptr [ %i.ax, %.lr.ph.i.i.i35 ], [ %i.ao, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i36, i64 16 ; 4 uses
  %.not11.i.i.i37 = icmp ne ptr %i.ax, %i.aq
  tail call void @llvm.assume(i1 %.not11.i.i.i37)
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !419
  %.not.i.i.i38 = icmp eq ptr %i.ay, @_ZN4llvm27GISelCSEAnalysisWrapperPass2IDE
  br i1 %.not.i.i.i38, label %_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i35

_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i35, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i39 = phi ptr [ %i.ao, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit ], [ %i.ax, %.lr.ph.i.i.i35 ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i39, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 256
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.334") align 8 %2, ptr noundef nonnull align 8 dereferenceable(134) %i.n) #24
  %i.bf = call noundef nonnull align 8 dereferenceable(337) ptr @_ZN4llvm23GISelCSEAnalysisWrapper3getESt10unique_ptrINS_13CSEConfigBaseESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(353) %i.bb, ptr nofree noundef nonnull align 8 dereferenceable(8) %2) #24
  %i.bg = load ptr, ptr %2, align 8, !tbaa !518   ; 3 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13CSEConfigBaseEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm13CSEConfigBaseEEclEPS1_.exit.i: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg) #24, !inline_history !413
  br label %_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_27GISelCSEAnalysisWrapperPassEEERT_v.exit, %_ZNKSt14default_deleteIN4llvm13CSEConfigBaseEEclEPS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.bk = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.o, i32 noundef 51) #24
  br i1 %i.bk, label %_ZNK4llvm8Function10hasOptSizeEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit
  %i.bl = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.o, i32 noundef 19) #24
  %i.bm = zext i1 %i.bl to i8
  br label %_ZNK4llvm8Function10hasOptSizeEv.exit

_ZNK4llvm8Function10hasOptSizeEv.exit:            ; preds = %_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit, %bb.e
  %i.bn = phi i8 [ 1, %_ZNSt10unique_ptrIN4llvm13CSEConfigBaseESt14default_deleteIS1_EED2Ev.exit ], [ %i.bm, %bb.e ]
  %i.bo = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.o, i32 noundef 19) #24
  %i.bp = zext i1 %i.bo to i8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm12CombinerInfoE, i64 16), ptr %3, align 8, !tbaa !32
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 1, ptr %i.bq, align 8, !tbaa !521
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.br, align 1, !tbaa !522
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.bs, align 8, !tbaa !523
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 %i.w, ptr %i.bt, align 8, !tbaa !524
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 %i.bn, ptr %i.bu, align 1, !tbaa !525
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 %i.bp, ptr %i.bv, align 2, !tbaa !526
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.bw, align 4, !tbaa !527
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.bx, align 8, !tbaa !528
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i8 1, ptr %i.by, align 4, !tbaa !529
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZN4llvm8CombinerC2ERNS_15MachineFunctionERKNS_12CombinerInfoEPNS_18GISelValueTrackingEPNS_12GISelCSEInfoE(ptr noundef nonnull align 8 dereferenceable(5624) %4, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(37) %3, ptr noundef nonnull align 8 dereferenceable(100) %i.am, ptr noundef nonnull %i.bf) #24
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_130RISCVPostLegalizerCombinerImplE, i64 16), ptr %4, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 4280
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 4232
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !530, !nonnull !45, !align !198
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 4240
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !246, !nonnull !45, !align !198
  call void @_ZN4llvm14CombinerHelperC1ERNS_19GISelChangeObserverERNS_16MachineIRBuilderEbPNS_18GISelValueTrackingEPNS_20MachineDominatorTreeEPKNS_13LegalizerInfoE(ptr noundef nonnull align 8 dereferenceable(80) %i.ca, ptr noundef nonnull align 8 dereferenceable(64) %i.cc, ptr noundef nonnull align 8 dereferenceable(96) %i.ce, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(100) %i.am, ptr noundef nonnull %i.aw, ptr noundef %i.ac) #24
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 4360
  store ptr %i.bz, ptr %i.cf, align 8, !tbaa !531
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 4368
  store ptr %i.y, ptr %i.cg, align 8, !tbaa !532
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 4377
  store i8 0, ptr %i.ch, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 4384 ; 2 uses
  call void @_ZN4llvm20GIMatchTableExecutor12MatcherStateC1Ej(ptr noundef nonnull align 8 dereferenceable(168) %i.ci, i32 noundef 0) #24
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 4552
  store ptr @_ZN12_GLOBAL__N_111TypeObjectsE, ptr %i.cj, align 8, !tbaa !253
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 4560
  store ptr @_ZN12_GLOBAL__N_114FeatureBitsetsE, ptr %i.ck, align 8, !tbaa !533
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 4568
  store ptr @_ZN12_GLOBAL__N_130RISCVPostLegalizerCombinerImpl19ComplexPredicateFnsE, ptr %i.cl, align 8, !tbaa !254
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 4576
  store ptr @_ZN12_GLOBAL__N_130RISCVPostLegalizerCombinerImpl15CustomRenderersE, ptr %i.cm, align 8, !tbaa !255
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 4584 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 5616
  store i32 1, ptr %i.cn, align 8
  store i64 0, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 1152921504875282432, ptr %i.a, align 8, !tbaa !51
  %i.cp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImjLj64ENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E24lookupOrInsertIntoBucketImJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.cp, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  store i32 0, ptr %i.cq, align 4, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.cr = call noundef zeroext i1 @_ZN4llvm8Combiner20combineMachineInstrsEv(ptr noundef nonnull align 8 dereferenceable(4280) %4) #24
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_130RISCVPostLegalizerCombinerImplE, i64 16), ptr %4, align 8, !tbaa !32
  %i.cs = load i32, ptr %i.cn, align 8
  %i.ct = and i32 %i.cs, 1
  %.not.i.i.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZN12_GLOBAL__N_130RISCVPostLegalizerCombinerImplD2Ev.exit

bb.f:                                             ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 4608
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !28 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %_ZN12_GLOBAL__N_130RISCVPostLegalizerCombinerImplD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 4592
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !28
  %i.cz = zext i32 %i.cv to i64                   ; 2 uses
  %i.da = shl nuw nsw i64 %i.cz, 4
  %i.db = add nuw nsw i64 %i.cz, 31
  %i.dc = lshr i64 %i.db, 3
  %i.dd = and i64 %i.dc, 1073741820
  %i.de = add nuw nsw i64 %i.dd, %i.da
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cy, i64 noundef %i.de, i64 noundef 8) #24, !inline_history !256
  br label %_ZN12_GLOBAL__N_130RISCVPostLegalizerCombinerImplD2Ev.exit

_ZN12_GLOBAL__N_130RISCVPostLegalizerCombinerImplD2Ev.exit: ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit, %bb.f, %bb.g
  call void @_ZN4llvm20GIMatchTableExecutor12MatcherStateD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.ci) #24, !inline_history !256
  call void @_ZN4llvm8CombinerD2Ev(ptr noundef nonnull align 8 dead_on_return(4280) dereferenceable(5624) %4) #24, !inline_history !256
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN12_GLOBAL__N_130RISCVPostLegalizerCombinerImplD2Ev.exit
  %.0 = phi i1 [ %i.cr, %_ZN12_GLOBAL__N_130RISCVPostLegalizerCombinerImplD2Ev.exit ], [ false, %bb.a ]
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_125getRuleRangeForIdentifierEN4llvm9StringRefE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  store ptr %1, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 45, ptr %i.d, align 1, !tbaa !28, !noalias !538
  %i.f = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %i.d, i64 1, i64 noundef 0) #24, !noalias !539 ; 3 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_ZNK4llvm9StringRef5splitEc.exit.thread, label %_ZNK4llvm9StringRef5splitEc.exit

_ZNK4llvm9StringRef5splitEc.exit.thread:          ; preds = %bb.a
  %.sroa.037.0.copyload = load ptr, ptr %3, align 8, !tbaa !50
  %.sroa.738.0.copyload = load i64, ptr %i.e, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

_ZNK4llvm9StringRef5splitEc.exit:                 ; preds = %bb.a
  %i.h = load i64, ptr %i.e, align 8, !tbaa !257, !noalias !539 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.f, i64 %i.h) ; 2 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !258, !noalias !539 ; 3 uses
  %i.j = add nuw i64 %i.f, 1                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp ugt i64 %i.h, %i.j
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNK4llvm9StringRef5splitEc.exit
  %i.k = sub nuw i64 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.m = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %i.i, i64 %.sroa.speculated.i.i.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #24 ; 2 uses
  %i.n = load i64, ptr %i.c, align 8
  %.sroa.01.0.i = select i1 %i.m, i64 undef, i64 %i.n ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.o = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr nonnull %i.l, i64 %i.k, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #24 ; 2 uses
  %i.p = load i64, ptr %i.b, align 8
  %.sroa.01.0.i7 = select i1 %i.o, i64 undef, i64 %i.p ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %brmerge = or i1 %i.m, %i.o
  br i1 %brmerge, label %bb.g, label %_ZStgeImmENSt9enable_ifIXsr14is_convertibleIDTgeclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS1_ERKSA_IS4_E.exit

_ZStgeImmENSt9enable_ifIXsr14is_convertibleIDTgeclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS1_ERKSA_IS4_E.exit: ; preds = %bb.b
  %.not51 = icmp ult i64 %.sroa.01.0.i, %.sroa.01.0.i7
  br i1 %.not51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZStgeImmENSt9enable_ifIXsr14is_convertibleIDTgeclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS1_ERKSA_IS4_E.exit
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.12, i1 noundef zeroext true) #25
  unreachable

bb.d:                                             ; preds = %_ZStgeImmENSt9enable_ifIXsr14is_convertibleIDTgeclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS1_ERKSA_IS4_E.exit
  %i.q = add i64 %.sroa.01.0.i7, 1
  br label %.sink.split

bb.e:                                             ; preds = %_ZNK4llvm9StringRef5splitEc.exit.thread, %_ZNK4llvm9StringRef5splitEc.exit
  %.sroa.738.047 = phi i64 [ %.sroa.738.0.copyload, %_ZNK4llvm9StringRef5splitEc.exit.thread ], [ %.sroa.speculated.i.i.i, %_ZNK4llvm9StringRef5splitEc.exit ] ; 2 uses
  %.sroa.037.046 = phi ptr [ %.sroa.037.0.copyload, %_ZNK4llvm9StringRef5splitEc.exit.thread ], [ %i.i, %_ZNK4llvm9StringRef5splitEc.exit ] ; 2 uses
  %.not.i = icmp eq i64 %.sroa.738.047, 1
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread49

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.e
  %lhsc = load i8, ptr %.sroa.037.046, align 1
  %i.r = icmp eq i8 %lhsc, 42
  br i1 %i.r, label %.sink.split, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread49

_ZN4llvmeqENS_9StringRefES0_.exit.thread49:       ; preds = %bb.e, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.s = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %.sroa.037.046, i64 %.sroa.738.047, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #24
  %i.t = load i64, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread49
  %i.u = add i64 %i.t, 1
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %bb.d, %bb.f
  %.sink56 = phi i64 [ %i.t, %bb.f ], [ %.sroa.01.0.i, %bb.d ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  %.sink55 = phi i64 [ %i.u, %bb.f ], [ %i.q, %bb.d ], [ 31, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  store i64 %.sink56, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink55, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %_ZN4llvmeqENS_9StringRefES0_.exit.thread49, %bb.b
  %.sink = phi i8 [ 0, %bb.b ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.thread49 ], [ 1, %.sink.split ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.v, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15SparseBitVectorILj128EE5resetEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 5 uses
  %i.b = icmp eq ptr %i.a, %0
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %1, 7                           ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59   ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !66
end_hunk_0
