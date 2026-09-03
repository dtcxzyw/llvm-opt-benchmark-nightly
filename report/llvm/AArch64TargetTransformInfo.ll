Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64TargetTransformInfo?download=true
inline.NumInlined: 13233
inline.NumDeleted: 4962
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNK4llvm14AArch64TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE:bb.a
  %i.ad = call noundef i32 @_ZNK4llvm18TargetLoweringBase22InstructionOpcodeToISDEj(ptr noundef nonnull align 8 dereferenceable(518435) %i.ab, i32 noundef %i.ac) #30 ; 10 uses
  %i.ae = add i32 %i.ad, -99
  %or.cond11 = icmp ult i32 %i.ae, 5
  br i1 %or.cond11, label %bb.m, label %bb.q

bb.m:                                             ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.af = load i32, ptr %i.b, align 4, !tbaa !315
  %.sroa.0389.0.copyload = load i64, ptr %9, align 8
  %.sroa.0388.0.copyload = load i64, ptr %10, align 8
  %i.ag = or disjoint i32 %i.ad, -104
  %i.ah = icmp samesign ult i32 %i.ag, -2
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.ak, align 8
  %i.al = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34, !inline_history !776 ; 6 uses
  store ptr %0, ptr %i.al, align 16, !tbaa !317
  %.sroa.41315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.a, ptr %.sroa.41315.0..sroa_idx, align 8, !tbaa !318
  %.sroa.51316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.b, ptr %.sroa.51316.0..sroa_idx, align 16, !tbaa !308
  %.sroa.61317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %9, ptr %.sroa.61317.0..sroa_idx, align 8, !tbaa !320
  %.sroa.71318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %10, ptr %.sroa.71318.0..sroa_idx, align 16, !tbaa !320
  store ptr %i.al, ptr %12, align 8, !tbaa !308
  store ptr @"_ZNSt17_Function_handlerIFN4llvm15InstructionCostEPNS0_4TypeEEZNKS0_14AArch64TTIImpl22getArithmeticInstrCostEjS3_NS0_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS0_8ArrayRefIPKNS0_5ValueEEEPKNS0_11InstructionEE3$_0E9_M_invokeERKSt9_Any_dataOS3_", ptr %i.aj, align 8, !tbaa !322
  store ptr @"_ZNSt17_Function_handlerIFN4llvm15InstructionCostEPNS0_4TypeEEZNKS0_14AArch64TTIImpl22getArithmeticInstrCostEjS3_NS0_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoES8_NS0_8ArrayRefIPKNS0_5ValueEEEPKNS0_11InstructionEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation", ptr %i.ai, align 8, !tbaa !31
  call void @_ZNK4llvm14AArch64TTIImpl22getFP16BF16PromoteCostEPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_bbSt8functionIFNS_15InstructionCostES2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.218") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %2, i32 noundef %i.af, i64 %.sroa.0389.0.copyload, i64 %.sroa.0388.0.copyload, i1 noundef zeroext true, i1 noundef zeroext %i.ah, ptr nofree noundef nonnull align 8 dereferenceable(32) %12)
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !31 ; 2 uses
  %.not.i454 = icmp eq ptr %i.am, null
  br i1 %.not.i454, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3) #30, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.m, %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !324, !range !36, !noundef !37
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.o, label %.critedge445

bb.o:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %.sroa.01409.0.copyload = load i64, ptr %11, align 8, !tbaa !108
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.42.0.copyload = load i32, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.critedge27

.critedge445:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.ar = load i32, ptr %i.c, align 8             ; 2 uses
  %i.as = and i32 %i.ar, 254
  %spec.select.i.i455 = icmp eq i32 %i.as, 18
  br i1 %spec.select.i.i455, label %bb.p, label %_ZNK4llvm4Type13getScalarTypeEv.exit

bb.p:                                             ; preds = %.critedge445
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !294
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !236
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit

_ZNK4llvm4Type13getScalarTypeEv.exit:             ; preds = %.critedge445, %bb.p
  %i.aw = phi i32 [ %.pre, %bb.p ], [ %i.ar, %.critedge445 ]
  %i.ax = and i32 %i.aw, 255
  %i.ay = icmp eq i32 %i.ax, 5
  br i1 %i.ay, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit, label %bb.q

_ZN4llvmmlERKNS_15InstructionCostES2_.exit:       ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %i.az = load i32, ptr %i.b, align 4, !tbaa !315
  %i.ba = icmp eq i32 %i.az, 2
  %i.bb = select i1 %i.ba, i64 4, i64 40
  %i.bc = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.bb, i64 %.sroa.019.1.lcssa.sink.i) ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  %i.be = extractvalue { i64, i1 } %i.bc, 0
  %i.bf = ashr exact i64 %i.be, 2
  %i.bg = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  %spec.select = select i1 %i.bg, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i.i = select i1 %i.bd, i64 %spec.select, i64 %i.bf
  br label %.critedge27

bb.q:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit, %_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !45
  %.sroa.0378.0.copyload = load ptr, ptr %6, align 8, !tbaa !326
  %.sroa.2379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2379.0.copyload = load i64, ptr %.sroa.2379.0..sroa_idx, align 8, !tbaa !108
  %i.bi = call noundef ptr @_ZNK4llvm14AArch64TTIImpl27isBinExtWideningInstructionEjPNS_4TypeENS_8ArrayRefIPKNS_5ValueEEES2_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.bh, ptr noundef nonnull %2, ptr %.sroa.0378.0.copyload, i64 %.sroa.2379.0.copyload, ptr noundef null) ; 4 uses
  %.not440 = icmp eq ptr %i.bi, null
  br i1 %.not440, label %.critedge447, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not441 = icmp eq ptr %i.bi, %2
  br i1 %.not441, label %.critedge27, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = load i32, ptr %i.a, align 4, !tbaa !45
  %i.bk = load i32, ptr %i.b, align 4, !tbaa !315
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.bl = call { i64, i32 } @_ZNK4llvm14AArch64TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.bj, ptr noundef nonnull %i.bi, i32 noundef %i.bk, i64 0, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.168") align 8 %13, ptr noundef null) ; 2 uses
  %.fca.0.extract370 = extractvalue { i64, i32 } %i.bl, 0
  %.fca.1.extract371 = extractvalue { i64, i32 } %i.bl, 1
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !315
  %i.bn = call { i64, i32 } @_ZNK4llvm14AArch64TTIImpl16getCastInstrCostEjPNS_4TypeES2_NS_19TargetTransformInfo15CastContextHintENS3_14TargetCostKindEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 40, ptr noundef nonnull %2, ptr noundef nonnull %i.bi, i8 noundef zeroext 0, i32 noundef %i.bm, ptr noundef null) ; 2 uses
  %.fca.0.extract366 = extractvalue { i64, i32 } %i.bn, 0
  %.fca.1.extract367 = extractvalue { i64, i32 } %i.bn, 1
  %i.bo = icmp eq i32 %.fca.1.extract367, 1
  %spec.select.i462 = select i1 %i.bo, i32 1, i32 %.fca.1.extract371
  %.0.i.i463 = call i64 @llvm.sadd.sat.i64(i64 %.fca.0.extract370, i64 %.fca.0.extract366)
  br label %.critedge27

.critedge447:                                     ; preds = %bb.q
  switch i32 %i.ad, label %bb.t [
    i32 59, label %.critedge27
    i32 60, label %.critedge27
    i32 61, label %bb.u
    i32 64, label %bb.ai
    i32 62, label %bb.ai
    i32 63, label %bb.bi
    i32 65, label %bb.bi
    i32 195, label %.critedge27
    i32 194, label %.critedge27
    i32 193, label %.critedge27
    i32 200, label %.critedge27
    i32 199, label %.critedge27
    i32 198, label %.critedge27
    i32 260, label %bb.ck
    i32 99, label %.critedge25
    i32 100, label %.critedge25
    i32 101, label %bb.cs
    i32 102, label %bb.cs
    i32 103, label %bb.cv
  ]

bb.t:                                             ; preds = %.critedge447
  %i.bp = load i32, ptr %i.a, align 4, !tbaa !45
  %i.bq = load i32, ptr %i.b, align 4, !tbaa !315
  %.sroa.0361.0.copyload = load i64, ptr %9, align 8
  %.sroa.0360.0.copyload = load i64, ptr %10, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.br = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.bp, ptr noundef nonnull %2, i32 noundef %i.bq, i64 %.sroa.0361.0.copyload, i64 %.sroa.0360.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.168") align 8 %14, ptr noundef null) ; 2 uses
  %.fca.0.extract356 = extractvalue { i64, i32 } %i.br, 0
  %.fca.1.extract357 = extractvalue { i64, i32 } %i.br, 1
  br label %.critedge27

bb.u:                                             ; preds = %.critedge447
  %i.bs = load i32, ptr %i.b, align 4, !tbaa !315 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !110
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 451
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !778, !range !36, !noundef !37
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = select i1 %i.by, i64 16, i64 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ca = phi i64 [ 4, %bb.u ], [ %i.bz, %bb.v ]  ; 4 uses
  %i.cb = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #31
  %i.cc = icmp ugt i32 %i.cb, 64
  br i1 %i.cc, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.cd = load i32, ptr %i.c, align 8
  %i.ce = and i32 %i.cd, 255
  %i.cf = icmp eq i32 %i.ce, 18
  br i1 %i.cf, label %bb.y, label %.thread1419

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !242
  %.fr1533 = freeze i32 %i.ch
  %i.ci = zext i32 %.fr1533 to i64
  %i.cj = shl nuw nsw i64 %i.ci, 2
  br label %.thread1419

.thread1419:                                      ; preds = %bb.y, %bb.x
  %i.ck = phi i64 [ %i.cj, %bb.y ], [ 4, %bb.x ]  ; 4 uses
  %i.cl = add i64 %.sroa.019.1.lcssa.sink.i, 2305843009213693952
  %i.cm = icmp ult i64 %i.cl, 4611686018427387904
  %i.cn = shl i64 %.sroa.019.1.lcssa.sink.i, 2
  %i.co = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  %i.cp = select i1 %i.co, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i.i471 = select i1 %i.cm, i64 %i.cn, i64 %i.cp
  %i.cq = sdiv i64 %.0.i.i471, %i.ck              ; 3 uses
  %i.cr = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.cq, i64 %i.cq) ; 2 uses
  %i.cs = extractvalue { i64, i1 } %i.cr, 1
  br i1 %i.cs, label %bb.z, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit483

bb.z:                                             ; preds = %.thread1419
  %or.cond1476.not = icmp eq i64 %i.cq, 0
  br i1 %or.cond1476.not, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit483.thread, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit483.thread1566

_ZN4llvmmlERKNS_15InstructionCostES2_.exit483:    ; preds = %.thread1419
  %i.ct = extractvalue { i64, i1 } %i.cr, 0
  %32 = lshr i64 %i.ct, 2                         ; 2 uses
  %i.cu = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %32, i64 %i.ck) ; 2 uses
  %i.cv = extractvalue { i64, i1 } %i.cu, 1
  br i1 %i.cv, label %bb.aa, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit494

_ZN4llvmmlERKNS_15InstructionCostES2_.exit483.thread1566: ; preds = %bb.z
  %i.cw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ck, i64 9223372036854775807) ; 2 uses
  %i.cx = extractvalue { i64, i1 } %i.cw, 1
  br i1 %i.cx, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit494.thread, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit494

_ZN4llvmmlERKNS_15InstructionCostES2_.exit483.thread: ; preds = %bb.z
  %i.cy = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ck, i64 -9223372036854775808) ; 2 uses
  %i.cz = extractvalue { i64, i1 } %i.cy, 1
  br i1 %i.cz, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit494.thread1572, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit494

bb.aa:                                            ; preds = %_ZN4llvmmlERKNS_15InstructionCostES2_.exit483
  %.not1535 = icmp eq i64 %32, 0
  br i1 %.not1535, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit494.thread1572, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit494.thread

_ZN4llvmmlERKNS_15InstructionCostES2_.exit494.thread: ; preds = %bb.aa, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit483.thread1566
  %i.da = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ca, i64 9223372036854775807) ; 2 uses
  %i.db = extractvalue { i64, i1 } %i.da, 1
  %i.dc = extractvalue { i64, i1 } %i.da, 0
  %i.dd = ashr exact i64 %i.dc, 2
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit494.thread1572

_ZN4llvmmlERKNS_15InstructionCostES2_.exit494:    ; preds = %_ZN4llvmmlERKNS_15InstructionCostES2_.exit483, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit483.thread, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit483.thread1566
  %i.de = phi { i64, i1 } [ %i.cy, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit483.thread ], [ %i.cu, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit483 ], [ %i.cw, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit483.thread1566 ]
  %.fr1583 = freeze { i64, i1 } %i.de
  %i.df = extractvalue { i64, i1 } %.fr1583, 0    ; 2 uses
  %i.dg = sdiv i64 %i.df, 4
  %i.dh = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.dg, i64 %i.ca) ; 2 uses
  %i.di = extractvalue { i64, i1 } %i.dh, 1
  %i.dj = extractvalue { i64, i1 } %i.dh, 0
  %i.dk = ashr exact i64 %i.dj, 2
  %i.dl = icmp sgt i64 %i.df, 3
  %spec.select1580 = select i1 %i.dl, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit494.thread1572

_ZN4llvmmlERKNS_15InstructionCostES2_.exit494.thread1572: ; preds = %bb.aa, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit483.thread, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit494, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit494.thread
  %i.dm = phi i64 [ %i.dd, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit494.thread ], [ %i.dk, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit494 ], [ 0, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit483.thread ], [ 0, %bb.aa ]
  %i.dn = phi i1 [ %i.db, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit494.thread ], [ %i.di, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit494 ], [ true, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit483.thread ], [ true, %bb.aa ]
  %i.do = phi i64 [ 9223372036854775807, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit494.thread ], [ %spec.select1580, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit494 ], [ -9223372036854775808, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit483.thread ], [ -9223372036854775808, %bb.aa ]
  %.0.i.i499 = select i1 %i.dn, i64 %i.do, i64 %i.dm
  br label %.critedge27

bb.ab:                                            ; preds = %bb.w
  switch i16 %.sroa.025.0.lcssa38.sink.i, label %.critedge27 [
    i16 94, label %bb.ac
    i16 190, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit574
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !110
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 513
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !232, !range !36, !noundef !37
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit516, label %bb.ad

_ZN4llvmmlERKNS_15InstructionCostES2_.exit516:    ; preds = %bb.ac
  %i.du = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %i.ca) ; 2 uses
  %i.dv = extractvalue { i64, i1 } %i.du, 1
  %i.dw = extractvalue { i64, i1 } %i.du, 0
  %i.dx = ashr exact i64 %i.dw, 2
  %i.dy = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  %spec.select1478 = select i1 %i.dy, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i.i510 = select i1 %i.dv, i64 %spec.select1478, i64 %i.dx
  br label %.critedge27

bb.ad:                                            ; preds = %bb.ac
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !242 ; 2 uses
  %i.eb = load i32, ptr %i.c, align 8
  %i.ec = zext i32 %i.ea to i64
  %i.ed = shl nuw nsw i64 %i.ec, 2
  %i.ee = load i32, ptr %i.a, align 4, !tbaa !45
  %i.ef = and i32 %i.eb, 254
  %spec.select.i.i521 = icmp eq i32 %i.ef, 18
  br i1 %spec.select.i.i521, label %bb.ae, label %_ZNK4llvm4Type13getScalarTypeEv.exit523

bb.ae:                                            ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !294
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !236
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit523

_ZNK4llvm4Type13getScalarTypeEv.exit523:          ; preds = %bb.ad, %bb.ae
  %.0.i522 = phi ptr [ %i.ei, %bb.ae ], [ %2, %bb.ad ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.ej = call { i64, i32 } @_ZNK4llvm14AArch64TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.ee, ptr noundef %.0.i522, i32 noundef %i.bs, i64 0, i64 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef.168") align 8 %15, ptr noundef null) ; 2 uses
  %.fca.0.extract323 = extractvalue { i64, i32 } %i.ej, 0 ; 2 uses
  %.fca.1.extract324 = extractvalue { i64, i32 } %i.ej, 1
  %i.ek = load i32, ptr %i.b, align 4, !tbaa !315
  %i.el = icmp eq i32 %i.ek, 2
  br i1 %i.el, label %_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE.exit.thread.thread, label %_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE.exit.thread

_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE.exit.thread.thread: ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit523
  %i.em = call i64 @llvm.sadd.sat.i64(i64 %.fca.0.extract323, i64 8)
  br label %_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE.exit997

_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE.exit.thread: ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit523
  %i.en = load ptr, ptr %i.dp, align 8, !tbaa !110
  %i.eo = call noundef i32 @_ZNK4llvm16AArch64Subtarget30getVectorInsertExtractBaseCostEv(ptr noundef nonnull align 8 dereferenceable(519928) %i.en) #30
  %i.ep = zext i32 %i.eo to i64
  %i.eq = shl nuw nsw i64 %i.ep, 3
  %.pre1554.a = load i32, ptr %i.b, align 4, !tbaa !315
  %i.er = icmp eq i32 %.pre1554.a, 2
  %i.es = call i64 @llvm.sadd.sat.i64(i64 %.fca.0.extract323, i64 %i.eq) ; 2 uses
  br i1 %i.er, label %_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE.exit997, label %bb.af

bb.af:                                            ; preds = %_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE.exit.thread
  %i.et = load ptr, ptr %i.dp, align 8, !tbaa !110
  %i.eu = call noundef i32 @_ZNK4llvm16AArch64Subtarget30getVectorInsertExtractBaseCostEv(ptr noundef nonnull align 8 dereferenceable(519928) %i.et) #30
  %i.ev = zext i32 %i.eu to i64
  %i.ew = shl nuw nsw i64 %i.ev, 2
  br label %_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE.exit997

_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE.exit997: ; preds = %_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE.exit.thread.thread, %_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE.exit.thread, %bb.af
  %i.ex = phi i64 [ %i.es, %_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE.exit.thread ], [ %i.es, %bb.af ], [ %i.em, %_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE.exit.thread.thread ]
  %.sroa.023.2.i994 = phi i64 [ 4, %_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE.exit.thread ], [ %i.ew, %bb.af ], [ 4, %_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE.exit.thread.thread ]
  %.0.i.i551 = call i64 @llvm.sadd.sat.i64(i64 %i.ex, i64 %.sroa.023.2.i994) ; 2 uses
  %i.ey = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ed, i64 %.0.i.i551) ; 2 uses
  %i.ez = extractvalue { i64, i1 } %i.ey, 1
  br i1 %i.ez, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE.exit997
  %.not1532 = icmp ne i32 %i.ea, 0
  %i.fa = icmp sgt i64 %.0.i.i551, 0
  %or.cond1537.a = select i1 %.not1532, i1 %i.fa, i1 false
  %spec.select1541 = select i1 %or.cond1537.a, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit563

bb.ah:                                            ; preds = %_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE.exit997
  %i.fb = extractvalue { i64, i1 } %i.ey, 0
  %i.fc = ashr exact i64 %i.fb, 2
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit563

_ZN4llvmmlERKNS_15InstructionCostES2_.exit563:    ; preds = %bb.ag, %bb.ah
  %.0.i.i557 = phi i64 [ %i.fc, %bb.ah ], [ %spec.select1541, %bb.ag ]
  %i.fd = icmp eq i32 %.fca.1.extract324, 1
  %spec.select.i558 = zext i1 %i.fd to i32
  br label %.critedge27

_ZN4llvmmlERKNS_15InstructionCostES2_.exit574:    ; preds = %bb.ab
  %i.fe = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %i.ca) ; 2 uses
  %i.ff = extractvalue { i64, i1 } %i.fe, 1
  %i.fg = extractvalue { i64, i1 } %i.fe, 0
  %i.fh = ashr exact i64 %i.fg, 2
  %i.fi = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  %spec.select1480 = select i1 %i.fi, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i.i568 = select i1 %i.ff, i64 %spec.select1480, i64 %i.fh
  br label %.critedge27

bb.ai:                                            ; preds = %.critedge447, %.critedge447
  %i.fj = load i32, ptr %10, align 8, !tbaa !782  ; 2 uses
  %or.cond1481 = icmp eq i32 %i.fj, 2
  br i1 %or.cond1481, label %bb.aj, label %bb.bc

bb.aj:                                            ; preds = %bb.ai
  %i.fk = load i32, ptr %i.b, align 4, !tbaa !315
  %i.fl = load i32, ptr %9, align 8, !tbaa !782
  %.sroa.0.0.insert.ext.i = zext i32 %i.fl to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.fm = call { i64, i32 } @_ZNK4llvm14AArch64TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 14, ptr noundef nonnull %2, i32 noundef %i.fk, i64 %.sroa.0.0.insert.ext.i, i64 2, ptr noundef nonnull byval(%"class.llvm::ArrayRef.168") align 8 %16, ptr noundef null) ; 2 uses
  %.fca.0.extract289 = extractvalue { i64, i32 } %i.fm, 0 ; 13 uses
  %.fca.1.extract290 = extractvalue { i64, i32 } %i.fm, 1 ; 6 uses
  %i.fn = load i32, ptr %i.b, align 4, !tbaa !315
  %i.fo = load i32, ptr %9, align 8, !tbaa !782
  %.sroa.0.0.insert.ext.i578 = zext i32 %i.fo to i64
  %i.fp = load i32, ptr %10, align 8, !tbaa !782
  %.sroa.0.0.insert.ext.i579 = zext i32 %i.fp to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %i.fq = call { i64, i32 } @_ZNK4llvm14AArch64TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 28, ptr noundef nonnull %2, i32 noundef %i.fn, i64 %.sroa.0.0.insert.ext.i578, i64 %.sroa.0.0.insert.ext.i579, ptr noundef nonnull byval(%"class.llvm::ArrayRef.168") align 8 %17, ptr noundef null) ; 2 uses
  %.fca.0.extract283 = extractvalue { i64, i32 } %i.fq, 0 ; 10 uses
  %.fca.1.extract284 = extractvalue { i64, i32 } %i.fq, 1 ; 5 uses
  %i.fr = load i32, ptr %i.b, align 4, !tbaa !315
  %i.fs = load i32, ptr %9, align 8, !tbaa !782
  %.sroa.0.0.insert.ext.i580 = zext i32 %i.fs to i64
  %i.ft = load i32, ptr %10, align 8, !tbaa !782
  %.sroa.0.0.insert.ext.i581 = zext i32 %i.ft to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.fu = call { i64, i32 } @_ZNK4llvm14AArch64TTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 18, ptr noundef nonnull %2, i32 noundef %i.fr, i64 %.sroa.0.0.insert.ext.i580, i64 %.sroa.0.0.insert.ext.i581, ptr noundef nonnull byval(%"class.llvm::ArrayRef.168") align 8 %18, ptr noundef null) ; 2 uses
  %.fca.0.extract277 = extractvalue { i64, i32 } %i.fu, 0 ; 5 uses
  %.fca.1.extract278 = extractvalue { i64, i32 } %i.fu, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.fv = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.fw = load ptr, ptr %i.n, align 8, !tbaa !283, !nonnull !37, !align !107
  %i.fx = call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.fv, ptr noundef nonnull align 8 dereferenceable(912) %i.fw, ptr noundef nonnull %2, i1 noundef zeroext false) ; 2 uses
  %i.fy = extractvalue { i16, ptr } %i.fx, 0      ; 5 uses
  store i16 %i.fy, ptr %19, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ga = extractvalue { i16, ptr } %i.fx, 1
  store ptr %i.ga, ptr %i.fz, align 8
  %.not.i582 = icmp eq i16 %i.fy, 0               ; 2 uses
  br i1 %.not.i582, label %_ZNK4llvm3EVT15isScalarIntegerEv.exit, label %.split1437

.split1437:                                       ; preds = %bb.aj
  %i.gb = add i16 %i.fy, -2
  %spec.select.i.i583 = icmp ult i16 %i.gb, 10
  br i1 %spec.select.i.i583, label %bb.ak, label %.split1440

_ZNK4llvm3EVT15isScalarIntegerEv.exit:            ; preds = %bb.aj
  %i.gc = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedScalarIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %19) #31
  br i1 %i.gc, label %bb.al, label %_ZNK4llvm3EVT8isVectorEv.exit

bb.ak:                                            ; preds = %.split1437
  %i.gd = zext nneg i16 %i.fy to i64
  %i.ge = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.gd ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.gf, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.ge, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.al:                                            ; preds = %_ZNK4llvm3EVT15isScalarIntegerEv.exit
end_hunk_0
