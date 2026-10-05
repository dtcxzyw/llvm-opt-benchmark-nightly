Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonExpandCondsets?download=true
inline.NumInlined: 2468
inline.NumDeleted: 1287
begin_hunk_0_@_ZNK12_GLOBAL__N_121HexagonExpandCondsets16getAnalysisUsageERN4llvm13AnalysisUsageE:bb.a
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !72
  %.not.i2.i.i20 = icmp ult i32 %i.ao, %i.bv
  br i1 %.not.i2.i.i20, label %bb.u, label %bb.t, !prof !73

bb.t:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i19
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @_ZN4llvm22SlotIndexesWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_22SlotIndexesWrapperPassEEERS0_v.exit

bb.u:                                             ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i19
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  store ptr @_ZN4llvm22SlotIndexesWrapperPass2IDE, ptr %i.bw, align 1
  %i.bx = load i32, ptr %i.d, align 8, !tbaa !70
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.d, align 8, !tbaa !70
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_22SlotIndexesWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_22SlotIndexesWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i21, %bb.t, %bb.u
  %i.bz = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE) #19 ; 0 uses
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !23  ; 5 uses
  %i.cb = load i32, ptr %i.d, align 8, !tbaa !70  ; 4 uses
  %i.cc = zext i32 %i.cb to i64                   ; 3 uses
  %.idx4.i.i.i29 = shl nuw nsw i64 %i.cc, 3       ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx4.i.i.i29
  %i.ce = lshr i64 %i.cc, 2                       ; 2 uses
  %.not.i.i.i30 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i.i30, label %._crit_edge.i.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i31:                             ; preds = %_ZN4llvm13AnalysisUsage12addPreservedINS_22SlotIndexesWrapperPassEEERS0_v.exit
  %i.cf = and i64 %.idx4.i.i.i29, 34359738336
  %scevgep.i.i.i.i.i.i32 = getelementptr i8, ptr %i.ca, i64 %i.cf
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i31
  %.047.i.i.i.i.i.i33 = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i.i31 ], [ %i.cs, %bb.z ] ; 2 uses
  %.02946.i.i.i.i.i.i34 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i31 ], [ %i.cr, %bb.z ] ; 9 uses
  %i.cg = load ptr, ptr %.02946.i.i.i.i.i.i34, align 8, !tbaa !24
  %i.ch = icmp eq ptr %i.cg, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %i.ch, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i34, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !24
  %i.ck = icmp eq ptr %i.cj, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %i.ck, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i34, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !24
  %i.cn = icmp eq ptr %i.cm, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %i.cn, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit105, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i34, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !24
  %i.cq = icmp eq ptr %i.cp, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %i.cq, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit107, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i34, i64 32
  %i.cs = add nsw i64 %.047.i.i.i.i.i.i33, -1
  %i.ct = icmp sgt i64 %.047.i.i.i.i.i.i33, 1
  br i1 %i.ct, label %bb.v, label %._crit_edge.loopexit.i.i.i.i.i.i35, !llvm.loop !330

._crit_edge.loopexit.i.i.i.i.i.i35:               ; preds = %bb.z
  %i.cu = and i32 %i.cb, 3
  br label %._crit_edge.i.i.i.i.i.i36

._crit_edge.i.i.i.i.i.i36:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i35, %_ZN4llvm13AnalysisUsage12addPreservedINS_22SlotIndexesWrapperPassEEERS0_v.exit
  %.pre-phi56.i.i.i.i.i.i37 = phi i32 [ %i.cu, %._crit_edge.loopexit.i.i.i.i.i.i35 ], [ %i.cb, %_ZN4llvm13AnalysisUsage12addPreservedINS_22SlotIndexesWrapperPassEEERS0_v.exit ]
  %.029.lcssa.i.i.i.i.i.i38 = phi ptr [ %scevgep.i.i.i.i.i.i32, %._crit_edge.loopexit.i.i.i.i.i.i35 ], [ %i.ca, %_ZN4llvm13AnalysisUsage12addPreservedINS_22SlotIndexesWrapperPassEEERS0_v.exit ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i37, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i41 [
    i32 3, label %bb.aa
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i46
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i39
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i.i36
  %i.cv = load ptr, ptr %.029.lcssa.i.i.i.i.i.i38, align 8, !tbaa !24
  %i.cw = icmp eq ptr %i.cv, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %i.cw, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i38, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i46

._crit_edge._crit_edge.i.i.i.i.i.i46:             ; preds = %bb.ab, %._crit_edge.i.i.i.i.i.i36
  %.1.i.i.i.i.i.i47 = phi ptr [ %i.cx, %bb.ab ], [ %.029.lcssa.i.i.i.i.i.i38, %._crit_edge.i.i.i.i.i.i36 ] ; 3 uses
  %i.cy = load ptr, ptr %.1.i.i.i.i.i.i47, align 8, !tbaa !24
  %i.cz = icmp eq ptr %i.cy, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %i.cz, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i46
  %i.da = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i47, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i39

._crit_edge._crit_edge52.i.i.i.i.i.i39:           ; preds = %bb.ac, %._crit_edge.i.i.i.i.i.i36
  %.2.i.i.i.i.i.i40 = phi ptr [ %i.da, %bb.ac ], [ %.029.lcssa.i.i.i.i.i.i38, %._crit_edge.i.i.i.i.i.i36 ] ; 2 uses
  %i.db = load ptr, ptr %.2.i.i.i.i.i.i40, align 8, !tbaa !24
  %i.dc = icmp eq ptr %i.db, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %i.dc, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i41

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit: ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i34, i64 8
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit105: ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i34, i64 16
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit107: ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i34, i64 24
  br label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43: ; preds = %bb.v, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit105, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit107, %._crit_edge._crit_edge52.i.i.i.i.i.i39, %._crit_edge._crit_edge.i.i.i.i.i.i46, %bb.aa
  %.028.i.i.i.i.i.i44 = phi ptr [ %.1.i.i.i.i.i.i47, %._crit_edge._crit_edge.i.i.i.i.i.i46 ], [ %.029.lcssa.i.i.i.i.i.i38, %bb.aa ], [ %.2.i.i.i.i.i.i40, %._crit_edge._crit_edge52.i.i.i.i.i.i39 ], [ %i.df, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit107 ], [ %i.de, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit105 ], [ %i.dd, %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i34, %bb.v ]
  %.not.i.i45 = icmp eq ptr %.028.i.i.i.i.i.i44, %i.cd
  br i1 %.not.i.i45, label %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i41, label %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i41: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43, %._crit_edge._crit_edge52.i.i.i.i.i.i39, %._crit_edge.i.i.i.i.i.i36
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !72
  %.not.i2.i.i42 = icmp ult i32 %i.cb, %i.dh
  br i1 %.not.i2.i.i42, label %bb.ae, label %bb.ad, !prof !73

bb.ad:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i41
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE)
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit

bb.ae:                                            ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.thread.i.i41
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cc
  store ptr @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE, ptr %i.di, align 1
  %i.dj = load i32, ptr %i.d, align 8, !tbaa !70
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.d, align 8, !tbaa !70
  br label %_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit

_ZN4llvm13AnalysisUsage12addPreservedINS_31MachineDominatorTreeWrapperPassEEERS0_v.exit: ; preds = %_ZN4llvm12is_containedIRNS_15SmallVectorImplIPKvEES3_EEbOT_RKT0_.exit.i.i43, %bb.ad, %bb.ae
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #19
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
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_121HexagonExpandCondsets20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ConnectedVNInfoEqClasses", align 8 ; 10 uses
  %3 = alloca %"class.llvm::SmallVector.518", align 8 ; 10 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.llvm::DenseMap.493", align 8 ; 10 uses
  %7 = alloca %"class.llvm::DenseMap.493", align 8 ; 10 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::SmallVector.258", align 8 ; 11 uses
  %10 = alloca %"class.std::set", align 8         ; 8 uses
  %11 = alloca %"class.std::set", align 8         ; 9 uses
  %12 = alloca %"class.llvm::SmallVector.258", align 8 ; 12 uses
  %13 = alloca %"class.std::set", align 8         ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !457, !nonnull !21, !align !90
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %i.b) #19
  br i1 %i.c, label %bb.ev, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !458, !nonnull !21, !align !90 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(344) %i.e) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 13 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !91
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !458, !nonnull !21, !align !90 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(344) %i.k) #19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.o, ptr %i.p, align 8, !tbaa !92
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !460  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !460  ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.s, %i.u
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !463  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.v, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit.thread, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit.thread: ; preds = %bb.b
  %14 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %16, ptr %17, align 8, !tbaa !93
  br label %.lr.ph.i.i.i59.preheader

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.s, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 3 uses
  %.not11.i.i.i = icmp ne ptr %i.w, %i.u
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !463
  %.not.i.i.i = icmp eq ptr %i.x, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !93
  %.not.i3.i.i58 = icmp eq ptr %i.v, @_ZN4llvm24LiveIntervalsWrapperPass2IDE
  br i1 %.not.i3.i.i58, label %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i59.preheader

.lr.ph.i.i.i59.preheader:                         ; preds = %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit.thread, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit
  br label %.lr.ph.i.i.i59

.lr.ph.i.i.i59:                                   ; preds = %.lr.ph.i.i.i59.preheader, %.lr.ph.i.i.i59
  %.sroa.08.015.i4.i.i60 = phi ptr [ %i.ac, %.lr.ph.i.i.i59 ], [ %i.s, %.lr.ph.i.i.i59.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i60, i64 16 ; 4 uses
  %.not11.i.i.i61 = icmp ne ptr %i.ac, %i.u
  tail call void @llvm.assume(i1 %.not11.i.i.i61)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !463
  %.not.i.i.i62 = icmp eq ptr %i.ad, @_ZN4llvm24LiveIntervalsWrapperPass2IDE
  br i1 %.not.i.i.i62, label %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i59

_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i59, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit
  %.sroa.08.015.i.lcssa.i.i63 = phi ptr [ %i.s, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit ], [ %i.ac, %.lr.ph.i.i.i59 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i63, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 16 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !94
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !464
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 18 uses
  store i32 0, ptr %i.al, align 8, !tbaa !100
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr null, ptr %i.am, align 8, !tbaa !101
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 6 uses
  store ptr %i.al, ptr %i.an, align 8, !tbaa !102
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !103
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 7 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 22 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !100
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !101
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 8 uses
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !102
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !103
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 11 uses
  store i64 0, ptr %i.au, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.av, ptr %12, align 8, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !70
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  store i32 16, ptr %i.ax, align 4, !tbaa !72
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 4 uses
  %.sroa.0205.0270 = load ptr, ptr %i.ay, align 8, !tbaa !105 ; 2 uses
  %.not214271 = icmp eq ptr %.sroa.0205.0270, %i.az
  br i1 %.not214271, label %._crit_edge274.thread, label %.lr.ph273

._crit_edge274.thread:                            ; preds = %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  br label %_ZN12_GLOBAL__N_121HexagonExpandCondsets16coalesceSegmentsERKN4llvm15SmallVectorImplIPNS1_12MachineInstrEEERSt3setINS1_8RegisterESt4lessIS9_ESaIS9_EE.exit

._crit_edge274:                                   ; preds = %._crit_edge
  %.val.pre = load ptr, ptr %12, align 8, !tbaa !23 ; 2 uses
  %.val55.pre = load i32, ptr %i.aw, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.ba, ptr %9, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !70
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  store i32 16, ptr %i.bc, align 4, !tbaa !72
  %i.bd = zext i32 %.val55.pre to i64
  %.idx.i = shl nuw nsw i64 %i.bd, 3
  %i.be = getelementptr inbounds nuw i8, ptr %.val.pre, i64 %.idx.i
  %.not43.i = icmp eq i32 %.val55.pre, 0
  br i1 %.not43.i, label %_ZN12_GLOBAL__N_121HexagonExpandCondsets16coalesceSegmentsERKN4llvm15SmallVectorImplIPNS1_12MachineInstrEEERSt3setINS1_8RegisterESt4lessIS9_ESaIS9_EE.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !23  ; 3 uses
  %.pre60.i = load i32, ptr %i.bb, align 8, !tbaa !70 ; 2 uses
  %i.bf = zext i32 %.pre60.i to i64
  %.idx51.i = shl nuw nsw i64 %i.bf, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx51.i
  %.not6345.i = icmp eq i32 %.pre60.i, 0
  br i1 %.not6345.i, label %._crit_edge50.i, label %.lr.ph49.i

.lr.ph.i:                                         ; preds = %._crit_edge274, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i
  %.044.i = phi ptr [ %i.bz, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i ], [ %.val.pre, %._crit_edge274 ] ; 2 uses
  %i.bh = load ptr, ptr %.044.i, align 8, !tbaa !107 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !124 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = and i32 %i.bl, 255
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = and i32 %i.bp, 255
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.d, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.bs = load i32, ptr %i.bb, align 8, !tbaa !70 ; 2 uses
  %i.bt = load i32, ptr %i.bc, align 4, !tbaa !72
  %.not.i.i = icmp ult i32 %i.bs, %i.bt
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !73

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.bh)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bu = zext i32 %i.bs to i64
  %i.bv = load ptr, ptr %9, align 8, !tbaa !23
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bu
  store ptr %i.bh, ptr %i.bw, align 1
  %i.bx = load i32, ptr %i.bb, align 8, !tbaa !70
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bb, align 8, !tbaa !70
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %.044.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bz, %i.be
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge50.loopexit.i:                         ; preds = %_ZNSt3setIN4llvm8RegisterESt4lessIS1_ESaIS1_EE6insertEOS1_.exit135.i
  %.pre63.i = load ptr, ptr %9, align 8, !tbaa !23
  br label %._crit_edge50.i

._crit_edge50.i:                                  ; preds = %._crit_edge50.loopexit.i, %._crit_edge.i
  %i.ca = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.pre63.i, %._crit_edge50.loopexit.i ] ; 2 uses
  %.058.lcssa.i = phi i1 [ false, %._crit_edge.i ], [ %i.gq, %._crit_edge50.loopexit.i ] ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.ba
  br i1 %i.cb, label %_ZN12_GLOBAL__N_121HexagonExpandCondsets16coalesceSegmentsERKN4llvm15SmallVectorImplIPNS1_12MachineInstrEEERSt3setINS1_8RegisterESt4lessIS9_ESaIS9_EE.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge50.i
  call void @free(ptr noundef %i.ca) #19
  br label %_ZN12_GLOBAL__N_121HexagonExpandCondsets16coalesceSegmentsERKN4llvm15SmallVectorImplIPNS1_12MachineInstrEEERSt3setINS1_8RegisterESt4lessIS9_ESaIS9_EE.exit

.lr.ph49.i:                                       ; preds = %._crit_edge.i, %_ZNSt3setIN4llvm8RegisterESt4lessIS1_ESaIS1_EE6insertEOS1_.exit135.i
  %.05847.i = phi i1 [ %i.gq, %_ZNSt3setIN4llvm8RegisterESt4lessIS1_ESaIS1_EE6insertEOS1_.exit135.i ], [ false, %._crit_edge.i ]
  %.05946.i = phi ptr [ %i.gr, %_ZNSt3setIN4llvm8RegisterESt4lessIS1_ESaIS1_EE6insertEOS1_.exit135.i ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %i.cc = load ptr, ptr %.05946.i, align 8, !tbaa !107 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !124 ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !125 ; 10 uses
  %i.ch = load i32, ptr %i.ce, align 8
  %i.ci = lshr i32 %i.ch, 8
  %i.cj = and i32 %i.ci, 4095                     ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !125 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 64 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 96 ; 2 uses
  %i.co = load i32, ptr %i.cm, align 8            ; 2 uses
  %i.cp = and i32 %i.co, 255
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %.lr.ph49.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 68 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !125
  %i.ct = lshr exact i32 %i.co, 8
  %i.cu = and i32 %i.ct, 4095
  %.sroa.415.0.insert.ext.i = zext nneg i32 %i.cu to i64
  %.sroa.415.0.insert.shift.i = shl nuw nsw i64 %.sroa.415.0.insert.ext.i, 32
  %.sroa.014.0.insert.ext.i = zext i32 %i.cs to i64
  %.sroa.014.0.insert.insert.i = or disjoint i64 %.sroa.415.0.insert.shift.i, %.sroa.014.0.insert.ext.i
  %i.cv = call fastcc noundef ptr @_ZN12_GLOBAL__N_121HexagonExpandCondsets21getReachingDefForPredENS0_11RegisterRefEN4llvm26MachineInstrBundleIteratorINS2_12MachineInstrELb0EEEjb(ptr noundef nonnull align 8 dereferenceable(116) %0, i64 %.sroa.014.0.insert.insert.i, ptr nonnull %i.cc, i32 noundef %i.cl, i1 noundef zeroext true) ; 2 uses
  %.not64.i = icmp eq ptr %i.cv, null
  br i1 %.not64.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cw = load ptr, ptr %i.j, align 8, !tbaa !91  ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 960
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull align 8 dereferenceable(440) %i.cw, ptr noundef nonnull align 8 dereferenceable(80) %i.cv) #19, !inline_history !331
  br i1 %i.da, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.13.0.insert.ext27.i = zext nneg i32 %i.cj to i64
  %.sroa.13.0.insert.shift28.i = shl nuw nsw i64 %.sroa.13.0.insert.ext27.i, 32
  %.sroa.018.0.insert.ext24.i = zext i32 %i.cg to i64
  %.sroa.018.0.insert.insert26.i = or disjoint i64 %.sroa.13.0.insert.shift28.i, %.sroa.018.0.insert.ext24.i
  %i.db = load i32, ptr %i.cr, align 4, !tbaa !125
  %i.dc = load i32, ptr %i.cm, align 8
  %i.dd = lshr i32 %i.dc, 8
  %i.de = and i32 %i.dd, 4095
  %.sroa.212.0.insert.ext.i = zext nneg i32 %i.de to i64
  %.sroa.212.0.insert.shift.i = shl nuw nsw i64 %.sroa.212.0.insert.ext.i, 32
  %.sroa.011.0.insert.ext.i = zext i32 %i.db to i64
  %.sroa.011.0.insert.insert.i = or disjoint i64 %.sroa.212.0.insert.shift.i, %.sroa.011.0.insert.ext.i
  %i.df = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_121HexagonExpandCondsets17coalesceRegistersENS0_11RegisterRefES1_(ptr noundef nonnull align 8 dereferenceable(116) %0, i64 %.sroa.018.0.insert.insert26.i, i64 %.sroa.011.0.insert.insert.i)
  br i1 %i.df, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %.02022.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !126 ; 3 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i
end_hunk_0
