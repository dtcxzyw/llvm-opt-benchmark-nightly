Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineSMEABIPass?download=true
inline.NumInlined: 1958
inline.NumDeleted: 1051
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK12_GLOBAL__N_113MachineSMEABI16getAnalysisUsageERN4llvm13AnalysisUsageE:bb.a
  %i.aw = lshr i64 %i.au, 2                       ; 2 uses
  %.not.i.i.i9 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i9, label %._crit_edge.i.i.i.i.i.i15, label %.lr.ph.i.i.i.i.i.i10

.lr.ph.i.i.i.i.i.i10:                             ; preds = %_ZN4llvm13AnalysisUsage14addPreservedIDERc.exit
  %i.ax = and i64 %.idx4.i.i.i8, 34359738336
  %scevgep.i.i.i.i.i.i11 = getelementptr i8, ptr %i.at, i64 %i.ax
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i10
  %.047.i.i.i.i.i.i12 = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i10 ], [ %i.bk, %bb.p ] ; 2 uses
  %.02946.i.i.i.i.i.i13 = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i10 ], [ %i.bj, %bb.p ] ; 9 uses
  %i.ay = load ptr, ptr %.02946.i.i.i.i.i.i13, align 8, !tbaa !15
  %i.az = icmp eq ptr %i.ay, %i.as
  br i1 %i.az, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i13, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15
  %i.bc = icmp eq ptr %i.bb, %i.as
  br i1 %i.bc, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i13, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !15
  %i.bf = icmp eq ptr %i.be, %i.as
  br i1 %i.bf, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit66, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i13, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !15
  %i.bi = icmp eq ptr %i.bh, %i.as
  br i1 %i.bi, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit68, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i13, i64 32
  %i.bk = add nsw i64 %.047.i.i.i.i.i.i12, -1
  %i.bl = icmp sgt i64 %.047.i.i.i.i.i.i12, 1
  br i1 %i.bl, label %bb.l, label %._crit_edge.loopexit.i.i.i.i.i.i14, !llvm.loop !450

._crit_edge.loopexit.i.i.i.i.i.i14:               ; preds = %bb.p
  %i.bm = and i32 %i.ar, 3
  br label %._crit_edge.i.i.i.i.i.i15

._crit_edge.i.i.i.i.i.i15:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i14, %_ZN4llvm13AnalysisUsage14addPreservedIDERc.exit
  %.pre-phi56.i.i.i.i.i.i16 = phi i32 [ %i.bm, %._crit_edge.loopexit.i.i.i.i.i.i14 ], [ %i.ar, %_ZN4llvm13AnalysisUsage14addPreservedIDERc.exit ]
  %.029.lcssa.i.i.i.i.i.i17 = phi ptr [ %scevgep.i.i.i.i.i.i11, %._crit_edge.loopexit.i.i.i.i.i.i14 ], [ %i.at, %_ZN4llvm13AnalysisUsage14addPreservedIDERc.exit ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i16, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i20 [
    i32 3, label %bb.q
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i25
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i18
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i.i15
  %i.bn = load ptr, ptr %.029.lcssa.i.i.i.i.i.i17, align 8, !tbaa !15
  %i.bo = icmp eq ptr %i.bn, %i.as
  br i1 %i.bo, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i17, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i25

._crit_edge._crit_edge.i.i.i.i.i.i25:             ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i15
  %.1.i.i.i.i.i.i26 = phi ptr [ %i.bp, %bb.r ], [ %.029.lcssa.i.i.i.i.i.i17, %._crit_edge.i.i.i.i.i.i15 ] ; 3 uses
  %i.bq = load ptr, ptr %.1.i.i.i.i.i.i26, align 8, !tbaa !15
  %i.br = icmp eq ptr %i.bq, %i.as
  br i1 %i.br, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22, label %bb.s

bb.s:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i25
  %i.bs = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i26, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i18

._crit_edge._crit_edge52.i.i.i.i.i.i18:           ; preds = %bb.s, %._crit_edge.i.i.i.i.i.i15
  %.2.i.i.i.i.i.i19 = phi ptr [ %i.bs, %bb.s ], [ %.029.lcssa.i.i.i.i.i.i17, %._crit_edge.i.i.i.i.i.i15 ] ; 2 uses
  %i.bt = load ptr, ptr %.2.i.i.i.i.i.i19, align 8, !tbaa !15
  %i.bu = icmp eq ptr %i.bt, %i.as
  br i1 %i.bu, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i20

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit: ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i13, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit66: ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i13, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit68: ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i13, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22: ; preds = %bb.l, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit66, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit68, %._crit_edge._crit_edge52.i.i.i.i.i.i18, %._crit_edge._crit_edge.i.i.i.i.i.i25, %bb.q
  %.028.i.i.i.i.i.i23 = phi ptr [ %.1.i.i.i.i.i.i26, %._crit_edge._crit_edge.i.i.i.i.i.i25 ], [ %.029.lcssa.i.i.i.i.i.i17, %bb.q ], [ %.2.i.i.i.i.i.i19, %._crit_edge._crit_edge52.i.i.i.i.i.i18 ], [ %i.bx, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit68 ], [ %i.bw, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit66 ], [ %i.bv, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i13, %bb.l ]
  %.not.i.i24 = icmp eq ptr %.028.i.i.i.i.i.i23, %i.av
  br i1 %.not.i.i24, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i20, label %_ZN4llvm13AnalysisUsage14addPreservedIDERc.exit30

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i20: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22, %._crit_edge._crit_edge52.i.i.i.i.i.i18, %._crit_edge.i.i.i.i.i.i15
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !53
  %.not.i2.i.i21 = icmp ult i32 %i.ar, %i.bz
  br i1 %.not.i2.i.i21, label %bb.u, label %bb.t, !prof !54

bb.t:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i20
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.as)
  br label %_ZN4llvm13AnalysisUsage14addPreservedIDERc.exit30

bb.u:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i20
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  store ptr %i.as, ptr %i.ca, align 1
  %i.cb = load i32, ptr %i.g, align 8, !tbaa !51
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.g, align 8, !tbaa !51
  br label %_ZN4llvm13AnalysisUsage14addPreservedIDERc.exit30

_ZN4llvm13AnalysisUsage14addPreservedIDERc.exit30: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i22, %bb.t, %bb.u
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #17
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #3

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_113MachineSMEABI20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) initializes((88, 96)) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.(anonymous namespace)::InstInfo", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.411", align 8 ; 14 uses
  %4 = alloca %"class.llvm::LiveRegUnits", align 8 ; 12 uses
  %5 = alloca %"struct.(anonymous namespace)::InstInfo", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"struct.(anonymous namespace)::FunctionInfo", align 8 ; 21 uses
  %7 = alloca %"class.llvm::SmallVector.425", align 8 ; 11 uses
  %8 = alloca %"class.(anonymous namespace)::EmitContext", align 4 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !483  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.c, ptr %i.d, align 8, !tbaa !166
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %.sroa.0.0.copyload.i = load i32, ptr %i.e, align 8, !tbaa !167 ; 8 uses
  %i.f = and i32 %.sroa.0.0.copyload.i, 448
  %i.g = icmp eq i32 %i.f, 320
  %i.h = lshr i32 %.sroa.0.0.copyload.i, 6
  %i.i = and i32 %i.h, 7                          ; 3 uses
  %i.j = add nsw i32 %i.i, -1
  %spec.select.i.i = icmp ult i32 %i.j, 4
  %i.k = select i1 %i.g, i1 true, i1 %spec.select.i.i ; 2 uses
  br i1 %i.k, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = and i32 %.sroa.0.0.copyload.i, 16
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = and i32 %.sroa.0.0.copyload.i, 3584
  %i.m = icmp eq i32 %i.l, 2560
  %i.n = lshr i32 %.sroa.0.0.copyload.i, 9
  %i.o = and i32 %i.n, 7
  %i.p = add nsw i32 %i.o, -1
  %spec.select.i.i21 = icmp ult i32 %i.p, 4
  %i.q = select i1 %i.m, i1 true, i1 %spec.select.i.i21
  %i.r = and i32 %.sroa.0.0.copyload.i, 16        ; 2 uses
  %i.s = icmp ne i32 %i.r, 0
  %or.cond = or i1 %i.s, %i.q
  br i1 %or.cond, label %bb.c, label %bb.bi

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.r, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !484, !nonnull !48, !align !168 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !169
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 488
  %i.x = load i8, ptr %i.w, align 8, !tbaa !485, !range !314, !noundef !48
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = icmp ne i32 %.pre-phi, 0                 ; 3 uses
  %or.cond80 = or i1 %i.z, %i.y
  br i1 %or.cond80, label %bb.d, label %bb.bi

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr %1, ptr %i.aa, align 8, !tbaa !315
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !487 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !487 ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.ad, %i.af
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !490 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.ag, @_ZN4llvm36MachineOptimizationRemarkEmitterPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_36MachineOptimizationRemarkEmitterPassEEERT_v.exit.thread, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_36MachineOptimizationRemarkEmitterPassEEERT_v.exit.thread: ; preds = %bb.d
  %9 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %12 = load ptr, ptr %11, align 8, !tbaa !491
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %12, ptr %13, align 8, !tbaa !316
  br label %.lr.ph.i.i.i24.preheader

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 3 uses
  %.not11.i.i.i = icmp ne ptr %i.ah, %i.af
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !490
  %.not.i.i.i = icmp eq ptr %i.ai, @_ZN4llvm36MachineOptimizationRemarkEmitterPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_36MachineOptimizationRemarkEmitterPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_36MachineOptimizationRemarkEmitterPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !491
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.am, ptr %i.an, align 8, !tbaa !316
  %.not.i3.i.i23 = icmp eq ptr %i.ag, @_ZN4llvm26LibcallLoweringInfoWrapper2IDE
  br i1 %.not.i3.i.i23, label %_ZNK4llvm4Pass11getAnalysisINS_26LibcallLoweringInfoWrapperEEERT_v.exit, label %.lr.ph.i.i.i24.preheader

.lr.ph.i.i.i24.preheader:                         ; preds = %_ZNK4llvm4Pass11getAnalysisINS_36MachineOptimizationRemarkEmitterPassEEERT_v.exit.thread, %_ZNK4llvm4Pass11getAnalysisINS_36MachineOptimizationRemarkEmitterPassEEERT_v.exit
  br label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %.lr.ph.i.i.i24.preheader, %.lr.ph.i.i.i24
  %.sroa.08.015.i4.i.i25 = phi ptr [ %i.ao, %.lr.ph.i.i.i24 ], [ %i.ad, %.lr.ph.i.i.i24.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i25, i64 16 ; 4 uses
  %.not11.i.i.i26 = icmp ne ptr %i.ao, %i.af
  tail call void @llvm.assume(i1 %.not11.i.i.i26)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !490
  %.not.i.i.i27 = icmp eq ptr %i.ap, @_ZN4llvm26LibcallLoweringInfoWrapper2IDE
  br i1 %.not.i.i.i27, label %_ZNK4llvm4Pass11getAnalysisINS_26LibcallLoweringInfoWrapperEEERT_v.exit, label %.lr.ph.i.i.i24

_ZNK4llvm4Pass11getAnalysisINS_26LibcallLoweringInfoWrapperEEERT_v.exit: ; preds = %.lr.ph.i.i.i24, %_ZNK4llvm4Pass11getAnalysisINS_36MachineOptimizationRemarkEmitterPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i28 = phi ptr [ %i.ad, %_ZNK4llvm4Pass11getAnalysisINS_36MachineOptimizationRemarkEmitterPassEEERT_v.exit ], [ %i.ao, %.lr.ph.i.i.i24 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i28, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !493 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %bb.e, label %_ZN4llvm26LibcallLoweringInfoWrapper18getLibcallLoweringERKNS_6ModuleERKNS_19TargetSubtargetInfoE.exit

bb.e:                                             ; preds = %_ZNK4llvm4Pass11getAnalysisINS_26LibcallLoweringInfoWrapperEEERT_v.exit
  %i.au = load ptr, ptr %1, align 8, !tbaa !319, !nonnull !48, !align !168
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !501
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !506
  %i.az = tail call noundef nonnull align 8 dereferenceable(12408) ptr @_ZN4llvm25RuntimeLibraryInfoWrapper8getRTLCIERKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(24864) %i.ay, ptr noundef nonnull align 8 dereferenceable(1288) %i.aw) ; 2 uses
  store ptr %i.az, ptr %i.as, align 8, !tbaa !493
  br label %_ZN4llvm26LibcallLoweringInfoWrapper18getLibcallLoweringERKNS_6ModuleERKNS_19TargetSubtargetInfoE.exit

_ZN4llvm26LibcallLoweringInfoWrapper18getLibcallLoweringERKNS_6ModuleERKNS_19TargetSubtargetInfoE.exit: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_26LibcallLoweringInfoWrapperEEERT_v.exit, %bb.e
  %i.ba = phi ptr [ %i.at, %_ZNK4llvm4Pass11getAnalysisINS_26LibcallLoweringInfoWrapperEEERT_v.exit ], [ %i.az, %bb.e ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.u, ptr %i.a, align 8, !tbaa !320
  %i.bc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_19TargetSubtargetInfoENS_19LibcallLoweringInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JRKNS_5RTLIB19RuntimeLibcallsInfoERS3_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(12408) %i.ba, ptr noundef nonnull align 8 dereferenceable(344) %i.u), !noalias !507
  %.fca.0.extract.i.i.i.i = extractvalue { ptr, i8 } %i.bc, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !321
  %i.bf = load ptr, ptr %i.v, align 8, !tbaa !169 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 976
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !322
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 1088
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !323
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !508
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !324
  %i.bn = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !487 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !487 ; 2 uses
  %.not1114.i.i.i29 = icmp ne ptr %i.bo, %i.bq
  call void @llvm.assume(i1 %.not1114.i.i.i29)
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !490
  %.not.i3.i.i30 = icmp eq ptr %i.br, @_ZN4llvm24EdgeBundlesWrapperLegacy2IDE
  br i1 %.not.i3.i.i30, label %_ZNK4llvm4Pass11getAnalysisINS_24EdgeBundlesWrapperLegacyEEERT_v.exit, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZN4llvm26LibcallLoweringInfoWrapper18getLibcallLoweringERKNS_6ModuleERKNS_19TargetSubtargetInfoE.exit, %.lr.ph.i.i.i31
  %.sroa.08.015.i4.i.i32 = phi ptr [ %i.bs, %.lr.ph.i.i.i31 ], [ %i.bo, %_ZN4llvm26LibcallLoweringInfoWrapper18getLibcallLoweringERKNS_6ModuleERKNS_19TargetSubtargetInfoE.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i32, i64 16 ; 4 uses
  %.not11.i.i.i33 = icmp ne ptr %i.bs, %i.bq
  call void @llvm.assume(i1 %.not11.i.i.i33)
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !490
  %.not.i.i.i34 = icmp eq ptr %i.bt, @_ZN4llvm24EdgeBundlesWrapperLegacy2IDE
  br i1 %.not.i.i.i34, label %_ZNK4llvm4Pass11getAnalysisINS_24EdgeBundlesWrapperLegacyEEERT_v.exit, label %.lr.ph.i.i.i31

_ZNK4llvm4Pass11getAnalysisINS_24EdgeBundlesWrapperLegacyEEERT_v.exit: ; preds = %.lr.ph.i.i.i31, %_ZN4llvm26LibcallLoweringInfoWrapper18getLibcallLoweringERKNS_6ModuleERKNS_19TargetSubtargetInfoE.exit
  %.sroa.08.015.i.lcssa.i.i35 = phi ptr [ %i.bo, %_ZN4llvm26LibcallLoweringInfoWrapper18getLibcallLoweringERKNS_6ModuleERKNS_19TargetSubtargetInfoE.exit ], [ %i.bs, %.lr.ph.i.i.i31 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i35, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !510 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !511
  %i.by = load ptr, ptr %i.aa, align 8, !tbaa !315, !noalias !511 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !512, !noalias !511
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !513, !noalias !511
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = lshr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = trunc i64 %i.cg to i32                  ; 3 uses
  %i.ci = and i64 %i.cg, 4294967295               ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.cj, ptr %3, align 8, !tbaa !50, !noalias !511
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i32 0, ptr %i.ck, align 8, !tbaa !51, !noalias !511
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 1, ptr %i.cl, align 4, !tbaa !53, !noalias !511
  switch i32 %i.ch, label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_19BlockInfoEE7reserveEm.exit.i.i.i.i [
    i32 0, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_19BlockInfoELj1EEC2Em.exit.i
    i32 1, label %.lr.ph.preheader.i.i.i.i
  ]

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_19BlockInfoEE7reserveEm.exit.i.i.i.i: ; preds = %_ZNK4llvm4Pass11getAnalysisINS_24EdgeBundlesWrapperLegacyEEERT_v.exit
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_19BlockInfoELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(88) %3, i64 noundef range(i64 0, 4294967296) %i.ci), !noalias !511
  %.val12.pre.i.i.i.i = load i32, ptr %i.ck, align 8, !tbaa !51, !noalias !511
  %.pre.i.i.i.i = zext i32 %.val12.pre.i.i.i.i to i64 ; 2 uses
  %.not13.i.i.i.i = icmp samesign eq i64 %i.ci, %.pre.i.i.i.i
  br i1 %.not13.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_19BlockInfoEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_19BlockInfoEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i: ; preds = %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_19BlockInfoEE7reserveEm.exit.i.i.i.i
  %.val11.i.i5.pre.i.i = load ptr, ptr %3, align 8, !tbaa !50, !noalias !511
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_19BlockInfoEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i, %_ZNK4llvm4Pass11getAnalysisINS_24EdgeBundlesWrapperLegacyEEERT_v.exit
  %.val11.i.i5.i.i = phi ptr [ %.val11.i.i5.pre.i.i, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_19BlockInfoEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i ], [ %i.cj, %_ZNK4llvm4Pass11getAnalysisINS_24EdgeBundlesWrapperLegacyEEERT_v.exit ] ; 2 uses
  %.pre-phi.i.i4.i.i = phi i64 [ %.pre.i.i.i.i, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_19BlockInfoEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i ], [ 0, %_ZNK4llvm4Pass11getAnalysisINS_24EdgeBundlesWrapperLegacyEEERT_v.exit ]
  %i.cm = getelementptr inbounds nuw [72 x i8], ptr %.val11.i.i5.i.i, i64 %i.ci
  %i.cn = getelementptr inbounds nuw [72 x i8], ptr %.val11.i.i5.i.i, i64 %.pre-phi.i.i4.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i ], [ %i.cn, %.lr.ph.preheader.i.i.i.i ] ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.co, i8 0, i64 56, i1 false), !noalias !511
  store ptr %i.co, ptr %.014.i.i.i.i, align 8, !tbaa !50, !noalias !511
  %i.cp = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8
  store i32 0, ptr %i.cp, align 8, !tbaa !51, !noalias !511
  %i.cq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 12
  store i32 2, ptr %i.cq, align 4, !tbaa !53, !noalias !511
  %i.cr = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cr, i8 0, i64 5, i1 false), !noalias !511
  %i.cs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cs, %i.cm
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !457

.sink.split.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_19BlockInfoEE7reserveEm.exit.i.i.i.i
  store i32 %i.ch, ptr %i.ck, align 8, !tbaa !51, !noalias !511
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !315, !noalias !511
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_19BlockInfoELj1EEC2Em.exit.i

_ZN4llvm11SmallVectorIN12_GLOBAL__N_19BlockInfoELj1EEC2Em.exit.i: ; preds = %.sink.split.i.i.i.i, %_ZNK4llvm4Pass11getAnalysisINS_24EdgeBundlesWrapperLegacyEEERT_v.exit
  %i.ct = phi ptr [ %i.by, %_ZNK4llvm4Pass11getAnalysisINS_24EdgeBundlesWrapperLegacyEEERT_v.exit ], [ %.pre.i, %.sink.split.i.i.i.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 304
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 296 ; 2 uses
  %.sroa.098.0133.i = load ptr, ptr %i.cu, align 8, !tbaa !514, !noalias !511 ; 2 uses
  %.not115134.i = icmp eq ptr %.sroa.098.0133.i, %i.cv
  br i1 %.not115134.i, label %._crit_edge140.i, label %.lr.ph139.i

.lr.ph139.i:                                      ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_19BlockInfoELj1EEC2Em.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.db = select i1 %i.k, i8 2, i8 4              ; 3 uses
  %i.dc = add nsw i32 %i.i, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.dc, 4
  %i.dd = lshr i32 %.sroa.0.0.copyload.i, 9
  %i.de = and i32 %i.dd, 7
  %i.df = add nsw i32 %i.de, -1
  %spec.select.i1.i.i.i.i = icmp ult i32 %i.df, 4
  %.not1.i.i.i.not140 = select i1 %spec.select.i.i.i.i.i, i1 true, i1 %spec.select.i1.i.i.i.i
  %.not139 = or i1 %.not1.i.i.i.not140, %i.z
  %i.dg = select i1 %.not139, i8 1, i8 6          ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.k

._crit_edge140.loopexit.i:                        ; preds = %_ZN4llvm12LiveRegUnitsD2Ev.exit.i
  %.pre153.i = load i32, ptr %i.ck, align 8, !tbaa !51, !noalias !511
  br label %._crit_edge140.i

._crit_edge140.i:                                 ; preds = %._crit_edge140.loopexit.i, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_19BlockInfoELj1EEC2Em.exit.i
  %i.dj = phi i32 [ %i.ch, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_19BlockInfoELj1EEC2Em.exit.i ], [ %.pre153.i, %._crit_edge140.loopexit.i ] ; 6 uses
  %.sroa.0101.0.lcssa.i = phi i64 [ undef, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_19BlockInfoELj1EEC2Em.exit.i ], [ %.sroa.0101.1.lcssa.i, %._crit_edge140.loopexit.i ]
  %.sroa.4102.0.lcssa.i = phi i8 [ 0, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_19BlockInfoELj1EEC2Em.exit.i ], [ %.sroa.4102.1.lcssa.i, %._crit_edge140.loopexit.i ]
  %.0.lcssa.i = phi i8 [ 0, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_19BlockInfoELj1EEC2Em.exit.i ], [ %.1.lcssa.i, %._crit_edge140.loopexit.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.dk, ptr %6, align 8, !tbaa !50, !alias.scope !511
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i32 0, ptr %i.dl, align 8, !tbaa !51, !alias.scope !511
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 1, ptr %i.dm, align 4, !tbaa !53, !alias.scope !511
  %.not.i.i.i37 = icmp eq i32 %i.dj, 0
  %.val.i.pre155.i = load ptr, ptr %3, align 8, !tbaa !50, !noalias !511 ; 5 uses
  br i1 %.not.i.i.i37, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_19BlockInfoELb0EE13destroy_rangeEPS2_S4_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge140.i
  %i.dn = icmp eq ptr %.val.i.pre155.i, %i.cj
  br i1 %i.dn, label %bb.g, label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_19BlockInfoEE12assignRemoteEOS3_.exit.i.i.i

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_19BlockInfoEE12assignRemoteEOS3_.exit.i.i.i: ; preds = %bb.f
  store ptr %.val.i.pre155.i, ptr %6, align 8, !tbaa !50, !alias.scope !511
  store i32 %i.dj, ptr %i.dl, align 8, !tbaa !51, !alias.scope !511
  %i.do = load i32, ptr %i.cl, align 4, !tbaa !53, !noalias !511
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !53, !alias.scope !511
  store ptr %i.cj, ptr %3, align 8, !tbaa !50, !noalias !511
  store i32 0, ptr %i.cl, align 4, !tbaa !53, !noalias !511
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_19BlockInfoELj1EEC2EOS3_.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq i32 %i.dj, 1
  br i1 %.not, label %_ZSt4moveIPN12_GLOBAL__N_19BlockInfoES2_ET0_T_S4_S3_.exit71.i.thread.i.i, label %_ZSt4moveIPN12_GLOBAL__N_19BlockInfoES2_ET0_T_S4_S3_.exit71.i.i.i

end_hunk_0
