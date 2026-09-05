Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVISelLowering?download=true
inline.NumInlined: 26532
inline.NumDeleted: 5745
loop-unroll.NumCompletelyUnrolled: 411
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 438
begin_hunk_0_@_ZL25emitVFROUND_NOEXCEPT_MASKRN4llvm12MachineInstrEPNS_17MachineBasicBlockEj:bb.a
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !1003
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !841, !nonnull !51, !align !204 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(344) %i.u) #34
  %i.z = call noundef ptr @_ZNK4llvm12MachineInstr21getRegClassConstraintEjPKNS_15TargetInstrInfoEPKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0, ptr noundef %i.i, ptr noundef %i.y) #34
  %i.aa = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.l, ptr noundef %i.z, ptr nonnull @.str.88, i64 0) #34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store ptr %.sroa.024.0.copyload, ptr %6, align 8, !tbaa !385
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !1005
  %i.ad = zext nneg i32 %2 to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [32 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 %i.aa) ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0      ; 8 uses
  %i.ai = extractvalue { ptr, ptr } %i.ag, 1      ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !952
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(1065) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.al) #34
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !952
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(1065) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.an) #34
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !952
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(1065) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ap) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  store i32 1, ptr %7, align 8, !alias.scope !2171
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !1008, !alias.scope !2171
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 7, ptr %i.ar, align 8, !tbaa !261, !alias.scope !2171
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(1065) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %7) #34
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !952
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(1065) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.at) #34
  %i.au = load ptr, ptr %i.aj, align 8, !tbaa !952
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 160
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(1065) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.av) #34
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !952
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 192
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(1065) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ax) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ay, align 8, !tbaa !1008, !alias.scope !2172
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 3, ptr %i.az, align 4, !tbaa !261, !alias.scope !2172
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false), !alias.scope !2172
  store i32 33554432, ptr %8, align 8, !alias.scope !2172
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(1065) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !956 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !1011 ; 2 uses
  %i.bf = lshr i64 %i.be, 8
  %i.bg = trunc i64 %i.bf to i8
  %i.bh = and i8 %i.bg, 7
  %i.bi = getelementptr i8, ptr %i.bc, i64 4
  %.val = load i16, ptr %i.bi, align 4
  %i.bj = and i64 %i.be, 536887296
  %or.cond.not.i = icmp eq i64 %i.bj, 0
  %.0.neg.i = select i1 %or.cond.not.i, i64 4294967295, i64 4294967294
  %i.bk = zext i16 %.val to i64
  %i.bl = add nuw nsw i64 %.0.neg.i, %i.bk
  %i.bm = load ptr, ptr %i.aj, align 8, !tbaa !952
  %i.bn = and i64 %i.bl, 4294967295
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !261
  %i.br = trunc i64 %i.bq to i32
  %i.bs = shl nuw i32 1, %i.br
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = call noundef ptr @_ZN4llvm25RISCVVInversePseudosTable15getBaseInfoImplEjhhh(i32 noundef 16134, i8 noundef zeroext range(i8 0, 8) %i.bh, i8 noundef zeroext %i.bt, i8 noundef zeroext 0) #34
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !2174
  %i.bw = zext i16 %i.bv to i32
  %i.bx = call noundef ptr @_ZN4llvm5RISCV31lookupMaskedIntrinsicByUnmaskedEj(i32 noundef %i.bw) #34
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !2176
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  store ptr %.sroa.024.0.copyload, ptr %9, align 8, !tbaa !385
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i8 0, i64 24, i1 false)
  %i.ca = load ptr, ptr %i.o, align 8, !tbaa !1005
  %i.cb = zext i16 %i.by to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds [32 x i8], ptr %i.ca, i64 %i.cc
  %i.ce = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.cd) ; 2 uses
  %i.cf = extractvalue { ptr, ptr } %i.ce, 0      ; 9 uses
  %i.cg = extractvalue { ptr, ptr } %i.ce, 1      ; 9 uses
  %i.ch = load ptr, ptr %i.aj, align 8, !tbaa !952
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.ch) #34
  %i.ci = load ptr, ptr %i.aj, align 8, !tbaa !952
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.cj) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ck, align 8, !tbaa !1008, !alias.scope !2177
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.aa, ptr %i.cl, align 4, !tbaa !261, !alias.scope !2177
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false), !alias.scope !2177
  store i32 0, ptr %4, align 8, !alias.scope !2177
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.cn = load ptr, ptr %i.aj, align 8, !tbaa !952
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 96
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.co) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store i32 1, ptr %10, align 8, !alias.scope !2178
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.cp, align 8, !tbaa !1008, !alias.scope !2178
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 7, ptr %i.cq, align 8, !tbaa !261, !alias.scope !2178
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %10) #34
  %i.cr = load ptr, ptr %i.aj, align 8, !tbaa !952
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 128
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.cs) #34
  %i.ct = load ptr, ptr %i.aj, align 8, !tbaa !952
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 160
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.cu) #34
  %i.cv = load ptr, ptr %i.aj, align 8, !tbaa !952
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 192
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.cw) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.cx, align 8, !tbaa !1008, !alias.scope !2179
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 3, ptr %i.cy, align 4, !tbaa !261, !alias.scope !2179
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false), !alias.scope !2179
  store i32 33554432, ptr %11, align 8, !alias.scope !2179
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(1065) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  store ptr %.sroa.024.0.copyload, ptr %12, align 8, !tbaa !385
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i8 0, i64 24, i1 false)
  %i.db = load ptr, ptr %i.o, align 8, !tbaa !1005
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -438944
  %i.dd = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.dc) ; 2 uses
  %i.de = extractvalue { ptr, ptr } %i.dd, 0
  %i.df = extractvalue { ptr, ptr } %i.dd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.dg, align 8, !tbaa !1008, !alias.scope !2180
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.m, ptr %i.dh, align 4, !tbaa !261, !alias.scope !2180
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false), !alias.scope !2180
  store i32 67108864, ptr %3, align 8, !alias.scope !2180
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.df, ptr noundef nonnull align 8 dereferenceable(1065) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.dj = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #34 ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm19RISCVTargetLowering22emitDynamicProbedAllocERNS_12MachineInstrEPNS_17MachineBasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %2) local_unnamed_addr #1 align 2 {
_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit101:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %13 = alloca %"class.llvm::DebugLoc", align 8   ; 8 uses
  %14 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %15 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1003 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.c = tail call ptr @_ZN4llvm17MachineBasicBlock12findDebugLocENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %1) #34
  store ptr %i.c, ptr %13, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !952
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !261  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 518440 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !203, !nonnull !51, !align !204 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(519768) %i.i) #34 ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !203, !nonnull !51, !align !204 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 656
  %i.p = load i8, ptr %i.o, align 8, !tbaa !205, !range !50, !noundef !51
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(519768) %i.n) #34
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %.sroa.0.0.copyload.i90 = load i8, ptr %i.u, align 4, !tbaa !261
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !203, !nonnull !51, !align !204 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(519768) %i.v) #34 ; 0 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !632, !nonnull !51, !align !204
  %i.ab = tail call noundef i64 @_ZNK4llvm8Function29getFnAttributeAsParsedIntegerENS_9StringRefEm(ptr noundef nonnull align 8 dereferenceable(140) %i.aa, ptr nonnull @.str.274, i64 16, i64 noundef 4096) #34
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %17 = load ptr, ptr %16, align 8, !tbaa !1002   ; 6 uses
  %18 = trunc nuw i8 %i.p to i1
  %i.ac = zext nneg i8 %.sroa.0.0.copyload.i90 to i64
  %i.ad = shl nuw i64 1, %i.ac                    ; 2 uses
  %.not6.i = sub i64 0, %i.ad
  %i.ae = and i64 %.not6.i, 4294967295
  %i.af = and i64 %i.ae, %i.ab                    ; 2 uses
  %.not.i = icmp eq i64 %i.af, 0
  %i.ag = and i64 %i.ad, 4294967295
  %i.ah = select i1 %.not.i, i64 %i.ag, i64 %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1001
  %i.ak = tail call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef %i.aj, i64 undef, i8 0) #34 ; 14 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 296 ; 2 uses
  tail call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef %i.ak) #34
  %i.am = load ptr, ptr %17, align 8, !tbaa !1004 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %17, ptr %i.an, align 8, !tbaa !1002
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !1004
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ak, ptr %i.ao, align 8, !tbaa !1002
  store ptr %i.ak, ptr %17, align 8, !tbaa !1004
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !1001
  %i.aq = tail call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef %i.ap, i64 undef, i8 0) #34 ; 12 uses
  tail call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef %i.aq) #34
  %i.ar = load ptr, ptr %17, align 8, !tbaa !1004 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %17, ptr %i.as, align 8, !tbaa !1002
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !1004
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !1002
  store ptr %i.aq, ptr %17, align 8, !tbaa !1004
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1009
  %i.aw = tail call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.av, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 640), ptr nonnull @.str.88, i64 0) #34 ; 2 uses
  call void @_ZNK4llvm14RISCVInstrInfo6movImmERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterEmNS4_6MIFlagEbb(ptr noundef nonnull align 8 dereferenceable(440) %i.m, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 %i.aw, i64 noundef %i.ah, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #34
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %.sroa.022.0.copyload = load ptr, ptr %13, align 8, !tbaa !385
  store ptr %.sroa.022.0.copyload, ptr %14, align 8, !tbaa !385
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1005
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -510272
  %i.bc = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.ak, ptr nonnull %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i32 70) ; 2 uses
  %i.bd = extractvalue { ptr, ptr } %i.bc, 0      ; 2 uses
  %i.be = extractvalue { ptr, ptr } %i.bc, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.bf, align 8, !tbaa !1008, !alias.scope !2201
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 70, ptr %i.bg, align 4, !tbaa !261, !alias.scope !2201
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false), !alias.scope !2201
  store i32 0, ptr %12, align 8, !alias.scope !2201
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.be, ptr noundef nonnull align 8 dereferenceable(1065) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !1008, !alias.scope !2202
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %i.aw, ptr %i.bj, align 4, !tbaa !261, !alias.scope !2202
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false), !alias.scope !2202
  store i32 0, ptr %11, align 8, !alias.scope !2202
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.be, ptr noundef nonnull align 8 dereferenceable(1065) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %.sroa.017.0.copyload = load ptr, ptr %13, align 8, !tbaa !385
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !1005
  %.neg = select i1 %18, i64 -15778, i64 -15949
  %i.bm = getelementptr inbounds [32 x i8], ptr %i.bl, i64 %.neg
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1003 ; 4 uses
  %i.bp = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr %.sroa.017.0.copyload, i1 noundef zeroext false) #34 ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef %i.bp) #34
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ax, align 8
  %i.br = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.ax, ptr %i.bt, align 8, !tbaa !953
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.bp, align 8
  %i.bu = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.bv = or disjoint i64 %i.bu, %i.br
  store i64 %i.bv, ptr %i.bp, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bp, ptr %i.bw, align 8, !tbaa !953
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %i.ax, align 8
  %i.bx = ptrtoint ptr %i.bp to i64
  %i.by = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.bz = or disjoint i64 %i.by, %i.bx
  store i64 %i.bz, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.ca, align 8, !tbaa !1008, !alias.scope !2203
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 68, ptr %i.cb, align 4, !tbaa !261, !alias.scope !2203
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false), !alias.scope !2203
  store i32 0, ptr %10, align 8, !alias.scope !2203
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bp, ptr noundef nonnull align 8 dereferenceable(1065) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.cd, align 8, !tbaa !1008, !alias.scope !2204
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 70, ptr %i.ce, align 4, !tbaa !261, !alias.scope !2204
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false), !alias.scope !2204
  store i32 0, ptr %9, align 8, !alias.scope !2204
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bp, ptr noundef nonnull align 8 dereferenceable(1065) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  store i32 1, ptr %8, align 8, !alias.scope !2205
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bp, ptr noundef nonnull align 8 dereferenceable(1065) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %.sroa.014.0.copyload = load ptr, ptr %13, align 8, !tbaa !385
  %i.ch = load ptr, ptr %i.az, align 8, !tbaa !1005
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -452480
  %i.cj = load ptr, ptr %i.bn, align 8, !tbaa !1003 ; 4 uses
  %i.ck = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr %.sroa.014.0.copyload, i1 noundef zeroext false) #34 ; 9 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef %i.ck) #34
  %.0.copyload.i.i.i.i.i.i.i.i.i.i93 = load i64, ptr %i.ax, align 8
  %i.cl = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i93, -8 ; 2 uses
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.ax, ptr %i.cn, align 8, !tbaa !953
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i94 = load i64, ptr %i.ck, align 8
  %i.co = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i94, 7
  %i.cp = or disjoint i64 %i.co, %i.cl
  store i64 %i.cp, ptr %i.ck, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.ck, ptr %i.cq, align 8, !tbaa !953
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i95 = load i64, ptr %i.ax, align 8
  %i.cr = ptrtoint ptr %i.ck to i64
  %i.cs = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i95, 7
  %i.ct = or disjoint i64 %i.cs, %i.cr
  store i64 %i.ct, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.cu, align 8, !tbaa !1008, !alias.scope !2206
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.g, ptr %i.cv, align 4, !tbaa !261, !alias.scope !2206
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false), !alias.scope !2206
  store i32 0, ptr %7, align 8, !alias.scope !2206
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ck, ptr noundef nonnull align 8 dereferenceable(1065) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.cx, align 8, !tbaa !1008, !alias.scope !2207
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 70, ptr %i.cy, align 4, !tbaa !261, !alias.scope !2207
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false), !alias.scope !2207
  store i32 0, ptr %6, align 8, !alias.scope !2207
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ck, ptr noundef nonnull align 8 dereferenceable(1065) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.da, align 8, !tbaa !1008, !alias.scope !2208
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ak, ptr %i.db, align 8, !tbaa !261, !alias.scope !2208
  store i32 4, ptr %5, align 8, !alias.scope !2208
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ck, ptr noundef nonnull align 8 dereferenceable(1065) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  %.sroa.010.0.copyload = load ptr, ptr %13, align 8, !tbaa !385
  store ptr %.sroa.010.0.copyload, ptr %15, align 8, !tbaa !385
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  %i.de = load ptr, ptr %i.az, align 8, !tbaa !1005
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -439264
  %i.dg = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.aq, ptr nonnull %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.df, i32 70) ; 2 uses
  %i.dh = extractvalue { ptr, ptr } %i.dg, 0      ; 2 uses
  %i.di = extractvalue { ptr, ptr } %i.dg, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.dj, align 8, !tbaa !1008, !alias.scope !2209
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.g, ptr %i.dk, align 4, !tbaa !261, !alias.scope !2209
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false), !alias.scope !2209
  store i32 0, ptr %4, align 8, !alias.scope !2209
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.di, ptr noundef nonnull align 8 dereferenceable(1065) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store i32 1, ptr %3, align 8, !alias.scope !2210
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.di, ptr noundef nonnull align 8 dereferenceable(1065) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  %.0.copyload.i.i.i.i.i.i.i.i.i.i102 = load i64, ptr %1, align 8
  %i.dn = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i102, 4
  %.not.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit101
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !959
  %i.dq = and i32 %i.dp, 8
  %.not34.i.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.ds, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !953 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 44
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !959
  %i.dv = and i32 %i.du, 8
  %.not3.i.i.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !15

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit101
  %.sroa.0.1.i.i.i.i = phi ptr [ %1, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit101 ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.ds, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !953 ; 7 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  %i.ea = icmp eq ptr %i.aq, %2
  %or.cond.i.i = or i1 %i.ea, %i.dz
  br i1 %or.cond.i.i, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr %i.dx, ptr nonnull %i.dy) #34
  %.0.copyload.i.i.i.i.i.i.i.i.i.i104 = load i64, ptr %i.dy, align 8
  %i.ed = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i104, -8 ; 2 uses
  %i.ee = inttoptr i64 %i.ed to ptr
  %.0.copyload.i.i.i.i20.i.i.i.i.i.i = load i64, ptr %i.dx, align 8
  %i.ef = and i64 %.0.copyload.i.i.i.i20.i.i.i.i.i.i, -8
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.dy, ptr %i.eh, align 8, !tbaa !953
  %.0.copyload.i.i.i.i21.i.i.i.i.i.i = load i64, ptr %i.dx, align 8
  %i.ei = and i64 %.0.copyload.i.i.i.i21.i.i.i.i.i.i, -8
  %.0.copyload.i.i.i.i22.i.i.i.i.i.i = load i64, ptr %i.dy, align 8
  %i.ej = and i64 %.0.copyload.i.i.i.i22.i.i.i.i.i.i, 7
  %i.ek = or disjoint i64 %i.ej, %i.ei
  store i64 %i.ek, ptr %i.dy, align 8
  %.0.copyload.i.i.i.i23.i.i.i.i.i.i = load i64, ptr %i.dc, align 8
  %i.el = and i64 %.0.copyload.i.i.i.i23.i.i.i.i.i.i, -8 ; 2 uses
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.dc, ptr %i.en, align 8, !tbaa !953
  %.0.copyload.i.i.i.i24.i.i.i.i.i.i = load i64, ptr %i.dx, align 8
  %i.eo = and i64 %.0.copyload.i.i.i.i24.i.i.i.i.i.i, 7
  %i.ep = or disjoint i64 %i.eo, %i.el
  store i64 %i.ep, ptr %i.dx, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.dx, ptr %i.eq, align 8, !tbaa !953
  %.0.copyload.i.i.i.i25.i.i.i.i.i.i = load i64, ptr %i.dc, align 8
  %i.er = and i64 %.0.copyload.i.i.i.i25.i.i.i.i.i.i, 7
  %i.es = or disjoint i64 %i.er, %i.ed
  store i64 %i.es, ptr %i.dc, align 8
  br label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit

_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %bb.a
  call void @_ZN4llvm17MachineBasicBlock31transferSuccessorsAndUpdatePHIsEPS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.aq, ptr noundef nonnull %2) #34
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %i.ak, ptr noundef nonnull %i.aq, i32 -1) #34
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %i.ak, ptr noundef nonnull %i.ak, i32 -1) #34
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull %i.ak, i32 -1) #34
  %i.et = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #34 ; 0 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 40
end_hunk_0
