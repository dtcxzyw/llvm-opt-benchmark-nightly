Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVExpandAtomicPseudoInsts?download=true
begin_hunk_0_@_ZN12_GLOBAL__N_123RISCVExpandAtomicPseudo20expandAtomicMinMaxOpERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEENS1_13AtomicRMWInst5BinOpEbiRS6_:bb.a
  %..i143.neg.i = select i1 %i.ol, i64 -15774, i64 -15777
  br label %_ZN12_GLOBAL__N_131doMaskedAtomicMinMaxOpExpansionEPKN4llvm14RISCVInstrInfoERNS0_12MachineInstrENS0_8DebugLocEPNS0_17MachineBasicBlockES8_S8_S8_S8_NS0_13AtomicRMWInst5BinOpEiPKNS0_14RISCVSubtargetE.exit

bb.aj:                                            ; preds = %bb.ag
  %i.om = getelementptr inbounds nuw i8, ptr %i.bk, i64 527
  %i.on = load i8, ptr %i.om, align 1, !tbaa !229, !range !369, !noundef !148
  %i.oo = trunc nuw i8 %i.on to i1
  %.3.i142.neg.i = select i1 %i.oo, i64 -15774, i64 -15777
  br label %_ZN12_GLOBAL__N_131doMaskedAtomicMinMaxOpExpansionEPKN4llvm14RISCVInstrInfoERNS0_12MachineInstrENS0_8DebugLocEPNS0_17MachineBasicBlockES8_S8_S8_S8_NS0_13AtomicRMWInst5BinOpEiPKNS0_14RISCVSubtargetE.exit

bb.ak:                                            ; preds = %bb.ag
  br label %_ZN12_GLOBAL__N_131doMaskedAtomicMinMaxOpExpansionEPKN4llvm14RISCVInstrInfoERNS0_12MachineInstrENS0_8DebugLocEPNS0_17MachineBasicBlockES8_S8_S8_S8_NS0_13AtomicRMWInst5BinOpEiPKNS0_14RISCVSubtargetE.exit

_ZN12_GLOBAL__N_131doMaskedAtomicMinMaxOpExpansionEPKN4llvm14RISCVInstrInfoERNS0_12MachineInstrENS0_8DebugLocEPNS0_17MachineBasicBlockES8_S8_S8_S8_NS0_13AtomicRMWInst5BinOpEiPKNS0_14RISCVSubtargetE.exit: ; preds = %bb.ag, %bb.ag, %bb.ai, %bb.aj, %bb.ak
  %.0.i141.neg.i = phi i64 [ -15777, %bb.ak ], [ -15774, %bb.ag ], [ %..i143.neg.i, %bb.ai ], [ -15774, %bb.ag ], [ %.3.i142.neg.i, %bb.aj ]
  %i.op = load ptr, ptr %i.jc, align 8, !tbaa !370
  %i.oq = getelementptr inbounds [32 x i8], ptr %i.op, i64 %.0.i141.neg.i
  %i.or = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 5 uses
  %i.os = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.r, ptr nonnull %i.or, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %i.oq, i32 %i.bq) ; 2 uses
  %i.ot = extractvalue { ptr, ptr } %i.os, 0      ; 2 uses
  %i.ou = extractvalue { ptr, ptr } %i.os, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.ov = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.ov, align 8, !tbaa !371, !alias.scope !653
  %i.ow = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %i.bq, ptr %i.ow, align 4, !tbaa !228, !alias.scope !653
  %i.ox = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ox, i8 0, i64 16, i1 false), !alias.scope !653
  store i32 0, ptr %11, align 8, !alias.scope !653
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ou, ptr noundef nonnull align 8 dereferenceable(1065) %i.ot, ptr noundef nonnull align 8 dereferenceable(32) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.oy = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.oy, align 8, !tbaa !371, !alias.scope !656
  %i.oz = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.bu, ptr %i.oz, align 4, !tbaa !228, !alias.scope !656
  %i.pa = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pa, i8 0, i64 16, i1 false), !alias.scope !656
  store i32 0, ptr %10, align 8, !alias.scope !656
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ou, ptr noundef nonnull align 8 dereferenceable(1065) %i.ot, ptr noundef nonnull align 8 dereferenceable(32) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #13
  %i.pb = load ptr, ptr %i.jc, align 8, !tbaa !370
  %i.pc = getelementptr inbounds i8, ptr %i.pb, i64 -452512
  %i.pd = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !181 ; 4 uses
  %i.pf = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.pe, ptr noundef nonnull align 8 dereferenceable(32) %i.pc, ptr %.sroa.067.0.copyload, i1 noundef zeroext false) #13 ; 9 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.pg, ptr noundef %i.pf) #13
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i145.i = load i64, ptr %i.or, align 8
  %i.ph = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i145.i, -8 ; 2 uses
  %i.pi = inttoptr i64 %i.ph to ptr
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  store ptr %i.or, ptr %i.pj, align 8, !tbaa !158
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i146.i = load i64, ptr %i.pf, align 8
  %i.pk = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i146.i, 7
  %i.pl = or disjoint i64 %i.pk, %i.ph
  store i64 %i.pl, ptr %i.pf, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  store ptr %i.pf, ptr %i.pm, align 8, !tbaa !158
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i147.i = load i64, ptr %i.or, align 8
  %i.pn = ptrtoint ptr %i.pf to i64
  %i.po = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i147.i, 7
  %i.pp = or disjoint i64 %i.po, %i.pn
  store i64 %i.pp, ptr %i.or, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.pq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.pq, align 8, !tbaa !371, !alias.scope !659
  %i.pr = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.bq, ptr %i.pr, align 4, !tbaa !228, !alias.scope !659
  %i.ps = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ps, i8 0, i64 16, i1 false), !alias.scope !659
  store i32 0, ptr %9, align 8, !alias.scope !659
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.pf, ptr noundef nonnull align 8 dereferenceable(1065) %i.pe, ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.pt = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.pt, align 8, !tbaa !371, !alias.scope !662
  %i.pu = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 68, ptr %i.pu, align 4, !tbaa !228, !alias.scope !662
  %i.pv = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pv, i8 0, i64 16, i1 false), !alias.scope !662
  store i32 0, ptr %8, align 8, !alias.scope !662
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.pf, ptr noundef nonnull align 8 dereferenceable(1065) %i.pe, ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.pw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.pw, align 8, !tbaa !371, !alias.scope !665
  %i.px = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.n, ptr %i.px, align 8, !tbaa !228, !alias.scope !665
  store i32 4, ptr %7, align 8, !alias.scope !665
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.pf, ptr noundef nonnull align 8 dereferenceable(1065) %i.pe, ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.al

bb.al:                                            ; preds = %_ZN12_GLOBAL__N_131doMaskedAtomicMinMaxOpExpansionEPKN4llvm14RISCVInstrInfoERNS0_12MachineInstrENS0_8DebugLocEPNS0_17MachineBasicBlockES8_S8_S8_S8_NS0_13AtomicRMWInst5BinOpEiPKNS0_14RISCVSubtargetE.exit, %_ZN12_GLOBAL__N_125doAtomicMinMaxOpExpansionEPKN4llvm14RISCVInstrInfoERNS0_12MachineInstrENS0_8DebugLocEPNS0_17MachineBasicBlockES8_S8_S8_S8_NS0_13AtomicRMWInst5BinOpEiPKNS0_14RISCVSubtargetE.exit
  store ptr %i.am, ptr %6, align 8
  %i.py = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #13
  store ptr null, ptr %59, align 8, !tbaa !512
  %i.pz = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %59, i64 32 ; 2 uses
  store ptr %i.qa, ptr %i.pz, align 8, !tbaa !529
  %i.qb = getelementptr inbounds nuw i8, ptr %59, i64 16
  store i64 0, ptr %i.qb, align 8, !tbaa !530
  %i.qc = getelementptr inbounds nuw i8, ptr %59, i64 24
  store i64 8, ptr %i.qc, align 8, !tbaa !531
  %i.qd = getelementptr inbounds nuw i8, ptr %59, i64 48 ; 2 uses
  store ptr null, ptr %i.qd, align 8, !tbaa !532
  %i.qe = getelementptr inbounds nuw i8, ptr %59, i64 56
  store i32 0, ptr %i.qe, align 8, !tbaa !533
  call void @_ZN4llvm20computeAndAddLiveInsERNS_12LivePhysRegsERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(64) %59, ptr noundef nonnull align 8 dereferenceable(360) %i.n) #13
  call void @_ZN4llvm20computeAndAddLiveInsERNS_12LivePhysRegsERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(64) %59, ptr noundef nonnull align 8 dereferenceable(360) %i.p) #13
  call void @_ZN4llvm20computeAndAddLiveInsERNS_12LivePhysRegsERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(64) %59, ptr noundef nonnull align 8 dereferenceable(360) %i.r) #13
  call void @_ZN4llvm20computeAndAddLiveInsERNS_12LivePhysRegsERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(64) %59, ptr noundef nonnull align 8 dereferenceable(360) %i.t) #13
  %i.qf = load ptr, ptr %i.qd, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.qf, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIA_hN4llvm9SparseSetIttNS1_8identityEhE7DeleterEED2Ev.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef nonnull %i.qf) #13
  br label %_ZNSt10unique_ptrIA_hN4llvm9SparseSetIttNS1_8identityEhE7DeleterEED2Ev.exit.i.i

_ZNSt10unique_ptrIA_hN4llvm9SparseSetIttNS1_8identityEhE7DeleterEED2Ev.exit.i.i: ; preds = %bb.am, %bb.al
  %i.qg = load ptr, ptr %i.pz, align 8, !tbaa !529 ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %i.qa
  br i1 %i.qh, label %_ZN4llvm12LivePhysRegsD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt10unique_ptrIA_hN4llvm9SparseSetIttNS1_8identityEhE7DeleterEED2Ev.exit.i.i
  call void @free(ptr noundef %i.qg) #13
  br label %_ZN4llvm12LivePhysRegsD2Ev.exit

_ZN4llvm12LivePhysRegsD2Ev.exit:                  ; preds = %_ZNSt10unique_ptrIA_hN4llvm9SparseSetIttNS1_8identityEhE7DeleterEED2Ev.exit.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #13
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm12LivePhysRegsD2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_123RISCVExpandAtomicPseudo19expandAtomicCmpXchgERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEbiRS6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, i1 noundef zeroext %3, i32 noundef range(i32 32, 65) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %15 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %16 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %17 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %18 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %19 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %20 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %21 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %22 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %23 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %24 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %25 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %26 = alloca %"class.llvm::SmallVector.223", align 8 ; 8 uses
  %27 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %28 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %29 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %30 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %31 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %32 = alloca %"class.llvm::LivePhysRegs", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.0124.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !180 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !225
  %i.f = tail call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.c, ptr noundef %i.e, i64 undef, i8 0) #13 ; 21 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !225
  %i.h = tail call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.c, ptr noundef %i.g, i64 undef, i8 0) #13 ; 18 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !225
  %i.j = tail call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.c, ptr noundef %i.i, i64 undef, i8 0) #13 ; 20 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !227  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !228  ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !228  ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  %i.r = load i32, ptr %i.q, align 4, !tbaa !228  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  %i.t = load i32, ptr %i.s, align 4, !tbaa !228  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 132
  %i.v = load i32, ptr %i.u, align 4, !tbaa !228  ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 164
  %i.x = load i32, ptr %i.w, align 4, !tbaa !228
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0265.0 = phi i32 [ %i.x, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.y = phi i64 [ 6, %bb.b ], [ 5, %bb.a ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.z = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !163
  %i.ac = and i32 %i.ab, 8
  %.not34.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.ae, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %2, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !158 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !163
  %i.ah = and i32 %i.ag, 8
  %.not3.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !176

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %bb.c
  %.sroa.0.1.i.i.i.i = phi ptr [ %2, %bb.c ], [ %2, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.ae, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !158 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  %i.ak = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  store ptr %i.ak, ptr %26, align 8, !tbaa !668
  %i.al = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 4 uses
  store i32 0, ptr %i.al, align 8, !tbaa !669
  %i.am = getelementptr inbounds nuw i8, ptr %26, i64 12
  store i32 6, ptr %i.am, align 4, !tbaa !670
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 16 uses
  %i.ao = icmp eq ptr %i.aj, %i.an
  br i1 %i.ao, label %_ZN12_GLOBAL__N_127tryToFoldBNEOnCmpXchgResultERN4llvm17MachineBasicBlockENS0_26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEENS0_8RegisterES6_S6_RPS1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  %.sroa.03.08.i.i = phi ptr [ %i.bb, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ], [ %i.aj, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ] ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i, i64 52
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !178
  switch i32 %i.aq, label %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i [
    i32 25, label %.critedge2.i.i
    i32 18, label %.critedge2.i.i
    i32 17, label %.critedge2.i.i
    i32 16, label %.critedge2.i.i
    i32 15, label %.critedge2.i.i
    i32 14, label %.critedge2.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.08.i.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.08.i.i, align 8
  %i.ar = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %.critedge2.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i, i64 44
  %i.at = load i32, ptr %i.as, align 4, !tbaa !163
  %i.au = and i32 %i.at, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.aw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %.sroa.03.08.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !158 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !163
  %i.az = and i32 %i.ay, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !176

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %.critedge2.i.i
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %.sroa.03.08.i.i, %.critedge2.i.i ], [ %.sroa.03.08.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.aw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !158 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bb, %i.an
  br i1 %.not.i.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i, label %.lr.ph.i.i, !llvm.loop !671

_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %.lr.ph.i.i
  %.sroa.03.0.lcssa.i.i = phi ptr [ %i.bb, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ], [ %.sroa.03.08.i.i, %.lr.ph.i.i ] ; 10 uses
  %.not140.i = icmp eq i32 %.sroa.0265.0, 0       ; 3 uses
  br i1 %.not140.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit57.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i
  %i.bc = icmp eq ptr %.sroa.03.0.lcssa.i.i, %i.an
  br i1 %i.bc, label %_ZN12_GLOBAL__N_127tryToFoldBNEOnCmpXchgResultERN4llvm17MachineBasicBlockENS0_26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEENS0_8RegisterES6_S6_RPS1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i, i64 52
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !178
  %.not.i = icmp eq i32 %i.be, 14123
  br i1 %.not.i, label %bb.f, label %_ZN12_GLOBAL__N_127tryToFoldBNEOnCmpXchgResultERN4llvm17MachineBasicBlockENS0_26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEENS0_8RegisterES6_S6_RPS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !227 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !228 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 68
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !228 ; 2 uses
  %i.bl = icmp eq i32 %i.bi, %i.n
  %i.bm = icmp eq i32 %i.bk, %.sroa.0265.0
  %or.cond.i = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = icmp eq i32 %i.bi, %.sroa.0265.0
  %i.bo = icmp eq i32 %i.bk, %i.n
  %or.cond137.i = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %or.cond137.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i, label %_ZN12_GLOBAL__N_127tryToFoldBNEOnCmpXchgResultERN4llvm17MachineBasicBlockENS0_26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEENS0_8RegisterES6_S6_RPS1_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i: ; preds = %bb.g, %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !228 ; 3 uses
  store ptr %.sroa.03.0.lcssa.i.i, ptr %i.ak, align 8
  store i32 1, ptr %i.al, align 8, !tbaa !669
  %.0.copyload.i.i.i.i.i.i.i.i.i.i30.i = load i64, ptr %.sroa.03.0.lcssa.i.i, align 8
  %i.br = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i30.i, 4
  %.not.i.i.i.i31.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i31.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i34.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i32.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i34.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i, i64 44
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !163
  %i.bu = and i32 %i.bt, 8
  %.not34.i.i.i.i35.i = icmp eq i32 %i.bu, 0
  br i1 %.not34.i.i.i.i35.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i32.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i36.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i36.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i34.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i36.i
  %.sroa.0.05.i.i.i.i37.i = phi ptr [ %i.bw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i36.i ], [ %.sroa.03.0.lcssa.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i34.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i37.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !158 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 44
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !163
  %i.bz = and i32 %i.by, 8
  %.not3.i.i.i.i38.i = icmp eq i32 %i.bz, 0
  br i1 %.not3.i.i.i.i38.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i32.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i36.i, !llvm.loop !176

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i32.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i36.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i34.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i
  %.sroa.0.1.i.i.i.i33.i = phi ptr [ %.sroa.03.0.lcssa.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit.i ], [ %.sroa.03.0.lcssa.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i34.i ], [ %i.bw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i36.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i33.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !158 ; 3 uses
  %.not7.i39.i = icmp eq ptr %i.cb, %i.an
  br i1 %.not7.i39.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit57.i, label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i32.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i49.i
  %.sroa.03.08.i41.i = phi ptr [ %i.co, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i49.i ], [ %i.cb, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i32.i ] ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i41.i, i64 52
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !178
  switch i32 %i.cd, label %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit57.i [
    i32 25, label %.critedge2.i46.i
    i32 18, label %.critedge2.i46.i
    i32 17, label %.critedge2.i46.i
    i32 16, label %.critedge2.i46.i
    i32 15, label %.critedge2.i46.i
    i32 14, label %.critedge2.i46.i
  ]

.critedge2.i46.i:                                 ; preds = %.lr.ph.i40.i, %.lr.ph.i40.i, %.lr.ph.i40.i, %.lr.ph.i40.i, %.lr.ph.i40.i, %.lr.ph.i40.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.08.i41.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i47.i = load i64, ptr %.sroa.03.08.i41.i, align 8
  %i.ce = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i47.i, 4
  %.not.i.i.i.i48.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i.i.i48.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i52.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i49.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i52.i: ; preds = %.critedge2.i46.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i41.i, i64 44
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !163
  %i.ch = and i32 %i.cg, 8
  %.not34.i.i.i.i53.i = icmp eq i32 %i.ch, 0
  br i1 %.not34.i.i.i.i53.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i49.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i54.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i54.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i52.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i54.i
  %.sroa.0.05.i.i.i.i55.i = phi ptr [ %i.cj, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i54.i ], [ %.sroa.03.08.i41.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i52.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i55.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !158 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 44
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !163
  %i.cm = and i32 %i.cl, 8
  %.not3.i.i.i.i56.i = icmp eq i32 %i.cm, 0
  br i1 %.not3.i.i.i.i56.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i49.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i54.i, !llvm.loop !176

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i49.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i54.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i52.i, %.critedge2.i46.i
  %.sroa.0.1.i.i.i.i50.i = phi ptr [ %.sroa.03.08.i41.i, %.critedge2.i46.i ], [ %.sroa.03.08.i41.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i52.i ], [ %i.cj, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i54.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i50.i, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !158 ; 3 uses
  %.not.i51.i = icmp eq ptr %i.co, %i.an
  br i1 %.not.i51.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit57.i, label %.lr.ph.i40.i, !llvm.loop !671

_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit57.i: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i49.i, %.lr.ph.i40.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i32.i, %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i
  %i.cp = phi i32 [ 0, %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i ], [ 1, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i32.i ], [ 1, %.lr.ph.i40.i ], [ 1, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i49.i ] ; 2 uses
  %.sroa.0112.0.i = phi i32 [ %i.n, %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i ], [ %i.bq, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i32.i ], [ %i.bq, %.lr.ph.i40.i ], [ %i.bq, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i49.i ] ; 3 uses
  %.sroa.0118.0.i = phi ptr [ %.sroa.03.0.lcssa.i.i, %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit.i ], [ %i.cb, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i32.i ], [ %i.co, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i49.i ], [ %.sroa.03.08.i41.i, %.lr.ph.i40.i ] ; 9 uses
  %i.cq = icmp eq ptr %.sroa.0118.0.i, %i.an
  br i1 %i.cq, label %_ZN12_GLOBAL__N_127tryToFoldBNEOnCmpXchgResultERN4llvm17MachineBasicBlockENS0_26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEENS0_8RegisterES6_S6_RPS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit57.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0118.0.i, i64 52
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !178
  %.not26.i = icmp eq i32 %i.cs, 14141
  br i1 %.not26.i, label %bb.i, label %_ZN12_GLOBAL__N_127tryToFoldBNEOnCmpXchgResultERN4llvm17MachineBasicBlockENS0_26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEENS0_8RegisterES6_S6_RPS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0118.0.i, i64 32 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !227 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !228 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 36
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !228 ; 3 uses
  %i.da = icmp eq i32 %i.cw, %.sroa.0112.0.i      ; 2 uses
  %i.db = icmp eq i32 %i.cz, %i.t
  %or.cond138.i = select i1 %i.da, i1 %i.db, i1 false
  br i1 %or.cond138.i, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = icmp eq i32 %i.cw, %i.t
  %i.dd = icmp eq i32 %i.cz, %.sroa.0112.0.i
  %or.cond139.i = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond139.i, label %bb.k, label %_ZN12_GLOBAL__N_127tryToFoldBNEOnCmpXchgResultERN4llvm17MachineBasicBlockENS0_26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEENS0_8RegisterES6_S6_RPS1_.exit

bb.k:                                             ; preds = %bb.j
  br i1 %.not140.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit60.i, label %bb.l

.thread.i:                                        ; preds = %bb.i
  br i1 %.not140.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit60.i, label %.thread136.i

bb.l:                                             ; preds = %bb.k
  br i1 %i.da, label %.thread136.i, label %bb.m

.thread136.i:                                     ; preds = %bb.l, %.thread.i
  %i.de = load i32, ptr %i.cu, align 8            ; 2 uses
  %i.df = lshr i32 %i.de, 26
  %i.dg = lshr i32 %i.de, 24
  %.lobit.i.i = and i32 %i.dg, 1
  %i.dh = xor i32 %.lobit.i.i, 1
  %i.di = and i32 %i.dh, %i.df
  %.not141.i = icmp eq i32 %i.di, 0
  br i1 %.not141.i, label %_ZN12_GLOBAL__N_127tryToFoldBNEOnCmpXchgResultERN4llvm17MachineBasicBlockENS0_26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEENS0_8RegisterES6_S6_RPS1_.exit, label %bb.m

bb.m:                                             ; preds = %.thread136.i, %bb.l
  %i.dj = icmp eq i32 %i.cz, %.sroa.0112.0.i
  br i1 %i.dj, label %bb.n, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit60.i

bb.n:                                             ; preds = %bb.m
  %i.dk = load i32, ptr %i.cx, align 8            ; 2 uses
  %i.dl = lshr i32 %i.dk, 26
  %i.dm = lshr i32 %i.dk, 24
  %.lobit.i58.i = and i32 %i.dm, 1
  %i.dn = xor i32 %.lobit.i58.i, 1
  %i.do = and i32 %i.dn, %i.dl
  %.not142.i = icmp eq i32 %i.do, 0
  br i1 %.not142.i, label %_ZN12_GLOBAL__N_127tryToFoldBNEOnCmpXchgResultERN4llvm17MachineBasicBlockENS0_26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEENS0_8RegisterES6_S6_RPS1_.exit, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit60.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit60.i: ; preds = %bb.n, %bb.m, %.thread.i, %bb.k
  %i.dp = zext nneg i32 %i.cp to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.dp
  store ptr %.sroa.0118.0.i, ptr %i.dq, align 8
  %i.dr = add nuw nsw i32 %i.cp, 1
  store i32 %i.dr, ptr %i.al, align 8, !tbaa !669
  %.pre.i = load ptr, ptr %i.ct, align 8, !tbaa !227
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 80
  %.pre158.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !228 ; 4 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i63.i = load i64, ptr %.sroa.0118.0.i, align 8
  %i.ds = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i63.i, 4
  %.not.i.i.i.i64.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i.i64.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i68.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i65.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i68.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit60.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0118.0.i, i64 44
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !163
  %i.dv = and i32 %i.du, 8
  %.not34.i.i.i.i69.i = icmp eq i32 %i.dv, 0
  br i1 %.not34.i.i.i.i69.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i65.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i70.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i70.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i68.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i70.i
  %.sroa.0.05.i.i.i.i71.i = phi ptr [ %i.dx, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i70.i ], [ %.sroa.0118.0.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i68.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i71.i, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !158 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 44
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !163
  %i.ea = and i32 %i.dz, 8
  %.not3.i.i.i.i72.i = icmp eq i32 %i.ea, 0
  br i1 %.not3.i.i.i.i72.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i65.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i70.i, !llvm.loop !176

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i65.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i70.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i68.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit60.i
  %.sroa.0.1.i.i.i.i66.i = phi ptr [ %.sroa.0118.0.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12MachineInstrELb1EE9push_backES2_.exit60.i ], [ %.sroa.0118.0.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i68.i ], [ %i.dx, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i70.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i66.i, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !158 ; 2 uses
  %.not7.i74.i = icmp eq ptr %i.ec, %i.an
  br i1 %.not7.i74.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit92.thread.i, label %.lr.ph.i75.i

.lr.ph.i75.i:                                     ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i65.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i84.i
  %.sroa.03.08.i76.i = phi ptr [ %i.ep, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i84.i ], [ %i.ec, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i65.i ] ; 8 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i76.i, i64 52
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !178
  switch i32 %i.ee, label %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit92.i [
    i32 25, label %.critedge2.i81.i
    i32 18, label %.critedge2.i81.i
    i32 17, label %.critedge2.i81.i
    i32 16, label %.critedge2.i81.i
    i32 15, label %.critedge2.i81.i
    i32 14, label %.critedge2.i81.i
  ]

.critedge2.i81.i:                                 ; preds = %.lr.ph.i75.i, %.lr.ph.i75.i, %.lr.ph.i75.i, %.lr.ph.i75.i, %.lr.ph.i75.i, %.lr.ph.i75.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.08.i76.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i82.i = load i64, ptr %.sroa.03.08.i76.i, align 8
  %i.ef = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i82.i, 4
  %.not.i.i.i.i83.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i.i.i83.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i87.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i84.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i87.i: ; preds = %.critedge2.i81.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i76.i, i64 44
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !163
  %i.ei = and i32 %i.eh, 8
  %.not34.i.i.i.i88.i = icmp eq i32 %i.ei, 0
  br i1 %.not34.i.i.i.i88.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i84.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i89.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i89.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i87.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i89.i
  %.sroa.0.05.i.i.i.i90.i = phi ptr [ %i.ek, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i89.i ], [ %.sroa.03.08.i76.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i87.i ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i90.i, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !158 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 44
  %i.em = load i32, ptr %i.el, align 4, !tbaa !163
  %i.en = and i32 %i.em, 8
  %.not3.i.i.i.i91.i = icmp eq i32 %i.en, 0
  br i1 %.not3.i.i.i.i91.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i84.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i89.i, !llvm.loop !176

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i84.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i89.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i87.i, %.critedge2.i81.i
  %.sroa.0.1.i.i.i.i85.i = phi ptr [ %.sroa.03.08.i76.i, %.critedge2.i81.i ], [ %.sroa.03.08.i76.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i87.i ], [ %i.ek, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i89.i ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i85.i, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !158 ; 2 uses
  %.not.i86.i = icmp eq ptr %i.ep, %i.an
  br i1 %.not.i86.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit92.thread.i, label %.lr.ph.i75.i, !llvm.loop !671

_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit92.i: ; preds = %.lr.ph.i75.i
  %i.eq = icmp eq ptr %.sroa.03.08.i76.i, %i.an
  br i1 %i.eq, label %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit92.thread.i, label %_ZN12_GLOBAL__N_127tryToFoldBNEOnCmpXchgResultERN4llvm17MachineBasicBlockENS0_26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEENS0_8RegisterES6_S6_RPS1_.exit

_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit92.thread.i: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i84.i, %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit92.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i65.i
  call void @_ZN4llvm17MachineBasicBlock15removeSuccessorEPS0_b(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef %.pre158.i, i1 noundef zeroext false) #13
  %i.er = load ptr, ptr %26, align 8, !tbaa !668  ; 3 uses
  %i.es = load i32, ptr %i.al, align 8, !tbaa !669 ; 2 uses
  %i.et = zext i32 %i.es to i64
  %.idx.i = shl nuw nsw i64 %i.et, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 %.idx.i
  %.not27150.i = icmp eq i32 %i.es, 0
  br i1 %.not27150.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit92.thread.i, %.lr.ph.i
  %.025151.i = phi ptr [ %i.ex, %.lr.ph.i ], [ %i.er, %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit92.thread.i ] ; 2 uses
  %i.ev = load ptr, ptr %.025151.i, align 8, !tbaa !672
  %i.ew = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ev) #13 ; 0 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.025151.i, i64 8 ; 2 uses
  %.not27.i = icmp eq ptr %i.ex, %i.eu
  br i1 %.not27.i, label %.loopexit.loopexit.i, label %.lr.ph.i

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i
  %.pre159.i = load ptr, ptr %26, align 8, !tbaa !668
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit92.thread.i
  %i.ey = phi ptr [ %i.er, %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit92.thread.i ], [ %.pre159.i, %.loopexit.loopexit.i ] ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ak
  br i1 %i.ez, label %_ZN12_GLOBAL__N_127tryToFoldBNEOnCmpXchgResultERN4llvm17MachineBasicBlockENS0_26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEENS0_8RegisterES6_S6_RPS1_.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit.i
  call void @free(ptr noundef %i.ey) #13
  br label %_ZN12_GLOBAL__N_127tryToFoldBNEOnCmpXchgResultERN4llvm17MachineBasicBlockENS0_26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEENS0_8RegisterES6_S6_RPS1_.exit

_ZN12_GLOBAL__N_127tryToFoldBNEOnCmpXchgResultERN4llvm17MachineBasicBlockENS0_26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEENS0_8RegisterES6_S6_RPS1_.exit: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %bb.d, %bb.e, %bb.g, %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit57.i, %bb.h, %bb.j, %.thread136.i, %bb.n, %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit92.i, %.loopexit.i, %bb.o
  %.0 = phi ptr [ %i.j, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %i.j, %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit57.i ], [ %.pre158.i, %.loopexit.i ], [ %.pre158.i, %bb.o ], [ %.pre158.i, %_ZN4llvm28skipDebugInstructionsForwardINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEET_S4_S4_b.exit92.i ], [ %i.j, %.thread136.i ], [ %i.j, %bb.n ], [ %i.j, %bb.j ], [ %i.j, %bb.h ], [ %i.j, %bb.d ], [ %i.j, %bb.g ], [ %i.j, %bb.e ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !157 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 296 ; 3 uses
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef %i.f) #13
  %i.fd = load ptr, ptr %i.fb, align 8, !tbaa !226 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.fb, ptr %i.fe, align 8, !tbaa !157
  store ptr %i.fd, ptr %i.f, align 8, !tbaa !226
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %i.f, ptr %i.ff, align 8, !tbaa !157
  store ptr %i.f, ptr %i.fb, align 8, !tbaa !226
  %i.fg = load ptr, ptr %i.fe, align 8, !tbaa !157 ; 3 uses
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef %i.h) #13
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !226 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.fg, ptr %i.fi, align 8, !tbaa !157
  store ptr %i.fh, ptr %i.h, align 8, !tbaa !226
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.h, ptr %i.fj, align 8, !tbaa !157
end_hunk_0
