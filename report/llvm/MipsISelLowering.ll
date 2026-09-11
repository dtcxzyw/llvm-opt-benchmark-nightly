Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MipsISelLowering?download=true
inline.NumInlined: 9952
inline.NumDeleted: 3126
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZNK4llvm18MipsTargetLowering17emitAtomicCmpSwapERNS_12MachineInstrEPNS_17MachineBasicBlockE:switch.lookup.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !592
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -640
  %i.bf = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i32 %i.am) ; 2 uses
  %i.bg = extractvalue { ptr, ptr } %i.bf, 0
  %i.bh = extractvalue { ptr, ptr } %i.bf, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !595, !alias.scope !1375
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.z, ptr %i.bj, align 4, !tbaa !305, !alias.scope !1375
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false), !alias.scope !1375
  store i32 0, ptr %10, align 8, !alias.scope !1375
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bh, ptr noundef nonnull align 8 dereferenceable(1065) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  store ptr %.sroa.037.0.copyload, ptr %12, align 8, !tbaa !294
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %i.bm = load ptr, ptr %i.bc, align 8, !tbaa !592
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -640
  %i.bo = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i32 %i.at) ; 2 uses
  %i.bp = extractvalue { ptr, ptr } %i.bo, 0
  %i.bq = extractvalue { ptr, ptr } %i.bo, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.br, align 8, !tbaa !595, !alias.scope !1376
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.ab, ptr %i.bs, align 4, !tbaa !305, !alias.scope !1376
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false), !alias.scope !1376
  store i32 0, ptr %9, align 8, !alias.scope !1376
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bq, ptr noundef nonnull align 8 dereferenceable(1065) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store ptr %.sroa.037.0.copyload, ptr %13, align 8, !tbaa !294
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false)
  %i.bv = load ptr, ptr %i.bc, align 8, !tbaa !592
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -640
  %i.bx = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i32 %i.ba) ; 2 uses
  %i.by = extractvalue { ptr, ptr } %i.bx, 0
  %i.bz = extractvalue { ptr, ptr } %i.bx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ca, align 8, !tbaa !595, !alias.scope !1377
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.ad, ptr %i.cb, align 4, !tbaa !305, !alias.scope !1377
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false), !alias.scope !1377
  store i32 0, ptr %8, align 8, !alias.scope !1377
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bz, ptr noundef nonnull align 8 dereferenceable(1065) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.cd = load ptr, ptr %i.bc, align 8, !tbaa !592
  %i.ce = getelementptr inbounds [32 x i8], ptr %i.cd, i64 %.neg
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !582 ; 6 uses
  %i.cg = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr %.sroa.037.0.copyload, i1 noundef zeroext false) #27 ; 11 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef %i.cg) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.ci = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %1, ptr %i.ck, align 8, !tbaa !587
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.cg, align 8
  %i.cl = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.cm = or disjoint i64 %i.cl, %i.ci
  store i64 %i.cm, ptr %i.cg, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cg, ptr %i.cn, align 8, !tbaa !587
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.co = ptrtoint ptr %i.cg to i64
  %i.cp = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.cq = or disjoint i64 %i.cp, %i.co
  store i64 %i.cq, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.cr, align 8, !tbaa !595, !alias.scope !1378
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.x, ptr %i.cs, align 4, !tbaa !305, !alias.scope !1378
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false), !alias.scope !1378
  store i32 1090519040, ptr %7, align 8, !alias.scope !1378
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.cu, align 8, !tbaa !595, !alias.scope !1379
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.am, ptr %i.cv, align 4, !tbaa !305, !alias.scope !1379
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false), !alias.scope !1379
  store i32 67108864, ptr %6, align 8, !alias.scope !1379
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.cx, align 8, !tbaa !595, !alias.scope !1380
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.at, ptr %i.cy, align 4, !tbaa !305, !alias.scope !1380
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false), !alias.scope !1380
  store i32 67108864, ptr %5, align 8, !alias.scope !1380
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.da, align 8, !tbaa !595, !alias.scope !1381
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.ba, ptr %i.db, align 4, !tbaa !305, !alias.scope !1381
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false), !alias.scope !1381
  store i32 67108864, ptr %4, align 8, !alias.scope !1381
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.dd, align 8, !tbaa !595, !alias.scope !1382
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ae, ptr %i.de, align 4, !tbaa !305, !alias.scope !1382
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false), !alias.scope !1382
  store i32 1191182336, ptr %3, align 8, !alias.scope !1382
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.dg = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #27 ; 0 uses
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull ptr @_ZL19insertDivByZeroTrapRN4llvm12MachineInstrERNS_17MachineBasicBlockERKNS_15TargetInstrInfoEbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull returned align 8 dereferenceable(360) %1, ptr %.8.val, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @NoZeroDivCheck, i64 120), align 8, !tbaa !601, !range !50, !noundef !51
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !583  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %0, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !588
  %i.i = and i32 %i.h, 8
  %.not34.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.k, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %0, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !587  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !588
  %i.n = and i32 %i.m, 8
  %.not3.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !1

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %bb.b
  %.sroa.0.1.i.i.i.i = phi ptr [ %0, %bb.b ], [ %0, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.k, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !587  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.01.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !294
  %.neg = select i1 %3, i64 -2835, i64 -2832
  %i.r = getelementptr inbounds [32 x i8], ptr %.8.val, i64 %.neg
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !582  ; 4 uses
  %i.u = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr %.sroa.01.0.copyload, i1 noundef zeroext false) #27 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef %i.u) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i15 = load i64, ptr %i.p, align 8
  %i.w = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i15, -8 ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.p, ptr %i.y, align 8, !tbaa !587
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.u, align 8
  %i.z = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.aa = or disjoint i64 %i.z, %i.w
  store i64 %i.aa, ptr %i.u, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.u, ptr %i.ab, align 8, !tbaa !587
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %i.p, align 8
  %i.ac = ptrtoint ptr %i.u to i64
  %i.ad = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.ae = or disjoint i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %i.p, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !305
  %i.ah = load i32, ptr %i.e, align 8             ; 2 uses
  %7 = lshr i32 %i.ah, 26
  %8 = lshr i32 %i.ah, 24
  %.lobit.i = and i32 %8, 1
  %9 = xor i32 %.lobit.i, 1
  %i.ai = and i32 %9, %7
  %.not = icmp eq i32 %i.ai, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %10, align 8, !tbaa !595, !alias.scope !1389
  %11 = select i1 %.not, i32 0, i32 67108864
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.ag, ptr %i.aj, align 4, !tbaa !305, !alias.scope !1389
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !alias.scope !1389
  store i32 %11, ptr %6, align 8, !alias.scope !1389
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.u, ptr noundef nonnull align 8 dereferenceable(1065) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.al, align 8, !tbaa !595, !alias.scope !1390
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 21, ptr %i.am, align 4, !tbaa !305, !alias.scope !1390
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false), !alias.scope !1390
  store i32 0, ptr %5, align 8, !alias.scope !1390
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.u, ptr noundef nonnull align 8 dereferenceable(1065) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i32 1, ptr %4, align 8, !alias.scope !1391
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !595, !alias.scope !1391
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 7, ptr %i.ap, align 8, !tbaa !305, !alias.scope !1391
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.u, ptr noundef nonnull align 8 dereferenceable(1065) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !583 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = and i32 %i.as, -1048321
  %i.au = or disjoint i32 %i.at, 256
  store i32 %i.au, ptr %i.ar, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %i.av = load i32, ptr %i.e, align 8
  %i.aw = and i32 %i.av, -67108865
  store i32 %i.aw, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm18MipsTargetLowering16emitPseudoSELECTERNS_12MachineInstrEPNS_17MachineBasicBlockEbj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518456) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %14 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89, !nonnull !51, !align !90 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(536) %i.b) #27 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.042.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !294 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !584  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !585  ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !582  ; 3 uses
  %i.n = tail call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.m, ptr noundef %i.i, i64 undef, i8 0) #27 ; 8 uses
  %i.o = tail call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.m, ptr noundef %i.i, i64 undef, i8 0) #27 ; 14 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 296 ; 2 uses
  tail call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef %i.n) #27
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !586  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.k, ptr %i.r, align 8, !tbaa !585
  store ptr %i.q, ptr %i.n, align 8, !tbaa !586
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.n, ptr %i.s, align 8, !tbaa !585
  store ptr %i.n, ptr %i.k, align 8, !tbaa !586
  tail call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef %i.o) #27
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !586  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.k, ptr %i.u, align 8, !tbaa !585
  store ptr %i.t, ptr %i.o, align 8, !tbaa !586
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.o, ptr %i.v, align 8, !tbaa !585
  store ptr %i.o, ptr %i.k, align 8, !tbaa !586
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !587  ; 5 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.y = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !588
  %i.ab = and i32 %i.aa, 8
  %.not34.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.ad, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !587 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !588
  %i.ag = and i32 %i.af, 8
  %.not3.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !1

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %bb.a
  %.sroa.0.1.i.i.i.i = phi ptr [ %1, %bb.a ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.ad, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !587 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 11 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  %i.al = icmp eq ptr %i.x, %i.aj
  %or.cond.i.i = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond.i.i, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr %i.ai, ptr nonnull %i.aj) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i72 = load i64, ptr %i.aj, align 8
  %i.ao = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i72, -8 ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr
  %.0.copyload.i.i.i.i20.i.i.i.i.i.i = load i64, ptr %i.ai, align 8
  %i.aq = and i64 %.0.copyload.i.i.i.i20.i.i.i.i.i.i, -8
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.aj, ptr %i.as, align 8, !tbaa !587
  %.0.copyload.i.i.i.i21.i.i.i.i.i.i = load i64, ptr %i.ai, align 8
  %i.at = and i64 %.0.copyload.i.i.i.i21.i.i.i.i.i.i, -8
  %.0.copyload.i.i.i.i22.i.i.i.i.i.i = load i64, ptr %i.aj, align 8
  %i.au = and i64 %.0.copyload.i.i.i.i22.i.i.i.i.i.i, 7
  %i.av = or disjoint i64 %i.au, %i.at
  store i64 %i.av, ptr %i.aj, align 8
  %.0.copyload.i.i.i.i23.i.i.i.i.i.i = load i64, ptr %i.x, align 8
  %i.aw = and i64 %.0.copyload.i.i.i.i23.i.i.i.i.i.i, -8 ; 2 uses
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.x, ptr %i.ay, align 8, !tbaa !587
  %.0.copyload.i.i.i.i24.i.i.i.i.i.i = load i64, ptr %i.ai, align 8
  %i.az = and i64 %.0.copyload.i.i.i.i24.i.i.i.i.i.i, 7
  %i.ba = or disjoint i64 %i.az, %i.aw
  store i64 %i.ba, ptr %i.ai, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ai, ptr %i.bb, align 8, !tbaa !587
  %.0.copyload.i.i.i.i25.i.i.i.i.i.i = load i64, ptr %i.x, align 8
  %i.bc = and i64 %.0.copyload.i.i.i.i25.i.i.i.i.i.i, 7
  %i.bd = or disjoint i64 %i.bc, %i.ao
  store i64 %i.bd, ptr %i.x, align 8
  br label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit

_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %bb.b
  tail call void @_ZN4llvm17MachineBasicBlock31transferSuccessorsAndUpdatePHIsEPS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.o, ptr noundef nonnull %2) #27
  tail call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull %i.n, i32 -1) #27
  tail call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull %i.o, i32 -1) #27
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !592
  %i.bg = zext i32 %4 to i64
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr inbounds [32 x i8], ptr %i.bf, i64 %i.bh
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !582 ; 6 uses
  %i.bk = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr %.sroa.042.0.copyload, i1 noundef zeroext false) #27 ; 11 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef %i.bk) #27
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8
  %i.bm = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.aj, ptr %i.bo, align 8, !tbaa !587
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8
  %i.bp = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i, 7
  %i.bq = or disjoint i64 %i.bp, %i.bm
  store i64 %i.bq, ptr %i.bk, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bk, ptr %i.br, align 8, !tbaa !587
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8
  %i.bs = ptrtoint ptr %i.bk to i64
  %i.bt = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 7
  %i.bu = or disjoint i64 %i.bt, %i.bs
  store i64 %i.bu, ptr %i.aj, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !583
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !305 ; 2 uses
  br i1 %3, label %_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE.exit82

_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.bz, align 8, !tbaa !595, !alias.scope !1410
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 %i.by, ptr %i.ca, align 4, !tbaa !305, !alias.scope !1410
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false), !alias.scope !1410
  store i32 0, ptr %13, align 8, !alias.scope !1410
end_hunk_0
