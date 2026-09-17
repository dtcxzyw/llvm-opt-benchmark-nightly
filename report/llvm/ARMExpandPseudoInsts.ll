Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMExpandPseudoInsts?download=true
inline.NumInlined: 3296
inline.NumDeleted: 824
loop-unroll.NumCompletelyUnrolled: 101
loop-unroll.NumUnrolled: 101
begin_hunk_0_@_ZN12_GLOBAL__N_115ARMExpandPseudo17ExpandCMP_SWAP_64ERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERS6_:_ZN4llvm7BuildMIEPNS_17MachineBasicBlockERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(1065) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !191
  %i.a = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.sroa.0.0.copyload, i1 noundef zeroext false) #20 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !376  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(1065) %0, ptr noundef nonnull %i.c) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !377  ; 2 uses
  %.not7.i = icmp eq ptr %i.e, null
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(1065) %0, ptr noundef nonnull %i.e) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !378  ; 2 uses
  %.not8.i = icmp eq ptr %i.g, null
  br i1 %.not8.i, label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(1065) %0, ptr noundef nonnull %i.g) #20
  br label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit

_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit: ; preds = %bb.e, %bb.f
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.a, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15MIBundleBuilder6appendEPNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2023, !nonnull !19, !align !150
  %i.c = tail call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %i.b, ptr %.sroa.0.0.copyload.i, ptr noundef %1) #20 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !367
  %i.f = icmp eq ptr %.sroa.0.0.copyload.i, %i.e
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !367
  %i.h = icmp eq ptr %.sroa.0.0.copyload.i, %i.g  ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm12MachineInstr14bundleWithSuccEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %1, ptr %i.d, align 8
  br label %_ZN4llvm15MIBundleBuilder6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_.exit

bb.e:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm12MachineInstr14bundleWithPredEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #20
  br label %_ZN4llvm15MIBundleBuilder6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !186
  %i.k = or i32 %i.j, 12
  store i32 %i.k, ptr %i.i, align 4, !tbaa !186
  br label %_ZN4llvm15MIBundleBuilder6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_.exit

_ZN4llvm15MIBundleBuilder6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_.exit: ; preds = %bb.d, %bb.f, %bb.g
  ret ptr %0
}

declare void @_ZN4llvm14finalizeBundleERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEES7_(ptr noundef nonnull align 8 dereferenceable(360), ptr, ptr) local_unnamed_addr #6

declare noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32), ptr, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare noundef i32 @_ZNK4llvm13AttributeList14getUWTableKindEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef) local_unnamed_addr #6

declare noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(360) ptr @_ZN12_GLOBAL__N_115ARMExpandPseudo18CMSEClearFPRegsV81ERN4llvm17MachineBasicBlockENS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEERKNS1_9BitVectorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull returned align 8 dereferenceable(360) %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"struct.std::array.231", align 8   ; 7 uses
  %9 = alloca %"struct.std::array.231", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !385  ; 2 uses
  %.not74 = icmp eq i32 %i.b, 0
  br i1 %.not74, label %._crit_edge80.thread, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.b

._crit_edge80:                                    ; preds = %bb.d
  %i.p = icmp slt i32 %.2, %.03075
  br i1 %i.p, label %.lr.ph84, label %._crit_edge80.thread

bb.b:                                             ; preds = %.lr.ph79, %bb.d
  %indvars.iv = phi i32 [ -1, %.lr.ph79 ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.077 = phi i32 [ -1, %.lr.ph79 ], [ %.2, %bb.d ] ; 3 uses
  %.03075 = phi i32 [ 0, %.lr.ph79 ], [ %i.ar, %bb.d ] ; 7 uses
  %i.q = and i32 %.03075, 63
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = lshr i32 %.03075, 6
  %i.u = zext nneg i32 %i.t to i64
  %i.v = load ptr, ptr %3, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load i64, ptr %i.w, align 8, !tbaa !27
  %i.y = and i64 %i.x, %i.s
  %.not88 = icmp eq i64 %i.y, 0
  br i1 %.not88, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = icmp slt i32 %.077, %indvars.iv
  br i1 %i.z, label %.lr.ph.preheader, label %bb.d

.lr.ph.preheader:                                 ; preds = %bb.c
  %.sroa.02.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !191
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !159
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !195
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -112512
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !361 ; 5 uses
  %i.af = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr %.sroa.02.0.copyload, i1 noundef zeroext false) #20 ; 10 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.af) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.ag = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %2, ptr %i.ai, align 8, !tbaa !173
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.af, align 8
  %i.aj = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.ak = or disjoint i64 %i.aj, %i.ag
  store i64 %i.ak, ptr %i.af, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.af, ptr %i.al, align 8, !tbaa !173
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.am = ptrtoint ptr %i.af to i64
  %i.an = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.ao = or disjoint i64 %i.an, %i.am
  store i64 %i.ao, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store i32 1, ptr %8, align 8, !alias.scope !2043
  store ptr null, ptr %i.g, align 8, !tbaa !198, !alias.scope !2043
  store i64 14, ptr %i.h, align 8, !tbaa !190, !alias.scope !2043
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false), !alias.scope !2044
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.af, ptr noundef nonnull align 8 dereferenceable(1065) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.af, ptr noundef nonnull align 8 dereferenceable(1065) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.173 = phi i32 [ %i.ap, %.lr.ph ], [ %.077, %.lr.ph.preheader ] ; 2 uses
  %i.ap = add i32 %.173, 1                        ; 2 uses
  %i.aq = add i32 %.173, 88
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr null, ptr %i.j, align 8, !tbaa !198, !alias.scope !2045
  store i32 %i.aq, ptr %i.k, align 4, !tbaa !190, !alias.scope !2045
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !2045
  store i32 16777216, ptr %7, align 8, !alias.scope !2045
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.af, ptr noundef nonnull align 8 dereferenceable(1065) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %exitcond.not = icmp eq i32 %i.ap, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2030

._crit_edge:                                      ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr null, ptr %i.m, align 8, !tbaa !198, !alias.scope !2046
  store i32 19, ptr %i.n, align 4, !tbaa !190, !alias.scope !2046
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !alias.scope !2046
  store i32 16777216, ptr %6, align 8, !alias.scope !2046
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.af, ptr noundef nonnull align 8 dereferenceable(1065) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %.2 = phi i32 [ %.077, %bb.b ], [ %.03075, %._crit_edge ], [ %.03075, %bb.c ] ; 3 uses
  %i.ar = add nuw nsw i32 %.03075, 1              ; 2 uses
  %.not = icmp eq i32 %i.ar, %i.b
  %indvars.iv.next = add nsw i32 %indvars.iv, 1
  br i1 %.not, label %._crit_edge80, label %bb.b, !llvm.loop !2033

.lr.ph84:                                         ; preds = %._crit_edge80
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.0.0.copyload = load ptr, ptr %i.as, align 8, !tbaa !191
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !159
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !195
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -112512
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !361 ; 5 uses
  %i.ba = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr %.sroa.0.0.copyload, i1 noundef zeroext false) #20 ; 10 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef %i.ba) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i37 = load i64, ptr %2, align 8
  %i.bc = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i37, -8 ; 2 uses
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %2, ptr %i.be, align 8, !tbaa !173
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i38 = load i64, ptr %i.ba, align 8
  %i.bf = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i38, 7
  %i.bg = or disjoint i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.ba, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.ba, ptr %i.bh, align 8, !tbaa !173
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i39 = load i64, ptr %2, align 8
  %i.bi = ptrtoint ptr %i.ba to i64
  %i.bj = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i39, 7
  %i.bk = or disjoint i64 %i.bj, %i.bi
  store i64 %i.bk, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store i32 1, ptr %9, align 8, !alias.scope !2047
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.bl, align 8, !tbaa !198, !alias.scope !2047
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 14, ptr %i.bm, align 8, !tbaa !190, !alias.scope !2047
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i8 0, i64 32, i1 false), !alias.scope !2048
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ba, ptr noundef nonnull align 8 dereferenceable(1065) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ba, ptr noundef nonnull align 8 dereferenceable(1065) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.bn) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph84, %bb.e
  %.383 = phi i32 [ %.2, %.lr.ph84 ], [ %i.br, %bb.e ] ; 2 uses
  %i.br = add i32 %.383, 1                        ; 2 uses
  %i.bs = add i32 %.383, 88
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr null, ptr %i.bo, align 8, !tbaa !198, !alias.scope !2049
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !190, !alias.scope !2049
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false), !alias.scope !2049
  store i32 16777216, ptr %5, align 8, !alias.scope !2049
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ba, ptr noundef nonnull align 8 dereferenceable(1065) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %exitcond86.not = icmp eq i32 %i.br, %.03075
  br i1 %exitcond86.not, label %._crit_edge85, label %bb.e, !llvm.loop !2040

._crit_edge85:                                    ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.bt, align 8, !tbaa !198, !alias.scope !2050
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 19, ptr %i.bu, align 4, !tbaa !190, !alias.scope !2050
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false), !alias.scope !2050
  store i32 16777216, ptr %4, align 8, !alias.scope !2050
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ba, ptr noundef nonnull align 8 dereferenceable(1065) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %._crit_edge80.thread

._crit_edge80.thread:                             ; preds = %bb.a, %._crit_edge85, %._crit_edge80
  ret ptr %1
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef, i64, i8) local_unnamed_addr #6

declare void @_ZN4llvm17MachineBasicBlock18transferSuccessorsEPS0_(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef, i32) local_unnamed_addr #6

declare void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE21transferNodesFromListERS2_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb0EEES8_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !363
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #20
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !363
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !363
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !363
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm25array_pod_sort_comparatorIjEEiPKvS2_(ptr noundef %0, ptr noundef %1) #1 comdat {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !368
  %i.b = load i32, ptr %1, align 4, !tbaa !368
  %.0 = tail call i32 @llvm.ucmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZN4llvm22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #15

declare noundef i32 @_ZNK4llvm12MachineInstr22getNumExplicitOperandsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr15copyImplicitOpsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr12cloneMemRefsERNS_15MachineFunctionERKS0_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

declare noundef i32 @_ZN4llvm17getInstrPredicateERKNS_12MachineInstrERNS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #16

declare i32 @_ZNK4llvm14MCRegisterInfo19getMatchingSuperRegENS_10MCRegisterEjPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(240), i32, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm20computeAndAddLiveInsERNS_12LivePhysRegsERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #6

declare void @_ZN4llvm17MachineBasicBlock12clearLiveInsEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL19addExclusiveRegPairRN4llvm19MachineInstrBuilderERNS_14MachineOperandENS_8RegStateEbPKNS_18TargetRegisterInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i16 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #3 {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !190  ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %4, i32 %i.b, i32 noundef 9) #20
  %i.d = load i32, ptr %i.a, align 4, !tbaa !190
  %i.e = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %4, i32 %i.d, i32 noundef 10) #20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201
  %i.h = load ptr, ptr %0, align 8, !tbaa !202
end_hunk_0
