Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AVRISelLowering?download=true
inline.NumInlined: 3329
inline.NumDeleted: 1131
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK4llvm17AVRTargetLowering11insertShiftERNS_12MachineInstrEPNS_17MachineBasicBlockEb:bb.a
  store ptr null, ptr %i.ef, align 8, !tbaa !656, !alias.scope !689
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.s, ptr %i.eg, align 8, !tbaa !131, !alias.scope !689
  store i32 4, ptr %10, align 8, !alias.scope !689
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dw, ptr noundef nonnull align 8 dereferenceable(1065) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  store ptr %.sroa.081.0.copyload, ptr %24, align 8, !tbaa !149
  %i.eh = getelementptr inbounds nuw i8, ptr %24, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i8 0, i64 24, i1 false)
  %i.ei = load ptr, ptr %i.by, align 8, !tbaa !655
  %i.ej = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.t, ptr nonnull %i.de, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %i.ei, i32 %i.bx) ; 2 uses
  %i.ek = extractvalue { ptr, ptr } %i.ej, 0      ; 4 uses
  %i.el = extractvalue { ptr, ptr } %i.ej, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.em, align 8, !tbaa !656, !alias.scope !692
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.bv, ptr %i.en, align 4, !tbaa !131, !alias.scope !692
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i8 0, i64 16, i1 false), !alias.scope !692
  store i32 0, ptr %9, align 8, !alias.scope !692
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.el, ptr noundef nonnull align 8 dereferenceable(1065) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ep, align 8, !tbaa !656, !alias.scope !695
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %2, ptr %i.eq, align 8, !tbaa !131, !alias.scope !695
  store i32 4, ptr %8, align 8, !alias.scope !695
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.el, ptr noundef nonnull align 8 dereferenceable(1065) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.er, align 8, !tbaa !656, !alias.scope !698
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.bp, ptr %i.es, align 4, !tbaa !131, !alias.scope !698
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i8 0, i64 16, i1 false), !alias.scope !698
  store i32 0, ptr %7, align 8, !alias.scope !698
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.el, ptr noundef nonnull align 8 dereferenceable(1065) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.eu, align 8, !tbaa !656, !alias.scope !701
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.s, ptr %i.ev, align 8, !tbaa !131, !alias.scope !701
  store i32 4, ptr %6, align 8, !alias.scope !701
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.el, ptr noundef nonnull align 8 dereferenceable(1065) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  store ptr %.sroa.081.0.copyload, ptr %25, align 8, !tbaa !149
  %i.ew = getelementptr inbounds nuw i8, ptr %25, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, i8 0, i64 24, i1 false)
  %i.ex = load ptr, ptr %i.by, align 8, !tbaa !655
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -14528
  %i.ez = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.t, ptr nonnull %i.de, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %i.ey, i32 %i.bn) ; 2 uses
  %i.fa = extractvalue { ptr, ptr } %i.ez, 0
  %i.fb = extractvalue { ptr, ptr } %i.ez, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.fc, align 8, !tbaa !656, !alias.scope !704
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.bm, ptr %i.fd, align 4, !tbaa !131, !alias.scope !704
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i8 0, i64 16, i1 false), !alias.scope !704
  store i32 0, ptr %5, align 8, !alias.scope !704
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fb, ptr noundef nonnull align 8 dereferenceable(1065) %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  %i.ff = load ptr, ptr %i.by, align 8, !tbaa !655
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -14176
  %i.fh = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !592 ; 2 uses
  %i.fj = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) %i.fg, ptr %.sroa.081.0.copyload, i1 noundef zeroext false) #21 ; 7 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noundef %i.fj) #21
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i130 = load i64, ptr %i.de, align 8
  %i.fl = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i130, -8 ; 2 uses
  %i.fm = inttoptr i64 %i.fl to ptr
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %i.de, ptr %i.fn, align 8, !tbaa !651
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i131 = load i64, ptr %i.fj, align 8
  %i.fo = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i131, 7
  %i.fp = or disjoint i64 %i.fo, %i.fl
  store i64 %i.fp, ptr %i.fj, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.fj, ptr %i.fq, align 8, !tbaa !651
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i132 = load i64, ptr %i.de, align 8
  %i.fr = ptrtoint ptr %i.fj to i64
  %i.fs = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i132, 7
  %i.ft = or disjoint i64 %i.fs, %i.fr
  store i64 %i.ft, ptr %i.de, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.fu, align 8, !tbaa !656, !alias.scope !707
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.s, ptr %i.fv, align 8, !tbaa !131, !alias.scope !707
  store i32 4, ptr %4, align 8, !alias.scope !707
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fj, ptr noundef nonnull align 8 dereferenceable(1065) %i.fi, ptr noundef nonnull align 8 dereferenceable(32) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.fw = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #21 ; 0 uses
  ret ptr %i.u
}

declare noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef, i64, i8) local_unnamed_addr #1

declare void @_ZN4llvm17MachineBasicBlock31transferSuccessorsAndUpdatePHIsEPS0_(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef) local_unnamed_addr #1

declare void @_ZN4llvm17MachineBasicBlock12addSuccessorEPS0_NS_17BranchProbabilityE(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef, i32) local_unnamed_addr #1

declare i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520), ptr noundef, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9StringRefC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  store ptr %1, ptr %0, align 8, !tbaa !710
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.b, align 8, !tbaa !711
  ret void
}

declare ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm17AVRTargetLowering15insertWideShiftERNS_12MachineInstrEPNS_17MachineBasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518448) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef returned %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %15 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %16 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %17 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %18 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %19 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %20 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %21 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %22 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
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
  %35 = alloca %"class.llvm::MachineOperand", align 8 ; 10 uses
  %36 = alloca %"class.llvm::MachineOperand", align 8 ; 11 uses
  %37 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %38 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %39 = alloca %"class.llvm::MachineOperand", align 8 ; 11 uses
  %40 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %41 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %42 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %43 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %44 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %45 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %46 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %47 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %48 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %49 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %50 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %51 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %52 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %53 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %54 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %55 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %56 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %57 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %58 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %59 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %60 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %61 = alloca %"class.llvm::MIMetadata", align 8 ; 9 uses
  %62 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %63 = alloca %"class.llvm::MIMetadata", align 8 ; 9 uses
  %64 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %65 = alloca %"struct.std::array.471", align 8  ; 49 uses
  %66 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %67 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %68 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %69 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54, !nonnull !57, !align !58 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(519320) %i.b) #21 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 22 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !654  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.k = load i64, ptr %i.j, align 8, !tbaa !131  ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !640
  switch i32 %i.m, label %bb.d [
    i32 342, label %bb.c
    i32 392, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.not = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ false, %bb.b ] ; 8 uses
  %i.n = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ true, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #21
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 100
  %i.p = load i32, ptr %i.o, align 4, !tbaa !131  ; 2 uses
  store i32 %i.p, ptr %65, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %65, i64 4 ; 8 uses
  store i32 1, ptr %i.q, align 4, !tbaa !712
  %i.r = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 9 uses
  store i32 %i.p, ptr %i.r, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %65, i64 12 ; 3 uses
  store i32 2, ptr %i.s, align 4, !tbaa !712
  %i.t = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !131  ; 2 uses
  store i32 %i.v, ptr %i.t, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %65, i64 20 ; 3 uses
  store i32 1, ptr %i.w, align 4, !tbaa !712
  %i.x = getelementptr inbounds nuw i8, ptr %65, i64 24 ; 9 uses
  store i32 %i.v, ptr %i.x, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %65, i64 28 ; 3 uses
  store i32 2, ptr %i.y, align 4, !tbaa !712
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !592
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !714, !nonnull !57, !align !58 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(344) %i.ac) #21, !inline_history !715
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !592 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !714, !nonnull !57, !align !58
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !639 ; 17 uses
  %i.am = tail call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.al, ptr noundef nonnull @_ZN4llvm25AVRMCRegisterClassStorageE, ptr nonnull @.str.1, i64 0) #21 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #21
  %.sroa.0133.0.copyload.i = load ptr, ptr %i.g, align 8, !tbaa !149
  store ptr %.sroa.0133.0.copyload.i, ptr %53, align 8, !tbaa !149
  %i.an = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 18 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !655
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -640
  %i.ar = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i32 %i.am) ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0
  %i.at = extractvalue { ptr, ptr } %i.ar, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 383
  %i.av = load i8, ptr %i.au, align 1, !tbaa !358, !range !130, !noundef !57
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = select i1 %i.aw, i32 22, i32 6
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #21
  %i.ay = getelementptr inbounds nuw i8, ptr %52, i64 8
  store ptr null, ptr %i.ay, align 8, !tbaa !656, !alias.scope !716
  %i.az = getelementptr inbounds nuw i8, ptr %52, i64 4
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !131, !alias.scope !716
  %i.ba = getelementptr inbounds nuw i8, ptr %52, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false), !alias.scope !716
  store i32 0, ptr %52, align 8, !alias.scope !716
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull align 8 dereferenceable(1065) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %52) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #21
  %i.bb = srem i64 %i.k, 8                        ; 3 uses
  %i.bc = sdiv i64 %i.k, 8                        ; 2 uses
  %i.bd = icmp sgt i64 %i.bb, 5                   ; 2 uses
  br i1 %.not, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  br i1 %i.bd, label %bb.f, label %bb.al

bb.f:                                             ; preds = %bb.e
  %i.be = sub nsw i64 4, %i.bc                    ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %65, i64 %i.bc ; 6 uses
  call fastcc void @_ZN4llvmL20insertMultibyteShiftERNS_12MachineInstrEPNS_17MachineBasicBlockENS_15MutableArrayRefISt4pairINS_8RegisterEiEEENS_3ISD8NodeTypeEl.specialized.2(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %2, ptr nonnull %i.bf, i64 %i.be)
  %i.bg = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.al, ptr noundef nonnull @_ZN4llvm25AVRMCRegisterClassStorageE, ptr nonnull @.str.1, i64 0) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #21
  %.sroa.0127.0.copyload.i = load ptr, ptr %i.g, align 8, !tbaa !149
  store ptr %.sroa.0127.0.copyload.i, ptr %54, align 8, !tbaa !149
  %i.bh = getelementptr inbounds nuw i8, ptr %54, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  %i.bi = load ptr, ptr %i.ao, align 8, !tbaa !655
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -16000
  %i.bk = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i32 %i.bg) ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  %i.bn = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr null, ptr %i.bn, align 8, !tbaa !656, !alias.scope !719
  %i.bo = getelementptr inbounds nuw i8, ptr %51, i64 4
  store i32 %i.am, ptr %i.bo, align 4, !tbaa !131, !alias.scope !719
  %i.bp = getelementptr inbounds nuw i8, ptr %51, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false), !alias.scope !719
  store i32 0, ptr %51, align 8, !alias.scope !719
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bm, ptr noundef nonnull align 8 dereferenceable(1065) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %51) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #21
  %i.bq = icmp eq i64 %i.bb, 6
  br i1 %i.bq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call fastcc void @_ZN4llvmL20insertMultibyteShiftERNS_12MachineInstrEPNS_17MachineBasicBlockENS_15MutableArrayRefISt4pairINS_8RegisterEiEEENS_3ISD8NodeTypeEl.specialized.2(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %2, ptr nonnull %i.bf, i64 %i.be)
  %i.br = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.al, ptr noundef nonnull @_ZN4llvm25AVRMCRegisterClassStorageE, ptr nonnull @.str.1, i64 0) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #21
  %.sroa.0123.0.copyload.i = load ptr, ptr %i.g, align 8, !tbaa !149
  store ptr %.sroa.0123.0.copyload.i, ptr %55, align 8, !tbaa !149
  %i.bs = getelementptr inbounds nuw i8, ptr %55, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  %i.bt = load ptr, ptr %i.ao, align 8, !tbaa !655
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -16000
  %i.bv = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %55, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i32 %i.br) ; 2 uses
  %i.bw = extractvalue { ptr, ptr } %i.bv, 0
  %i.bx = extractvalue { ptr, ptr } %i.bv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  %i.by = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr null, ptr %i.by, align 8, !tbaa !656, !alias.scope !722
  %i.bz = getelementptr inbounds nuw i8, ptr %50, i64 4
  store i32 %i.bg, ptr %i.bz, align 4, !tbaa !131, !alias.scope !722
  %i.ca = getelementptr inbounds nuw i8, ptr %50, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false), !alias.scope !722
  store i32 0, ptr %50, align 8, !alias.scope !722
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bx, ptr noundef nonnull align 8 dereferenceable(1065) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %50) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0511.0.i = phi i32 [ %i.br, %bb.g ], [ %i.bg, %bb.f ] ; 4 uses
  %zext = and i64 %i.be, 4294967295               ; 4 uses
  %sext142 = shl i64 %i.be, 32                    ; 3 uses
  %sext = ashr exact i64 %sext142, 32             ; 2 uses
  %i.cb = icmp sgt i64 %sext, 1
  br i1 %i.cb, label %bb.i, label %70

70:                                               ; preds = %bb.h
  %71 = icmp eq i64 %zext, 1
  br i1 %71, label %.thread.thread, label %73

.thread.thread:                                   ; preds = %70
  store i32 %.sroa.0511.0.i, ptr %65, align 8, !tbaa !48
  store i32 0, ptr %i.q, align 4, !tbaa !712
  %72 = getelementptr inbounds nuw i8, ptr %65, i64 12
  br label %76

73:                                               ; preds = %70
  store i32 %i.am, ptr %65, align 8, !tbaa !48
  store i32 0, ptr %i.q, align 4, !tbaa !712
  br label %.thread

bb.i:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cd = load <2 x i32>, ptr %i.cc, align 8, !tbaa !48
  store <2 x i32> %i.cd, ptr %65, align 8, !tbaa !48
  %.not159 = icmp eq i64 %sext142, 8589934592
  br i1 %.not159, label %.thread, label %bb.j

.thread:                                          ; preds = %73, %bb.i
  %74 = icmp eq i64 %zext, 2
  %75 = getelementptr inbounds nuw i8, ptr %65, i64 12 ; 2 uses
  br i1 %74, label %.thread144.thread, label %76

76:                                               ; preds = %.thread.thread, %.thread
  %77 = phi ptr [ %72, %.thread.thread ], [ %75, %.thread ]
  store i32 %i.am, ptr %i.r, align 8, !tbaa !48
  store i32 0, ptr %77, align 4, !tbaa !712
  br label %.thread144

.thread144.thread:                                ; preds = %.thread
  store i32 %.sroa.0511.0.i, ptr %i.r, align 8, !tbaa !48
  store i32 0, ptr %75, align 4, !tbaa !712
  %i.ce = getelementptr inbounds nuw i8, ptr %65, i64 20
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.cg = load <2 x i32>, ptr %i.cf, align 8, !tbaa !48
  store <2 x i32> %i.cg, ptr %i.r, align 8, !tbaa !48
  %i.ch = icmp samesign ugt i64 %sext, 3
  br i1 %i.ch, label %bb.l, label %.thread144

.thread144:                                       ; preds = %76, %bb.j
  %i.ci = icmp eq i64 %zext, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %65, i64 20 ; 2 uses
  br i1 %i.ci, label %.thread146.thread, label %bb.k

bb.k:                                             ; preds = %.thread144.thread, %.thread144
  %i.ck = phi ptr [ %i.ce, %.thread144.thread ], [ %i.cj, %.thread144 ]
  store i32 %i.am, ptr %i.t, align 8, !tbaa !48
  store i32 0, ptr %i.ck, align 4, !tbaa !712
  br label %.thread146

.thread146.thread:                                ; preds = %.thread144
  store i32 %.sroa.0511.0.i, ptr %i.t, align 8, !tbaa !48
  store i32 0, ptr %i.cj, align 4, !tbaa !712
  %78 = getelementptr inbounds nuw i8, ptr %65, i64 28
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.cm = load <2 x i32>, ptr %i.cl, align 8, !tbaa !48
  store <2 x i32> %i.cm, ptr %i.t, align 8, !tbaa !48
  %.not160 = icmp eq i64 %sext142, 17179869184
  br i1 %.not160, label %.thread146, label %bb.o

.thread146:                                       ; preds = %bb.k, %bb.l
  %79 = icmp eq i64 %zext, 4
  %80 = getelementptr inbounds nuw i8, ptr %65, i64 28 ; 2 uses
  br i1 %79, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread146.thread, %.thread146
  %81 = phi ptr [ %78, %.thread146.thread ], [ %80, %.thread146 ]
  store i32 %i.am, ptr %i.x, align 8, !tbaa !48
  store i32 0, ptr %81, align 4, !tbaa !712
  br label %_ZN4llvmL20insertMultibyteShiftERNS_12MachineInstrEPNS_17MachineBasicBlockENS_15MutableArrayRefISt4pairINS_8RegisterEiEEENS_3ISD8NodeTypeEl.exit._crit_edge

bb.n:                                             ; preds = %.thread146
  store i32 %.sroa.0511.0.i, ptr %i.x, align 8, !tbaa !48
  store i32 0, ptr %80, align 4, !tbaa !712
  br label %_ZN4llvmL20insertMultibyteShiftERNS_12MachineInstrEPNS_17MachineBasicBlockENS_15MutableArrayRefISt4pairINS_8RegisterEiEEENS_3ISD8NodeTypeEl.exit._crit_edge

bb.o:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.co = load <2 x i32>, ptr %i.cn, align 8, !tbaa !48
  store <2 x i32> %i.co, ptr %i.x, align 8, !tbaa !48
  br label %_ZN4llvmL20insertMultibyteShiftERNS_12MachineInstrEPNS_17MachineBasicBlockENS_15MutableArrayRefISt4pairINS_8RegisterEiEEENS_3ISD8NodeTypeEl.exit._crit_edge

.critedge.i:                                      ; preds = %bb.d
  br i1 %i.bd, label %bb.p, label %._crit_edge604.i

bb.p:                                             ; preds = %.critedge.i
  %.neg.i = sdiv i64 %i.k, -8                     ; 3 uses
  %i.cp = add nsw i64 %.neg.i, 4                  ; 2 uses
  call fastcc void @_ZN4llvmL20insertMultibyteShiftERNS_12MachineInstrEPNS_17MachineBasicBlockENS_15MutableArrayRefISt4pairINS_8RegisterEiEEENS_3ISD8NodeTypeEl.specialized.1(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %2, ptr nonnull %65, i64 %i.cp)
  %i.cq = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.al, ptr noundef nonnull @_ZN4llvm25AVRMCRegisterClassStorageE, ptr nonnull @.str.1, i64 0) #21 ; 8 uses
  br i1 %i.n, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #21
  %.sroa.0110.0.copyload.i = load ptr, ptr %i.g, align 8, !tbaa !149
  store ptr %.sroa.0110.0.copyload.i, ptr %56, align 8, !tbaa !149
  %i.cr = getelementptr inbounds nuw i8, ptr %56, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i8 0, i64 24, i1 false)
  %i.cs = load ptr, ptr %i.ao, align 8, !tbaa !655
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -16064
  %i.cu = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i32 %i.cq) ; 2 uses
  %i.cv = extractvalue { ptr, ptr } %i.cu, 0      ; 2 uses
  %i.cw = extractvalue { ptr, ptr } %i.cu, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  %i.cx = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr null, ptr %i.cx, align 8, !tbaa !656, !alias.scope !725
  %i.cy = getelementptr inbounds nuw i8, ptr %49, i64 4
  store i32 %i.cq, ptr %i.cy, align 4, !tbaa !131, !alias.scope !725
  %i.cz = getelementptr inbounds nuw i8, ptr %49, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false), !alias.scope !725
  store i32 268435456, ptr %49, align 8, !alias.scope !725
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr noundef nonnull align 8 dereferenceable(1065) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %49) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  %i.da = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr null, ptr %i.da, align 8, !tbaa !656, !alias.scope !728
  %i.db = getelementptr inbounds nuw i8, ptr %48, i64 4
  store i32 %i.cq, ptr %i.db, align 4, !tbaa !131, !alias.scope !728
  %i.dc = getelementptr inbounds nuw i8, ptr %48, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false), !alias.scope !728
  store i32 268435456, ptr %48, align 8, !alias.scope !728
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cw, ptr noundef nonnull align 8 dereferenceable(1065) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %48) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #21
  %.sroa.0106.0.copyload.i = load ptr, ptr %i.g, align 8, !tbaa !149
  store ptr %.sroa.0106.0.copyload.i, ptr %57, align 8, !tbaa !149
  %i.dd = getelementptr inbounds nuw i8, ptr %57, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  %i.de = load ptr, ptr %i.ao, align 8, !tbaa !655
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -13632
  %i.dg = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull align 8 dereferenceable(32) %i.df, i32 %i.cq) ; 2 uses
  %i.dh = extractvalue { ptr, ptr } %i.dg, 0      ; 2 uses
  %i.di = extractvalue { ptr, ptr } %i.dg, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  %i.dj = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr null, ptr %i.dj, align 8, !tbaa !656, !alias.scope !731
  %i.dk = getelementptr inbounds nuw i8, ptr %47, i64 4
  store i32 %i.am, ptr %i.dk, align 4, !tbaa !131, !alias.scope !731
  %i.dl = getelementptr inbounds nuw i8, ptr %47, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false), !alias.scope !731
  store i32 0, ptr %47, align 8, !alias.scope !731
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.di, ptr noundef nonnull align 8 dereferenceable(1065) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %47) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #21
  %i.dm = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr null, ptr %i.dm, align 8, !tbaa !656, !alias.scope !734
  %i.dn = getelementptr inbounds nuw i8, ptr %46, i64 4
  store i32 %i.am, ptr %i.dn, align 4, !tbaa !131, !alias.scope !734
  %i.do = getelementptr inbounds nuw i8, ptr %46, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, i8 0, i64 16, i1 false), !alias.scope !734
  store i32 0, ptr %46, align 8, !alias.scope !734
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.di, ptr noundef nonnull align 8 dereferenceable(1065) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %46) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.0475.0.i = phi i32 [ %i.am, %bb.r ], [ %i.cq, %bb.q ] ; 4 uses
  %i.dp = icmp eq i64 %i.bb, 6
  br i1 %i.dp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call fastcc void @_ZN4llvmL20insertMultibyteShiftERNS_12MachineInstrEPNS_17MachineBasicBlockENS_15MutableArrayRefISt4pairINS_8RegisterEiEEENS_3ISD8NodeTypeEl.specialized.1(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %2, ptr nonnull %65, i64 %i.cp)
  %i.dq = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.al, ptr noundef nonnull @_ZN4llvm25AVRMCRegisterClassStorageE, ptr nonnull @.str.1, i64 0) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #21
  %.sroa.0101.0.copyload.i = load ptr, ptr %i.g, align 8, !tbaa !149
  store ptr %.sroa.0101.0.copyload.i, ptr %58, align 8, !tbaa !149
  %i.dr = getelementptr inbounds nuw i8, ptr %58, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i8 0, i64 24, i1 false)
  %i.ds = load ptr, ptr %i.ao, align 8, !tbaa !655
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -13632
  %i.du = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull align 8 dereferenceable(32) %i.dt, i32 %i.dq) ; 2 uses
  %i.dv = extractvalue { ptr, ptr } %i.du, 0      ; 2 uses
  %i.dw = extractvalue { ptr, ptr } %i.du, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21
  %i.dx = getelementptr inbounds nuw i8, ptr %45, i64 8
  store ptr null, ptr %i.dx, align 8, !tbaa !656, !alias.scope !737
  %i.dy = getelementptr inbounds nuw i8, ptr %45, i64 4
  store i32 %i.cq, ptr %i.dy, align 4, !tbaa !131, !alias.scope !737
  %i.dz = getelementptr inbounds nuw i8, ptr %45, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i8 0, i64 16, i1 false), !alias.scope !737
  store i32 0, ptr %45, align 8, !alias.scope !737
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dw, ptr noundef nonnull align 8 dereferenceable(1065) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %45) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #21
  %i.ea = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr null, ptr %i.ea, align 8, !tbaa !656, !alias.scope !740
  %i.eb = getelementptr inbounds nuw i8, ptr %44, i64 4
  store i32 %i.cq, ptr %i.eb, align 4, !tbaa !131, !alias.scope !740
  %i.ec = getelementptr inbounds nuw i8, ptr %44, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i8 0, i64 16, i1 false), !alias.scope !740
  store i32 0, ptr %44, align 8, !alias.scope !740
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dw, ptr noundef nonnull align 8 dereferenceable(1065) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %44) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #21
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.0480.0.i = phi i32 [ %i.dq, %bb.t ], [ %i.cq, %bb.s ] ; 4 uses
  %i.ed = trunc i64 %.neg.i to i32                ; 8 uses
  %i.ee = add i32 %i.ed, 2                        ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, -1
  br i1 %i.ef, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eg = zext nneg i32 %i.ee to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %65, i64 %i.eg
  %i.ei = load <2 x i32>, ptr %i.eh, align 8, !tbaa !48
  store <2 x i32> %i.ei, ptr %i.x, align 8, !tbaa !48
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.ej = icmp eq i32 %i.ed, -3
  %i.ek = getelementptr inbounds nuw i8, ptr %65, i64 28 ; 2 uses
  br i1 %i.ej, label %.thread148, label %bb.x

.thread148:                                       ; preds = %bb.w
  store i32 %.sroa.0480.0.i, ptr %i.x, align 8, !tbaa !48
  store i32 0, ptr %i.ek, align 4, !tbaa !712
  %i.el = getelementptr inbounds nuw i8, ptr %65, i64 20
  br label %bb.aa

bb.x:                                             ; preds = %bb.w
  store i32 %.sroa.0475.0.i, ptr %i.x, align 8, !tbaa !48
  store i32 0, ptr %i.ek, align 4, !tbaa !712
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.em = add i32 %i.ed, 1                        ; 2 uses
  %i.en = icmp sgt i32 %i.em, -1
  br i1 %i.en, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eo = icmp eq i32 %i.ed, -2
  %i.ep = getelementptr inbounds nuw i8, ptr %65, i64 20 ; 2 uses
  br i1 %i.eo, label %.thread150, label %bb.aa

bb.aa:                                            ; preds = %.thread148, %bb.z
  %i.eq = phi ptr [ %i.el, %.thread148 ], [ %i.ep, %bb.z ]
  store i32 %.sroa.0475.0.i, ptr %i.t, align 8, !tbaa !48
  store i32 0, ptr %i.eq, align 4, !tbaa !712
  br label %bb.ac

.thread150:                                       ; preds = %bb.z
  store i32 %.sroa.0480.0.i, ptr %i.t, align 8, !tbaa !48
  store i32 0, ptr %i.ep, align 4, !tbaa !712
  %i.er = getelementptr inbounds nuw i8, ptr %65, i64 12
  br label %bb.ae

bb.ab:                                            ; preds = %bb.y
  %i.es = zext nneg i32 %i.em to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %65, i64 %i.es
  %i.eu = load <2 x i32>, ptr %i.et, align 8, !tbaa !48
  store <2 x i32> %i.eu, ptr %i.t, align 8, !tbaa !48
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ev = icmp sgt i32 %i.ed, -1
  br i1 %i.ev, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ew = icmp eq i32 %i.ed, -1
  %i.ex = getelementptr inbounds nuw i8, ptr %65, i64 12 ; 2 uses
  br i1 %i.ew, label %.thread152, label %bb.ae

bb.ae:                                            ; preds = %.thread150, %bb.ad
  %i.ey = phi ptr [ %i.er, %.thread150 ], [ %i.ex, %bb.ad ]
  store i32 %.sroa.0475.0.i, ptr %i.r, align 8, !tbaa !48
  store i32 0, ptr %i.ey, align 4, !tbaa !712
  br label %bb.ag
end_hunk_0
