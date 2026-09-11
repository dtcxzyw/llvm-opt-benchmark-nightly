Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VEInstrInfo?download=true
inline.NumInlined: 1078
inline.NumDeleted: 366
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4llvm11VEInstrInfo13foldImmediateERNS_12MachineInstrES2_NS_8RegisterEPNS_19MachineRegisterInfoE:bb.a
  %i.br = tail call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %4, i32 %3) #17
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !21
  %i.bu = sub nsw i64 0, %.040
  %i.bv = getelementptr inbounds [32 x i8], ptr %i.bt, i64 %i.bu
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.bv) #17
  br i1 %.138, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN4llvmL8val2MImmEm.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !47 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %.039
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !48
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.by, i32 %i.cb) #17
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZN4llvmL8val2MImmEm.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !47
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.cd, i64 %.039
  tail call void @_ZN4llvm14MachineOperand17ChangeToImmediateElj(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i64 noundef %.136, i32 noundef 0) #17
  br i1 %i.br, label %bb.ba, label %_ZN4llvmL9isMImmValEm.exit.thread61

bb.ba:                                            ; preds = %bb.az
  %i.cf = tail call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #17 ; 0 uses
  br label %_ZN4llvmL9isMImmValEm.exit.thread61

_ZN4llvmL9isMImmValEm.exit.thread61:              ; preds = %bb.av, %bb.ao, %bb.h, %bb.az, %bb.ba, %_ZN4llvmL9isMImmValEm.exit48, %bb.as, %_ZN4llvmL9isMImmValEm.exit, %bb.f, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.h ], [ false, %_ZN4llvmL9isMImmValEm.exit48 ], [ false, %bb.as ], [ false, %_ZN4llvmL9isMImmValEm.exit ], [ true, %bb.ba ], [ true, %bb.az ], [ false, %bb.ao ], [ false, %bb.av ]
  ret i1 %.2
}

declare noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32), i32) local_unnamed_addr #3

declare void @_ZN4llvm14MachineOperand17ChangeToImmediateElj(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 1, 0) i32 @_ZNK4llvm11VEInstrInfo16getGlobalBaseRegEPNS_15MachineFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MIMetadata", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !478
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 8, !tbaa !27 ; 2 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !256  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -10944
  %i.k = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.e, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i32 202) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  store i32 202, ptr %i.c, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.013.0 = phi i32 [ %.sroa.0.0.copyload.i, %bb.a ], [ 202, %bb.b ]
  ret i32 %.sroa.013.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm11VEInstrInfo18expandPostRAPseudoERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %3 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %15 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %16 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %17 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %18 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %19 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %20 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %21 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %22 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %23 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %24 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43   ; 3 uses
  switch i32 %i.b, label %bb.v [
    i32 339, label %bb.b
    i32 340, label %bb.c
    i32 343, label %bb.d
    i32 333, label %bb.e
    i32 354, label %bb.f
    i32 365, label %bb.g
    i32 338, label %bb.h
    i32 353, label %bb.i
    i32 352, label %bb.j
    i32 350, label %bb.k
    i32 348, label %bb.k
    i32 351, label %bb.k
    i32 349, label %bb.k
    i32 358, label %bb.s
    i32 363, label %_ZL16expandPseudoVFMKRKN4llvm15TargetInstrInfoERNS_12MachineInstrE.exit
    i32 364, label %"_ZSt7find_ifIPKSt4pairIjS0_IjjEEZL16expandPseudoVFMKRKN4llvm15TargetInstrInfoERNS5_12MachineInstrEE3$_0ET_SC_SC_T0_.exit.fold.split.i.i"
    i32 361, label %"_ZSt7find_ifIPKSt4pairIjS0_IjjEEZL16expandPseudoVFMKRKN4llvm15TargetInstrInfoERNS5_12MachineInstrEE3$_0ET_SC_SC_T0_.exit.fold.split11.i.i"
    i32 362, label %"_ZSt7find_ifIPKSt4pairIjS0_IjjEEZL16expandPseudoVFMKRKN4llvm15TargetInstrInfoERNS5_12MachineInstrEE3$_0ET_SC_SC_T0_.exit.fold.split12.i.i"
    i32 359, label %"_ZN4llvm7find_ifIRA6_KSt4pairIjS1_IjjEEZL16expandPseudoVFMKRKNS_15TargetInstrInfoERNS_12MachineInstrEE3$_0EEDaOT_T0_.exit.thread.fold.split.i"
    i32 360, label %"_ZN4llvm7find_ifIRA6_KSt4pairIjS1_IjjEEZL16expandPseudoVFMKRKNS_15TargetInstrInfoERNS_12MachineInstrEE3$_0EEDaOT_T0_.exit.thread.fold.split28.i"
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm11VEInstrInfo23expandExtendStackPseudoERNS_12MachineInstrE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(80) %1) ; 0 uses
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #17 ; 0 uses
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZNK4llvm11VEInstrInfo23expandGetStackTopPseudoERNS_12MachineInstrE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(80) %1) ; 0 uses
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -12352
  tail call fastcc void @_ZL16expandPseudoLogMRN4llvm12MachineInstrERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -28960
  tail call fastcc void @_ZL16expandPseudoLogMRN4llvm12MachineInstrERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -344448
  tail call fastcc void @_ZL16expandPseudoLogMRN4llvm12MachineInstrERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  br label %bb.v

bb.h:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -21760
  tail call fastcc void @_ZL16expandPseudoLogMRN4llvm12MachineInstrERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -28768
  tail call fastcc void @_ZL16expandPseudoLogMRN4llvm12MachineInstrERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -28736
  tail call fastcc void @_ZL16expandPseudoLogMRN4llvm12MachineInstrERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  br label %bb.v

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !48
  %i.ab = shl i32 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !48 ; 3 uses
  %i.ae = and i32 %i.b, -2
  %switch = icmp eq i32 %i.ae, 350
  br i1 %switch, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !48
  br label %bb.m

.thread:                                          ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %25 = lshr i32 %i.ak, 26
  %26 = lshr i32 %i.ak, 24
  %.lobit.i = and i32 %26, 1
  %i.al = xor i32 %.lobit.i, 1
  %i.am = and i32 %i.al, %25
  %.not150 = icmp eq i32 %i.am, 0
  %27 = select i1 %.not150, i32 0, i32 67108864
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread
  %i.an = phi i64 [ 0, %.thread ], [ %i.ag, %bb.l ] ; 2 uses
  %.sroa.0140.0144147 = phi i32 [ %i.ai, %.thread ], [ 0, %bb.l ] ; 2 uses
  %.not.i = phi i32 [ %27, %.thread ], [ 0, %bb.l ] ; 2 uses
  %i.ao = icmp sgt i64 %i.ad, 3                   ; 2 uses
  %i.ap = add nsw i64 %i.ad, -4
  %spec.select.v = select i1 %i.ao, i32 -347, i32 -346
  %spec.select = add i32 %spec.select.v, %i.ab    ; 6 uses
  %spec.select105 = select i1 %i.ao, i64 %i.ap, i64 %i.ad ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !257 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.031.0.copyload = load ptr, ptr %i.as, align 8, !tbaa !57 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  switch i32 %i.b, label %default.unreachable [
    i32 350, label %bb.n
    i32 348, label %bb.o
    i32 351, label %bb.p
    i32 349, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  store ptr %.sroa.031.0.copyload, ptr %20, align 8, !tbaa !57
  %i.au = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !21
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -26656
  %i.ax = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.ar, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.aw) ; 2 uses
  %i.ay = extractvalue { ptr, ptr } %i.ax, 0      ; 3 uses
  %i.az = extractvalue { ptr, ptr } %i.ax, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %i.ba = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr null, ptr %i.ba, align 8, !tbaa !52, !alias.scope !511
  %i.bb = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i32 %spec.select, ptr %i.bb, align 4, !tbaa !48, !alias.scope !511
  %i.bc = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false), !alias.scope !511
  store i32 16777216, ptr %19, align 8, !alias.scope !511
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.az, ptr noundef nonnull align 8 dereferenceable(1065) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  store i32 1, ptr %18, align 8, !alias.scope !512
  %i.bd = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr null, ptr %i.bd, align 8, !tbaa !52, !alias.scope !512
  %i.be = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %spec.select105, ptr %i.be, align 8, !tbaa !48, !alias.scope !512
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.az, ptr noundef nonnull align 8 dereferenceable(1065) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.bf = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr null, ptr %i.bf, align 8, !tbaa !52, !alias.scope !513
  %i.bg = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 %.sroa.0140.0144147, ptr %i.bg, align 4, !tbaa !48, !alias.scope !513
  %i.bh = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false), !alias.scope !513
  store i32 %.not.i, ptr %17, align 8, !alias.scope !513
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.az, ptr noundef nonnull align 8 dereferenceable(1065) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  store ptr %.sroa.031.0.copyload, ptr %21, align 8, !tbaa !57
  %i.bi = getelementptr inbounds nuw i8, ptr %21, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !21
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -26592
  %i.bl = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.ar, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %i.bk) ; 2 uses
  %i.bm = extractvalue { ptr, ptr } %i.bl, 0      ; 3 uses
  %i.bn = extractvalue { ptr, ptr } %i.bl, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %i.bo, align 8, !tbaa !52, !alias.scope !514
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 %spec.select, ptr %i.bp, align 4, !tbaa !48, !alias.scope !514
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false), !alias.scope !514
  store i32 16777216, ptr %16, align 8, !alias.scope !514
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bn, ptr noundef nonnull align 8 dereferenceable(1065) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store i32 1, ptr %15, align 8, !alias.scope !515
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.br, align 8, !tbaa !52, !alias.scope !515
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 %spec.select105, ptr %i.bs, align 8, !tbaa !48, !alias.scope !515
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bn, ptr noundef nonnull align 8 dereferenceable(1065) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  store i32 1, ptr %14, align 8, !alias.scope !516
  %i.bt = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.bt, align 8, !tbaa !52, !alias.scope !516
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.an, ptr %i.bu, align 8, !tbaa !48, !alias.scope !516
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bn, ptr noundef nonnull align 8 dereferenceable(1065) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  store ptr %.sroa.031.0.copyload, ptr %22, align 8, !tbaa !57
  %i.bv = getelementptr inbounds nuw i8, ptr %22, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  %i.bw = load ptr, ptr %i.at, align 8, !tbaa !21
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -26688
  %i.by = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.ar, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %i.bx) ; 2 uses
  %i.bz = extractvalue { ptr, ptr } %i.by, 0      ; 4 uses
  %i.ca = extractvalue { ptr, ptr } %i.by, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.cb, align 8, !tbaa !52, !alias.scope !517
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 %spec.select, ptr %i.cc, align 4, !tbaa !48, !alias.scope !517
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false), !alias.scope !517
  store i32 16777216, ptr %13, align 8, !alias.scope !517
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ca, ptr noundef nonnull align 8 dereferenceable(1065) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store i32 1, ptr %12, align 8, !alias.scope !518
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.ce, align 8, !tbaa !52, !alias.scope !518
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %spec.select105, ptr %i.cf, align 8, !tbaa !48, !alias.scope !518
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ca, ptr noundef nonnull align 8 dereferenceable(1065) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.cg, align 8, !tbaa !52, !alias.scope !519
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %.sroa.0140.0144147, ptr %i.ch, align 4, !tbaa !48, !alias.scope !519
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false), !alias.scope !519
  store i32 %.not.i, ptr %11, align 8, !alias.scope !519
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ca, ptr noundef nonnull align 8 dereferenceable(1065) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.cj, align 8, !tbaa !52, !alias.scope !520
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %spec.select, ptr %i.ck, align 4, !tbaa !48, !alias.scope !520
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false), !alias.scope !520
  store i32 0, ptr %10, align 8, !alias.scope !520
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ca, ptr noundef nonnull align 8 dereferenceable(1065) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  store ptr %.sroa.031.0.copyload, ptr %23, align 8, !tbaa !57
  %i.cm = getelementptr inbounds nuw i8, ptr %23, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false)
  %i.cn = load ptr, ptr %i.at, align 8, !tbaa !21
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -26624
  %i.cp = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.ar, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %i.co) ; 2 uses
  %i.cq = extractvalue { ptr, ptr } %i.cp, 0      ; 4 uses
  %i.cr = extractvalue { ptr, ptr } %i.cp, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.cs, align 8, !tbaa !52, !alias.scope !521
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %spec.select, ptr %i.ct, align 4, !tbaa !48, !alias.scope !521
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false), !alias.scope !521
  store i32 16777216, ptr %9, align 8, !alias.scope !521
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cr, ptr noundef nonnull align 8 dereferenceable(1065) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store i32 1, ptr %8, align 8, !alias.scope !522
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.cv, align 8, !tbaa !52, !alias.scope !522
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %spec.select105, ptr %i.cw, align 8, !tbaa !48, !alias.scope !522
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cr, ptr noundef nonnull align 8 dereferenceable(1065) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store i32 1, ptr %7, align 8, !alias.scope !523
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.cx, align 8, !tbaa !52, !alias.scope !523
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.an, ptr %i.cy, align 8, !tbaa !48, !alias.scope !523
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cr, ptr noundef nonnull align 8 dereferenceable(1065) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.cz, align 8, !tbaa !52, !alias.scope !524
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %spec.select, ptr %i.da, align 4, !tbaa !48, !alias.scope !524
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i8 0, i64 16, i1 false), !alias.scope !524
  store i32 0, ptr %6, align 8, !alias.scope !524
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cr, ptr noundef nonnull align 8 dereferenceable(1065) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  br label %bb.r

default.unreachable:                              ; preds = %bb.m
  unreachable

end_hunk_0
