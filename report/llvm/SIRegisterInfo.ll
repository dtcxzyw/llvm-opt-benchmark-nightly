Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIRegisterInfo?download=true
inline.NumInlined: 3359
inline.NumDeleted: 1309
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZNK4llvm14SIRegisterInfo15findReachingDefENS_8RegisterEjRNS_12MachineInstrERNS_19MachineRegisterInfoEPNS_13LiveIntervalsE:bb.a
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.fl, i8 0, i64 32, i1 false), !noalias !1589
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !1592, !noalias !1589
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  store ptr %i.fm, ptr %i.fo, align 16, !tbaa !1593, !noalias !1589
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  store i64 0, ptr %i.fp, align 8, !tbaa !1594, !noalias !1589
  br label %_ZN4llvm9LiveRangeC2Eb.exit.i

_ZN4llvm9LiveRangeC2Eb.exit.i:                    ; preds = %bb.p, %bb.o
  %storemerge.i.i = phi ptr [ %i.fl, %bb.p ], [ null, %bb.o ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fb, i64 96
  store ptr %storemerge.i.i, ptr %i.fq, align 8, !tbaa !1164
  %i.fr = load ptr, ptr %i.eq, align 8, !tbaa !202
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.ex
  store ptr %i.fb, ptr %i.fs, align 8, !tbaa !1162
  tail call void @_ZN4llvm13LiveIntervals19computeRegUnitRangeERNS_9LiveRangeENS_9MCRegUnitE(ptr noundef nonnull align 8 dereferenceable(424) %5, ptr noundef nonnull align 8 dereferenceable(104) %i.fb, i32 noundef %.sroa.10.0163) #27
  br label %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit

_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit: ; preds = %bb.n, %_ZN4llvm9LiveRangeC2Eb.exit.i
  %.0.i85 = phi ptr [ %i.fa, %bb.n ], [ %i.fb, %_ZN4llvm9LiveRangeC2Eb.exit.i ] ; 3 uses
  %i.ft = tail call noundef ptr @_ZN4llvm9LiveRange4findENS_9SlotIndexE(ptr noundef nonnull align 8 dereferenceable(104) %.0.i85, i64 %.sroa.010.0.copyload.i.i) #27 ; 3 uses
  %i.fu = load ptr, ptr %.0.i85, align 8, !tbaa !202
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.i85, i64 8
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !227
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.fu, i64 %i.fx
  %.not.i.i86 = icmp eq ptr %i.ft, %i.fy
  br i1 %.not.i.i86, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit
  %.0.copyload.i.i.i.i.i.i.i.i87 = load i64, ptr %i.ft, align 8 ; 2 uses
  %i.fz = and i64 %.0.copyload.i.i.i.i.i.i.i.i87, -8
  %i.ga = inttoptr i64 %i.fz to ptr
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !1026
  %i.gd = trunc i64 %.0.copyload.i.i.i.i.i.i.i.i87 to i32
  %i.ge = lshr i32 %i.gd, 1
  %i.gf = and i32 %i.ge, 3
  %i.gg = or i32 %i.gf, %i.gc
  %i.gh = load i32, ptr %i.et, align 8, !tbaa !1026
  %i.gi = or i32 %i.gh, %i.ew
  %.not7.i.i88 = icmp ugt i32 %i.gg, %i.gi
  br i1 %.not7.i.i88, label %.critedge, label %_ZNK4llvm9LiveRange11getVNInfoAtENS_9SlotIndexE.exit89

_ZNK4llvm9LiveRange11getVNInfoAtENS_9SlotIndexE.exit89: ; preds = %bb.q
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !1583 ; 3 uses
  %.not.not = icmp eq ptr %i.gk, null
  br i1 %.not.not, label %.critedge, label %bb.r

bb.r:                                             ; preds = %_ZNK4llvm9LiveRange11getVNInfoAtENS_9SlotIndexE.exit89
  %i.gl = icmp ugt i64 %.sroa.0127.0162, 7
  br i1 %i.gl, label %bb.s, label %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.gm = and i64 %.sroa.0127.0162, -8
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !970 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %.sroa.09.0.copyload = load i64, ptr %i.gq, align 8, !tbaa !8
  %i.gr = and i64 %.sroa.09.0.copyload, -8
  %i.gs = inttoptr i64 %i.gr to ptr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !970 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !549 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !549 ; 2 uses
  %.not.i90 = icmp eq ptr %i.gw, %i.gy
  br i1 %.not.i90, label %bb.t, label %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit

bb.t:                                             ; preds = %bb.s
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 56
  %.sroa.0.018.i = load ptr, ptr %i.gz, align 8, !tbaa !461 ; 2 uses
  %.not1419.i = icmp eq ptr %.sroa.0.018.i, %i.gp
  br i1 %.not1419.i, label %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.0.020.i = phi ptr [ %.sroa.0.0.i, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i ], [ %.sroa.0.018.i, %bb.t ] ; 7 uses
  %.not15.not.i = icmp eq ptr %.sroa.0.020.i, %i.gu
  br i1 %.not15.not.i, label %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit.thread140, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.020.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.020.i, align 8
  %i.ha = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.ha, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.u
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i, i64 44
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !554
  %i.hd = and i32 %i.hc, 8
  %.not34.i.i.i.i = icmp eq i32 %i.hd, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.hf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %.sroa.0.020.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !461 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 44
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !554
  %i.hi = and i32 %i.hh, 8
  %.not3.i.i.i.i = icmp eq i32 %i.hi, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !1053

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %bb.u
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.0.020.i, %bb.u ], [ %.sroa.0.020.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.hf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %.sroa.0.0.i = load ptr, ptr %i.hj, align 8, !tbaa !461 ; 2 uses
  %.not14.i = icmp eq ptr %.sroa.0.0.i, %i.gp
  br i1 %.not14.i, label %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit.thread, label %.lr.ph.i, !llvm.loop !1595

_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit: ; preds = %bb.s
  %i.hk = tail call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %i.b, ptr noundef %i.gw, ptr noundef %i.gy) #27
  br i1 %i.hk, label %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit.thread, label %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit.thread140

_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit.thread: ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, %bb.t, %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit, %bb.r
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !8
  br label %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit.thread140

_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit.thread140: ; preds = %.lr.ph.i, %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit, %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit.thread
  %.sroa.0127.1 = phi i64 [ %i.hm, %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit.thread ], [ %.sroa.0127.0162, %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit ], [ %.sroa.0127.0162, %.lr.ph.i ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.6114.0164, i64 2
  %i.ho = load i16, ptr %.sroa.6114.0164, align 2, !tbaa !9 ; 2 uses
  %i.hp = sext i16 %i.ho to i32
  %i.hq = add i32 %.sroa.10.0163, %i.hp
  %.not.i.i92 = icmp eq i16 %i.ho, 0
  br i1 %.not.i.i92, label %.critedge77, label %bb.n

.critedge77:                                      ; preds = %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit.thread140, %bb.m, %bb.l
  %.sroa.0127.3 = phi i64 [ %i.ed, %bb.l ], [ 0, %bb.m ], [ %.sroa.0127.1, %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit.thread140 ]
  %i.hr = and i64 %.sroa.0127.3, -8
  %i.hs = inttoptr i64 %i.hr to ptr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !970 ; 5 uses
  %.not74 = icmp eq ptr %i.hu, null
  br i1 %.not74, label %.critedge, label %bb.v

bb.v:                                             ; preds = %.critedge77
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !549 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !549 ; 2 uses
  %.not.i93 = icmp eq ptr %i.hw, %i.hy
  br i1 %.not.i93, label %bb.w, label %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit111

bb.w:                                             ; preds = %bb.v
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 56
  %.sroa.0.018.i95 = load ptr, ptr %i.hz, align 8, !tbaa !461 ; 2 uses
  %.not1419.i96 = icmp eq ptr %.sroa.0.018.i95, %i.hu
  br i1 %.not1419.i96, label %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit111.thread, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %bb.w, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i102
  %.sroa.0.020.i98 = phi ptr [ %.sroa.0.0.i104, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i102 ], [ %.sroa.0.018.i95, %bb.w ] ; 7 uses
  %.not15.not.i99 = icmp eq ptr %.sroa.0.020.i98, %3
  br i1 %.not15.not.i99, label %.critedge, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i97
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.020.i98) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i100 = load i64, ptr %.sroa.0.020.i98, align 8
  %i.ia = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i100, 4
  %.not.i.i.i.i101 = icmp eq i64 %i.ia, 0
  br i1 %.not.i.i.i.i101, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i106, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i102

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i106: ; preds = %bb.x
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i98, i64 44
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !554
  %i.id = and i32 %i.ic, 8
  %.not34.i.i.i.i107 = icmp eq i32 %i.id, 0
  br i1 %.not34.i.i.i.i107, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i102, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i108

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i108: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i106, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i108
  %.sroa.0.05.i.i.i.i109 = phi ptr [ %i.if, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i108 ], [ %.sroa.0.020.i98, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i106 ]
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i109, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !461 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 44
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !554
  %i.ii = and i32 %i.ih, 8
  %.not3.i.i.i.i110 = icmp eq i32 %i.ii, 0
  br i1 %.not3.i.i.i.i110, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i102, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i108, !llvm.loop !1053

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i102: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i108, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i106, %bb.x
  %.sroa.0.1.i.i.i.i103 = phi ptr [ %.sroa.0.020.i98, %bb.x ], [ %.sroa.0.020.i98, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i106 ], [ %i.if, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i108 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i103, i64 8
  %.sroa.0.0.i104 = load ptr, ptr %i.ij, align 8, !tbaa !461 ; 2 uses
  %.not14.i105 = icmp eq ptr %.sroa.0.0.i104, %i.hu
  br i1 %.not14.i105, label %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit111.thread, label %.lr.ph.i97, !llvm.loop !1595

_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit111: ; preds = %bb.v
  %i.ik = tail call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %i.b, ptr noundef %i.hw, ptr noundef %i.hy) #27
  br i1 %i.ik, label %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit111.thread, label %.critedge

_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit111.thread: ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i102, %bb.w, %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit111
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit, %bb.q, %_ZNK4llvm9LiveRange11getVNInfoAtENS_9SlotIndexE.exit89, %_ZNK4llvm9LiveRange11getVNInfoAtENS_9SlotIndexE.exit, %.lr.ph.i97, %bb.i, %bb.h, %bb.j, %bb.k, %bb.d, %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit111.thread, %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit111, %_ZNK4llvm9LiveRange11getVNInfoAtENS_9SlotIndexE.exit83, %.critedge77, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit
  %.5 = phi ptr [ null, %.critedge77 ], [ null, %_ZNK4llvm9LiveRange11getVNInfoAtENS_9SlotIndexE.exit83 ], [ null, %bb.d ], [ null, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit ], [ null, %.lr.ph.i97 ], [ null, %bb.h ], [ null, %bb.i ], [ %i.hu, %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit111.thread ], [ null, %_ZNK4llvm20MachineDominatorTree9dominatesEPKNS_12MachineInstrES3_.exit111 ], [ null, %bb.k ], [ null, %bb.j ], [ null, %_ZNK4llvm9LiveRange11getVNInfoAtENS_9SlotIndexE.exit ], [ null, %_ZNK4llvm9LiveRange11getVNInfoAtENS_9SlotIndexE.exit89 ], [ null, %bb.q ], [ null, %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit ]
  ret ptr %.5
}

declare i64 @_ZNK4llvm19MachineRegisterInfo21getMaxLaneMaskForVRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i16 @_ZNK4llvm14SIRegisterInfo16get32BitRegisterEt(ptr noundef nonnull align 8 dereferenceable(408) %0, i16 noundef zeroext %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = zext i16 %1 to i32                       ; 4 uses
  %i.b = tail call i32 @_ZNK4llvm14MCRegisterInfo19getMatchingSuperRegENS_10MCRegisterEjPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.a, i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1024)) #27
  %i.c = trunc i32 %i.b to i16                    ; 2 uses
  %.not25 = icmp eq i16 %i.c, 0
  br i1 %.not25, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_ZNK4llvm14MCRegisterInfo19getMatchingSuperRegENS_10MCRegisterEjPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.a, i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1408)) #27
  %i.e = trunc i32 %i.d to i16                    ; 2 uses
  %.not25.1 = icmp eq i16 %i.e, 0
  br i1 %.not25.1, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @_ZNK4llvm14MCRegisterInfo19getMatchingSuperRegENS_10MCRegisterEjPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.a, i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1216)) #27
  %i.g = trunc i32 %i.f to i16                    ; 2 uses
  %.not25.2 = icmp eq i16 %i.g, 0
  br i1 %.not25.2, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @_ZNK4llvm14MCRegisterInfo19getMatchingSuperRegENS_10MCRegisterEjPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 %i.a, i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1024)) #27
  %i.i = trunc i32 %i.h to i16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.4 = phi i16 [ %i.i, %bb.d ], [ %i.c, %bb.a ], [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  ret i16 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14SIRegisterInfo19isProperlyAlignedRCERKNS_15MCRegisterClassE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(62) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254, !nonnull !193, !align !194
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 900
  %i.d = load i8, ptr %i.c, align 4, !tbaa !1532, !range !200, !noundef !193
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.g = load i8, ptr %i.f, align 2, !tbaa !396
  %i.h = and i8 %i.g, 28
  switch i8 %i.h, label %bb.c [
    i8 4, label %_ZNK4llvm8TypeSizecvmEv.exit
    i8 8, label %_ZNK4llvm8TypeSizecvmEv.exit21
    i8 12, label %_ZNK4llvm8TypeSizecvmEv.exit24
  ]

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !404
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.n = load i32, ptr %i.m, align 8, !tbaa !405
  %i.o = mul i32 %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = load i16, ptr %i.p, align 4, !tbaa !43
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = add i32 %i.o, %i.r
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !406
  %i.w = tail call noundef ptr @_ZNK4llvm14SIRegisterInfo23getVGPRClassForBitWidthEj(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.v) #30
  br label %.sink.split

_ZNK4llvm8TypeSizecvmEv.exit21:                   ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !404
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !405
  %i.ad = mul i32 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !43
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = add i32 %i.ad, %i.ag
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !406
  %i.al = tail call noundef ptr @_ZNK4llvm14SIRegisterInfo23getAGPRClassForBitWidthEj(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.ak) #30
  br label %.sink.split

_ZNK4llvm8TypeSizecvmEv.exit24:                   ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !404
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !405
  %i.as = mul i32 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.au = load i16, ptr %i.at, align 4, !tbaa !43
  %i.av = zext i16 %i.au to i32                   ; 2 uses
  %i.aw = add i32 %i.as, %i.av
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !406
  %i.ba = tail call noundef ptr @_ZNK4llvm14SIRegisterInfo30getVectorSuperClassForBitWidthEj(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.az) #30
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %_ZNK4llvm8TypeSizecvmEv.exit21, %_ZNK4llvm8TypeSizecvmEv.exit24
  %.sink42 = phi ptr [ %i.ba, %_ZNK4llvm8TypeSizecvmEv.exit24 ], [ %i.al, %_ZNK4llvm8TypeSizecvmEv.exit21 ], [ %i.w, %_ZNK4llvm8TypeSizecvmEv.exit ] ; 2 uses
  %.sink37 = phi i32 [ %i.av, %_ZNK4llvm8TypeSizecvmEv.exit24 ], [ %i.ag, %_ZNK4llvm8TypeSizecvmEv.exit21 ], [ %i.r, %_ZNK4llvm8TypeSizecvmEv.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink42, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !1533
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %.sink42, i64 %i.bd
  %i.bf = lshr i32 %.sink37, 5
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !52
  %i.bj = and i32 %.sink37, 31
  %i.bk = lshr i32 %i.bi, %i.bj
  %i.bl = trunc i32 %i.bk to i1
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.bl, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZNK4llvm14SIRegisterInfo13getAllSGPR128ERKNS_15MachineFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 9024), align 8, !tbaa !236
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 9024), i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !254, !nonnull !193, !align !194
  %i.f = tail call noundef i32 @_ZNK4llvm12GCNSubtarget14getMaxNumSGPRsERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(520232) %i.e, ptr noundef nonnull align 8 dereferenceable(1065) %1) #27
  %i.g = lshr i32 %i.f, 2
  %i.h = zext nneg i32 %i.g to i64
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.h, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZNK4llvm14SIRegisterInfo12getAllSGPR64ERKNS_15MachineFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 4032), align 8, !tbaa !236
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 4032), i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !254, !nonnull !193, !align !194
  %i.f = tail call noundef i32 @_ZNK4llvm12GCNSubtarget14getMaxNumSGPRsERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(520232) %i.e, ptr noundef nonnull align 8 dereferenceable(1065) %1) #27
  %i.g = lshr i32 %i.f, 1
  %i.h = zext nneg i32 %i.g to i64
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.h, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZNK4llvm14SIRegisterInfo12getAllSGPR32ERKNS_15MachineFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1856), align 8, !tbaa !236
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1856), i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !254, !nonnull !193, !align !194
  %i.f = tail call noundef i32 @_ZNK4llvm12GCNSubtarget14getMaxNumSGPRsERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(520232) %i.e, ptr noundef nonnull align 8 dereferenceable(1065) %1) #27
  %i.g = zext i32 %i.f to i64
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.g, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 129) i32 @_ZNK4llvm14SIRegisterInfo25getSubRegAlignmentNumBitsEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.b = load i8, ptr %i.a, align 2, !tbaa !396
  %i.c = and i8 %i.b, 28
  switch i8 %i.c, label %bb.d [
    i8 16, label %bb.b
    i8 8, label %bb.c
    i8 4, label %bb.c
    i8 12, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK4llvm18TargetRegisterInfo16getSubRegIdxSizeEj(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 noundef %2) #27
  %.sroa.speculated8 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 128)
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.e = tail call noundef i32 @_ZNK4llvm18TargetRegisterInfo16getSubRegIdxSizeEj(ptr noundef nonnull align 8 dereferenceable(316) %0, i32 noundef %2) #27
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.e, i32 32)
  br label %bb.d
end_hunk_0
