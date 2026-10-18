Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCISelLowering?download=true
inline.NumInlined: 17285
inline.NumDeleted: 3532
loop-unroll.NumCompletelyUnrolled: 104
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZNK4llvm17PPCTargetLowering16EmitAtomicBinaryERNS_12MachineInstrEPNS_17MachineBasicBlockEjjj:switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.hi = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.hi, align 8, !tbaa !970, !alias.scope !1606
  %i.hj = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 20, ptr %i.hj, align 4, !tbaa !204, !alias.scope !1606
  %i.hk = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, i8 0, i64 16, i1 false), !alias.scope !1606
  store i32 0, ptr %7, align 8, !alias.scope !1606
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gw, ptr noundef nonnull align 8 dereferenceable(1065) %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.hl, align 8, !tbaa !970, !alias.scope !1607
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ah, ptr %i.hm, align 8, !tbaa !204, !alias.scope !1607
  store i32 4, ptr %6, align 8, !alias.scope !1607
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gw, ptr noundef nonnull align 8 dereferenceable(1065) %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %.0, ptr noundef nonnull %i.ah, i32 -1) #31
  call void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360) %.0, ptr noundef nonnull %i.ak, i32 -1) #31
  ret ptr %i.ak
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL26signExtendOperandIfUnknownRN4llvm12MachineInstrEPNS_17MachineBasicBlockEjbPKNS_12PPCInstrInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %i.a = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !839  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !924
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  %i.g = load i32, ptr %i.f, align 4, !tbaa !204  ; 3 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.c, i32 %i.g) #31 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !971
  switch i32 %i.k, label %.critedge [
    i32 20, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit
    i32 1390, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1391, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1394, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1395, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1396, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1397, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1398, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1399, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1435, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1440, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1441, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1445, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1446, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1679, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1680, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1683, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1686, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1697, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1698, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1701, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1704, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1173, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1174, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1175, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1176, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1177, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1178, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1179, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1180, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1181, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1182, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1183, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1184, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1185, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1186, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1187, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1188, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1189, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1190, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1191, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1980, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1983, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1986, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
    i32 1987, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread
  ]

_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !924
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !204
  %i.p = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %i.i) #31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !839
  %i.s = tail call i16 @_ZNK4llvm12PPCInstrInfo20isSignOrZeroExtendedEjjPKNS_19MachineRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(1080) %3, i32 noundef %i.o, i32 noundef 0, ptr noundef nonnull %i.r) #31
  %i.t = trunc i16 %i.s to i1
  br i1 %i.t, label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit
  %i.u = tail call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 64), ptr nonnull @.str.70, i64 0) #31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !564
  store ptr %.sroa.03.0.copyload, ptr %5, align 8, !tbaa !564
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !967
  %.neg = select i1 %2, i64 -1173, i64 -1178
  %i.z = getelementptr inbounds [32 x i8], ptr %i.y, i64 %.neg
  %i.aa = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 %i.u) ; 2 uses
  %i.ab = extractvalue { ptr, ptr } %i.aa, 0
  %i.ac = extractvalue { ptr, ptr } %i.aa, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !970, !alias.scope !1610
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.g, ptr %i.ae, align 4, !tbaa !204, !alias.scope !1610
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false), !alias.scope !1610
  store i32 0, ptr %4, align 8, !alias.scope !1610
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, ptr noundef nonnull align 8 dereferenceable(1065) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !924
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i32 %i.u) #31
  br label %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread

_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit.thread: ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %.critedge, %_ZL14isSignExtendedRN4llvm12MachineInstrEPKNS_12PPCInstrInfoE.exit
  ret void
}

declare noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef, i64, i8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_S3_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr %1, ptr noundef %2, ptr %3, ptr %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %3, %4
  %i.b = icmp eq ptr %1, %4
  %or.cond.i = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond.i, label %_ZN4llvm11iplist_implINS_12simple_ilistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEENS_12ilist_traitsIS2_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb1ELb1EvLb0EvEELb0ELb0EEERS8_SD_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %3, ptr %4) #31
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %4, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %.0.copyload.i.i.i.i20.i.i.i.i.i = load i64, ptr %3, align 8
  %i.g = and i64 %.0.copyload.i.i.i.i20.i.i.i.i.i, -8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %4, ptr %i.i, align 8, !tbaa !965
  %.0.copyload.i.i.i.i21.i.i.i.i.i = load i64, ptr %3, align 8
  %i.j = and i64 %.0.copyload.i.i.i.i21.i.i.i.i.i, -8
  %.0.copyload.i.i.i.i22.i.i.i.i.i = load i64, ptr %4, align 8
  %i.k = and i64 %.0.copyload.i.i.i.i22.i.i.i.i.i, 7
  %i.l = or disjoint i64 %i.k, %i.j
  store i64 %i.l, ptr %4, align 8
  %.0.copyload.i.i.i.i23.i.i.i.i.i = load i64, ptr %1, align 8
  %i.m = and i64 %.0.copyload.i.i.i.i23.i.i.i.i.i, -8 ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %1, ptr %i.o, align 8, !tbaa !965
  %.0.copyload.i.i.i.i24.i.i.i.i.i = load i64, ptr %3, align 8
  %i.p = and i64 %.0.copyload.i.i.i.i24.i.i.i.i.i, 7
  %i.q = or disjoint i64 %i.p, %i.m
  store i64 %i.q, ptr %3, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %3, ptr %i.r, align 8, !tbaa !965
  %.0.copyload.i.i.i.i25.i.i.i.i.i = load i64, ptr %1, align 8
  %i.s = and i64 %.0.copyload.i.i.i.i25.i.i.i.i.i, 7
  %i.t = or disjoint i64 %i.s, %i.e
  store i64 %i.t, ptr %1, align 8
  br label %_ZN4llvm11iplist_implINS_12simple_ilistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEENS_12ilist_traitsIS2_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb1ELb1EvLb0EvEELb0ELb0EEERS8_SD_SD_.exit

_ZN4llvm11iplist_implINS_12simple_ilistINS_12MachineInstrEJNS_23ilist_sentinel_trackingILb1EEEEEENS_12ilist_traitsIS2_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb1ELb1EvLb0EvEELb0ELb0EEERS8_SD_SD_.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN4llvm17MachineBasicBlock31transferSuccessorsAndUpdatePHIsEPS0_(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef) local_unnamed_addr #4

declare i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520), ptr noundef, ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4llvm19MachineInstrBuilder6addRegENS_8RegisterENS_8RegStateEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !973
  %i.c = load ptr, ptr %0, align 8, !tbaa !974
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %5 = and i16 %2, 256
  %6 = and i16 %2, 512
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !970, !alias.scope !1613
  %i.e = and i16 %2, 24
  %.not = icmp eq i16 %i.e, 0
  %i.f = select i1 %.not, i32 0, i32 67108864
  %7 = zext nneg i16 %6 to i32
  %8 = shl nuw nsw i32 %7, 18
  %9 = zext nneg i16 %5 to i32
  %10 = shl nuw nsw i32 %9, 21
  %11 = and i16 %2, 38
  %12 = zext nneg i16 %11 to i32
  %13 = shl nuw nsw i32 %12, 23
  %14 = or disjoint i32 %13, %i.f
  %15 = and i16 %2, 192
  %16 = zext nneg i16 %15 to i32
  %17 = shl nuw i32 %16, 24
  %.masked11.masked.i = or disjoint i32 %14, %17
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %1, ptr %i.g, align 4, !tbaa !204, !alias.scope !1613
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = shl i32 %3, 8
  %i.j = and i32 %i.i, 1048320
  %.masked.i = or disjoint i32 %.masked11.masked.i, %10
  %i.k = or disjoint i32 %.masked.i, %8
  %i.l = or disjoint i32 %i.k, %i.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !alias.scope !1613
  store i32 %i.l, ptr %4, align 8, !alias.scope !1613
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(1065) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !963  ; 5 uses
  %.sroa.02.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !564
  %i.d = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.sroa.02.0.copyload.i, i1 noundef zeroext false) #31 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef %i.d) #31
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.a, ptr %i.h, align 8, !tbaa !965
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.i = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.j = or disjoint i64 %i.i, %i.f
  store i64 %i.j, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.d, ptr %i.k, align 8, !tbaa !965
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.n = or disjoint i64 %i.m, %i.l
  store i64 %i.n, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !976  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(1065) %i.c, ptr noundef nonnull %i.p) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !977  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.r, null
  br i1 %.not7.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(1065) %i.c, ptr noundef nonnull %i.r) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !978  ; 2 uses
  %.not8.i.i = icmp eq ptr %i.t, null
  br i1 %.not8.i.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(1065) %i.c, ptr noundef nonnull %i.t) #31
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.e, %bb.f
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %i.d, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm17PPCTargetLowering24EmitPartwordAtomicBinaryERNS_12MachineInstrEPNS_17MachineBasicBlockEjjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518496) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %15 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %16 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %17 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %18 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %19 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %20 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %21 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %22 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %23 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %24 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %25 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %26 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %27 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %28 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %29 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %30 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %31 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %32 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %33 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %34 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %35 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %36 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %37 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %38 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %39 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %40 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %41 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %42 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %43 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %44 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %45 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %46 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %47 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %48 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %49 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %50 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %51 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %52 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %53 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %54 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %55 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %56 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %57 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %58 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %59 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %60 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %61 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %62 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %63 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %64 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %65 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %66 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %67 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %68 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %69 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %70 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %71 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %72 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %73 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %74 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %75 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %76 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %77 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %78 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %79 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %80 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %81 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 518440 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89, !nonnull !46, !align !90 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(520296) %i.b) #31 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0215.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !564 ; 24 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !963  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !839  ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !924  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = load i64, ptr %i.n, align 8, !tbaa !204
  %i.p = icmp eq i64 %i.o, 1                      ; 6 uses
  %i.q = icmp eq i32 %4, 700                      ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL26signExtendOperandIfUnknownRN4llvm12MachineInstrEPNS_17MachineBasicBlockEjbPKNS_12PPCInstrInfoE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %2, i1 noundef zeroext %i.p, ptr noundef %i.f)
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !924
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = phi ptr [ %.pre, %bb.b ], [ %i.m, %bb.a ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 132
  %i.t = load i32, ptr %i.s, align 4, !tbaa !204  ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !89, !nonnull !46, !align !90 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 538
  %i.w = load i8, ptr %i.v, align 2, !tbaa !203, !range !45, !noundef !46 ; 2 uses
  %i.x = trunc nuw i8 %i.w to i1                  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 556
  %i.z = load i8, ptr %i.y, align 4, !tbaa !338, !range !45, !noundef !46
  %i.aa = trunc nuw i8 %i.z to i1                 ; 2 uses
  %i.ab = select i1 %i.x, i32 563, i32 10         ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !962 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !646 ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !204
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !204 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 68
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !204 ; 2 uses
  %i.am = tail call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.i, ptr noundef %i.ad, i64 undef, i8 0) #31 ; 22 uses
  %.not = icmp eq i32 %4, 0                       ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = tail call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %i.i, ptr noundef %i.ad, i64 undef, i8 0) #31
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_PPCISelLowering.cpp:bb.a
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL27DisableInnermostLoopAlign32, i32 noundef 0, i32 noundef 0) #31
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL27DisableInnermostLoopAlign32, i64 120), align 8, !tbaa !221
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL27DisableInnermostLoopAlign32, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL27DisableInnermostLoopAlign32, i64 128), align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL27DisableInnermostLoopAlign32, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL27DisableInnermostLoopAlign32, i64 144), align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL27DisableInnermostLoopAlign32, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL27DisableInnermostLoopAlign32, ptr nonnull align 1 dereferenceable(35) @.str.15, i64 34) #31
  store ptr @.str.16, ptr getelementptr inbounds nuw (i8, ptr @_ZL27DisableInnermostLoopAlign32, i64 32), align 8, !tbaa !1092
  store i64 52, ptr getelementptr inbounds nuw (i8, ptr @_ZL27DisableInnermostLoopAlign32, i64 40), align 8, !tbaa !573
  %i.u = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL27DisableInnermostLoopAlign32, i64 10), align 2
  %i.v = and i16 %i.u, -97
  %i.w = or disjoint i16 %i.v, 32
  store i16 %i.w, ptr getelementptr inbounds nuw (i8, ptr @_ZL27DisableInnermostLoopAlign32, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL27DisableInnermostLoopAlign32) #31
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL27DisableInnermostLoopAlign32, ptr nonnull @__dso_handle) #31 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL21UseAbsoluteJumpTables, i32 noundef 0, i32 noundef 0) #31
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21UseAbsoluteJumpTables, i64 120), align 8, !tbaa !221
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21UseAbsoluteJumpTables, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21UseAbsoluteJumpTables, i64 128), align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL21UseAbsoluteJumpTables, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21UseAbsoluteJumpTables, i64 144), align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL21UseAbsoluteJumpTables, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21UseAbsoluteJumpTables, ptr nonnull align 1 dereferenceable(28) @.str.18, i64 27) #31
  store ptr @.str.19, ptr getelementptr inbounds nuw (i8, ptr @_ZL21UseAbsoluteJumpTables, i64 32), align 8, !tbaa !1092
  store i64 31, ptr getelementptr inbounds nuw (i8, ptr @_ZL21UseAbsoluteJumpTables, i64 40), align 8, !tbaa !573
  %i.y = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL21UseAbsoluteJumpTables, i64 10), align 2
  %i.z = and i16 %i.y, -97
  %i.aa = or disjoint i16 %i.z, 32
  store i16 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_ZL21UseAbsoluteJumpTables, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21UseAbsoluteJumpTables) #31
  %i.ab = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL21UseAbsoluteJumpTables, ptr nonnull @__dso_handle) #31 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL21DisablePerfectShuffle, i32 noundef 0, i32 noundef 0) #31
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21DisablePerfectShuffle, i64 120), align 8, !tbaa !221
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21DisablePerfectShuffle, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21DisablePerfectShuffle, i64 128), align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL21DisablePerfectShuffle, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21DisablePerfectShuffle, i64 144), align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL21DisablePerfectShuffle, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21DisablePerfectShuffle, ptr nonnull align 1 dereferenceable(28) @.str.21, i64 27) #31
  store ptr @.str.22, ptr getelementptr inbounds nuw (i8, ptr @_ZL21DisablePerfectShuffle, i64 32), align 8, !tbaa !1092
  store i64 36, ptr getelementptr inbounds nuw (i8, ptr @_ZL21DisablePerfectShuffle, i64 40), align 8, !tbaa !573
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL21DisablePerfectShuffle, i64 120), align 8, !tbaa !221
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL21DisablePerfectShuffle, i64 137), align 1, !tbaa !1098
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL21DisablePerfectShuffle, i64 136), align 8, !tbaa !2819
  %i.ac = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL21DisablePerfectShuffle, i64 10), align 2
  %i.ad = and i16 %i.ac, -97
  %i.ae = or disjoint i16 %i.ad, 32
  store i16 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @_ZL21DisablePerfectShuffle, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21DisablePerfectShuffle) #31
  %i.af = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL21DisablePerfectShuffle, ptr nonnull @__dso_handle) #31 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @DisableAutoPairedVecSt, i32 noundef 0, i32 noundef 0) #31
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @DisableAutoPairedVecSt, i64 120), align 8, !tbaa !221
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @DisableAutoPairedVecSt, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @DisableAutoPairedVecSt, i64 128), align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @DisableAutoPairedVecSt, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @DisableAutoPairedVecSt, i64 144), align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @DisableAutoPairedVecSt, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @DisableAutoPairedVecSt, ptr nonnull align 1 dereferenceable(27) @.str.24, i64 26) #31
  store ptr @.str.25, ptr getelementptr inbounds nuw (i8, ptr @DisableAutoPairedVecSt, i64 32), align 8, !tbaa !1092
  store i64 59, ptr getelementptr inbounds nuw (i8, ptr @DisableAutoPairedVecSt, i64 40), align 8, !tbaa !573
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @DisableAutoPairedVecSt, i64 120), align 8, !tbaa !221
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @DisableAutoPairedVecSt, i64 137), align 1, !tbaa !1098
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @DisableAutoPairedVecSt, i64 136), align 8, !tbaa !2819
  %i.ag = load i16, ptr getelementptr inbounds nuw (i8, ptr @DisableAutoPairedVecSt, i64 10), align 2
  %i.ah = and i16 %i.ag, -97
  %i.ai = or disjoint i16 %i.ah, 32
  store i16 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @DisableAutoPairedVecSt, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @DisableAutoPairedVecSt) #31
  %i.aj = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @DisableAutoPairedVecSt, ptr nonnull @__dso_handle) #31 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL26PPCMinimumJumpTableEntries, i32 noundef 0, i32 noundef 0) #31
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL26PPCMinimumJumpTableEntries, i64 120), align 8, !tbaa !346
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL26PPCMinimumJumpTableEntries, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL26PPCMinimumJumpTableEntries, i64 128), align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL26PPCMinimumJumpTableEntries, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL26PPCMinimumJumpTableEntries, i64 144), align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL26PPCMinimumJumpTableEntries, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL26PPCMinimumJumpTableEntries, ptr nonnull align 1 dereferenceable(27) @.str.27, i64 26) #31
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @_ZL26PPCMinimumJumpTableEntries, i64 120), align 8, !tbaa !346
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL26PPCMinimumJumpTableEntries, i64 140), align 4, !tbaa !1099
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @_ZL26PPCMinimumJumpTableEntries, i64 136), align 8, !tbaa !2820
  %i.ak = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL26PPCMinimumJumpTableEntries, i64 10), align 2
  %i.al = and i16 %i.ak, -97
  %i.am = or disjoint i16 %i.al, 32
  store i16 %i.am, ptr getelementptr inbounds nuw (i8, ptr @_ZL26PPCMinimumJumpTableEntries, i64 10), align 2
  store ptr @.str.28, ptr getelementptr inbounds nuw (i8, ptr @_ZL26PPCMinimumJumpTableEntries, i64 32), align 8, !tbaa !1092
  store i64 56, ptr getelementptr inbounds nuw (i8, ptr @_ZL26PPCMinimumJumpTableEntries, i64 40), align 8, !tbaa !573
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL26PPCMinimumJumpTableEntries) #31
  %i.an = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL26PPCMinimumJumpTableEntries, ptr nonnull @__dso_handle) #31 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL21PPCMinimumBitTestCmps, i32 noundef 0, i32 noundef 0) #31
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PPCMinimumBitTestCmps, i64 120), align 8, !tbaa !346
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PPCMinimumBitTestCmps, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21PPCMinimumBitTestCmps, i64 128), align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL21PPCMinimumBitTestCmps, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL21PPCMinimumBitTestCmps, i64 144), align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL21PPCMinimumBitTestCmps, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21PPCMinimumBitTestCmps, ptr nonnull align 1 dereferenceable(22) @.str.30, i64 21) #31
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PPCMinimumBitTestCmps, i64 120), align 8, !tbaa !346
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PPCMinimumBitTestCmps, i64 140), align 4, !tbaa !1099
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PPCMinimumBitTestCmps, i64 136), align 8, !tbaa !2820
  %i.ao = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PPCMinimumBitTestCmps, i64 10), align 2
  %i.ap = and i16 %i.ao, -97
  %i.aq = or disjoint i16 %i.ap, 32
  store i16 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PPCMinimumBitTestCmps, i64 10), align 2
  store ptr @.str.31, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PPCMinimumBitTestCmps, i64 32), align 8, !tbaa !1092
  store i64 79, ptr getelementptr inbounds nuw (i8, ptr @_ZL21PPCMinimumBitTestCmps, i64 40), align 8, !tbaa !573
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL21PPCMinimumBitTestCmps) #31
  %i.ar = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL21PPCMinimumBitTestCmps, ptr nonnull @__dso_handle) #31 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL27PPCGatherAllAliasesMaxDepth, i32 noundef 0, i32 noundef 0) #31
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL27PPCGatherAllAliasesMaxDepth, i64 120), align 8, !tbaa !346
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL27PPCGatherAllAliasesMaxDepth, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL27PPCGatherAllAliasesMaxDepth, i64 128), align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL27PPCGatherAllAliasesMaxDepth, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL27PPCGatherAllAliasesMaxDepth, i64 144), align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL27PPCGatherAllAliasesMaxDepth, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL27PPCGatherAllAliasesMaxDepth, ptr nonnull align 1 dereferenceable(27) @.str.33, i64 26) #31
  store i32 18, ptr getelementptr inbounds nuw (i8, ptr @_ZL27PPCGatherAllAliasesMaxDepth, i64 120), align 8, !tbaa !346
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL27PPCGatherAllAliasesMaxDepth, i64 140), align 4, !tbaa !1099
  store i32 18, ptr getelementptr inbounds nuw (i8, ptr @_ZL27PPCGatherAllAliasesMaxDepth, i64 136), align 8, !tbaa !2820
  %i.as = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL27PPCGatherAllAliasesMaxDepth, i64 10), align 2
  %i.at = and i16 %i.as, -97
  %i.au = or disjoint i16 %i.at, 32
  store i16 %i.au, ptr getelementptr inbounds nuw (i8, ptr @_ZL27PPCGatherAllAliasesMaxDepth, i64 10), align 2
  store ptr @.str.34, ptr getelementptr inbounds nuw (i8, ptr @_ZL27PPCGatherAllAliasesMaxDepth, i64 32), align 8, !tbaa !1092
  store i64 56, ptr getelementptr inbounds nuw (i8, ptr @_ZL27PPCGatherAllAliasesMaxDepth, i64 40), align 8, !tbaa !573
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL27PPCGatherAllAliasesMaxDepth) #31
  %i.av = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL27PPCGatherAllAliasesMaxDepth, ptr nonnull @__dso_handle) #31 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL32PPCAIXTLSModelOptUseIEForLDLimit, i32 noundef 0, i32 noundef 0) #31
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL32PPCAIXTLSModelOptUseIEForLDLimit, i64 120), align 8, !tbaa !346
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL32PPCAIXTLSModelOptUseIEForLDLimit, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL32PPCAIXTLSModelOptUseIEForLDLimit, i64 128), align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL32PPCAIXTLSModelOptUseIEForLDLimit, align 8, !tbaa !38
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL32PPCAIXTLSModelOptUseIEForLDLimit, i64 144), align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL32PPCAIXTLSModelOptUseIEForLDLimit, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL32PPCAIXTLSModelOptUseIEForLDLimit, ptr nonnull align 1 dereferenceable(39) @.str.36, i64 38) #31
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL32PPCAIXTLSModelOptUseIEForLDLimit, i64 120), align 8, !tbaa !346
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL32PPCAIXTLSModelOptUseIEForLDLimit, i64 140), align 4, !tbaa !1099
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL32PPCAIXTLSModelOptUseIEForLDLimit, i64 136), align 8, !tbaa !2820
  %i.aw = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL32PPCAIXTLSModelOptUseIEForLDLimit, i64 10), align 2
  %i.ax = and i16 %i.aw, -97
  %i.ay = or disjoint i16 %i.ax, 32
  store i16 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @_ZL32PPCAIXTLSModelOptUseIEForLDLimit, i64 10), align 2
  store ptr @.str.37, ptr getelementptr inbounds nuw (i8, ptr @_ZL32PPCAIXTLSModelOptUseIEForLDLimit, i64 32), align 8, !tbaa !1092
  store i64 91, ptr getelementptr inbounds nuw (i8, ptr @_ZL32PPCAIXTLSModelOptUseIEForLDLimit, i64 40), align 8, !tbaa !573
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL32PPCAIXTLSModelOptUseIEForLDLimit) #31
  %i.az = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL32PPCAIXTLSModelOptUseIEForLDLimit, ptr nonnull @__dso_handle) #31 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.cttz.i8(i8, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v4i1(<4 x i1>, i1 immarg) #19

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind willreturn memory(read) }
attributes #34 = { builtin nounwind }
attributes #35 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!23, !24}
!llvm.ident = !{!25}
!llvm.errno.tbaa = !{!30}

!0 = distinct !{null}
!1 = distinct !{!1, !353}
!2 = distinct !{!2, !353}
!3 = distinct !{!3, !353}
!4 = distinct !{null, null}
!5 = distinct !{!5, !353}
!6 = distinct !{null}
!7 = distinct !{null, null}
!8 = distinct !{!8, !353}
!9 = distinct !{!9, !353}
!10 = distinct !{null}
!11 = distinct !{null, null}
!12 = distinct !{null}
!13 = distinct !{null, null}
!14 = distinct !{null}
!15 = distinct !{null, null}
!16 = distinct !{null}
!17 = distinct !{null, null, null}
!18 = distinct !{null}
!19 = distinct !{null, null}
!20 = distinct !{!20, !353}
!21 = distinct !{!21, !353}
!22 = distinct !{!22, !353}
!23 = !{i32 8, !"PIC Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 2}
!25 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!26 = !{!"Simple C++ TBAA"}
!27 = !{!"omnipotent char", !26, i64 0}
!28 = !{!"int", !27, i64 0}
!29 = !{!"__libc_errno", !28, i64 0}
!30 = !{!29, !28, i64 0}
!31 = !{!"any pointer", !27, i64 0}
!32 = !{!"p1 omnipotent char", !31, i64 0}
!33 = !{!"long", !27, i64 0}
!34 = !{!"_ZTSN4llvm9StringRefE", !32, i64 0, !33, i64 8}
!35 = !{!34, !32, i64 0}
!36 = !{!34, !33, i64 8}
!37 = !{!"vtable pointer", !26, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"_ZTSSt14_Function_base", !27, i64 0, !31, i64 16}
!40 = !{!39, !31, i64 16}
!41 = !{!"any p2 pointer", !31, i64 0}
!42 = !{!"bool", !27, i64 0}
!43 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !41, i64 0, !28, i64 8, !28, i64 12, !42, i64 16}
!44 = !{!43, !42, i64 16}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!43, !41, i64 0}
!48 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !31, i64 0, !28, i64 8, !28, i64 12}
!49 = !{!48, !31, i64 0}
!50 = !{!"p1 _ZTSN4llvm12PPCSubtargetE", !31, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"_ZTSSt14_Rb_tree_color", !27, i64 0}
!53 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !31, i64 0}
!54 = !{!"_ZTSSt18_Rb_tree_node_base", !52, i64 0, !53, i64 8, !53, i64 16, !53, i64 24}
!55 = !{!"_ZTSSt15_Rb_tree_header", !54, i64 0, !33, i64 32}
!56 = !{!55, !53, i64 8}
!57 = !{!55, !53, i64 16}
!58 = !{!55, !33, i64 32}
!59 = !{!"p1 _ZTSN4llvm13TargetMachineE", !31, i64 0}
!60 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjjEE", !31, i64 0}
!61 = !{!"p1 int", !31, i64 0}
!62 = !{!"_ZTSN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEE", !60, i64 0, !61, i64 8, !28, i64 16, !28, i64 20}
!63 = !{!"_ZTSN4llvm18TargetLoweringBase14BooleanContentE", !27, i64 0}
!64 = !{!"_ZTSN4llvm5Sched10PreferenceE", !27, i64 0}
!65 = !{!"_ZTSN4llvm5AlignE", !27, i64 0}
!66 = !{!"_ZTSN4llvm8RegisterE", !28, i64 0}
!67 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionEEE", !31, i64 0}
!68 = !{!"_ZTSN4llvm8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES3_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEE", !67, i64 0, !61, i64 8, !28, i64 16, !28, i64 20}
!69 = !{!"_ZTSN4llvm18TargetLoweringBase19ValueTypeActionImplE", !27, i64 0}
!70 = !{!"_ZTSSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEE"}
!71 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEE", !70, i64 0}
!72 = !{!"_ZTSNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !71, i64 0, !55, i64 8}
!73 = !{!"_ZTSSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE", !72, i64 0}
!74 = !{!"_ZTSSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEE", !73, i64 0}
!75 = !{!"_ZTSSt5arrayImLm47EE", !27, i64 0}
!76 = !{!"_ZTSN4llvm6BitsetILj3008EEE", !75, i64 0}
!77 = !{!"_ZTSN4llvm5RTLIB17LibcallImplBitsetE", !76, i64 0}
!78 = !{!"_ZTSN4llvm5RTLIB19RuntimeLibcallsInfoE", !77, i64 0, !27, i64 376}
!79 = !{!"p1 _ZTSN4llvm5RTLIB19RuntimeLibcallsInfoE", !31, i64 0}
!80 = !{!"_ZTSN4llvm19LibcallLoweringInfoE", !79, i64 0, !27, i64 8}
!81 = !{!"_ZTSN4llvm18TargetLoweringBaseE", !59, i64 8, !42, i64 16, !62, i64 24, !42, i64 48, !63, i64 52, !63, i64 56, !63, i64 60, !64, i64 64, !65, i64 65, !65, i64 66, !65, i64 67, !65, i64 68, !28, i64 72, !28, i64 76, !28, i64 80, !28, i64 84, !28, i64 88, !28, i64 92, !28, i64 96, !42, i64 100, !66, i64 104, !27, i64 112, !27, i64 2224, !27, i64 2752, !27, i64 3280, !27, i64 5392, !27, i64 5656, !27, i64 6184, !27, i64 147952, !27, i64 287344, !27, i64 426736, !27, i64 496432, !27, i64 499072, !68, i64 502240, !69, i64 502264, !27, i64 502528, !74, i64 502600, !78, i64 502648, !80, i64 515056, !28, i64 518392, !28, i64 518396, !28, i64 518400, !28, i64 518404, !28, i64 518408, !28, i64 518412, !28, i64 518416, !28, i64 518420, !28, i64 518424, !28, i64 518428, !42, i64 518432, !42, i64 518433, !42, i64 518434}
!82 = !{!"_ZTSN4llvm14TargetLoweringE", !81, i64 0}
!83 = !{!"_ZTSSt4lessIN4llvm3PPC8AddrModeEE"}
!84 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4llvm3PPC8AddrModeEEE", !83, i64 0}
!85 = !{!"_ZTSNSt8_Rb_treeIN4llvm3PPC8AddrModeESt4pairIKS2_NS0_11SmallVectorIjLj16EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !84, i64 0, !55, i64 8}
!86 = !{!"_ZTSSt8_Rb_treeIN4llvm3PPC8AddrModeESt4pairIKS2_NS0_11SmallVectorIjLj16EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE", !85, i64 0}
!87 = !{!"_ZTSSt3mapIN4llvm3PPC8AddrModeENS0_11SmallVectorIjLj16EEESt4lessIS2_ESaISt4pairIKS2_S4_EEE", !86, i64 0}
!88 = !{!"_ZTSN4llvm17PPCTargetLoweringE", !82, i64 0, !50, i64 518440, !87, i64 518448}
!89 = !{!88, !50, i64 518440}
!90 = !{i64 8}
!91 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !32, i64 0}
!92 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !91, i64 0, !33, i64 8, !27, i64 16}
!93 = !{!"_ZTSN4llvm6Triple8ArchTypeE", !27, i64 0}
!94 = !{!"_ZTSN4llvm6Triple11SubArchTypeE", !27, i64 0}
!95 = !{!"_ZTSN4llvm6Triple10VendorTypeE", !27, i64 0}
!96 = !{!"_ZTSN4llvm6Triple6OSTypeE", !27, i64 0}
!97 = !{!"_ZTSN4llvm6Triple15EnvironmentTypeE", !27, i64 0}
!98 = !{!"_ZTSN4llvm6Triple16ObjectFormatTypeE", !27, i64 0}
!99 = !{!"_ZTSN4llvm6TripleE", !92, i64 0, !93, i64 32, !94, i64 36, !95, i64 40, !96, i64 44, !97, i64 48, !98, i64 52}
!100 = !{!"_ZTSN4llvm11StringTableE", !34, i64 0}
!101 = !{!"p1 _ZTSN4llvm18SubtargetFeatureKVE", !31, i64 0}
!102 = !{!"_ZTSN4llvm8ArrayRefINS_18SubtargetFeatureKVEEE", !101, i64 0, !33, i64 8}
!103 = !{!"p1 _ZTSN4llvm18SubtargetSubTypeKVE", !31, i64 0}
!104 = !{!"_ZTSN4llvm8ArrayRefINS_18SubtargetSubTypeKVEEE", !103, i64 0, !33, i64 8}
!105 = !{!"p1 _ZTSN4llvm12MCSchedModelE", !31, i64 0}
!106 = !{!"p1 _ZTSN4llvm19MCWriteProcResEntryE", !31, i64 0}
!107 = !{!"p1 _ZTSN4llvm19MCWriteLatencyEntryE", !31, i64 0}
!108 = !{!"p1 _ZTSN4llvm18MCReadAdvanceEntryE", !31, i64 0}
!109 = !{!"p1 _ZTSN4llvm10InstrStageE", !31, i64 0}
!110 = !{!"_ZTSSt5arrayImLm6EE", !27, i64 0}
!111 = !{!"_ZTSN4llvm13FeatureBitsetE", !110, i64 0}
!112 = !{!"_ZTSN4llvm15MCSubtargetInfoE", !99, i64 8, !92, i64 64, !92, i64 96, !100, i64 128, !102, i64 144, !104, i64 160, !105, i64 176, !106, i64 184, !107, i64 192, !108, i64 200, !105, i64 208, !109, i64 216, !61, i64 224, !61, i64 232, !111, i64 240, !92, i64 288}
!113 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjbEE", !31, i64 0}
!114 = !{!"_ZTSN4llvm8DenseMapIjbNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjbEEEE", !113, i64 0, !61, i64 8, !28, i64 16, !28, i64 20}
!115 = !{!"_ZTSN4llvm19TargetSubtargetInfoE", !112, i64 0, !114, i64 320}
!116 = !{!"_ZTSN4llvm19PPCGenSubtargetInfoE", !115, i64 0}
!117 = !{!"p1 _ZTSN4llvm18MCProcResourceDescE", !31, i64 0}
!118 = !{!"p1 _ZTSN4llvm16MCSchedClassDescE", !31, i64 0}
!119 = !{!"p1 _ZTSN4llvm11StringTableE", !31, i64 0}
!120 = !{!"p1 _ZTSN4llvm14InstrItineraryE", !31, i64 0}
!121 = !{!"p1 _ZTSN4llvm20MCExtraProcessorInfoE", !31, i64 0}
!122 = !{!"_ZTSN4llvm12MCSchedModelE", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !42, i64 24, !42, i64 25, !42, i64 26, !28, i64 28, !117, i64 32, !118, i64 40, !28, i64 48, !28, i64 52, !119, i64 56, !120, i64 64, !121, i64 72}
!123 = !{!"_ZTSN4llvm18InstrItineraryDataE", !122, i64 0, !109, i64 80, !61, i64 88, !61, i64 96, !120, i64 104}
!124 = !{!"_ZTSN4llvm12PPCSubtarget11POPCNTDKindE", !27, i64 0}
!125 = !{!"p1 _ZTSN4llvm16PPCTargetMachineE", !31, i64 0}
!126 = !{!"_ZTSN4llvm19TargetFrameLowering14StackDirectionE", !27, i64 0}
!127 = !{!"_ZTSN4llvm19TargetFrameLoweringE", !126, i64 8, !65, i64 12, !65, i64 13, !28, i64 16, !42, i64 20}
!128 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjSt4pairINS_8RegisterES3_EEE", !31, i64 0}
!129 = !{!"_ZTSN4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEE", !128, i64 0, !61, i64 8, !28, i64 16, !28, i64 20}
!130 = !{!"_ZTSN4llvm16PPCFrameLoweringE", !127, i64 0, !50, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !28, i64 56, !33, i64 64, !33, i64 72, !129, i64 80}
!131 = !{!"p1 _ZTSN4llvm11MCInstrDescE", !31, i64 0}
!132 = !{!"p1 short", !31, i64 0}
!133 = !{!"short", !27, i64 0}
!134 = !{!"_ZTSN4llvm11MCInstrInfoE", !131, i64 0, !61, i64 8, !32, i64 16, !32, i64 24, !31, i64 32, !28, i64 40, !132, i64 48, !133, i64 56}
!135 = !{!"p1 _ZTSN4llvm18TargetRegisterInfoE", !31, i64 0}
!136 = !{!"p1 _ZTSN4llvm12MIRFormatterE", !31, i64 0}
!137 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm12MIRFormatterELb0EE", !136, i64 0}
!138 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm12MIRFormatterESt14default_deleteIS1_EEE", !137, i64 0}
!139 = !{!"_ZTSSt5tupleIJPN4llvm12MIRFormatterESt14default_deleteIS1_EEE", !138, i64 0}
!140 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm12MIRFormatterESt14default_deleteIS1_EE", !139, i64 0}
!141 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm12MIRFormatterESt14default_deleteIS1_ELb1ELb1EE", !140, i64 0}
!142 = !{!"_ZTSSt10unique_ptrIN4llvm12MIRFormatterESt14default_deleteIS1_EE", !141, i64 0}
!143 = !{!"_ZTSN4llvm15TargetInstrInfoE", !134, i64 8, !135, i64 72, !132, i64 80, !142, i64 88, !28, i64 96, !28, i64 100, !28, i64 104, !28, i64 108}
!144 = !{!"_ZTSN4llvm15PPCGenInstrInfoE", !143, i64 0}
!145 = !{!"p1 _ZTSN4llvm14MCRegisterDescE", !31, i64 0}
!146 = !{!"_ZTSN4llvm10MCRegisterE", !28, i64 0}
!147 = !{!"p1 _ZTSN4llvm15MCRegisterClassE", !31, i64 0}
!148 = !{!"p1 _ZTSN4llvm11LaneBitmaskE", !31, i64 0}
!149 = !{!"p1 _ZTSN4llvm14MCRegisterInfo16DwarfLLVMRegPairE", !31, i64 0}
!150 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_10MCRegisterEiEE", !31, i64 0}
!151 = !{!"_ZTSN4llvm8DenseMapINS_10MCRegisterEiNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_iEEEE", !150, i64 0, !61, i64 8, !28, i64 16, !28, i64 20}
!152 = !{!"p1 _ZTSSt6vectorItSaItEE", !31, i64 0}
!153 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE17_Vector_impl_dataE", !152, i64 0, !152, i64 8, !152, i64 16}
!154 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE12_Vector_implE", !153, i64 0}
!155 = !{!"_ZTSSt12_Vector_baseISt6vectorItSaItEESaIS2_EE", !154, i64 0}
!156 = !{!"_ZTSSt6vectorIS_ItSaItEESaIS1_EE", !155, i64 0}
!157 = !{!"_ZTSN4llvm14MCRegisterInfoE", !145, i64 8, !28, i64 16, !146, i64 20, !146, i64 24, !147, i64 32, !28, i64 40, !28, i64 44, !132, i64 48, !132, i64 56, !148, i64 64, !32, i64 72, !32, i64 80, !132, i64 88, !28, i64 96, !132, i64 104, !61, i64 112, !28, i64 120, !28, i64 124, !28, i64 128, !28, i64 132, !149, i64 136, !149, i64 144, !149, i64 152, !149, i64 160, !151, i64 168, !151, i64 192, !156, i64 216}
!158 = !{!"p1 _ZTSN4llvm22TargetRegisterInfoDescE", !31, i64 0}
end_hunk_1
