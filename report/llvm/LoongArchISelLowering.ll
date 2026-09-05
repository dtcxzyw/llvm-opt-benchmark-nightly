Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoongArchISelLowering?download=true
inline.NumInlined: 11584
inline.NumDeleted: 2972
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZL22emitBuildPairF64PseudoRN4llvm12MachineInstrEPNS_17MachineBasicBlockERKNS_18LoongArchSubtargetE:bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !708  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !164
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !164
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %.sroa.015.0.copyload, ptr %5, align 8, !tbaa !366
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !709
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -26336
  %i.z = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i32 %i.m) ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.z, 0
  %i.ab = extractvalue { ptr, ptr } %i.z, 1
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !708
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.af = lshr i32 %i.ae, 26
  %i.ag = lshr i32 %i.ae, 24
  %.lobit.i = and i32 %i.ag, 1
  %i.ah = xor i32 %.lobit.i, 1
  %i.ai = and i32 %i.ah, %i.af
  %.not = icmp eq i32 %i.ai, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.aj, align 8, !tbaa !712, !alias.scope !1317
  %i.ak = select i1 %.not, i32 0, i32 67108864
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.s, ptr %i.al, align 4, !tbaa !164, !alias.scope !1317
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false), !alias.scope !1317
  store i32 %i.ak, ptr %4, align 8, !alias.scope !1317
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull align 8 dereferenceable(1065) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %.sroa.015.0.copyload, ptr %6, align 8, !tbaa !366
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !709
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -26240
  %i.aq = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i32 %i.q) ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0      ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.aq, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !712, !alias.scope !1318
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.m, ptr %i.au, align 4, !tbaa !164, !alias.scope !1318
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false), !alias.scope !1318
  store i32 67108864, ptr %3, align 8, !alias.scope !1318
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(1065) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !708
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ay = load i32, ptr %i.ax, align 8            ; 2 uses
  %i.az = lshr i32 %i.ay, 26
  %i.ba = lshr i32 %i.ay, 24
  %.lobit.i31 = and i32 %i.ba, 1
  %i.bb = xor i32 %.lobit.i31, 1
  %i.bc = and i32 %i.bb, %i.az
  %.not5 = icmp eq i32 %i.bc, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.bd, align 8, !tbaa !712, !alias.scope !1319
  %i.be = select i1 %.not5, i32 0, i32 67108864
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.u, ptr %i.bf, align 4, !tbaa !164, !alias.scope !1319
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false), !alias.scope !1319
  store i32 %i.be, ptr %2, align 8, !alias.scope !1319
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(1065) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.bh = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #28 ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL22emitSplitPairF64PseudoRN4llvm12MachineInstrEPNS_17MachineBasicBlockERKNS_18LoongArchSubtargetE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef returned %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %4 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %5 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !704
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.012.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !366 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !707, !nonnull !41, !align !163 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(344) %i.e) #28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !708  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !164
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !164
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %i.q = load i32, ptr %i.p, align 4, !tbaa !164  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %.sroa.012.0.copyload, ptr %4, align 8, !tbaa !366
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !709
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -26112
  %i.v = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 %i.m) ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0
  %i.x = extractvalue { ptr, ptr } %i.v, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !712, !alias.scope !1324
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.q, ptr %i.z, align 4, !tbaa !164, !alias.scope !1324
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false), !alias.scope !1324
  store i32 0, ptr %3, align 8, !alias.scope !1324
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(1065) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %.sroa.012.0.copyload, ptr %5, align 8, !tbaa !366
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !709
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -26144
  %i.ae = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 %i.o) ; 2 uses
  %i.af = extractvalue { ptr, ptr } %i.ae, 0
  %i.ag = extractvalue { ptr, ptr } %i.ae, 1
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !708
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load i32, ptr %i.ai, align 8            ; 2 uses
  %i.ak = lshr i32 %i.aj, 26
  %i.al = lshr i32 %i.aj, 24
  %.lobit.i = and i32 %i.al, 1
  %i.am = xor i32 %.lobit.i, 1
  %i.an = and i32 %i.am, %i.ak
  %.not = icmp eq i32 %i.an, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !712, !alias.scope !1325
  %i.ap = select i1 %.not, i32 0, i32 67108864
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.q, ptr %i.aq, align 4, !tbaa !164, !alias.scope !1325
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false), !alias.scope !1325
  store i32 %i.ap, ptr %2, align 8, !alias.scope !1325
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, ptr noundef nonnull align 8 dereferenceable(1065) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.as = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #28 ; 0 uses
  ret ptr %1
}

declare void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm18TargetLoweringBase14emitPatchPointERNS_12MachineInstrEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm23LoongArchTargetLowering22emitDynamicProbedAllocERNS_12MachineInstrEPNS_17MachineBasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %2) local_unnamed_addr #1 align 2 {
_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit102:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !704  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.c = tail call ptr @_ZN4llvm17MachineBasicBlock12findDebugLocENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %1) #28
  store ptr %i.c, ptr %13, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !708
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !164  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 518440 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162, !nonnull !41, !align !163 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(519320) %i.i) #28 ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !162, !nonnull !41, !align !163 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 354
  %i.p = load i8, ptr %i.o, align 2, !tbaa !159, !range !40, !noundef !41
  %16 = trunc nuw i8 %i.p to i1                   ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(519320) %i.n) #28
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %.sroa.0.0.copyload.i91 = load i8, ptr %i.u, align 4, !tbaa !164
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !162, !nonnull !41, !align !163 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(519320) %i.v) #28 ; 0 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !476, !nonnull !41, !align !163
  %i.ab = tail call noundef i64 @_ZNK4llvm8Function29getFnAttributeAsParsedIntegerENS_9StringRefEm(ptr noundef nonnull align 8 dereferenceable(140) %i.aa, ptr nonnull @.str.80, i64 16, i64 noundef 4096) #28
  %i.ac = zext nneg i8 %.sroa.0.0.copyload.i91 to i64
  %i.ad = shl nuw i64 1, %i.ac                    ; 2 uses
  %.not6.i = sub i64 0, %i.ad
  %i.ae = and i64 %.not6.i, 4294967295
  %i.af = and i64 %i.ae, %i.ab                    ; 2 uses
  %.not.i = icmp eq i64 %i.af, 0
  %i.ag = and i64 %i.ad, 4294967295
  %i.ah = select i1 %.not.i, i64 %i.ag, i64 %i.af
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %18 = load ptr, ptr %17, align 8, !tbaa !703    ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !702
  %i.ak = tail call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef %i.aj, i64 undef, i8 0) #28 ; 14 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 296 ; 2 uses
  tail call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef %i.ak) #28
  %i.am = load ptr, ptr %18, align 8, !tbaa !705  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %18, ptr %i.an, align 8, !tbaa !703
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !705
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ak, ptr %i.ao, align 8, !tbaa !703
  store ptr %i.ak, ptr %18, align 8, !tbaa !705
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !702
  %i.aq = tail call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef %i.ap, i64 undef, i8 0) #28 ; 12 uses
  tail call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef %i.aq) #28
  %i.ar = load ptr, ptr %18, align 8, !tbaa !705  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %18, ptr %i.as, align 8, !tbaa !703
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !705
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !703
  store ptr %i.aq, ptr %18, align 8, !tbaa !705
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !713
  %i.aw = tail call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.av, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm31LoongArchMCRegisterClassStorageE, i64 64), ptr nonnull @.str.56, i64 0) #28 ; 2 uses
  call void @_ZNK4llvm18LoongArchInstrInfo6movImmERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterEmNS4_6MIFlagE(ptr noundef nonnull align 8 dereferenceable(440) %i.m, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 %i.aw, i64 noundef %i.ah, i32 noundef 0) #28
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %.sroa.022.0.copyload = load ptr, ptr %13, align 8, !tbaa !366
  store ptr %.sroa.022.0.copyload, ptr %14, align 8, !tbaa !366
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !709
  %.neg = select i1 %16, i64 -922, i64 -923
  %i.bb = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %.neg
  %i.bc = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.ak, ptr nonnull %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i32 48) ; 2 uses
  %i.bd = extractvalue { ptr, ptr } %i.bc, 0      ; 2 uses
  %i.be = extractvalue { ptr, ptr } %i.bc, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.bf, align 8, !tbaa !712, !alias.scope !1346
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 48, ptr %i.bg, align 4, !tbaa !164, !alias.scope !1346
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false), !alias.scope !1346
  store i32 0, ptr %12, align 8, !alias.scope !1346
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.be, ptr noundef nonnull align 8 dereferenceable(1065) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !712, !alias.scope !1347
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %i.aw, ptr %i.bj, align 4, !tbaa !164, !alias.scope !1347
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false), !alias.scope !1347
  store i32 0, ptr %11, align 8, !alias.scope !1347
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.be, ptr noundef nonnull align 8 dereferenceable(1065) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %.sroa.017.0.copyload = load ptr, ptr %13, align 8, !tbaa !366
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !709
  %.neg144 = select i1 %16, i64 -919, i64 -921
  %i.bm = getelementptr inbounds [32 x i8], ptr %i.bl, i64 %.neg144
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !704 ; 4 uses
  %i.bp = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr %.sroa.017.0.copyload, i1 noundef zeroext false) #28 ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef %i.bp) #28
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ax, align 8
  %i.br = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.ax, ptr %i.bt, align 8, !tbaa !706
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.bp, align 8
  %i.bu = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.bv = or disjoint i64 %i.bu, %i.br
  store i64 %i.bv, ptr %i.bp, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bp, ptr %i.bw, align 8, !tbaa !706
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %i.ax, align 8
  %i.bx = ptrtoint ptr %i.bp to i64
  %i.by = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.bz = or disjoint i64 %i.by, %i.bx
  store i64 %i.bz, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.ca, align 8, !tbaa !712, !alias.scope !1348
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 45, ptr %i.cb, align 4, !tbaa !164, !alias.scope !1348
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false), !alias.scope !1348
  store i32 0, ptr %10, align 8, !alias.scope !1348
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bp, ptr noundef nonnull align 8 dereferenceable(1065) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.cd, align 8, !tbaa !712, !alias.scope !1349
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 48, ptr %i.ce, align 4, !tbaa !164, !alias.scope !1349
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false), !alias.scope !1349
  store i32 0, ptr %9, align 8, !alias.scope !1349
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bp, ptr noundef nonnull align 8 dereferenceable(1065) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i32 1, ptr %8, align 8, !alias.scope !1350
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bp, ptr noundef nonnull align 8 dereferenceable(1065) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %.sroa.014.0.copyload = load ptr, ptr %13, align 8, !tbaa !366
  %i.ch = load ptr, ptr %i.az, align 8, !tbaa !709
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -18144
  %i.cj = load ptr, ptr %i.bn, align 8, !tbaa !704 ; 4 uses
  %i.ck = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr %.sroa.014.0.copyload, i1 noundef zeroext false) #28 ; 9 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef %i.ck) #28
  %.0.copyload.i.i.i.i.i.i.i.i.i.i94 = load i64, ptr %i.ax, align 8
  %i.cl = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i94, -8 ; 2 uses
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.ax, ptr %i.cn, align 8, !tbaa !706
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i95 = load i64, ptr %i.ck, align 8
  %i.co = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i95, 7
  %i.cp = or disjoint i64 %i.co, %i.cl
  store i64 %i.cp, ptr %i.ck, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.ck, ptr %i.cq, align 8, !tbaa !706
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i96 = load i64, ptr %i.ax, align 8
  %i.cr = ptrtoint ptr %i.ck to i64
  %i.cs = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i96, 7
  %i.ct = or disjoint i64 %i.cs, %i.cr
  store i64 %i.ct, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.cu, align 8, !tbaa !712, !alias.scope !1351
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.g, ptr %i.cv, align 4, !tbaa !164, !alias.scope !1351
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false), !alias.scope !1351
  store i32 0, ptr %7, align 8, !alias.scope !1351
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ck, ptr noundef nonnull align 8 dereferenceable(1065) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.cx, align 8, !tbaa !712, !alias.scope !1352
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 48, ptr %i.cy, align 4, !tbaa !164, !alias.scope !1352
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false), !alias.scope !1352
  store i32 0, ptr %6, align 8, !alias.scope !1352
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ck, ptr noundef nonnull align 8 dereferenceable(1065) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.da, align 8, !tbaa !712, !alias.scope !1353
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ak, ptr %i.db, align 8, !tbaa !164, !alias.scope !1353
  store i32 4, ptr %5, align 8, !alias.scope !1353
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ck, ptr noundef nonnull align 8 dereferenceable(1065) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %.sroa.010.0.copyload = load ptr, ptr %13, align 8, !tbaa !366
  store ptr %.sroa.010.0.copyload, ptr %15, align 8, !tbaa !366
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  %i.de = load ptr, ptr %i.az, align 8, !tbaa !709
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -26720
  %i.dg = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.aq, ptr nonnull %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.df, i32 48) ; 2 uses
  %i.dh = extractvalue { ptr, ptr } %i.dg, 0      ; 2 uses
  %i.di = extractvalue { ptr, ptr } %i.dg, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.dj, align 8, !tbaa !712, !alias.scope !1354
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.g, ptr %i.dk, align 4, !tbaa !164, !alias.scope !1354
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false), !alias.scope !1354
  store i32 0, ptr %4, align 8, !alias.scope !1354
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.di, ptr noundef nonnull align 8 dereferenceable(1065) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.dm, align 8, !tbaa !712, !alias.scope !1355
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 45, ptr %i.dn, align 4, !tbaa !164, !alias.scope !1355
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, i8 0, i64 16, i1 false), !alias.scope !1355
  store i32 0, ptr %3, align 8, !alias.scope !1355
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.di, ptr noundef nonnull align 8 dereferenceable(1065) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %.0.copyload.i.i.i.i.i.i.i.i.i.i103 = load i64, ptr %1, align 8
  %i.dp = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i103, 4
  %.not.i.i.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit102
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !720
  %i.ds = and i32 %i.dr, 8
  %.not34.i.i.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.du, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !706 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 44
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !720
  %i.dx = and i32 %i.dw, 8
  %.not3.i.i.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit102
  %.sroa.0.1.i.i.i.i = phi ptr [ %1, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit102 ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.du, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !706 ; 7 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  %i.ec = icmp eq ptr %i.aq, %2
  %or.cond.i.i = or i1 %i.ec, %i.eb
  br i1 %or.cond.i.i, label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ee = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr %i.dz, ptr nonnull %i.ea) #28
  %.0.copyload.i.i.i.i.i.i.i.i.i.i105 = load i64, ptr %i.ea, align 8
  %i.ef = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i105, -8 ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr
  %.0.copyload.i.i.i.i20.i.i.i.i.i.i = load i64, ptr %i.dz, align 8
  %i.eh = and i64 %.0.copyload.i.i.i.i20.i.i.i.i.i.i, -8
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.ea, ptr %i.ej, align 8, !tbaa !706
  %.0.copyload.i.i.i.i21.i.i.i.i.i.i = load i64, ptr %i.dz, align 8
  %i.ek = and i64 %.0.copyload.i.i.i.i21.i.i.i.i.i.i, -8
  %.0.copyload.i.i.i.i22.i.i.i.i.i.i = load i64, ptr %i.ea, align 8
  %i.el = and i64 %.0.copyload.i.i.i.i22.i.i.i.i.i.i, 7
  %i.em = or disjoint i64 %i.el, %i.ek
  store i64 %i.em, ptr %i.ea, align 8
  %.0.copyload.i.i.i.i23.i.i.i.i.i.i = load i64, ptr %i.dc, align 8
  %i.en = and i64 %.0.copyload.i.i.i.i23.i.i.i.i.i.i, -8 ; 2 uses
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.dc, ptr %i.ep, align 8, !tbaa !706
  %.0.copyload.i.i.i.i24.i.i.i.i.i.i = load i64, ptr %i.dz, align 8
  %i.eq = and i64 %.0.copyload.i.i.i.i24.i.i.i.i.i.i, 7
  %i.er = or disjoint i64 %i.eq, %i.en
  store i64 %i.er, ptr %i.dz, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.dz, ptr %i.es, align 8, !tbaa !706
  %.0.copyload.i.i.i.i25.i.i.i.i.i.i = load i64, ptr %i.dc, align 8
  %i.et = and i64 %.0.copyload.i.i.i.i25.i.i.i.i.i.i, 7
  %i.eu = or disjoint i64 %i.et, %i.ef
  store i64 %i.eu, ptr %i.dc, align 8
  br label %_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit

_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_.exit: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %bb.a
  call void @_ZN4llvm17MachineBasicBlock31transferSuccessorsAndUpdatePHIsEPS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.aq, ptr noundef nonnull %2) #28
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %i.ak, ptr noundef nonnull %i.aq, i32 -1) #28
end_hunk_0
