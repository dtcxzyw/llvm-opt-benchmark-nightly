Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoongArchFrameLowering?download=true
inline.NumInlined: 912
inline.NumDeleted: 517
begin_hunk_0_@_ZNK4llvm22LoongArchFrameLowering16inlineStackProbeERNS_15MachineFunctionERNS_17MachineBasicBlockE:bb.a
  br label %._crit_edge33

._crit_edge33:                                    ; preds = %._crit_edge33.loopexit, %._crit_edge
  %i.az = phi ptr [ %.pre36, %._crit_edge33.loopexit ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.b
  br i1 %i.ba, label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge33
  call void @free(ptr noundef %i.az) #14
  br label %_ZN4llvm11SmallVectorIPNS_12MachineInstrELj2EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_12MachineInstrELj2EED2Ev.exit: ; preds = %bb.a, %._crit_edge33, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  ret void

bb.f:                                             ; preds = %.lr.ph32, %_ZL20emitStackProbeInlineN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8DebugLocENS_8RegisterE.exit
  %.030 = phi ptr [ %.pre, %.lr.ph32 ], [ %i.fs, %_ZL20emitStackProbeInlineN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8DebugLocENS_8RegisterE.exit ] ; 2 uses
  %i.bb = load ptr, ptr %.030, align 8, !tbaa !553 ; 10 uses
  %i.bc = call ptr @_ZN4llvm17MachineBasicBlock12findDebugLocENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %i.bb) #14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !554
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %i.bc, ptr %11, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !555 ; 9 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !304 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !8, !nonnull !129, !align !130 ; 7 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !131
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(519320) %i.bm) #14, !inline_history !556 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 354
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !163, !range !156, !noundef !129
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !131
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 136
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = call noundef ptr %i.bv(ptr noundef nonnull align 8 dereferenceable(519320) %i.bm) #14, !inline_history !556
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %.sroa.0.0.copyload.i79.i = load i8, ptr %i.bx, align 4, !tbaa !273
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !131
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 144
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(519320) %i.bm) #14, !inline_history !556
  %i.cc = call noundef i32 @_ZNK4llvm23LoongArchTargetLowering17getStackProbeSizeERKNS_15MachineFunctionENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(518448) %i.cb, ptr noundef nonnull align 8 dereferenceable(1065) %i.bk, i8 %.sroa.0.0.copyload.i79.i) #14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !367 ; 6 uses
  %i.cf = trunc nuw i8 %i.bs to i1                ; 2 uses
  %i.cg = zext i32 %i.cc to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !557
  %i.cj = call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.bk, ptr noundef %i.ci, i64 undef, i8 0) #14 ; 15 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bk, i64 296 ; 2 uses
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef %i.cj) #14
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !558 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.ce, ptr %i.cm, align 8, !tbaa !367
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !558
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cj, ptr %i.cn, align 8, !tbaa !367
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !558
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !557
  %i.cp = call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.bk, ptr noundef %i.co, i64 undef, i8 0) #14 ; 11 uses
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef %i.cp) #14
  %i.cq = load ptr, ptr %i.ce, align 8, !tbaa !558 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.ce, ptr %i.cr, align 8, !tbaa !367
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !558
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cp, ptr %i.cs, align 8, !tbaa !367
  store ptr %i.cp, ptr %i.ce, align 8, !tbaa !558
  call void @_ZNK4llvm18LoongArchInstrInfo6movImmERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterEmNS4_6MIFlagE(ptr noundef nonnull align 8 dereferenceable(440) %i.bq, ptr noundef nonnull align 8 dereferenceable(360) %i.bi, ptr nonnull %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %11, i32 59, i64 noundef %i.cg, i32 noundef 1) #14
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 48 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %.sroa.018.0.copyload.i = load ptr, ptr %11, align 8, !tbaa !264
  store ptr %.sroa.018.0.copyload.i, ptr %12, align 8, !tbaa !264
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !266
  %.neg.i = select i1 %i.cf, i64 -922, i64 -923
  %i.cw = getelementptr inbounds [32 x i8], ptr %i.cv, i64 %.neg.i
  %i.cx = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.cj, ptr nonnull %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i32 48) ; 2 uses
  %i.cy = extractvalue { ptr, ptr } %i.cx, 0      ; 2 uses
  %i.cz = extractvalue { ptr, ptr } %i.cx, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store ptr null, ptr %i.j, align 8, !tbaa !267, !alias.scope !559
  store i32 48, ptr %i.k, align 4, !tbaa !273, !alias.scope !559
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !559
  store i32 0, ptr %10, align 8, !alias.scope !559
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cz, ptr noundef nonnull align 8 dereferenceable(1065) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr null, ptr %i.m, align 8, !tbaa !267, !alias.scope !562
  store i32 59, ptr %i.n, align 4, !tbaa !273, !alias.scope !562
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !alias.scope !562
  store i32 0, ptr %9, align 8, !alias.scope !562
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cz, ptr noundef nonnull align 8 dereferenceable(1065) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 44 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !277
  %i.dc = or i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !277
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %.sroa.013.0.copyload.i = load ptr, ptr %11, align 8, !tbaa !264
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !266
  %.neg129.i = select i1 %i.cf, i64 -919, i64 -921
  %i.de = getelementptr inbounds [32 x i8], ptr %i.dd, i64 %.neg129.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !304 ; 4 uses
  %i.dh = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr %.sroa.013.0.copyload.i, i1 noundef zeroext false) #14 ; 10 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cj, i64 40 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef %i.dh) #14
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ct, align 8
  %i.dj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.ct, ptr %i.dl, align 8, !tbaa !355
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i = load i64, ptr %i.dh, align 8
  %i.dm = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i, 7
  %i.dn = or disjoint i64 %i.dm, %i.dj
  store i64 %i.dn, ptr %i.dh, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dh, ptr %i.do, align 8, !tbaa !355
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %i.ct, align 8
  %i.dp = ptrtoint ptr %i.dh to i64
  %i.dq = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 7
  %i.dr = or disjoint i64 %i.dq, %i.dp
  store i64 %i.dr, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store ptr null, ptr %i.p, align 8, !tbaa !267, !alias.scope !565
  store i32 45, ptr %i.q, align 4, !tbaa !273, !alias.scope !565
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false), !alias.scope !565
  store i32 0, ptr %8, align 8, !alias.scope !565
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(1065) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr null, ptr %i.s, align 8, !tbaa !267, !alias.scope !568
  store i32 48, ptr %i.t, align 4, !tbaa !273, !alias.scope !568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !alias.scope !568
  store i32 0, ptr %7, align 8, !alias.scope !568
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(1065) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store i32 1, ptr %6, align 8, !alias.scope !571
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(1065) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 44 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !277
  %i.du = or i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !277
  %.sroa.010.0.copyload.i = load ptr, ptr %11, align 8, !tbaa !264
  %i.dv = load ptr, ptr %i.cu, align 8, !tbaa !266
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -18176
  %i.dx = load ptr, ptr %i.df, align 8, !tbaa !304 ; 4 uses
  %i.dy = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %i.dw, ptr %.sroa.010.0.copyload.i, i1 noundef zeroext false) #14 ; 10 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef %i.dy) #14
  %.0.copyload.i.i.i.i.i.i.i.i.i.i81.i = load i64, ptr %i.ct, align 8
  %i.dz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i81.i, -8 ; 2 uses
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.ct, ptr %i.eb, align 8, !tbaa !355
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i82.i = load i64, ptr %i.dy, align 8
  %i.ec = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i82.i, 7
  %i.ed = or disjoint i64 %i.ec, %i.dz
  store i64 %i.ed, ptr %i.dy, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %i.dy, ptr %i.ee, align 8, !tbaa !355
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i83.i = load i64, ptr %i.ct, align 8
  %i.ef = ptrtoint ptr %i.dy to i64
  %i.eg = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i83.i, 7
  %i.eh = or disjoint i64 %i.eg, %i.ef
  store i64 %i.eh, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr null, ptr %i.w, align 8, !tbaa !267, !alias.scope !574
  store i32 48, ptr %i.x, align 4, !tbaa !273, !alias.scope !574
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !alias.scope !574
  store i32 0, ptr %5, align 8, !alias.scope !574
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dy, ptr noundef nonnull align 8 dereferenceable(1065) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr null, ptr %i.z, align 8, !tbaa !267, !alias.scope !577
  store i32 %i.bg, ptr %i.aa, align 4, !tbaa !273, !alias.scope !577
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false), !alias.scope !577
  store i32 0, ptr %4, align 8, !alias.scope !577
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dy, ptr noundef nonnull align 8 dereferenceable(1065) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr null, ptr %i.ac, align 8, !tbaa !267, !alias.scope !580
  store ptr %i.cj, ptr %i.ad, align 8, !tbaa !273, !alias.scope !580
  store i32 4, ptr %3, align 8, !alias.scope !580
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dy, ptr noundef nonnull align 8 dereferenceable(1065) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 44 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !277
  %i.ek = or i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !277
  %14 = getelementptr inbounds nuw i8, ptr %i.cp, i64 48 ; 4 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i90.i = load i64, ptr %i.bb, align 8
  %i.el = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i90.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.el, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.f
  %i.em = getelementptr inbounds nuw i8, ptr %i.bb, i64 44
  %i.en = load i32, ptr %i.em, align 4, !tbaa !277
  %i.eo = and i32 %i.en, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.eo, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.eq, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %i.bb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !355 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 44
  %i.es = load i32, ptr %i.er, align 4, !tbaa !277
  %i.et = and i32 %i.es, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.et, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !374

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %bb.f
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.bb, %bb.f ], [ %i.bb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.eq, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !355 ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 6 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  %i.ey = icmp eq ptr %i.cp, %i.bi
  %or.cond.i.i.i = or i1 %i.ey, %i.ex
  br i1 %or.cond.i.i.i, label %_ZL20emitStackProbeInlineN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8DebugLocENS_8RegisterE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.ez, ptr %i.ev, ptr nonnull %i.ew) #14
  %.0.copyload.i.i.i.i.i.i.i.i.i.i92.i = load i64, ptr %i.ew, align 8
  %i.fb = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i92.i, -8 ; 2 uses
  %i.fc = inttoptr i64 %i.fb to ptr
  %.0.copyload.i.i.i.i20.i.i.i.i.i.i.i = load i64, ptr %i.ev, align 8
  %i.fd = and i64 %.0.copyload.i.i.i.i20.i.i.i.i.i.i.i, -8
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.ew, ptr %i.ff, align 8, !tbaa !355
  %.0.copyload.i.i.i.i21.i.i.i.i.i.i.i = load i64, ptr %i.ev, align 8
  %i.fg = and i64 %.0.copyload.i.i.i.i21.i.i.i.i.i.i.i, -8
  %.0.copyload.i.i.i.i22.i.i.i.i.i.i.i = load i64, ptr %i.ew, align 8
  %i.fh = and i64 %.0.copyload.i.i.i.i22.i.i.i.i.i.i.i, 7
  %i.fi = or disjoint i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %i.ew, align 8
  %.0.copyload.i.i.i.i23.i.i.i.i.i.i.i = load i64, ptr %14, align 8
  %i.fj = and i64 %.0.copyload.i.i.i.i23.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %14, ptr %i.fl, align 8, !tbaa !355
  %.0.copyload.i.i.i.i24.i.i.i.i.i.i.i = load i64, ptr %i.ev, align 8
  %i.fm = and i64 %.0.copyload.i.i.i.i24.i.i.i.i.i.i.i, 7
  %i.fn = or disjoint i64 %i.fm, %i.fj
  store i64 %i.fn, ptr %i.ev, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.ev, ptr %i.fo, align 8, !tbaa !355
  %.0.copyload.i.i.i.i25.i.i.i.i.i.i.i = load i64, ptr %14, align 8
  %i.fp = and i64 %.0.copyload.i.i.i.i25.i.i.i.i.i.i.i, 7
  %i.fq = or disjoint i64 %i.fp, %i.fb
  store i64 %i.fq, ptr %14, align 8
  br label %_ZL20emitStackProbeInlineN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8DebugLocENS_8RegisterE.exit

_ZL20emitStackProbeInlineN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8DebugLocENS_8RegisterE.exit: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %bb.g
  call void @_ZN4llvm17MachineBasicBlock31transferSuccessorsAndUpdatePHIsEPS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.cp, ptr noundef nonnull %i.bi) #14
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %i.cj, ptr noundef nonnull %i.cp, i32 -1) #14
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %i.cj, ptr noundef nonnull %i.cj, i32 -1) #14
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %i.bi, ptr noundef nonnull %i.cj, i32 -1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %i.cp, ptr %i.a, align 8, !tbaa !405
  store ptr %i.cj, ptr %i.ae, align 8, !tbaa !405
  call void @_ZN4llvm21fullyRecomputeLiveInsENS_8ArrayRefIPNS_17MachineBasicBlockEEE(ptr nonnull %i.a, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.fr = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bb) #14 ; 0 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.030, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fs, %i.h
  br i1 %.not, label %._crit_edge33.loopexit, label %bb.f
}

declare ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm22LoongArchFrameLowering20determineCalleeSavesERNS_15MachineFunctionERNS_9BitVectorEPNS_12RegScavengerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(68) %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNK4llvm19TargetFrameLowering20determineCalleeSavesERNS_15MachineFunctionERNS_9BitVectorEPNS_12RegScavengerE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(68) %2, ptr noundef %3) #14
  %i.a = load ptr, ptr %1, align 8, !tbaa !501, !nonnull !129, !align !130
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.a, i32 noundef 21) #14
  br i1 %i.b, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !131
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #14, !inline_history !513
  br i1 %i.f, label %bb.b, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread

bb.b:                                             ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit
  %i.g = load ptr, ptr %2, align 8, !tbaa !386    ; 2 uses
  %i.h = load <2 x i64>, ptr %i.g, align 8, !tbaa !431
  %i.i = or <2 x i64> %i.h, <i64 70368744177664, i64 8>
  store <2 x i64> %i.i, ptr %i.g, align 8, !tbaa !431
  br label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !158, !nonnull !129, !align !130 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !131
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(519320) %i.m) #14, !inline_history !544 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.s = load i8, ptr %i.r, align 4, !tbaa !136, !range !156, !noundef !129
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread

bb.c:                                             ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !131
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 536
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(316) %i.q, ptr noundef nonnull align 8 dereferenceable(1065) %1) #14, !inline_history !545
  br i1 %i.x, label %_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit, label %_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit: ; preds = %bb.c
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !131
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 528
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(316) %i.q, ptr noundef nonnull align 8 dereferenceable(1065) %1) #14, !inline_history !545
  br i1 %i.ab, label %bb.d, label %_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread

bb.d:                                             ; preds = %_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit
  %i.ac = tail call i32 @_ZN4llvm12LoongArchABI8getBPRegEv() #14 ; 2 uses
  %i.ad = and i32 %i.ac, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = lshr i32 %i.ac, 6
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = load ptr, ptr %2, align 8, !tbaa !386
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !431
  %i.al = or i64 %i.af, %i.ak
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !431
  br label %_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread: ; preds = %bb.c, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread, %bb.d, %_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit
  ret void
}

declare void @_ZNK4llvm19TargetFrameLowering20determineCalleeSavesERNS_15MachineFunctionERNS_9BitVectorEPNS_12RegScavengerE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(68), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm22LoongArchFrameLowering20hasReservedCallFrameERKNS_15MachineFunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = load i8, ptr %i.c, align 4, !tbaa !136, !range !156, !noundef !129
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZNK4llvm22LoongArchFrameLowering29eliminateCallFramePseudoInstrERNS_15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::DebugLoc", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !264
  store i64 %i.b, ptr %4, align 8, !tbaa !264
  %i.c = load ptr, ptr %0, align 8, !tbaa !131
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #14
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !554
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !273  ; 4 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %i.j, 2147483648
  %.not39 = icmp eq i64 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i = load i8, ptr %i.l, align 4, !tbaa !273
  %i.m = zext nneg i8 %.sroa.0.0.copyload.i to i64
  %i.n = shl nuw i64 1, %i.m                      ; 3 uses
  %i.o = sub i64 0, %i.n                          ; 2 uses
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %reass.sub40 = sub i64 %i.n, %i.j
  %i.p = add i64 %reass.sub40, 4294967295
  %i.q = and i64 %i.p, %i.o
  %i.r = sub i64 0, %i.q
  br label %_ZNK4llvm19TargetFrameLowering13alignSPAdjustEi.exit

bb.e:                                             ; preds = %bb.c
  %i.s = add i64 %i.j, 4294967295
  %i.t = add i64 %i.s, %i.n
  %i.u = and i64 %i.t, %i.o
  br label %_ZNK4llvm19TargetFrameLowering13alignSPAdjustEi.exit

_ZNK4llvm19TargetFrameLowering13alignSPAdjustEi.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.r, %bb.d ], [ %i.u, %bb.e ]
  %sext = shl i64 %.0.i, 32
  %i.v = ashr exact i64 %sext, 32                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.x = load i32, ptr %i.w, align 4, !tbaa !373
  %i.y = icmp eq i32 %i.x, 331
  %i.z = sub nsw i64 0, %i.v
  %spec.select = select i1 %i.y, i64 %i.z, i64 %i.v ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8, !nonnull !129, !align !130 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !131
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(519320) %i.ab) #14 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i35 = load i8, ptr %i.ag, align 4, !tbaa !273
  %i.ah = tail call noundef i32 @_ZNK4llvm23LoongArchTargetLowering17getStackProbeSizeERKNS_15MachineFunctionENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(518448) %i.af, ptr noundef nonnull align 8 dereferenceable(1065) %1, i8 %.sroa.0.0.copyload.i35) #14
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !131
end_hunk_0
begin_hunk_1_@_ZNK4llvm22LoongArchFrameLowering29eliminateCallFramePseudoInstrERNS_15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE:bb.a

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit: ; preds = %bb.i, %bb.h, %bb.g
  %i.bb = phi i1 [ false, %bb.g ], [ true, %bb.h ], [ %i.ba, %bb.i ]
  tail call void @_ZNK4llvm22LoongArchFrameLowering13allocateStackERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERNS_15MachineFunctionEmmbbmbNS4_6MIFlagE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %3, ptr nonnull align 8 poison, i64 noundef %i.an, i64 noundef %i.an, i1 noundef zeroext %i.bb, i1 noundef zeroext true, i64 noundef %i.ai, i1 noundef zeroext %i.as, i32 noundef 0)
  %i.bc = load ptr, ptr %0, align 8, !tbaa !131
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 144
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #14
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %_ZNK4llvm19TargetFrameLowering13alignSPAdjustEi.exit
  call void @_ZNK4llvm22LoongArchFrameLowering9adjustRegERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_lNS4_6MIFlagE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 48, i32 48, i64 noundef %spec.select, i32 noundef 0)
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.j, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit, %bb.a
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %3, align 8
  %i.bf = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !277
  %i.bi = and i32 %i.bh, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.bk, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %3, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !355 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 44
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !277
  %i.bn = and i32 %i.bm, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !374

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %bb.k
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %3, %bb.k ], [ %3, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.bk, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !355 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %3, %i.bp
  br i1 %.not4.i.i.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %.lr.ph.i.i.i
  %.sroa.03.05.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i ], [ %3, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ] ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i, i64 8 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !355 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull %.sroa.03.05.i.i.i) #14
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.bt = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !355 ; 3 uses
  %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i = load i64, ptr %i.bv, align 8
  %i.bw = and i64 %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i, 7
  %i.bx = or disjoint i64 %i.bw, %i.bt
  store i64 %i.bx, ptr %i.bv, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !355
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.bz = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i, 7
  store i64 %i.bz, ptr %.sroa.03.05.i.i.i, align 8
  store ptr null, ptr %i.br, align 8, !tbaa !355
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull %.sroa.03.05.i.i.i) #14
  %.not.i.i.i = icmp eq ptr %i.bs, %i.bp
  br i1 %.not.i.i.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i, !llvm.loop !583

_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret ptr %i.bp
}

declare noundef zeroext i1 @_ZNK4llvm15MachineFunction15needsFrameMovesEv(ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm22LoongArchFrameLowering25spillCalleeSavedRegistersERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8ArrayRefINS_15CalleeSavedInfoEEEPKNS_18TargetRegisterInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, ptr nofree readonly captures(address) %3, i64 %4, ptr noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !304  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8, !nonnull !129, !align !130 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !131
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(344) %i.e) #14 ; 2 uses
  %.idx = mul nuw nsw i64 %4, 12
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.01928 = phi ptr [ %3, %.lr.ph ], [ %i.ab, %bb.d ] ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.01928, align 4, !tbaa !430 ; 3 uses
  %i.l = icmp eq i32 %.sroa.0.0.copyload.i, 46
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !133
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 38
  %i.o = load i8, ptr %i.n, align 2, !tbaa !584, !range !156, !noundef !129
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = xor i1 %i.p, true
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i1 [ true, %bb.b ], [ %i.q, %bb.c ]
  %i.s = load ptr, ptr %5, align 8, !tbaa !131
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(316) %5, i32 %.sroa.0.0.copyload.i) #14
  %i.w = getelementptr inbounds nuw i8, ptr %.01928, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !273
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 504
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, i32 %.sroa.0.0.copyload.i, i1 noundef zeroext %i.r, i32 noundef %i.x, ptr noundef %i.v, i32 0, i32 noundef 0) #14
  %i.ab = getelementptr inbounds nuw i8, ptr %.01928, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.j
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.d, %bb.a
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i64 } @_ZNK4llvm22LoongArchFrameLowering22getFrameIndexReferenceERKNS_15MachineFunctionEiRNS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8, !nonnull !129, !align !130 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(344) %i.d) #14 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !366
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !365  ; 4 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !133  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !365
  %i.p = add i64 %i.o, 2048
  %i.q = icmp ult i64 %i.p, 4096
  br i1 %i.q, label %_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !507
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !508
  %.not.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i, label %_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.v, align 4, !tbaa !273
  %i.w = zext nneg i8 %.sroa.0.0.copyload.i.i to i64
  %.neg.i = shl nsw i64 -1, %i.w
  %i.x = add nsw i64 %.neg.i, 2048
  br label %_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit

_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.x, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !514
  %i.ac = add i32 %i.ab, %2
  %i.ad = zext i32 %i.ac to i64
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !515
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !516
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !585
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !586
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !507 ; 2 uses
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !508 ; 4 uses
  %.not = icmp eq ptr %i.am, %i.an
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !273
  %i.at = getelementptr i8, ptr %i.an, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !273
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit
  %.034 = phi i32 [ %i.as, %bb.d ], [ 0, %_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit ]
  %.0 = phi i32 [ %i.av, %bb.d ], [ -1, %_ZNK4llvm22LoongArchFrameLowering22getFirstSPAdjustAmountERKNS_15MachineFunctionE.exit ]
  %.not37 = icmp slt i32 %2, %.034
  %.not38 = icmp sgt i32 %2, %.0
  %or.cond = or i1 %.not37, %.not38
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 48, ptr %3, align 4, !tbaa !430
  %.not39 = icmp eq i64 %.0.i, 0
  %..0.i = select i1 %.not39, i64 %i.l, i64 %.0.i
  br label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !131
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 536
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(316) %i.h, ptr noundef nonnull align 8 dereferenceable(1065) %1) #14, !inline_history !135
  br i1 %i.az, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit: ; preds = %bb.g
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !131
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 528
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(316) %i.h, ptr noundef nonnull align 8 dereferenceable(1065) %1) #14, !inline_history !135
  br i1 %i.bd, label %bb.h, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread

bb.h:                                             ; preds = %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit
  %i.be = icmp slt i32 %2, 0
  %i.bf = load i32, ptr %i.aa, align 8
  %i.bg = sub nsw i32 0, %i.bf
  %i.bh = icmp sge i32 %2, %i.bg
  %i.bi = select i1 %i.be, i1 %i.bh, i1 false
  br i1 %i.bi, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !158, !nonnull !129, !align !130 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !131
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 200
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef ptr %i.bo(ptr noundef nonnull align 8 dereferenceable(519320) %i.bl) #14, !inline_history !544 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !136, !range !156, !noundef !129
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.j, label %_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !131
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 536
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(316) %i.bp, ptr noundef nonnull align 8 dereferenceable(1065) %1) #14, !inline_history !545
  br i1 %i.bw, label %_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit, label %_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit: ; preds = %bb.j
  %i.bx = load ptr, ptr %i.bp, align 8, !tbaa !131
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 528
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(316) %i.bp, ptr noundef nonnull align 8 dereferenceable(1065) %1) #14, !inline_history !545
  br i1 %i.ca, label %bb.k, label %_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread

bb.k:                                             ; preds = %_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit
  %i.cb = tail call i32 @_ZN4llvm12LoongArchABI8getBPRegEv() #14
  br label %_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread: ; preds = %bb.j, %bb.i, %_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit, %bb.k
  %.sroa.054.0 = phi i32 [ %i.cb, %bb.k ], [ 48, %_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit ], [ 48, %bb.i ], [ 48, %bb.j ]
  store i32 %.sroa.054.0, ptr %3, align 4, !tbaa !430
  br label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread: ; preds = %bb.g, %bb.h, %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !131
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 664
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call i32 %i.ce(ptr noundef nonnull align 8 dereferenceable(316) %i.h, ptr noundef nonnull align 8 dereferenceable(1065) %1) #14
  store i32 %i.cf, ptr %3, align 4, !tbaa !430
  %i.cg = load ptr, ptr %1, align 8, !tbaa !501, !nonnull !129, !align !130
  %i.ch = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.cg, i32 noundef 21) #14
  br i1 %i.ch, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit: ; preds = %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread
  %i.ci = load ptr, ptr %0, align 8, !tbaa !131
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 384
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = tail call noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #14, !inline_history !513
  br i1 %i.cl, label %bb.l, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread

bb.l:                                             ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !525
  %i.co = zext i32 %i.cn to i64
  br label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread: ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit, %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread, %bb.f, %_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread, %bb.l
  %.pn = phi i64 [ %i.co, %bb.l ], [ %..0.i, %bb.f ], [ %i.l, %_ZNK4llvm22LoongArchFrameLowering5hasBPERKNS_15MachineFunctionE.exit.thread ], [ %i.l, %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread ], [ %i.l, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit ]
  %i.cp = sext i32 %i.ai to i64
  %i.cq = sub i64 %i.ag, %i.cp
  %i.cr = add nsw i64 %i.cq, %i.ak
  %.sroa.061.0 = add nsw i64 %i.cr, %.pn
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.061.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm22LoongArchFrameLowering20enableShrinkWrappingERKNS_15MachineFunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !501, !nonnull !129, !align !130
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.a, i32 noundef 52) #14
  %.0 = xor i1 %i.b, true
  ret i1 %.0
}

; Function Attrs: nounwind
declare void @_ZN4llvm19TargetFrameLoweringD2Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(21)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm22LoongArchFrameLoweringD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm19TargetFrameLoweringD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvm19TargetFrameLowering17getStackThresholdEv(ptr noundef nonnull align 8 dereferenceable(21) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 4294967295
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering25isStackIdSafeForLocalAreaEj(ptr noundef nonnull align 8 dereferenceable(21) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

declare noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering44allocateScavengingFrameIndexesNearIncomingSPERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering27assignCalleeSavedSpillSlotsERNS_15MachineFunctionEPKNS_18TargetRegisterInfoERSt6vectorINS_15CalleeSavedInfoESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm19TargetFrameLowering24getCalleeSavedSpillSlotsERj(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !430
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering31targetHandlesStackFrameRoundingEv(ptr noundef nonnull align 8 dereferenceable(21) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering25enableStackSlotScavengingERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering20enableCalleeSaveSkipERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering20emitZeroCallUsedRegsENS_9BitVectorERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr nofree noundef align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering32emitCalleeSavedFrameMovesFullCFAERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering14enableCFIFixupERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering18enableFullCFIFixupERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #14
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering22resetCFIToInitialStateERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering28stackProbeFunctionModifiesSPEv(ptr noundef nonnull align 8 dereferenceable(21) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering24adjustForSegmentedStacksERNS_15MachineFunctionERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_1
