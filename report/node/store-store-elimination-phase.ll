inline.NumInlined: 42521
inline.NumDeleted: 14382
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE4BindEPNS2_5BlockE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.f = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.g = icmp eq ptr %i.e, %i.f
  %i.h = icmp eq ptr %i.b, null
  %or.cond.not17.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.not17.i, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i21 = icmp eq ptr %i.l, %i.b
  br i1 %.not.i21, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit, label %.lr.ph

bb.b:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.n, %.1.i
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit, label %.lr.ph, !llvm.loop !202

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
  br i1 %.not6.i.i, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.i, align 8
  %.pre20.i = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit.i

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
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !203

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.c
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
  br i1 %.not6.i10.i, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit16.i, label %.lr.ph.i11.i

._crit_edge.loopexit.i14.i:                       ; preds = %.lr.ph.i11.i
  %.pre.i15.i = load ptr, ptr %i.i, align 8
  %.pre.i = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit16.i

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
  br i1 %.not.i13.i, label %._crit_edge.loopexit.i14.i, label %.lr.ph.i11.i, !llvm.loop !203

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit16.i: ; preds = %._crit_edge.loopexit.i14.i, %bb.f
  %i.as = phi ptr [ %.pre.i, %._crit_edge.loopexit.i14.i ], [ %i.p, %bb.f ]
  %i.at = phi ptr [ %.pre.i15.i, %._crit_edge.loopexit.i14.i ], [ %i.ak, %bb.f ]
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  store ptr %i.au, ptr %i.i, align 8
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 -8 ; 2 uses
  store ptr %i.av, ptr %i.c, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.018.i22, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit16.i, %bb.e, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit.i
  %i.ay = phi ptr [ %i.ag, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit.i ], [ %i.p, %bb.e ], [ %i.av, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit16.i ] ; 5 uses
  %.1.i = phi ptr [ %.018.i22, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit.i ], [ %i.aj, %bb.e ], [ %i.ax, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE24ClearCurrentDepthEntriesEv.exit16.i ] ; 3 uses
  %i.az = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  %i.bb = icmp eq ptr %.1.i, null
  %or.cond.not.i = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %or.cond.not.i, label %._ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit.loopexit_crit_edge, label %bb.b, !llvm.loop !202

._ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit.loopexit_crit_edge: ; preds = %bb.g
  br label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit, !llvm.loop !202

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit: ; preds = %bb.b, %.lr.ph.i, %._ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit.loopexit_crit_edge, %bb.a
  %i.bc = phi ptr [ %i.f, %bb.a ], [ %i.az, %._ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit.loopexit_crit_edge ], [ %i.f, %.lr.ph.i ], [ %i.az, %bb.b ]
  %i.bd = phi ptr [ %i.e, %bb.a ], [ %i.ay, %._ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit.loopexit_crit_edge ], [ %i.e, %.lr.ph.i ], [ %i.ay, %bb.b ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ult ptr %i.bd, %i.bf
  br i1 %i.bg, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.h, !prof !11

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bc to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3
  %i.bl = add nsw i64 %i.bk, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bl)
  %.pre.i1 = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit, %bb.h
  %i.bm = phi ptr [ %i.bd, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE12ResetToBlockEPNS2_5BlockE.exit ], [ %.pre.i1, %bb.h ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bn, ptr %i.c, align 8
  store ptr %1, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = icmp ult ptr %i.bp, %i.br
  br i1 %i.bs, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft21ValueNumberingReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS3_12GraphVisitorENS3_28LoopStackCheckElisionReducerENS3_28StoreStoreEliminationReducerENS3_26LateLoadEliminationReducerENS3_26MachineOptimizationReducerENS3_24BranchEliminationReducerES4_S6_EEEEEEEEEE5EntryEE9push_backEOSN_.exit, label %bb.i, !prof !11

bb.i:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 3
  %i.ca = add nsw i64 %i.bz, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft21ValueNumberingReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS3_12GraphVisitorENS3_28LoopStackCheckElisionReducerENS3_28StoreStoreEliminationReducerENS3_26LateLoadEliminationReducerENS3_26MachineOptimizationReducerENS3_24BranchEliminationReducerES4_S6_EEEEEEEEEE5EntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 noundef %i.ca)
  %.pre.i.i2 = load ptr, ptr %i.bo, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft21ValueNumberingReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS3_12GraphVisitorENS3_28LoopStackCheckElisionReducerENS3_28StoreStoreEliminationReducerENS3_26LateLoadEliminationReducerENS3_26MachineOptimizationReducerENS3_24BranchEliminationReducerES4_S6_EEEEEEEEEE5EntryEE9push_backEOSN_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft21ValueNumberingReducerINS3_18GenericReducerBaseINS3_13TSReducerBaseINS3_11StackBottomINS_4base3tmp5list1IJNS3_12GraphVisitorENS3_28LoopStackCheckElisionReducerENS3_28StoreStoreEliminationReducerENS3_26LateLoadEliminationReducerENS3_26MachineOptimizationReducerENS3_24BranchEliminationReducerES4_S6_EEEEEEEEEE5EntryEE9push_backEOSN_.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, %bb.i
  %i.cb = phi ptr [ %i.bp, %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit ], [ %.pre.i.i2, %bb.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.cc, ptr %i.bo, align 8
  store ptr null, ptr %i.cb, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerES3_S5_S7_EEEEEEEEEEEEEE25ReplayMissingPredecessorsEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector.764", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 280
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
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
  %.pre.pre45 = load ptr, ptr %i.b, align 8       ; 3 uses
  br i1 %.not20, label %.critedge, label %bb.b

.critedge:                                        ; preds = %.lr.ph, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE9push_backES6_.exit..critedge.loopexit_crit_edge
  %.pre = phi ptr [ %.pre.pre, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE9push_backES6_.exit..critedge.loopexit_crit_edge ], [ %.pre.pre45, %.lr.ph ] ; 2 uses
  %.pre44 = load ptr, ptr %2, align 8, !noalias !204
  %i.i = icmp eq ptr %.pre, %.pre44
  br i1 %i.i, label %._crit_edge, label %.lr.ph43

.lr.ph43:                                         ; preds = %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = getelementptr inbounds i8, ptr %0, i64 -8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
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
  br i1 %.not, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE9push_backES6_.exit..critedge.loopexit_crit_edge, label %.lr.ph, !llvm.loop !207

_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE9push_backES6_.exit..critedge.loopexit_crit_edge: ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE9push_backES6_.exit
  %.pre.pre = load ptr, ptr %i.b, align 8, !noalias !208
  br label %.critedge, !llvm.loop !207

._crit_edge:                                      ; preds = %bb.n, %bb.a, %.critedge
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.d:                                             ; preds = %.lr.ph43, %bb.n
  %.sroa.031.042 = phi ptr [ %.pre, %.lr.ph43 ], [ %i.y, %bb.n ]
  %i.y = getelementptr inbounds i8, ptr %.sroa.031.042, i64 -8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 5 uses
  %i.aa = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ac = icmp ult ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE10StartLayerEv.exit.i, label %bb.e, !prof !11

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
  br i1 %i.an, label %_ZN2v88internal8compiler10turboshaft24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerES3_S5_S7_EEEEEEEEEEEEEE10StartLayerEPNS2_5BlockE.exit, label %bb.f, !prof !11

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE10StartLayerEv.exit.i
  %i.ao = load ptr, ptr %i.p, align 8
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  %i.at = add nsw i64 %i.as, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.at)
  %.pre.i.i22 = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal8compiler10turboshaft24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerES3_S5_S7_EEEEEEEEEEEEEE10StartLayerEPNS2_5BlockE.exit

_ZN2v88internal8compiler10turboshaft24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerES3_S5_S7_EEEEEEEEEEEEEE10StartLayerEPNS2_5BlockE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE10StartLayerEv.exit.i, %bb.f
  %i.au = phi ptr [ %i.al, %_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE10StartLayerEv.exit.i ], [ %.pre.i.i22, %bb.f ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.e, align 8
  store ptr %i.z, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ax = load i8, ptr %i.aw, align 8
  %i.ay = icmp eq i8 %i.ax, 2
  br i1 %i.ay, label %bb.g, label %bb.n

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerES3_S5_S7_EEEEEEEEEEEEEE10StartLayerEPNS2_5BlockE.exit
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
  br i1 %i.dk, label %_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE12InsertNewKeyES7_b.exit, label %.lr.ph.i.i, !llvm.loop !201

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

bb.n:                                             ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft14LayeredHashMapINS2_1VINS2_12WordWithBitsILm32EEEEEbE12InsertNewKeyES7_b.exit, %_ZN2v88internal8compiler10turboshaft24BranchEliminationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerES3_S5_S7_EEEEEEEEEEEEEE10StartLayerEPNS2_5BlockE.exit
  %i.dt = load ptr, ptr %2, align 8, !noalias !204
  %i.du = icmp eq ptr %i.y, %i.dt
  br i1 %i.du, label %._crit_edge, label %bb.d, !llvm.loop !211
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_28LoopStackCheckElisionReducerENS2_28StoreStoreEliminationReducerENS2_26LateLoadEliminationReducerENS2_26MachineOptimizationReducerENS2_24BranchEliminationReducerES3_S5_EEEEEEEEEE23RecordOldEpochAndSetNewEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector.763", align 8 ; 11 uses
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
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft6detail16GrowingSidetableIiNS2_10BlockIndexEEixES5_.exit, label %bb.c, !prof !11

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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.ab, ptr %2, align 8, !alias.scope !212
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !212
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.ae, ptr %i.ad, align 8, !alias.scope !212
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.05.i = load ptr, ptr %i.af, align 8, !noalias !212 ; 2 uses
  %.not6.i = icmp eq ptr %.05.i, null
  br i1 %.not6.i, label %._crit_edge, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i
  %.pre.i18 = load ptr, ptr %2, align 8, !alias.scope !212 ; 10 uses
  %.pre.i1845 = ptrtoint ptr %.pre.i18 to i64     ; 6 uses
  %.pre8.i = load ptr, ptr %i.ac, align 8, !alias.scope !212 ; 6 uses
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
  %wide.load = load <2 x ptr>, ptr %next.gep49, align 8, !alias.scope !215, !noalias !218
  %wide.load50 = load <2 x ptr>, ptr %i.bi, align 8, !alias.scope !215, !noalias !218
  %i.bj = getelementptr i8, ptr %next.gep, i64 -8 ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep, i64 -24 ; 2 uses
  %wide.load51 = load <2 x ptr>, ptr %i.bj, align 8, !alias.scope !218
  %wide.load52 = load <2 x ptr>, ptr %i.bk, align 8, !alias.scope !218
  %reverse = shufflevector <2 x ptr> %wide.load51, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse53 = shufflevector <2 x ptr> %wide.load52, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse, ptr %next.gep49, align 8, !alias.scope !215, !noalias !218
  store <2 x ptr> %reverse53, ptr %i.bi, align 8, !alias.scope !215, !noalias !218
  %reverse54 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse55 = shufflevector <2 x ptr> %wide.load50, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse54, ptr %i.bj, align 8, !alias.scope !218
  store <2 x ptr> %reverse55, ptr %i.bk, align 8, !alias.scope !218
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !220

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
  br i1 %i.bp, label %.lr.ph.i.i.i, label %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit, !llvm.loop !221

.lr.ph.i:                                         ; preds = %bb.d, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i
  %.07.i = phi ptr [ %.0.i, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i ], [ %.05.i, %bb.d ] ; 2 uses
  %i.bq = load ptr, ptr %i.ac, align 8, !alias.scope !212 ; 2 uses
  %i.br = load ptr, ptr %i.ad, align 8, !alias.scope !212
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.e, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i, !prof !7

bb.e:                                             ; preds = %.lr.ph.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %.pre.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !212
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i

_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i: ; preds = %bb.e, %.lr.ph.i
  %i.bt = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.bq, %.lr.ph.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bu, ptr %i.ac, align 8, !alias.scope !212
  store ptr %.07.i, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  %.0.i = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not.i17 = icmp eq ptr %.0.i, null
  br i1 %.not.i17, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !222

_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.pre = load ptr, ptr %2, align 8
  %.pre34 = load ptr, ptr %i.ac, align 8
  br label %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit

_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit, %._crit_edge.i
  %i.bw = phi ptr [ %.pre34, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit ], [ %.pre8.i, %._crit_edge.i ] ; 2 uses
  %i.bx = phi ptr [ %.pre, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit ], [ %.pre.i18, %._crit_edge.i ] ; 2 uses
  %.not1531 = icmp eq ptr %i.bx, %i.bw
end_hunk_0
begin_hunk_1_@llvm.bswap.i64
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i64 8}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !20}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE3endEv: argument 0"}
!27 = distinct !{!27, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableIbNS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS7_EEE3endEv"}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv: argument 0"}
!32 = distinct !{!32, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_12MapMaskAndOrENS3_9NoKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv"}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_7KeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv: argument 0"}
!37 = distinct !{!37, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_7KeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv"}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv: argument 0"}
!42 = distinct !{!42, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv"}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv: argument 0"}
!50 = distinct !{!50, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv"}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZNK2v88internal8compiler10turboshaft5Graph19AllOperationIndicesEv: argument 0"}
!59 = distinct !{!59, !"_ZNK2v88internal8compiler10turboshaft5Graph19AllOperationIndicesEv"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZNK2v88internal8compiler10turboshaft5Graph19AllOperationIndicesEv: argument 0"}
!62 = distinct !{!62, !"_ZNK2v88internal8compiler10turboshaft5Graph19AllOperationIndicesEv"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE: argument 0"}
!65 = distinct !{!65, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE"}
!66 = distinct !{!66, !10}
!67 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !10}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !10, !72, !73}
!72 = !{!"llvm.loop.isvectorized", i32 1}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = distinct !{!74, !10, !73, !72}
!75 = distinct !{!75, !20}
!76 = distinct !{!76, !10}
!77 = distinct !{!77, !10}
!78 = distinct !{!78, !10}
!79 = distinct !{!79, !10}
!80 = distinct !{!80, !10}
!81 = !{!82, !84}
!82 = distinct !{!82, !83, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE12SnapshotDataEE6rbeginEv: argument 0"}
!83 = distinct !{!83, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE12SnapshotDataEE6rbeginEv"}
!84 = distinct !{!84, !85, !"_ZN2v84base8ReversedINS_8internal10ZoneVectorIPNS2_8compiler10turboshaft13SnapshotTableINS5_18StoreObservabilityENS5_27MaybeRedundantStoresKeyDataEE12SnapshotDataEEEEEDaRT_: argument 0"}
!85 = distinct !{!85, !"_ZN2v84base8ReversedINS_8internal10ZoneVectorIPNS2_8compiler10turboshaft13SnapshotTableINS5_18StoreObservabilityENS5_27MaybeRedundantStoresKeyDataEE12SnapshotDataEEEEEDaRT_"}
!86 = !{!87, !84}
!87 = distinct !{!87, !88, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE12SnapshotDataEE4rendEv: argument 0"}
!88 = distinct !{!88, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE12SnapshotDataEE4rendEv"}
!89 = distinct !{!89, !10}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv: argument 0"}
!92 = distinct !{!92, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE3endEv: argument 0"}
!95 = distinct !{!95, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEEENS1_22RecyclingZoneAllocatorIS7_EEE3endEv"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE7emplaceIJRS9_RSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES3_INSO_8iteratorEbEDpOST_: argument 0"}
!98 = distinct !{!98, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE7emplaceIJRS9_RSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEES3_INSO_8iteratorEbEDpOST_"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEEvE5applyINS0_12raw_hash_setISE_NS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE19EmplaceDecomposableEJRS9_RSD_ESE_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSW_DpOSX_: argument 0"}
!101 = distinct !{!101, !"_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEEvE5applyINS0_12raw_hash_setISE_NS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE19EmplaceDecomposableEJRS9_RSD_ESE_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSW_DpOSX_"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN4absl18container_internal17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS6_16SnapshotTableKeyINS6_18StoreObservabilityENS6_27MaybeRedundantStoresKeyDataEEEE5applyINS0_12raw_hash_setISD_NS_13hash_internal4HashIS8_EESt8equal_toIS8_ENS4_13ZoneAllocatorIS2_IKS8_SC_EEEE19EmplaceDecomposableEJRS8_RSC_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOST_DpOSU_: argument 0"}
!104 = distinct !{!104, !"_ZN4absl18container_internal17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS6_16SnapshotTableKeyINS6_18StoreObservabilityENS6_27MaybeRedundantStoresKeyDataEEEE5applyINS0_12raw_hash_setISD_NS_13hash_internal4HashIS8_EESt8equal_toIS8_ENS4_13ZoneAllocatorIS2_IKS8_SC_EEEE19EmplaceDecomposableEJRS8_RSC_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOST_DpOSU_"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN4absl18container_internal13DecomposePairINS0_12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS8_16SnapshotTableKeyINS8_18StoreObservabilityENS8_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashISA_EESt8equal_toISA_ENS6_13ZoneAllocatorIS4_IKSA_SE_EEEE19EmplaceDecomposableEJRSA_RSE_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOST_DpOSU_: argument 0"}
!107 = distinct !{!107, !"_ZN4absl18container_internal13DecomposePairINS0_12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS8_16SnapshotTableKeyINS8_18StoreObservabilityENS8_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashISA_EESt8equal_toISA_ENS6_13ZoneAllocatorIS4_IKSA_SE_EEEE19EmplaceDecomposableEJRSA_RSE_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOST_DpOSU_"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN4absl18container_internal15memory_internal17DecomposePairImplINS0_12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS9_16SnapshotTableKeyINS9_18StoreObservabilityENS9_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashISB_EESt8equal_toISB_ENS7_13ZoneAllocatorIS5_IKSB_SF_EEEE19EmplaceDecomposableERSB_St5tupleIJRSF_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalIST_IJSX_EEEEclsr3stdE7declvalIT1_EEEEOSW_S5_IS10_S11_E: argument 0"}
!110 = distinct !{!110, !"_ZN4absl18container_internal15memory_internal17DecomposePairImplINS0_12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS9_16SnapshotTableKeyINS9_18StoreObservabilityENS9_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashISB_EESt8equal_toISB_ENS7_13ZoneAllocatorIS5_IKSB_SF_EEEE19EmplaceDecomposableERSB_St5tupleIJRSF_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalIST_IJSX_EEEEclsr3stdE7declvalIT1_EEEEOSW_S5_IS10_S11_E"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESU_IJRSD_EEEEES3_INSO_8iteratorEbERKT_DpOT0_: argument 0"}
!113 = distinct !{!113, !"_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESU_IJRSD_EEEEES3_INSO_8iteratorEbERKT_DpOT0_"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE22find_or_prepare_insertIS9_EES3_INSO_8iteratorEbERKT_: argument 0"}
!116 = distinct !{!116, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE22find_or_prepare_insertIS9_EES3_INSO_8iteratorEbERKT_"}
!117 = !{!115, !112, !109, !106, !103, !100, !97}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_smallIS9_EES3_INSO_8iteratorEbERKT_: argument 0"}
!120 = distinct !{!120, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE28find_or_prepare_insert_smallIS9_EES3_INSO_8iteratorEbERKT_"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE26find_or_prepare_insert_sooIS9_EES3_INSO_8iteratorEbERKT_: argument 0"}
!123 = distinct !{!123, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyISt4pairIN2v88internal8compiler10turboshaft7OpIndexEiENS7_16SnapshotTableKeyINS7_18StoreObservabilityENS7_27MaybeRedundantStoresKeyDataEEEEENS_13hash_internal4HashIS9_EESt8equal_toIS9_ENS5_13ZoneAllocatorIS3_IKS9_SD_EEEE26find_or_prepare_insert_sooIS9_EES3_INSO_8iteratorEbERKT_"}
!124 = !{!122, !119, !115, !112, !109, !106, !103, !100, !97}
!125 = !{!112, !109, !106, !103, !100, !97}
!126 = !{!106, !103, !100, !97}
!127 = distinct !{!127, !10}
!128 = !{i64 4}
!129 = distinct !{!129, !10}
!130 = distinct !{!130, !10}
!131 = distinct !{!131, !10}
!132 = distinct !{!132, !10, !72, !73}
!133 = distinct !{!133, !10, !73, !72}
!134 = distinct !{!134, !20}
!135 = distinct !{!135, !10}
!136 = !{!137, !139}
!137 = distinct !{!137, !138, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE12SnapshotDataEE6rbeginEv: argument 0"}
!138 = distinct !{!138, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE12SnapshotDataEE6rbeginEv"}
!139 = distinct !{!139, !140, !"_ZN2v84base8ReversedINS_8internal10ZoneVectorIPNS2_8compiler10turboshaft13SnapshotTableINS5_18StoreObservabilityENS5_27MaybeRedundantStoresKeyDataEE12SnapshotDataEEEEEDaRT_: argument 0"}
!140 = distinct !{!140, !"_ZN2v84base8ReversedINS_8internal10ZoneVectorIPNS2_8compiler10turboshaft13SnapshotTableINS5_18StoreObservabilityENS5_27MaybeRedundantStoresKeyDataEE12SnapshotDataEEEEEDaRT_"}
!141 = !{!142, !139}
!142 = distinct !{!142, !143, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE12SnapshotDataEE4rendEv: argument 0"}
!143 = distinct !{!143, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE12SnapshotDataEE4rendEv"}
!144 = distinct !{!144, !10}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv: argument 0"}
!147 = distinct !{!147, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_18StoreObservabilityENS3_27MaybeRedundantStoresKeyDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv"}
!148 = distinct !{!148, !10, !72, !73}
!149 = !{!"branch_weights", i32 4001, i32 1}
!150 = distinct !{!150, !10, !73, !72}
!151 = distinct !{!151, !10}
!152 = distinct !{!152, !10}
!153 = distinct !{!153, !10}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZN2v88internal8compiler10turboshaft5Graph10operationsERKNS2_5BlockE: argument 0"}
!156 = distinct !{!156, !"_ZN2v88internal8compiler10turboshaft5Graph10operationsERKNS2_5BlockE"}
!157 = distinct !{!157, !10}
!158 = distinct !{!158, !10}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE: argument 0"}
!161 = distinct !{!161, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE: argument 0"}
!164 = distinct !{!164, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE"}
!165 = !{!166, !168}
!166 = distinct !{!166, !167, !"_ZN2v84base18IterateWithoutLastINS0_14iterator_rangeINS_8internal8compiler10turboshaft5Graph15OpIndexIteratorEEEEEDaRT_: argument 0"}
!167 = distinct !{!167, !"_ZN2v84base18IterateWithoutLastINS0_14iterator_rangeINS_8internal8compiler10turboshaft5Graph15OpIndexIteratorEEEEEDaRT_"}
!168 = distinct !{!168, !169, !"_ZN2v84base18IterateWithoutLastINS_8internal8compiler10turboshaft5Graph15OpIndexIteratorEEEDaRKNS0_14iterator_rangeIT_EE: argument 0"}
!169 = distinct !{!169, !"_ZN2v84base18IterateWithoutLastINS_8internal8compiler10turboshaft5Graph15OpIndexIteratorEEEDaRKNS0_14iterator_rangeIT_EE"}
!170 = distinct !{null}
!171 = distinct !{null, null}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZN2v88internal8compiler10turboshaft5Graph10operationsERKNS2_5BlockE: argument 0"}
!174 = distinct !{!174, !"_ZN2v88internal8compiler10turboshaft5Graph10operationsERKNS2_5BlockE"}
!175 = distinct !{!175, !10}
!176 = !{!177}
!177 = distinct !{!177, !178}
!178 = distinct !{!178, !"LVerDomain"}
!179 = !{!180}
!180 = distinct !{!180, !178}
!181 = distinct !{!181, !10, !72, !73}
!182 = distinct !{!182, !10, !72}
!183 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!184 = distinct !{!184, !10}
!185 = !{!186, !188, !190}
!186 = distinct !{!186, !187, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_: argument 0"}
!187 = distinct !{!187, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE22find_or_prepare_insertIS7_EESA_INSS_8iteratorEbERKT_"}
!188 = distinct !{!188, !189, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE16try_emplace_implIS7_JEEESA_INS0_12raw_hash_setISI_SL_SN_SR_E8iteratorEbEOT_DpOT0_: argument 0"}
!189 = distinct !{!189, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE16try_emplace_implIS7_JEEESA_INS0_12raw_hash_setISI_SL_SN_SR_E8iteratorEbEOT_DpOT0_"}
!190 = distinct !{!190, !191, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_: argument 0"}
!191 = distinct !{!191, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISI_SL_SN_SR_E14const_iteratorEEE5valueEiE4typeELi0EEESA_INSX_8iteratorEbEOS7_DpOT1_"}
!192 = !{!193, !186, !188, !190}
!193 = distinct !{!193, !194, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE28find_or_prepare_insert_smallIS7_EESA_INSS_8iteratorEbERKT_: argument 0"}
!194 = distinct !{!194, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE28find_or_prepare_insert_smallIS7_EESA_INSS_8iteratorEbERKT_"}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE28find_or_prepare_insert_largeIS7_EESA_INSS_8iteratorEbERKT_: argument 0"}
!197 = distinct !{!197, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft10BlockIndexESt8optionalINS4_10ZoneVectorISt4pairINS6_16SnapshotTableKeyINS6_7OpIndexENS6_12VariableDataEEESC_EEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISA_IKS7_SH_EEEE28find_or_prepare_insert_largeIS7_EESA_INSS_8iteratorEbERKT_"}
!198 = !{!188, !190}
!199 = distinct !{!199, !10}
!200 = distinct !{!200, !10}
!201 = distinct !{!201, !10}
!202 = distinct !{!202, !10}
!203 = distinct !{!203, !10}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE4rendEv: argument 0"}
!206 = distinct !{!206, !"_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE4rendEv"}
!207 = distinct !{!207, !10}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE6rbeginEv: argument 0"}
!210 = distinct !{!210, !"_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm32ESaIS6_EE6rbeginEv"}
!211 = distinct !{!211, !10}
!212 = !{!213}
!213 = distinct !{!213, !214, !"_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv: argument 0"}
!214 = distinct !{!214, !"_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv"}
!215 = !{!216}
!216 = distinct !{!216, !217}
!217 = distinct !{!217, !"LVerDomain"}
!218 = !{!219}
!219 = distinct !{!219, !217}
!220 = distinct !{!220, !10, !72, !73}
!221 = distinct !{!221, !10, !72}
!222 = distinct !{!222, !10}
!223 = distinct !{!223, !20}
!224 = distinct !{!224, !10}
!225 = distinct !{!225, !10}
!226 = distinct !{!226, !10}
!227 = distinct !{!227, !10}
!228 = distinct !{!228, !10}
!229 = distinct !{!229, !10, !72, !73}
!230 = distinct !{!230, !10, !73, !72}
!231 = distinct !{null}
!232 = distinct !{!232, !10}
!233 = distinct !{!233, !10}
!234 = distinct !{!234, !10}
!235 = distinct !{!235, !10}
!236 = !{!237, !239}
!237 = distinct !{!237, !238, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataEE6rbeginEv: argument 0"}
!238 = distinct !{!238, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataEE6rbeginEv"}
!239 = distinct !{!239, !240, !"_ZN2v84base8ReversedINS_8internal10ZoneVectorIPNS2_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE12SnapshotDataEEEEEDaRT_: argument 0"}
!240 = distinct !{!240, !"_ZN2v84base8ReversedINS_8internal10ZoneVectorIPNS2_8compiler10turboshaft13SnapshotTableINS5_7OpIndexENS5_12VariableDataEE12SnapshotDataEEEEEDaRT_"}
!241 = !{!242, !239}
!242 = distinct !{!242, !243, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataEE4rendEv: argument 0"}
!243 = distinct !{!243, !"_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataEE4rendEv"}
!244 = distinct !{!244, !10}
!245 = !{!246}
!246 = distinct !{!246, !247, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv: argument 0"}
!247 = distinct !{!247, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE12SnapshotDataENS1_22RecyclingZoneAllocatorIS8_EEE3endEv"}
!248 = distinct !{!248, !10}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv: argument 0"}
!251 = distinct !{!251, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv"}
!252 = distinct !{!252, !10}
!253 = distinct !{!253, !10}
!254 = distinct !{!254, !10}
!255 = distinct !{!255, !10, !72, !73}
!256 = distinct !{!256, !10, !72}
!257 = !{!258}
!258 = distinct !{!258, !259, !"_ZNK2v88internal8compiler10turboshaft12ProjectionOp7optionsEv: argument 0"}
!259 = distinct !{!259, !"_ZNK2v88internal8compiler10turboshaft12ProjectionOp7optionsEv"}
!260 = !{!261}
!261 = distinct !{!261, !262, !"_ZNK2v88internal8compiler10turboshaft12ProjectionOp7optionsEv: argument 0"}
!262 = distinct !{!262, !"_ZNK2v88internal8compiler10turboshaft12ProjectionOp7optionsEv"}
!263 = distinct !{!263, !10}
!264 = !{!265}
!265 = distinct !{!265, !266, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv: argument 0"}
!266 = distinct !{!266, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv"}
!267 = distinct !{!267, !10}
!268 = distinct !{!268, !10}
!269 = distinct !{!269, !10}
!270 = !{!271}
!271 = distinct !{!271, !272, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv: argument 0"}
!272 = distinct !{!272, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv"}
!273 = !{!"branch_weights", !"expected", i32 3648897, i32 2143834751}
!274 = distinct !{!274, !10}
!275 = !{!276}
!276 = distinct !{!276, !277, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv: argument 0"}
!277 = distinct !{!277, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv"}
!278 = !{!279}
!279 = distinct !{!279, !280, !"_ZNK2v88internal8compiler10turboshaft5PhiOp7optionsEv: argument 0"}
!280 = distinct !{!280, !"_ZNK2v88internal8compiler10turboshaft5PhiOp7optionsEv"}
!281 = !{!282}
!282 = distinct !{!282, !283, !"_ZNK2v88internal8compiler10turboshaft5PhiOp7optionsEv: argument 0"}
!283 = distinct !{!283, !"_ZNK2v88internal8compiler10turboshaft5PhiOp7optionsEv"}
!284 = distinct !{!284, !10}
!285 = !{!286}
!286 = distinct !{!286, !287, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv: argument 0"}
!287 = distinct !{!287, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv"}
!288 = distinct !{!288, !10}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_ZNK2v88internal8compiler10turboshaft10RttCanonOp7optionsEv: argument 0"}
!291 = distinct !{!291, !"_ZNK2v88internal8compiler10turboshaft10RttCanonOp7optionsEv"}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_ZNK2v88internal8compiler10turboshaft10RttCanonOp7optionsEv: argument 0"}
!294 = distinct !{!294, !"_ZNK2v88internal8compiler10turboshaft10RttCanonOp7optionsEv"}
!295 = distinct !{!295, !10}
!296 = !{!297}
!297 = distinct !{!297, !298, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv: argument 0"}
!298 = distinct !{!298, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv"}
!299 = distinct !{!299, !10, !72, !73}
!300 = distinct !{!300, !10, !72}
!301 = distinct !{!301, !10}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv: argument 0"}
!304 = distinct !{!304, !"_ZN2v88internal8compiler10turboshaft5Graph13AllOperationsEv"}
!305 = !{!306}
!306 = distinct !{!306, !307, !"_ZNK2v88internal8compiler10turboshaft12FrameStateOp7optionsEv: argument 0"}
!307 = distinct !{!307, !"_ZNK2v88internal8compiler10turboshaft12FrameStateOp7optionsEv"}
!308 = !{!309}
!309 = distinct !{!309, !310, !"_ZNK2v88internal8compiler10turboshaft12FrameStateOp7optionsEv: argument 0"}
!310 = distinct !{!310, !"_ZNK2v88internal8compiler10turboshaft12FrameStateOp7optionsEv"}
!311 = distinct !{!311, !10}
!312 = distinct !{!312, !10}
!313 = distinct !{!313, !10}
!314 = distinct !{!314, !10}
!315 = distinct !{!315, !10}
!316 = distinct !{!316, !10}
!317 = distinct !{null, null, null, null}
!318 = distinct !{null, null, null}
!319 = distinct !{null, null, null}
!320 = distinct !{null, null, null, null}
!321 = !{!322}
!322 = distinct !{!322, !323, !"_ZNK2v88internal8compiler10turboshaft24WasmIncCoverageCounterOp7optionsEv: argument 0"}
!323 = distinct !{!323, !"_ZNK2v88internal8compiler10turboshaft24WasmIncCoverageCounterOp7optionsEv"}
!324 = !{!325}
!325 = distinct !{!325, !326, !"_ZNK2v88internal8compiler10turboshaft14RootConstantOp7optionsEv: argument 0"}
!326 = distinct !{!326, !"_ZNK2v88internal8compiler10turboshaft14RootConstantOp7optionsEv"}
!327 = !{!328}
!328 = distinct !{!328, !329, !"_ZNK2v88internal8compiler10turboshaft6NullOp7optionsEv: argument 0"}
!329 = distinct !{!329, !"_ZNK2v88internal8compiler10turboshaft6NullOp7optionsEv"}
!330 = distinct !{null, null, null, null}
!331 = !{!332}
!332 = distinct !{!332, !333, !"_ZNK2v88internal8compiler10turboshaft10OsrValueOp7optionsEv: argument 0"}
!333 = distinct !{!333, !"_ZNK2v88internal8compiler10turboshaft10OsrValueOp7optionsEv"}
!334 = !{!335}
!335 = distinct !{!335, !336, !"_ZNK2v88internal8compiler10turboshaft11StackSlotOp7optionsEv: argument 0"}
!336 = distinct !{!336, !"_ZNK2v88internal8compiler10turboshaft11StackSlotOp7optionsEv"}
!337 = !{!338}
!338 = distinct !{!338, !339, !"_ZNK2v88internal8compiler10turboshaft15FrameConstantOp7optionsEv: argument 0"}
!339 = distinct !{!339, !"_ZNK2v88internal8compiler10turboshaft15FrameConstantOp7optionsEv"}
!340 = distinct !{null, null, null, null}
!341 = !{!342}
!342 = distinct !{!342, !343, !"_ZNK2v88internal8compiler10turboshaft15MemoryBarrierOp7optionsEv: argument 0"}
!343 = distinct !{!343, !"_ZNK2v88internal8compiler10turboshaft15MemoryBarrierOp7optionsEv"}
!344 = !{!345}
!345 = distinct !{!345, !346, !"_ZNK2v88internal8compiler10turboshaft9CommentOp7optionsEv: argument 0"}
!346 = distinct !{!346, !"_ZNK2v88internal8compiler10turboshaft9CommentOp7optionsEv"}
!347 = !{!348}
!348 = distinct !{!348, !349, !"_ZNK2v88internal8compiler10turboshaft14RuntimeAbortOp7optionsEv: argument 0"}
!349 = distinct !{!349, !"_ZNK2v88internal8compiler10turboshaft14RuntimeAbortOp7optionsEv"}
!350 = !{!351}
!351 = distinct !{!351, !352, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE3endEv: argument 0"}
!352 = distinct !{!352, !"_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE3endEv"}
!353 = !{!354}
!354 = distinct !{!354, !355, !"_ZNK2v88internal8compiler10turboshaft12DeoptimizeOp7optionsEv: argument 0"}
!355 = distinct !{!355, !"_ZNK2v88internal8compiler10turboshaft12DeoptimizeOp7optionsEv"}
!356 = !{!357}
!357 = distinct !{!357, !358, !"_ZNK2v88internal8compiler10turboshaft11GlobalGetOp7optionsEv: argument 0"}
!358 = distinct !{!358, !"_ZNK2v88internal8compiler10turboshaft11GlobalGetOp7optionsEv"}
!359 = !{!360}
!360 = distinct !{!360, !361, !"_ZNK2v88internal8compiler10turboshaft11GlobalSetOp7optionsEv: argument 0"}
!361 = distinct !{!361, !"_ZNK2v88internal8compiler10turboshaft11GlobalSetOp7optionsEv"}
!362 = !{!363}
!363 = distinct !{!363, !364, !"_ZNK2v88internal8compiler10turboshaft16IsRootConstantOp7optionsEv: argument 0"}
!364 = distinct !{!364, !"_ZNK2v88internal8compiler10turboshaft16IsRootConstantOp7optionsEv"}
!365 = !{!366}
!366 = distinct !{!366, !367, !"_ZNK2v88internal8compiler10turboshaft8IsNullOp7optionsEv: argument 0"}
!367 = distinct !{!367, !"_ZNK2v88internal8compiler10turboshaft8IsNullOp7optionsEv"}
!368 = !{!369}
!369 = distinct !{!369, !370, !"_ZNK2v88internal8compiler10turboshaft15AssertNotNullOp7optionsEv: argument 0"}
!370 = distinct !{!370, !"_ZNK2v88internal8compiler10turboshaft15AssertNotNullOp7optionsEv"}
!371 = !{!372}
!372 = distinct !{!372, !373, !"_ZNK2v88internal8compiler10turboshaft10RttCanonOp7optionsEv: argument 0"}
!373 = distinct !{!373, !"_ZNK2v88internal8compiler10turboshaft10RttCanonOp7optionsEv"}
!374 = !{!375}
!375 = distinct !{!375, !376, !"_ZNK2v88internal8compiler10turboshaft18AnyConvertExternOp7optionsEv: argument 0"}
!376 = distinct !{!376, !"_ZNK2v88internal8compiler10turboshaft18AnyConvertExternOp7optionsEv"}
!377 = !{!378}
!378 = distinct !{!378, !379, !"_ZNK2v88internal8compiler10turboshaft20WasmTypeAnnotationOp7optionsEv: argument 0"}
!379 = distinct !{!379, !"_ZNK2v88internal8compiler10turboshaft20WasmTypeAnnotationOp7optionsEv"}
!380 = !{!381}
!381 = distinct !{!381, !382, !"_ZNK2v88internal8compiler10turboshaft11StructSetOp7optionsEv: argument 0"}
!382 = distinct !{!382, !"_ZNK2v88internal8compiler10turboshaft11StructSetOp7optionsEv"}
!383 = !{!384}
!384 = distinct !{!384, !385, !"_ZNK2v88internal8compiler10turboshaft13ArrayLengthOp7optionsEv: argument 0"}
!385 = distinct !{!385, !"_ZNK2v88internal8compiler10turboshaft13ArrayLengthOp7optionsEv"}
!386 = !{!387}
!387 = distinct !{!387, !388, !"_ZNK2v88internal8compiler10turboshaft19WasmAllocateArrayOp7optionsEv: argument 0"}
!388 = distinct !{!388, !"_ZNK2v88internal8compiler10turboshaft19WasmAllocateArrayOp7optionsEv"}
!389 = !{!390}
!390 = distinct !{!390, !391, !"_ZNK2v88internal8compiler10turboshaft20WasmAllocateStructOp7optionsEv: argument 0"}
!391 = distinct !{!391, !"_ZNK2v88internal8compiler10turboshaft20WasmAllocateStructOp7optionsEv"}
!392 = !{!393}
!393 = distinct !{!393, !394, !"_ZNK2v88internal8compiler10turboshaft13WasmRefFuncOp7optionsEv: argument 0"}
!394 = distinct !{!394, !"_ZNK2v88internal8compiler10turboshaft13WasmRefFuncOp7optionsEv"}
!395 = !{!396}
!396 = distinct !{!396, !397, !"_ZNK2v88internal8compiler10turboshaft14Simd128BinopOp7optionsEv: argument 0"}
!397 = distinct !{!397, !"_ZNK2v88internal8compiler10turboshaft14Simd128BinopOp7optionsEv"}
!398 = !{!399}
!399 = distinct !{!399, !400, !"_ZNK2v88internal8compiler10turboshaft14Simd128UnaryOp7optionsEv: argument 0"}
!400 = distinct !{!400, !"_ZNK2v88internal8compiler10turboshaft14Simd128UnaryOp7optionsEv"}
!401 = !{!402}
!402 = distinct !{!402, !403, !"_ZNK2v88internal8compiler10turboshaft15Simd128ReduceOp7optionsEv: argument 0"}
!403 = distinct !{!403, !"_ZNK2v88internal8compiler10turboshaft15Simd128ReduceOp7optionsEv"}
!404 = !{!405}
!405 = distinct !{!405, !406, !"_ZNK2v88internal8compiler10turboshaft14Simd128ShiftOp7optionsEv: argument 0"}
!406 = distinct !{!406, !"_ZNK2v88internal8compiler10turboshaft14Simd128ShiftOp7optionsEv"}
!407 = !{!408}
!408 = distinct !{!408, !409, !"_ZNK2v88internal8compiler10turboshaft13Simd128TestOp7optionsEv: argument 0"}
!409 = distinct !{!409, !"_ZNK2v88internal8compiler10turboshaft13Simd128TestOp7optionsEv"}
!410 = !{!411}
end_hunk_1
