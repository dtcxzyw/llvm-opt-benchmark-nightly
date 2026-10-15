Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVInstrInfo?download=true
inline.NumInlined: 8782
inline.NumDeleted: 2262
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK4llvm14RISCVInstrInfo18isStoreToStackSlotERKNS_12MachineInstrERiRNS_8TypeSizeE:bb.a
  %i.k = load i32, ptr %i.a, align 4, !tbaa !74
  %i.l = tail call fastcc i64 @_ZL27getLMULForRVVWholeLoadStorej(i32 noundef %i.k)
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = and i64 %i.m, 4294967288
  store i64 %i.n, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !75
  br label %.sink.split

bb.g:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sink = phi i64 [ 8, %bb.d ], [ 4, %bb.c ], [ 2, %bb.b ], [ 1, %bb.a ]
  store i64 %.sink, ptr %3, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %.sroa.47.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8
  %i.t = and i32 %i.s, 255
  %i.u = icmp eq i32 %i.t, 5
  br i1 %i.u, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.w = load i32, ptr %i.v, align 8
  %i.x = and i32 %i.w, 255
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !76
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !76
  store i32 %i.ad, ptr %2, align 4, !tbaa !57
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.j
  %.sink48 = phi ptr [ %i.q, %bb.j ], [ %i.o, %bb.f ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink48, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !76
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.g, %bb.h, %bb.i, %bb.e, %bb.a
  %.sroa.046.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ %i.af, %.sink.split ]
  ret i32 %.sroa.046.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14RISCVInstrInfo22isReMaterializableImplERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !74   ; 3 uses
  %i.c = add i32 %i.b, -811
  %.not.i.i = icmp ult i32 %i.c, 12878
  br i1 %.not.i.i, label %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit.thread

_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %bb.a, %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.05.i.i.i.i = phi i64 [ %.1.i.i.i.i, %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ 12736, %bb.a ] ; 2 uses
  %.0114.i.i.i.i = phi ptr [ %.112.i.i.i.i, %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ], [ @_ZN4llvm18RISCVVPseudosTableL18RISCVVPseudosTableE, %bb.a ] ; 2 uses
  %i.d = lshr i64 %.05.i.i.i.i, 1                 ; 3 uses
  %i.e = getelementptr inbounds nuw [6 x i8], ptr %.0114.i.i.i.i, i64 %i.d ; 2 uses
  %.val.i.i.i.i = load i16, ptr %i.e, align 2, !tbaa !55
  %i.f = zext i16 %.val.i.i.i.i to i32
  %i.g = icmp samesign ugt i32 %i.b, %i.f         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.i = xor i64 %i.d, -1
  %i.j = add nsw i64 %.05.i.i.i.i, %i.i
  %.112.i.i.i.i = select i1 %i.g, ptr %i.h, ptr %.0114.i.i.i.i ; 4 uses
  %.1.i.i.i.i = select i1 %i.g, i64 %i.j, i64 %i.d ; 2 uses
  %i.k = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.k, label %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZSt11lower_boundIPKN4llvm18RISCVVPseudosTable10PseudoInfoEZNS1_13getPseudoInfoEjE7KeyTypeZNS1_13getPseudoInfoEjE4CompET_S7_S7_RKT0_T1_.exit.i.i, !llvm.loop !1

_ZSt11lower_boundIPKN4llvm18RISCVVPseudosTable10PseudoInfoEZNS1_13getPseudoInfoEjE7KeyTypeZNS1_13getPseudoInfoEjE4CompET_S7_S7_RKT0_T1_.exit.i.i: ; preds = %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %i.l = icmp eq ptr %.112.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN4llvm18RISCVVPseudosTableL18RISCVVPseudosTableE, i64 76416)
  br i1 %i.l, label %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZSt11lower_boundIPKN4llvm18RISCVVPseudosTable10PseudoInfoEZNS1_13getPseudoInfoEjE7KeyTypeZNS1_13getPseudoInfoEjE4CompET_S7_S7_RKT0_T1_.exit.i.i
  %i.m = load i16, ptr %.112.i.i.i.i, align 2, !tbaa !55
  %i.n = zext i16 %i.m to i32
  %.not5.i.not.i = icmp eq i32 %i.b, %i.n
  br i1 %.not5.i.not.i, label %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit, label %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit.thread

_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit:            ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !213
  switch i16 %i.p, label %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit.thread [
    i16 16537, label %bb.c
    i16 16160, label %bb.c
    i16 16535, label %bb.c
    i16 16534, label %bb.c
    i16 16159, label %bb.c
    i16 16250, label %bb.c
  ]

bb.c:                                             ; preds = %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit, %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit, %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit, %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit, %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit, %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, 268435456
  %i.v = icmp ne i32 %i.u, 0
  br label %bb.d

_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit.thread:     ; preds = %_ZSt11lower_boundIPKN4llvm18RISCVVPseudosTable10PseudoInfoEZNS1_13getPseudoInfoEjE7KeyTypeZNS1_13getPseudoInfoEjE4CompET_S7_S7_RKT0_T1_.exit.i.i, %bb.a, %bb.b, %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit
  %i.w = tail call noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo22isReMaterializableImplERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit.thread, %bb.c
  %.0 = phi i1 [ %i.w, %_ZN4llvm5RISCV14getRVVMCOpcodeEj.exit.thread ], [ %i.v, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 65536) i32 @_ZN4llvm5RISCV14getRVVMCOpcodeEj(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = add i32 %0, -811
  %.not.i = icmp ult i32 %i.a, 12878
  br i1 %.not.i, label %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZN4llvm18RISCVVPseudosTable13getPseudoInfoEj.exit.thread

_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.a, %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.05.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ 12736, %bb.a ] ; 2 uses
  %.0114.i.i.i = phi ptr [ %.112.i.i.i, %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ @_ZN4llvm18RISCVVPseudosTableL18RISCVVPseudosTableE, %bb.a ] ; 2 uses
  %i.b = lshr i64 %.05.i.i.i, 1                   ; 3 uses
  %i.c = getelementptr inbounds nuw [6 x i8], ptr %.0114.i.i.i, i64 %i.b ; 2 uses
  %.val.i.i.i = load i16, ptr %i.c, align 2, !tbaa !55
  %i.d = zext i16 %.val.i.i.i to i32
  %i.e = icmp samesign ugt i32 %0, %i.d           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.g = xor i64 %i.b, -1
  %i.h = add nsw i64 %.05.i.i.i, %i.g
  %.112.i.i.i = select i1 %i.e, ptr %i.f, ptr %.0114.i.i.i ; 4 uses
  %.1.i.i.i = select i1 %i.e, i64 %i.h, i64 %i.b  ; 2 uses
  %i.i = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.i, label %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN4llvm18RISCVVPseudosTable10PseudoInfoEZNS1_13getPseudoInfoEjE7KeyTypeZNS1_13getPseudoInfoEjE4CompET_S7_S7_RKT0_T1_.exit.i, !llvm.loop !1

_ZSt11lower_boundIPKN4llvm18RISCVVPseudosTable10PseudoInfoEZNS1_13getPseudoInfoEjE7KeyTypeZNS1_13getPseudoInfoEjE4CompET_S7_S7_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIPKN4llvm18RISCVVPseudosTable10PseudoInfoElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.j = icmp eq ptr %.112.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN4llvm18RISCVVPseudosTableL18RISCVVPseudosTableE, i64 76416)
  br i1 %i.j, label %_ZN4llvm18RISCVVPseudosTable13getPseudoInfoEj.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZSt11lower_boundIPKN4llvm18RISCVVPseudosTable10PseudoInfoEZNS1_13getPseudoInfoEjE7KeyTypeZNS1_13getPseudoInfoEjE4CompET_S7_S7_RKT0_T1_.exit.i
  %i.k = load i16, ptr %.112.i.i.i, align 2, !tbaa !55
  %i.l = zext i16 %i.k to i32
  %.not5.i.not = icmp eq i32 %0, %i.l
  br i1 %.not5.i.not, label %bb.c, label %_ZN4llvm18RISCVVPseudosTable13getPseudoInfoEj.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.112.i.i.i, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !213
  %i.o = zext i16 %i.n to i32
  br label %_ZN4llvm18RISCVVPseudosTable13getPseudoInfoEj.exit.thread

_ZN4llvm18RISCVVPseudosTable13getPseudoInfoEj.exit.thread: ; preds = %bb.b, %_ZSt11lower_boundIPKN4llvm18RISCVVPseudosTable10PseudoInfoEZNS1_13getPseudoInfoEjE7KeyTypeZNS1_13getPseudoInfoEjE4CompET_S7_S7_RKT0_T1_.exit.i, %bb.a, %bb.c
  %.0 = phi i32 [ %i.o, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %_ZSt11lower_boundIPKN4llvm18RISCVVPseudosTable10PseudoInfoEZNS1_13getPseudoInfoEjE7KeyTypeZNS1_13getPseudoInfoEjE4CompET_S7_S7_RKT0_T1_.exit.i ]
  ret i32 %.0
}

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo22isReMaterializableImplERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, i32 %4, i32 %5, i1 noundef zeroext %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #5 align 2 {
bb.a:
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 11 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 11 uses
  %15 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101, !nonnull !49, !align !102 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(519768) %i.b) #27 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 50
  %i.h = load i8, ptr %i.g, align 2, !tbaa !215   ; 2 uses
  %i.i = lshr i8 %i.h, 1
  %i.j = and i8 %i.i, 3                           ; 4 uses
  %i.k = lshr i8 %i.h, 3
  %i.l = and i8 %i.k, 7
  %narrow.i = add nuw nsw i8 %i.l, 1
  %i.m = zext nneg i8 %narrow.i to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !670  ; 2 uses
  %i.p = zext i32 %5 to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !216  ; 3 uses
  %i.s = zext i32 %4 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !216  ; 3 uses
  %i.v = tail call i64 @_ZN4llvm10RISCVVType11decodeVLMULENS0_5VLMULE(i8 noundef zeroext %i.j) #27
  %.sroa.0144.0.extract.trunc = trunc i64 %i.v to i32
  %i.w = mul i32 %.sroa.0144.0.extract.trunc, %i.m ; 10 uses
  %16 = zext i16 %i.u to i32
  %17 = zext i16 %i.r to i32
  %18 = icmp ugt i16 %i.u, %i.r
  %19 = sub nuw nsw i32 %16, %17
  %20 = icmp ult i32 %19, %i.w
  %i.x = select i1 %18, i1 %20, i1 false          ; 4 uses
  %.not196 = icmp eq i32 %i.w, 0
  br i1 %.not196, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.y = trunc i32 %i.w to i16
  %i.z = add i16 %i.y, -1
  %i.aa = select i1 %i.x, i16 %i.z, i16 0         ; 2 uses
  %.0 = add i16 %i.aa, %i.r
  %.067 = add i16 %i.aa, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.aj = select i1 %6, i32 67108864, i32 0       ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.al
  %.1199 = phi i16 [ %.0, %.lr.ph ], [ %i.ja, %bb.al ] ; 6 uses
  %.168198 = phi i16 [ %.067, %.lr.ph ], [ %i.jb, %bb.al ] ; 6 uses
  %.0159197 = phi i32 [ 0, %.lr.ph ], [ %i.jc, %bb.al ] ; 7 uses
  br i1 %i.x, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ay = sub i16 %.168198, %.1199                ; 3 uses
  %i.az = add i32 %.0159197, 8
  %i.ba = icmp ule i32 %i.az, %i.w
  %i.bb = icmp ugt i16 %i.ay, 7
  %or.cond.i = and i1 %i.ba, %i.bb
  %i.bc = and i16 %.1199, %.168198
  %i.bd = zext i16 %i.bc to i32                   ; 3 uses
  %i.be = and i32 %i.bd, 7
  %i.bf = icmp eq i32 %i.be, 7
  %or.cond32.i = and i1 %or.cond.i, %i.bf
  br i1 %or.cond32.i, label %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bg = add i32 %.0159197, 4
  %i.bh = icmp ule i32 %i.bg, %i.w
  %i.bi = icmp ugt i16 %i.ay, 3
  %or.cond5.i = and i1 %i.bh, %i.bi
  %i.bj = and i32 %i.bd, 3
  %i.bk = icmp eq i32 %i.bj, 3
  %or.cond36.i = and i1 %or.cond5.i, %i.bk
  br i1 %or.cond36.i, label %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = add i32 %.0159197, 2
  %i.bm = icmp ugt i32 %i.bl, %i.w
  %i.bn = icmp ult i16 %i.ay, 2
  %or.cond8.not108.i = or i1 %i.bm, %i.bn
  %i.bo = and i32 %i.bd, 1
  %i.bp = icmp eq i32 %i.bo, 0
  %or.cond38.i = or i1 %or.cond8.not108.i, %i.bp
  br i1 %or.cond38.i, label %bb.f, label %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit"

bb.f:                                             ; preds = %bb.i, %bb.e
  br label %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit"

bb.g:                                             ; preds = %bb.b
  %i.bq = add i32 %.0159197, 8
  %.not.i = icmp ule i32 %i.bq, %i.w
  %i.br = or i16 %.1199, %.168198                 ; 3 uses
  %i.bs = and i16 %i.br, 7
  %i.bt = icmp eq i16 %i.bs, 0
  %or.cond42.i = and i1 %.not.i, %i.bt
  br i1 %or.cond42.i, label %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = add i32 %.0159197, 4
  %.not25.i = icmp ule i32 %i.bu, %i.w
  %i.bv = and i16 %i.br, 3
  %i.bw = icmp eq i16 %i.bv, 0
  %or.cond46.i = and i1 %.not25.i, %i.bw
  br i1 %or.cond46.i, label %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = add i32 %.0159197, 2
  %.not26.i = icmp ule i32 %i.bx, %i.w
  %i.by = and i16 %i.br, 1
  %i.bz = icmp eq i16 %i.by, 0
  %or.cond50.i = and i1 %.not26.i, %i.bz
  br i1 %or.cond50.i, label %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit", label %bb.f

"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit": ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.f
  %.sroa.0136.0 = phi i32 [ 9108, %bb.i ], [ 9110, %bb.c ], [ 9107, %bb.f ], [ 9109, %bb.d ], [ 9108, %bb.e ], [ 9110, %bb.g ], [ 9109, %bb.h ] ; 2 uses
  %.sroa.11.0 = phi i32 [ 9115, %bb.i ], [ 9117, %bb.c ], [ 9114, %bb.f ], [ 9116, %bb.d ], [ 9115, %bb.e ], [ 9117, %bb.g ], [ 9116, %bb.h ]
  %.sroa.20.1 = phi i32 [ 16531, %bb.i ], [ 16533, %bb.c ], [ 16530, %bb.f ], [ 16532, %bb.d ], [ 16531, %bb.e ], [ 16533, %bb.g ], [ 16532, %bb.h ] ; 13 uses
  %.sroa.33139.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 6976), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 9408), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 4416), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 7808), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 6976), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 9408), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 7808), %bb.h ] ; 3 uses
  %.sroa.42.0 = phi i8 [ 1, %bb.i ], [ 3, %bb.c ], [ 0, %bb.f ], [ 2, %bb.d ], [ 1, %bb.e ], [ 3, %bb.g ], [ 2, %bb.h ] ; 2 uses
  %i.ca = call i64 @_ZN4llvm10RISCVVType11decodeVLMULENS0_5VLMULE(i8 noundef zeroext %.sroa.42.0) #27 ; 3 uses
  %i.cb = icmp ne i8 %i.j, %.sroa.42.0
  %i.cc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL23PreferWholeRegisterMove, i64 120), align 8, !range !48
  %i.cd = trunc nuw i8 %i.cc to i1
  %or.cond = select i1 %i.cb, i1 true, i1 %i.cd
  br i1 %or.cond, label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread, label %bb.j

bb.j:                                             ; preds = %"_ZZNK4llvm14RISCVInstrInfo17copyPhysRegVectorERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_10MCRegisterES9_bPKNS_15MCRegisterClassEENK3$_0clEtt.exit"
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !101, !nonnull !49, !align !102 ; 2 uses
  %i.cf = load ptr, ptr %i.ab, align 8, !tbaa !75
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 36
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !76
  %.fr.i = freeze i32 %i.ch                       ; 5 uses
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !35
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 200
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call noundef ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(519768) %i.ce) #27, !inline_history !653
  %i.cm = add i32 %.fr.i, -1
  %i.cn = icmp ult i32 %i.cm, 1073741823
  br label %.outer.outer.i

.outer.outer.i:                                   ; preds = %bb.o, %bb.j
  %.sroa.0118.1 = phi ptr [ null, %bb.j ], [ %.sroa.0118.2.ph, %bb.o ]
  %.sroa.059.0.ph.ph.i = phi ptr [ %2, %bb.j ], [ %.sroa.0.1.i.i.i.i, %bb.o ]
  %.042.ph.ph.i = phi i1 [ false, %bb.j ], [ true, %bb.o ] ; 2 uses
  %.040.ph.ph.i = phi i32 [ 0, %bb.j ], [ %.141.i, %bb.o ] ; 2 uses
  br label %.outer.i.outer

.outer.i.outer:                                   ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.thread.i, %.outer.outer.i
  %.sroa.0118.2.ph = phi ptr [ %.sroa.0.1.i.i.i.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.thread.i ], [ %.sroa.0118.1, %.outer.outer.i ] ; 15 uses
  %.sroa.059.0.ph.i.ph = phi ptr [ %.sroa.0.1.i.i.i.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.thread.i ], [ %.sroa.059.0.ph.ph.i, %.outer.outer.i ]
  %.044.ph.i.ph = phi i8 [ 1, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.thread.i ], [ 0, %.outer.outer.i ]
  br label %.outer.i.outer279

.outer.i.outer279.backedge:                       ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.us.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.i
  %.044.ph.i.ph281.be = phi i8 [ %.347.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.i ], [ %.347.us.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread73.us.i ]
  br label %.outer.i.outer279

.outer.i.outer279:                                ; preds = %.outer.i.outer279.backedge, %.outer.i.outer
  %.sroa.059.0.ph.i.ph280 = phi ptr [ %.sroa.059.0.ph.i.ph, %.outer.i.outer ], [ %.sroa.0.1.i.i.i.i, %.outer.i.outer279.backedge ]
  %.044.ph.i.ph281 = phi i8 [ %.044.ph.i.ph, %.outer.i.outer ], [ %.044.ph.i.ph281.be, %.outer.i.outer279.backedge ] ; 3 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.i.backedge, %.outer.i.outer279
  %.sroa.059.0.ph.i = phi ptr [ %.sroa.059.0.ph.i.ph280, %.outer.i.outer279 ], [ %.sroa.0.1.i.i.i.i, %.outer.i.backedge ]
  %i.co = load ptr, ptr %i.ac, align 8, !tbaa !217
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, %.outer.i
  %.sroa.059.0.i = phi ptr [ %.sroa.0.1.i.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i ], [ %.sroa.059.0.ph.i, %.outer.i ] ; 2 uses
  %.not96.i = icmp eq ptr %.sroa.059.0.i, %i.co
  br i1 %.not96.i, label %_ZL22isConvertibleToVMV_V_VRKN4llvm14RISCVSubtargetERKNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEERS9_NS_10RISCVVType5VLMULE.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.059.0.i, align 8
  %i.cp = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8
  %i.cq = inttoptr i64 %i.cp to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i = load i64, ptr %i.cq, align 8
  %i.cr = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i, 4
  %.not.i5.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i5.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 44
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !218
  %i.cu = and i32 %i.ct, 4
  %.not45.i.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not45.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.cw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %i.cq, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i, align 8
  %i.cv = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i, -8
  %i.cw = inttoptr i64 %i.cv to ptr               ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 44
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !218
  %i.cz = and i32 %i.cy, 4
  %.not4.i.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !2

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %bb.l
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.cq, %bb.l ], [ %i.cq, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.cw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ] ; 18 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !219
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !221 ; 2 uses
  %i.de = and i64 %i.dd, 16
  %.not97.i = icmp eq i64 %i.de, 0
  br i1 %.not97.i, label %.lr.ph.i.i.i, label %bb.k, !llvm.loop !654

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 16 ; 2 uses
end_hunk_0
