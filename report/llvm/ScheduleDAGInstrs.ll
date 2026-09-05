Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ScheduleDAGInstrs?download=true
inline.NumInlined: 3141
inline.NumDeleted: 1690
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvm17ScheduleDAGInstrs10fixupKillsERNS_17MachineBasicBlockE:bb.a
  %i.eh = and i64 %i.eg, %i.ec
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !338
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.55.013.i, i64 2
  %i.ej = load i16, ptr %.sroa.55.013.i, align 2, !tbaa !311 ; 2 uses
  %i.ek = sext i16 %i.ej to i32
  %i.el = add i32 %.sroa.9.012.i, %i.ek
  %.not.i.i.i26 = icmp eq i16 %i.ej, 0
  br i1 %.not.i.i.i26, label %_ZN4llvm12LiveRegUnits9removeRegENS_10MCRegisterE.exit, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i

bb.l:                                             ; preds = %.lr.ph93
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.11.092, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !285
  tail call void @_ZN4llvm12LiveRegUnits22removeRegsNotPreservedEPKj(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef %i.en) #24
  br label %_ZN4llvm12LiveRegUnits9removeRegENS_10MCRegisterE.exit

_ZN4llvm12LiveRegUnits9removeRegENS_10MCRegisterE.exit: ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i, %.lr.ph93, %bb.j, %bb.k, %bb.l, %bb.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.11.092, i64 32 ; 4 uses
  %i.ep = icmp eq ptr %i.eo, %.sroa.18.091
  br i1 %i.ep, label %.lr.ph.i.i.preheader, label %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZN4llvm12LiveRegUnits9removeRegENS_10MCRegisterE.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.049.090, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !379 ; 3 uses
  %i.es = icmp eq ptr %i.er, %i.bv
  br i1 %i.es, label %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit, label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %.lr.ph.i.i.preheader
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 44
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !302
  %i.ev = and i32 %i.eu, 4
  %.not.i.i165 = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i165, label %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit, label %.lr.ph166

.lr.ph.i.i:                                       ; preds = %.lr.ph166
  %i.ew = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !379 ; 3 uses
  %i.ey = icmp eq ptr %i.ex, %i.bv
  br i1 %i.ey, label %.lr.ph.i.i._ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit_crit_edge, label %.lr.ph78, !llvm.loop !746

.lr.ph78:                                         ; preds = %.lr.ph.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 44
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !302
  %i.fb = and i32 %i.fa, 4
  %.not.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i, label %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit, label %.lr.ph166, !llvm.loop !746

.lr.ph166:                                        ; preds = %.lr.ph78.preheader, %.lr.ph78
  %i.fc = phi ptr [ %i.ex, %.lr.ph78 ], [ %i.er, %.lr.ph78.preheader ] ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  %i.fe = load i24, ptr %i.fd, align 8            ; 4 uses
  %i.ff = icmp eq i24 %i.fe, 0
  br i1 %i.ff, label %.lr.ph.i.i, label %._ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit_crit_edge, !llvm.loop !746

._ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit_crit_edge: ; preds = %.lr.ph166
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !305 ; 2 uses
  %i.fi = zext i24 %i.fe to i64
  %.idx.i.i27.le = shl nuw nsw i64 %i.fi, 5
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.idx.i.i27.le
  br label %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit, !llvm.loop !746

.lr.ph.i.i._ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit_crit_edge: ; preds = %.lr.ph.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !305 ; 2 uses
  %i.fm = zext i24 %i.fe to i64
  %.idx.i.i27.le238.a = shl nuw nsw i64 %i.fm, 5
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.idx.i.i27.le238.a
  br label %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit, !llvm.loop !746

_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit: ; preds = %.lr.ph78
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !305 ; 2 uses
  %i.fq = zext i24 %i.fe to i64
  %.idx.i.i27.le240 = shl nuw nsw i64 %i.fq, 5
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.idx.i.i27.le240
  br label %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit

_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit: ; preds = %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit, %.lr.ph78.preheader, %.lr.ph.i.i._ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit_crit_edge, %.lr.ph.i.i.preheader, %._ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit_crit_edge, %_ZN4llvm12LiveRegUnits9removeRegENS_10MCRegisterE.exit
  %.sroa.049.2 = phi ptr [ %.sroa.049.090, %_ZN4llvm12LiveRegUnits9removeRegENS_10MCRegisterE.exit ], [ %i.fc, %._ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit_crit_edge ], [ %i.bv, %.lr.ph.i.i.preheader ], [ %i.bv, %.lr.ph78.preheader ], [ %i.bv, %.lr.ph.i.i._ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit_crit_edge ], [ %i.bv, %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit ]
  %.sroa.18.4 = phi ptr [ %.sroa.18.091, %_ZN4llvm12LiveRegUnits9removeRegENS_10MCRegisterE.exit ], [ %i.fj, %._ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit_crit_edge ], [ %.sroa.18.091, %.lr.ph.i.i.preheader ], [ %.sroa.18.091, %.lr.ph78.preheader ], [ %i.fn, %.lr.ph.i.i._ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit_crit_edge ], [ %i.fr, %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit ] ; 2 uses
  %.sroa.11.4 = phi ptr [ %i.eo, %_ZN4llvm12LiveRegUnits9removeRegENS_10MCRegisterE.exit ], [ %i.fh, %._ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit_crit_edge ], [ %i.eo, %.lr.ph.i.i.preheader ], [ %i.eo, %.lr.ph78.preheader ], [ %i.fl, %.lr.ph.i.i._ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit_crit_edge ], [ %i.fp, %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.loopexit ] ; 2 uses
  %.not57 = icmp eq ptr %.sroa.11.4, %.sroa.18.4
  br i1 %.not57, label %._crit_edge.loopexit, label %.lr.ph93, !llvm.loop !749

bb.m:                                             ; preds = %._crit_edge
  %i.fs = load ptr, ptr %i.bi, align 8, !tbaa !339, !nonnull !31, !align !273
  %i.ft = getelementptr i8, ptr %.sroa.053.099, i64 32
  %.val21 = load ptr, ptr %i.ft, align 8, !tbaa !305
  %i.fu = getelementptr i8, ptr %.sroa.053.099, i64 40
  %.val22 = load i24, ptr %i.fu, align 8
  tail call fastcc void @_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(520) %i.fs, ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr %.val21, i24 %.val22, i1 noundef zeroext true)
  br label %.loopexit

bb.n:                                             ; preds = %._crit_edge
  %i.fv = load i32, ptr %i.bj, align 4, !tbaa !301
  %i.fw = icmp eq i32 %i.fv, 22
  br i1 %i.fw, label %bb.o, label %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit

bb.o:                                             ; preds = %bb.n
  %i.fx = getelementptr i8, ptr %.sroa.053.099, i64 32
  %.val19 = load ptr, ptr %i.fx, align 8, !tbaa !305 ; 2 uses
  %i.fy = getelementptr i8, ptr %.sroa.053.099, i64 40
  %.val20 = load i24, ptr %i.fy, align 8          ; 2 uses
  %i.fz = zext i24 %.val20 to i64
  %.idx.i = shl nuw nsw i64 %i.fz, 5
  %i.ga = getelementptr inbounds nuw i8, ptr %.val19, i64 %.idx.i
  %.not13.i = icmp eq i24 %.val20, 0
  br i1 %.not13.i, label %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.gb = load ptr, ptr %i.bi, align 8, !tbaa !339, !nonnull !31, !align !273
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 392
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.i, %.lr.ph.i
  %.014.i = phi ptr [ %i.hu, %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.i ], [ %.val19, %.lr.ph.i ] ; 4 uses
  %i.gd = load i32, ptr %.014.i, align 8          ; 3 uses
  %i.ge = and i32 %i.gd, 805306623
  %or.cond.i = icmp ne i32 %i.ge, 0
  %i.gf = and i32 %i.gd, 17825536
  %or.cond10.not.i = icmp eq i32 %i.gf, 16777216
  %or.cond12.i = or i1 %or.cond.i, %or.cond10.not.i
  br i1 %or.cond12.i, label %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.i, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.i

_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.i: ; preds = %.lr.ph.split.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.014.i, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !285 ; 4 uses
  %.not19.i = icmp eq i32 %i.gh, 0
  br i1 %.not19.i, label %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.i
  %i.gi = load ptr, ptr %i.a, align 8, !tbaa !426 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !325, !noalias !762 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.gk, null
  br i1 %.not17.i.i, label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i, label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %bb.p
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !326, !noalias !762
  %i.gn = zext i32 %i.gh to i64
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.gm, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !328, !noalias !762 ; 2 uses
  %i.gr = lshr i32 %i.gq, 12
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gs
  %i.gu = and i32 %i.gq, 4095
  %i.gv = load ptr, ptr %i.d, align 8, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i, %.lr.ph.i.i28
  %.sroa.510.019.i.i = phi ptr [ %i.gt, %.lr.ph.i.i28 ], [ %i.he, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i ] ; 2 uses
  %.sroa.9.018.i.i = phi i32 [ %i.gu, %.lr.ph.i.i28 ], [ %i.hh, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i ] ; 3 uses
  %i.gw = and i32 %.sroa.9.018.i.i, 63
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = shl nuw i64 1, %i.gx
  %i.gz = lshr i32 %.sroa.9.018.i.i, 6
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.ha
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !338
  %i.hd = and i64 %i.gy, %i.hc
  %.not16.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not16.i.i, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i, label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread7.i

_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i:         ; preds = %bb.q
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.510.019.i.i, i64 2
  %i.hf = load i16, ptr %.sroa.510.019.i.i, align 2, !tbaa !311 ; 2 uses
  %i.hg = sext i16 %i.hf to i32
  %i.hh = add i32 %.sroa.9.018.i.i, %i.hg
  %.not.i.i.i.i29 = icmp eq i16 %i.hf, 0
  br i1 %.not.i.i.i.i29, label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i, label %bb.q

_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i: ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i, %bb.p
  %i.hi = and i32 %i.gh, 63
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = shl nuw i64 1, %i.hj
  %i.hl = lshr i32 %i.gh, 6
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = load ptr, ptr %i.gc, align 8, !tbaa !34
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hm
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !338
  %i.hq = and i64 %i.hp, %i.hk
  %.fr.i = freeze i64 %i.hq
  %.not11.i30 = icmp eq i64 %.fr.i, 0
  %spec.select.i31 = select i1 %.not11.i30, i32 67108864, i32 0
  br label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread7.i

_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread7.i: ; preds = %bb.q, %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i
  %i.hr = phi i32 [ %spec.select.i31, %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.i ], [ 0, %bb.q ]
  %i.hs = and i32 %i.gd, -872415488
  %i.ht = or disjoint i32 %i.hr, %i.hs
  store i32 %i.ht, ptr %.014.i, align 8
  br label %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.i

_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.i: ; preds = %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread7.i, %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.i, %.lr.ph.split.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.014.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.hu, %i.ga
  br i1 %.not.i, label %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit, label %.lr.ph.split.i

_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit: ; preds = %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.i, %bb.n, %bb.o
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.053.099, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !379 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 44
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !302
  %i.hz = and i32 %i.hy, 8
  %.not5994 = icmp eq i32 %i.hz, 0
  br i1 %.not5994, label %.preheader.preheader, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %.sroa.0.095 = phi ptr [ %i.ib, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit ], [ %i.hw, %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.095, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !379 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 44
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !302
  %i.ie = and i32 %i.id, 8
  %.not59 = icmp eq i32 %i.ie, 0
  br i1 %.not59, label %.preheader.preheader, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, !llvm.loop !752

.preheader.preheader:                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit
  %.sroa.0.1.ph = phi ptr [ %i.hw, %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit ], [ %i.ib, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit38
  %.sroa.0.1 = phi ptr [ %i.lg, %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit38 ], [ %.sroa.0.1.ph, %.preheader.preheader ] ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 52
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !301
  switch i32 %i.ig, label %bb.r [
    i32 25, label %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit38
    i32 18, label %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit38
    i32 17, label %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit38
    i32 16, label %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit38
    i32 15, label %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit38
    i32 14, label %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit38
  ]

bb.r:                                             ; preds = %.preheader
  %i.ih = getelementptr i8, ptr %.sroa.0.1, i64 32
  %.val = load ptr, ptr %i.ih, align 8, !tbaa !305 ; 2 uses
  %i.ii = getelementptr i8, ptr %.sroa.0.1, i64 40
  %.val18 = load i24, ptr %i.ii, align 8          ; 2 uses
  %i.ij = zext i24 %.val18 to i64
  %.idx.i35 = shl nuw nsw i64 %i.ij, 5
  %i.ik = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i35
  %.not13.i36 = icmp eq i24 %.val18, 0
  br i1 %.not13.i36, label %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit38, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.r
  %i.il = load ptr, ptr %i.bi, align 8, !tbaa !339, !nonnull !31, !align !273
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 392
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.us.i, %.lr.ph.i37
  %.014.us.i = phi ptr [ %i.le, %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.us.i ], [ %.val, %.lr.ph.i37 ] ; 4 uses
  %i.in = load i32, ptr %.014.us.i, align 8       ; 3 uses
  %i.io = and i32 %i.in, 805306623
  %or.cond.us.i = icmp ne i32 %i.io, 0
  %i.ip = and i32 %i.in, 17825536
  %or.cond10.not.us.i = icmp eq i32 %i.ip, 16777216
  %or.cond12.us.i = or i1 %or.cond.us.i, %or.cond10.not.us.i
  br i1 %or.cond12.us.i, label %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.us.i, label %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.us.i

_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.us.i: ; preds = %.lr.ph.split.us.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !285 ; 5 uses
  %.not19.us.i = icmp eq i32 %i.ir, 0
  br i1 %.not19.us.i, label %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.us.i, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.us.i
  %i.is = load ptr, ptr %i.a, align 8, !tbaa !426 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 56
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !325, !noalias !763 ; 2 uses
  %.not17.i.us.i = icmp eq ptr %i.iu, null
  br i1 %.not17.i.us.i, label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.us.i, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.s
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !326, !noalias !763
  %i.ix = zext i32 %i.ir to i64
  %i.iy = getelementptr inbounds nuw [24 x i8], ptr %i.iw, i64 %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !328, !noalias !763 ; 2 uses
  %i.jb = lshr i32 %i.ja, 12
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %i.jc
  %i.je = and i32 %i.ja, 4095
  %i.jf = load ptr, ptr %i.d, align 8, !tbaa !34
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.us.i, %.lr.ph.i.us.i
  %.sroa.510.019.i.us.i = phi ptr [ %i.jd, %.lr.ph.i.us.i ], [ %i.jo, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.us.i ] ; 2 uses
  %.sroa.9.018.i.us.i = phi i32 [ %i.je, %.lr.ph.i.us.i ], [ %i.jr, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.us.i ] ; 3 uses
  %i.jg = and i32 %.sroa.9.018.i.us.i, 63
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = shl nuw i64 1, %i.jh
  %i.jj = lshr i32 %.sroa.9.018.i.us.i, 6
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.jk
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !338
  %i.jn = and i64 %i.ji, %i.jm
  %.not16.i.us.i = icmp eq i64 %i.jn, 0
  br i1 %.not16.i.us.i, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.us.i, label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread7.us.i

_ZN4llvm17MCRegUnitIteratorppEv.exit.i.us.i:      ; preds = %bb.t
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.510.019.i.us.i, i64 2
  %i.jp = load i16, ptr %.sroa.510.019.i.us.i, align 2, !tbaa !311 ; 2 uses
  %i.jq = sext i16 %i.jp to i32
  %i.jr = add i32 %.sroa.9.018.i.us.i, %i.jq
  %.not.i.i.i.us.i = icmp eq i16 %i.jp, 0
  br i1 %.not.i.i.i.us.i, label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.us.i, label %bb.t

_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.us.i: ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.us.i, %bb.s
  %i.js = and i32 %i.ir, 63
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = shl nuw i64 1, %i.jt
  %i.jv = lshr i32 %i.ir, 6
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = load ptr, ptr %i.im, align 8, !tbaa !34
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.jw
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !338
  %i.ka = and i64 %i.jz, %i.ju
  %.fr.us.i = freeze i64 %i.ka
  %.not11.us.i = icmp eq i64 %.fr.us.i, 0
  %spec.select.us.i = select i1 %.not11.us.i, i32 67108864, i32 0
  br label %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread7.us.i

_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread7.us.i: ; preds = %bb.t, %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.us.i
  %i.kb = phi i32 [ %spec.select.us.i, %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.us.i ], [ 0, %bb.t ]
  %i.kc = and i32 %i.in, -872415488
  %i.kd = or disjoint i32 %i.kb, %i.kc
  store i32 %i.kd, ptr %.014.us.i, align 8
  %i.ke = load ptr, ptr %i.a, align 8, !tbaa !426 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 56
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !325, !noalias !764 ; 2 uses
  %.not11.i.us.i = icmp eq ptr %i.kg, null
  br i1 %.not11.i.us.i, label %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.us.i, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i.us.i

_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i.us.i: ; preds = %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread7.us.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !326, !noalias !764
  %i.kj = zext i32 %i.ir to i64
  %i.kk = getelementptr inbounds nuw [24 x i8], ptr %i.ki, i64 %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !328, !noalias !764 ; 2 uses
  %i.kn = lshr i32 %i.km, 12
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.kg, i64 %i.ko
  %i.kq = and i32 %i.km, 4095
  %i.kr = load ptr, ptr %i.d, align 8, !tbaa !34
  br label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i20.us.i

_ZN4llvm17MCRegUnitIteratorppEv.exit.i20.us.i:    ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i20.us.i, %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i.us.i
  %.sroa.55.013.i.us.i = phi ptr [ %i.kp, %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i.us.i ], [ %i.la, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i20.us.i ] ; 2 uses
  %.sroa.9.012.i.us.i = phi i32 [ %i.kq, %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph.i.us.i ], [ %i.ld, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i20.us.i ] ; 3 uses
  %i.ks = and i32 %.sroa.9.012.i.us.i, 63
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = shl nuw i64 1, %i.kt
  %i.kv = lshr i32 %.sroa.9.012.i.us.i, 6
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.kw ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !338
  %i.kz = or i64 %i.ku, %i.ky
  store i64 %i.kz, ptr %i.kx, align 8, !tbaa !338
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.55.013.i.us.i, i64 2
  %i.lb = load i16, ptr %.sroa.55.013.i.us.i, align 2, !tbaa !311 ; 2 uses
  %i.lc = sext i16 %i.lb to i32
  %i.ld = add i32 %.sroa.9.012.i.us.i, %i.lc
  %.not.i.i.i21.us.i = icmp eq i16 %i.lb, 0
  br i1 %.not.i.i.i21.us.i, label %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.us.i, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i20.us.i

_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.us.i: ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i20.us.i, %_ZNK4llvm12LiveRegUnits9availableENS_10MCRegisterE.exit.thread7.us.i, %_ZNK4llvm14MachineOperand8readsRegEv.exit.thread.us.i, %.lr.ph.split.us.i
  %i.le = getelementptr inbounds nuw i8, ptr %.014.us.i, i64 32 ; 2 uses
  %.not.us.i = icmp eq ptr %i.le, %i.ik
  br i1 %.not.us.i, label %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit38, label %.lr.ph.split.us.i

_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit38: ; preds = %_ZN4llvm12LiveRegUnits6addRegENS_10MCRegisterE.exit.us.i, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %bb.r
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.1, align 8
  %i.lf = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.lg = inttoptr i64 %i.lf to ptr               ; 2 uses
  %.not60 = icmp eq ptr %.sroa.053.099, %i.lg
  br i1 %.not60, label %.loopexit, label %.preheader, !llvm.loop !757

.loopexit:                                        ; preds = %_ZL11toggleKillsRKN4llvm19MachineRegisterInfoERNS_12LiveRegUnitsERNS_12MachineInstrEb.exit38, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.m
  %.0.copyload.i.i.i.i.i.i.i.i.i39 = load i64, ptr %.sroa.053.099, align 8
  %i.lh = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i39, -8
  %i.li = inttoptr i64 %i.lh to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.li) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.li, align 8
  %i.lj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i40 = icmp eq i64 %i.lj, 0
  br i1 %.not.i.i.i.i40, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %.loopexit
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 44
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !302
  %i.lm = and i32 %i.ll, 4
  %.not45.i.i.i.i = icmp eq i32 %i.lm, 0
  br i1 %.not45.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.lo, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %i.li, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
end_hunk_0
