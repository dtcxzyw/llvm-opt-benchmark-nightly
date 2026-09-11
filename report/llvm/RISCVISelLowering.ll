Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVISelLowering?download=true
inline.NumInlined: 26532
inline.NumDeleted: 5745
loop-unroll.NumCompletelyUnrolled: 411
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 438
begin_hunk_0_@_ZL18emitSplitF64PseudoRN4llvm12MachineInstrEPNS_17MachineBasicBlockERKNS_14RISCVSubtargetE:bb.a
  %i.bk = add nsw i64 %i.ao, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.048.0, ptr %7, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bk, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i8 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 4
  %i.bl = call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandENS_18MachinePointerInfoENS_17MachineMemOperand5FlagsENS_12LocationSizeENS_5AlignERKNS_9AAMDNodesEPKNS_6MDNodeEhNS_14AtomicOrderingESC_(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %7, i16 noundef zeroext 1, i64 4, i8 3, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 346
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !527, !range !50, !noundef !51
  %i.bo = trunc nuw i8 %i.bn to i1                ; 2 uses
  %spec.select = select i1 %i.bo, i32 %i.o, i32 %i.m
  %spec.select56 = select i1 %i.bo, i32 %i.m, i32 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  store ptr %.sroa.015.0.copyload, ptr %11, align 8, !tbaa !385
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false)
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1005
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -477280
  %i.bt = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i32 %spec.select56) ; 2 uses
  %i.bu = extractvalue { ptr, ptr } %i.bt, 0      ; 3 uses
  %i.bv = extractvalue { ptr, ptr } %i.bt, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store i32 5, ptr %6, align 8, !alias.scope !2140
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.bw, align 8, !tbaa !1008, !alias.scope !2140
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.aa, ptr %i.bx, align 8, !tbaa !261, !alias.scope !2140
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bv, ptr noundef nonnull align 8 dereferenceable(1065) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store i32 1, ptr %5, align 8, !alias.scope !2141
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bv, ptr noundef nonnull align 8 dereferenceable(1065) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @_ZN4llvm12MachineInstr13addMemOperandERNS_15MachineFunctionEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bv, ptr noundef nonnull align 8 dereferenceable(1065) %i.bu, ptr noundef %i.al) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  store ptr %.sroa.015.0.copyload, ptr %12, align 8, !tbaa !385
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i8 0, i64 24, i1 false)
  %i.ca = load ptr, ptr %i.bq, align 8, !tbaa !1005
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -477280
  %i.cc = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i32 %spec.select) ; 2 uses
  %i.cd = extractvalue { ptr, ptr } %i.cc, 0      ; 3 uses
  %i.ce = extractvalue { ptr, ptr } %i.cc, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store i32 5, ptr %4, align 8, !alias.scope !2142
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.cf, align 8, !tbaa !1008, !alias.scope !2142
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.aa, ptr %i.cg, align 8, !tbaa !261, !alias.scope !2142
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ce, ptr noundef nonnull align 8 dereferenceable(1065) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store i32 1, ptr %3, align 8, !alias.scope !2143
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ch, align 8, !tbaa !1008, !alias.scope !2143
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 4, ptr %i.ci, align 8, !tbaa !261, !alias.scope !2143
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ce, ptr noundef nonnull align 8 dereferenceable(1065) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @_ZN4llvm12MachineInstr13addMemOperandERNS_15MachineFunctionEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ce, ptr noundef nonnull align 8 dereferenceable(1065) %i.cd, ptr noundef %i.bl) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.cj = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #34 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL13emitQuietFCMPRN4llvm12MachineInstrEPNS_17MachineBasicBlockEjjRKNS_14RISCVSubtargetE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef returned %1, i32 noundef range(i32 14693, 14719) %2, i32 noundef range(i32 14680, 14688) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %10 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %11 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %12 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.024.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !385 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !952  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !261
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !261  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !261  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1003
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1009
  %i.n = tail call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.m, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 640), ptr nonnull @.str.88, i64 0) #34 ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !1003
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !841, !nonnull !51, !align !204 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(344) %i.q) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  store ptr %.sroa.024.0.copyload, ptr %9, align 8, !tbaa !385
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1005
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -438176
  %i.z = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i32 %i.n) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store ptr %.sroa.024.0.copyload, ptr %10, align 8, !tbaa !385
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !1005
  %i.ac = zext nneg i32 %2 to i64
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [32 x i8], ptr %i.ab, i64 %i.ad
  %i.af = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i32 %i.e) ; 2 uses
  %i.ag = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.af, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !1008, !alias.scope !2154
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.g, ptr %i.aj, align 4, !tbaa !261, !alias.scope !2154
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !alias.scope !2154
  store i32 0, ptr %8, align 8, !alias.scope !2154
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(1065) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.al, align 8, !tbaa !1008, !alias.scope !2155
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.i, ptr %i.am, align 4, !tbaa !261, !alias.scope !2155
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false), !alias.scope !2155
  store i32 0, ptr %7, align 8, !alias.scope !2155
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(1065) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !959
  %i.aq = and i32 %i.ap, 16384
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 44 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !959
  %i.at = or i32 %i.as, 16384
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !959
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  store ptr %.sroa.024.0.copyload, ptr %11, align 8, !tbaa !385
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !1005
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -438944
  %i.ax = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.aw) ; 2 uses
  %i.ay = extractvalue { ptr, ptr } %i.ax, 0
  %i.az = extractvalue { ptr, ptr } %i.ax, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ba, align 8, !tbaa !1008, !alias.scope !2156
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.n, ptr %i.bb, align 4, !tbaa !261, !alias.scope !2156
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false), !alias.scope !2156
  store i32 67108864, ptr %6, align 8, !alias.scope !2156
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.az, ptr noundef nonnull align 8 dereferenceable(1065) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  store ptr %.sroa.024.0.copyload, ptr %12, align 8, !tbaa !385
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %i.be = load ptr, ptr %i.w, align 8, !tbaa !1005
  %i.bf = zext nneg i32 %3 to i64
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [32 x i8], ptr %i.be, i64 %i.bg
  %i.bi = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i32 68) ; 2 uses
  %i.bj = extractvalue { ptr, ptr } %i.bi, 0      ; 2 uses
  %i.bk = extractvalue { ptr, ptr } %i.bi, 1      ; 3 uses
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !952
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i32, ptr %i.bm, align 8            ; 2 uses
  %13 = lshr i32 %i.bn, 26
  %14 = lshr i32 %i.bn, 24
  %.lobit.i = and i32 %14, 1
  %15 = xor i32 %.lobit.i, 1
  %i.bo = and i32 %15, %13
  %.not13 = icmp eq i32 %i.bo, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %16, align 8, !tbaa !1008, !alias.scope !2157
  %17 = select i1 %.not13, i32 0, i32 67108864
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.g, ptr %i.bp, align 4, !tbaa !261, !alias.scope !2157
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false), !alias.scope !2157
  store i32 %17, ptr %5, align 8, !alias.scope !2157
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bk, ptr noundef nonnull align 8 dereferenceable(1065) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !952
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = load i32, ptr %i.bs, align 8            ; 2 uses
  %18 = lshr i32 %i.bt, 26
  %19 = lshr i32 %i.bt, 24
  %.lobit.i46 = and i32 %19, 1
  %20 = xor i32 %.lobit.i46, 1
  %i.bu = and i32 %20, %18
  %.not14 = icmp eq i32 %i.bu, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %21 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %21, align 8, !tbaa !1008, !alias.scope !2158
  %22 = select i1 %.not14, i32 0, i32 67108864
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.i, ptr %i.bv, align 4, !tbaa !261, !alias.scope !2158
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false), !alias.scope !2158
  store i32 %22, ptr %4, align 8, !alias.scope !2158
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bk, ptr noundef nonnull align 8 dereferenceable(1065) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.bx = load i32, ptr %i.ao, align 4, !tbaa !959
  %i.by = and i32 %i.bx, 16384
  %.not15 = icmp eq i32 %i.by, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 44 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !959
  %i.cb = or i32 %i.ca, 16384
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !959
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.cc = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #34 ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL25emitVFROUND_NOEXCEPT_MASKRN4llvm12MachineInstrEPNS_17MachineBasicBlockEj(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef returned %1, i32 noundef range(i32 2571, 2582) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %6 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.024.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !385 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1003
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !841, !nonnull !51, !align !204 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(344) %i.e) #34 ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !1003
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1009 ; 2 uses
  %i.m = tail call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.l, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 640), ptr nonnull @.str.88, i64 0) #34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store ptr %.sroa.024.0.copyload, ptr %5, align 8, !tbaa !385
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1005
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -438176
  %i.r = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
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
end_hunk_0
