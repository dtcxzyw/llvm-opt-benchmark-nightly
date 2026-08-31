Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstrEmitter?download=true
inline.NumInlined: 1821
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4llvm19MachineInstrBuilder20addConstantPoolIndexEjij:bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !94, !alias.scope !422
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %1, ptr %i.e, align 8, !tbaa !100, !alias.scope !422
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %2, ptr %i.f, align 4, !tbaa !100, !alias.scope !422
  %i.g = ashr i32 %2, 31
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.g, ptr %i.h, align 8, !tbaa !100, !alias.scope !422
  %i.i = shl i32 %3, 8
  %i.j = and i32 %i.i, 1048320
  %i.k = or disjoint i32 %i.j, 6
  store i32 %i.k, ptr %4, align 8, !alias.scope !422
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(1065) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4llvm19MachineInstrBuilder17addExternalSymbolEPKcj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293
  %i.c = load ptr, ptr %0, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !94, !alias.scope !425
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.e, align 8, !tbaa !100, !alias.scope !425
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !100, !alias.scope !425
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.g, align 8, !tbaa !100, !alias.scope !425
  %i.h = shl i32 %2, 8
  %i.i = and i32 %i.h, 1048320
  %i.j = or disjoint i32 %i.i, 9
  store i32 %i.j, ptr %3, align 8, !alias.scope !425
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(1065) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4llvm19MachineInstrBuilder15addBlockAddressEPKNS_12BlockAddressElj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293
  %i.c = load ptr, ptr %0, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !94, !alias.scope !428
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.e, align 8, !tbaa !100, !alias.scope !428
  %i.f = trunc i64 %2 to i32
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !100, !alias.scope !428
  %i.h = lshr i64 %2, 32
  %i.i = trunc nuw i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.i, ptr %i.j, align 8, !tbaa !100, !alias.scope !428
  %i.k = shl i32 %3, 8
  %i.l = and i32 %i.k, 1048320
  %i.m = or disjoint i32 %i.l, 11
  store i32 %i.m, ptr %4, align 8, !alias.scope !428
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(1065) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4llvm19MachineInstrBuilder14addTargetIndexEjlj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293
  %i.c = load ptr, ptr %0, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !94, !alias.scope !431
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %1, ptr %i.e, align 8, !tbaa !100, !alias.scope !431
  %i.f = trunc i64 %2 to i32
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !100, !alias.scope !431
  %i.h = lshr i64 %2, 32
  %i.i = trunc nuw i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.i, ptr %i.j, align 8, !tbaa !100, !alias.scope !431
  %i.k = shl i32 %3, 8
  %i.l = and i32 %i.k, 1048320
  %i.m = or disjoint i32 %i.l, 7
  store i32 %i.m, ptr %4, align 8, !alias.scope !431
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(1065) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN4llvm12InstrEmitter18ConstrainForSubRegENS_8RegisterEjNS_3MVTEbRKNS_8DebugLocE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0, i32 %1, i32 noundef %2, i16 %3, i1 noundef zeroext %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) local_unnamed_addr #2 align 2 {
bb.a:
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = and i32 %1, 2147483647
  %i.e = zext nneg i32 %i.d to i64
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.e
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.g, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !84   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(316) %i.k, ptr noundef %i.i, i32 noundef %2) #14 ; 3 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.critedge27, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not24 = icmp eq ptr %i.o, %i.i
  br i1 %.not24, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.q = tail call noundef ptr @_ZN4llvm19MachineRegisterInfo17constrainRegClassENS_8RegisterEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(520) %i.p, i32 %1, ptr noundef nonnull %i.o, i32 noundef 4) #14
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.critedge27, label %.critedge

.critedge27:                                      ; preds = %bb.a, %bb.c
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !84   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 528
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(518435) %i.u, i16 %3, i1 noundef zeroext %4) #14
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 256
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(316) %i.s, ptr noundef %i.y, i32 noundef %2) #14
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.ae = tail call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.ad, ptr noundef %i.ac, ptr nonnull @.str, i64 0) #14 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !92
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.03.0.copyload = load ptr, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %.sroa.02.0.copyload = load ptr, ptr %5, align 8, !tbaa !93
  store ptr %.sroa.02.0.copyload, ptr %7, align 8, !tbaa !93
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !73
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !74
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -640
  %i.ao = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.ag, ptr %.sroa.03.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i32 %i.ae) ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ao, 0
  %i.aq = extractvalue { ptr, ptr } %i.ao, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !94, !alias.scope !434
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %1, ptr %i.as, align 4, !tbaa !100, !alias.scope !434
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false), !alias.scope !434
  store i32 0, ptr %6, align 8, !alias.scope !434
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noundef nonnull align 8 dereferenceable(1065) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c, %.critedge27
  %.sroa.021.0 = phi i32 [ %i.ae, %.critedge27 ], [ %1, %bb.c ], [ %1, %bb.b ]
  ret i32 %.sroa.021.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm12InstrEmitter14EmitSubregNodeEPNS_6SDNodeERNS_13SmallDenseMapINS_7SDValueENS_8RegisterELj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEEbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(400) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::Register", align 4   ; 9 uses
  %11 = alloca %"class.llvm::Register", align 4   ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %13 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %14 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 7 uses
  %15 = alloca %"struct.std::pair.2", align 8     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !70   ; 4 uses
  %i.d = xor i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0154.0183 = load ptr, ptr %i.e, align 8, !tbaa !65 ; 2 uses
  %.not180184 = icmp eq ptr %.sroa.0154.0183, null
  br i1 %.not180184, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0154.0185 = phi ptr [ %.sroa.0154.0, %bb.d ], [ %.sroa.0154.0183, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0154.0185, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !70
  %i.j = icmp eq i32 %i.i, 51
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !71   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.o = icmp eq ptr %i.n, %1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %.sroa.0.0.copyload.i108 = load i32, ptr %i.r, align 8, !tbaa !35 ; 2 uses
  %i.s = icmp slt i32 %.sroa.0.0.copyload.i108, 0
  br i1 %i.s, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0154.0185, i64 32
  %.sroa.0154.0 = load ptr, ptr %i.t, align 8, !tbaa !65 ; 2 uses
  %.not180 = icmp eq ptr %.sroa.0154.0, null
  br i1 %.not180, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.0159.4 = phi i32 [ 0, %bb.a ], [ %.sroa.0.0.copyload.i108, %bb.c ], [ 0, %bb.d ] ; 5 uses
  %i.u = icmp eq i32 %i.c, -9
  br i1 %i.u, label %bb.e, label %bb.s

bb.e:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !346 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !349
  %i.ae = icmp ult i32 %i.ad, 65
  %i.af = load ptr, ptr %i.ab, align 8
  %spec.select.i.i.i.i = select i1 %i.ae, ptr %i.ab, ptr %i.af
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !100
  %i.ag = trunc i64 %.0.i.i.i.i to i32            ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !51 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !23
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ak, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8
  %i.an = and i8 %i.am, 4
  %i.ao = icmp ne i8 %i.an, 0
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 528
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(518435) %i.ai, i16 %.sroa.0.0.copyload.i.i, i1 noundef zeroext %i.ao) #14 ; 3 uses
  %i.at = load ptr, ptr %i.v, align 8, !tbaa !71  ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !70
  %i.ax = icmp ne i32 %i.aw, 10
  %.not182 = icmp eq ptr %i.au, null
  %.not = or i1 %.not182, %i.ax
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %.sroa.0.0.copyload.i109 = load i32, ptr %i.ay, align 8, !tbaa !35 ; 3 uses
  %i.az = add i32 %.sroa.0.0.copyload.i109, -1
  %i.ba = icmp ult i32 %i.az, 1073741823
  br i1 %i.ba, label %.thread178, label %.critedge

.thread178:                                       ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store i32 0, ptr %10, align 4, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store i32 0, ptr %11, align 4, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.235.0.copyload = load i32, ptr %.sroa.235.0..sroa_idx, align 8, !tbaa !35
  %i.bb = tail call i32 @_ZN4llvm12InstrEmitter5getVRENS_7SDValueERNS_13SmallDenseMapIS1_NS_8RegisterELj16ENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEEE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr nonnull %i.au, i32 %.sroa.235.0.copyload, ptr noundef nonnull align 8 dereferenceable(400) %2)
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g
  %.sroa.037.0 = phi i32 [ %i.bb, %bb.g ], [ %.sroa.0.0.copyload.i109, %bb.f ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !86
  %i.be = tail call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.bd, i32 %.sroa.037.0) #14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store i32 0, ptr %10, align 4, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store i32 0, ptr %11, align 4, !tbaa !437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %.not103 = icmp eq ptr %i.be, null
  br i1 %.not103, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !73 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !63
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(112) %i.bg, ptr noundef nonnull align 8 dereferenceable(80) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #14
  %i.bl = load i32, ptr %i.a, align 4
  %i.bm = icmp eq i32 %i.bl, %i.ag
  %or.cond106 = select i1 %i.bk, i1 %i.bm, i1 false
  br i1 %or.cond106, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr %i.bc, align 8, !tbaa !86 ; 2 uses
  %.sroa.032.0.copyload = load i32, ptr %10, align 4, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = and i32 %.sroa.032.0.copyload, 2147483647
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !87
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bq
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bs, align 8
  %i.bt = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = icmp eq ptr %i.as, %i.bu
  br i1 %i.bv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bw = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.bn, ptr noundef %i.as, ptr nonnull @.str, i64 0) #14 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !92
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.030.0.copyload = load ptr, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.029.0.copyload = load ptr, ptr %i.ca, align 8, !tbaa !93
  store ptr %.sroa.029.0.copyload, ptr %12, align 8, !tbaa !93
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i8 0, i64 24, i1 false)
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !73
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !74
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -640
  %i.cg = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.by, ptr %.sroa.030.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i32 %i.bw) ; 2 uses
  %i.ch = extractvalue { ptr, ptr } %i.cg, 0
  %i.ci = extractvalue { ptr, ptr } %i.cg, 1
  %.sroa.027.0.copyload = load i32, ptr %10, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.cj, align 8, !tbaa !94, !alias.scope !439
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %.sroa.027.0.copyload, ptr %i.ck, align 4, !tbaa !100, !alias.scope !439
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false), !alias.scope !439
  store i32 0, ptr %9, align 8, !alias.scope !439
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(1065) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.cm = load ptr, ptr %i.bc, align 8, !tbaa !86
  %.sroa.026.0.copyload = load i32, ptr %10, align 4, !tbaa !35
  call void @_ZNK4llvm19MachineRegisterInfo14clearKillFlagsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.cm, i32 %.sroa.026.0.copyload) #14
  br label %bb.r

bb.k:                                             ; preds = %bb.i, %bb.h, %.critedge
  %i.cn = icmp slt i32 %.sroa.037.0, 0
  br i1 %i.cn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.co = load ptr, ptr %i.v, align 8, !tbaa !71  ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !38
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !299
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !23
  %i.cu = zext i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cu
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.cv, align 8, !tbaa !26
  %i.cw = load i8, ptr %i.al, align 8
  %i.cx = and i8 %i.cw, 4
  %i.cy = icmp ne i8 %i.cx, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.da = call i32 @_ZN4llvm12InstrEmitter18ConstrainForSubRegENS_8RegisterEjNS_3MVTEbRKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(57) %0, i32 %.sroa.037.0, i32 noundef %i.ag, i16 %.sroa.0.0.copyload.i.i.i, i1 noundef zeroext %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
  br label %bb.m

bb.m:                                             ; preds = %.thread178, %bb.l, %bb.k
  %.sroa.0146.1 = phi i32 [ %i.da, %bb.l ], [ %.sroa.037.0, %bb.k ], [ %.sroa.0.0.copyload.i109, %.thread178 ] ; 3 uses
  %.not104 = icmp eq i32 %.sroa.0159.4, 0
  br i1 %.not104, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !86
  %i.dd = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.dc, ptr noundef %i.as, ptr nonnull @.str, i64 0) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0159.5 = phi i32 [ %i.dd, %bb.n ], [ %.sroa.0159.4, %bb.m ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !92
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.021.0.copyload = load ptr, ptr %i.dg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.020.0.copyload = load ptr, ptr %i.dh, align 8, !tbaa !93
  store ptr %.sroa.020.0.copyload, ptr %13, align 8, !tbaa !93
  %i.di = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, i8 0, i64 24, i1 false)
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !73
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !74
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -640
  %i.do = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.df, ptr %.sroa.021.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i32 %.sroa.0159.5) ; 2 uses
  %i.dp = extractvalue { ptr, ptr } %i.do, 0      ; 2 uses
  %i.dq = extractvalue { ptr, ptr } %i.do, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  %i.dr = icmp slt i32 %.sroa.0146.1, 0
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ds, align 8, !tbaa !94, !alias.scope !442
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %.sroa.0146.1, ptr %i.dt, align 4, !tbaa !100, !alias.scope !442
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dv = shl i32 %i.ag, 8
  %i.dw = and i32 %i.dv, 1048320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 0, i64 16, i1 false), !alias.scope !442
  store i32 %i.dw, ptr %8, align 8, !alias.scope !442
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dq, ptr noundef nonnull align 8 dereferenceable(1065) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !84
  %i.dz = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.dy, i32 %.sroa.0146.1, i32 noundef %i.ag) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ea, align 8, !tbaa !94, !alias.scope !445
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.dz, ptr %i.eb, align 4, !tbaa !100, !alias.scope !445
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i8 0, i64 16, i1 false), !alias.scope !445
  store i32 0, ptr %7, align 8, !alias.scope !445
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dq, ptr noundef nonnull align 8 dereferenceable(1065) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.j
  %.sroa.0159.6 = phi i32 [ %i.bw, %bb.j ], [ %.sroa.0159.5, %bb.q ], [ %.sroa.0159.5, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.y

bb.s:                                             ; preds = %._crit_edge
  %i.ed = icmp eq i32 %i.c, -10                   ; 2 uses
  %16 = icmp eq i32 %i.c, -13
  %or.cond = or i1 %i.ed, %16
  tail call void @llvm.assume(i1 %or.cond)
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !71 ; 6 uses
  br i1 %i.ed, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.0131.0.copyload = load ptr, ptr %i.ef, align 8, !tbaa !42
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.sroa.6132.0.copyload = load i32, ptr %.sroa.6132.0..sroa_idx, align 8, !tbaa !35
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sink199 = phi i64 [ 48, %bb.t ], [ 8, %bb.s ]
  %.sink = phi i64 [ 80, %bb.t ], [ 40, %bb.s ]
  %.sroa.0131.0 = phi ptr [ %.sroa.0131.0.copyload, %bb.t ], [ null, %bb.s ] ; 2 uses
  %.sroa.0125.0.in = phi ptr [ %i.eg, %bb.t ], [ %i.ef, %bb.s ]
  %.sroa.6132.0 = phi i32 [ %.sroa.6132.0.copyload, %bb.t ], [ 0, %bb.s ]
  %.sroa.6127.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.sink199
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.sink
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !38
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 88
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !346 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.en = load i32, ptr %i.em, align 8, !tbaa !349
  %i.eo = icmp ult i32 %i.en, 65
  %i.ep = load ptr, ptr %i.el, align 8
  %spec.select.i.i.i.i114 = select i1 %i.eo, ptr %i.el, ptr %i.ep
  %.098.in = load i64, ptr %spec.select.i.i.i.i114, align 8, !tbaa !100 ; 2 uses
  %.sroa.0125.0 = load ptr, ptr %.sroa.0125.0.in, align 8, !tbaa !42
  %.sroa.6127.0 = load i32, ptr %.sroa.6127.0..sroa_idx128, align 8, !tbaa !35
  %.098 = trunc i64 %.098.in to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !51 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !23
  %.sroa.0.0.copyload.i.i116 = load i16, ptr %i.et, align 8, !tbaa !26
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ev = load i8, ptr %i.eu, align 8
  %i.ew = and i8 %i.ev, 4
  %i.ex = icmp ne i8 %i.ew, 0
  %i.ey = load ptr, ptr %i.er, align 8, !tbaa !63
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 528
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = tail call noundef ptr %i.fa(ptr noundef nonnull align 8 dereferenceable(518435) %i.er, i16 %.sroa.0.0.copyload.i.i116, i1 noundef zeroext %i.ex) #14
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !84 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !63
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 256
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = tail call noundef ptr %i.fg(ptr noundef nonnull align 8 dereferenceable(316) %i.fd, ptr noundef %i.fb, i32 noundef %.098) #14 ; 3 uses
  %i.fi = icmp eq i32 %.sroa.0159.4, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !86 ; 2 uses
  br i1 %i.fi, label %._crit_edge188, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fj = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.fk = and i32 %.sroa.0159.4, 2147483647
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = load ptr, ptr %i.fj, align 8, !tbaa !87
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %i.fl
  %.0.copyload.i.i.i.i.i.i117 = load i64, ptr %i.fn, align 8
  %i.fo = and i64 %.0.copyload.i.i.i.i.i.i117, -5
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 20
  %i.fr = load i16, ptr %i.fq, align 4, !tbaa !448
  %i.fs = zext i16 %i.fr to i32                   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fh, i64 28
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !449
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fv
  %i.fx = lshr i32 %i.fs, 5
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !35
  %i.gb = and i32 %i.fs, 31
  %i.gc = lshr i32 %i.ga, %i.gb
  %i.gd = trunc i32 %i.gc to i1
  br i1 %i.gd, label %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, label %._crit_edge188

._crit_edge188:                                   ; preds = %bb.u, %bb.v
  %i.ge = tail call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %.pre, ptr noundef %i.fh, ptr nonnull @.str, i64 0) #14
  br label %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit

_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit: ; preds = %bb.v, %._crit_edge188
  %.sroa.0159.7 = phi i32 [ %i.ge, %._crit_edge188 ], [ %.sroa.0159.4, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.gf = load ptr, ptr %0, align 8, !tbaa !175   ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.09.0.copyload = load ptr, ptr %i.gg, align 8, !tbaa !93
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !73
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !74
  %i.gl = zext nneg i32 %i.d to i64
  %i.gm = sub nsw i64 0, %i.gl
  %i.gn = getelementptr inbounds [32 x i8], ptr %i.gk, i64 %i.gm
  %i.go = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.gf, ptr noundef nonnull align 8 dereferenceable(32) %i.gn, ptr %.sroa.09.0.copyload, i1 noundef zeroext false) #14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.gp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.gp, align 8, !tbaa !94, !alias.scope !450
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.0159.7, ptr %i.gq, align 4, !tbaa !100, !alias.scope !450
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i8 0, i64 16, i1 false), !alias.scope !450
  store i32 16777216, ptr %6, align 8, !alias.scope !450
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.go, ptr noundef nonnull align 8 dereferenceable(1065) %i.gf, ptr noundef nonnull align 8 dereferenceable(32) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  store ptr %i.gf, ptr %14, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store ptr %i.go, ptr %i.gs, align 8
  %.not181 = icmp eq ptr %.sroa.0131.0, null
  br i1 %.not181, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit
  call void @_ZN4llvm12InstrEmitter10AddOperandERNS_19MachineInstrBuilderENS_7SDValueEjPKNS_11MCInstrDescERNS_13SmallDenseMapIS3_NS_8RegisterELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEEbbb(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr nonnull %.sroa.0131.0, i32 %.sroa.6132.0, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(400) %2, i1 noundef zeroext false, i1 noundef zeroext %3, i1 noundef zeroext %4)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit
  call void @_ZN4llvm12InstrEmitter10AddOperandERNS_19MachineInstrBuilderENS_7SDValueEjPKNS_11MCInstrDescERNS_13SmallDenseMapIS3_NS_8RegisterELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEEbbb(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr %.sroa.0125.0, i32 %.sroa.6127.0, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(400) %2, i1 noundef zeroext false, i1 noundef zeroext %3, i1 noundef zeroext %4)
  %i.gt = and i64 %.098.in, 4294967295
  %i.gu = load ptr, ptr %i.gs, align 8, !tbaa !293
  %i.gv = load ptr, ptr %14, align 8, !tbaa !295
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store i32 1, ptr %5, align 8, !alias.scope !453
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.gw, align 8, !tbaa !94, !alias.scope !453
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.gt, ptr %i.gx, align 8, !tbaa !100, !alias.scope !453
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gu, ptr noundef nonnull align 8 dereferenceable(1065) %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !92
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.03.0.copyload = load ptr, ptr %i.ha, align 8 ; 4 uses
  %i.hb = load ptr, ptr %i.gs, align 8, !tbaa !293 ; 6 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, ptr noundef %i.hb) #14
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.0.copyload, align 8
  %i.hd = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.he = inttoptr i64 %i.hd to ptr
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %.sroa.03.0.copyload, ptr %i.hf, align 8, !tbaa !165
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.hb, align 8
  %i.hg = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.hh = or disjoint i64 %i.hg, %i.hd
  store i64 %i.hh, ptr %i.hb, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store ptr %i.hb, ptr %i.hi, align 8, !tbaa !165
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %.sroa.03.0.copyload, align 8
  %i.hj = ptrtoint ptr %i.hb to i64
  %i.hk = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.hl = or disjoint i64 %i.hk, %i.hj
  store i64 %i.hl, ptr %.sroa.03.0.copyload, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.r
  %.sroa.0159.8 = phi i32 [ %.sroa.0159.6, %bb.r ], [ %.sroa.0159.7, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  store ptr %1, ptr %15, align 8, !tbaa !42
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 0, ptr %.sroa.4119.0..sroa_idx, align 8, !tbaa !35
  %i.hm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store i32 %.sroa.0159.8, ptr %i.hm, align 8, !tbaa !35, !alias.scope !456
  %i.hn = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueENS_8RegisterELj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E24lookupOrInsertIntoBucketIS2_JS3_EEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(20) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.hm), !noalias !459 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  ret void
}

declare noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #3

declare void @_ZNK4llvm19MachineRegisterInfo14clearKillFlagsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #3

declare i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240), i32, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm12InstrEmitter22EmitCopyToRegClassNodeEPNS_6SDNodeERNS_13SmallDenseMapINS_7SDValueENS_8RegisterELj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(400) %2) local_unnamed_addr #2 align 2 {
_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %4 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %5 = alloca %"struct.std::pair.2", align 8      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !346  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !349
  %i.j = icmp ult i32 %i.i, 65
  %i.k = load ptr, ptr %i.g, align 8
  %spec.select.i.i.i.i = select i1 %i.j, ptr %i.g, ptr %i.k
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !84   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !464
  %i.p = and i64 %.0.i.i.i.i, 4294967295
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %i.p
  %i.r = tail call noundef ptr @_ZNK4llvm18TargetRegisterInfo19getAllocatableClassEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(316) %i.m, ptr noundef %i.q) #14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.u = tail call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.t, ptr noundef %i.r, ptr nonnull @.str, i64 0) #14 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !74
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -640 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.aa = load ptr, ptr %0, align 8, !tbaa !175   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.04.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !93
  %i.ac = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr %.sroa.04.0.copyload, i1 noundef zeroext false) #14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !94, !alias.scope !477
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.u, ptr %i.ae, align 4, !tbaa !100, !alias.scope !477
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false), !alias.scope !477
  store i32 16777216, ptr %3, align 8, !alias.scope !477
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, ptr noundef nonnull align 8 dereferenceable(1065) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  store ptr %i.aa, ptr %4, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !71  ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !42
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !35
  call void @_ZN4llvm12InstrEmitter10AddOperandERNS_19MachineInstrBuilderENS_7SDValueEjPKNS_11MCInstrDescERNS_13SmallDenseMapIS3_NS_8RegisterELj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEEbbb(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.sroa.02.0.copyload, i32 %.sroa.2.0.copyload, i32 noundef 1, ptr noundef nonnull %i.z, ptr noundef nonnull align 8 dereferenceable(400) %2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !92
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.01.0.copyload = load ptr, ptr %i.ak, align 8 ; 4 uses
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !293 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef %i.al) #14
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.01.0.copyload, align 8
  %i.an = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %.sroa.01.0.copyload, ptr %i.ap, align 8, !tbaa !165
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.al, align 8
  %i.aq = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.ar = or disjoint i64 %i.aq, %i.an
  store i64 %i.ar, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.al, ptr %i.as, align 8, !tbaa !165
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %.sroa.01.0.copyload, align 8
  %i.at = ptrtoint ptr %i.al to i64
  %i.au = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.av = or disjoint i64 %i.au, %i.at
  store i64 %i.av, ptr %.sroa.01.0.copyload, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %1, ptr %5, align 8, !tbaa !42
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i32 %i.u, ptr %i.aw, align 8, !tbaa !35, !alias.scope !480
  %i.ax = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_7SDValueENS_8RegisterELj16ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEES2_S3_S5_S8_E24lookupOrInsertIntoBucketIS2_JS3_EEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.aw), !noalias !483 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm12InstrEmitter15EmitRegSequenceEPNS_6SDNodeERNS_13SmallDenseMapINS_7SDValueENS_8RegisterELj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEEbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(400) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 {
_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineInstrBuilder", align 8 ; 5 uses
  %7 = alloca %"struct.std::pair.2", align 8      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !346  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !349
  %i.i = icmp ult i32 %i.h, 65
  %i.j = load ptr, ptr %i.f, align 8
  %spec.select.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.j
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !464
  %i.o = and i64 %.0.i.i.i.i, 4294967295
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !86
  %i.s = tail call noundef ptr @_ZNK4llvm18TargetRegisterInfo19getAllocatableClassEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(316) %i.l, ptr noundef %i.p) #14
end_hunk_0
