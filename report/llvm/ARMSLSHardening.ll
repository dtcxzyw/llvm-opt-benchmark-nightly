Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMSLSHardening?download=true
inline.NumInlined: 549
inline.NumDeleted: 355
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_115ARMSLSHardening20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %i.bi = load i32, ptr %i.aj, align 4, !tbaa !372
  %i.bj = and i32 %i.bi, 8
  %.not34.i.i.i.i21.i = icmp eq i32 %i.bj, 0
  br i1 %.not34.i.i.i.i21.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i17.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i22.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i22.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i20.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i22.i
  %.sroa.0.05.i.i.i.i23.i = phi ptr [ %i.bl, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i22.i ], [ %.sroa.027.035.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i20.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i23.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !278 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !372
  %i.bo = and i32 %i.bn, 8
  %.not3.i.i.i.i24.i = icmp eq i32 %i.bo, 0
  br i1 %.not3.i.i.i.i24.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i17.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i22.i, !llvm.loop !344

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i17.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i22.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i20.i, %bb.e
  %.sroa.0.1.i.i.i.i18.i = phi ptr [ %.sroa.027.035.i, %bb.e ], [ %.sroa.027.035.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i20.i ], [ %i.bl, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i22.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i18.i, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !278 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.027.035.i, i64 72
  %.sroa.0.0.copyload.i = load ptr, ptr %i.br, align 8, !tbaa !377
  %i.bs = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(519368) %i.bg) #17, !inline_history !345
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 404
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !378, !range !267, !noundef !146
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 461
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !281, !range !267, !noundef !146
  %i.cb = trunc nuw i8 %i.ca to i1                ; 2 uses
  %.neg.i.i = select i1 %i.cb, i64 -763, i64 -459
  %.neg15.i.i = select i1 %i.cb, i64 -762, i64 -458
  %.neg16.i.i = select i1 %i.by, i64 %.neg.i.i, i64 %.neg15.i.i
  %i.cc = icmp eq ptr %i.bq, %i.af
  br i1 %i.cc, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i17.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 52
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !373
  switch i32 %i.ce, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i [
    i32 762, label %_ZN4llvmL34isIndirectControlFlowNotComingBackERKNS_12MachineInstrE.exit.i
    i32 459, label %_ZN4llvmL34isIndirectControlFlowNotComingBackERKNS_12MachineInstrE.exit.i
    i32 458, label %_ZN4llvmL34isIndirectControlFlowNotComingBackERKNS_12MachineInstrE.exit.i
    i32 763, label %_ZN4llvmL34isIndirectControlFlowNotComingBackERKNS_12MachineInstrE.exit.i
  ]

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i: ; preds = %bb.f, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i17.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !284
  %i.ch = getelementptr inbounds [32 x i8], ptr %i.cg, i64 %.neg16.i.i
  %i.ci = load ptr, ptr %i.ag, align 8, !tbaa !328
  %i.cj = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr %.sroa.0.0.copyload.i, i1 noundef zeroext false) #17 ; 6 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef %i.cj) #17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8
  %i.ck = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.bq, ptr %i.cm, align 8, !tbaa !278
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i = load i64, ptr %i.cj, align 8
  %i.cn = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i, 7
  %i.co = or disjoint i64 %i.cn, %i.ck
  store i64 %i.co, ptr %i.cj, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cj, ptr %i.cp, align 8, !tbaa !278
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8
  %i.cq = ptrtoint ptr %i.cj to i64
  %i.cr = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i, 7
  %i.cs = or disjoint i64 %i.cr, %i.cq
  store i64 %i.cs, ptr %i.bq, align 8
  br label %_ZN4llvmL34isIndirectControlFlowNotComingBackERKNS_12MachineInstrE.exit.i

_ZN4llvmL34isIndirectControlFlowNotComingBackERKNS_12MachineInstrE.exit.i: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i, %bb.f, %bb.f, %bb.f, %bb.f, %_ZN4llvmL22isIndirectBranchOpcodeEi.exit.i.i
  %.1.i = phi i1 [ %.01136.i, %_ZN4llvmL22isIndirectBranchOpcodeEi.exit.i.i ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.f ], [ true, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.as, %i.af
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_115ARMSLSHardening19hardenReturnsAndBRsERN4llvm17MachineBasicBlockE.exit, label %.preheader.i, !llvm.loop !346

_ZNK12_GLOBAL__N_115ARMSLSHardening19hardenReturnsAndBRsERN4llvm17MachineBasicBlockE.exit: ; preds = %_ZN4llvmL34isIndirectControlFlowNotComingBackERKNS_12MachineInstrE.exit.i, %bb.b, %bb.c
  %.0.i = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ %.1.i, %_ZN4llvmL34isIndirectControlFlowNotComingBackERKNS_12MachineInstrE.exit.i ] ; 3 uses
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !363
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 358
  %i.cv = load i8, ptr %i.cu, align 2, !tbaa !329, !range !267, !noundef !146
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.g, label %_ZNK12_GLOBAL__N_115ARMSLSHardening19hardenIndirectCallsERN4llvm17MachineBasicBlockE.exit

bb.g:                                             ; preds = %_ZNK12_GLOBAL__N_115ARMSLSHardening19hardenReturnsAndBRsERN4llvm17MachineBasicBlockE.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.029.039, i64 56
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !278 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.029.039, i64 48 ; 2 uses
  %.not21.i = icmp eq ptr %i.cy, %i.cz
  br i1 %.not21.i, label %_ZNK12_GLOBAL__N_115ARMSLSHardening19hardenIndirectCallsERN4llvm17MachineBasicBlockE.exit, label %.preheader.lr.ph.i11

.preheader.lr.ph.i11:                             ; preds = %bb.g
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.029.039, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.029.039, i64 40 ; 4 uses
  br label %.preheader.i12

.preheader.i12:                                   ; preds = %_ZN4llvmL14isIndirectCallERKNS_12MachineInstrE.exit.i, %.preheader.lr.ph.i11
  %.0923.i = phi i1 [ false, %.preheader.lr.ph.i11 ], [ %.1.i19, %_ZN4llvmL14isIndirectCallERKNS_12MachineInstrE.exit.i ] ; 3 uses
  %.sroa.013.022.i = phi ptr [ %i.cy, %.preheader.lr.ph.i11 ], [ %i.dm, %_ZN4llvmL14isIndirectCallERKNS_12MachineInstrE.exit.i ] ; 28 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i13 = load i64, ptr %.sroa.013.022.i, align 8
  %i.dc = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i13, 4
  %.not.i.i.i.i.i14 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i.i.i14, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %.preheader.i12
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i, i64 44
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !372
  %i.df = and i32 %i.de, 8
  %.not34.i.i.i.i.i25 = icmp eq i32 %i.df, 0
  br i1 %.not34.i.i.i.i.i25, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i26

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i26: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i26
  %.sroa.0.05.i.i.i.i.i27 = phi ptr [ %i.dh, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i26 ], [ %.sroa.013.022.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i27, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !278 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 44
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !372
  %i.dk = and i32 %i.dj, 8
  %.not3.i.i.i.i.i28 = icmp eq i32 %i.dk, 0
  br i1 %.not3.i.i.i.i.i28, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i26, !llvm.loop !344

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i26, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %.preheader.i12
  %.sroa.0.1.i.i.i.i.i16 = phi ptr [ %.sroa.013.022.i, %.preheader.i12 ], [ %.sroa.013.022.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.dh, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i26 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i16, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !278 ; 2 uses
  %i.dn = getelementptr i8, ptr %.sroa.013.022.i, i64 52 ; 2 uses
  %.val.i = load i32, ptr %i.dn, align 4, !tbaa !373 ; 2 uses
  switch i32 %.val.i, label %_ZN4llvmL14isIndirectCallERKNS_12MachineInstrE.exit.i [
    i32 845, label %bb.h
    i32 343, label %bb.h
    i32 846, label %bb.h
    i32 344, label %bb.h
    i32 352, label %bb.h
    i32 347, label %bb.h
    i32 464, label %bb.h
    i32 465, label %bb.h
    i32 461, label %bb.h
    i32 462, label %bb.h
    i32 4462, label %bb.h
    i32 778, label %bb.h
    i32 4460, label %bb.h
    i32 777, label %bb.h
    i32 783, label %bb.h
    i32 809, label %bb.h
  ]

bb.h:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i, i64 44 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !372 ; 2 uses
  %i.dq = and i32 %i.dp, 12
  %i.dr = icmp eq i32 %i.dq, 0
  %i.ds = and i32 %i.dp, 4
  %i.dt = icmp ne i32 %i.ds, 0
  %or.cond.i.i.i = or i1 %i.dr, %i.dt
  br i1 %or.cond.i.i.i, label %.split.i, label %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit.i

.split.i:                                         ; preds = %bb.h
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !374
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !376
  %i.dy = and i64 %i.dx, 32
  %.not17.i = icmp eq i64 %i.dy, 0
  br i1 %.not17.i, label %bb.i, label %_ZN4llvmL14isIndirectCallERKNS_12MachineInstrE.exit.i

_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit.i: ; preds = %bb.h
  %i.dz = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.013.022.i, i64 noundef 32, i32 noundef 1) #17
  br i1 %i.dz, label %_ZN4llvmL14isIndirectCallERKNS_12MachineInstrE.exit.i, label %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit._crit_edge.i

_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit._crit_edge.i: ; preds = %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit.i
  %.pre.i = load i32, ptr %i.dn, align 4, !tbaa !373
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit._crit_edge.i, %.split.i
  %i.ea = phi i32 [ %.pre.i, %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit._crit_edge.i ], [ %.val.i, %.split.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i, i64 32 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !379 ; 4 uses
  switch i32 %i.ea, label %bb.j [
    i32 845, label %.split55.i.i
    i32 343, label %.split55.i.i
    i32 4462, label %.split.i.i17
    i32 778, label %.split.i.i17
  ]

.split.i.i17:                                     ; preds = %bb.i, %bb.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  br label %.split55.i.i

bb.j:                                             ; preds = %bb.i
  unreachable

.split55.i.i:                                     ; preds = %.split.i.i17, %bb.i, %bb.i
  %phi.call.i.i = phi ptr [ %i.ed, %.split.i.i17 ], [ %i.ec, %bb.i ], [ %i.ec, %bb.i ]
  %.052.i.i = phi i1 [ true, %.split.i.i17 ], [ false, %bb.i ], [ false, %bb.i ] ; 16 uses
  %.0.i10.i = phi i64 [ 2, %.split.i.i17 ], [ 0, %bb.i ], [ 0, %bb.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %phi.call.i.i, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !330 ; 15 uses
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %.0.i10.i
  %i.eh = load i32, ptr %i.eg, align 8            ; 2 uses
  %7 = lshr i32 %i.eh, 26
  %8 = lshr i32 %i.eh, 24
  %.lobit.i.i.i = and i32 %8, 1
  %9 = xor i32 %.lobit.i.i.i, 1
  %10 = and i32 %9, %7
  %.not.i.i18 = icmp eq i32 %10, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i, i64 72
  %.sroa.031.0.copyload.i.i = load ptr, ptr %i.ei, align 8, !tbaa !377 ; 2 uses
  %i.ej = call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.013.022.i) #17 ; 3 uses
  %i.ek = icmp eq i32 %i.ef, 74                   ; 2 uses
  %i.el = xor i1 %.052.i.i, true                  ; 14 uses
  %i.em = and i1 %i.ek, %i.el
  br i1 %i.em, label %"_ZN4llvm7find_ifIRA28_K16ThunkNameRegModeZNK12_GLOBAL__N_115ARMSLSHardening33ConvertIndirectCallToIndirectJumpERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit.i.i", label %bb.k

bb.k:                                             ; preds = %.split55.i.i
  %i.en = icmp eq i32 %i.ef, 75                   ; 2 uses
  %i.eo = and i1 %i.en, %i.el
  br i1 %i.eo, label %.loopexit.split.loop.exit73.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ep = icmp eq i32 %i.ef, 76                   ; 2 uses
  %i.eq = and i1 %i.ep, %i.el
  br i1 %i.eq, label %.loopexit.split.loop.exit75.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.er = icmp eq i32 %i.ef, 77                   ; 2 uses
  %i.es = and i1 %i.er, %i.el
  br i1 %i.es, label %.loopexit.split.loop.exit77.i.i.i.i.i.i, label %.lr.ph.i.i.i.1.i.i.i

.lr.ph.i.i.i.1.i.i.i:                             ; preds = %bb.m
  %i.et = icmp eq i32 %i.ef, 78                   ; 2 uses
  %i.eu = and i1 %i.et, %i.el
  br i1 %i.eu, label %"_ZN4llvm7find_ifIRA28_K16ThunkNameRegModeZNK12_GLOBAL__N_115ARMSLSHardening33ConvertIndirectCallToIndirectJumpERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit.i.i", label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.1.i.i.i
  %i.ev = icmp eq i32 %i.ef, 79                   ; 2 uses
  %i.ew = and i1 %i.ev, %i.el
  br i1 %i.ew, label %.loopexit.split.loop.exit73.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = icmp eq i32 %i.ef, 80                   ; 2 uses
  %i.ey = and i1 %i.ex, %i.el
  br i1 %i.ey, label %.loopexit.split.loop.exit75.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ez = icmp eq i32 %i.ef, 81                   ; 2 uses
  %i.fa = and i1 %i.ez, %i.el
  br i1 %i.fa, label %.loopexit.split.loop.exit77.i.i.i.i.i.i, label %.lr.ph.i.i.i.2.i.i.i

.lr.ph.i.i.i.2.i.i.i:                             ; preds = %bb.p
  %i.fb = icmp eq i32 %i.ef, 82                   ; 2 uses
  %i.fc = and i1 %i.fb, %i.el
  br i1 %i.fc, label %"_ZN4llvm7find_ifIRA28_K16ThunkNameRegModeZNK12_GLOBAL__N_115ARMSLSHardening33ConvertIndirectCallToIndirectJumpERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit.i.i", label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.2.i.i.i
  %i.fd = icmp eq i32 %i.ef, 83                   ; 2 uses
  %i.fe = and i1 %i.fd, %i.el
  br i1 %i.fe, label %.loopexit.split.loop.exit73.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ff = icmp eq i32 %i.ef, 84                   ; 2 uses
  %i.fg = and i1 %i.ff, %i.el
  br i1 %i.fg, label %.loopexit.split.loop.exit75.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fh = icmp eq i32 %i.ef, 85                   ; 2 uses
  %i.fi = and i1 %i.fh, %i.el
  br i1 %i.fi, label %.loopexit.split.loop.exit77.i.i.i.i.i.i, label %.lr.ph.i.i.i.3.i.i.i

.lr.ph.i.i.i.3.i.i.i:                             ; preds = %bb.s
  %i.fj = icmp eq i32 %i.ef, 17                   ; 2 uses
  %i.fk = and i1 %i.fj, %i.el
  br i1 %i.fk, label %"_ZN4llvm7find_ifIRA28_K16ThunkNameRegModeZNK12_GLOBAL__N_115ARMSLSHardening33ConvertIndirectCallToIndirectJumpERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit.i.i", label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.3.i.i.i
  %i.fl = icmp eq i32 %i.ef, 15                   ; 2 uses
  %i.fm = and i1 %i.fl, %i.el
  br i1 %i.fm, label %.loopexit.split.loop.exit73.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fn = and i1 %.052.i.i, %i.ek
  br i1 %i.fn, label %.loopexit.split.loop.exit75.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fo = and i1 %.052.i.i, %i.en
  br i1 %i.fo, label %.loopexit.split.loop.exit77.i.i.i.i.i.i, label %.lr.ph.i.i.i.4.i.i.i

.lr.ph.i.i.i.4.i.i.i:                             ; preds = %bb.v
  %i.fp = and i1 %.052.i.i, %i.ep
  br i1 %i.fp, label %"_ZN4llvm7find_ifIRA28_K16ThunkNameRegModeZNK12_GLOBAL__N_115ARMSLSHardening33ConvertIndirectCallToIndirectJumpERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit.i.i", label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.4.i.i.i
  %i.fq = and i1 %.052.i.i, %i.er
  br i1 %i.fq, label %.loopexit.split.loop.exit73.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fr = and i1 %.052.i.i, %i.et
  br i1 %i.fr, label %.loopexit.split.loop.exit75.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fs = and i1 %.052.i.i, %i.ev
  br i1 %i.fs, label %.loopexit.split.loop.exit77.i.i.i.i.i.i, label %.lr.ph.i.i.i.5.i.i.i

.lr.ph.i.i.i.5.i.i.i:                             ; preds = %bb.y
  %i.ft = and i1 %.052.i.i, %i.ex
  br i1 %i.ft, label %"_ZN4llvm7find_ifIRA28_K16ThunkNameRegModeZNK12_GLOBAL__N_115ARMSLSHardening33ConvertIndirectCallToIndirectJumpERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit.i.i", label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.5.i.i.i
  %i.fu = and i1 %.052.i.i, %i.ez
  br i1 %i.fu, label %.loopexit.split.loop.exit73.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fv = and i1 %.052.i.i, %i.fb
  br i1 %i.fv, label %.loopexit.split.loop.exit75.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fw = and i1 %.052.i.i, %i.fd
  br i1 %i.fw, label %.loopexit.split.loop.exit77.i.i.i.i.i.i, label %.lr.ph.i.i.i.6.i.i.i

.lr.ph.i.i.i.6.i.i.i:                             ; preds = %bb.ab
  %i.fx = and i1 %.052.i.i, %i.ff
  br i1 %i.fx, label %"_ZN4llvm7find_ifIRA28_K16ThunkNameRegModeZNK12_GLOBAL__N_115ARMSLSHardening33ConvertIndirectCallToIndirectJumpERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit.i.i", label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.6.i.i.i
  %i.fy = and i1 %.052.i.i, %i.fh
  br i1 %i.fy, label %.loopexit.split.loop.exit73.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fz = and i1 %.052.i.i, %i.fj
  br i1 %i.fz, label %.loopexit.split.loop.exit75.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ga = and i1 %.052.i.i, %i.fl
  br i1 %i.ga, label %.loopexit.split.loop.exit77.i.i.i.i.i.i, label %"_ZN4llvm7find_ifIRA28_K16ThunkNameRegModeZNK12_GLOBAL__N_115ARMSLSHardening33ConvertIndirectCallToIndirectJumpERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit.i.i"

.loopexit.split.loop.exit73.i.i.i.i.i.i:          ; preds = %bb.ac, %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.k
  %.02982.i.i.i.lcssa4.i.i.i = phi ptr [ @_ZL12SLSBLRThunks, %bb.k ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 64), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 128), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 192), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 256), %bb.w ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 320), %bb.z ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 384), %bb.ac ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.02982.i.i.i.lcssa4.i.i.i, i64 16
  br label %"_ZN4llvm7find_ifIRA28_K16ThunkNameRegModeZNK12_GLOBAL__N_115ARMSLSHardening33ConvertIndirectCallToIndirectJumpERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit.i.i"

.loopexit.split.loop.exit75.i.i.i.i.i.i:          ; preds = %bb.ad, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o, %bb.l
  %.02982.i.i.i.lcssa5.i.i.i = phi ptr [ @_ZL12SLSBLRThunks, %bb.l ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 64), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 128), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 192), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 256), %bb.x ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 320), %bb.aa ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 384), %bb.ad ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.02982.i.i.i.lcssa5.i.i.i, i64 32
  br label %"_ZN4llvm7find_ifIRA28_K16ThunkNameRegModeZNK12_GLOBAL__N_115ARMSLSHardening33ConvertIndirectCallToIndirectJumpERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit.i.i"

.loopexit.split.loop.exit77.i.i.i.i.i.i:          ; preds = %bb.ae, %bb.ab, %bb.y, %bb.v, %bb.s, %bb.p, %bb.m
  %.02982.i.i.i.lcssa6.i.i.i = phi ptr [ @_ZL12SLSBLRThunks, %bb.m ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 64), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 128), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 192), %bb.v ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 256), %bb.y ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 320), %bb.ab ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 384), %bb.ae ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.02982.i.i.i.lcssa6.i.i.i, i64 48
  br label %"_ZN4llvm7find_ifIRA28_K16ThunkNameRegModeZNK12_GLOBAL__N_115ARMSLSHardening33ConvertIndirectCallToIndirectJumpERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit.i.i"

"_ZN4llvm7find_ifIRA28_K16ThunkNameRegModeZNK12_GLOBAL__N_115ARMSLSHardening33ConvertIndirectCallToIndirectJumpERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit.i.i": ; preds = %.loopexit.split.loop.exit77.i.i.i.i.i.i, %.loopexit.split.loop.exit75.i.i.i.i.i.i, %.loopexit.split.loop.exit73.i.i.i.i.i.i, %bb.ae, %.lr.ph.i.i.i.6.i.i.i, %.lr.ph.i.i.i.5.i.i.i, %.lr.ph.i.i.i.4.i.i.i, %.lr.ph.i.i.i.3.i.i.i, %.lr.ph.i.i.i.2.i.i.i, %.lr.ph.i.i.i.1.i.i.i, %.split55.i.i
  %.028.i.i.i.i.i.i = phi ptr [ %i.gd, %.loopexit.split.loop.exit77.i.i.i.i.i.i ], [ %i.gc, %.loopexit.split.loop.exit75.i.i.i.i.i.i ], [ %i.gb, %.loopexit.split.loop.exit73.i.i.i.i.i.i ], [ @_ZL12SLSBLRThunks, %.split55.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 320), %.lr.ph.i.i.i.5.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 64), %.lr.ph.i.i.i.1.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 384), %.lr.ph.i.i.i.6.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 128), %.lr.ph.i.i.i.2.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 256), %.lr.ph.i.i.i.4.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 192), %.lr.ph.i.i.i.3.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL12SLSBLRThunks, i64 448), %bb.ae ]
  %i.ge = load ptr, ptr %i.ej, align 8, !tbaa !380, !nonnull !146, !align !147
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !387
  %i.gh = load ptr, ptr %.028.i.i.i.i.i.i, align 8, !tbaa !388 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i, label %_ZN4llvm9StringRefC2EPKc.exit.i.i, label %bb.af

bb.af:                                            ; preds = %"_ZN4llvm7find_ifIRA28_K16ThunkNameRegModeZNK12_GLOBAL__N_115ARMSLSHardening33ConvertIndirectCallToIndirectJumpERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit.i.i"
  %i.gi = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gh) #17
  br label %_ZN4llvm9StringRefC2EPKc.exit.i.i

_ZN4llvm9StringRefC2EPKc.exit.i.i:                ; preds = %bb.af, %"_ZN4llvm7find_ifIRA28_K16ThunkNameRegModeZNK12_GLOBAL__N_115ARMSLSHardening33ConvertIndirectCallToIndirectJumpERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit.i.i"
  %.sroa.0.0.i.i.i = phi i64 [ %i.gi, %bb.af ], [ 0, %"_ZN4llvm7find_ifIRA28_K16ThunkNameRegModeZNK12_GLOBAL__N_115ARMSLSHardening33ConvertIndirectCallToIndirectJumpERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEE3$_0EEDaOT_T0_.exit.i.i" ]
  %i.gj = call noundef ptr @_ZNK4llvm6Module13getNamedValueENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.gg, ptr %i.gh, i64 %.sroa.0.0.i.i.i) #17 ; 2 uses
  %i.gk = load ptr, ptr %i.h, align 8, !tbaa !364
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !284 ; 2 uses
  %i.gn = load ptr, ptr %i.da, align 8, !tbaa !328 ; 6 uses
  br i1 %.052.i.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i21, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit65.i.i

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i21: ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i
  %i.go = getelementptr inbounds i8, ptr %i.gm, i64 -142688
  %i.gp = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %i.go, ptr %.sroa.031.0.copyload.i.i, i1 noundef zeroext false) #17 ; 10 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef %i.gp) #17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i22 = load i64, ptr %.sroa.013.022.i, align 8
  %i.gq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i22, -8 ; 2 uses
  %i.gr = inttoptr i64 %i.gq to ptr
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr %.sroa.013.022.i, ptr %i.gs, align 8, !tbaa !278
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i23 = load i64, ptr %i.gp, align 8
  %i.gt = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i23, 7
  %i.gu = or disjoint i64 %i.gt, %i.gq
  store i64 %i.gu, ptr %i.gp, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store ptr %i.gp, ptr %i.gv, align 8, !tbaa !278
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i24 = load i64, ptr %.sroa.013.022.i, align 8
  %i.gw = ptrtoint ptr %i.gp to i64
  %i.gx = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i.i24, 7
  %i.gy = or disjoint i64 %i.gx, %i.gw
  store i64 %i.gy, ptr %.sroa.013.022.i, align 8
  %i.gz = load ptr, ptr %i.eb, align 8, !tbaa !379
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i32 1, ptr %5, align 8, !alias.scope !389
  store ptr null, ptr %i.o, align 8, !tbaa !335, !alias.scope !389
  store i64 %i.hb, ptr %i.p, align 8, !tbaa !330, !alias.scope !389
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gp, ptr noundef nonnull align 8 dereferenceable(1065) %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.hc = load ptr, ptr %i.eb, align 8, !tbaa !379
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 36
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %i.q, align 8, !tbaa !335, !alias.scope !390
  store i32 %i.he, ptr %i.r, align 4, !tbaa !330, !alias.scope !390
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !alias.scope !390
  store i32 0, ptr %4, align 8, !alias.scope !390
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gp, ptr noundef nonnull align 8 dereferenceable(1065) %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr null, ptr %i.t, align 8, !tbaa !335, !alias.scope !391
  store ptr %i.gj, ptr %i.u, align 8, !tbaa !330, !alias.scope !391
  store i32 0, ptr %i.v, align 4, !tbaa !330, !alias.scope !391
  store i32 0, ptr %i.w, align 8, !tbaa !330, !alias.scope !391
  store i32 10, ptr %3, align 8, !alias.scope !391
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gp, ptr noundef nonnull align 8 dereferenceable(1065) %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.ag

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit65.i.i: ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i
  %i.hf = getelementptr inbounds i8, ptr %i.gm, i64 -27008
  %i.hg = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %i.hf, ptr %.sroa.031.0.copyload.i.i, i1 noundef zeroext false) #17 ; 8 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef %i.hg) #17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i57.i.i = load i64, ptr %.sroa.013.022.i, align 8
  %i.hh = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i57.i.i, -8 ; 2 uses
  %i.hi = inttoptr i64 %i.hh to ptr
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store ptr %.sroa.013.022.i, ptr %i.hj, align 8, !tbaa !278
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i58.i.i = load i64, ptr %i.hg, align 8
  %i.hk = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i58.i.i, 7
  %i.hl = or disjoint i64 %i.hk, %i.hh
  store i64 %i.hl, ptr %i.hg, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store ptr %i.hg, ptr %i.hm, align 8, !tbaa !278
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i59.i.i = load i64, ptr %.sroa.013.022.i, align 8
  %i.hn = ptrtoint ptr %i.hg to i64
  %i.ho = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i59.i.i, 7
  %i.hp = or disjoint i64 %i.ho, %i.hn
  store i64 %i.hp, ptr %.sroa.013.022.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr null, ptr %i.k, align 8, !tbaa !335, !alias.scope !392
  store ptr %i.gj, ptr %i.l, align 8, !tbaa !330, !alias.scope !392
  store i32 0, ptr %i.m, align 4, !tbaa !330, !alias.scope !392
  store i32 0, ptr %i.n, align 8, !tbaa !330, !alias.scope !392
  store i32 10, ptr %2, align 8, !alias.scope !392
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.hg, ptr noundef nonnull align 8 dereferenceable(1065) %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit65.i.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i21
  %.sroa.phi.sroa.speculated.i.i = phi ptr [ %i.gp, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit.i.i21 ], [ %i.hg, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit65.i.i ] ; 8 uses
  %i.hq = call noundef i32 @_ZNK4llvm12MachineInstr22getNumExplicitOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.phi.sroa.speculated.i.i) #17 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.phi.sroa.speculated.i.i, i64 40
  %i.hs = load i24, ptr %i.hr, align 8            ; 2 uses
  %i.ht = zext i24 %i.hs to i32
  %i.hu = icmp ult i32 %i.hq, %i.ht
  br i1 %i.hu, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.phi.sroa.speculated.i.i, i64 32
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !379
  %i.hx = zext nneg i32 %i.hq to i64
  %wide.trip.count.i.i = zext i24 %i.hs to i64
  br label %bb.ah

._crit_edge.i.i:                                  ; preds = %.critedge2.i.i, %bb.ag
  %.0103.lcssa.i.i = phi i32 [ -1, %bb.ag ], [ %.2.i.i, %.critedge2.i.i ] ; 2 uses
  %.0102.lcssa.i.i = phi i32 [ -1, %bb.ag ], [ %.1.i.i, %.critedge2.i.i ] ; 2 uses
  %.sroa.speculated75.i.i = call i32 @llvm.smax.i32(i32 %.0103.lcssa.i.i, i32 %.0102.lcssa.i.i)
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %.0102.lcssa.i.i, i32 %.0103.lcssa.i.i)
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.phi.sroa.speculated.i.i, i32 noundef %.sroa.speculated75.i.i) #17
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.phi.sroa.speculated.i.i, i32 noundef %.sroa.speculated.i.i) #17
  call void @_ZN4llvm12MachineInstr15copyImplicitOpsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.phi.sroa.speculated.i.i, ptr noundef nonnull align 8 dereferenceable(1065) %i.ej, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.013.022.i) #17
  call void @_ZN4llvm15MachineFunction22moveAdditionalCallInfoEPKNS_12MachineInstrES3_(ptr noundef nonnull align 8 dereferenceable(1065) %i.ej, ptr noundef nonnull %.sroa.013.022.i, ptr noundef nonnull %.sroa.phi.sroa.speculated.i.i) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr null, ptr %i.x, align 8, !tbaa !335, !alias.scope !393
  %11 = select i1 %.not.i.i18, i32 33554432, i32 100663296
  store i32 %i.ef, ptr %i.y, align 4, !tbaa !330, !alias.scope !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false), !alias.scope !393
  store i32 %11, ptr %6, align 8, !alias.scope !393
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.phi.sroa.speculated.i.i, ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.013.022.i, align 8
  %i.hy = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.hy, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i
  %i.hz = load i32, ptr %i.do, align 4, !tbaa !372
  %i.ia = and i32 %i.hz, 8
  %.not34.i.i.i.i.i.i.i = icmp eq i32 %i.ia, 0
  br i1 %.not34.i.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i.i.i = phi ptr [ %i.ic, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i ], [ %.sroa.013.022.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i.i, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !278 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 44
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !372
  %i.if = and i32 %i.ie, 8
  %.not3.i.i.i.i.i.i.i = icmp eq i32 %i.if, 0
  br i1 %.not3.i.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i, !llvm.loop !344

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, %._crit_edge.i.i
  %.sroa.0.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.022.i, %._crit_edge.i.i ], [ %.sroa.013.022.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i ], [ %i.ic, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i.i, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !278 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %.sroa.013.022.i, %i.ih
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvmL14isIndirectCallERKNS_12MachineInstrE.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.03.05.i.i.i.i.i = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i ], [ %.sroa.013.022.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i ] ; 6 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 8 ; 3 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !278 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull %.sroa.03.05.i.i.i.i.i) #17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i.i.i, align 8
  %i.ik = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.il = inttoptr i64 %i.ik to ptr
  %i.im = load ptr, ptr %i.ii, align 8, !tbaa !278 ; 3 uses
  %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.im, align 8
  %i.in = and i64 %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i.i.i, 7
  %i.io = or disjoint i64 %i.in, %i.ik
  store i64 %i.io, ptr %i.im, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store ptr %i.im, ptr %i.ip, align 8, !tbaa !278
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i.i.i, align 8
  %i.iq = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i.i.i, 7
  store i64 %i.iq, ptr %.sroa.03.05.i.i.i.i.i, align 8
  store ptr null, ptr %i.ii, align 8, !tbaa !278
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull %.sroa.03.05.i.i.i.i.i) #17
  %.not.i.i.i.i11.i = icmp eq ptr %i.ij, %i.ih
  br i1 %.not.i.i.i.i11.i, label %_ZN4llvmL14isIndirectCallERKNS_12MachineInstrE.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

bb.ah:                                            ; preds = %.critedge2.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.hx, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.critedge2.i.i ] ; 4 uses
  %.0102112.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.1.i.i, %.critedge2.i.i ] ; 4 uses
  %.0103111.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.2.i.i, %.critedge2.i.i ] ; 4 uses
  %i.ir = getelementptr inbounds nuw [32 x i8], ptr %i.hw, i64 %indvars.iv.i.i ; 2 uses
  %.sroa.068.0.copyload.i.i = load i32, ptr %i.ir, align 8, !tbaa !330 ; 3 uses
  %i.is = and i32 %.sroa.068.0.copyload.i.i, 255
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %bb.ai, label %.critedge2.i.i

bb.ai:                                            ; preds = %bb.ah
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !330
  switch i32 %.sroa.6.0.copyload.i.i, label %.critedge2.i.i [
    i32 14, label %bb.aj
    i32 17, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.iu = and i32 %.sroa.068.0.copyload.i.i, 16777216
  %.not110.i.i = icmp eq i32 %i.iu, 0
  %i.iv = trunc nuw i64 %indvars.iv.i.i to i32
  %spec.select107.i.i = select i1 %.not110.i.i, i32 %.0103111.i.i, i32 %i.iv
  br label %.critedge2.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.iw = and i32 %.sroa.068.0.copyload.i.i, 16777216
  %.not109.i.i = icmp eq i32 %i.iw, 0
  %i.ix = trunc nuw i64 %indvars.iv.i.i to i32
  %spec.select108.i.i = select i1 %.not109.i.i, i32 %i.ix, i32 %.0102112.i.i
  br label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %.2.i.i = phi i32 [ %spec.select107.i.i, %bb.aj ], [ %.0103111.i.i, %bb.ak ], [ %.0103111.i.i, %bb.ah ], [ %.0103111.i.i, %bb.ai ] ; 2 uses
  %.1.i.i = phi i32 [ %.0102112.i.i, %bb.aj ], [ %spec.select108.i.i, %bb.ak ], [ %.0102112.i.i, %bb.ah ], [ %.0102112.i.i, %bb.ai ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.ah, !llvm.loop !357

_ZN4llvmL14isIndirectCallERKNS_12MachineInstrE.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i, %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit.i, %.split.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15
  %.1.i19 = phi i1 [ %.0923.i, %_ZNK4llvm12MachineInstr8isReturnENS0_9QueryTypeE.exit.i ], [ %.0923.i, %.split.i ], [ %.0923.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i15 ], [ true, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i.i.i ], [ true, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not.i20 = icmp eq ptr %i.dm, %i.cz
  br i1 %.not.i20, label %_ZNK12_GLOBAL__N_115ARMSLSHardening19hardenIndirectCallsERN4llvm17MachineBasicBlockE.exit.loopexit, label %.preheader.i12, !llvm.loop !358

_ZNK12_GLOBAL__N_115ARMSLSHardening19hardenIndirectCallsERN4llvm17MachineBasicBlockE.exit.loopexit: ; preds = %_ZN4llvmL14isIndirectCallERKNS_12MachineInstrE.exit.i
  %i.iy = or i1 %.0.i, %.1.i19
  br label %_ZNK12_GLOBAL__N_115ARMSLSHardening19hardenIndirectCallsERN4llvm17MachineBasicBlockE.exit

_ZNK12_GLOBAL__N_115ARMSLSHardening19hardenIndirectCallsERN4llvm17MachineBasicBlockE.exit: ; preds = %_ZNK12_GLOBAL__N_115ARMSLSHardening19hardenIndirectCallsERN4llvm17MachineBasicBlockE.exit.loopexit, %_ZNK12_GLOBAL__N_115ARMSLSHardening19hardenReturnsAndBRsERN4llvm17MachineBasicBlockE.exit, %bb.g
  %.0.i10 = phi i1 [ %.0.i, %_ZNK12_GLOBAL__N_115ARMSLSHardening19hardenReturnsAndBRsERN4llvm17MachineBasicBlockE.exit ], [ %.0.i, %bb.g ], [ %i.iy, %_ZNK12_GLOBAL__N_115ARMSLSHardening19hardenIndirectCallsERN4llvm17MachineBasicBlockE.exit.loopexit ]
  %i.iz = or i1 %.038, %.0.i10                    ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.029.039, i64 8
  %.sroa.029.0 = load ptr, ptr %i.ja, align 8, !tbaa !149 ; 2 uses
  %.not = icmp eq ptr %.sroa.029.0, %i.j
  br i1 %.not, label %._crit_edge, label %bb.b
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

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161)) local_unnamed_addr #3

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #3

declare ptr @_ZN4llvm17MachineBasicBlock18getFirstTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32), ptr, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm6Module13getNamedValueENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64) local_unnamed_addr #3

declare noundef i32 @_ZNK4llvm12MachineInstr22getNumExplicitOperandsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr15copyImplicitOpsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare void @_ZN4llvm15MachineFunction22moveAdditionalCallInfoEPKNS_12MachineInstrES3_(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117ARMIndirectThunksD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK12_GLOBAL__N_117ARMIndirectThunks11getPassNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.31, i64 19 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZN4llvm17ThunkInserterPassIJN12_GLOBAL__N_119SLSBLRThunkInserterEEE16doInitializationERNS_6ModuleE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((56, 60)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.a, align 8, !tbaa !338
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4llvm17ThunkInserterPassIJN12_GLOBAL__N_119SLSBLRThunkInserterEEE20runOnMachineFunctionERNS_15MachineFunctionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %4 = alloca %"struct.std::array.492", align 8   ; 7 uses
end_hunk_0
