Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GCNIterativeScheduler?download=true
inline.NumInlined: 1421
inline.NumDeleted: 788
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm21GCNIterativeScheduler14scheduleRegionIRSt6vectorIPNS_12MachineInstrESaIS4_EEEEvRNS0_6RegionEOT_RKNS_14GCNRegPressureE:bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.cm, %i.ci
  br i1 %.not.i.i.i.i.i, label %._crit_edge, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZN4llvm12MachineInstr8all_defsEv.exit:           ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.sroa.011.1.i.i = phi ptr [ %i.ce, %bb.f ], [ %.sroa.011.0.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not6874 = icmp eq ptr %.sroa.011.1.i.i, %i.ci
  br i1 %.not6874, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %.lr.ph, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, %bb.m, %_ZN4llvm12MachineInstr8all_defsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %i.i, ptr %4, align 8, !tbaa !55
  store i32 0, ptr %i.j, align 8, !tbaa !56
  store i32 8, ptr %i.k, align 4, !tbaa !57
  store ptr %i.m, ptr %i.l, align 8, !tbaa !55
  store i32 0, ptr %i.n, align 8, !tbaa !56
  store i32 8, ptr %i.o, align 4, !tbaa !57
  store ptr %i.q, ptr %i.p, align 8, !tbaa !55
  store i32 0, ptr %i.r, align 8, !tbaa !56
  store i32 8, ptr %i.s, align 4, !tbaa !57
  %i.cn = load ptr, ptr %i.t, align 8, !tbaa !628
  %i.co = load ptr, ptr %i.u, align 8, !tbaa !629, !nonnull !286, !align !287
  call void @_ZN4llvm16RegisterOperands7collectERKNS_12MachineInstrERKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(432) %4, ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(316) %i.cn, ptr noundef nonnull align 8 dereferenceable(520) %i.co, i1 noundef zeroext true, i1 noundef zeroext false) #17
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !260 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !664 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !39 ; 2 uses
  %i.cu = and i32 %i.ct, 4
  %.not2.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not2.i.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.sroa.0.03.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i ], [ %i.ae, %._crit_edge ]
  %.0.copyload.i.i.i.i.i.i.i.i.i45 = load i64, ptr %.sroa.0.03.i.i.i, align 8
  %i.cv = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i45, -8
  %i.cw = inttoptr i64 %i.cv to ptr               ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 44
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !39
  %i.cz = and i32 %i.cy, 4
  %.not.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i: ; preds = %.lr.ph.i.i.i, %._crit_edge
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %i.ae, %._crit_edge ], [ %i.cw, %.lr.ph.i.i.i ] ; 3 uses
  %i.da = and i32 %i.ct, 8
  %.not3.i.i.i = icmp eq i32 %i.da, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, label %.lr.ph.i11.i.i

.lr.ph.i11.i.i:                                   ; preds = %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, %.lr.ph.i11.i.i
  %.sroa.0.04.i.i.i = phi ptr [ %i.dc, %.lr.ph.i11.i.i ], [ %i.ae, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !40 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 44
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !39
  %i.df = and i32 %i.de, 8
  %.not.i12.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i12.i.i, label %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, label %.lr.ph.i11.i.i, !llvm.loop !7

_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i: ; preds = %.lr.ph.i11.i.i, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i
  %.sroa.0.0.lcssa.i13.i.i = phi ptr [ %i.ae, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i ], [ %i.dc, %.lr.ph.i11.i.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i13.i.i, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !40 ; 3 uses
  %.not8.i.i.i = icmp eq ptr %.sroa.0.0.lcssa.i.i.i, %i.dh
  br i1 %.not8.i.i.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i, label %.lr.ph.i14.i.i

.lr.ph.i14.i.i:                                   ; preds = %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, %.critedge2.i.i.i
  %.sroa.03.09.i.i.i = phi ptr [ %i.dl, %.critedge2.i.i.i ], [ %.sroa.0.0.lcssa.i.i.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 52
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !38
  switch i32 %i.dj, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i [
    i32 25, label %.critedge2.i.i.i
    i32 18, label %.critedge2.i.i.i
    i32 17, label %.critedge2.i.i.i
    i32 16, label %.critedge2.i.i.i
    i32 15, label %.critedge2.i.i.i
    i32 14, label %.critedge2.i.i.i
  ]

.critedge2.i.i.i:                                 ; preds = %.lr.ph.i14.i.i, %.lr.ph.i14.i.i, %.lr.ph.i14.i.i, %.lr.ph.i14.i.i, %.lr.ph.i14.i.i, %.lr.ph.i14.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !40 ; 2 uses
  %.not.i15.i.i = icmp eq ptr %i.dl, %i.dh
  br i1 %.not.i15.i.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i, label %.lr.ph.i14.i.i, !llvm.loop !8

_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i: ; preds = %.critedge2.i.i.i, %.lr.ph.i14.i.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i
  %i.dm = phi ptr [ %.sroa.0.0.lcssa.i.i.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i ], [ %i.dh, %.critedge2.i.i.i ], [ %.sroa.03.09.i.i.i, %.lr.ph.i14.i.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cr, i64 104
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !667, !noalias !805 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cr, i64 112
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !668, !noalias !805 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cr, i64 124
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !669, !noalias !805 ; 3 uses
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %.loopexit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i
  %i.du = add i32 %i.ds, -1                       ; 2 uses
  %i.dv = ptrtoint ptr %i.dm to i64
  %i.dw = mul i64 %i.dv, -4658895280553007687     ; 2 uses
  %i.dx = lshr i64 %i.dw, 31
  %i.dy = xor i64 %i.dx, %i.dw
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = and i32 %i.du, %i.dz                    ; 3 uses
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = lshr i64 %i.eb, 5
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !476, !noalias !806
  %i.ef = and i32 %i.ea, 31
  %i.eg = lshr i32 %i.ee, %i.ef
  %i.eh = trunc i32 %i.eg to i1
  br i1 %i.eh, label %.lr.ph.i.i.i.i.i46, label %.loopexit.i.i.i.i, !prof !670

.lr.ph.i.i.i.i.i46:                               ; preds = %bb.h, %bb.i
  %i.ei = phi i64 [ %i.eo, %bb.i ], [ %i.eb, %bb.h ] ; 2 uses
  %.017.i.i.i.i.i = phi i32 [ %i.en, %bb.i ], [ %i.ea, %bb.h ]
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !625, !noalias !806
  %i.el = icmp eq ptr %i.dm, %i.ek
  br i1 %i.el, label %_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit, label %bb.i, !prof !270

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i46
  %i.em = add nuw i32 %.017.i.i.i.i.i, 1
  %i.en = and i32 %i.em, %i.du                    ; 3 uses
  %i.eo = zext i32 %i.en to i64                   ; 2 uses
  %i.ep = lshr i64 %i.eo, 5
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !476, !noalias !806
  %i.es = and i32 %i.en, 31
  %i.et = lshr i32 %i.er, %i.es
  %i.eu = trunc i32 %i.et to i1
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i46, label %.loopexit.i.i.i.i, !prof !671

.loopexit.i.i.i.i:                                ; preds = %bb.i, %bb.h, %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i
  %i.ev = zext i32 %i.ds to i64
  br label %_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit

_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit: ; preds = %.lr.ph.i.i.i.i.i46, %.loopexit.i.i.i.i
  %i.ew = phi i64 [ %i.ev, %.loopexit.i.i.i.i ], [ %i.ei, %.lr.ph.i.i.i.i.i46 ]
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.sroa.010.0.copyload.i.i = load i64, ptr %i.ey, align 8, !tbaa !266
  %i.ez = and i64 %.sroa.010.0.copyload.i.i, -8
  %i.fa = or disjoint i64 %i.ez, 4
  %i.fb = load ptr, ptr %i.u, align 8, !tbaa !629, !nonnull !286, !align !287
  call void @_ZN4llvm16RegisterOperands18adjustLaneLivenessERKNS_13LiveIntervalsERKNS_19MachineRegisterInfoENS_9SlotIndexEPNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(432) %4, ptr noundef nonnull align 8 dereferenceable(424) %i.cp, ptr noundef nonnull align 8 dereferenceable(520) %i.fb, i64 %i.fa, ptr noundef nonnull %i.ae) #17
  %i.fc = load ptr, ptr %i.p, align 8, !tbaa !55  ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.q
  br i1 %i.fd, label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit
  call void @free(ptr noundef %i.fc) #17
  br label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i: ; preds = %bb.j, %_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit
  %i.fe = load ptr, ptr %i.l, align 8, !tbaa !55  ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.m
  br i1 %i.ff, label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i
  call void @free(ptr noundef %i.fe) #17
  br label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i

_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i: ; preds = %bb.k, %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i
  %i.fg = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.i
  br i1 %i.fh, label %_ZN4llvm16RegisterOperandsD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i
  call void @free(ptr noundef %i.fg) #17
  br label %_ZN4llvm16RegisterOperandsD2Ev.exit

_ZN4llvm16RegisterOperandsD2Ev.exit:              ; preds = %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

.lr.ph:                                           ; preds = %_ZN4llvm12MachineInstr8all_defsEv.exit, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit
  %.sroa.050.075 = phi ptr [ %.sroa.050.1, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit ], [ %.sroa.011.1.i.i, %_ZN4llvm12MachineInstr8all_defsEv.exit ] ; 3 uses
  %i.fi = load i32, ptr %.sroa.050.075, align 8
  %i.fj = and i32 %i.fi, -268435457
  store i32 %i.fj, ptr %.sroa.050.075, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.050.075, i64 32 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.fk, %i.ci
  br i1 %.not1.i.i, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %bb.m
  %.sroa.050.1 = phi ptr [ %i.fo, %bb.m ], [ %i.fk, %.lr.ph ] ; 4 uses
  %i.fl = load i32, ptr %.sroa.050.1, align 8
  %i.fm = and i32 %i.fl, 16777471
  %i.fn = icmp eq i32 %i.fm, 16777216
  br i1 %i.fn, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.050.1, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fo, %i.ci
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph.i.i, !llvm.loop !5

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit: ; preds = %.lr.ph.i.i
  %.not68 = icmp eq ptr %.sroa.050.1, %i.ci
  br i1 %.not68, label %._crit_edge, label %.lr.ph

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %_ZN4llvm16RegisterOperandsD2Ev.exit, %bb.e
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !40
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.061.078, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fr, %i.c
  br i1 %.not, label %._crit_edge81.loopexit, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm21GCNIterativeScheduler21sortRegionsByPressureEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(6280) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6104
  %.val = load ptr, ptr %i.a, align 8, !tbaa !284 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6112
  %.val1 = load ptr, ptr %i.b, align 8, !tbaa !284 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %.val, %.val1
  br i1 %.not.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorIPNS_21GCNIterativeScheduler6RegionESaIS4_EEZNS2_21sortRegionsByPressureEjE3$_0EEvOT_T0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %.val1 to i64
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 3
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_21sortRegionsByPressureEjE3$_0EEEvT_SF_T0_T1_"(ptr %.val, ptr %.val1, i64 noundef %i.i, ptr nonnull readonly %0, i32 %1)
  %i.j = icmp sgt i64 %i.e, 128
  br i1 %i.j, label %bb.c, label %.preheader.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i, %bb.c
  %.sroa.0.024.i.idx.i.i.i.i = phi i64 [ 8, %bb.c ], [ %.sroa.0.024.i.add.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i ] ; 4 uses
  %.pn23.i.i.i.i.i = phi ptr [ %.val, %bb.c ], [ %.sroa.0.024.i.ptr.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.0.024.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.024.i.idx.i.i.i.i ; 5 uses
  %.val.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !285
  %i.l = load ptr, ptr %.sroa.0.024.i.ptr.i.i.i.i, align 8, !tbaa !282
  %i.m = load ptr, ptr %.val, align 8, !tbaa !282
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.p = tail call noundef zeroext i1 @_ZNK4llvm14GCNRegPressure4lessERKNS_15MachineFunctionERKS0_j(ptr noundef nonnull align 4 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(1065) %.val.val.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.o, i32 noundef %1) #17
  %i.q = load ptr, ptr %.sroa.0.024.i.ptr.i.i.i.i, align 8, !tbaa !282 ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = icmp samesign ugt i64 %.sroa.0.024.i.idx.i.i.i.i, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !270

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.val, i64 %.sroa.0.024.i.idx.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.pn23.i.i.i.i.i, i64 8
  %i.t = load ptr, ptr %.val, align 8, !tbaa !282
  store ptr %i.t, ptr %i.s, align 8, !tbaa !282
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 20 ; 2 uses
  %.val.val10.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !285
  %i.v = load ptr, ptr %.pn23.i.i.i.i.i, align 8, !tbaa !282
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.x = tail call noundef zeroext i1 @_ZNK4llvm14GCNRegPressure4lessERKNS_15MachineFunctionERKS0_j(ptr noundef nonnull align 4 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(1065) %.val.val10.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.u, i32 noundef %1) #17
  br i1 %i.x, label %.lr.ph.i.i12.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i

.lr.ph.i.i12.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i12.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i12.i.i.i.i ], [ %.pn23.i.i.i.i.i, %bb.h ] ; 4 uses
  %.sroa.06.011.i.i.i.i.i.i = phi ptr [ %.sroa.0.012.i.i.i.i.i.i, %.lr.ph.i.i12.i.i.i.i ], [ %.sroa.0.024.i.ptr.i.i.i.i, %bb.h ]
  %i.y = load ptr, ptr %.sroa.0.012.i.i.i.i.i.i, align 8, !tbaa !282
  store ptr %i.y, ptr %.sroa.06.011.i.i.i.i.i.i, align 8, !tbaa !282
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.val.val.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !285
  %i.z = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !tbaa !282
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ab = tail call noundef zeroext i1 @_ZNK4llvm14GCNRegPressure4lessERKNS_15MachineFunctionERKS0_j(ptr noundef nonnull align 4 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(1065) %.val.val.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.u, i32 noundef %1) #17
  br i1 %i.ab, label %.lr.ph.i.i12.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i, !llvm.loop !807

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i12.i.i.i.i, %bb.h, %bb.g, %bb.f
  %.sink.i.i.i.i.i = phi ptr [ %.val, %bb.g ], [ %.val, %bb.f ], [ %.sroa.0.024.i.ptr.i.i.i.i, %bb.h ], [ %.sroa.0.012.i.i.i.i.i.i, %.lr.ph.i.i12.i.i.i.i ]
  store ptr %i.q, ptr %.sink.i.i.i.i.i, align 8, !tbaa !282
  %.sroa.0.024.i.add.i.i.i.i = add nuw nsw i64 %.sroa.0.024.i.idx.i.i.i.i, 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.024.i.add.i.i.i.i, 128
  br i1 %.not.i.i.i.i.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_21sortRegionsByPressureEjE3$_0EEEvT_SF_T0_.exit.i.i.i.i", label %bb.d, !llvm.loop !808

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_21sortRegionsByPressureEjE3$_0EEEvT_SF_T0_.exit.i.i.i.i": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.ac, %.val1
  br i1 %.not9.i.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorIPNS_21GCNIterativeScheduler6RegionESaIS4_EEZNS2_21sortRegionsByPressureEjE3$_0EEvOT_T0_.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_21sortRegionsByPressureEjE3$_0EEEvT_SF_T0_.exit.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_21sortRegionsByPressureEjE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"
  %.sroa.0.010.i.i.i.i.i.i = phi ptr [ %i.am, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_21sortRegionsByPressureEjE3$_0EEEvT_T0_.exit.i.i.i.i.i.i" ], [ %i.ac, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_21sortRegionsByPressureEjE3$_0EEEvT_SF_T0_.exit.i.i.i.i" ] ; 5 uses
  %i.ad = load ptr, ptr %.sroa.0.010.i.i.i.i.i.i, align 8, !tbaa !282 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 20 ; 2 uses
  %.sroa.0.09.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.val.val10.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !285
  %i.af = load ptr, ptr %.sroa.0.09.i.i.i.i.i.i.i, align 8, !tbaa !282
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.ah = tail call noundef zeroext i1 @_ZNK4llvm14GCNRegPressure4lessERKNS_15MachineFunctionERKS0_j(ptr noundef nonnull align 4 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(1065) %.val.val10.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.ae, i32 noundef %1) #17
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_21sortRegionsByPressureEjE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.09.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %.sroa.06.011.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.012.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.ai = load ptr, ptr %.sroa.0.012.i.i.i.i.i.i.i, align 8, !tbaa !282
  store ptr %i.ai, ptr %.sroa.06.011.i.i.i.i.i.i.i, align 8, !tbaa !282
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.val.val.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !285
  %i.aj = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !282
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.al = tail call noundef zeroext i1 @_ZNK4llvm14GCNRegPressure4lessERKNS_15MachineFunctionERKS0_j(ptr noundef nonnull align 4 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(1065) %.val.val.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.ae, i32 noundef %1) #17
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_21sortRegionsByPressureEjE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", !llvm.loop !807

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_21sortRegionsByPressureEjE3$_0EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.06.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.010.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.012.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %i.ad, ptr %.sroa.06.0.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !282
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, %.val1
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorIPNS_21GCNIterativeScheduler6RegionESaIS4_EEZNS2_21sortRegionsByPressureEjE3$_0EEvOT_T0_.exit", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !809

.preheader.i.i.i.i:                               ; preds = %bb.b
  %.sroa.0.021.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not22.i.i.i.i = icmp eq ptr %.sroa.0.021.i.i.i.i, %.val1
  br i1 %.not22.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorIPNS_21GCNIterativeScheduler6RegionESaIS4_EEZNS2_21sortRegionsByPressureEjE3$_0EEvOT_T0_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.024.i.i.i.i = phi ptr [ %.sroa.0.021.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i ] ; 7 uses
  %.pn23.i.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i.i ], [ %.sroa.0.024.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i ] ; 4 uses
  %.val.val.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !285
  %i.ao = load ptr, ptr %.sroa.0.024.i.i.i.i, align 8, !tbaa !282
  %i.ap = load ptr, ptr %.val, align 8, !tbaa !282
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.as = tail call noundef zeroext i1 @_ZNK4llvm14GCNRegPressure4lessERKNS_15MachineFunctionERKS0_j(ptr noundef nonnull align 4 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(1065) %.val.val.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.ar, i32 noundef %1) #17
  %i.at = load ptr, ptr %.sroa.0.024.i.i.i.i, align 8, !tbaa !282 ; 2 uses
  br i1 %i.as, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.au = ptrtoint ptr %.sroa.0.024.i.i.i.i to i64
  %i.av = sub i64 %i.au, %i.d                     ; 3 uses
  %i.aw = ashr exact i64 %i.av, 3                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 1
  br i1 %i.ax, label %bb.k, label %bb.l, !prof !270

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn23.i.i.i.i, i64 16
  %i.az = sub nsw i64 0, %i.aw
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %.val, i64 %i.av, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bb = icmp eq i64 %i.av, 8
  br i1 %i.bb, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn23.i.i.i.i, i64 8
  %i.bd = load ptr, ptr %.val, align 8, !tbaa !282
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !282
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i

bb.n:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 20 ; 2 uses
  %.val.val10.i.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !285
  %i.bf = load ptr, ptr %.pn23.i.i.i.i, align 8, !tbaa !282
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bh = tail call noundef zeroext i1 @_ZNK4llvm14GCNRegPressure4lessERKNS_15MachineFunctionERKS0_j(ptr noundef nonnull align 4 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(1065) %.val.val10.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.be, i32 noundef %1) #17
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %.lr.ph.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn23.i.i.i.i, %bb.n ] ; 4 uses
  %.sroa.06.011.i.i.i.i.i = phi ptr [ %.sroa.0.012.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.024.i.i.i.i, %bb.n ]
  %i.bi = load ptr, ptr %.sroa.0.012.i.i.i.i.i, align 8, !tbaa !282
  store ptr %i.bi, ptr %.sroa.06.011.i.i.i.i.i, align 8, !tbaa !282
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.i.i.i, i64 -8 ; 2 uses
  %.val.val.i.i10.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !285
  %i.bj = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !282
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.bl = tail call noundef zeroext i1 @_ZNK4llvm14GCNRegPressure4lessERKNS_15MachineFunctionERKS0_j(ptr noundef nonnull align 4 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(1065) %.val.val.i.i10.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.be, i32 noundef %1) #17
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i, !llvm.loop !807

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %.sink.i.i.i.i = phi ptr [ %.val, %bb.m ], [ %.val, %bb.k ], [ %.val, %bb.l ], [ %.sroa.0.024.i.i.i.i, %bb.n ], [ %.sroa.0.012.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  store ptr %i.at, ptr %.sink.i.i.i.i, align 8, !tbaa !282
  %.sroa.0.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i.i.i.i, i64 8 ; 2 uses
  %.not.i9.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, %.val1
  br i1 %.not.i9.i.i.i, label %"_ZN4llvm4sortIRSt6vectorIPNS_21GCNIterativeScheduler6RegionESaIS4_EEZNS2_21sortRegionsByPressureEjE3$_0EEvOT_T0_.exit", label %bb.i, !llvm.loop !808

"_ZN4llvm4sortIRSt6vectorIPNS_21GCNIterativeScheduler6RegionESaIS4_EEZNS2_21sortRegionsByPressureEjE3$_0EEvOT_T0_.exit": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_21sortRegionsByPressureEjE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", %bb.a, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm21GCNIterativeScheduler6RegionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_21sortRegionsByPressureEjE3$_0EEEvT_SF_T0_.exit.i.i.i.i", %.preheader.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
begin_hunk_1_@_ZN4llvm21GCNIterativeScheduler14scheduleRegionIRKSt6vectorIPKNS_5SUnitESaIS5_EEEEvRNS0_6RegionEOT_RKNS_14GCNRegPressureE:bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.cm, %i.ci
  br i1 %.not.i.i.i.i.i, label %._crit_edge, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZN4llvm12MachineInstr8all_defsEv.exit:           ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.sroa.011.1.i.i = phi ptr [ %i.ce, %bb.f ], [ %.sroa.011.0.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not6975 = icmp eq ptr %.sroa.011.1.i.i, %i.ci
  br i1 %.not6975, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %.lr.ph, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, %bb.m, %_ZN4llvm12MachineInstr8all_defsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %i.i, ptr %4, align 8, !tbaa !55
  store i32 0, ptr %i.j, align 8, !tbaa !56
  store i32 8, ptr %i.k, align 4, !tbaa !57
  store ptr %i.m, ptr %i.l, align 8, !tbaa !55
  store i32 0, ptr %i.n, align 8, !tbaa !56
  store i32 8, ptr %i.o, align 4, !tbaa !57
  store ptr %i.q, ptr %i.p, align 8, !tbaa !55
  store i32 0, ptr %i.r, align 8, !tbaa !56
  store i32 8, ptr %i.s, align 4, !tbaa !57
  %i.cn = load ptr, ptr %i.t, align 8, !tbaa !628
  %i.co = load ptr, ptr %i.u, align 8, !tbaa !629, !nonnull !286, !align !287
  call void @_ZN4llvm16RegisterOperands7collectERKNS_12MachineInstrERKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(432) %4, ptr noundef nonnull align 8 dereferenceable(80) %.val36, ptr noundef nonnull align 8 dereferenceable(316) %i.cn, ptr noundef nonnull align 8 dereferenceable(520) %i.co, i1 noundef zeroext true, i1 noundef zeroext false) #17
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !260 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !664 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val36, i64 44
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !39 ; 2 uses
  %i.cu = and i32 %i.ct, 4
  %.not2.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not2.i.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.sroa.0.03.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i ], [ %.val36, %._crit_edge ]
  %.0.copyload.i.i.i.i.i.i.i.i.i46 = load i64, ptr %.sroa.0.03.i.i.i, align 8
  %i.cv = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i46, -8
  %i.cw = inttoptr i64 %i.cv to ptr               ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 44
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !39
  %i.cz = and i32 %i.cy, 4
  %.not.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i: ; preds = %.lr.ph.i.i.i, %._crit_edge
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %.val36, %._crit_edge ], [ %i.cw, %.lr.ph.i.i.i ] ; 3 uses
  %i.da = and i32 %i.ct, 8
  %.not3.i.i.i = icmp eq i32 %i.da, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, label %.lr.ph.i11.i.i

.lr.ph.i11.i.i:                                   ; preds = %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, %.lr.ph.i11.i.i
  %.sroa.0.04.i.i.i = phi ptr [ %i.dc, %.lr.ph.i11.i.i ], [ %.val36, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !40 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 44
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !39
  %i.df = and i32 %i.de, 8
  %.not.i12.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i12.i.i, label %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, label %.lr.ph.i11.i.i, !llvm.loop !7

_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i: ; preds = %.lr.ph.i11.i.i, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i
  %.sroa.0.0.lcssa.i13.i.i = phi ptr [ %.val36, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i ], [ %i.dc, %.lr.ph.i11.i.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i13.i.i, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !40 ; 3 uses
  %.not8.i.i.i = icmp eq ptr %.sroa.0.0.lcssa.i.i.i, %i.dh
  br i1 %.not8.i.i.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i, label %.lr.ph.i14.i.i

.lr.ph.i14.i.i:                                   ; preds = %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, %.critedge2.i.i.i
  %.sroa.03.09.i.i.i = phi ptr [ %i.dl, %.critedge2.i.i.i ], [ %.sroa.0.0.lcssa.i.i.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 52
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !38
  switch i32 %i.dj, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i [
    i32 25, label %.critedge2.i.i.i
    i32 18, label %.critedge2.i.i.i
    i32 17, label %.critedge2.i.i.i
    i32 16, label %.critedge2.i.i.i
    i32 15, label %.critedge2.i.i.i
    i32 14, label %.critedge2.i.i.i
  ]

.critedge2.i.i.i:                                 ; preds = %.lr.ph.i14.i.i, %.lr.ph.i14.i.i, %.lr.ph.i14.i.i, %.lr.ph.i14.i.i, %.lr.ph.i14.i.i, %.lr.ph.i14.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !40 ; 2 uses
  %.not.i15.i.i = icmp eq ptr %i.dl, %i.dh
  br i1 %.not.i15.i.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i, label %.lr.ph.i14.i.i, !llvm.loop !8

_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i: ; preds = %.critedge2.i.i.i, %.lr.ph.i14.i.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i
  %i.dm = phi ptr [ %.sroa.0.0.lcssa.i.i.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i ], [ %i.dh, %.critedge2.i.i.i ], [ %.sroa.03.09.i.i.i, %.lr.ph.i14.i.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cr, i64 104
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !667, !noalias !832 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cr, i64 112
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !668, !noalias !832 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cr, i64 124
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !669, !noalias !832 ; 3 uses
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %.loopexit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i
  %i.du = add i32 %i.ds, -1                       ; 2 uses
  %i.dv = ptrtoint ptr %i.dm to i64
  %i.dw = mul i64 %i.dv, -4658895280553007687     ; 2 uses
  %i.dx = lshr i64 %i.dw, 31
  %i.dy = xor i64 %i.dx, %i.dw
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = and i32 %i.du, %i.dz                    ; 3 uses
  %i.eb = zext i32 %i.ea to i64                   ; 2 uses
  %i.ec = lshr i64 %i.eb, 5
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !476, !noalias !833
  %i.ef = and i32 %i.ea, 31
  %i.eg = lshr i32 %i.ee, %i.ef
  %i.eh = trunc i32 %i.eg to i1
  br i1 %i.eh, label %.lr.ph.i.i.i.i.i47, label %.loopexit.i.i.i.i, !prof !670

.lr.ph.i.i.i.i.i47:                               ; preds = %bb.h, %bb.i
  %i.ei = phi i64 [ %i.eo, %bb.i ], [ %i.eb, %bb.h ] ; 2 uses
  %.017.i.i.i.i.i = phi i32 [ %i.en, %bb.i ], [ %i.ea, %bb.h ]
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !625, !noalias !833
  %i.el = icmp eq ptr %i.dm, %i.ek
  br i1 %i.el, label %_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit, label %bb.i, !prof !270

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i47
  %i.em = add nuw i32 %.017.i.i.i.i.i, 1
  %i.en = and i32 %i.em, %i.du                    ; 3 uses
  %i.eo = zext i32 %i.en to i64                   ; 2 uses
  %i.ep = lshr i64 %i.eo, 5
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !476, !noalias !833
  %i.es = and i32 %i.en, 31
  %i.et = lshr i32 %i.er, %i.es
  %i.eu = trunc i32 %i.et to i1
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i47, label %.loopexit.i.i.i.i, !prof !671

.loopexit.i.i.i.i:                                ; preds = %bb.i, %bb.h, %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i
  %i.ev = zext i32 %i.ds to i64
  br label %_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit

_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit: ; preds = %.lr.ph.i.i.i.i.i47, %.loopexit.i.i.i.i
  %i.ew = phi i64 [ %i.ev, %.loopexit.i.i.i.i ], [ %i.ei, %.lr.ph.i.i.i.i.i47 ]
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.sroa.010.0.copyload.i.i = load i64, ptr %i.ey, align 8, !tbaa !266
  %i.ez = and i64 %.sroa.010.0.copyload.i.i, -8
  %i.fa = or disjoint i64 %i.ez, 4
  %i.fb = load ptr, ptr %i.u, align 8, !tbaa !629, !nonnull !286, !align !287
  call void @_ZN4llvm16RegisterOperands18adjustLaneLivenessERKNS_13LiveIntervalsERKNS_19MachineRegisterInfoENS_9SlotIndexEPNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(432) %4, ptr noundef nonnull align 8 dereferenceable(424) %i.cp, ptr noundef nonnull align 8 dereferenceable(520) %i.fb, i64 %i.fa, ptr noundef nonnull %.val36) #17
  %i.fc = load ptr, ptr %i.p, align 8, !tbaa !55  ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.q
  br i1 %i.fd, label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit
  call void @free(ptr noundef %i.fc) #17
  br label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i: ; preds = %bb.j, %_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit
  %i.fe = load ptr, ptr %i.l, align 8, !tbaa !55  ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.m
  br i1 %i.ff, label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i
  call void @free(ptr noundef %i.fe) #17
  br label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i

_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i: ; preds = %bb.k, %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i
  %i.fg = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.i
  br i1 %i.fh, label %_ZN4llvm16RegisterOperandsD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i
  call void @free(ptr noundef %i.fg) #17
  br label %_ZN4llvm16RegisterOperandsD2Ev.exit

_ZN4llvm16RegisterOperandsD2Ev.exit:              ; preds = %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

.lr.ph:                                           ; preds = %_ZN4llvm12MachineInstr8all_defsEv.exit, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit
  %.sroa.051.076 = phi ptr [ %.sroa.051.1, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit ], [ %.sroa.011.1.i.i, %_ZN4llvm12MachineInstr8all_defsEv.exit ] ; 3 uses
  %i.fi = load i32, ptr %.sroa.051.076, align 8
  %i.fj = and i32 %i.fi, -268435457
  store i32 %i.fj, ptr %.sroa.051.076, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.051.076, i64 32 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.fk, %i.ci
  br i1 %.not1.i.i, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %bb.m
  %.sroa.051.1 = phi ptr [ %i.fo, %bb.m ], [ %i.fk, %.lr.ph ] ; 4 uses
  %i.fl = load i32, ptr %.sroa.051.1, align 8
  %i.fm = and i32 %i.fl, 16777471
  %i.fn = icmp eq i32 %i.fm, 16777216
  br i1 %i.fn, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.051.1, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fo, %i.ci
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph.i.i, !llvm.loop !5

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit: ; preds = %.lr.ph.i.i
  %.not69 = icmp eq ptr %.sroa.051.1, %i.ci
  br i1 %.not69, label %._crit_edge, label %.lr.ph

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %_ZN4llvm16RegisterOperandsD2Ev.exit, %bb.e
  %i.fp = getelementptr inbounds nuw i8, ptr %.val36, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !40
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.062.079, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fr, %i.c
  br i1 %.not, label %._crit_edge82.loopexit, label %bb.b
}

declare void @_ZN4llvm19makeGCNILPSchedulerENS_8ArrayRefIPKNS_5SUnitEEERKNS_11ScheduleDAGE(ptr dead_on_unwind writable sret(%"class.std::vector.469") align 8, ptr, i64, ptr noundef nonnull align 8 dereferenceable(600)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm21GCNIterativeSchedulerD2Ev(ptr noundef nonnull align 8 dead_on_return(6280) dereferenceable(6280) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN4llvm21GCNIterativeSchedulerE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6256 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6264
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4llvm19ScheduleDAGMutationEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm19ScheduleDAGMutationEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #17, !inline_history !834
  br label %_ZSt8_DestroyISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm19ScheduleDAGMutationEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EEEvT_S7_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EEEvT_S7_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6272
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #20
  br label %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EEEvT_S7_.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6172
  %i.q = load i32, ptr %i.p, align 4, !tbaa !673  ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN4llvm12GCNRPTrackerD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !674
  %i.u = zext i32 %i.q to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #17
  br label %_ZN4llvm12GCNRPTrackerD2Ev.exit

_ZN4llvm12GCNRPTrackerD2Ev.exit:                  ; preds = %_ZNSt6vectorISt10unique_ptrIN4llvm19ScheduleDAGMutationESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 6104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !283 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPN4llvm21GCNIterativeScheduler6RegionESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12GCNRPTrackerD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 6120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !280
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #20
  br label %_ZNSt6vectorIPN4llvm21GCNIterativeScheduler6RegionESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4llvm21GCNIterativeScheduler6RegionESaIS3_EED2Ev.exit: ; preds = %_ZN4llvm12GCNRPTrackerD2Ev.exit, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6024 ; 2 uses
  tail call void @_ZN4llvm24SpecificBumpPtrAllocatorINS_21GCNIterativeScheduler6RegionEE10DestroyAllEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ah)
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ah) #17
  tail call void @_ZN4llvm17ScheduleDAGMILiveD2Ev(ptr noundef nonnull align 8 dead_on_return(6024) dereferenceable(6024) %0) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm21GCNIterativeSchedulerD0Ev(ptr noundef nonnull align 8 dereferenceable(6280) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm21GCNIterativeSchedulerD2Ev(ptr noundef nonnull align 8 dead_on_return(6280) dereferenceable(6280) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 6280) #20
  ret void
}

declare void @_ZN4llvm13ScheduleDAGMI9viewGraphERKNS_5TwineES3_(ptr noundef nonnull align 8 dereferenceable(3544), ptr noundef nonnull align 8 dereferenceable(34), ptr noundef nonnull align 8 dereferenceable(34)) unnamed_addr #2

declare void @_ZN4llvm13ScheduleDAGMI9viewGraphEv(ptr noundef nonnull align 8 dereferenceable(3544)) unnamed_addr #2

declare void @_ZNK4llvm17ScheduleDAGInstrs8dumpNodeERKNS_5SUnitE(ptr noundef nonnull align 8 dereferenceable(3472), ptr noundef nonnull align 8 dereferenceable(259)) unnamed_addr #2

declare void @_ZNK4llvm17ScheduleDAGMILive4dumpEv(ptr noundef nonnull align 8 dereferenceable(6024)) unnamed_addr #2

declare void @_ZNK4llvm17ScheduleDAGInstrs17getGraphNodeLabelB5cxx11EPKNS_5SUnitE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(3472), ptr noundef) unnamed_addr #2

declare void @_ZNK4llvm17ScheduleDAGInstrs10getDAGNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(3472)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm11ScheduleDAG22addCustomGraphFeaturesERNS_11GraphWriterIPS0_EE(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 1 %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm13ScheduleDAGMI24doMBBSchedRegionsTopDownEv(ptr noundef nonnull align 8 dereferenceable(3544) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #17
  ret i1 %i.f
}

declare void @_ZN4llvm13ScheduleDAGMI10startBlockEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(3544), ptr noundef) unnamed_addr #2

declare void @_ZN4llvm13ScheduleDAGMI11finishBlockEv(ptr noundef nonnull align 8 dereferenceable(3544)) unnamed_addr #2

declare void @_ZN4llvm17ScheduleDAGInstrs10exitRegionEv(ptr noundef nonnull align 8 dereferenceable(3472)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm17ScheduleDAGMILive15hasVRegLivenessEv(ptr noundef nonnull align 8 dereferenceable(6024) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN4llvm17ScheduleDAGInstrsC2ERNS_15MachineFunctionEPKNS_15MachineLoopInfoEb(ptr noundef nonnull align 8 dereferenceable(3472), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN4llvm12GCNRPTracker5resetERKNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #2

declare noundef i32 @_ZNK4llvm12GCNSubtarget24getOccupancyWithNumSGPRsEj(ptr noundef nonnull align 8 dereferenceable(520232), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK4llvm12GCNSubtarget24getOccupancyWithNumVGPRsEjj(ptr noundef nonnull align 8 dereferenceable(520232), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm6AMDGPU7IsaInfo23getArchVGPRAllocGranuleEv() local_unnamed_addr #2

declare void @_ZN4llvm17ScheduleDAGInstrs15buildSchedGraphEPNS_9AAResultsEPNS_18RegPressureTrackerEPNS_13PressureDiffsEPNS_13LiveIntervalsEb(ptr noundef nonnull align 8 dereferenceable(3472), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4llvm13ScheduleDAGMI14postProcessDAGEv(ptr noundef nonnull align 8 dereferenceable(3544)) local_unnamed_addr #2

declare void @_ZN4llvm26ScheduleDAGTopologicalSort25InitDAGTopologicalSortingEv(ptr noundef nonnull align 8 dereferenceable(440)) local_unnamed_addr #2

declare void @_ZN4llvm13ScheduleDAGMI21findRootsAndBiasEdgesERNS_15SmallVectorImplIPNS_5SUnitEEES5_(ptr noundef nonnull align 8 dereferenceable(3544), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZN4llvm21SIMachineFunctionInfo14limitOccupancyERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #2

declare void @_ZN4llvm17ScheduleDAGMILive8scheduleEv(ptr noundef nonnull align 8 dereferenceable(6024)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm21GCNIterativeScheduler14scheduleRegionIRSt6vectorINS_5SUnitESaIS3_EEEEvRNS0_6RegionEOT_RKNS_14GCNRegPressureE(ptr noundef nonnull align 8 dereferenceable(6280) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::RegisterOperands", align 8 ; 17 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !626    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !626  ; 2 uses
  %.not77 = icmp eq ptr %i.a, %i.c
  br i1 %.not77, label %._crit_edge82, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !264
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3480 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4llvm21GCNIterativeScheduler14scheduleRegionIRSt6vectorINS_5SUnitESaIS3_EEEEvRNS0_6RegionEOT_RKNS_14GCNRegPressureE:bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.ck, %i.cg
  br i1 %.not.i.i.i.i.i, label %._crit_edge, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZN4llvm12MachineInstr8all_defsEv.exit:           ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.sroa.011.1.i.i = phi ptr [ %i.cc, %bb.f ], [ %.sroa.011.0.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not6975 = icmp eq ptr %.sroa.011.1.i.i, %i.cg
  br i1 %.not6975, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %.lr.ph, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, %bb.m, %_ZN4llvm12MachineInstr8all_defsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %i.i, ptr %4, align 8, !tbaa !55
  store i32 0, ptr %i.j, align 8, !tbaa !56
  store i32 8, ptr %i.k, align 4, !tbaa !57
  store ptr %i.m, ptr %i.l, align 8, !tbaa !55
  store i32 0, ptr %i.n, align 8, !tbaa !56
  store i32 8, ptr %i.o, align 4, !tbaa !57
  store ptr %i.q, ptr %i.p, align 8, !tbaa !55
  store i32 0, ptr %i.r, align 8, !tbaa !56
  store i32 8, ptr %i.s, align 4, !tbaa !57
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !628
  %i.cm = load ptr, ptr %i.u, align 8, !tbaa !629, !nonnull !286, !align !287
  call void @_ZN4llvm16RegisterOperands7collectERKNS_12MachineInstrERKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(432) %4, ptr noundef nonnull align 8 dereferenceable(80) %.val36, ptr noundef nonnull align 8 dereferenceable(316) %i.cl, ptr noundef nonnull align 8 dereferenceable(520) %i.cm, i1 noundef zeroext true, i1 noundef zeroext false) #17
  %i.cn = load ptr, ptr %i.h, align 8, !tbaa !260 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !664 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val36, i64 44
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !39 ; 2 uses
  %i.cs = and i32 %i.cr, 4
  %.not2.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not2.i.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.sroa.0.03.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i ], [ %.val36, %._crit_edge ]
  %.0.copyload.i.i.i.i.i.i.i.i.i46 = load i64, ptr %.sroa.0.03.i.i.i, align 8
  %i.ct = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i46, -8
  %i.cu = inttoptr i64 %i.ct to ptr               ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 44
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !39
  %i.cx = and i32 %i.cw, 4
  %.not.i.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i: ; preds = %.lr.ph.i.i.i, %._crit_edge
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %.val36, %._crit_edge ], [ %i.cu, %.lr.ph.i.i.i ] ; 3 uses
  %i.cy = and i32 %i.cr, 8
  %.not3.i.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, label %.lr.ph.i11.i.i

.lr.ph.i11.i.i:                                   ; preds = %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, %.lr.ph.i11.i.i
  %.sroa.0.04.i.i.i = phi ptr [ %i.da, %.lr.ph.i11.i.i ], [ %.val36, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !40 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 44
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !39
  %i.dd = and i32 %i.dc, 8
  %.not.i12.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i12.i.i, label %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, label %.lr.ph.i11.i.i, !llvm.loop !7

_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i: ; preds = %.lr.ph.i11.i.i, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i
  %.sroa.0.0.lcssa.i13.i.i = phi ptr [ %.val36, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i ], [ %i.da, %.lr.ph.i11.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i13.i.i, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !40 ; 3 uses
  %.not8.i.i.i = icmp eq ptr %.sroa.0.0.lcssa.i.i.i, %i.df
  br i1 %.not8.i.i.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i, label %.lr.ph.i14.i.i

.lr.ph.i14.i.i:                                   ; preds = %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i, %.critedge2.i.i.i
  %.sroa.03.09.i.i.i = phi ptr [ %i.dj, %.critedge2.i.i.i ], [ %.sroa.0.0.lcssa.i.i.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 52
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !38
  switch i32 %i.dh, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i [
    i32 25, label %.critedge2.i.i.i
    i32 18, label %.critedge2.i.i.i
    i32 17, label %.critedge2.i.i.i
    i32 16, label %.critedge2.i.i.i
    i32 15, label %.critedge2.i.i.i
    i32 14, label %.critedge2.i.i.i
  ]

.critedge2.i.i.i:                                 ; preds = %.lr.ph.i14.i.i, %.lr.ph.i14.i.i, %.lr.ph.i14.i.i, %.lr.ph.i14.i.i, %.lr.ph.i14.i.i, %.lr.ph.i14.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !40 ; 2 uses
  %.not.i15.i.i = icmp eq ptr %i.dj, %i.df
  br i1 %.not.i15.i.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i, label %.lr.ph.i14.i.i, !llvm.loop !8

_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i: ; preds = %.critedge2.i.i.i, %.lr.ph.i14.i.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i
  %i.dk = phi ptr [ %.sroa.0.0.lcssa.i.i.i, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i.i ], [ %i.df, %.critedge2.i.i.i ], [ %.sroa.03.09.i.i.i, %.lr.ph.i14.i.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cp, i64 104
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !667, !noalias !849 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cp, i64 112
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !668, !noalias !849 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cp, i64 124
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !669, !noalias !849 ; 3 uses
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %.loopexit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i
  %i.ds = add i32 %i.dq, -1                       ; 2 uses
  %i.dt = ptrtoint ptr %i.dk to i64
  %i.du = mul i64 %i.dt, -4658895280553007687     ; 2 uses
  %i.dv = lshr i64 %i.du, 31
  %i.dw = xor i64 %i.dv, %i.du
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = and i32 %i.ds, %i.dx                    ; 3 uses
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %i.ea = lshr i64 %i.dz, 5
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !476, !noalias !850
  %i.ed = and i32 %i.dy, 31
  %i.ee = lshr i32 %i.ec, %i.ed
  %i.ef = trunc i32 %i.ee to i1
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i47, label %.loopexit.i.i.i.i, !prof !670

.lr.ph.i.i.i.i.i47:                               ; preds = %bb.h, %bb.i
  %i.eg = phi i64 [ %i.em, %bb.i ], [ %i.dz, %bb.h ] ; 2 uses
  %.017.i.i.i.i.i = phi i32 [ %i.el, %bb.i ], [ %i.dy, %bb.h ]
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !625, !noalias !850
  %i.ej = icmp eq ptr %i.dk, %i.ei
  br i1 %i.ej, label %_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit, label %bb.i, !prof !270

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i47
  %i.ek = add nuw i32 %.017.i.i.i.i.i, 1
  %i.el = and i32 %i.ek, %i.ds                    ; 3 uses
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %i.en = lshr i64 %i.em, 5
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !476, !noalias !850
  %i.eq = and i32 %i.el, 31
  %i.er = lshr i32 %i.ep, %i.eq
  %i.es = trunc i32 %i.er to i1
  br i1 %i.es, label %.lr.ph.i.i.i.i.i47, label %.loopexit.i.i.i.i, !prof !671

.loopexit.i.i.i.i:                                ; preds = %bb.i, %bb.h, %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i.i
  %i.et = zext i32 %i.dq to i64
  br label %_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit

_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit: ; preds = %.lr.ph.i.i.i.i.i47, %.loopexit.i.i.i.i
  %i.eu = phi i64 [ %i.et, %.loopexit.i.i.i.i ], [ %i.eg, %.lr.ph.i.i.i.i.i47 ]
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.010.0.copyload.i.i = load i64, ptr %i.ew, align 8, !tbaa !266
  %i.ex = and i64 %.sroa.010.0.copyload.i.i, -8
  %i.ey = or disjoint i64 %i.ex, 4
  %i.ez = load ptr, ptr %i.u, align 8, !tbaa !629, !nonnull !286, !align !287
  call void @_ZN4llvm16RegisterOperands18adjustLaneLivenessERKNS_13LiveIntervalsERKNS_19MachineRegisterInfoENS_9SlotIndexEPNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(432) %4, ptr noundef nonnull align 8 dereferenceable(424) %i.cn, ptr noundef nonnull align 8 dereferenceable(520) %i.ez, i64 %i.ey, ptr noundef nonnull %.val36) #17
  %i.fa = load ptr, ptr %i.p, align 8, !tbaa !55  ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.q
  br i1 %i.fb, label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit
  call void @free(ptr noundef %i.fa) #17
  br label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i: ; preds = %bb.j, %_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit
  %i.fc = load ptr, ptr %i.l, align 8, !tbaa !55  ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.m
  br i1 %i.fd, label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i
  call void @free(ptr noundef %i.fc) #17
  br label %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i

_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i: ; preds = %bb.k, %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit.i
  %i.fe = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.i
  br i1 %i.ff, label %_ZN4llvm16RegisterOperandsD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i
  call void @free(ptr noundef %i.fe) #17
  br label %_ZN4llvm16RegisterOperandsD2Ev.exit

_ZN4llvm16RegisterOperandsD2Ev.exit:              ; preds = %_ZN4llvm11SmallVectorINS_14VRegMaskOrUnitELj8EED2Ev.exit1.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

.lr.ph:                                           ; preds = %_ZN4llvm12MachineInstr8all_defsEv.exit, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit
  %.sroa.051.076 = phi ptr [ %.sroa.051.1, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit ], [ %.sroa.011.1.i.i, %_ZN4llvm12MachineInstr8all_defsEv.exit ] ; 3 uses
  %i.fg = load i32, ptr %.sroa.051.076, align 8
  %i.fh = and i32 %i.fg, -268435457
  store i32 %i.fh, ptr %.sroa.051.076, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.051.076, i64 32 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.fi, %i.cg
  br i1 %.not1.i.i, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %bb.m
  %.sroa.051.1 = phi ptr [ %i.fm, %bb.m ], [ %i.fi, %.lr.ph ] ; 4 uses
  %i.fj = load i32, ptr %.sroa.051.1, align 8
  %i.fk = and i32 %i.fj, 16777471
  %i.fl = icmp eq i32 %i.fk, 16777216
  br i1 %i.fl, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.051.1, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fm, %i.cg
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph.i.i, !llvm.loop !5

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit: ; preds = %.lr.ph.i.i
  %.not69 = icmp eq ptr %.sroa.051.1, %i.cg
  br i1 %.not69, label %._crit_edge, label %.lr.ph

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %_ZN4llvm16RegisterOperandsD2Ev.exit, %bb.e
  %i.fn = getelementptr inbounds nuw i8, ptr %.val36, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !40
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.062.079, i64 264 ; 2 uses
  %.not = icmp eq ptr %i.fp, %i.c
  br i1 %.not, label %._crit_edge82.loopexit, label %bb.b
}

declare void @_ZN4llvm13LiveIntervals10handleMoveERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(424), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4llvm16RegisterOperands7collectERKNS_12MachineInstrERKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(316), ptr noundef nonnull align 8 dereferenceable(520), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4llvm16RegisterOperands18adjustLaneLivenessERKNS_13LiveIntervalsERKNS_19MachineRegisterInfoENS_9SlotIndexEPNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(424), ptr noundef nonnull align 8 dereferenceable(520), i64, ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm13ScheduleDAGMI16placeDebugValuesEv(ptr noundef nonnull align 8 dereferenceable(3544)) local_unnamed_addr #2

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm13SchedBoundaryD1Ev(ptr noundef nonnull align 8 dead_on_return(712) dereferenceable(712)) unnamed_addr #10

declare void @_ZN4llvm20MachineSchedStrategy6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20GenericSchedulerBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN4llvm20GenericSchedulerBaseE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm14SchedRemainderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm14SchedRemainderD2Ev.exit

_ZN4llvm14SchedRemainderD2Ev.exit:                ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20GenericSchedulerBaseD0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20MachineSchedStrategy10initPolicyENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEES3_j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, ptr %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i56 @_ZNK4llvm20GenericSchedulerBase9getPolicyEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.0.0.copyload = load i56, ptr %i.a, align 4
  ret i56 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm20MachineSchedStrategy10dumpPolicyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm20MachineSchedStrategy19shouldTrackPressureEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm20MachineSchedStrategy20shouldTrackLaneMasksEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm20MachineSchedStrategy24doMBBSchedRegionsTopDownEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20MachineSchedStrategy8enterMBBEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20MachineSchedStrategy8leaveMBBEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20MachineSchedStrategy13registerRootsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20MachineSchedStrategy12scheduleTreeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: nounwind
declare void @_ZN4llvm17ScheduleDAGMILiveD2Ev(ptr noundef nonnull align 8 dead_on_return(6024) dereferenceable(6024)) unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm24SpecificBumpPtrAllocatorINS_21GCNIterativeScheduler6RegionEE10DestroyAllEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not33 = icmp eq i32 %i.d, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZZN4llvm24SpecificBumpPtrAllocatorINS_21GCNIterativeScheduler6RegionEE10DestroyAllEvENKUlPcS4_E_clES4_S4_.exit, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx40 = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx40
  %.not2335 = icmp eq i32 %i.j, 0
  br i1 %.not2335, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i, label %.lr.ph38

.lr.ph:                                           ; preds = %bb.a, %_ZZN4llvm24SpecificBumpPtrAllocatorINS_21GCNIterativeScheduler6RegionEE10DestroyAllEvENKUlPcS4_E_clES4_S4_.exit
  %.034 = phi ptr [ %i.at, %_ZZN4llvm24SpecificBumpPtrAllocatorINS_21GCNIterativeScheduler6RegionEE10DestroyAllEvENKUlPcS4_E_clES4_S4_.exit ], [ %i.b, %bb.a ] ; 3 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.n = load ptr, ptr %.034, align 8, !tbaa !263 ; 3 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %i.o, 7
  %i.q = and i64 %i.p, -8
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = load i32, ptr %i.c, align 8, !tbaa !56
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !263
  %i.x = icmp eq ptr %i.n, %i.w
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.y = load ptr, ptr %0, align 8, !tbaa !853
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.z = ptrtoint ptr %.034 to i64
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = sub i64 %i.z, %i.aa
  %sum.shift = lshr i64 %i.ab, 10
  %i.ac = trunc i64 %sum.shift to i32
  %i.ad = and i32 %i.ac, 33554431
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 30)
  %.sroa.speculated.i = zext nneg i32 %i.ae to i64
  %i.af = shl nuw nsw i64 4096, %.sroa.speculated.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.af
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ah = phi ptr [ %i.y, %bb.b ], [ %i.ag, %bb.c ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %.not6.i = icmp ugt ptr %i.ai, %i.ah
  br i1 %.not6.i, label %_ZZN4llvm24SpecificBumpPtrAllocatorINS_21GCNIterativeScheduler6RegionEE10DestroyAllEvENKUlPcS4_E_clES4_S4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %_ZN4llvm21GCNIterativeScheduler6RegionD2Ev.exit.i
  %i.aj = phi ptr [ %i.as, %_ZN4llvm21GCNIterativeScheduler6RegionD2Ev.exit.i ], [ %i.ai, %bb.d ] ; 2 uses
  %.07.i = phi ptr [ %i.aj, %_ZN4llvm21GCNIterativeScheduler6RegionD2Ev.exit.i ], [ %i.r, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !620 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZN4llvm21GCNIterativeScheduler6RegionD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !623 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm21GCNIterativeScheduler17TentativeScheduleEEclEPS2_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !624
end_hunk_2
