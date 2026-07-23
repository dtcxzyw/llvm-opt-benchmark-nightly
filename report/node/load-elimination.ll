inline.NumInlined: 1968
inline.NumDeleted: 802
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2v88internal8compiler15LoadElimination32ReduceEnsureWritableFastElementsEPNS1_4NodeE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.bh, ptr %4, align 8
  %i.bi = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bj = ptrtoint ptr %i.bi to i64               ; 5 uses
  store i64 %i.bj, ptr %6, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 520
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %.not.i31 = icmp eq ptr %i.bl, null
  br i1 %.not.i31, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2v88internal8compiler12JSHeapBroker15fixed_array_mapEv.exit, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.cj, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i ], [ %i.s, %_ZN2v88internal8compiler12JSHeapBroker15fixed_array_mapEv.exit ] ; 5 uses
  %i.bm = load ptr, ptr %.0.i.i.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i16, ptr %i.bn, align 8
  switch i16 %i.bo, label %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i [
    i16 278, label %bb.l
    i16 41, label %bb.l
    i16 59, label %bb.l
  ]

bb.l:                                             ; preds = %.preheader.i, %.preheader.i, %.preheader.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.bq = load i32, ptr %i.bp, align 4            ; 2 uses
  %i.br = lshr i32 %i.bq, 24
  %i.bs = and i32 %i.br, 15                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bs, 15
  %i.bt = ptrtoint ptr %.0.i.i.i to i64
  %i.bu = add i64 %i.bt, 32                       ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = add i64 %i.bx, 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = load i32, ptr %i.bz, align 8
  br label %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i

_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.sroa.3.0.i.i.i.i.i.i = phi i32 [ %i.ca, %bb.m ], [ %i.bs, %bb.l ]
  %.sroa.0.0.in.i.i.i.i.i.i = phi i64 [ %i.by, %bb.m ], [ %i.bu, %bb.l ]
  %i.cb = icmp sgt i32 %.sroa.3.0.i.i.i.i.i.i, 0
  br i1 %i.cb, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i

_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i: ; preds = %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = inttoptr i64 %.sroa.0.0.in.i.i.i.i.i.i to ptr
  %i.cc = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8
  %.not.i.i.i33 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i33, label %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i

_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i
  %i.cd = and i32 %i.bq, 251658240
  %.not.i.i.i.i.i32 = icmp eq i32 %i.cd, 251658240
  %i.ce = inttoptr i64 %i.bu to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i32, label %bb.n, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i

bb.n:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = add i64 %i.cg, 16
  %i.ci = inttoptr i64 %i.ch to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i

_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i: ; preds = %bb.n, %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i
  %.sink.i.i.i.i.i = phi ptr [ %i.ci, %bb.n ], [ %i.ce, %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i ]
  %i.cj = load ptr, ptr %.sink.i.i.i.i.i, align 8
  br label %.preheader.i, !llvm.loop !14

_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, %.preheader.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.cl, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.cm, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = icmp ult ptr %i.co, %.0.i.i.i           ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.cp, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.cp, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i4.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i4.i.i, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cq = icmp eq ptr %.19.i.i.i.i.i, %i.cm
  br i1 %i.cq, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = icmp ult ptr %.0.i.i.i, %i.cs
  br i1 %i.ct, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.cv = load i64, ptr %i.cu, align 8
  store i64 %i.cv, ptr %5, align 8
  %i.cw = call noundef zeroext i1 @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE8containsERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br i1 %i.cw, label %bb.p, label %._ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread_crit_edge

._ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread_crit_edge: ; preds = %bb.o
  %.sroa.03.0.copyload.pre = load i64, ptr %6, align 8
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull %1, ptr noundef %i.s, ptr noundef %i.al, ptr noundef null) #22, !inline_history !17
  br label %bb.x

_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread: ; preds = %._ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread_crit_edge, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i, %_ZN2v88internal8compiler12JSHeapBroker15fixed_array_mapEv.exit
  %.sroa.03.0.copyload = phi i64 [ %.sroa.03.0.copyload.pre, %._ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread_crit_edge ], [ %i.bj, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i ], [ %i.bj, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i ], [ %i.bj, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i ], [ %i.bj, %_ZN2v88internal8compiler12JSHeapBroker15fixed_array_mapEv.exit ] ; 2 uses
  %i.dc = load ptr, ptr %i.am, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.03.0.copyload, ptr %3, align 8
  store ptr %1, ptr %i.a, align 8
  store ptr %i.dc, ptr %i.b, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 3 uses
  %i.dg = load i64, ptr %i.df, align 8            ; 2 uses
  %i.dh = sub i64 %i.de, %i.dg
  %i.di = icmp ult i64 %i.dh, 536
  br i1 %i.di, label %bb.q, label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i, !prof !16

bb.q:                                             ; preds = %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dc, i64 noundef 536) #22
  %.pre.i.i.i = load i64, ptr %i.df, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i: ; preds = %bb.q, %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread
  %i.dj = phi i64 [ %.pre.i.i.i, %bb.q ], [ %i.dg, %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread ] ; 2 uses
  %i.dk = inttoptr i64 %i.dj to ptr               ; 6 uses
  %i.dl = add i64 %i.dj, 536
  store i64 %i.dl, ptr %i.df, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.dk, ptr noundef nonnull readonly align 8 dereferenceable(536) %i.bb, i64 536, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 520 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %.not.i34 = icmp eq ptr %i.dn, null
  br i1 %.not.i34, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i
  %i.do = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination12AbstractMaps6ExtendEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.dn, ptr noundef nonnull %1, i64 %.sroa.03.0.copyload, ptr noundef nonnull %i.dc)
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit

bb.s:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i
  %i.dp = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination12AbstractMapsEJRPNS3_4NodeERNS0_14ZoneCompactSetINS3_6MapRefEEERPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.dc, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit: ; preds = %bb.r, %bb.s
  %storemerge.i = phi ptr [ %i.dp, %bb.s ], [ %i.do, %bb.r ]
  store ptr %storemerge.i, ptr %i.dm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dq = load ptr, ptr %i.am, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.dk, ptr %2, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.q, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %.not26.i.i = icmp eq ptr %i.dw, null
  br i1 %.not26.i.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit
  %i.dx = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractField4KillERKNS2_14AliasStateInfoENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.dw, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, ptr readnone null, ptr noundef %i.dq) ; 3 uses
  %i.dy = load ptr, ptr %i.dv, align 8
  %.not27.i.i = icmp eq ptr %i.dy, %i.dx
  br i1 %.not27.i.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dz = load i64, ptr %i.dt, align 8
  %i.ea = load i64, ptr %i.du, align 8            ; 2 uses
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = icmp ult i64 %i.eb, 536
  br i1 %i.ec, label %bb.v, label %bb.w, !prof !16

bb.v:                                             ; preds = %bb.u
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dq, i64 noundef 536) #22
  %.pre.i.i.i.i = load i64, ptr %i.du, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ed = phi i64 [ %.pre.i.i.i.i, %bb.v ], [ %i.ea, %bb.u ] ; 2 uses
  %i.ee = inttoptr i64 %i.ed to ptr               ; 4 uses
  %i.ef = add i64 %i.ed, 536
  store i64 %i.ef, ptr %i.du, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.ee, ptr noundef nonnull readonly align 8 dereferenceable(536) %i.dk, i64 536, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store ptr %i.dx, ptr %i.eg, align 8
  %i.eh = load ptr, ptr %i.dv, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = trunc i64 %i.ej to i32
  %i.el = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.em = load i64, ptr %i.el, align 8
  %i.en = trunc i64 %i.em to i32
  %.neg.i.i = sub i32 %i.en, %i.ek
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 532 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = add i32 %.neg.i.i, %i.ep
  store i32 %i.eq, ptr %i.eo, align 4
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit: ; preds = %bb.w, %bb.t, %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit
  %.2.i.i = phi ptr [ %i.ee, %bb.w ], [ null, %bb.t ], [ null, %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %.2.i.i, null
  %i.er = select i1 %.not.i.i, ptr %i.dk, ptr %.2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store ptr %1, ptr %7, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 8, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i8 0, i64 16, i1 false)
  %i.eu = load ptr, ptr %i.am, align 8
  %i.ev = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractState8AddFieldEPNS1_4NodeENS2_10IndexRangeENS2_9FieldInfoEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(536) %i.er, ptr noundef %i.q, i64 8589934593, ptr noundef nonnull byval(%"struct.v8::internal::compiler::LoadElimination::FieldInfo") align 8 %7, ptr noundef %i.eu)
  %i.ew = call ptr @_ZN2v88internal8compiler15LoadElimination11UpdateStateEPNS1_4NodeEPKNS2_13AbstractStateE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1, ptr noundef %i.ev)
  br label %bb.x

bb.x:                                             ; preds = %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, %bb.p
  %.sroa.025.0 = phi ptr [ %i.s, %bb.p ], [ %i.ew, %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit, %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit, %bb.x
  %.sroa.025.1 = phi ptr [ %.sroa.025.0, %bb.x ], [ null, %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit ], [ null, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit ]
  ret ptr %.sroa.025.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler15LoadElimination27ReduceMaybeGrowFastElementsEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::LoadElimination::AliasStateInfo", align 8 ; 6 uses
  %3 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 4 uses
  %7 = alloca [2 x %"class.v8::internal::compiler::MapRef"], align 8 ; 6 uses
  %8 = alloca %"struct.v8::internal::compiler::LoadElimination::FieldInfo", align 8 ; 4 uses
  %i.e = load ptr, ptr %1, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler28GrowFastElementsParametersOfEPKNS1_8OperatorE(ptr noundef %i.e) #22
  %.sroa.040.0.copyload = load i8, ptr %i.f, align 8
  %i.g = load ptr, ptr %1, align 8                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 251658240
  %.not.i.i.i = icmp eq i32 %i.m, 251658240
  %i.n = ptrtoint ptr %1 to i64
  %i.o = add i64 %i.n, 32
  %i.p = inttoptr i64 %i.o to ptr                 ; 4 uses
  br i1 %.not.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %i.r, 16
  %i.t = inttoptr i64 %i.s to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.p, %bb.c ]
  %i.u = load ptr, ptr %.sink.i.i.i, align 8      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.23) #23
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.y = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.g) #22
  %i.z = load ptr, ptr %1, align 8
  %i.aa = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.z) #22
  %i.ab = load i32, ptr %i.k, align 4
  %i.ac = and i32 %i.ab, 251658240
  %.not.i.i.i24 = icmp eq i32 %i.ac, 251658240
  br i1 %.not.i.i.i24, label %bb.g, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.p, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = add i64 %i.ae, 16
  %i.ag = inttoptr i64 %i.af to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.f, %bb.g
  %.sink.i.i.i25 = phi ptr [ %i.ag, %bb.g ], [ %i.p, %bb.f ]
  %i.ah = zext i1 %i.y to i32
  %i.ai = zext i1 %i.aa to i32
  %i.aj = add nuw i32 %i.i, %i.ah
  %i.ak = add nuw i32 %i.aj, %i.ai
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i25, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 16777215
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3
  %i.bb = icmp ugt i64 %i.ba, %i.as
  br i1 %i.bb, label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit, label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.as
  %i.bd = load ptr, ptr %i.bc, align 8            ; 3 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit
  %i.bf = icmp eq i8 %.sroa.040.0.copyload, 0
  br i1 %i.bf, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 304 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %bb.j, label %_ZN2v88internal8compiler12JSHeapBroker22fixed_double_array_mapEv.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal8compiler12JSHeapBroker23InitFixedDoubleArrayMapEv(ptr noundef nonnull align 8 dereferenceable(8560) %i.bh) #22
  %.pr.i = load ptr, ptr %i.bi, align 8           ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i, label %bb.k, label %_ZN2v88internal8compiler12JSHeapBroker22fixed_double_array_mapEv.exit, !prof !18

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.28) #23
  unreachable

_ZN2v88internal8compiler12JSHeapBroker22fixed_double_array_mapEv.exit: ; preds = %bb.i, %bb.j
  %i.bk = phi ptr [ %.pr.i, %bb.j ], [ %i.bj, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.bk, ptr %5, align 8
  %i.bl = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bm = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bn = load ptr, ptr %i.ao, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.bm, ptr %4, align 8
  store ptr %1, ptr %i.c, align 8
  store ptr %i.bn, ptr %i.d, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = sub i64 %i.bp, %i.br
  %i.bt = icmp ult i64 %i.bs, 536
  br i1 %i.bt, label %bb.l, label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i, !prof !16

bb.l:                                             ; preds = %_ZN2v88internal8compiler12JSHeapBroker22fixed_double_array_mapEv.exit
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bn, i64 noundef 536) #22
  %.pre.i.i.i = load i64, ptr %i.bq, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i: ; preds = %bb.l, %_ZN2v88internal8compiler12JSHeapBroker22fixed_double_array_mapEv.exit
  %i.bu = phi i64 [ %.pre.i.i.i, %bb.l ], [ %i.br, %_ZN2v88internal8compiler12JSHeapBroker22fixed_double_array_mapEv.exit ] ; 2 uses
  %i.bv = inttoptr i64 %i.bu to ptr               ; 3 uses
  %i.bw = add i64 %i.bu, 536
  store i64 %i.bw, ptr %i.bq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(536) %i.bd, i64 536, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 520 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.not.i26 = icmp eq ptr %i.by, null
  br i1 %.not.i26, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i
  %i.bz = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination12AbstractMaps6ExtendEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.by, ptr noundef nonnull %1, i64 %i.bm, ptr noundef nonnull %i.bn)
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit

bb.n:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i
  %i.ca = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination12AbstractMapsEJRPNS3_4NodeERNS0_14ZoneCompactSetINS3_6MapRefEEERPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit: ; preds = %bb.m, %bb.n
  %storemerge.i = phi ptr [ %i.ca, %bb.n ], [ %i.bz, %bb.m ]
  store ptr %storemerge.i, ptr %i.bx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 288 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not.i27 = icmp eq ptr %i.ce, null
  br i1 %.not.i27, label %bb.p, label %_ZN2v88internal8compiler12JSHeapBroker15fixed_array_mapEv.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN2v88internal8compiler12JSHeapBroker17InitFixedArrayMapEv(ptr noundef nonnull align 8 dereferenceable(8560) %i.cc) #22
  %.pr.i28 = load ptr, ptr %i.cd, align 8         ; 2 uses
  %.not.i.i.i.i.i29 = icmp eq ptr %.pr.i28, null
  br i1 %.not.i.i.i.i.i29, label %bb.q, label %._ZN2v88internal8compiler12JSHeapBroker15fixed_array_mapEv.exit_crit_edge, !prof !18

._ZN2v88internal8compiler12JSHeapBroker15fixed_array_mapEv.exit_crit_edge: ; preds = %bb.p
  %.pre = load ptr, ptr %i.cb, align 8
  br label %_ZN2v88internal8compiler12JSHeapBroker15fixed_array_mapEv.exit

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.28) #23
  unreachable

_ZN2v88internal8compiler12JSHeapBroker15fixed_array_mapEv.exit: ; preds = %._ZN2v88internal8compiler12JSHeapBroker15fixed_array_mapEv.exit_crit_edge, %bb.o
  %i.cf = phi ptr [ %.pre, %._ZN2v88internal8compiler12JSHeapBroker15fixed_array_mapEv.exit_crit_edge ], [ %i.cc, %bb.o ] ; 2 uses
  %i.cg = phi ptr [ %.pr.i28, %._ZN2v88internal8compiler12JSHeapBroker15fixed_array_mapEv.exit_crit_edge ], [ %i.ce, %bb.o ]
  store ptr %i.cg, ptr %7, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 296 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %.not.i30 = icmp eq ptr %i.cj, null
  br i1 %.not.i30, label %bb.r, label %_ZN2v88internal8compiler12JSHeapBroker19fixed_cow_array_mapEv.exit

bb.r:                                             ; preds = %_ZN2v88internal8compiler12JSHeapBroker15fixed_array_mapEv.exit
  tail call void @_ZN2v88internal8compiler12JSHeapBroker20InitFixedCOWArrayMapEv(ptr noundef nonnull align 8 dereferenceable(8560) %i.cf) #22
  %.pr.i31 = load ptr, ptr %i.ci, align 8         ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %.pr.i31, null
  br i1 %.not.i.i.i.i.i32, label %bb.s, label %_ZN2v88internal8compiler12JSHeapBroker19fixed_cow_array_mapEv.exit, !prof !18

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.28) #23
  unreachable

_ZN2v88internal8compiler12JSHeapBroker19fixed_cow_array_mapEv.exit: ; preds = %_ZN2v88internal8compiler12JSHeapBroker15fixed_array_mapEv.exit, %bb.r
  %i.ck = phi ptr [ %.pr.i31, %bb.r ], [ %i.cj, %_ZN2v88internal8compiler12JSHeapBroker15fixed_array_mapEv.exit ]
  store ptr %i.ck, ptr %i.ch, align 8
  %i.cl = load ptr, ptr %i.ao, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEEC2IPKS3_St26random_access_iterator_tagEET_S9_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %7, ptr noundef nonnull %i.cm, ptr noundef %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.sroa.03.0.copyload = load i64, ptr %6, align 8 ; 2 uses
  %i.cn = load ptr, ptr %i.ao, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.03.0.copyload, ptr %3, align 8
  store ptr %1, ptr %i.a, align 8
  store ptr %i.cn, ptr %i.b, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = sub i64 %i.cp, %i.cr
  %i.ct = icmp ult i64 %i.cs, 536
  br i1 %i.ct, label %bb.t, label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i33, !prof !16

bb.t:                                             ; preds = %_ZN2v88internal8compiler12JSHeapBroker19fixed_cow_array_mapEv.exit
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cn, i64 noundef 536) #22
  %.pre.i.i.i36 = load i64, ptr %i.cq, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i33

_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i33: ; preds = %bb.t, %_ZN2v88internal8compiler12JSHeapBroker19fixed_cow_array_mapEv.exit
  %i.cu = phi i64 [ %.pre.i.i.i36, %bb.t ], [ %i.cr, %_ZN2v88internal8compiler12JSHeapBroker19fixed_cow_array_mapEv.exit ] ; 2 uses
  %i.cv = inttoptr i64 %i.cu to ptr               ; 3 uses
  %i.cw = add i64 %i.cu, 536
  store i64 %i.cw, ptr %i.cq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.cv, ptr noundef nonnull readonly align 8 dereferenceable(536) %i.bd, i64 536, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 520 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %.not.i34 = icmp eq ptr %i.cy, null
  br i1 %.not.i34, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i33
  %i.cz = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination12AbstractMaps6ExtendEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.cy, ptr noundef nonnull %1, i64 %.sroa.03.0.copyload, ptr noundef nonnull %i.cn)
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit37

bb.v:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i33
  %i.da = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination12AbstractMapsEJRPNS3_4NodeERNS0_14ZoneCompactSetINS3_6MapRefEEERPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit37

_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit37: ; preds = %bb.u, %bb.v
  %storemerge.i35 = phi ptr [ %i.da, %bb.v ], [ %i.cz, %bb.u ]
  store ptr %storemerge.i35, ptr %i.cx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.w

bb.w:                                             ; preds = %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit37, %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit
  %.0 = phi ptr [ %i.bv, %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit ], [ %i.cv, %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit37 ] ; 4 uses
  %i.db = load ptr, ptr %i.ao, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %.0, ptr %2, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.u, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %.not26.i.i = icmp eq ptr %i.dh, null
  br i1 %.not26.i.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractField4KillERKNS2_14AliasStateInfoENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.dh, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, ptr readnone null, ptr noundef %i.db) ; 3 uses
  %i.dj = load ptr, ptr %i.dg, align 8
  %.not27.i.i = icmp eq ptr %i.dj, %i.di
  br i1 %.not27.i.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = load i64, ptr %i.de, align 8
  %i.dl = load i64, ptr %i.df, align 8            ; 2 uses
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = icmp ult i64 %i.dm, 536
  br i1 %i.dn, label %bb.z, label %bb.aa, !prof !16

bb.z:                                             ; preds = %bb.y
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.db, i64 noundef 536) #22
  %.pre.i.i.i.i = load i64, ptr %i.df, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.do = phi i64 [ %.pre.i.i.i.i, %bb.z ], [ %i.dl, %bb.y ] ; 2 uses
  %i.dp = inttoptr i64 %i.do to ptr               ; 4 uses
  %i.dq = add i64 %i.do, 536
  store i64 %i.dq, ptr %i.df, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.dp, ptr noundef nonnull readonly align 8 dereferenceable(536) %.0, i64 536, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store ptr %i.di, ptr %i.dr, align 8
  %i.ds = load ptr, ptr %i.dg, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = trunc i64 %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = trunc i64 %i.dx to i32
  %.neg.i.i = sub i32 %i.dy, %i.dv
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 532 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = add i32 %.neg.i.i, %i.ea
  store i32 %i.eb, ptr %i.dz, align 4
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit: ; preds = %bb.aa, %bb.x, %bb.w
  %.2.i.i = phi ptr [ %i.dp, %bb.aa ], [ null, %bb.x ], [ null, %bb.w ] ; 2 uses
  %.not.i.i = icmp eq ptr %.2.i.i, null
  %i.ec = select i1 %.not.i.i, ptr %.0, ptr %.2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store ptr %1, ptr %8, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 8, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i8 0, i64 16, i1 false)
  %i.ef = load ptr, ptr %i.ao, align 8
  %i.eg = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractState8AddFieldEPNS1_4NodeENS2_10IndexRangeENS2_9FieldInfoEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(536) %i.ec, ptr noundef %i.u, i64 8589934593, ptr noundef nonnull byval(%"struct.v8::internal::compiler::LoadElimination::FieldInfo") align 8 %8, ptr noundef %i.ef)
  %i.eh = call ptr @_ZN2v88internal8compiler15LoadElimination11UpdateStateEPNS1_4NodeEPKNS2_13AbstractStateE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1, ptr noundef %i.eg)
  br label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit, %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit, %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit
  %.sroa.022.0 = phi ptr [ %i.eh, %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit ], [ null, %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit ], [ null, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit ]
  ret ptr %.sroa.022.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal8compiler15LoadElimination28ReduceTransitionElementsKindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::LoadElimination::AliasStateInfo", align 8 ; 6 uses
  %6 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 9 uses
  %7 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::compiler::LoadElimination::AliasStateInfo", align 8 ; 6 uses
  %10 = alloca %"class.v8::internal::compiler::LoadElimination::AliasStateInfo", align 8 ; 7 uses
  %i.c = load ptr, ptr %1, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler20ElementsTransitionOfEPKNS1_8OperatorE(ptr noundef %i.c) #22 ; 3 uses
  %.sroa.050.0.copyload = load i8, ptr %i.d, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.451.0.copyload = load ptr, ptr %.sroa.451.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.e = load ptr, ptr %1, align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 251658240
  %.not.i.i.i = icmp eq i32 %i.k, 251658240
  %i.l = ptrtoint ptr %1 to i64
  %i.m = add i64 %i.l, 32
  %i.n = inttoptr i64 %i.m to ptr                 ; 4 uses
  br i1 %.not.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = add i64 %i.p, 16
  %i.r = inttoptr i64 %i.q to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.n, %bb.c ]
  %i.s = load ptr, ptr %.sink.i.i.i, align 8      ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.23) #23
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.w = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.e) #22
  %i.x = load ptr, ptr %1, align 8
  %i.y = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.x) #22
  %i.z = load i32, ptr %i.i, align 4
  %i.aa = and i32 %i.z, 251658240
  %.not.i.i.i35 = icmp eq i32 %i.aa, 251658240
  br i1 %.not.i.i.i35, label %bb.g, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.n, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = add i64 %i.ac, 16
  %i.ae = inttoptr i64 %i.ad to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.f, %bb.g
  %.sink.i.i.i36 = phi ptr [ %i.ae, %bb.g ], [ %i.n, %bb.f ]
  %i.af = zext i1 %i.w to i32
  %i.ag = zext i1 %i.y to i32
  %i.ah = add nuw i32 %i.g, %i.af
  %i.ai = add nuw i32 %i.ah, %i.ag
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i36, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, 16777215
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3
  %i.az = icmp ugt i64 %i.ay, %i.aq
  br i1 %i.az, label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit, label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aq
  %i.bb = load ptr, ptr %i.ba, align 8            ; 6 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit
  %cond = icmp eq i8 %.sroa.050.0.copyload, 1
  br i1 %cond, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.bb, ptr %5, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.s, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.451.0.copyload, ptr %i.be, align 8
  %i.bf = load ptr, ptr %i.am, align 8            ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not26.i = icmp eq ptr %i.bj, null
  br i1 %.not26.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractField4KillERKNS2_14AliasStateInfoENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr null, ptr noundef %i.bf) ; 3 uses
  %i.bl = load ptr, ptr %i.bi, align 8
  %.not27.i = icmp eq ptr %i.bl, %i.bk
  br i1 %.not27.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = load i64, ptr %i.bg, align 8
  %i.bn = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = icmp ult i64 %i.bo, 536
  br i1 %i.bp, label %bb.l, label %bb.m, !prof !16

bb.l:                                             ; preds = %bb.k
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, i64 noundef 536) #22
  %.pre.i.i.i = load i64, ptr %i.bh, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bq = phi i64 [ %.pre.i.i.i, %bb.l ], [ %i.bn, %bb.k ] ; 2 uses
  %i.br = inttoptr i64 %i.bq to ptr               ; 4 uses
  %i.bs = add i64 %i.bq, 536
  store i64 %i.bs, ptr %i.bh, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.br, ptr noundef nonnull readonly align 8 dereferenceable(536) %i.bb, i64 536, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.bk, ptr %i.bt, align 8
  %i.bu = load ptr, ptr %i.bi, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = trunc i64 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = trunc i64 %i.bz to i32
  %.neg.i = sub i32 %i.ca, %i.bx
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 532 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = add i32 %.neg.i, %i.cc
  store i32 %i.cd, ptr %i.cb, align 4
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit: ; preds = %bb.m, %bb.j, %bb.i
  %.2.i = phi ptr [ %i.br, %bb.m ], [ null, %bb.j ], [ null, %bb.i ] ; 2 uses
  %.not.i = icmp eq ptr %.2.i, null
  %i.ce = select i1 %.not.i, ptr %i.bb, ptr %.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit
  %.0 = phi ptr [ %i.ce, %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit ], [ %i.bb, %bb.h ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i64 1, ptr %6, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.0, i64 520 ; 4 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 4 uses
  %.not.i37 = icmp eq ptr %i.cg, null
  br i1 %.not.i37, label %11, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.de, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i ], [ %i.s, %bb.n ] ; 5 uses
  %i.ch = load ptr, ptr %.0.i.i.i, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i16, ptr %i.ci, align 8
  switch i16 %i.cj, label %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i [
    i16 278, label %bb.o
    i16 41, label %bb.o
    i16 59, label %bb.o
  ]

bb.o:                                             ; preds = %.preheader.i, %.preheader.i, %.preheader.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.cm = lshr i32 %i.cl, 24
  %i.cn = and i32 %i.cm, 15                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cn, 15
  %i.co = ptrtoint ptr %.0.i.i.i to i64
  %i.cp = add i64 %i.co, 32                       ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = add i64 %i.cs, 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cv = load i32, ptr %i.cu, align 8
  br label %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i

_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.3.0.i.i.i.i.i.i = phi i32 [ %i.cv, %bb.p ], [ %i.cn, %bb.o ]
  %.sroa.0.0.in.i.i.i.i.i.i = phi i64 [ %i.ct, %bb.p ], [ %i.cp, %bb.o ]
  %i.cw = icmp sgt i32 %.sroa.3.0.i.i.i.i.i.i, 0
  br i1 %i.cw, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i

_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i: ; preds = %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = inttoptr i64 %.sroa.0.0.in.i.i.i.i.i.i to ptr
  %i.cx = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8
  %.not.i.i.i38 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i38, label %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i

_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i
  %i.cy = and i32 %i.cl, 251658240
  %.not.i.i.i.i.i = icmp eq i32 %i.cy, 251658240
  %i.cz = inttoptr i64 %i.cp to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i

bb.q:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = add i64 %i.db, 16
  %i.dd = inttoptr i64 %i.dc to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i

_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i: ; preds = %bb.q, %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i
  %.sink.i.i.i.i.i = phi ptr [ %i.dd, %bb.q ], [ %i.cz, %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i ]
  %i.de = load ptr, ptr %.sink.i.i.i.i.i, align 8
  br label %.preheader.i, !llvm.loop !14

_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, %.preheader.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not10.i.i.i.i.i, label %bb.ab, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dg, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dh, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = icmp ult ptr %i.dj, %.0.i.i.i           ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.dk, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.dk, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i4.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i4.i.i, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dl = icmp eq ptr %.19.i.i.i.i.i, %i.dh
  br i1 %i.dl, label %bb.ab, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = icmp ult ptr %.0.i.i.i, %i.dn
  br i1 %i.do, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.dq = load i64, ptr %i.dp, align 8
  store i64 %i.dq, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.5.0.copyload, ptr %4, align 8
  %i.dr = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ds = ptrtoint ptr %i.dr to i64
  store i64 %i.ds, ptr %7, align 8
  %i.dt = call noundef zeroext i1 @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE8containsERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %i.dt, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.451.0.copyload, ptr %3, align 8
  %i.du = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.dv = ptrtoint ptr %i.du to i64
  store i64 %i.dv, ptr %8, align 8
  %i.dw = call noundef zeroext i1 @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE8containsERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %i.dw, label %bb.t, label %bb.af

bb.t:                                             ; preds = %bb.s
  %i.dx = load ptr, ptr %i.am, align 8
  call void @_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE6removeES3_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %.sroa.451.0.copyload, ptr noundef %i.dx)
  %i.dy = load ptr, ptr %i.am, align 8
  call void @_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE6insertES3_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %.sroa.5.0.copyload, ptr noundef %i.dy)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %.0, ptr %9, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.s, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %.sroa.451.0.copyload, ptr %i.ea, align 8
  %i.eb = load ptr, ptr %i.am, align 8            ; 4 uses
  %i.ec = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not.i39 = icmp eq ptr %i.ec, null
  br i1 %.not.i39, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination12AbstractMaps4KillERKNS2_14AliasStateInfoEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.ec, ptr noundef nonnull readonly align 8 dereferenceable(24) %9, ptr noundef %i.eb) ; 2 uses
  %i.ee = load ptr, ptr %i.cf, align 8
  %.not12.not.i = icmp eq ptr %i.ee, %i.ed
  br i1 %.not12.not.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 3 uses
  %i.ei = load i64, ptr %i.eh, align 8            ; 2 uses
  %i.ej = sub i64 %i.eg, %i.ei
  %i.ek = icmp ult i64 %i.ej, 536
  br i1 %i.ek, label %bb.w, label %bb.x, !prof !16

bb.w:                                             ; preds = %bb.v
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.eb, i64 noundef 536) #22
  %.pre.i.i.i41 = load i64, ptr %i.eh, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.el = phi i64 [ %.pre.i.i.i41, %bb.w ], [ %i.ei, %bb.v ] ; 2 uses
  %i.em = inttoptr i64 %i.el to ptr               ; 3 uses
  %i.en = add i64 %i.el, 536
  store i64 %i.en, ptr %i.eh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.em, ptr noundef nonnull readonly align 8 dereferenceable(536) %.0, i64 536, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 520
  store ptr %i.ed, ptr %i.eo, align 8
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit: ; preds = %bb.t, %bb.u, %bb.x
  %.1.i40 = phi ptr [ %i.em, %bb.x ], [ %.0, %bb.t ], [ %.0, %bb.u ]
  %.sroa.01.0.copyload = load i64, ptr %6, align 8 ; 2 uses
  %i.ep = load ptr, ptr %i.am, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.01.0.copyload, ptr %2, align 8
  store ptr %i.s, ptr %i.a, align 8
  store ptr %i.ep, ptr %i.b, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 3 uses
  %i.et = load i64, ptr %i.es, align 8            ; 2 uses
  %i.eu = sub i64 %i.er, %i.et
  %i.ev = icmp ult i64 %i.eu, 536
  br i1 %i.ev, label %bb.y, label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i42, !prof !16

bb.y:                                             ; preds = %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ep, i64 noundef 536) #22
  %.pre.i.i.i44 = load i64, ptr %i.es, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i42

_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i42: ; preds = %bb.y, %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit
  %i.ew = phi i64 [ %.pre.i.i.i44, %bb.y ], [ %i.et, %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit ] ; 2 uses
  %i.ex = inttoptr i64 %i.ew to ptr               ; 3 uses
  %i.ey = add i64 %i.ew, 536
  store i64 %i.ey, ptr %i.es, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.ex, ptr noundef nonnull readonly align 8 dereferenceable(536) %.1.i40, i64 536, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 520 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8            ; 2 uses
  %.not.i43 = icmp eq ptr %i.fa, null
  br i1 %.not.i43, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i42
  %i.fb = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination12AbstractMaps6ExtendEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.fa, ptr noundef %i.s, i64 %.sroa.01.0.copyload, ptr noundef nonnull %i.ep)
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit

bb.aa:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i42
  %i.fc = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination12AbstractMapsEJRPNS3_4NodeERNS0_14ZoneCompactSetINS3_6MapRefEEERPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ep, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit: ; preds = %bb.z, %bb.aa
  %storemerge.i = phi ptr [ %i.fc, %bb.aa ], [ %i.fb, %bb.z ]
  store ptr %storemerge.i, ptr %i.ez, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.af

11:                                               ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit49

bb.ab:                                            ; preds = %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %.0, ptr %10, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.s, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %.sroa.451.0.copyload, ptr %i.fe, align 8
  %i.ff = load ptr, ptr %i.am, align 8            ; 4 uses
  %12 = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination12AbstractMaps4KillERKNS2_14AliasStateInfoEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.cg, ptr noundef nonnull readonly align 8 dereferenceable(24) %10, ptr noundef %i.ff) ; 2 uses
  %i.fg = load ptr, ptr %i.cf, align 8
  %.not.i45 = icmp eq ptr %i.fg, %12
  br i1 %.not.i45, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit49, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 3 uses
  %i.fk = load i64, ptr %i.fj, align 8            ; 2 uses
  %i.fl = sub i64 %i.fi, %i.fk
  %i.fm = icmp ult i64 %i.fl, 536
  br i1 %i.fm, label %bb.ad, label %bb.ae, !prof !16

bb.ad:                                            ; preds = %bb.ac
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ff, i64 noundef 536) #22
  %.pre.i.i.i48 = load i64, ptr %i.fj, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fn = phi i64 [ %.pre.i.i.i48, %bb.ad ], [ %i.fk, %bb.ac ] ; 2 uses
  %i.fo = inttoptr i64 %i.fn to ptr               ; 3 uses
  %i.fp = add i64 %i.fn, 536
  store i64 %i.fp, ptr %i.fj, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.fo, ptr noundef nonnull readonly align 8 dereferenceable(536) %.0, i64 536, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 520
  store ptr %12, ptr %i.fq, align 8
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit49

_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit49: ; preds = %11, %bb.ab, %bb.ae
  %.1.i47 = phi ptr [ %i.fo, %bb.ae ], [ %.0, %11 ], [ %.0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.af

bb.af:                                            ; preds = %bb.s, %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit, %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit49
  %.1 = phi ptr [ %i.ex, %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit ], [ %.0, %bb.s ], [ %.1.i47, %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit49 ]
  %i.fr = call ptr @_ZN2v88internal8compiler15LoadElimination11UpdateStateEPNS1_4NodeEPKNS2_13AbstractStateE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1, ptr noundef %.1)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.r, %bb.af
  %.sroa.032.0 = phi ptr [ %i.fr, %bb.af ], [ %i.al, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit, %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit, %bb.ag
  %.sroa.032.1 = phi ptr [ %.sroa.032.0, %bb.ag ], [ null, %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit ], [ null, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit ]
  ret ptr %.sroa.032.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal8compiler15LoadElimination38ReduceTransitionElementsKindOrCheckMapEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::compiler::ElementsTransitionWithMultipleSources", align 8 ; 10 uses
  %8 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 7 uses
  %9 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 5 uses
  %10 = alloca %"class.v8::internal::compiler::LoadElimination::AliasStateInfo", align 8 ; 6 uses
  %11 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 9 uses
  %12 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 4 uses
  %13 = alloca %"class.v8::internal::ZoneCompactSet", align 8 ; 4 uses
  %14 = alloca %"class.v8::internal::compiler::LoadElimination::AliasStateInfo", align 8 ; 6 uses
  %15 = alloca %"class.v8::internal::compiler::LoadElimination::AliasStateInfo", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.e = load ptr, ptr %1, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler39ElementsTransitionWithMultipleSourcesOfEPKNS1_8OperatorE(ptr noundef %i.e) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.g = load ptr, ptr %1, align 8                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 251658240
  %.not.i.i.i = icmp eq i32 %i.m, 251658240
  %i.n = ptrtoint ptr %1 to i64
  %i.o = add i64 %i.n, 32
  %i.p = inttoptr i64 %i.o to ptr                 ; 4 uses
  br i1 %.not.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %i.r, 16
  %i.t = inttoptr i64 %i.s to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.p, %bb.c ]
  %i.u = load ptr, ptr %.sink.i.i.i, align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.v, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %8, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.f, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.23) #23
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.z = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.g) #22
  %i.aa = load ptr, ptr %1, align 8
  %i.ab = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.aa) #22
  %i.ac = load i32, ptr %i.k, align 4
  %i.ad = and i32 %i.ac, 251658240
  %.not.i.i.i46 = icmp eq i32 %i.ad, 251658240
  br i1 %.not.i.i.i46, label %bb.g, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.p, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = add i64 %i.af, 16
  %i.ah = inttoptr i64 %i.ag to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.f, %bb.g
  %.sink.i.i.i47 = phi ptr [ %i.ah, %bb.g ], [ %i.p, %bb.f ]
  %i.ai = zext i1 %i.z to i32
  %i.aj = zext i1 %i.ab to i32
  %i.ak = add nuw i32 %i.i, %i.ai
  %i.al = add nuw i32 %i.ak, %i.aj
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i47, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = and i32 %i.ar, 16777215
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = icmp ugt i64 %i.bb, %i.at
  br i1 %i.bc, label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit, label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.at
  %i.be = load ptr, ptr %i.bd, align 8            ; 4 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %7, align 8 ; 3 uses
  %i.bg = icmp eq i64 %.sroa.01.0.copyload.i.i.i, 1
  br i1 %i.bg, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = and i64 %.sroa.01.0.copyload.i.i.i, 3
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph, label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit

_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit: ; preds = %bb.i
  %i.bj = add i64 %.sroa.01.0.copyload.i.i.i, -2
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %.not112 = icmp eq i64 %i.bm, 0
  br i1 %.not112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit
  %.0.i.i148 = phi i64 [ %i.bm, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit ], [ 1, %bb.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.m

._crit_edge:                                      ; preds = %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit.thread, %bb.h, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit
  %.0.lcssa = phi ptr [ %i.be, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit ], [ %i.be, %bb.h ], [ %.1, %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit.thread ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store i64 1, ptr %11, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 520
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %bb.ai, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.co, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i ], [ %i.u, %._crit_edge ] ; 5 uses
  %i.br = load ptr, ptr %.0.i.i.i, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i16, ptr %i.bs, align 8
  switch i16 %i.bt, label %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i [
    i16 278, label %bb.j
    i16 41, label %bb.j
    i16 59, label %bb.j
  ]

bb.j:                                             ; preds = %.preheader.i, %.preheader.i, %.preheader.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.bv = load i32, ptr %i.bu, align 4            ; 2 uses
  %i.bw = lshr i32 %i.bv, 24
  %i.bx = and i32 %i.bw, 15                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bx, 15
  %i.by = ptrtoint ptr %.0.i.i.i to i64
  %i.bz = add i64 %i.by, 32                       ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = add i64 %i.cc, 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cf = load i32, ptr %i.ce, align 8
  br label %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i

_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.sroa.3.0.i.i.i.i.i.i = phi i32 [ %i.cf, %bb.k ], [ %i.bx, %bb.j ]
  %.sroa.0.0.in.i.i.i.i.i.i = phi i64 [ %i.cd, %bb.k ], [ %i.bz, %bb.j ]
  %i.cg = icmp sgt i32 %.sroa.3.0.i.i.i.i.i.i, 0
  br i1 %i.cg, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i

_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i: ; preds = %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = inttoptr i64 %.sroa.0.0.in.i.i.i.i.i.i to ptr
  %i.ch = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8
  %.not.i.i.i50 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i50, label %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i

_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i
  %i.ci = and i32 %i.bv, 251658240
  %.not.i.i.i.i.i = icmp eq i32 %i.ci, 251658240
  %i.cj = inttoptr i64 %i.bz to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.l, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i

bb.l:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = add i64 %i.cl, 16
  %i.cn = inttoptr i64 %i.cm to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i

_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i: ; preds = %bb.l, %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i
  %.sink.i.i.i.i.i = phi ptr [ %i.cn, %bb.l ], [ %i.cj, %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i ]
  %i.co = load ptr, ptr %.sink.i.i.i.i.i, align 8
  br label %.preheader.i, !llvm.loop !14

_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, %.preheader.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not10.i.i.i.i.i, label %bb.ai, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.cq, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.cr, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = icmp ult ptr %i.ct, %.0.i.i.i           ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.cu, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.cu, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i4.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i4.i.i, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cv = icmp eq ptr %.19.i.i.i.i.i, %i.cr
  br i1 %i.cv, label %bb.ai, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = icmp ult ptr %.0.i.i.i, %i.cx
  br i1 %i.cy, label %bb.ai, label %bb.v

bb.m:                                             ; preds = %.lr.ph, %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit.thread
  %.0114 = phi ptr [ %i.be, %.lr.ph ], [ %.1, %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit.thread ] ; 7 uses
  %.sroa.5104.0113 = phi i64 [ 0, %.lr.ph ], [ %i.eh, %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.cz = call ptr @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE2atEm(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %.sroa.5104.0113)
  store ptr %i.cz, ptr %9, align 8
  %i.da = call noundef zeroext i8 @_ZNK2v88internal8compiler6MapRef13elements_kindEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #22 ; 3 uses
  %i.db = call noundef zeroext i8 @_ZNK2v88internal8compiler6MapRef13elements_kindEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #22 ; 3 uses
  switch i8 %i.da, label %bb.p [
    i8 0, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
    i8 4, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i
    i8 2, label %bb.n
    i8 6, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.o:                                             ; preds = %bb.m
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.p:                                             ; preds = %bb.m
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.0.i.i51 = phi i8 [ %i.da, %bb.p ], [ 7, %bb.o ], [ 3, %bb.n ], [ 5, %bb.m ]
  %i.dc = icmp eq i8 %.0.i.i51, %i.db
  br i1 %i.dc, label %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit.thread, label %bb.q

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i: ; preds = %bb.m
  %i.dd = icmp eq i8 %i.db, 1
  br i1 %i.dd, label %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit.thread, label %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit

bb.q:                                             ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i
  %i.de = icmp ult i8 %i.da, 2
  br i1 %i.de, label %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit, label %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit.thread108

_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit: ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i, %bb.q
  %i.df = and i8 %i.db, -2
  %i.dg = icmp eq i8 %i.df, 2
  br i1 %i.dg, label %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit.thread, label %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit.thread108

_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit.thread108: ; preds = %bb.q, %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %.sroa.014.0.copyload = load ptr, ptr %9, align 8
  store ptr %.0114, ptr %10, align 8
  store ptr %i.u, ptr %i.bn, align 8
  store ptr %.sroa.014.0.copyload, ptr %i.bo, align 8
  %i.dh = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0114, i64 16 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %.not26.i = icmp eq ptr %i.dl, null
  br i1 %.not26.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit.thread108
  %i.dm = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractField4KillERKNS2_14AliasStateInfoENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noundef nonnull readonly align 8 dereferenceable(24) %10, ptr null, ptr noundef %i.dh) ; 3 uses
  %i.dn = load ptr, ptr %i.dk, align 8
  %.not27.i = icmp eq ptr %i.dn, %i.dm
  br i1 %.not27.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.do = load i64, ptr %i.di, align 8
  %i.dp = load i64, ptr %i.dj, align 8            ; 2 uses
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = icmp ult i64 %i.dq, 536
  br i1 %i.dr, label %bb.t, label %bb.u, !prof !16

bb.t:                                             ; preds = %bb.s
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dh, i64 noundef 536) #22
  %.pre.i.i.i = load i64, ptr %i.dj, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ds = phi i64 [ %.pre.i.i.i, %bb.t ], [ %i.dp, %bb.s ] ; 2 uses
  %i.dt = inttoptr i64 %i.ds to ptr               ; 4 uses
  %i.du = add i64 %i.ds, 536
  store i64 %i.du, ptr %i.dj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.dt, ptr noundef nonnull readonly align 8 dereferenceable(536) %.0114, i64 536, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store ptr %i.dm, ptr %i.dv, align 8
  %i.dw = load ptr, ptr %i.dk, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = trunc i64 %i.eb to i32
  %.neg.i = sub i32 %i.ec, %i.dz
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dt, i64 532 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = add i32 %.neg.i, %i.ee
  store i32 %i.ef, ptr %i.ed, align 4
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit: ; preds = %bb.u, %bb.r, %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit.thread108
  %.2.i = phi ptr [ %i.dt, %bb.u ], [ null, %bb.r ], [ null, %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit.thread108 ] ; 2 uses
  %.not.i52 = icmp eq ptr %.2.i, null
  %i.eg = select i1 %.not.i52, ptr %.0114, ptr %.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit.thread

_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit.thread: ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit
  %.1 = phi ptr [ %.0114, %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit ], [ %i.eg, %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit ], [ %.0114, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ], [ %.0114, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.eh = add nuw i64 %.sroa.5104.0113, 1         ; 2 uses
  %.not = icmp eq i64 %i.eh, %.0.i.i148
  br i1 %.not, label %._crit_edge, label %bb.m

bb.v:                                             ; preds = %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.ej = load i64, ptr %i.ei, align 8
  store i64 %i.ej, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %.sroa.012.0.copyload = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.012.0.copyload, ptr %6, align 8
  %i.ek = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.el = ptrtoint ptr %i.ek to i64
  store i64 %i.el, ptr %12, align 8
  %i.em = call noundef zeroext i1 @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE8containsERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %i.em, label %bb.as, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.01.0.copyload.i.i.i55 = load i64, ptr %7, align 8 ; 3 uses
  %i.en = icmp eq i64 %.sroa.01.0.copyload.i.i.i55, 1
  br i1 %i.en, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eo = and i64 %.sroa.01.0.copyload.i.i.i55, 3
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %.lr.ph118, label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit59

_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit59: ; preds = %bb.x
  %i.eq = add i64 %.sroa.01.0.copyload.i.i.i55, -2
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i64, ptr %i.es, align 8            ; 2 uses
  %.not109115 = icmp eq i64 %i.et, 0
  br i1 %.not109115, label %.loopexit, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.x, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit59
  %.0.i.i56154 = phi i64 [ %i.et, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit59 ], [ 1, %bb.x ]
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %14, i64 16
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph118, %bb.ah
  %.2117 = phi ptr [ %.0.lcssa, %.lr.ph118 ], [ %.3, %bb.ah ] ; 6 uses
  %.sroa.596.0116 = phi i64 [ 0, %.lr.ph118 ], [ %i.gf, %bb.ah ] ; 2 uses
  %i.ew = call ptr @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE2atEm(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %.sroa.596.0116) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.ew, ptr %5, align 8
  %i.ex = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ey = ptrtoint ptr %i.ex to i64
  store i64 %i.ey, ptr %13, align 8
  %i.ez = call noundef zeroext i1 @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE8containsERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br i1 %i.ez, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %bb.y
  %i.fa = load ptr, ptr %i.ap, align 8
  call void @_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE6removeES3_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr %i.ew, ptr noundef %i.fa)
  %.sroa.06.0.copyload = load ptr, ptr %8, align 8
  %i.fb = load ptr, ptr %i.ap, align 8
  call void @_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE6insertES3_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr %.sroa.06.0.copyload, ptr noundef %i.fb)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store ptr %.2117, ptr %14, align 8
  store ptr %i.u, ptr %i.eu, align 8
  store ptr %i.ew, ptr %i.ev, align 8
  %i.fc = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.2117, i64 520 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %.not.i61 = icmp eq ptr %i.fe, null
  br i1 %.not.i61, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ff = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination12AbstractMaps4KillERKNS2_14AliasStateInfoEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.fe, ptr noundef nonnull readonly align 8 dereferenceable(24) %14, ptr noundef %i.fc) ; 2 uses
  %i.fg = load ptr, ptr %i.fd, align 8
  %.not12.not.i = icmp eq ptr %i.fg, %i.ff
  br i1 %.not12.not.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 3 uses
  %i.fk = load i64, ptr %i.fj, align 8            ; 2 uses
  %i.fl = sub i64 %i.fi, %i.fk
  %i.fm = icmp ult i64 %i.fl, 536
  br i1 %i.fm, label %bb.ac, label %bb.ad, !prof !16

bb.ac:                                            ; preds = %bb.ab
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fc, i64 noundef 536) #22
  %.pre.i.i.i64 = load i64, ptr %i.fj, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fn = phi i64 [ %.pre.i.i.i64, %bb.ac ], [ %i.fk, %bb.ab ] ; 2 uses
  %i.fo = inttoptr i64 %i.fn to ptr               ; 3 uses
  %i.fp = add i64 %i.fn, 536
  store i64 %i.fp, ptr %i.fj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.fo, ptr noundef nonnull readonly align 8 dereferenceable(536) %.2117, i64 536, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 520
  store ptr %i.ff, ptr %i.fq, align 8
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit: ; preds = %bb.z, %bb.aa, %bb.ad
  %.1.i63 = phi ptr [ %i.fo, %bb.ad ], [ %.2117, %bb.z ], [ %.2117, %bb.aa ]
  %.sroa.04.0.copyload = load i64, ptr %11, align 8 ; 2 uses
  %i.fr = load ptr, ptr %i.ap, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.04.0.copyload, ptr %4, align 8
  store ptr %i.u, ptr %i.c, align 8
  store ptr %i.fr, ptr %i.d, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 3 uses
  %i.fv = load i64, ptr %i.fu, align 8            ; 2 uses
  %i.fw = sub i64 %i.ft, %i.fv
  %i.fx = icmp ult i64 %i.fw, 536
  br i1 %i.fx, label %bb.ae, label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i65, !prof !16

bb.ae:                                            ; preds = %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fr, i64 noundef 536) #22
  %.pre.i.i.i67 = load i64, ptr %i.fu, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i65

_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i65: ; preds = %bb.ae, %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit
  %i.fy = phi i64 [ %.pre.i.i.i67, %bb.ae ], [ %i.fv, %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit ] ; 2 uses
  %i.fz = inttoptr i64 %i.fy to ptr               ; 3 uses
  %i.ga = add i64 %i.fy, 536
  store i64 %i.ga, ptr %i.fu, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.fz, ptr noundef nonnull readonly align 8 dereferenceable(536) %.1.i63, i64 536, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 520 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8            ; 2 uses
  %.not.i66 = icmp eq ptr %i.gc, null
  br i1 %.not.i66, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i65
  %i.gd = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination12AbstractMaps6ExtendEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.gc, ptr noundef %i.u, i64 %.sroa.04.0.copyload, ptr noundef nonnull %i.fr)
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit

bb.ag:                                            ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i65
  %i.ge = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination12AbstractMapsEJRPNS3_4NodeERNS0_14ZoneCompactSetINS3_6MapRefEEERPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.fr, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit: ; preds = %bb.af, %bb.ag
  %storemerge.i = phi ptr [ %i.ge, %bb.ag ], [ %i.gd, %bb.af ]
  store ptr %storemerge.i, ptr %i.gb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit, %bb.y
  %.3 = phi ptr [ %i.fz, %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit ], [ %.2117, %bb.y ] ; 2 uses
  %i.gf = add nuw i64 %.sroa.596.0116, 1          ; 2 uses
  %.not109 = icmp eq i64 %i.gf, %.0.i.i56154
  br i1 %.not109, label %.loopexit, label %bb.y

bb.ai:                                            ; preds = %._crit_edge, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %.sroa.01.0.copyload.i.i.i70 = load i64, ptr %7, align 8 ; 3 uses
  %i.gg = icmp eq i64 %.sroa.01.0.copyload.i.i.i70, 1
  br i1 %i.gg, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gh = and i64 %.sroa.01.0.copyload.i.i.i70, 3
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler15LoadElimination31ReduceTransitionAndStoreElementEPNS1_4NodeE:bb.a
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = add i64 %i.bu, 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load i32, ptr %i.bw, align 8
  br label %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i

_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.3.0.i.i.i.i.i.i = phi i32 [ %i.bx, %bb.j ], [ %i.bp, %bb.i ]
  %.sroa.0.0.in.i.i.i.i.i.i = phi i64 [ %i.bv, %bb.j ], [ %i.br, %bb.i ]
  %i.by = icmp sgt i32 %.sroa.3.0.i.i.i.i.i.i, 0
  br i1 %i.by, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i

_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i: ; preds = %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = inttoptr i64 %.sroa.0.0.in.i.i.i.i.i.i to ptr
  %i.bz = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8
  %.not.i.i.i26 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i26, label %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i

_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i
  %i.ca = and i32 %i.bn, 251658240
  %.not.i.i.i.i.i = icmp eq i32 %i.ca, 251658240
  %i.cb = inttoptr i64 %i.br to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.k, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i

bb.k:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = add i64 %i.cd, 16
  %i.cf = inttoptr i64 %i.ce to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i

_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i: ; preds = %bb.k, %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i
  %.sink.i.i.i.i.i = phi ptr [ %i.cf, %bb.k ], [ %i.cb, %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i ]
  %i.cg = load ptr, ptr %.sink.i.i.i.i.i, align 8
  br label %.preheader.i, !llvm.loop !14

_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, %.preheader.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ci, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.cj, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = icmp ult ptr %i.cl, %.0.i.i.i           ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.cm, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.cm, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i4.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i4.i.i, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.cn = icmp eq ptr %.19.i.i.i.i.i, %i.cj
  br i1 %i.cn, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = icmp ult ptr %.0.i.i.i, %i.cp
  br i1 %i.cq, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.cs = load i64, ptr %i.cr, align 8
  store i64 %i.cs, ptr %5, align 8
  %i.ct = load ptr, ptr %i.aq, align 8
  call void @_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE6insertES3_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %i.r, ptr noundef %i.ct)
  %i.cu = load ptr, ptr %i.aq, align 8
  call void @_ZN2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE6insertES3_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %i.t, ptr noundef %i.cu)
  %i.cv = load ptr, ptr %i.aq, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.bf, ptr %4, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.q, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.cx, align 8
  %i.cy = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination12AbstractMaps4KillERKNS2_14AliasStateInfoEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.cy, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, ptr noundef %i.cv) ; 2 uses
  %i.da = load ptr, ptr %i.bh, align 8
  %.not12.not.i.i = icmp eq ptr %i.da, %i.cz
  br i1 %.not12.not.i.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8            ; 2 uses
  %i.df = sub i64 %i.dc, %i.de
  %i.dg = icmp ult i64 %i.df, 536
  br i1 %i.dg, label %bb.o, label %bb.p, !prof !16

bb.o:                                             ; preds = %bb.n
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cv, i64 noundef 536) #22
  %.pre.i.i.i.i = load i64, ptr %i.dd, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dh = phi i64 [ %.pre.i.i.i.i, %bb.o ], [ %i.de, %bb.n ] ; 2 uses
  %i.di = inttoptr i64 %i.dh to ptr               ; 3 uses
  %i.dj = add i64 %i.dh, 536
  store i64 %i.dj, ptr %i.dd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.di, ptr noundef nonnull readonly align 8 dereferenceable(536) %i.bf, i64 536, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 520
  store ptr %i.cz, ptr %i.dk, align 8
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit: ; preds = %bb.l, %bb.m, %bb.p
  %.1.i.i = phi ptr [ %i.di, %bb.p ], [ %i.bf, %bb.l ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.sroa.01.0.copyload = load i64, ptr %5, align 8 ; 2 uses
  %i.dl = load ptr, ptr %i.aq, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.01.0.copyload, ptr %3, align 8
  store ptr %i.q, ptr %i.a, align 8
  store ptr %i.dl, ptr %i.b, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 3 uses
  %i.dp = load i64, ptr %i.do, align 8            ; 2 uses
  %i.dq = sub i64 %i.dn, %i.dp
  %i.dr = icmp ult i64 %i.dq, 536
  br i1 %i.dr, label %bb.q, label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i, !prof !16

bb.q:                                             ; preds = %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dl, i64 noundef 536) #22
  %.pre.i.i.i = load i64, ptr %i.do, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i

_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i: ; preds = %bb.q, %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit
  %i.ds = phi i64 [ %.pre.i.i.i, %bb.q ], [ %i.dp, %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit ] ; 2 uses
  %i.dt = inttoptr i64 %i.ds to ptr               ; 3 uses
  %i.du = add i64 %i.ds, 536
  store i64 %i.du, ptr %i.do, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.dt, ptr noundef nonnull readonly align 8 dereferenceable(536) %.1.i.i, i64 536, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 520 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %.not.i27 = icmp eq ptr %i.dw, null
  br i1 %.not.i27, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i
  %i.dx = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination12AbstractMaps6ExtendEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.dw, ptr noundef %i.q, i64 %.sroa.01.0.copyload, ptr noundef nonnull %i.dl)
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit

bb.s:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination13AbstractStateEJRKS5_EEEPT_DpOT0_.exit.i
  %i.dy = call noundef ptr @_ZN2v88internal4Zone3NewINS0_8compiler15LoadElimination12AbstractMapsEJRPNS3_4NodeERNS0_14ZoneCompactSetINS3_6MapRefEEERPS1_EEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit: ; preds = %bb.r, %bb.s
  %storemerge.i = phi ptr [ %i.dy, %bb.s ], [ %i.dx, %bb.r ]
  store ptr %storemerge.i, ptr %i.dv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread

_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i, %bb.h, %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit
  %.0 = phi ptr [ %i.dt, %_ZNK2v88internal8compiler15LoadElimination13AbstractState7SetMapsEPNS1_4NodeENS0_14ZoneCompactSetINS1_6MapRefEEEPNS0_4ZoneE.exit ], [ %i.bf, %bb.h ], [ %i.bf, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i ], [ %i.bf, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i ], [ %i.bf, %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i ] ; 4 uses
  %i.dz = load ptr, ptr %i.aq, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %.0, ptr %2, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.q, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %.not26.i.i = icmp eq ptr %i.ef, null
  br i1 %.not26.i.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread
  %i.eg = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractField4KillERKNS2_14AliasStateInfoENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.ef, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, ptr readnone null, ptr noundef %i.dz) ; 3 uses
  %i.eh = load ptr, ptr %i.ee, align 8
  %.not27.i.i = icmp eq ptr %i.eh, %i.eg
  br i1 %.not27.i.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ei = load i64, ptr %i.ec, align 8
  %i.ej = load i64, ptr %i.ed, align 8            ; 2 uses
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = icmp ult i64 %i.ek, 536
  br i1 %i.el, label %bb.v, label %bb.w, !prof !16

bb.v:                                             ; preds = %bb.u
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dz, i64 noundef 536) #22
  %.pre.i.i.i.i30 = load i64, ptr %i.ed, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.em = phi i64 [ %.pre.i.i.i.i30, %bb.v ], [ %i.ej, %bb.u ] ; 2 uses
  %i.en = inttoptr i64 %i.em to ptr               ; 4 uses
  %i.eo = add i64 %i.em, 536
  store i64 %i.eo, ptr %i.ed, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.en, ptr noundef nonnull readonly align 8 dereferenceable(536) %.0, i64 536, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store ptr %i.eg, ptr %i.ep, align 8
  %i.eq = load ptr, ptr %i.ee, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.es = load i64, ptr %i.er, align 8
  %i.et = trunc i64 %i.es to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = trunc i64 %i.ev to i32
  %.neg.i.i = sub i32 %i.ew, %i.et
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 532 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = add i32 %.neg.i.i, %i.ey
  store i32 %i.ez, ptr %i.ex, align 4
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit: ; preds = %bb.w, %bb.t, %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread
  %.2.i.i = phi ptr [ %i.en, %bb.w ], [ null, %bb.t ], [ null, %_ZNK2v88internal8compiler15LoadElimination13AbstractState10LookupMapsEPNS1_4NodeEPNS0_14ZoneCompactSetINS1_6MapRefEEE.exit.thread ] ; 2 uses
  %.not.i.i29 = icmp eq ptr %.2.i.i, null
  %i.fa = select i1 %.not.i.i29, ptr %.0, ptr %.2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.fb = call ptr @_ZN2v88internal8compiler15LoadElimination11UpdateStateEPNS1_4NodeEPKNS2_13AbstractStateE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.fa)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit, %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit, %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit
  %.sroa.022.0 = phi ptr [ %i.fb, %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit ], [ null, %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit ], [ null, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit ]
  ret ptr %.sroa.022.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler15LoadElimination23ReduceStoreTypedElementEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.23) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.a) #22
  %i.h = load ptr, ptr %1, align 8
  %i.i = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.h) #22
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 251658240
  %.not.i.i.i = icmp eq i32 %i.l, 251658240
  %i.m = ptrtoint ptr %1 to i64
  %i.n = add i64 %i.m, 32
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 16
  %i.s = inttoptr i64 %i.r to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.o, %bb.c ]
  %i.t = zext i1 %i.g to i32
  %i.u = zext i1 %i.i to i32
  %i.v = add i32 %i.f, %i.t
  %i.w = add i32 %i.v, %i.u
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 16777215
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = icmp ugt i64 %i.al, %i.ad
  br i1 %i.am, label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit, label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ad
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit
  %i.aq = tail call ptr @_ZN2v88internal8compiler15LoadElimination11UpdateStateEPNS1_4NodeEPKNS2_13AbstractStateE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ao)
  br label %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread

_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit.thread: ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit, %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit, %bb.e
  %.sroa.0.0 = phi ptr [ %i.aq, %bb.e ], [ null, %_ZNK2v88internal8compiler15LoadElimination27AbstractStateForEffectNodes3GetEPNS1_4NodeE.exit ], [ null, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler15LoadElimination15ReduceEffectPhiEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.23) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.a) #22
  %i.h = load ptr, ptr %1, align 8
  %i.i = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.h) #22
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 251658240
  %.not.i.i.i = icmp eq i32 %i.l, 251658240
  %i.m = ptrtoint ptr %1 to i64
  %i.n = add i64 %i.m, 32
  %i.o = inttoptr i64 %i.n to ptr                 ; 8 uses
  br i1 %.not.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 16
  %i.s = inttoptr i64 %i.r to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.o, %bb.c ]
  %i.t = zext i1 %i.g to i32
  %i.u = zext i1 %i.i to i32
  %i.v = add i32 %i.f, %i.t
  %i.w = add i32 %i.v, %i.u
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %1, align 8               ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.29) #23
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.aa) #22
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.ah) #22
  %i.aj = load ptr, ptr %1, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i32, ptr %i.ak, align 8            ; 4 uses
  %i.am = load i32, ptr %i.j, align 4
  %i.an = and i32 %i.am, 251658240
  %.not.i.i.i43 = icmp eq i32 %i.an, 251658240
  br i1 %.not.i.i.i43, label %bb.g, label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.o, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = add i64 %i.ap, 16
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit: ; preds = %bb.f, %bb.g
  %.sink.i.i.i44 = phi ptr [ %i.ar, %bb.g ], [ %i.o, %bb.f ]
  %i.as = zext i1 %i.ag to i32
  %i.at = zext i1 %i.ai to i32
  %i.au = add i32 %i.af, %i.as
  %i.av = add i32 %i.au, %i.at
  %i.aw = add i32 %i.av, %i.al
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i44, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = and i32 %i.bc, 16777215
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNK2v88internal8compiler15LoadElimination16ComputeLoopStateEPNS1_4NodeEPKNS2_13AbstractStateE:bb.a

bb.i:                                             ; preds = %bb.h
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = add i64 %i.co, 16
  %i.cq = inttoptr i64 %i.cp to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %bb.h, %bb.i
  %.sink.i.i = phi ptr [ %i.cq, %bb.i ], [ %i.cm, %bb.h ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %indvars.iv
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  store ptr %i.cs, ptr %i.b, align 8
  %i.ct = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.cu = load ptr, ptr %i.ay, align 8
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -8
  %.not.i.i.i80 = icmp eq ptr %i.ct, %i.cv
  br i1 %.not.i.i.i80, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  store ptr %i.cs, ptr %i.ct, align 8
  %i.cw = load ptr, ptr %i.ax, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.cx, ptr %i.ax, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushEOS4_.exit

bb.k:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  call void @_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_push_back_auxIJS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushEOS4_.exit

_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushEOS4_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.e, !llvm.loop !45

bb.l:                                             ; preds = %.lr.ph240, %.loopexit222
  %i.cy = phi ptr [ %i.bl, %.lr.ph240 ], [ %i.uc, %.loopexit222 ] ; 3 uses
  %.068239 = phi ptr [ %2, %.lr.ph240 ], [ %.3, %.loopexit222 ] ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.cz = load ptr, ptr %i.cy, align 8
  store ptr %i.cz, ptr %i.c, align 8
  %i.da = load ptr, ptr %i.bn, align 8
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8
  %.not.i.i81 = icmp eq ptr %i.cy, %i.db
  br i1 %.not.i.i81, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE3popEv.exit

bb.n:                                             ; preds = %bb.l
  %i.dd = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.de = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i64, ptr %i.df, align 8
  %.not7.i.i.i.i.i.i = icmp ugt i64 %i.dg, 64
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 64, ptr %i.dh, align 8
  %i.di = load ptr, ptr %i.bp, align 8
  store ptr %i.di, ptr %i.dd, align 8
  store ptr %i.dd, ptr %i.bp, align 8
  br label %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i

_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i: ; preds = %bb.p, %bb.o
  %i.dj = load ptr, ptr %i.bq, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  store ptr %i.dk, ptr %i.bq, align 8
  %i.dl = load ptr, ptr %i.dk, align 8            ; 3 uses
  store ptr %i.dl, ptr %i.bo, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 512
  store ptr %i.dm, ptr %i.bn, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE3popEv.exit

_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE3popEv.exit: ; preds = %bb.m, %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i
  %storemerge.i.i = phi ptr [ %i.dc, %bb.m ], [ %i.dl, %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i ]
  store ptr %storemerge.i.i, ptr %i.bj, align 8
  %i.dn = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not10.i.i.i, label %_ZNSt3setIPN2v88internal8compiler4NodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE3popEv.exit
  %i.do = load ptr, ptr %i.c, align 8             ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.q ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.q ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = icmp ult ptr %i.dq, %i.do               ; 3 uses
  %.19.i.i.i = select i1 %i.dr, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.dr, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i82, label %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRKS4_.exit.i.i, label %bb.q, !llvm.loop !46

_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRKS4_.exit.i.i: ; preds = %bb.q
  %i.ds = icmp eq ptr %.19.i.i.i, %i.an
  br i1 %i.ds, label %_ZNSt3setIPN2v88internal8compiler4NodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.thread, label %_ZNSt3setIPN2v88internal8compiler4NodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit

_ZNSt3setIPN2v88internal8compiler4NodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit: ; preds = %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRKS4_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dr, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.dt = load ptr, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8
  %i.du = icmp ult ptr %i.do, %i.dt
  br i1 %i.du, label %_ZNSt3setIPN2v88internal8compiler4NodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.thread, label %.loopexit222

_ZNSt3setIPN2v88internal8compiler4NodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.thread: ; preds = %_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRKS4_.exit.i.i, %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE3popEv.exit, %_ZNSt3setIPN2v88internal8compiler4NodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit
  %i.dv = call { ptr, i8 } @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE16_M_insert_uniqueIRKS4_EESt4pairISt17_Rb_tree_iteratorIS4_EbEOT_(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  %i.dw = load ptr, ptr %i.c, align 8             ; 10 uses
  %i.dx = load ptr, ptr %i.dw, align 8            ; 8 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 18
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.dy, align 2
  %i.dz = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not215 = icmp eq i8 %i.dz, 0
  br i1 %.not215, label %bb.r, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit

bb.r:                                             ; preds = %_ZNSt3setIPN2v88internal8compiler4NodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.thread
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eb = load i16, ptr %i.ea, align 8
  switch i16 %i.eb, label %.thread211 [
    i16 300, label %bb.s
    i16 315, label %bb.aa
    i16 372, label %bb.ai
    i16 373, label %bb.as
    i16 369, label %bb.bg
    i16 350, label %bb.bs
    i16 349, label %bb.bt
    i16 281, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit
    i16 354, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit
  ]

bb.s:                                             ; preds = %bb.r
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %bb.u, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22) #23
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = and i32 %i.eg, 251658240
  %.not.i.i.i83 = icmp eq i32 %i.eh, 251658240
  %i.ei = ptrtoint ptr %i.dw to i64
  %i.ej = add i64 %i.ei, 32
  %i.ek = inttoptr i64 %i.ej to ptr               ; 2 uses
  br i1 %.not.i.i.i83, label %bb.v, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.v:                                             ; preds = %bb.u
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = add i64 %i.em, 16
  %i.eo = inttoptr i64 %i.en to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.u, %bb.v
  %.sink.i.i.i84 = phi ptr [ %i.eo, %bb.v ], [ %i.ek, %bb.u ]
  %i.ep = load ptr, ptr %.sink.i.i.i84, align 8
  %i.eq = load ptr, ptr %i.ah, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %.068239, ptr %8, align 8
  store ptr %i.ep, ptr %i.ca, align 8
  store ptr null, ptr %i.cb, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.068239, i64 16 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %.not26.i.i = icmp eq ptr %i.eu, null
  br i1 %.not26.i.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.ev = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractField4KillERKNS2_14AliasStateInfoENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.eu, ptr noundef nonnull readonly align 8 dereferenceable(24) %8, ptr readnone null, ptr noundef %i.eq) ; 3 uses
  %i.ew = load ptr, ptr %i.et, align 8
  %.not27.i.i = icmp eq ptr %i.ew, %i.ev
  br i1 %.not27.i.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ex = load i64, ptr %i.er, align 8
  %i.ey = load i64, ptr %i.es, align 8            ; 2 uses
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = icmp ult i64 %i.ez, 536
  br i1 %i.fa, label %bb.y, label %bb.z, !prof !16

bb.y:                                             ; preds = %bb.x
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.eq, i64 noundef 536) #22
  %.pre.i.i.i.i = load i64, ptr %i.es, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fb = phi i64 [ %.pre.i.i.i.i, %bb.y ], [ %i.ey, %bb.x ] ; 2 uses
  %i.fc = inttoptr i64 %i.fb to ptr               ; 4 uses
  %i.fd = add i64 %i.fb, 536
  store i64 %i.fd, ptr %i.es, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.fc, ptr noundef nonnull readonly align 8 dereferenceable(536) %.068239, i64 536, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store ptr %i.ev, ptr %i.fe, align 8
  %i.ff = load ptr, ptr %i.et, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = trunc i64 %i.fk to i32
  %.neg.i.i = sub i32 %i.fl, %i.fi
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 532 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = add i32 %.neg.i.i, %i.fn
  store i32 %i.fo, ptr %i.fm, align 4
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit: ; preds = %bb.z, %bb.w, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %.2.i.i = phi ptr [ %i.fc, %bb.z ], [ null, %bb.w ], [ null, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit ] ; 2 uses
  %.not.i.i85 = icmp eq ptr %.2.i.i, null
  %i.fp = select i1 %.not.i.i85, ptr %.068239, ptr %.2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit

bb.aa:                                            ; preds = %bb.r
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %bb.ac, label %bb.ab, !prof !7

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22) #23
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = and i32 %i.fu, 251658240
  %.not.i.i.i86 = icmp eq i32 %i.fv, 251658240
  %i.fw = ptrtoint ptr %i.dw to i64
  %i.fx = add i64 %i.fw, 32
  %i.fy = inttoptr i64 %i.fx to ptr               ; 2 uses
  br i1 %.not.i.i.i86, label %bb.ad, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit88

bb.ad:                                            ; preds = %bb.ac
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = add i64 %i.ga, 16
  %i.gc = inttoptr i64 %i.gb to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit88

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit88: ; preds = %bb.ac, %bb.ad
  %.sink.i.i.i87 = phi ptr [ %i.gc, %bb.ad ], [ %i.fy, %bb.ac ]
  %i.gd = load ptr, ptr %.sink.i.i.i87, align 8
  %i.ge = load ptr, ptr %i.ah, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %.068239, ptr %7, align 8
  store ptr %i.gd, ptr %i.by, align 8
  store ptr null, ptr %i.bz, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.068239, i64 16 ; 3 uses
  %i.gi = load ptr, ptr %i.gh, align 8            ; 2 uses
  %.not26.i.i91 = icmp eq ptr %i.gi, null
  br i1 %.not26.i.i91, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit102, label %bb.ae

bb.ae:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit88
  %i.gj = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractField4KillERKNS2_14AliasStateInfoENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.gi, ptr noundef nonnull readonly align 8 dereferenceable(24) %7, ptr readnone null, ptr noundef %i.ge) ; 3 uses
  %i.gk = load ptr, ptr %i.gh, align 8
  %.not27.i.i92 = icmp eq ptr %i.gk, %i.gj
  br i1 %.not27.i.i92, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit102, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gl = load i64, ptr %i.gf, align 8
  %i.gm = load i64, ptr %i.gg, align 8            ; 2 uses
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = icmp ult i64 %i.gn, 536
  br i1 %i.go, label %bb.ag, label %bb.ah, !prof !16

bb.ag:                                            ; preds = %bb.af
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ge, i64 noundef 536) #22
  %.pre.i.i.i.i101 = load i64, ptr %i.gg, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gp = phi i64 [ %.pre.i.i.i.i101, %bb.ag ], [ %i.gm, %bb.af ] ; 2 uses
  %i.gq = inttoptr i64 %i.gp to ptr               ; 4 uses
  %i.gr = add i64 %i.gp, 536
  store i64 %i.gr, ptr %i.gg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.gq, ptr noundef nonnull readonly align 8 dereferenceable(536) %.068239, i64 536, i1 false)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store ptr %i.gj, ptr %i.gs, align 8
  %i.gt = load ptr, ptr %i.gh, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 48
  %i.gv = load i64, ptr %i.gu, align 8
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = trunc i64 %i.gy to i32
  %.neg.i.i95 = sub i32 %i.gz, %i.gw
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gq, i64 532 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = add i32 %.neg.i.i95, %i.hb
  store i32 %i.hc, ptr %i.ha, align 4
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit102

_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit102: ; preds = %bb.ah, %bb.ae, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit88
  %.2.i.i96 = phi ptr [ %i.gq, %bb.ah ], [ null, %bb.ae ], [ null, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit88 ] ; 2 uses
  %.not.i.i99 = icmp eq ptr %.2.i.i96, null
  %i.hd = select i1 %.not.i.i99, ptr %.068239, ptr %.2.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit

bb.ai:                                            ; preds = %bb.r
  %i.he = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler20ElementsTransitionOfEPKNS1_8OperatorE(ptr noundef nonnull %i.dx) #22 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0202, ptr noundef nonnull align 8 dereferenceable(16) %i.he, i64 16, i1 false)
  %.sroa.4203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %.sroa.4203.0.copyload = load ptr, ptr %.sroa.4203.0..sroa_idx, align 8 ; 2 uses
  %i.hf = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 20
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = icmp sgt i32 %i.hi, 0
  br i1 %i.hj, label %bb.ak, label %bb.aj, !prof !7

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22) #23
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 20
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = and i32 %i.hl, 251658240
  %.not.i.i.i103 = icmp eq i32 %i.hm, 251658240
  %i.hn = ptrtoint ptr %i.hf to i64
  %i.ho = add i64 %i.hn, 32
  %i.hp = inttoptr i64 %i.ho to ptr               ; 2 uses
  br i1 %.not.i.i.i103, label %bb.al, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit105

bb.al:                                            ; preds = %bb.ak
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = add i64 %i.hr, 16
  %i.ht = inttoptr i64 %i.hs to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit105

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit105: ; preds = %bb.ak, %bb.al
  %.sink.i.i.i104 = phi ptr [ %i.ht, %bb.al ], [ %i.hp, %bb.ak ]
  %i.hu = load ptr, ptr %.sink.i.i.i104, align 8  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store i64 1, ptr %13, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %.068239, i64 520
  %i.hw = load ptr, ptr %i.hv, align 8            ; 3 uses
  %.not.i106 = icmp eq ptr %i.hw, null
  br i1 %.not.i106, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit105, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.iu, %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i ], [ %i.hu, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit105 ] ; 5 uses
  %i.hx = load ptr, ptr %.0.i.i.i, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load i16, ptr %i.hy, align 8
  switch i16 %i.hz, label %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i [
    i16 278, label %bb.am
    i16 41, label %bb.am
    i16 59, label %bb.am
  ]

bb.am:                                            ; preds = %.preheader.i, %.preheader.i, %.preheader.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.ib = load i32, ptr %i.ia, align 4            ; 2 uses
  %i.ic = lshr i32 %i.ib, 24
  %i.id = and i32 %i.ic, 15                       ; 2 uses
  %.not.i.i.i.i.i.i107 = icmp eq i32 %i.id, 15
  %i.ie = ptrtoint ptr %.0.i.i.i to i64
  %i.if = add i64 %i.ie, 32                       ; 3 uses
  br i1 %.not.i.i.i.i.i.i107, label %bb.an, label %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.ig = inttoptr i64 %i.if to ptr
  %i.ih = load ptr, ptr %i.ig, align 8            ; 2 uses
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = add i64 %i.ii, 16
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.il = load i32, ptr %i.ik, align 8
  br label %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i

_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %.sroa.3.0.i.i.i.i.i.i = phi i32 [ %i.il, %bb.an ], [ %i.id, %bb.am ]
  %.sroa.0.0.in.i.i.i.i.i.i = phi i64 [ %i.ij, %bb.an ], [ %i.if, %bb.am ]
  %i.im = icmp sgt i32 %.sroa.3.0.i.i.i.i.i.i, 0
  br i1 %i.im, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i

_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i: ; preds = %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = inttoptr i64 %.sroa.0.0.in.i.i.i.i.i.i to ptr
  %i.in = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8
  %.not.i.i.i108 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i108, label %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i, label %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i

_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, %_ZNK2v88internal8compiler4Node6inputsEv.exit.i.i.i.i.i
  %i.io = and i32 %i.ib, 251658240
  %.not.i.i.i.i.i = icmp eq i32 %i.io, 251658240
  %i.ip = inttoptr i64 %i.if to ptr               ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.ao, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i

bb.ao:                                            ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = add i64 %i.ir, 16
  %i.it = inttoptr i64 %i.is to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i

_ZNK2v88internal8compiler4Node7InputAtEi.exit.i.i.i: ; preds = %bb.ao, %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i
  %.sink.i.i.i.i.i = phi ptr [ %i.it, %bb.ao ], [ %i.ip, %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.thread.i.i.i ]
  %i.iu = load ptr, ptr %.sink.i.i.i.i.i, align 8
  br label %.preheader.i, !llvm.loop !14

_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_18IsRenameEPNS1_4NodeE.exit.i.i.i, %.preheader.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8            ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.iw, null
  br i1 %.not10.i.i.i.i.i, label %.critedge, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.iw, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ix, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = icmp ult ptr %i.iz, %.0.i.i.i           ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ja, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ja, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i4.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i4.i.i, label %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.jb = icmp eq ptr %.19.i.i.i.i.i, %i.ix
  br i1 %i.jb, label %.critedge, label %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i

_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.jc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = icmp ult ptr %.0.i.i.i, %i.jd
  br i1 %i.je, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.jg = load i64, ptr %i.jf, align 8
  store i64 %i.jg, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.4203.0.copyload, ptr %6, align 8
  %i.jh = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ji = ptrtoint ptr %i.jh to i64
  store i64 %i.ji, ptr %14, align 8
  %i.jj = call noundef zeroext i1 @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE8containsERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %i.jj, label %bb.ar, label %.critedge

.critedge:                                        ; preds = %_ZNKSt8_Rb_treeIPN2v88internal8compiler4NodeESt4pairIKS4_NS1_14ZoneCompactSetINS2_6MapRefEEEESt10_Select1stISA_ESt4lessIS4_ENS1_13ZoneAllocatorISA_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %_ZN2v88internal8compiler12_GLOBAL__N_114ResolveRenamesEPNS1_4NodeE.exit.i.i, %_ZNKSt3mapIPN2v88internal8compiler4NodeENS1_14ZoneCompactSetINS2_6MapRefEEESt4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S7_EEEE4findERSC_.exit.i.i, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit105, %bb.ap
  %i.jk = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.jl = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.jm = icmp ult ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZN2v88internal10ZoneVectorIZNKS0_8compiler15LoadElimination16ComputeLoopStateEPNS2_4NodeEPKNS3_13AbstractStateEE26TransitionElementsKindInfoE9push_backEOS9_.exit, label %bb.aq, !prof !7

bb.aq:                                            ; preds = %.critedge
  %.val.i.i = load ptr, ptr %i.al, align 8
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = ptrtoint ptr %.val.i.i to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = ashr exact i64 %i.jp, 5
  %i.jr = add nsw i64 %i.jq, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIZNKS0_8compiler15LoadElimination16ComputeLoopStateEPNS2_4NodeEPKNS3_13AbstractStateEE26TransitionElementsKindInfoE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.jr)
  %.pre.i.i = load ptr, ptr %i.bw, align 8
  br label %_ZN2v88internal10ZoneVectorIZNKS0_8compiler15LoadElimination16ComputeLoopStateEPNS2_4NodeEPKNS3_13AbstractStateEE26TransitionElementsKindInfoE9push_backEOS9_.exit

_ZN2v88internal10ZoneVectorIZNKS0_8compiler15LoadElimination16ComputeLoopStateEPNS2_4NodeEPKNS3_13AbstractStateEE26TransitionElementsKindInfoE9push_backEOS9_.exit: ; preds = %.critedge, %bb.aq
  %i.js = phi ptr [ %i.jk, %.critedge ], [ %.pre.i.i, %bb.aq ] ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  store ptr %i.jt, ptr %i.bw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.js, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0202, i64 16, i1 false)
  %.sroa.0200.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store ptr %.sroa.4203.0.copyload, ptr %.sroa.0200.sroa.4.0..sroa_idx, align 8
end_hunk_2
begin_hunk_3_@_ZNK2v88internal8compiler15LoadElimination16ComputeLoopStateEPNS1_4NodeEPKNS2_13AbstractStateE:bb.a

_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit: ; preds = %bb.ba
  %i.me = add i64 %.sroa.01.0.copyload.i.i.i, -2
  %i.mf = inttoptr i64 %i.me to ptr
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load i64, ptr %i.mg, align 8            ; 2 uses
  %.not218235 = icmp eq i64 %i.mh, 0
  br i1 %.not218235, label %.loopexit223, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ba, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit
  %.0.i.i311 = phi i64 [ %i.mh, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit ], [ 1, %bb.ba ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v88internal10ZoneVectorIZNKS0_8compiler15LoadElimination16ComputeLoopStateEPNS2_4NodeEPKNS3_13AbstractStateEE26TransitionElementsKindInfoE9push_backEOS9_.exit145
  %.sroa.5197.0236 = phi i64 [ %i.nb, %_ZN2v88internal10ZoneVectorIZNKS0_8compiler15LoadElimination16ComputeLoopStateEPNS2_4NodeEPKNS3_13AbstractStateEE26TransitionElementsKindInfoE9push_backEOS9_.exit145 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.mi = call ptr @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE2atEm(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %.sroa.5197.0236)
  store ptr %i.mi, ptr %19, align 8
  %i.mj = call noundef zeroext i8 @_ZNK2v88internal8compiler6MapRef13elements_kindEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #22 ; 3 uses
  %i.mk = call noundef zeroext i8 @_ZNK2v88internal8compiler6MapRef13elements_kindEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #22 ; 3 uses
  switch i8 %i.mj, label %bb.bd [
    i8 0, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
    i8 4, label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i
    i8 2, label %bb.bb
    i8 6, label %bb.bc
  ]

bb.bb:                                            ; preds = %.lr.ph
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.bc:                                            ; preds = %.lr.ph
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

bb.bd:                                            ; preds = %.lr.ph
  br label %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i: ; preds = %bb.bd, %bb.bc, %bb.bb, %.lr.ph
  %.0.i.i142 = phi i8 [ %i.mj, %bb.bd ], [ 7, %bb.bc ], [ 3, %bb.bb ], [ 5, %.lr.ph ]
  %i.ml = icmp eq i8 %.0.i.i142, %i.mk
  br i1 %i.ml, label %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit, label %bb.be

_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i: ; preds = %.lr.ph
  %i.mm = icmp eq i8 %i.mk, 1
  br i1 %i.mm, label %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit, label %.thread.i

bb.be:                                            ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i
  %i.mn = icmp ult i8 %i.mj, 2
  br i1 %i.mn, label %.thread.i, label %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit

.thread.i:                                        ; preds = %bb.be, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i
  %i.mo = and i8 %i.mk, -2
  %i.mp = icmp ne i8 %i.mo, 2
  %i.mq = zext i1 %i.mp to i8
  br label %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit

_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit: ; preds = %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i, %bb.be, %.thread.i
  %not. = phi i8 [ 0, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.i ], [ 1, %bb.be ], [ %i.mq, %.thread.i ], [ 0, %_ZN2v88internal20GetHoleyElementsKindENS0_12ElementsKindE.exit.thread.i ]
  %.sroa.031.0.copyload = load ptr, ptr %19, align 8
  %.sroa.030.0.copyload = load ptr, ptr %17, align 8
  %i.mr = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.ms = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.mt = icmp ult ptr %i.mr, %i.ms
  br i1 %i.mt, label %_ZN2v88internal10ZoneVectorIZNKS0_8compiler15LoadElimination16ComputeLoopStateEPNS2_4NodeEPKNS3_13AbstractStateEE26TransitionElementsKindInfoE9push_backEOS9_.exit145, label %bb.bf, !prof !7

bb.bf:                                            ; preds = %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit
  %.val.i.i143 = load ptr, ptr %i.al, align 8
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = ptrtoint ptr %.val.i.i143 to i64
  %i.mw = sub i64 %i.mu, %i.mv
  %i.mx = ashr exact i64 %i.mw, 5
  %i.my = add nsw i64 %i.mx, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIZNKS0_8compiler15LoadElimination16ComputeLoopStateEPNS2_4NodeEPKNS3_13AbstractStateEE26TransitionElementsKindInfoE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.my)
  %.pre.i.i144 = load ptr, ptr %i.bw, align 8
  br label %_ZN2v88internal10ZoneVectorIZNKS0_8compiler15LoadElimination16ComputeLoopStateEPNS2_4NodeEPKNS3_13AbstractStateEE26TransitionElementsKindInfoE9push_backEOS9_.exit145

_ZN2v88internal10ZoneVectorIZNKS0_8compiler15LoadElimination16ComputeLoopStateEPNS2_4NodeEPKNS3_13AbstractStateEE26TransitionElementsKindInfoE9push_backEOS9_.exit145: ; preds = %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit, %bb.bf
  %i.mz = phi ptr [ %i.mr, %_ZN2v88internal27IsSimpleMapChangeTransitionENS0_12ElementsKindES1_.exit ], [ %.pre.i.i144, %bb.bf ] ; 5 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 32
  store ptr %i.na, ptr %i.bw, align 8
  store i8 %not., ptr %i.mz, align 8
  %.sroa.4192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store ptr %.sroa.031.0.copyload, ptr %.sroa.4192.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  store ptr %.sroa.030.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  store ptr %i.kl, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.nb = add nuw i64 %.sroa.5197.0236, 1         ; 2 uses
  %.not218 = icmp eq i64 %i.nb, %.0.i.i311
  br i1 %.not218, label %.loopexit223, label %.lr.ph

.loopexit223:                                     ; preds = %_ZN2v88internal10ZoneVectorIZNKS0_8compiler15LoadElimination16ComputeLoopStateEPNS2_4NodeEPKNS3_13AbstractStateEE26TransitionElementsKindInfoE9push_backEOS9_.exit145, %.critedge3, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit

bb.bg:                                            ; preds = %bb.r
  %i.nc = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.nd = load i32, ptr %i.nc, align 4
  %i.ne = icmp sgt i32 %i.nd, 0
  br i1 %i.ne, label %bb.bi, label %bb.bh, !prof !7

bb.bh:                                            ; preds = %bb.bg
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22) #23
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.nf = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  %i.ng = load i32, ptr %i.nf, align 4
  %i.nh = and i32 %i.ng, 251658240
  %.not.i.i.i146 = icmp eq i32 %i.nh, 251658240
  %i.ni = ptrtoint ptr %i.dw to i64
  %i.nj = add i64 %i.ni, 32
  %i.nk = inttoptr i64 %i.nj to ptr               ; 2 uses
  br i1 %.not.i.i.i146, label %bb.bj, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit148

bb.bj:                                            ; preds = %bb.bi
  %i.nl = load ptr, ptr %i.nk, align 8
  %i.nm = ptrtoint ptr %i.nl to i64
  %i.nn = add i64 %i.nm, 16
  %i.no = inttoptr i64 %i.nn to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit148

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit148: ; preds = %bb.bi, %bb.bj
  %.sink.i.i.i147 = phi ptr [ %i.no, %bb.bj ], [ %i.nk, %bb.bi ]
  %i.np = load ptr, ptr %.sink.i.i.i147, align 8  ; 2 uses
  %i.nq = load ptr, ptr %i.ah, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %.068239, ptr %4, align 8
  store ptr %i.np, ptr %i.br, align 8
  store ptr null, ptr %i.bs, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %.068239, i64 520 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8            ; 2 uses
  %.not.i.i149 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i149, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit148
  %i.nt = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination12AbstractMaps4KillERKNS2_14AliasStateInfoEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.ns, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, ptr noundef %i.nq) ; 2 uses
  %i.nu = load ptr, ptr %i.nr, align 8
  %.not12.not.i.i = icmp eq ptr %i.nu, %i.nt
  br i1 %.not12.not.i.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.nw = load i64, ptr %i.nv, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nq, i64 16 ; 3 uses
  %i.ny = load i64, ptr %i.nx, align 8            ; 2 uses
  %i.nz = sub i64 %i.nw, %i.ny
  %i.oa = icmp ult i64 %i.nz, 536
  br i1 %i.oa, label %bb.bm, label %bb.bn, !prof !16

bb.bm:                                            ; preds = %bb.bl
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.nq, i64 noundef 536) #22
  %.pre.i.i.i.i151 = load i64, ptr %i.nx, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ob = phi i64 [ %.pre.i.i.i.i151, %bb.bm ], [ %i.ny, %bb.bl ] ; 2 uses
  %i.oc = inttoptr i64 %i.ob to ptr               ; 3 uses
  %i.od = add i64 %i.ob, 536
  store i64 %i.od, ptr %i.nx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.oc, ptr noundef nonnull readonly align 8 dereferenceable(536) %.068239, i64 536, i1 false)
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 520
  store ptr %i.nt, ptr %i.oe, align 8
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit148, %bb.bk, %bb.bn
  %.1.i.i150 = phi ptr [ %i.oc, %bb.bn ], [ %.068239, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit148 ], [ %.068239, %bb.bk ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.of = load ptr, ptr %i.ah, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %.1.i.i150, ptr %3, align 8
  store ptr %i.np, ptr %i.bt, align 8
  store ptr null, ptr %i.bu, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 16 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.1.i.i150, i64 16 ; 3 uses
  %i.oj = load ptr, ptr %i.oi, align 8            ; 2 uses
  %.not26.i.i154 = icmp eq ptr %i.oj, null
  br i1 %.not26.i.i154, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit165, label %bb.bo

bb.bo:                                            ; preds = %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit
  %i.ok = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractField4KillERKNS2_14AliasStateInfoENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.oj, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, ptr readnone null, ptr noundef %i.of) ; 3 uses
  %i.ol = load ptr, ptr %i.oi, align 8
  %.not27.i.i155 = icmp eq ptr %i.ol, %i.ok
  br i1 %.not27.i.i155, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit165, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.om = load i64, ptr %i.og, align 8
  %i.on = load i64, ptr %i.oh, align 8            ; 2 uses
  %i.oo = sub i64 %i.om, %i.on
  %i.op = icmp ult i64 %i.oo, 536
  br i1 %i.op, label %bb.bq, label %bb.br, !prof !16

bb.bq:                                            ; preds = %bb.bp
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.of, i64 noundef 536) #22
  %.pre.i.i.i.i164 = load i64, ptr %i.oh, align 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.oq = phi i64 [ %.pre.i.i.i.i164, %bb.bq ], [ %i.on, %bb.bp ] ; 2 uses
  %i.or = inttoptr i64 %i.oq to ptr               ; 4 uses
  %i.os = add i64 %i.oq, 536
  store i64 %i.os, ptr %i.oh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.or, ptr noundef nonnull readonly align 8 dereferenceable(536) %.1.i.i150, i64 536, i1 false)
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  store ptr %i.ok, ptr %i.ot, align 8
  %i.ou = load ptr, ptr %i.oi, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 48
  %i.ow = load i64, ptr %i.ov, align 8
  %i.ox = trunc i64 %i.ow to i32
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ok, i64 48
  %i.oz = load i64, ptr %i.oy, align 8
  %i.pa = trunc i64 %i.oz to i32
  %.neg.i.i158 = sub i32 %i.pa, %i.ox
  %i.pb = getelementptr inbounds nuw i8, ptr %i.or, i64 532 ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4
  %i.pd = add i32 %.neg.i.i158, %i.pc
  store i32 %i.pd, ptr %i.pb, align 4
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit165

_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit165: ; preds = %bb.br, %bb.bo, %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit
  %.2.i.i159 = phi ptr [ %i.or, %bb.br ], [ null, %bb.bo ], [ null, %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit ] ; 2 uses
  %.not.i.i162 = icmp eq ptr %.2.i.i159, null
  %i.pe = select i1 %.not.i.i162, ptr %.1.i.i150, ptr %.2.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit

bb.bs:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.pf = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN2v88internal8compiler13FieldAccessOfEPKNS1_8OperatorE(ptr noundef nonnull %i.dx) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %20, ptr noundef nonnull align 8 dereferenceable(72) %i.pf, i64 72, i1 false)
  %i.pg = load ptr, ptr %i.c, align 8
  %i.ph = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination29ComputeLoopStateForStoreFieldEPNS1_4NodeEPKNS2_13AbstractStateERKNS1_11FieldAccessE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.pg, ptr noundef %.068239, ptr noundef nonnull align 8 dereferenceable(72) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit

bb.bt:                                            ; preds = %bb.r
  %i.pi = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.pj = load i32, ptr %i.pi, align 4            ; 2 uses
  %i.pk = icmp sgt i32 %i.pj, 0
  br i1 %i.pk, label %bb.bv, label %bb.bu, !prof !7

bb.bu:                                            ; preds = %bb.bt
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22) #23
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.pl = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  %i.pm = load i32, ptr %i.pl, align 4
  %i.pn = and i32 %i.pm, 251658240
  %.not.i.i.i166 = icmp eq i32 %i.pn, 251658240
  %i.po = ptrtoint ptr %i.dw to i64
  %i.pp = add i64 %i.po, 32
  %i.pq = inttoptr i64 %i.pp to ptr               ; 2 uses
  %.not217 = icmp eq i32 %i.pj, 1                 ; 2 uses
  br i1 %.not.i.i.i166, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit168, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit168.thread

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit168: ; preds = %bb.bv
  br i1 %.not217, label %bb.bw, label %bb.bx, !prof !16

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit168.thread: ; preds = %bb.bv
  br i1 %.not217, label %bb.bw, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit171, !prof !16

bb.bw:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit168.thread, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit168
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22) #23
  unreachable

bb.bx:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit168
  %i.pr = load ptr, ptr %i.pq, align 8
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = add i64 %i.ps, 16
  %i.pu = inttoptr i64 %i.pt to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit171

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit171: ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit168.thread, %bb.bx
  %.in = phi ptr [ %i.pu, %bb.bx ], [ %i.pq, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit168.thread ] ; 2 uses
  %i.pv = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.pw = load ptr, ptr %.068239, align 8         ; 2 uses
  %.not.i172 = icmp eq ptr %i.pw, null
  br i1 %.not.i172, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit, label %bb.by

bb.by:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit171
  %i.px = getelementptr inbounds nuw i8, ptr %.in, i64 8
  %i.py = load ptr, ptr %i.px, align 8
  %i.pz = load ptr, ptr %.in, align 8
  %i.qa = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination16AbstractElements4KillEPNS1_4NodeES5_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(264) %i.pw, ptr noundef %i.pz, ptr noundef readonly %i.py, ptr noundef %i.pv) ; 2 uses
  %i.qb = load ptr, ptr %.068239, align 8
  %.not13.not.i = icmp eq ptr %i.qb, %i.qa
  br i1 %.not13.not.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  %i.qd = load i64, ptr %i.qc, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pv, i64 16 ; 3 uses
  %i.qf = load i64, ptr %i.qe, align 8            ; 2 uses
  %i.qg = sub i64 %i.qd, %i.qf
  %i.qh = icmp ult i64 %i.qg, 536
  br i1 %i.qh, label %bb.ca, label %bb.cb, !prof !16

bb.ca:                                            ; preds = %bb.bz
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.pv, i64 noundef 536) #22
  %.pre.i.i.i = load i64, ptr %i.qe, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.qi = phi i64 [ %.pre.i.i.i, %bb.ca ], [ %i.qf, %bb.bz ] ; 2 uses
  %i.qj = inttoptr i64 %i.qi to ptr               ; 3 uses
  %i.qk = add i64 %i.qi, 536
  store i64 %i.qk, ptr %i.qe, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.qj, ptr noundef nonnull readonly align 8 dereferenceable(536) %.068239, i64 536, i1 false)
  store ptr %i.qa, ptr %i.qj, align 8
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit

.thread211:                                       ; preds = %bb.r
  %i.ql = load ptr, ptr %i.ah, align 8
  %i.qm = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractState7KillAllEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(536) %.068239, ptr noundef %i.ql)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %.loopexit

_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit: ; preds = %bb.cb, %bb.by, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit171, %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit102, %bb.ar, %.loopexit223, %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit165, %bb.bs, %bb.r, %bb.r, %_ZNSt3setIPN2v88internal8compiler4NodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.thread
  %.169 = phi ptr [ %.068239, %_ZNSt3setIPN2v88internal8compiler4NodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit.thread ], [ %i.fp, %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit ], [ %i.hd, %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit102 ], [ %.068239, %bb.ar ], [ %.068239, %.loopexit223 ], [ %i.pe, %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldEPNS1_4NodeENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit165 ], [ %i.ph, %bb.bs ], [ %.068239, %bb.r ], [ %.068239, %bb.r ], [ %i.qj, %bb.cb ], [ %.068239, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit171 ], [ %.068239, %bb.by ] ; 2 uses
  %i.qn = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.qo = load ptr, ptr %i.qn, align 8            ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 24
  %i.qq = load i32, ptr %i.qp, align 8
  %i.qr = icmp sgt i32 %i.qq, 0
  br i1 %i.qr, label %.lr.ph238, label %.loopexit222

.lr.ph238:                                        ; preds = %_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit, %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushEOS4_.exit177
  %i.qs = phi ptr [ %i.tx, %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushEOS4_.exit177 ], [ %i.qo, %_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit ] ; 2 uses
  %i.qt = phi ptr [ %i.tw, %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushEOS4_.exit177 ], [ %i.qn, %_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit ] ; 3 uses
  %.074237 = phi i32 [ %i.tv, %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushEOS4_.exit177 ], [ 0, %_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit ] ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 20
  %i.qv = load i32, ptr %i.qu, align 4
  %i.qw = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.qs) #22
  %i.qx = load ptr, ptr %i.qt, align 8
  %i.qy = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.qx) #22
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qt, i64 20
  %i.ra = load i32, ptr %i.qz, align 4
  %i.rb = and i32 %i.ra, 251658240
  %.not.i.i.i174 = icmp eq i32 %i.rb, 251658240
  %i.rc = ptrtoint ptr %i.qt to i64
  %i.rd = add i64 %i.rc, 32
  %i.re = inttoptr i64 %i.rd to ptr               ; 2 uses
  br i1 %.not.i.i.i174, label %bb.cc, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.cc:                                            ; preds = %.lr.ph238
  %i.rf = load ptr, ptr %i.re, align 8
  %i.rg = ptrtoint ptr %i.rf to i64
  %i.rh = add i64 %i.rg, 16
  %i.ri = inttoptr i64 %i.rh to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %.lr.ph238, %bb.cc
  %.sink.i.i.i175 = phi ptr [ %i.ri, %bb.cc ], [ %i.re, %.lr.ph238 ]
  %i.rj = zext i1 %i.qw to i32
  %i.rk = zext i1 %i.qy to i32
  %i.rl = add i32 %i.qv, %.074237
  %i.rm = add i32 %i.rl, %i.rj
  %i.rn = add i32 %i.rm, %i.rk
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i175, i64 %i.ro
  %i.rq = load ptr, ptr %i.rp, align 8            ; 2 uses
  %i.rr = load ptr, ptr %i.ax, align 8            ; 3 uses
  %i.rs = load ptr, ptr %i.ay, align 8
  %i.rt = getelementptr inbounds i8, ptr %i.rs, i64 -8
  %.not.i.i.i176 = icmp eq ptr %i.rr, %i.rt
  br i1 %.not.i.i.i176, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  store ptr %i.rq, ptr %i.rr, align 8
  %i.ru = load ptr, ptr %i.ax, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushEOS4_.exit177

bb.ce:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.rw = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.rx = load ptr, ptr %i.bq, align 8
  %i.ry = ptrtoint ptr %i.rw to i64               ; 2 uses
  %i.rz = ptrtoint ptr %i.rx to i64
  %i.sa = sub i64 %i.ry, %i.rz
  %i.sb = ashr exact i64 %i.sa, 3
  %i.sc = icmp ne ptr %i.rw, null
  %.neg.i.i.i = sext i1 %i.sc to i64
  %i.sd = add nsw i64 %i.sb, %.neg.i.i.i
  %i.se = shl nsw i64 %i.sd, 6
  %i.sf = load ptr, ptr %i.cd, align 8
  %i.sg = ptrtoint ptr %i.rr to i64
  %i.sh = ptrtoint ptr %i.sf to i64
  %i.si = sub i64 %i.sg, %i.sh
  %i.sj = ashr exact i64 %i.si, 3
  %i.sk = add nsw i64 %i.se, %i.sj
  %i.sl = load ptr, ptr %i.bn, align 8
  %i.sm = load ptr, ptr %i.bj, align 8
  %i.sn = ptrtoint ptr %i.sl to i64
  %i.so = ptrtoint ptr %i.sm to i64
  %i.sp = sub i64 %i.sn, %i.so
  %i.sq = ashr exact i64 %i.sp, 3
  %i.sr = add nsw i64 %i.sk, %i.sq
end_hunk_3
begin_hunk_4_@_ZNK2v88internal8compiler15LoadElimination16ComputeLoopStateEPNS1_4NodeEPKNS2_13AbstractStateE:bb.a

bb.cg:                                            ; preds = %bb.ce
  %i.st = load i64, ptr %i.cf, align 8
  %i.su = load ptr, ptr %i.ce, align 8
  %i.sv = ptrtoint ptr %i.su to i64
  %i.sw = sub i64 %i.ry, %i.sv
  %i.sx = ashr exact i64 %i.sw, 3
  %i.sy = sub i64 %i.st, %i.sx
  %i.sz = icmp ult i64 %i.sy, 2
  br i1 %i.sz, label %bb.ch, label %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE22_M_reserve_map_at_backEm.exit.i

bb.ch:                                            ; preds = %bb.cg
  call void @_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(96) %11, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE22_M_reserve_map_at_backEm.exit.i

_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE22_M_reserve_map_at_backEm.exit.i: ; preds = %bb.ch, %bb.cg
  %i.ta = load ptr, ptr %i.bp, align 8            ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ta, null
  br i1 %.not.i.i.i.i, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE22_M_reserve_map_at_backEm.exit.i
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load i64, ptr %i.tb, align 8
  %.not5.i.i.i.i = icmp ult i64 %i.tc, 64
  br i1 %.not5.i.i.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.td = load ptr, ptr %i.ta, align 8
  store ptr %i.td, ptr %i.bp, align 8
  br label %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_push_back_auxIJS4_EEEvDpOT_.exit

bb.ck:                                            ; preds = %bb.ci, %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE22_M_reserve_map_at_backEm.exit.i
  %i.te = load ptr, ptr %11, align 8              ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 24
  %i.tg = load i64, ptr %i.tf, align 8
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 16 ; 3 uses
  %i.ti = load i64, ptr %i.th, align 8            ; 2 uses
  %i.tj = sub i64 %i.tg, %i.ti
  %i.tk = icmp ult i64 %i.tj, 512
  br i1 %i.tk, label %bb.cl, label %_ZN2v88internal13ZoneAllocatorIPNS0_8compiler4NodeEE8allocateEm.exit.i.i.i.i, !prof !16

bb.cl:                                            ; preds = %bb.ck
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.te, i64 noundef 512) #22
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.th, align 8
  br label %_ZN2v88internal13ZoneAllocatorIPNS0_8compiler4NodeEE8allocateEm.exit.i.i.i.i

_ZN2v88internal13ZoneAllocatorIPNS0_8compiler4NodeEE8allocateEm.exit.i.i.i.i: ; preds = %bb.cl, %bb.ck
  %i.tl = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.cl ], [ %i.ti, %bb.ck ] ; 2 uses
  %i.tm = inttoptr i64 %i.tl to ptr
  %i.tn = add i64 %i.tl, 512
  store i64 %i.tn, ptr %i.th, align 8
  br label %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_push_back_auxIJS4_EEEvDpOT_.exit

_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_push_back_auxIJS4_EEEvDpOT_.exit: ; preds = %bb.cj, %_ZN2v88internal13ZoneAllocatorIPNS0_8compiler4NodeEE8allocateEm.exit.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.ta, %bb.cj ], [ %i.tm, %_ZN2v88internal13ZoneAllocatorIPNS0_8compiler4NodeEE8allocateEm.exit.i.i.i.i ]
  %i.to = load ptr, ptr %i.cc, align 8
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  store ptr %.0.i.i.i.i, ptr %i.tp, align 8
  %i.tq = load ptr, ptr %i.ax, align 8
  store ptr %i.rq, ptr %i.tq, align 8
  %i.tr = load ptr, ptr %i.cc, align 8
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8 ; 2 uses
  store ptr %i.ts, ptr %i.cc, align 8
  %i.tt = load ptr, ptr %i.ts, align 8            ; 3 uses
  store ptr %i.tt, ptr %i.cd, align 8
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 512
  store ptr %i.tu, ptr %i.ay, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushEOS4_.exit177

_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushEOS4_.exit177: ; preds = %bb.cd, %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_push_back_auxIJS4_EEEvDpOT_.exit
  %storemerge = phi ptr [ %i.rv, %bb.cd ], [ %i.tt, %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_push_back_auxIJS4_EEEvDpOT_.exit ]
  store ptr %storemerge, ptr %i.ax, align 8
  %i.tv = add nuw nsw i32 %.074237, 1             ; 2 uses
  %i.tw = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.tx = load ptr, ptr %i.tw, align 8            ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 24
  %i.tz = load i32, ptr %i.ty, align 8
  %i.ua = icmp slt i32 %i.tv, %i.tz
  br i1 %i.ua, label %.lr.ph238, label %.loopexit222, !llvm.loop !47

.loopexit222:                                     ; preds = %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushEOS4_.exit177, %_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit, %_ZNSt3setIPN2v88internal8compiler4NodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit
  %.3 = phi ptr [ %.068239, %_ZNSt3setIPN2v88internal8compiler4NodeESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE4findERKS4_.exit ], [ %.169, %_ZNK2v88internal8compiler15LoadElimination13AbstractState11KillElementEPNS1_4NodeES5_PNS0_4ZoneE.exit ], [ %.169, %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushEOS4_.exit177 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.ub = load ptr, ptr %i.ax, align 8
  %i.uc = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.ud = icmp eq ptr %i.ub, %i.uc
  br i1 %i.ud, label %._crit_edge, label %bb.l, !llvm.loop !48

._crit_edge:                                      ; preds = %.loopexit222
  %.val77.pre = load ptr, ptr %i.al, align 8      ; 3 uses
  %.val79.pre = load ptr, ptr %i.bw, align 8      ; 3 uses
  %.not241 = icmp eq ptr %.val77.pre, %.val79.pre
  br i1 %.not241, label %.loopexit, label %.lr.ph245

.lr.ph245:                                        ; preds = %._crit_edge
  %i.ue = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.uf = getelementptr inbounds nuw i8, ptr %21, i64 16
  br label %bb.cm

.lr.ph250:                                        ; preds = %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit
  %i.ug = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.uh = getelementptr inbounds nuw i8, ptr %22, i64 16
  br label %bb.cr

bb.cm:                                            ; preds = %.lr.ph245, %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit
  %.4243 = phi ptr [ %.3, %.lr.ph245 ], [ %.1.i181, %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit ] ; 5 uses
  %.075242 = phi ptr [ %.val77.pre, %.lr.ph245 ], [ %i.va, %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.ui = getelementptr inbounds nuw i8, ptr %.075242, i64 24
  %i.uj = load ptr, ptr %i.ui, align 8
  %i.uk = getelementptr inbounds nuw i8, ptr %.075242, i64 8
  %.sroa.0.0.copyload.i178 = load ptr, ptr %i.uk, align 8
  store ptr %.4243, ptr %21, align 8
  store ptr %i.uj, ptr %i.ue, align 8
  store ptr %.sroa.0.0.copyload.i178, ptr %i.uf, align 8
  %i.ul = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.4243, i64 520 ; 2 uses
  %i.un = load ptr, ptr %i.um, align 8            ; 2 uses
  %.not.i179 = icmp eq ptr %i.un, null
  br i1 %.not.i179, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.uo = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination12AbstractMaps4KillERKNS2_14AliasStateInfoEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.un, ptr noundef nonnull readonly align 8 dereferenceable(24) %21, ptr noundef %i.ul) ; 2 uses
  %i.up = load ptr, ptr %i.um, align 8
  %.not12.not.i = icmp eq ptr %i.up, %i.uo
  br i1 %.not12.not.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ul, i64 24
  %i.ur = load i64, ptr %i.uq, align 8
  %i.us = getelementptr inbounds nuw i8, ptr %i.ul, i64 16 ; 3 uses
  %i.ut = load i64, ptr %i.us, align 8            ; 2 uses
  %i.uu = sub i64 %i.ur, %i.ut
  %i.uv = icmp ult i64 %i.uu, 536
  br i1 %i.uv, label %bb.cp, label %bb.cq, !prof !16

bb.cp:                                            ; preds = %bb.co
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ul, i64 noundef 536) #22
  %.pre.i.i.i182 = load i64, ptr %i.us, align 8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.uw = phi i64 [ %.pre.i.i.i182, %bb.cp ], [ %i.ut, %bb.co ] ; 2 uses
  %i.ux = inttoptr i64 %i.uw to ptr               ; 3 uses
  %i.uy = add i64 %i.uw, 536
  store i64 %i.uy, ptr %i.us, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.ux, ptr noundef nonnull readonly align 8 dereferenceable(536) %.4243, i64 536, i1 false)
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 520
  store ptr %i.uo, ptr %i.uz, align 8
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsERKNS2_14AliasStateInfoEPNS0_4ZoneE.exit: ; preds = %bb.cm, %bb.cn, %bb.cq
  %.1.i181 = phi ptr [ %i.ux, %bb.cq ], [ %.4243, %bb.cm ], [ %.4243, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.va = getelementptr inbounds nuw i8, ptr %.075242, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.va, %.val79.pre
  br i1 %.not, label %.lr.ph250, label %bb.cm

bb.cr:                                            ; preds = %.lr.ph250, %bb.cx
  %.5249 = phi ptr [ %.1.i181, %.lr.ph250 ], [ %.6, %bb.cx ] ; 5 uses
  %.073248 = phi ptr [ %.val77.pre, %.lr.ph250 ], [ %i.wf, %bb.cx ] ; 4 uses
  %i.vb = load i8, ptr %.073248, align 8
  %cond = icmp eq i8 %i.vb, 1
  br i1 %cond, label %bb.cs, label %bb.cx

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.vc = getelementptr inbounds nuw i8, ptr %.073248, i64 24
  %i.vd = load ptr, ptr %i.vc, align 8
  %i.ve = getelementptr inbounds nuw i8, ptr %.073248, i64 8
  %.sroa.0.0.copyload.i183 = load ptr, ptr %i.ve, align 8
  store ptr %.5249, ptr %22, align 8
  store ptr %i.vd, ptr %i.ug, align 8
  store ptr %.sroa.0.0.copyload.i183, ptr %i.uh, align 8
  %i.vf = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 16 ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.5249, i64 16 ; 3 uses
  %i.vj = load ptr, ptr %i.vi, align 8            ; 2 uses
  %.not26.i = icmp eq ptr %i.vj, null
  br i1 %.not26.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.vk = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination13AbstractField4KillERKNS2_14AliasStateInfoENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.vj, ptr noundef nonnull readonly align 8 dereferenceable(24) %22, ptr null, ptr noundef %i.vf) ; 3 uses
  %i.vl = load ptr, ptr %i.vi, align 8
  %.not27.i = icmp eq ptr %i.vl, %i.vk
  br i1 %.not27.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.vm = load i64, ptr %i.vg, align 8
  %i.vn = load i64, ptr %i.vh, align 8            ; 2 uses
  %i.vo = sub i64 %i.vm, %i.vn
  %i.vp = icmp ult i64 %i.vo, 536
  br i1 %i.vp, label %bb.cv, label %bb.cw, !prof !16

bb.cv:                                            ; preds = %bb.cu
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.vf, i64 noundef 536) #22
  %.pre.i.i.i186 = load i64, ptr %i.vh, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.vq = phi i64 [ %.pre.i.i.i186, %bb.cv ], [ %i.vn, %bb.cu ] ; 2 uses
  %i.vr = inttoptr i64 %i.vq to ptr               ; 4 uses
  %i.vs = add i64 %i.vq, 536
  store i64 %i.vs, ptr %i.vh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.vr, ptr noundef nonnull readonly align 8 dereferenceable(536) %.5249, i64 536, i1 false)
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  store ptr %i.vk, ptr %i.vt, align 8
  %i.vu = load ptr, ptr %i.vi, align 8
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 48
  %i.vw = load i64, ptr %i.vv, align 8
  %i.vx = trunc i64 %i.vw to i32
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vk, i64 48
  %i.vz = load i64, ptr %i.vy, align 8
  %i.wa = trunc i64 %i.vz to i32
  %.neg.i = sub i32 %i.wa, %i.vx
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vr, i64 532 ; 2 uses
  %i.wc = load i32, ptr %i.wb, align 4
  %i.wd = add i32 %.neg.i, %i.wc
  store i32 %i.wd, ptr %i.wb, align 4
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit: ; preds = %bb.cw, %bb.ct, %bb.cs
  %.2.i = phi ptr [ %i.vr, %bb.cw ], [ null, %bb.ct ], [ null, %bb.cs ] ; 2 uses
  %.not.i185 = icmp eq ptr %.2.i, null
  %i.we = select i1 %.not.i185, ptr %.5249, ptr %.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cr, %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit
  %.6 = phi ptr [ %i.we, %_ZNK2v88internal8compiler15LoadElimination13AbstractState9KillFieldERKNS2_14AliasStateInfoENS2_10IndexRangeENS0_11MaybeHandleINS0_4NameEEEPNS0_4ZoneE.exit ], [ %.5249, %bb.cr ] ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.073248, i64 32 ; 2 uses
  %.not76 = icmp eq ptr %i.wf, %.val79.pre
  br i1 %.not76, label %.loopexit, label %bb.cr

.loopexit:                                        ; preds = %bb.cx, %.preheader224, %._crit_edge, %.thread211
  %.2 = phi ptr [ %i.qm, %.thread211 ], [ %.3, %._crit_edge ], [ %2, %.preheader224 ], [ %.6, %bb.cx ]
  %i.wg = load ptr, ptr %i.ao, align 8
  call void @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef %i.wg)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.wh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.wi = load ptr, ptr %i.wh, align 8
  %.not.i.i.i187 = icmp eq ptr %i.wi, null
  br i1 %.not.i.i.i187, label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEED2Ev.exit, label %bb.cy

bb.cy:                                            ; preds = %.loopexit
  %i.wj = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.wk = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.wl = load ptr, ptr %i.wk, align 8            ; 2 uses
  %i.wm = load ptr, ptr %i.wj, align 8            ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wo = icmp ult ptr %i.wl, %i.wn
  br i1 %i.wo, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cy
  %i.wp = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %.pre.i.i.i.i188 = load ptr, ptr %i.wp, align 8
  br label %bb.cz

bb.cz:                                            ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.wq = phi ptr [ %.pre.i.i.i.i188, %.lr.ph.i.i.i.i ], [ %i.ww, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i ] ; 3 uses
  %.06.i.i.i.i = phi ptr [ %i.wl, %.lr.ph.i.i.i.i ], [ %i.wx, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i ] ; 3 uses
  %i.wr = load ptr, ptr %.06.i.i.i.i, align 8     ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.wq, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  %i.wt = load i64, ptr %i.ws, align 8
  %.not7.i.i.i.i.i.i.i = icmp ugt i64 %i.wt, 64
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  store i64 64, ptr %i.wu, align 8
  %i.wv = load ptr, ptr %i.wp, align 8
  store ptr %i.wv, ptr %i.wr, align 8
  store ptr %i.wr, ptr %i.wp, align 8
  br label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i: ; preds = %bb.db, %bb.da
  %i.ww = phi ptr [ %i.wq, %bb.da ], [ %i.wr, %bb.db ]
  %i.wx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.wy = icmp ult ptr %.06.i.i.i.i, %i.wm
  br i1 %i.wy, label %bb.cz, label %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i, !llvm.loop !49

_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i, %bb.cy
  %i.wz = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.xa = load i64, ptr %i.wz, align 8            ; 2 uses
  %i.xb = and i64 %i.xa, 2305843009213693950
  %i.xc = icmp eq i64 %i.xb, 0
  br i1 %i.xc, label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i
  %i.xd = load ptr, ptr %i.wh, align 8            ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  store i64 %i.xa, ptr %i.xe, align 8
  store ptr null, ptr %i.xd, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEED2Ev.exit

_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEED2Ev.exit: ; preds = %.loopexit, %_ZNSt11_Deque_baseIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler15LoadElimination29ComputeLoopStateForStoreFieldEPNS1_4NodeEPKNS2_13AbstractStateERKNS1_11FieldAccessE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::LoadElimination::AliasStateInfo", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::compiler::LoadElimination::AliasStateInfo", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 251658240
  %.not.i.i.i = icmp eq i32 %i.g, 251658240
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, 32
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 16
  %i.n = inttoptr i64 %i.m to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.c ]
  %i.o = load ptr, ptr %.sink.i.i.i, align 8      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = load i32, ptr %i.p, align 4              ; 3 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %2, ptr %5, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.o, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 520 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = call noundef ptr @_ZNK2v88internal8compiler15LoadElimination12AbstractMaps4KillERKNS2_14AliasStateInfoEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr noundef %i.t) ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8
  %.not12.not.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not12.not.i.i, label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = sub i64 %i.ab, %i.ad
  %i.af = icmp ult i64 %i.ae, 536
  br i1 %i.af, label %bb.h, label %bb.i, !prof !16

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 noundef 536) #22
  %.pre.i.i.i.i = load i64, ptr %i.ac, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = phi i64 [ %.pre.i.i.i.i, %bb.h ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr               ; 3 uses
  %i.ai = add i64 %i.ag, 536
  store i64 %i.ai, ptr %i.ac, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(536) %2, i64 536, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 520
  store ptr %i.y, ptr %i.aj, align 8
  br label %_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit

_ZNK2v88internal8compiler15LoadElimination13AbstractState8KillMapsEPNS1_4NodeEPNS0_4ZoneE.exit: ; preds = %bb.e, %bb.f, %bb.i
  %.1.i.i = phi ptr [ %i.ah, %bb.i ], [ %2, %bb.e ], [ %2, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.x

bb.j:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.al = load i8, ptr %i.ak, align 8
  switch i8 %i.al, label %bb.l [
end_hunk_4
