inline.NumInlined: 41993
inline.NumDeleted: 13966
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE4BindEPNS2_5BlockE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.f = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.g = icmp eq ptr %i.e, %i.f
  %i.h = icmp eq ptr %i.b, null
  %or.cond.not17.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.not17.i, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i21 = icmp eq ptr %i.l, %i.b
  br i1 %.not.i21, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit, label %.lr.ph

bb.b:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.n, %.1.i
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit, label %.lr.ph, !llvm.loop !110

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.b
  %i.o = phi ptr [ %i.n, %bb.b ], [ %i.l, %.lr.ph.i ]
  %.018.i22 = phi ptr [ %.1.i, %bb.b ], [ %i.b, %.lr.ph.i ] ; 4 uses
  %i.p = phi ptr [ %i.ay, %bb.b ], [ %i.e, %.lr.ph.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.018.i22, i64 20
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = icmp sgt i32 %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.v = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not6.i.i = icmp eq ptr %i.x, null
  br i1 %.not6.i.i, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.i, align 8
  %.pre20.i = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %i.x, %bb.c ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  store ptr null, ptr %i.z, align 8
  %i.ab = load i64, ptr %i.j, align 8
  %i.ac = add i64 %i.ab, -1
  store i64 %i.ac, ptr %i.j, align 8
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !111

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %i.ad = phi ptr [ %.pre20.i, %._crit_edge.loopexit.i.i ], [ %i.p, %bb.c ]
  %i.ae = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.v, %bb.c ]
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  store ptr %i.af, ptr %i.i, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 2 uses
  store ptr %i.ag, ptr %i.c, align 8
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.ah = icmp slt i32 %i.r, %i.t
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.018.i22, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not6.i10.i = icmp eq ptr %i.am, null
  br i1 %.not6.i10.i, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit16.i, label %.lr.ph.i11.i

._crit_edge.loopexit.i14.i:                       ; preds = %.lr.ph.i11.i
  %.pre.i15.i = load ptr, ptr %i.i, align 8
  %.pre.i = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit16.i

.lr.ph.i11.i:                                     ; preds = %bb.f, %.lr.ph.i11.i
  %.07.i12.i = phi ptr [ %i.ap, %.lr.ph.i11.i ], [ %i.am, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.07.i12.i, i64 8
  store i64 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.07.i12.i, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  store ptr null, ptr %i.ao, align 8
  %i.aq = load i64, ptr %i.j, align 8
  %i.ar = add i64 %i.aq, -1
  store i64 %i.ar, ptr %i.j, align 8
  %.not.i13.i = icmp eq ptr %i.ap, null
  br i1 %.not.i13.i, label %._crit_edge.loopexit.i14.i, label %.lr.ph.i11.i, !llvm.loop !111

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit16.i: ; preds = %._crit_edge.loopexit.i14.i, %bb.f
  %i.as = phi ptr [ %.pre.i, %._crit_edge.loopexit.i14.i ], [ %i.p, %bb.f ]
  %i.at = phi ptr [ %.pre.i15.i, %._crit_edge.loopexit.i14.i ], [ %i.ak, %bb.f ]
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  store ptr %i.au, ptr %i.i, align 8
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 2 uses
  store ptr %i.av, ptr %i.c, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.018.i22, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit16.i, %bb.e, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit.i
  %i.ay = phi ptr [ %i.ag, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit.i ], [ %i.p, %bb.e ], [ %i.av, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit16.i ] ; 5 uses
  %.1.i = phi ptr [ %.018.i22, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit.i ], [ %i.aj, %bb.e ], [ %i.ax, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit16.i ] ; 3 uses
  %i.az = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  %i.bb = icmp eq ptr %.1.i, null
  %or.cond.not.i = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %or.cond.not.i, label %._ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit.loopexit_crit_edge, label %bb.b, !llvm.loop !110

._ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit.loopexit_crit_edge: ; preds = %bb.g
  br label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit, !llvm.loop !110

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit: ; preds = %bb.b, %.lr.ph.i, %._ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit.loopexit_crit_edge, %bb.a
  %i.bc = phi ptr [ %i.f, %bb.a ], [ %i.az, %._ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit.loopexit_crit_edge ], [ %i.f, %.lr.ph.i ], [ %i.az, %bb.b ]
  %i.bd = phi ptr [ %i.e, %bb.a ], [ %i.ay, %._ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit.loopexit_crit_edge ], [ %i.e, %.lr.ph.i ], [ %i.ay, %bb.b ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ult ptr %i.bd, %i.bf
  br i1 %i.bg, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.h, !prof !9

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bc to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3
  %i.bl = add nsw i64 %i.bk, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bl)
  %.pre.i1 = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit, %bb.h
  %i.bm = phi ptr [ %i.bd, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit ], [ %.pre.i1, %bb.h ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bn, ptr %i.c, align 8
  store ptr %1, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = icmp ult ptr %i.bp, %i.br
  br i1 %i.bs, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft21ValueNumberingReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS3_12GraphVisitorENS3_25LateEscapeAnalysisReducerENS3_26MachineOptimizationReducerENS3_25MemoryOptimizationReducerENS3_24BranchEliminationReducerENS3_26LateLoadEliminationReducerENS3_23WasmCodeCoverageReducerES4_S6_EEEEEEEEEE5EntryEE9push_backEOSO_.exit, label %bb.i, !prof !9

bb.i:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 3
  %i.ca = add nsw i64 %i.bz, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft21ValueNumberingReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS3_12GraphVisitorENS3_25LateEscapeAnalysisReducerENS3_26MachineOptimizationReducerENS3_25MemoryOptimizationReducerENS3_24BranchEliminationReducerENS3_26LateLoadEliminationReducerENS3_23WasmCodeCoverageReducerES4_S6_EEEEEEEEEE5EntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 noundef %i.ca)
  %.pre.i.i2 = load ptr, ptr %i.bo, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft21ValueNumberingReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS3_12GraphVisitorENS3_25LateEscapeAnalysisReducerENS3_26MachineOptimizationReducerENS3_25MemoryOptimizationReducerENS3_24BranchEliminationReducerENS3_26LateLoadEliminationReducerENS3_23WasmCodeCoverageReducerES4_S6_EEEEEEEEEE5EntryEE9push_backEOSO_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft21ValueNumberingReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS3_12GraphVisitorENS3_25LateEscapeAnalysisReducerENS3_26MachineOptimizationReducerENS3_25MemoryOptimizationReducerENS3_24BranchEliminationReducerENS3_26LateLoadEliminationReducerENS3_23WasmCodeCoverageReducerES4_S6_EEEEEEEEEE5EntryEE9push_backEOSO_.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, %bb.i
  %i.cb = phi ptr [ %i.bp, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit ], [ %.pre.i.i2, %bb.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.cc, ptr %i.bo, align 8
  store ptr null, ptr %i.cb, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE25ReplayMissingPredecessorsEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(1768) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector.705", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 280
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 4 uses
  %.0.in37 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.038 = load ptr, ptr %.0.in37, align 8         ; 2 uses
  %.not39 = icmp eq ptr %.038, null
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE9push_backES6_.exit
  %.040 = phi ptr [ %.0, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE9push_backES6_.exit ], [ %.038, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.h = load ptr, ptr %i.g, align 8
  %.not20 = icmp eq ptr %.040, %i.h
  %.pre.pre45 = load ptr, ptr %i.b, align 8, !noalias !112 ; 3 uses
  br i1 %.not20, label %.critedge, label %bb.b

.critedge:                                        ; preds = %.lr.ph, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE9push_backES6_.exit..critedge.loopexit_crit_edge
  %.pre = phi ptr [ %.pre.pre, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE9push_backES6_.exit..critedge.loopexit_crit_edge ], [ %.pre.pre45, %.lr.ph ] ; 2 uses
  %.pre44 = load ptr, ptr %2, align 8, !noalias !115
  %i.i = icmp eq ptr %.pre, %.pre44
  br i1 %i.i, label %._crit_edge, label %.lr.ph43

.lr.ph43:                                         ; preds = %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1744 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1752
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.q = getelementptr inbounds i8, ptr %0, i64 -8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1712
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 2 uses
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = icmp eq ptr %.pre.pre45, %i.u
  br i1 %i.v, label %bb.c, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE9push_backES6_.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %2)
  %.pre.i.i = load ptr, ptr %i.b, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE9push_backES6_.exit

_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE9push_backES6_.exit: ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %.pre.i.i, %bb.c ], [ %.pre.pre45, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.x, ptr %i.b, align 8
  store ptr %.040, ptr %i.w, align 8
  %.0.in = getelementptr inbounds nuw i8, ptr %.040, i64 24
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE9push_backES6_.exit..critedge.loopexit_crit_edge, label %.lr.ph, !llvm.loop !118

_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE9push_backES6_.exit..critedge.loopexit_crit_edge: ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE9push_backES6_.exit
  %.pre.pre = load ptr, ptr %i.b, align 8, !noalias !112
  br label %.critedge, !llvm.loop !118

._crit_edge:                                      ; preds = %bb.n, %bb.a, %.critedge
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.d:                                             ; preds = %.lr.ph43, %bb.n
  %.sroa.031.042 = phi ptr [ %.pre, %.lr.ph43 ], [ %i.y, %bb.n ]
  %i.y = getelementptr inbounds i8, ptr %.sroa.031.042, i64 -8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 5 uses
  %i.aa = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ac = icmp ult ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE10StartLayerEv.exit.i, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.m, align 8
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3
  %i.ai = add nsw i64 %i.ah, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft14LayeredHashMapINS3_1VINS3_12WordWithBitsILm32EEEEEbE5EntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.ai)
  %.pre.i.i.i.i = load ptr, ptr %i.j, align 8
  br label %_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE10StartLayerEv.exit.i

_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE10StartLayerEv.exit.i: ; preds = %bb.e, %bb.d
  %i.aj = phi ptr [ %i.aa, %bb.d ], [ %.pre.i.i.i.i, %bb.e ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %i.j, align 8
  store ptr null, ptr %i.aj, align 8
  %i.al = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.an = icmp ult ptr %i.al, %i.am
  br i1 %i.an, label %_ZN2v88internal8compiler10turboshaft24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE10StartLayerEPNS2_5BlockE.exit, label %bb.f, !prof !9

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE10StartLayerEv.exit.i
  %i.ao = load ptr, ptr %i.p, align 8
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  %i.at = add nsw i64 %i.as, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.at)
  %.pre.i.i22 = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal8compiler10turboshaft24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE10StartLayerEPNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE10StartLayerEPNS2_5BlockE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE10StartLayerEv.exit.i, %bb.f
  %i.au = phi ptr [ %i.al, %_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE10StartLayerEv.exit.i ], [ %.pre.i.i22, %bb.f ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.e, align 8
  store ptr %i.z, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ax = load i8, ptr %i.aw, align 8
  %i.ay = icmp eq i8 %i.ax, 2
  br i1 %i.ay, label %bb.g, label %bb.n

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE10StartLayerEPNS2_5BlockE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.q, align 8, !nonnull !6, !align !8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %.sroa.0.0.copyload.i = load i32, ptr %i.bc, align 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = lshr i32 %.sroa.0.0.copyload.i, 4
  %i.bg = add nsw i32 %i.bf, -1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = zext i16 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 3
  %i.bm = sub i32 %.sroa.0.0.copyload.i, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = zext i32 %i.bm to i64
  %i.br = add i64 %i.bq, %i.bp
  %i.bs = inttoptr i64 %i.br to ptr               ; 4 uses
  %i.bt = load i8, ptr %i.bs, align 4
  %.not35 = icmp eq i8 %i.bt, 5
  br i1 %.not35, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 52
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.bw, align 4 ; 2 uses
  %.not36 = icmp eq i32 %.sroa.0.0.copyload.i23, -1
  br i1 %.not36, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.bx, align 4
  %i.by = icmp eq i32 %.sroa.0.0.copyload.i23, %.sroa.0.0.copyload.i25
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 52
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.cc, align 4
  %i.cd = icmp ne i32 %.sroa.0.0.copyload.i26, %.sroa.0.0.copyload.i27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ce = phi i1 [ %i.by, %bb.i ], [ %i.cd, %bb.j ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.cf, align 4 ; 3 uses
  call void @_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE14ResizeIfNeededEv(ptr noundef nonnull align 8 dereferenceable(72) %i.r)
  %i.cg = lshr i32 %.sroa.0.0.copyload.i.i, 4     ; 2 uses
  %i.ch = xor i32 %i.cg, -1
  %i.ci = shl i32 %i.cg, 15
  %i.cj = add i32 %i.ci, %i.ch                    ; 2 uses
  %i.ck = lshr i32 %i.cj, 12
  %i.cl = xor i32 %i.ck, %i.cj
  %i.cm = mul i32 %i.cl, 5                        ; 2 uses
  %i.cn = lshr i32 %i.cm, 4
  %i.co = xor i32 %i.cn, %i.cm
  %i.cp = mul i32 %i.co, 2057                     ; 2 uses
  %i.cq = lshr i32 %i.cp, 16
  %i.cr = xor i32 %i.cq, %i.cp
  %i.cs = call i32 @llvm.umax.i32(i32 %i.cr, i32 1)
  %i.ct = zext i32 %i.cs to i64                   ; 3 uses
  %i.cu = load i64, ptr %i.r, align 8             ; 2 uses
  %i.cv = and i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.cv ; 3 uses
  %i.cy = load i64, ptr %i.cx, align 8            ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE12InsertNewKeyES7_b.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.m
  %i.da = phi i64 [ %i.dj, %bb.m ], [ %i.cy, %bb.k ]
  %i.db = phi ptr [ %i.di, %bb.m ], [ %i.cx, %bb.k ] ; 2 uses
  %.01011.i.i = phi i64 [ %i.dh, %bb.m ], [ %i.cv, %bb.k ]
  %i.dc = icmp eq i64 %i.da, %i.ct
  br i1 %i.dc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = icmp eq i32 %i.de, %.sroa.0.0.copyload.i.i
  br i1 %i.df, label %_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE12InsertNewKeyES7_b.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.dg = add i64 %.01011.i.i, 1
  %i.dh = and i64 %i.dg, %i.cu                    ; 2 uses
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.dh ; 3 uses
  %i.dj = load i64, ptr %i.di, align 8            ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE12InsertNewKeyES7_b.exit, label %.lr.ph.i.i, !llvm.loop !95

_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE12InsertNewKeyES7_b.exit: ; preds = %bb.l, %bb.m, %bb.k
  %.lcssa.i.i = phi ptr [ %i.cx, %bb.k ], [ %i.db, %bb.l ], [ %i.di, %bb.m ] ; 5 uses
  %i.dl = zext i1 %i.ce to i8
  %i.dm = load ptr, ptr %i.j, align 8
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -8
  %i.do = load ptr, ptr %i.dn, align 8
  store i64 %i.ct, ptr %.lcssa.i.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 12
  store i8 %i.dl, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.61.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 16
  store ptr %i.do, ptr %.sroa.61.0..sroa_idx.i, align 8
  %i.dp = load ptr, ptr %i.j, align 8
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -8
  store ptr %.lcssa.i.i, ptr %i.dq, align 8
  %i.dr = load i64, ptr %i.t, align 8
  %i.ds = add i64 %i.dr, 1
  store i64 %i.ds, ptr %i.t, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE12InsertNewKeyES7_b.exit, %_ZN2v88internal8compiler10turboshaft24BranchEliminationReducerINS2_26LateLoadEliminationReducerINS2_23WasmCodeCoverageReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerES3_S4_S5_S7_S9_EEEEEEEEEEEEEEEEEE10StartLayerEPNS2_5BlockE.exit
  %i.dt = load ptr, ptr %2, align 8, !noalias !115
  %i.du = icmp eq ptr %i.y, %i.dt
  br i1 %i.du, label %._crit_edge, label %bb.d, !llvm.loop !119
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_25LateEscapeAnalysisReducerENS2_26MachineOptimizationReducerENS2_25MemoryOptimizationReducerENS2_24BranchEliminationReducerENS2_26LateLoadEliminationReducerENS2_23WasmCodeCoverageReducerES3_S5_EEEEEEEEEE23RecordOldEpochAndSetNewEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector.699", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.e, align 4
  %i.f = zext i32 %.sroa.0.0.copyload.i to i64    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2
  %.not.i = icmp ugt i64 %i.n, %i.f
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableIiNS2_10BlockIndexEEixES5_.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.p = lshr i64 %i.f, 1
  %i.q = add nuw nsw i64 %i.f, 32
  %i.r = add nuw nsw i64 %i.q, %i.p
  tail call void @_ZN2v88internal10ZoneVectorIiE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.i, align 8
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2
  tail call void @_ZN2v88internal10ZoneVectorIiE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.y)
  %.pre.i = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableIiNS2_10BlockIndexEEixES5_.exit

_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableIiNS2_10BlockIndexEEixES5_.exit: ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %.pre.i, %bb.c ], [ %i.j, %bb.b ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.f
  store i32 %i.d, ptr %i.aa, align 4
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableIiNS2_10BlockIndexEEixES5_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.ab, ptr %2, align 8, !alias.scope !120
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !120
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.ae, ptr %i.ad, align 8, !alias.scope !120
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.05.i = load ptr, ptr %i.af, align 8, !noalias !120 ; 2 uses
  %.not6.i = icmp eq ptr %.05.i, null
  br i1 %.not6.i, label %._crit_edge, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i
  %.pre.i18 = load ptr, ptr %2, align 8, !alias.scope !120 ; 10 uses
  %.pre.i1845 = ptrtoint ptr %.pre.i18 to i64     ; 6 uses
  %.pre8.i = load ptr, ptr %i.ac, align 8, !alias.scope !120 ; 6 uses
  %.pre8.i44 = ptrtoint ptr %.pre8.i to i64       ; 2 uses
  %i.ag = icmp ne ptr %.pre.i18, %.pre8.i
  %.012.i.i.i = getelementptr inbounds i8, ptr %.pre8.i, i64 -8 ; 5 uses
  %i.ah = icmp ult ptr %.pre.i18, %.012.i.i.i
  %or.cond.i.i.i = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.preheader, label %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge.i
  %i.ai = add i64 %.pre8.i44, -16
  %i.aj = add i64 %.pre.i1845, 8
  %umax47 = call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.aj)
  %i.ak = add i64 %umax47, -8                     ; 2 uses
  %i.al = icmp ne i64 %i.ak, %.pre.i1845
  %umin48 = zext i1 %i.al to i64                  ; 2 uses
  %i.am = add i64 %.pre.i1845, %umin48
  %i.an = sub i64 %i.ak, %i.am
  %i.ao = lshr i64 %i.an, 4
  %i.ap = add nuw nsw i64 %i.ao, %umin48          ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ap, 29
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader57, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ar = add i64 %.pre8.i44, -16
  %i.as = add i64 %.pre.i1845, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.as)
  %i.at = add i64 %umax, -8                       ; 2 uses
  %i.au = icmp ne i64 %i.at, %.pre.i1845
  %umin = zext i1 %i.au to i64                    ; 2 uses
  %i.av = add i64 %.pre.i1845, %umin
  %i.aw = sub i64 %i.at, %i.av
  %i.ax = lshr i64 %i.aw, 4
  %i.ay = add nuw nsw i64 %i.ax, %umin
  %i.az = shl nuw i64 %i.ay, 3                    ; 2 uses
  %i.ba = getelementptr i8, ptr %.pre.i18, i64 %i.az
  %scevgep = getelementptr i8, ptr %i.ba, i64 8
  %i.bb = sub nuw nsw i64 -8, %i.az
  %scevgep46 = getelementptr i8, ptr %.pre8.i, i64 %i.bb
  %bound0 = icmp ult ptr %.pre.i18, %.pre8.i
  %bound1 = icmp ult ptr %scevgep46, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 4 uses
  %i.bc = mul i64 %n.vec, -8
  %i.bd = getelementptr i8, ptr %.012.i.i.i, i64 %i.bc
  %i.be = shl i64 %n.vec, 3
  %i.bf = getelementptr i8, ptr %.pre.i18, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bg = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %.012.i.i.i, i64 %i.bg ; 2 uses
  %i.bh = shl i64 %index, 3
  %next.gep49 = getelementptr i8, ptr %.pre.i18, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %next.gep49, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep49, align 8, !alias.scope !123, !noalias !126
  %wide.load50 = load <2 x ptr>, ptr %i.bi, align 8, !alias.scope !123, !noalias !126
  %i.bj = getelementptr i8, ptr %next.gep, i64 -8 ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep, i64 -24 ; 2 uses
  %wide.load51 = load <2 x ptr>, ptr %i.bj, align 8, !alias.scope !126
  %wide.load52 = load <2 x ptr>, ptr %i.bk, align 8, !alias.scope !126
  %reverse = shufflevector <2 x ptr> %wide.load51, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse53 = shufflevector <2 x ptr> %wide.load52, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse, ptr %next.gep49, align 8, !alias.scope !123, !noalias !126
  store <2 x ptr> %reverse53, ptr %i.bi, align 8, !alias.scope !123, !noalias !126
  %reverse54 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse55 = shufflevector <2 x ptr> %wide.load50, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse54, ptr %i.bj, align 8, !alias.scope !126
  store <2 x ptr> %reverse55, ptr %i.bk, align 8, !alias.scope !126
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit, label %.lr.ph.i.i.i.preheader57

.lr.ph.i.i.i.preheader57:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.014.i.i.i.ph = phi ptr [ %.012.i.i.i, %vector.memcheck ], [ %.012.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bd, %middle.block ]
  %.0913.i.i.i.ph = phi ptr [ %.pre.i18, %vector.memcheck ], [ %.pre.i18, %.lr.ph.i.i.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader57, %.lr.ph.i.i.i
  %.014.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.014.i.i.i.ph, %.lr.ph.i.i.i.preheader57 ] ; 3 uses
  %.0913.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i ], [ %.0913.i.i.i.ph, %.lr.ph.i.i.i.preheader57 ] ; 3 uses
  %i.bm = load ptr, ptr %.0913.i.i.i, align 8
  %i.bn = load ptr, ptr %.014.i.i.i, align 8
  store ptr %i.bn, ptr %.0913.i.i.i, align 8
  store ptr %i.bm, ptr %.014.i.i.i, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 8 ; 2 uses
  %.0.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i, i64 -8 ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %.0.i.i.i
  br i1 %i.bp, label %.lr.ph.i.i.i, label %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit, !llvm.loop !129

.lr.ph.i:                                         ; preds = %bb.d, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i
  %.07.i = phi ptr [ %.0.i, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i ], [ %.05.i, %bb.d ] ; 2 uses
  %i.bq = load ptr, ptr %i.ac, align 8, !alias.scope !120 ; 2 uses
  %i.br = load ptr, ptr %i.ad, align 8, !alias.scope !120
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.e, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i, !prof !7

bb.e:                                             ; preds = %.lr.ph.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %.pre.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !120
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i

_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i: ; preds = %bb.e, %.lr.ph.i
  %i.bt = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.bq, %.lr.ph.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bu, ptr %i.ac, align 8, !alias.scope !120
  store ptr %.07.i, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  %.0.i = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not.i17 = icmp eq ptr %.0.i, null
  br i1 %.not.i17, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !130

_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.pre = load ptr, ptr %2, align 8
  %.pre34 = load ptr, ptr %i.ac, align 8
  br label %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit

_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit, %._crit_edge.i
  %i.bw = phi ptr [ %.pre34, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit ], [ %.pre8.i, %._crit_edge.i ] ; 2 uses
  %i.bx = phi ptr [ %.pre, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit ], [ %.pre.i18, %._crit_edge.i ] ; 2 uses
  %.not1531 = icmp eq ptr %i.bx, %i.bw
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E:bb.a
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1680

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #16

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { alwaysinline mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin nounwind allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i64 8}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !17}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE3endEv: argument 0"}
!26 = distinct !{!26, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE3endEv"}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv: argument 0"}
!31 = distinct !{!31, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv"}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_7KeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv: argument 0"}
!36 = distinct !{!36, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_7KeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv"}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv: argument 0"}
!41 = distinct !{!41, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv"}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZNK2v88internal8compiler10turboshaft5Graph19AllOperationIndicesEv: argument 0"}
!50 = distinct !{!50, !"_ZNK2v88internal8compiler10turboshaft5Graph19AllOperationIndicesEv"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNK2v88internal8compiler10turboshaft5Graph19AllOperationIndicesEv: argument 0"}
!53 = distinct !{!53, !"_ZNK2v88internal8compiler10turboshaft5Graph19AllOperationIndicesEv"}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11, !56, !57}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = !{!"branch_weights", i32 4001, i32 1}
!59 = distinct !{!59, !11, !57, !56}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN2v88internal8compiler10turboshaft5Graph10operationsERKNS2_5BlockE: argument 0"}
!65 = distinct !{!65, !"_ZN2v88internal8compiler10turboshaft5Graph10operationsERKNS2_5BlockE"}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !11}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE: argument 0"}
!70 = distinct !{!70, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE: argument 0"}
!73 = distinct !{!73, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE"}
!74 = !{!75, !77}
!75 = distinct !{!75, !76, !"_ZN2v84base18IterateWithoutLastINS0_14iterator_rangeINS_8internal8compiler10turboshaft5Graph15OpIndexIteratorEEEEEDaRT_: argument 0"}
!76 = distinct !{!76, !"_ZN2v84base18IterateWithoutLastINS0_14iterator_rangeINS_8internal8compiler10turboshaft5Graph15OpIndexIteratorEEEEEDaRT_"}
!77 = distinct !{!77, !78, !"_ZN2v84base18IterateWithoutLastINS_8internal8compiler10turboshaft5Graph15OpIndexIteratorEEEDaRKNS0_14iterator_rangeIT_EE: argument 0"}
!78 = distinct !{!78, !"_ZN2v84base18IterateWithoutLastINS_8internal8compiler10turboshaft5Graph15OpIndexIteratorEEEDaRKNS0_14iterator_rangeIT_EE"}
!79 = distinct !{null}
!80 = distinct !{null, null}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN2v88internal8compiler10turboshaft5Graph10operationsERKNS2_5BlockE: argument 0"}
!83 = distinct !{!83, !"_ZN2v88internal8compiler10turboshaft5Graph10operationsERKNS2_5BlockE"}
!84 = distinct !{!84, !11}
!85 = !{!86}
!86 = distinct !{!86, !87}
!87 = distinct !{!87, !"LVerDomain"}
!88 = !{!89}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !11, !56, !57}
!91 = distinct !{!91, !11, !56}
!92 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = !{!97, !99, !101}
!97 = distinct !{!97, !98, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_: argument 0"}
!98 = distinct !{!98, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_"}
!99 = distinct !{!99, !100, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE16try_emplace_implIS7_JEEESA_INS0_12raw_hash_setISI_SL_SN_SR_E8iteratorEbEOT_DpOT0_: argument 0"}
!100 = distinct !{!100, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE16try_emplace_implIS7_JEEESA_INS0_12raw_hash_setISI_SL_SN_SR_E8iteratorEbEOT_DpOT0_"}
!101 = distinct !{!101, !102, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_: argument 0"}
!102 = distinct !{!102, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_"}
!103 = !{!104, !97, !99, !101}
!104 = distinct !{!104, !105, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE28find_or_prepare_insert_smallIS7_EESA_INSS_8iteratorEbERKT_: argument 0"}
!105 = distinct !{!105, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE28find_or_prepare_insert_smallIS7_EESA_INSS_8iteratorEbERKT_"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE28find_or_prepare_insert_largeIS7_EESA_INSS_8iteratorEbERKT_: argument 0"}
!108 = distinct !{!108, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE28find_or_prepare_insert_largeIS7_EESA_INSS_8iteratorEbERKT_"}
!109 = !{!99, !101}
!110 = distinct !{!110, !11}
!111 = distinct !{!111, !11}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE6rbeginEv: argument 0"}
!114 = distinct !{!114, !"_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE6rbeginEv"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE4rendEv: argument 0"}
!117 = distinct !{!117, !"_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE4rendEv"}
!118 = distinct !{!118, !11}
!119 = distinct !{!119, !11}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv: argument 0"}
!122 = distinct !{!122, !"_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv"}
!123 = !{!124}
!124 = distinct !{!124, !125}
!125 = distinct !{!125, !"LVerDomain"}
!126 = !{!127}
!127 = distinct !{!127, !125}
!128 = distinct !{!128, !11, !56, !57}
!129 = distinct !{!129, !11, !56}
!130 = distinct !{!130, !11}
!131 = distinct !{!131, !17}
!132 = distinct !{!132, !11}
!133 = distinct !{!133, !11}
!134 = distinct !{!134, !11}
!135 = distinct !{!135, !11}
!136 = distinct !{!136, !11}
!137 = distinct !{!137, !11, !56, !57}
!138 = distinct !{!138, !11, !57, !56}
!139 = distinct !{null}
!140 = distinct !{!140, !11}
!141 = distinct !{!141, !11}
!142 = distinct !{!142, !11}
!143 = distinct !{!143, !11}
!144 = !{!145, !147}
!145 = distinct !{!145, !146, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataEE6rbeginEv: argument 0"}
!146 = distinct !{!146, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataEE6rbeginEv"}
!147 = distinct !{!147, !148, !"_ZN2v84base8ReversedINS_8internal10ZoneVectorIPNS2_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE12SnapshotDataEEEEEDaRT_: argument 0"}
!148 = distinct !{!148, !"_ZN2v84base8ReversedINS_8internal10ZoneVectorIPNS2_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE12SnapshotDataEEEEEDaRT_"}
!149 = !{!150, !147}
!150 = distinct !{!150, !151, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataEE4rendEv: argument 0"}
!151 = distinct !{!151, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataEE4rendEv"}
!152 = distinct !{!152, !11}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv: argument 0"}
!155 = distinct !{!155, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv"}
!156 = distinct !{!156, !11}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv: argument 0"}
!159 = distinct !{!159, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv"}
!160 = distinct !{!160, !11}
!161 = distinct !{!161, !11}
!162 = distinct !{!162, !11}
!163 = distinct !{!163, !11, !56, !57}
!164 = distinct !{!164, !11, !56}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZNK2v88internal8compiler10turboshaft12ProjectionOp7optionsEv: argument 0"}
!167 = distinct !{!167, !"_ZNK2v88internal8compiler10turboshaft12ProjectionOp7optionsEv"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_ZNK2v88internal8compiler10turboshaft12ProjectionOp7optionsEv: argument 0"}
!170 = distinct !{!170, !"_ZNK2v88internal8compiler10turboshaft12ProjectionOp7optionsEv"}
!171 = distinct !{!171, !11}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv: argument 0"}
!174 = distinct !{!174, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv"}
!175 = distinct !{!175, !11}
!176 = distinct !{!176, !11}
!177 = distinct !{!177, !11}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv: argument 0"}
!180 = distinct !{!180, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv"}
!181 = !{!"branch_weights", !"expected", i32 3648897, i32 2143834751}
!182 = distinct !{!182, !11}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv: argument 0"}
!185 = distinct !{!185, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZNK2v88internal8compiler10turboshaft5PhiOp7optionsEv: argument 0"}
!188 = distinct !{!188, !"_ZNK2v88internal8compiler10turboshaft5PhiOp7optionsEv"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZNK2v88internal8compiler10turboshaft5PhiOp7optionsEv: argument 0"}
!191 = distinct !{!191, !"_ZNK2v88internal8compiler10turboshaft5PhiOp7optionsEv"}
!192 = distinct !{!192, !11}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv: argument 0"}
!195 = distinct !{!195, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv"}
!196 = distinct !{!196, !11}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZNK2v88internal8compiler10turboshaft10RttCanonOp7optionsEv: argument 0"}
!199 = distinct !{!199, !"_ZNK2v88internal8compiler10turboshaft10RttCanonOp7optionsEv"}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZNK2v88internal8compiler10turboshaft10RttCanonOp7optionsEv: argument 0"}
!202 = distinct !{!202, !"_ZNK2v88internal8compiler10turboshaft10RttCanonOp7optionsEv"}
!203 = distinct !{!203, !11}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv: argument 0"}
!206 = distinct !{!206, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv"}
!207 = distinct !{!207, !11, !56, !57}
!208 = distinct !{!208, !11, !56}
!209 = distinct !{!209, !11}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv: argument 0"}
!212 = distinct !{!212, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv"}
!213 = !{!214}
!214 = distinct !{!214, !215, !"_ZNK2v88internal8compiler10turboshaft12FrameStateOp7optionsEv: argument 0"}
!215 = distinct !{!215, !"_ZNK2v88internal8compiler10turboshaft12FrameStateOp7optionsEv"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZNK2v88internal8compiler10turboshaft12FrameStateOp7optionsEv: argument 0"}
!218 = distinct !{!218, !"_ZNK2v88internal8compiler10turboshaft12FrameStateOp7optionsEv"}
!219 = distinct !{!219, !11}
!220 = distinct !{!220, !11}
!221 = distinct !{!221, !11}
!222 = !{i64 4}
!223 = distinct !{!223, !11}
!224 = distinct !{!224, !11}
!225 = distinct !{!225, !11}
!226 = distinct !{null, null, null, null}
!227 = distinct !{null, null, null}
!228 = distinct !{null, null, null}
!229 = distinct !{null, null, null, null}
!230 = !{!231}
!231 = distinct !{!231, !232, !"_ZNK2v88internal8compiler10turboshaft16WasmStackCheckOp7optionsEv: argument 0"}
!232 = distinct !{!232, !"_ZNK2v88internal8compiler10turboshaft16WasmStackCheckOp7optionsEv"}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_ZNK2v88internal8compiler10turboshaft24WasmIncCoverageCounterOp7optionsEv: argument 0"}
!235 = distinct !{!235, !"_ZNK2v88internal8compiler10turboshaft24WasmIncCoverageCounterOp7optionsEv"}
!236 = !{!237}
!237 = distinct !{!237, !238, !"_ZNK2v88internal8compiler10turboshaft14RootConstantOp7optionsEv: argument 0"}
!238 = distinct !{!238, !"_ZNK2v88internal8compiler10turboshaft14RootConstantOp7optionsEv"}
!239 = !{!240}
!240 = distinct !{!240, !241, !"_ZNK2v88internal8compiler10turboshaft6NullOp7optionsEv: argument 0"}
!241 = distinct !{!241, !"_ZNK2v88internal8compiler10turboshaft6NullOp7optionsEv"}
!242 = distinct !{null, null, null, null}
!243 = !{!244}
!244 = distinct !{!244, !245, !"_ZNK2v88internal8compiler10turboshaft10OsrValueOp7optionsEv: argument 0"}
!245 = distinct !{!245, !"_ZNK2v88internal8compiler10turboshaft10OsrValueOp7optionsEv"}
!246 = !{!247}
!247 = distinct !{!247, !248, !"_ZNK2v88internal8compiler10turboshaft11StackSlotOp7optionsEv: argument 0"}
!248 = distinct !{!248, !"_ZNK2v88internal8compiler10turboshaft11StackSlotOp7optionsEv"}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZNK2v88internal8compiler10turboshaft15FrameConstantOp7optionsEv: argument 0"}
!251 = distinct !{!251, !"_ZNK2v88internal8compiler10turboshaft15FrameConstantOp7optionsEv"}
!252 = distinct !{null, null, null, null}
!253 = !{!254}
!254 = distinct !{!254, !255, !"_ZNK2v88internal8compiler10turboshaft15MemoryBarrierOp7optionsEv: argument 0"}
!255 = distinct !{!255, !"_ZNK2v88internal8compiler10turboshaft15MemoryBarrierOp7optionsEv"}
!256 = !{!257}
!257 = distinct !{!257, !258, !"_ZNK2v88internal8compiler10turboshaft9CommentOp7optionsEv: argument 0"}
!258 = distinct !{!258, !"_ZNK2v88internal8compiler10turboshaft9CommentOp7optionsEv"}
!259 = !{!260}
!260 = distinct !{!260, !261, !"_ZNK2v88internal8compiler10turboshaft14RuntimeAbortOp7optionsEv: argument 0"}
!261 = distinct !{!261, !"_ZNK2v88internal8compiler10turboshaft14RuntimeAbortOp7optionsEv"}
!262 = distinct !{null, null, null, null}
!263 = !{!264}
!264 = distinct !{!264, !265, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE3endEv: argument 0"}
!265 = distinct !{!265, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE3endEv"}
!266 = !{!267}
!267 = distinct !{!267, !268, !"_ZNK2v88internal8compiler10turboshaft12DeoptimizeOp7optionsEv: argument 0"}
!268 = distinct !{!268, !"_ZNK2v88internal8compiler10turboshaft12DeoptimizeOp7optionsEv"}
!269 = !{!270}
!270 = distinct !{!270, !271, !"_ZNK2v88internal8compiler10turboshaft11GlobalGetOp7optionsEv: argument 0"}
!271 = distinct !{!271, !"_ZNK2v88internal8compiler10turboshaft11GlobalGetOp7optionsEv"}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZNK2v88internal8compiler10turboshaft11GlobalSetOp7optionsEv: argument 0"}
!274 = distinct !{!274, !"_ZNK2v88internal8compiler10turboshaft11GlobalSetOp7optionsEv"}
!275 = !{!276}
!276 = distinct !{!276, !277, !"_ZNK2v88internal8compiler10turboshaft16IsRootConstantOp7optionsEv: argument 0"}
!277 = distinct !{!277, !"_ZNK2v88internal8compiler10turboshaft16IsRootConstantOp7optionsEv"}
!278 = !{!279}
!279 = distinct !{!279, !280, !"_ZNK2v88internal8compiler10turboshaft8IsNullOp7optionsEv: argument 0"}
!280 = distinct !{!280, !"_ZNK2v88internal8compiler10turboshaft8IsNullOp7optionsEv"}
!281 = !{!282}
!282 = distinct !{!282, !283, !"_ZNK2v88internal8compiler10turboshaft15AssertNotNullOp7optionsEv: argument 0"}
!283 = distinct !{!283, !"_ZNK2v88internal8compiler10turboshaft15AssertNotNullOp7optionsEv"}
!284 = !{!285}
!285 = distinct !{!285, !286, !"_ZNK2v88internal8compiler10turboshaft10RttCanonOp7optionsEv: argument 0"}
!286 = distinct !{!286, !"_ZNK2v88internal8compiler10turboshaft10RttCanonOp7optionsEv"}
!287 = !{!288}
!288 = distinct !{!288, !289, !"_ZNK2v88internal8compiler10turboshaft18AnyConvertExternOp7optionsEv: argument 0"}
!289 = distinct !{!289, !"_ZNK2v88internal8compiler10turboshaft18AnyConvertExternOp7optionsEv"}
!290 = !{!291}
!291 = distinct !{!291, !292, !"_ZNK2v88internal8compiler10turboshaft20WasmTypeAnnotationOp7optionsEv: argument 0"}
!292 = distinct !{!292, !"_ZNK2v88internal8compiler10turboshaft20WasmTypeAnnotationOp7optionsEv"}
!293 = !{!294}
!294 = distinct !{!294, !295, !"_ZNK2v88internal8compiler10turboshaft11StructSetOp7optionsEv: argument 0"}
!295 = distinct !{!295, !"_ZNK2v88internal8compiler10turboshaft11StructSetOp7optionsEv"}
!296 = !{!297}
!297 = distinct !{!297, !298, !"_ZNK2v88internal8compiler10turboshaft13ArrayLengthOp7optionsEv: argument 0"}
!298 = distinct !{!298, !"_ZNK2v88internal8compiler10turboshaft13ArrayLengthOp7optionsEv"}
!299 = !{!300}
!300 = distinct !{!300, !301, !"_ZNK2v88internal8compiler10turboshaft19WasmAllocateArrayOp7optionsEv: argument 0"}
!301 = distinct !{!301, !"_ZNK2v88internal8compiler10turboshaft19WasmAllocateArrayOp7optionsEv"}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_ZNK2v88internal8compiler10turboshaft20WasmAllocateStructOp7optionsEv: argument 0"}
!304 = distinct !{!304, !"_ZNK2v88internal8compiler10turboshaft20WasmAllocateStructOp7optionsEv"}
!305 = !{!306}
!306 = distinct !{!306, !307, !"_ZNK2v88internal8compiler10turboshaft13WasmRefFuncOp7optionsEv: argument 0"}
!307 = distinct !{!307, !"_ZNK2v88internal8compiler10turboshaft13WasmRefFuncOp7optionsEv"}
!308 = !{!309}
!309 = distinct !{!309, !310, !"_ZNK2v88internal8compiler10turboshaft14Simd128BinopOp7optionsEv: argument 0"}
!310 = distinct !{!310, !"_ZNK2v88internal8compiler10turboshaft14Simd128BinopOp7optionsEv"}
!311 = !{!312}
!312 = distinct !{!312, !313, !"_ZNK2v88internal8compiler10turboshaft14Simd128UnaryOp7optionsEv: argument 0"}
!313 = distinct !{!313, !"_ZNK2v88internal8compiler10turboshaft14Simd128UnaryOp7optionsEv"}
!314 = !{!315}
!315 = distinct !{!315, !316, !"_ZNK2v88internal8compiler10turboshaft15Simd128ReduceOp7optionsEv: argument 0"}
!316 = distinct !{!316, !"_ZNK2v88internal8compiler10turboshaft15Simd128ReduceOp7optionsEv"}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZNK2v88internal8compiler10turboshaft14Simd128ShiftOp7optionsEv: argument 0"}
end_hunk_1
