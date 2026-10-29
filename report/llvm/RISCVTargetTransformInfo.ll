Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVTargetTransformInfo?download=true
inline.NumInlined: 8350
inline.NumDeleted: 3264
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK4llvm12RISCVTTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE:bb.a

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp eq i16 %.sroa.025.0.i, 0
  %spec.select.i = select i1 %.not.i, i16 8, i16 %.sroa.025.0.i
  br label %_ZNK4llvm16BasicTTIImplBaseINS_12RISCVTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit

bb.n:                                             ; preds = %bb.l
  %i.ap = and i8 %i.ao, -5
  %or.cond.i = icmp eq i8 %i.ap, 2
  br i1 %or.cond.i, label %bb.o, label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.o:                                             ; preds = %bb.n
  %i.aq = add i64 %.sroa.019.0.i, -1152921504606846976
  %i.ar = icmp ult i64 %i.aq, -2305843009213693952
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.as = icmp sgt i64 %.sroa.019.0.i, 0
  %spec.select28.i = select i1 %i.as, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = shl nsw i64 %.sroa.019.0.i, 1
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

_ZN4llvm15InstructionCostmLEl.exit.i:             ; preds = %bb.q, %bb.p, %bb.n
  %.sroa.019.1.i = phi i64 [ %.sroa.019.0.i, %bb.n ], [ %i.at, %bb.q ], [ %spec.select28.i, %bb.p ] ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.am, align 8, !tbaa !225, !noalias !810 ; 2 uses
  %.sroa.24.0.copyload.i = load ptr, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !209, !noalias !810 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.sroa.025.0.i, %.sroa.0.0.copyload.i
  %i.au = icmp eq ptr %.sroa.1027.0.i, %.sroa.24.0.copyload.i
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.au, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm16BasicTTIImplBaseINS_12RISCVTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm15InstructionCostmLEl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !810
  br label %bb.l, !llvm.loop !1

_ZNK4llvm16BasicTTIImplBaseINS_12RISCVTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit: ; preds = %bb.l, %_ZN4llvm15InstructionCostmLEl.exit.i, %bb.m
  %.sroa.019.1.lcssa.sink.i = phi i64 [ 0, %bb.m ], [ %.sroa.019.1.i, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ %.sroa.019.0.i, %bb.l ] ; 11 uses
  %.not390391.not = phi i1 [ true, %bb.m ], [ false, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ false, %bb.l ]
  %.not396397 = phi i1 [ false, %bb.m ], [ true, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ true, %bb.l ]
  %.sink.i = phi i32 [ 1, %bb.m ], [ 0, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ 0, %bb.l ]
  %.sroa.025.0.lcssa38.sink.i = phi i16 [ %spec.select.i, %bb.m ], [ %.sroa.025.0.i, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ %.sroa.025.0.i, %bb.l ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !810
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !38
  %i.ax = call noundef i32 @_ZNK4llvm18TargetLoweringBase22InstructionOpcodeToISDEj(ptr noundef nonnull align 8 dereferenceable(518435) %i.av, i32 noundef %i.aw) #24 ; 8 uses
  %i.ay = add i16 %.sroa.025.0.lcssa38.sink.i, -19
  %spec.select.i118 = icmp ult i16 %i.ay, 197
  br i1 %spec.select.i118, label %bb.y, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_12RISCVTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  switch i16 %.sroa.025.0.lcssa38.sink.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i [
    i16 1, label %bb.t
    i16 0, label %_ZNK4llvm18TargetLoweringBase25isOperationLegalOrPromoteEjNS_3EVTEb.exit.thread
  ]

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %i.bb = zext i16 %.sroa.025.0.lcssa38.sink.i to i64 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !325
  %.not.i119 = icmp ne ptr %i.bd, null
  %.not.i17.i = icmp ult i32 %i.ax, 537
  %or.cond.i120 = and i1 %.not.i17.i, %.not.i119
  br i1 %or.cond.i120, label %_ZNK4llvm18TargetLoweringBase25isOperationLegalOrPromoteEjNS_3EVTEb.exit, label %_ZNK4llvm18TargetLoweringBase25isOperationLegalOrPromoteEjNS_3EVTEb.exit.thread

bb.t:                                             ; preds = %bb.s
  %.not.i17.old.i = icmp ult i32 %i.ax, 537
  br i1 %.not.i17.old.i, label %_ZNK4llvm18TargetLoweringBase25isOperationLegalOrPromoteEjNS_3EVTEb.exit, label %_ZNK4llvm18TargetLoweringBase25isOperationLegalOrPromoteEjNS_3EVTEb.exit.thread

_ZNK4llvm18TargetLoweringBase25isOperationLegalOrPromoteEjNS_3EVTEb.exit: ; preds = %bb.t, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i
  %.pre-phi = phi i64 [ %i.bb, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ 1, %bb.t ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 6184
  %i.bf = zext nneg i32 %i.ax to i64
  %i.bg = getelementptr inbounds nuw [537 x i8], ptr %i.be, i64 %.pre-phi
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !316
  %spec.select.i121 = icmp ult i8 %i.bi, 2
  br i1 %spec.select.i121, label %bb.u, label %_ZNK4llvm18TargetLoweringBase25isOperationLegalOrPromoteEjNS_3EVTEb.exit.thread

bb.u:                                             ; preds = %_ZNK4llvm18TargetLoweringBase25isOperationLegalOrPromoteEjNS_3EVTEb.exit
  %i.bj = call noundef ptr @_ZN4llvm15CostTableLookupILm8EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE(ptr noundef nonnull align 2 dereferenceable(48) @_ZZNK4llvm12RISCVTTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEE6DivTbl, i32 noundef %i.ax, i16 %.sroa.025.0.lcssa38.sink.i) ; 2 uses
  %.not116 = icmp eq ptr %i.bj, null
  br i1 %.not116, label %_ZNK4llvm18TargetLoweringBase25isOperationLegalOrPromoteEjNS_3EVTEb.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !320 ; 2 uses
  %i.bm = zext i16 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 2
  %i.bo = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.bn, i64 %.sroa.019.1.lcssa.sink.i) ; 2 uses
  %i.bp = extractvalue { i64, i1 } %i.bo, 1
  br i1 %i.bp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not389 = icmp ne i16 %i.bl, 0
  %i.bq = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  %or.cond = select i1 %.not389, i1 %i.bq, i1 false
  %spec.select = select i1 %or.cond, i64 9223372036854775807, i64 -9223372036854775808
  br label %.thread.i.i

bb.x:                                             ; preds = %bb.v
  %i.br = extractvalue { i64, i1 } %i.bo, 0
  %i.bs = ashr exact i64 %i.br, 2
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.w, %bb.x
  %.0.i.i = phi i64 [ %i.bs, %bb.x ], [ %spec.select, %bb.w ]
  %i.bt = insertvalue { i64, i32 } poison, i64 %.0.i.i, 0
  %i.bu = insertvalue { i64, i32 } %i.bt, i32 %.sink.i, 1
  br label %bb.bi

_ZNK4llvm18TargetLoweringBase25isOperationLegalOrPromoteEjNS_3EVTEb.exit.thread: ; preds = %bb.s, %bb.u, %bb.t, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %_ZNK4llvm18TargetLoweringBase25isOperationLegalOrPromoteEjNS_3EVTEb.exit
  %i.bv = load i32, ptr %i.a, align 4, !tbaa !38
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.bx = load i32, ptr %i.c, align 4, !tbaa !252
  %i.by = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_12RISCVTTIImplEE22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.bv, ptr noundef %i.bw, i32 noundef %i.bx, i64 %4, i64 %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.120") align 8 %6, ptr noundef %7)
  br label %bb.bi

bb.y:                                             ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_12RISCVTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  %i.bz = zext nneg i16 %.sroa.025.0.lcssa38.sink.i to i64 ; 2 uses
  %i.ca = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 -2
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !225
  %i.cd = and i16 %i.cc, -2
  %switch = icmp eq i16 %i.cd, 12
  br i1 %switch, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.ce = load ptr, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %.not.i125 = icmp ult i32 %i.ax, 537
  br i1 %.not.i125, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit, label %.critedge

_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit: ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 6184
  %i.cg = zext nneg i32 %i.ax to i64
  %i.ch = getelementptr inbounds nuw [537 x i8], ptr %i.cf, i64 %i.bz
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !316
  %i.ck = icmp eq i8 %i.cj, 1
  br i1 %i.ck, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit
  %i.cl = call i16 @_ZNK4llvm18TargetLoweringBase18getTypeToPromoteToEjNS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518435) %i.ce, i32 noundef %i.ax, i16 %.sroa.025.0.lcssa38.sink.i) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store i16 %i.cl, ptr %10, align 8, !tbaa !225
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.cm, align 8, !tbaa !287
  %i.cn = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !198, !nonnull !26, !align !190
  %i.cp = call noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.co) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store i16 %.sroa.025.0.lcssa38.sink.i, ptr %11, align 8, !tbaa !225
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.cq, align 8, !tbaa !287
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !198, !nonnull !26, !align !190
  %i.ct = call noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.cs) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !284 ; 3 uses
  %i.cw = add i64 %i.cv, 2305843009213693952
  %i.cx = icmp ult i64 %i.cw, 4611686018427387904
  %i.cy = shl nsw i64 %i.cv, 2
  %i.cz = icmp sgt i64 %i.cv, 0
  %i.da = select i1 %i.cz, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i127 = select i1 %i.cx, i64 %i.cy, i64 %i.da ; 3 uses
  %i.db = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %.0.i127) ; 2 uses
  %i.dc = extractvalue { i64, i1 } %i.db, 1
  br i1 %i.dc, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dd = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  br i1 %i.dd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.de = icmp sgt i64 %.0.i127, 0
  br i1 %i.de, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit137, label %.thread.i.i136

bb.ad:                                            ; preds = %bb.ab
  %i.df = icmp ne i64 %.sroa.019.1.lcssa.sink.i, 0
  %i.dg = icmp slt i64 %.0.i127, 0
  %or.cond.i.i135 = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %or.cond.i.i135, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit137, label %.thread.i.i136

.thread.i.i136:                                   ; preds = %bb.ad, %bb.ac
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit137

bb.ae:                                            ; preds = %bb.aa
  %i.dh = extractvalue { i64, i1 } %i.db, 0
  %i.di = sdiv i64 %i.dh, 4
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit137

_ZN4llvmmlERKNS_15InstructionCostES2_.exit137:    ; preds = %bb.ac, %bb.ad, %.thread.i.i136, %bb.ae
  %.0.i.i131 = phi i64 [ %i.di, %bb.ae ], [ -9223372036854775808, %.thread.i.i136 ], [ 9223372036854775807, %bb.ad ], [ 9223372036854775807, %bb.ac ] ; 3 uses
  %i.dj = load i32, ptr %i.c, align 4, !tbaa !252
  %i.dk = call { i64, i32 } @_ZNK4llvm12RISCVTTIImpl16getCastInstrCostEjPNS_4TypeES2_NS_19TargetTransformInfo15CastContextHintENS3_14TargetCostKindEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 47, ptr noundef %i.cp, ptr noundef %i.ct, i8 noundef zeroext 0, i32 noundef %i.dj, ptr noundef null)
  %.fr = freeze { i64, i32 } %i.dk                ; 2 uses
  %.fca.0.extract50 = extractvalue { i64, i32 } %.fr, 0 ; 3 uses
  %.fca.1.extract51 = extractvalue { i64, i32 } %.fr, 1
  %i.dl = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.0.i.i131, i64 %.fca.0.extract50) ; 2 uses
  %i.dm = extractvalue { i64, i1 } %i.dl, 1
  br i1 %i.dm, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %_ZN4llvmmlERKNS_15InstructionCostES2_.exit137
  %i.dn = icmp sgt i64 %.0.i.i131, 0
  br i1 %i.dn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.do = icmp sgt i64 %.fca.0.extract50, 0
  br i1 %i.do, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit147, label %.thread.i.i146

bb.ah:                                            ; preds = %bb.af
  %i.dp = icmp ne i64 %.0.i.i131, 0
  %i.dq = icmp slt i64 %.fca.0.extract50, 0
  %or.cond.i.i145 = and i1 %i.dp, %i.dq
  br i1 %or.cond.i.i145, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit147, label %.thread.i.i146

.thread.i.i146:                                   ; preds = %bb.ah, %bb.ag
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit147

bb.ai:                                            ; preds = %_ZN4llvmmlERKNS_15InstructionCostES2_.exit137
  %i.dr = extractvalue { i64, i1 } %i.dl, 0
  %i.ds = sdiv i64 %i.dr, 4
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit147

_ZN4llvmmlERKNS_15InstructionCostES2_.exit147:    ; preds = %bb.ag, %bb.ah, %.thread.i.i146, %bb.ai
  %.0.i.i141 = phi i64 [ %i.ds, %bb.ai ], [ -9223372036854775808, %.thread.i.i146 ], [ 9223372036854775807, %bb.ah ], [ 9223372036854775807, %bb.ag ]
  %i.dt = icmp eq i32 %.fca.1.extract51, 1
  %i.du = load i32, ptr %i.c, align 4, !tbaa !252
  %i.dv = call { i64, i32 } @_ZNK4llvm12RISCVTTIImpl16getCastInstrCostEjPNS_4TypeES2_NS_19TargetTransformInfo15CastContextHintENS3_14TargetCostKindEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 46, ptr noundef %i.ct, ptr noundef %i.cp, i8 noundef zeroext 0, i32 noundef %i.du, ptr noundef null) ; 2 uses
  %.fca.0.extract42 = extractvalue { i64, i32 } %i.dv, 0 ; 3 uses
  %.fca.1.extract43 = extractvalue { i64, i32 } %i.dv, 1
  %i.dw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %.fca.0.extract42) ; 2 uses
  %i.dx = extractvalue { i64, i1 } %i.dw, 1
  br i1 %i.dx, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %_ZN4llvmmlERKNS_15InstructionCostES2_.exit147
  %i.dy = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  br i1 %i.dy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dz = icmp sgt i64 %.fca.0.extract42, 0
  br i1 %i.dz, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit158, label %.thread.i.i157

bb.al:                                            ; preds = %bb.aj
  %i.ea = icmp ne i64 %.sroa.019.1.lcssa.sink.i, 0
  %i.eb = icmp slt i64 %.fca.0.extract42, 0
  %or.cond.i.i156 = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond.i.i156, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit158, label %.thread.i.i157

.thread.i.i157:                                   ; preds = %bb.al, %bb.ak
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit158

bb.am:                                            ; preds = %_ZN4llvmmlERKNS_15InstructionCostES2_.exit147
  %i.ec = extractvalue { i64, i1 } %i.dw, 0
  %i.ed = sdiv i64 %i.ec, 4
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit158

_ZN4llvmmlERKNS_15InstructionCostES2_.exit158:    ; preds = %bb.ak, %bb.al, %.thread.i.i157, %bb.am
  %.0.i.i152 = phi i64 [ %i.ed, %bb.am ], [ -9223372036854775808, %.thread.i.i157 ], [ 9223372036854775807, %bb.al ], [ 9223372036854775807, %bb.ak ]
  %i.ee = icmp eq i32 %.fca.1.extract43, 1
  %op.rdx = or i1 %.not390391.not, %i.dt
  %op.rdx406 = select i1 %op.rdx, i1 true, i1 %i.ee
  %spec.select384 = zext i1 %op.rdx406 to i32
  %.0.i159 = call i64 @llvm.sadd.sat.i64(i64 %.0.i.i141, i64 %.0.i.i152)
  br label %.critedge

.critedge:                                        ; preds = %bb.y, %bb.z, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit158, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit
  %.sroa.0255.0 = phi i64 [ %.0.i159, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit158 ], [ 0, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit ], [ 0, %bb.y ], [ 0, %bb.z ] ; 2 uses
  %.sroa.9259.0 = phi i32 [ %spec.select384, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit158 ], [ 0, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit ], [ 0, %bb.y ], [ 0, %bb.z ] ; 2 uses
  %.sroa.12274.0 = phi i16 [ %i.cl, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit158 ], [ %.sroa.025.0.lcssa38.sink.i, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit ], [ %.sroa.025.0.lcssa38.sink.i, %bb.y ], [ %.sroa.025.0.lcssa38.sink.i, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  store ptr %0, ptr %12, align 8, !tbaa !329
  %i.ef = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.a, ptr %i.ef, align 8, !tbaa !268
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.b, ptr %i.eg, align 8, !tbaa !330
  %i.eh = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.c, ptr %i.eh, align 8, !tbaa !275
  %i.ei = and i64 %4, 4294967294
  %spec.select.i161 = icmp eq i64 %i.ei, 2
  br i1 %spec.select.i161, label %bb.an, label %_ZN4llvm15InstructionCostpLERKS0_.exit163

bb.an:                                            ; preds = %.critedge
  %i.ej = call fastcc { i64, i32 } @"_ZZNK4llvm12RISCVTTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEENK3$_0clEjS5_"(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 0, i64 %4) ; 2 uses
  %.fca.0.extract33 = extractvalue { i64, i32 } %i.ej, 0
  %.fca.1.extract34 = extractvalue { i64, i32 } %i.ej, 1
  %i.ek = icmp eq i32 %.fca.1.extract34, 1
  %spec.select385 = zext i1 %i.ek to i32
  br label %_ZN4llvm15InstructionCostpLERKS0_.exit163

_ZN4llvm15InstructionCostpLERKS0_.exit163:        ; preds = %bb.an, %.critedge
  %.sroa.9.0371 = phi i32 [ 0, %.critedge ], [ %spec.select385, %bb.an ] ; 2 uses
  %.sroa.0226.0 = phi i64 [ 0, %.critedge ], [ %.fca.0.extract33, %bb.an ] ; 2 uses
  %i.el = and i64 %5, 4294967294
  %spec.select.i164 = icmp eq i64 %i.el, 2
  br i1 %spec.select.i164, label %_ZN4llvm15InstructionCostpLERKS0_.exit166, label %bb.ao

_ZN4llvm15InstructionCostpLERKS0_.exit166:        ; preds = %_ZN4llvm15InstructionCostpLERKS0_.exit163
  %i.em = call fastcc { i64, i32 } @"_ZZNK4llvm12RISCVTTIImpl22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS3_16OperandValueInfoES5_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionEENK3$_0clEjS5_"(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 1, i64 %5) ; 2 uses
  %.fca.0.extract28 = extractvalue { i64, i32 } %i.em, 0
  %.fca.1.extract29 = extractvalue { i64, i32 } %i.em, 1
  %i.en = icmp eq i32 %.fca.1.extract29, 1
  %spec.select386 = select i1 %i.en, i32 1, i32 %.sroa.9.0371
  %.0.i165 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0226.0, i64 %.fca.0.extract28)
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm15InstructionCostpLERKS0_.exit166, %_ZN4llvm15InstructionCostpLERKS0_.exit163
  %.sroa.9.1372 = phi i32 [ %spec.select386, %_ZN4llvm15InstructionCostpLERKS0_.exit166 ], [ %.sroa.9.0371, %_ZN4llvm15InstructionCostpLERKS0_.exit163 ] ; 2 uses
  %.sroa.0226.1 = phi i64 [ %.0.i165, %_ZN4llvm15InstructionCostpLERKS0_.exit166 ], [ %.sroa.0226.0, %_ZN4llvm15InstructionCostpLERKS0_.exit163 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  switch i32 %i.ax, label %bb.ay [
    i32 59, label %bb.az
    i32 60, label %bb.az
    i32 198, label %bb.ap
    i32 200, label %bb.ap
    i32 199, label %bb.ap
    i32 193, label %bb.aq
    i32 194, label %bb.aq
    i32 195, label %bb.aq
    i32 61, label %bb.ar
    i32 180, label %bb.ar
    i32 179, label %bb.ar
    i32 62, label %bb.as
    i32 63, label %bb.as
    i32 64, label %bb.at
    i32 65, label %bb.at
    i32 99, label %bb.au
    i32 100, label %bb.au
    i32 101, label %bb.av
    i32 102, label %bb.aw
    i32 260, label %bb.ax
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao, %bb.ao
  br label %bb.az

bb.aq:                                            ; preds = %bb.ao, %bb.ao, %bb.ao
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.ep = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eo) #25
  %i.eq = icmp eq i32 %i.ep, 1
  %i.er = select i1 %i.eq, i32 16464, i32 16098
  br label %bb.az

bb.ar:                                            ; preds = %bb.ao, %bb.ao, %bb.ao
  br label %bb.az

bb.as:                                            ; preds = %bb.ao, %bb.ao
  br label %bb.az

bb.at:                                            ; preds = %bb.ao, %bb.ao
  br label %bb.az

bb.au:                                            ; preds = %bb.ao, %bb.ao
  br label %bb.az

bb.av:                                            ; preds = %bb.ao
  br label %bb.az

bb.aw:                                            ; preds = %bb.ao
  br label %bb.az

bb.ax:                                            ; preds = %bb.ao
  br label %bb.az

bb.ay:                                            ; preds = %bb.ao
  %i.es = icmp eq i32 %.sroa.9.1372, 1
  %.0.i.i171 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0255.0, i64 %.sroa.0226.1)
  %i.et = load i32, ptr %i.a, align 4, !tbaa !38
  %i.eu = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.ev = load i32, ptr %i.c, align 4, !tbaa !252
  %i.ew = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_12RISCVTTIImplEE22getArithmeticInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindENS5_16OperandValueInfoES7_NS_8ArrayRefIPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.et, ptr noundef %i.eu, i32 noundef %i.ev, i64 %4, i64 %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.120") align 8 %6, ptr noundef %7) ; 2 uses
  %.fca.0.extract18 = extractvalue { i64, i32 } %i.ew, 0
  %.fca.1.extract19 = extractvalue { i64, i32 } %i.ew, 1
  %i.ex = icmp eq i32 %.fca.1.extract19, 1
  %i.ey = select i1 %i.ex, i1 true, i1 %i.es
  %spec.select.i177 = select i1 %i.ey, i32 1, i32 %.sroa.9259.0
  %.0.i.i178 = call i64 @llvm.sadd.sat.i64(i64 %.0.i.i171, i64 %.fca.0.extract18)
  br label %bb.bh

bb.az:                                            ; preds = %bb.ao, %bb.ao, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.sink = phi i32 [ 16197, %bb.ax ], [ 16140, %bb.aw ], [ 16157, %bb.av ], [ 16130, %bb.au ], [ 16582, %bb.at ], [ 16117, %bb.as ], [ 16528, %bb.ar ], [ %i.er, %bb.aq ], [ 16628, %bb.ap ], [ 16082, %bb.ao ], [ 16082, %bb.ao ]
  store i32 %.sink, ptr %i.d, align 4, !tbaa !38
  %i.ez = load i32, ptr %i.c, align 4, !tbaa !252
  %i.fa = call { i64, i32 } @_ZNK4llvm12RISCVTTIImpl23getRISCVInstructionCostENS_8ArrayRefIjEENS_3MVTENS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull %i.d, i64 1, i16 %.sroa.12274.0, i32 noundef %i.ez) ; 2 uses
  %.fca.0.extract9 = extractvalue { i64, i32 } %i.fa, 0 ; 4 uses
  %.fca.1.extract10 = extractvalue { i64, i32 } %i.fa, 1
  %i.fb = load ptr, ptr %i.b, align 8, !tbaa !209 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load i32, ptr %i.fc, align 8            ; 2 uses
  %i.fe = and i32 %i.fd, 254
  %spec.select.i.i.i = icmp eq i32 %i.fe, 18
  br i1 %spec.select.i.i.i, label %bb.ba, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !208
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !209
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i:           ; preds = %bb.ba, %bb.az
  %i.fi = phi i32 [ %.pre.i, %bb.ba ], [ %i.fd, %bb.az ] ; 2 uses
  %trunc.i.i.i = trunc i32 %i.fi to i8
  switch i8 %trunc.i.i.i, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit [
    i8 3, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
    i8 2, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
    i8 0, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
    i8 1, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
    i8 5, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
  ]

_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit:          ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i
  %i.fj = and i32 %i.fi, 253
  %spec.select.i.i = icmp eq i32 %i.fj, 4
  br i1 %spec.select.i.i, label %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread, label %_ZN4llvm15InstructionCostmLEl.exit

_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread:   ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit
  %i.fk = add i64 %.fca.0.extract9, -1152921504606846976
  %i.fl = icmp ult i64 %i.fk, -2305843009213693952
  br i1 %i.fl, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
  %i.fm = icmp sgt i64 %.fca.0.extract9, 0
  %spec.select387 = select i1 %i.fm, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvm15InstructionCostmLEl.exit

bb.bc:                                            ; preds = %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit.thread
  %i.fn = shl nsw i64 %.fca.0.extract9, 1
  br label %_ZN4llvm15InstructionCostmLEl.exit

_ZN4llvm15InstructionCostmLEl.exit:               ; preds = %bb.bb, %bb.bc, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit
  %.sroa.0211.0 = phi i64 [ %.fca.0.extract9, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit ], [ %i.fn, %bb.bc ], [ %spec.select387, %bb.bb ] ; 3 uses
  %i.fo = icmp ne i32 %.sroa.9.1372, 1
  %.0.i.i187 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0255.0, i64 %.sroa.0226.1)
  %i.fp = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %.sroa.0211.0) ; 2 uses
  %i.fq = extractvalue { i64, i1 } %i.fp, 1
  br i1 %i.fq, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %_ZN4llvm15InstructionCostmLEl.exit
  %i.fr = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  br i1 %i.fr, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fs = icmp sgt i64 %.sroa.0211.0, 0
  br i1 %i.fs, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit199, label %.thread.i.i198

bb.bf:                                            ; preds = %bb.bd
  %i.ft = icmp ne i64 %.sroa.019.1.lcssa.sink.i, 0
  %i.fu = icmp slt i64 %.sroa.0211.0, 0
  %or.cond.i.i197 = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %or.cond.i.i197, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit199, label %.thread.i.i198

.thread.i.i198:                                   ; preds = %bb.bf, %bb.be
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit199

bb.bg:                                            ; preds = %_ZN4llvm15InstructionCostmLEl.exit
  %i.fv = extractvalue { i64, i1 } %i.fp, 0
  %i.fw = sdiv i64 %i.fv, 4
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit199

_ZN4llvmmlERKNS_15InstructionCostES2_.exit199:    ; preds = %bb.be, %bb.bf, %.thread.i.i198, %bb.bg
end_hunk_0
