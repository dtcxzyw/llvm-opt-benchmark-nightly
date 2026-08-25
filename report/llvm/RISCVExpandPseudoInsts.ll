Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVExpandPseudoInsts?download=true
begin_hunk_0_@_ZN12_GLOBAL__N_117RISCVExpandPseudo20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.hv = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.050.064.i) #13 ; 0 uses
  br label %_ZN12_GLOBAL__N_117RISCVExpandPseudo8expandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i

bb.e:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.050.064.i, i64 72 ; 2 uses
  %.sroa.026.0.copyload.i.i = load ptr, ptr %i.hw, align 8, !tbaa !179 ; 3 uses
  %i.hx = load ptr, ptr %i.c, align 8, !tbaa !150 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !29
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 200
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = call noundef ptr %i.ia(ptr noundef nonnull align 8 dereferenceable(519768) %i.hx) #13, !inline_history !203 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.050.064.i, i64 32 ; 12 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !181
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !182
  %i.ig = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.ib, i32 %i.if, i32 noundef 6) #13
  %i.ih = load ptr, ptr %i.ic, align 8, !tbaa !181
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !182
  %i.ik = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.ib, i32 %i.ij, i32 noundef 7) #13 ; 2 uses
  %i.il = icmp eq i32 %i.ik, 11
  %spec.select.i.i = select i1 %i.il, i32 68, i32 %i.ik ; 2 uses
  %i.im = load ptr, ptr %i.h, align 8, !tbaa !156
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !183
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 -510368
  %i.iq = load ptr, ptr %i.ev, align 8, !tbaa !204 ; 5 uses
  %i.ir = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.iq, ptr noundef nonnull align 8 dereferenceable(32) %i.ip, ptr %.sroa.026.0.copyload.i.i, i1 noundef zeroext false) #13 ; 10 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef %i.ir) #13
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i29.i = load i64, ptr %.sroa.050.064.i, align 8
  %i.is = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i29.i, -8 ; 2 uses
  %i.it = inttoptr i64 %i.is to ptr
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store ptr %.sroa.050.064.i, ptr %i.iu, align 8, !tbaa !158
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i30.i = load i64, ptr %i.ir, align 8
  %i.iv = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i30.i, 7
  %i.iw = or disjoint i64 %i.iv, %i.is
  store i64 %i.iw, ptr %i.ir, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store ptr %i.ir, ptr %i.ix, align 8, !tbaa !158
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i31.i = load i64, ptr %.sroa.050.064.i, align 8
  %i.iy = ptrtoint ptr %i.ir to i64
  %i.iz = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i31.i, 7
  %i.ja = or disjoint i64 %i.iz, %i.iy
  store i64 %i.ja, ptr %.sroa.050.064.i, align 8
  %i.jb = load ptr, ptr %i.ic, align 8, !tbaa !181
  %i.jc = load i32, ptr %i.jb, align 8            ; 2 uses
  %i.jd = lshr i32 %i.jc, 26
  %i.je = lshr i32 %i.jc, 24
  %.lobit.i.i.i = and i32 %i.je, 1
  %i.jf = xor i32 %.lobit.i.i.i, 1
  %i.jg = and i32 %i.jf, %i.jd
  %.not121.i.i = icmp eq i32 %i.jg, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  store ptr null, ptr %i.do, align 8, !tbaa !187, !alias.scope !248
  %i.jh = select i1 %.not121.i.i, i32 0, i32 67108864
  store i32 %i.ig, ptr %i.dp, align 4, !tbaa !182, !alias.scope !248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false), !alias.scope !248
  store i32 %i.jh, ptr %12, align 8, !alias.scope !248
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ir, ptr noundef nonnull align 8 dereferenceable(1065) %i.iq, ptr noundef nonnull align 8 dereferenceable(32) %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  %i.ji = load ptr, ptr %i.ic, align 8, !tbaa !181
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 36
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  store ptr null, ptr %i.dr, align 8, !tbaa !187, !alias.scope !251
  store i32 %i.jk, ptr %i.ds, align 4, !tbaa !182, !alias.scope !251
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false), !alias.scope !251
  store i32 0, ptr %11, align 8, !alias.scope !251
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ir, ptr noundef nonnull align 8 dereferenceable(1065) %i.iq, ptr noundef nonnull align 8 dereferenceable(32) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.jl = load ptr, ptr %i.ic, align 8, !tbaa !181
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ir, ptr noundef nonnull align 8 dereferenceable(1065) %i.iq, ptr noundef nonnull align 8 dereferenceable(32) %i.jm) #13
  %i.jn = load ptr, ptr %i.ic, align 8, !tbaa !181 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 64
  %i.jp = load i32, ptr %i.jo, align 8
  %trunc.i32.i = trunc i32 %i.jp to i8
  switch i8 %trunc.i32.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit53.i.i [
    i8 10, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit41.i.i
    i8 6, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit41.i.i
  ]

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit41.i.i: ; preds = %bb.e, %bb.e
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 88 ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 8, !tbaa !182
  %i.js = getelementptr inbounds nuw i8, ptr %i.jn, i64 68 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !182
  %i.ju = zext i32 %i.jt to i64
  %i.jv = add nuw nsw i64 %i.ju, 4                ; 2 uses
  %i.jw = trunc i64 %i.jv to i32
  store i32 %i.jw, ptr %i.js, align 4, !tbaa !182
  %i.jx = lshr i64 %i.jv, 32
  %.tr.i33.i = trunc nuw nsw i64 %i.jx to i32
  %.narrow.i34.i = add i32 %i.jr, %.tr.i33.i
  store i32 %.narrow.i34.i, ptr %i.jq, align 8, !tbaa !182
  %i.jy = load ptr, ptr %i.h, align 8, !tbaa !156
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !183
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 -510368
  %i.kc = load ptr, ptr %i.ev, align 8, !tbaa !204 ; 5 uses
  %i.kd = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %i.kb, ptr %.sroa.026.0.copyload.i.i, i1 noundef zeroext false) #13 ; 10 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef %i.kd) #13
  %.0.copyload.i.i.i.i.i.i.i.i.i.i33.i.i = load i64, ptr %.sroa.050.064.i, align 8
  %i.ke = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i33.i.i, -8 ; 2 uses
  %i.kf = inttoptr i64 %i.ke to ptr
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store ptr %.sroa.050.064.i, ptr %i.kg, align 8, !tbaa !158
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i34.i.i = load i64, ptr %i.kd, align 8
  %i.kh = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i34.i.i, 7
  %i.ki = or disjoint i64 %i.kh, %i.ke
  store i64 %i.ki, ptr %i.kd, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store ptr %i.kd, ptr %i.kj, align 8, !tbaa !158
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i35.i.i = load i64, ptr %.sroa.050.064.i, align 8
  %i.kk = ptrtoint ptr %i.kd to i64
  %i.kl = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i35.i.i, 7
  %i.km = or disjoint i64 %i.kl, %i.kk
  store i64 %i.km, ptr %.sroa.050.064.i, align 8
  %i.kn = load ptr, ptr %i.ic, align 8, !tbaa !181
  %i.ko = load i32, ptr %i.kn, align 8            ; 2 uses
  %i.kp = lshr i32 %i.ko, 26
  %i.kq = lshr i32 %i.ko, 24
  %.lobit.i42.i.i = and i32 %i.kq, 1
  %i.kr = xor i32 %.lobit.i42.i.i, 1
  %i.ks = and i32 %i.kr, %i.kp
  %.not122.i.i = icmp eq i32 %i.ks, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  store ptr null, ptr %i.du, align 8, !tbaa !187, !alias.scope !254
  %i.kt = select i1 %.not122.i.i, i32 0, i32 67108864
  store i32 %spec.select.i.i, ptr %i.dv, align 4, !tbaa !182, !alias.scope !254
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i8 0, i64 16, i1 false), !alias.scope !254
  store i32 %i.kt, ptr %10, align 8, !alias.scope !254
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kd, ptr noundef nonnull align 8 dereferenceable(1065) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %i.ku = load ptr, ptr %i.ic, align 8, !tbaa !181
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kd, ptr noundef nonnull align 8 dereferenceable(1065) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %i.kv) #13
  %i.kw = load ptr, ptr %i.ic, align 8, !tbaa !181
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kd, ptr noundef nonnull align 8 dereferenceable(1065) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %i.kx) #13
  br label %bb.f

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit53.i.i: ; preds = %bb.e
  %i.ky = load ptr, ptr %i.h, align 8, !tbaa !156
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !183
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 -510368
  %i.lc = load ptr, ptr %i.ev, align 8, !tbaa !204 ; 5 uses
  %i.ld = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.lc, ptr noundef nonnull align 8 dereferenceable(32) %i.lb, ptr %.sroa.026.0.copyload.i.i, i1 noundef zeroext false) #13 ; 10 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef %i.ld) #13
  %.0.copyload.i.i.i.i.i.i.i.i.i.i45.i.i = load i64, ptr %.sroa.050.064.i, align 8
  %i.le = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i45.i.i, -8 ; 2 uses
  %i.lf = inttoptr i64 %i.le to ptr
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store ptr %.sroa.050.064.i, ptr %i.lg, align 8, !tbaa !158
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i46.i.i = load i64, ptr %i.ld, align 8
  %i.lh = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i46.i.i, 7
  %i.li = or disjoint i64 %i.lh, %i.le
  store i64 %i.li, ptr %i.ld, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store ptr %i.ld, ptr %i.lj, align 8, !tbaa !158
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i47.i.i = load i64, ptr %.sroa.050.064.i, align 8
  %i.lk = ptrtoint ptr %i.ld to i64
  %i.ll = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i47.i.i, 7
  %i.lm = or disjoint i64 %i.ll, %i.lk
  store i64 %i.lm, ptr %.sroa.050.064.i, align 8
  %i.ln = load ptr, ptr %i.ic, align 8, !tbaa !181
  %i.lo = load i32, ptr %i.ln, align 8            ; 2 uses
  %i.lp = lshr i32 %i.lo, 26
  %i.lq = lshr i32 %i.lo, 24
  %.lobit.i54.i.i = and i32 %i.lq, 1
  %i.lr = xor i32 %.lobit.i54.i.i, 1
  %i.ls = and i32 %i.lr, %i.lp
  %.not123.i.i = icmp eq i32 %i.ls, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  store ptr null, ptr %i.dx, align 8, !tbaa !187, !alias.scope !257
  %i.lt = select i1 %.not123.i.i, i32 0, i32 67108864
  store i32 %spec.select.i.i, ptr %i.dy, align 4, !tbaa !182, !alias.scope !257
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i8 0, i64 16, i1 false), !alias.scope !257
  store i32 %i.lt, ptr %9, align 8, !alias.scope !257
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ld, ptr noundef nonnull align 8 dereferenceable(1065) %i.lc, ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %i.lu = load ptr, ptr %i.ic, align 8, !tbaa !181
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ld, ptr noundef nonnull align 8 dereferenceable(1065) %i.lc, ptr noundef nonnull align 8 dereferenceable(32) %i.lv) #13
  %i.lw = load ptr, ptr %i.ic, align 8, !tbaa !181
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 80
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !182
  %i.lz = add nsw i64 %i.ly, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store i32 1, ptr %8, align 8, !alias.scope !260
  store ptr null, ptr %i.ea, align 8, !tbaa !187, !alias.scope !260
  store i64 %i.lz, ptr %i.eb, align 8, !tbaa !182, !alias.scope !260
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ld, ptr noundef nonnull align 8 dereferenceable(1065) %i.lc, ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit53.i.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit41.i.i
  %.sroa.683.0.i.i.a = phi ptr [ %i.kd, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit41.i.i ], [ %i.ld, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit53.i.i ]
  %.sroa.082.0.i.i = phi ptr [ %i.kc, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit41.i.i ], [ %i.lc, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit53.i.i ]
  %i.ma = load ptr, ptr %i.ev, align 8, !tbaa !204 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  store ptr %i.ec, ptr %13, align 8, !tbaa !263
  store i32 0, ptr %i.ed, align 8, !tbaa !264
  store i32 6, ptr %i.ee, align 4, !tbaa !265
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  store ptr %i.ef, ptr %14, align 8, !tbaa !263
  store i32 0, ptr %i.eg, align 8, !tbaa !264
  store i32 6, ptr %i.eh, align 4, !tbaa !265
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.050.064.i, i64 64 ; 3 uses
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !182 ; 4 uses
  %i.md = icmp ugt i64 %i.mc, 7
  br i1 %i.md, label %bb.g, label %._crit_edge.i35.i

bb.g:                                             ; preds = %bb.f
  %i.me = and i64 %i.mc, 7
  switch i64 %i.me, label %._crit_edge.i35.i [
    i64 0, label %_ZNK4llvm12MachineInstr11memoperandsEv.exit.thread135.i.i
    i64 3, label %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i37.i
  ]

_ZNK4llvm12MachineInstr11memoperandsEv.exit.thread135.i.i: ; preds = %bb.g
  %i.mf = inttoptr i64 %i.mc to ptr
  store ptr %i.mf, ptr %i.mb, align 8, !tbaa !182
  br label %.lr.ph.preheader.i38.i

_ZNK4llvm12MachineInstr11memoperandsEv.exit.i37.i: ; preds = %bb.g
  %i.mg = and i64 %i.mc, -8
  %i.mh = inttoptr i64 %i.mg to ptr               ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16 ; 2 uses
  %i.mj = load i32, ptr %i.mh, align 8, !tbaa !266 ; 2 uses
  %i.mk = sext i32 %i.mj to i64
  %i.ml = shl nuw nsw i64 %i.mk, 3
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.ml
  %.not124.i.i = icmp eq i32 %i.mj, 0
  br i1 %.not124.i.i, label %._crit_edge.i35.i, label %.lr.ph.preheader.i38.i

.lr.ph.preheader.i38.i:                           ; preds = %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i37.i, %_ZNK4llvm12MachineInstr11memoperandsEv.exit.thread135.i.i
  %i.mn = phi ptr [ %i.hw, %_ZNK4llvm12MachineInstr11memoperandsEv.exit.thread135.i.i ], [ %i.mm, %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i37.i ]
  %.sroa.0.1.i139.i.i = phi ptr [ %i.mb, %_ZNK4llvm12MachineInstr11memoperandsEv.exit.thread135.i.i ], [ %i.mi, %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i37.i ]
  br label %.lr.ph.i39.i

._crit_edge.loopexit.i42.i:                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit61.i.i
  %.pre.i43.i = load ptr, ptr %13, align 8, !tbaa !263
  %.pre126.i.i = load i32, ptr %i.ed, align 8, !tbaa !264
  %i.mo = zext i32 %.pre126.i.i to i64
  br label %._crit_edge.i35.i

._crit_edge.i35.i:                                ; preds = %._crit_edge.loopexit.i42.i, %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i37.i, %bb.g, %bb.f
  %i.mp = phi i64 [ %i.mo, %._crit_edge.loopexit.i42.i ], [ 0, %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i37.i ], [ 0, %bb.f ], [ 0, %bb.g ]
  %i.mq = phi ptr [ %.pre.i43.i, %._crit_edge.loopexit.i42.i ], [ %i.ec, %_ZNK4llvm12MachineInstr11memoperandsEv.exit.i37.i ], [ %i.ec, %bb.f ], [ %i.ec, %bb.g ]
  call void @_ZN4llvm12MachineInstr10setMemRefsERNS_15MachineFunctionENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.ir, ptr noundef nonnull align 8 dereferenceable(1065) %i.iq, ptr %i.mq, i64 %i.mp) #13
  %i.mr = load ptr, ptr %14, align 8, !tbaa !263
  %i.ms = load i32, ptr %i.eg, align 8, !tbaa !264
  %i.mt = zext i32 %i.ms to i64
  call void @_ZN4llvm12MachineInstr10setMemRefsERNS_15MachineFunctionENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.683.0.i.i.a, ptr noundef nonnull align 8 dereferenceable(1065) %.sroa.082.0.i.i, ptr %i.mr, i64 %i.mt) #13
  %i.mu = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.050.064.i) #13 ; 0 uses
  %i.mv = load ptr, ptr %14, align 8, !tbaa !263  ; 2 uses
  %i.mw = icmp eq ptr %i.mv, %i.ef
  br i1 %i.mw, label %_ZN4llvm11SmallVectorIPNS_17MachineMemOperandELj6EED2Ev.exit.i36.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i35.i
  call void @free(ptr noundef %i.mv) #13
  br label %_ZN4llvm11SmallVectorIPNS_17MachineMemOperandELj6EED2Ev.exit.i36.i

_ZN4llvm11SmallVectorIPNS_17MachineMemOperandELj6EED2Ev.exit.i36.i: ; preds = %bb.h, %._crit_edge.i35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  %i.mx = load ptr, ptr %13, align 8, !tbaa !263  ; 2 uses
  %i.my = icmp eq ptr %i.mx, %i.ec
  br i1 %i.my, label %_ZN12_GLOBAL__N_117RISCVExpandPseudo20expandRV32ZdinxStoreERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineMemOperandELj6EED2Ev.exit.i36.i
  call void @free(ptr noundef %i.mx) #13
  br label %_ZN12_GLOBAL__N_117RISCVExpandPseudo20expandRV32ZdinxStoreERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i

.lr.ph.i39.i:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit61.i.i, %.lr.ph.preheader.i38.i
  %.0125.i.i = phi ptr [ %i.nq, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit61.i.i ], [ %.sroa.0.1.i139.i.i, %.lr.ph.preheader.i38.i ] ; 2 uses
  %i.mz = load ptr, ptr %.0125.i.i, align 8, !tbaa !268 ; 2 uses
  %i.na = call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(1065) %i.ma, ptr noundef %i.mz, i64 noundef 0, i64 1152921513196781568) #13 ; 2 uses
  %i.nb = load i32, ptr %i.ed, align 8, !tbaa !264 ; 2 uses
  %i.nc = load i32, ptr %i.ee, align 4, !tbaa !265
  %.not.i59.i.i = icmp ult i32 %i.nb, %i.nc
  br i1 %.not.i59.i.i, label %bb.k, label %bb.j, !prof !270

bb.j:                                             ; preds = %.lr.ph.i39.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.na)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit.i40.i

bb.k:                                             ; preds = %.lr.ph.i39.i
  %i.nd = zext i32 %i.nb to i64
  %i.ne = load ptr, ptr %13, align 8, !tbaa !263
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %i.nd
  store ptr %i.na, ptr %i.nf, align 1
  %i.ng = load i32, ptr %i.ed, align 8, !tbaa !264
  %i.nh = add i32 %i.ng, 1
  store i32 %i.nh, ptr %i.ed, align 8, !tbaa !264
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit.i40.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit.i40.i: ; preds = %bb.k, %bb.j
  %i.ni = call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandEPKNS_17MachineMemOperandElNS_3LLTE(ptr noundef nonnull align 8 dereferenceable(1065) %i.ma, ptr noundef %i.mz, i64 noundef 4, i64 1152921513196781568) #13 ; 2 uses
  %i.nj = load i32, ptr %i.eg, align 8, !tbaa !264 ; 2 uses
  %i.nk = load i32, ptr %i.eh, align 4, !tbaa !265
  %.not.i60.i.i = icmp ult i32 %i.nj, %i.nk
  br i1 %.not.i60.i.i, label %bb.m, label %bb.l, !prof !270

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit.i40.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef %i.ni)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit61.i.i

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit.i40.i
  %i.nl = zext i32 %i.nj to i64
  %i.nm = load ptr, ptr %14, align 8, !tbaa !263
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %i.nl
  store ptr %i.ni, ptr %i.nn, align 1
  %i.no = load i32, ptr %i.eg, align 8, !tbaa !264
  %i.np = add i32 %i.no, 1
  store i32 %i.np, ptr %i.eg, align 8, !tbaa !264
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit61.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineMemOperandELb1EE9push_backES2_.exit61.i.i: ; preds = %bb.m, %bb.l
  %i.nq = getelementptr inbounds nuw i8, ptr %.0125.i.i, i64 8 ; 2 uses
  %.not.i41.i = icmp eq ptr %i.nq, %i.mn
  br i1 %.not.i41.i, label %._crit_edge.loopexit.i42.i, label %.lr.ph.i39.i

_ZN12_GLOBAL__N_117RISCVExpandPseudo20expandRV32ZdinxStoreERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEE.exit.i: ; preds = %bb.i, %_ZN4llvm11SmallVectorIPNS_17MachineMemOperandELj6EED2Ev.exit.i36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %_ZN12_GLOBAL__N_117RISCVExpandPseudo8expandMIERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_.exit.i

bb.n:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.050.064.i, i64 72 ; 2 uses
  %.sroa.035.0.copyload.i.i = load ptr, ptr %i.nr, align 8, !tbaa !179 ; 4 uses
  %i.ns = load ptr, ptr %i.c, align 8, !tbaa !150 ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !29
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 200
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = call noundef ptr %i.nv(ptr noundef nonnull align 8 dereferenceable(519768) %i.ns) #13, !inline_history !271 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.050.064.i, i64 32 ; 13 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !181
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !182
  %i.ob = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.nw, i32 %i.oa, i32 noundef 6) #13 ; 3 uses
  %i.oc = load ptr, ptr %i.nx, align 8, !tbaa !181
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !182
  %i.of = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.nw, i32 %i.oe, i32 noundef 7) #13 ; 2 uses
  %i.og = load ptr, ptr %i.nx, align 8, !tbaa !181 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 36
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !182
  %i.oj = icmp eq i32 %i.ob, %i.oi                ; 2 uses
  br i1 %i.oj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  store ptr %.sroa.035.0.copyload.i.i, ptr %20, align 8, !tbaa !179
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false)
  %i.ok = load ptr, ptr %i.h, align 8, !tbaa !156
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !183
  %i.on = getelementptr inbounds i8, ptr %i.om, i64 -477280
  %i.oo = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.07.020, ptr nonnull %.sroa.050.064.i, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.on, i32 %i.ob) ; 2 uses
  %i.op = extractvalue { ptr, ptr } %i.oo, 0      ; 3 uses
  %i.oq = extractvalue { ptr, ptr } %i.oo, 1      ; 3 uses
  %i.or = load ptr, ptr %i.nx, align 8, !tbaa !181
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 36
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  store ptr null, ptr %i.cr, align 8, !tbaa !187, !alias.scope !272
  store i32 %i.ot, ptr %i.cs, align 4, !tbaa !182, !alias.scope !272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false), !alias.scope !272
  store i32 0, ptr %19, align 8, !alias.scope !272
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.oq, ptr noundef nonnull align 8 dereferenceable(1065) %i.op, ptr noundef nonnull align 8 dereferenceable(32) %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  %i.ou = load ptr, ptr %i.nx, align 8, !tbaa !181
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.oq, ptr noundef nonnull align 8 dereferenceable(1065) %i.op, ptr noundef nonnull align 8 dereferenceable(32) %i.ov) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  %.pre.i.i = load ptr, ptr %i.nx, align 8, !tbaa !181
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ow = phi ptr [ %i.og, %bb.n ], [ %.pre.i.i, %bb.o ] ; 3 uses
  %.sroa.668.0.i.i = phi ptr [ null, %bb.n ], [ %i.oq, %bb.o ]
  %.sroa.067.0.i.i = phi ptr [ null, %bb.n ], [ %i.op, %bb.o ]
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 64
  %i.oy = load i32, ptr %i.ox, align 8
  %trunc.i.i = trunc i32 %i.oy to i8
  switch i8 %trunc.i.i, label %bb.r [
    i8 10, label %bb.q
    i8 6, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 88 ; 2 uses
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !182 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ow, i64 68 ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !182 ; 2 uses
  %i.pd = zext i32 %i.pc to i64
  %i.pe = add nuw nsw i64 %i.pd, 4                ; 2 uses
  %i.pf = trunc i64 %i.pe to i32
  store i32 %i.pf, ptr %i.pb, align 4, !tbaa !182
  %i.pg = lshr i64 %i.pe, 32
  %.tr.i.i = trunc nuw nsw i64 %i.pg to i32
  %.narrow.i.i = add i32 %i.pa, %.tr.i.i
  store i32 %.narrow.i.i, ptr %i.oz, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  store ptr %.sroa.035.0.copyload.i.i, ptr %21, align 8, !tbaa !179
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i8 0, i64 24, i1 false)
  %i.ph = load ptr, ptr %i.h, align 8, !tbaa !156
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !183
  %i.pk = getelementptr inbounds i8, ptr %i.pj, i64 -477280
  %i.pl = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.07.020, ptr nonnull %.sroa.050.064.i, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %i.pk, i32 %i.of) ; 2 uses
  %i.pm = extractvalue { ptr, ptr } %i.pl, 0      ; 3 uses
  %i.pn = extractvalue { ptr, ptr } %i.pl, 1      ; 3 uses
  %i.po = load ptr, ptr %i.nx, align 8, !tbaa !181
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 36
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  store ptr null, ptr %i.cv, align 8, !tbaa !187, !alias.scope !275
  store i32 %i.pq, ptr %i.cw, align 4, !tbaa !182, !alias.scope !275
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i8 0, i64 16, i1 false), !alias.scope !275
  store i32 0, ptr %18, align 8, !alias.scope !275
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.pn, ptr noundef nonnull align 8 dereferenceable(1065) %i.pm, ptr noundef nonnull align 8 dereferenceable(32) %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  %i.pr = load ptr, ptr %i.nx, align 8, !tbaa !181
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.pn, ptr noundef nonnull align 8 dereferenceable(1065) %i.pm, ptr noundef nonnull align 8 dereferenceable(32) %i.ps) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  %i.pt = load ptr, ptr %i.nx, align 8, !tbaa !181 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 68
  store i32 %i.pc, ptr %i.pu, align 4, !tbaa !182
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 88
  store i32 %i.pa, ptr %i.pv, align 8, !tbaa !182
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #13
  store ptr %.sroa.035.0.copyload.i.i, ptr %22, align 8, !tbaa !179
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i8 0, i64 24, i1 false)
  %i.pw = load ptr, ptr %i.h, align 8, !tbaa !156
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !183
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 -477280
  %i.qa = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.07.020, ptr nonnull %.sroa.050.064.i, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %i.pz, i32 %i.of) ; 2 uses
  %i.qb = extractvalue { ptr, ptr } %i.qa, 0      ; 3 uses
  %i.qc = extractvalue { ptr, ptr } %i.qa, 1      ; 3 uses
  %i.qd = load ptr, ptr %i.nx, align 8, !tbaa !181
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 36
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  store ptr null, ptr %i.cz, align 8, !tbaa !187, !alias.scope !278
  store i32 %i.qf, ptr %i.da, align 4, !tbaa !182, !alias.scope !278
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i8 0, i64 16, i1 false), !alias.scope !278
  store i32 0, ptr %17, align 8, !alias.scope !278
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qc, ptr noundef nonnull align 8 dereferenceable(1065) %i.qb, ptr noundef nonnull align 8 dereferenceable(32) %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
end_hunk_0
