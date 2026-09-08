Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVTargetTransformInfo?download=true
inline.NumInlined: 8350
inline.NumDeleted: 3264
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK4llvm12RISCVTTIImpl26getInterleavedMemoryOpCostEjPNS_4TypeEjNS_8ArrayRefIjEENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindEbb:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !217
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !218
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, 255
  %i.ak = icmp eq i32 %i.aj, 19
  %i.al = udiv i32 %i.ag, %3
  %.sroa.2.0.insert.shift.i.i167 = select i1 %i.ak, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i168 = zext i32 %i.al to i64
  %.sroa.0.0.insert.insert.i.i169 = or disjoint i64 %.sroa.2.0.insert.shift.i.i167, %.sroa.0.0.insert.ext.i.i168
  %i.am = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.ae, i64 %.sroa.0.0.insert.insert.i.i169) #24 ; 2 uses
  %i.an = load i32, ptr %i.af, align 8, !tbaa !218
  %i.ao = urem i32 %i.an, %3
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %.critedge156.thread

bb.l:                                             ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !189, !nonnull !26, !align !190
  %i.as = call noundef zeroext i1 @_ZNK4llvm19RISCVTargetLowering28isLegalInterleavedAccessTypeEPNS_10VectorTypeEjNS_5AlignEjRKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(518448) %i.aq, ptr noundef %i.am, i32 noundef %3, i8 %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(912) %i.ar) #24
  br i1 %i.as, label %bb.m, label %.critedge156.thread

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !41
  %switch.tableidx.i = add nsw i32 %3, -2
  %switch.idx.cast.i = zext i32 %switch.tableidx.i to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %switch.idx.cast.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 381
  %.0.in.i = load i8, ptr %i.aw, align 1, !tbaa !298, !range !25, !noundef !26
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit185, label %bb.r

_ZN4llvmmlERKNS_15InstructionCostES2_.exit185:    ; preds = %bb.m
  %i.ax = call { i64, i32 } @_ZNK4llvm12RISCVTTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS4_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull %2, i8 %6, i32 noundef %7, i32 noundef %8, i64 0, ptr noundef null) ; 2 uses
  %.fca.0.extract77 = extractvalue { i64, i32 } %i.ax, 0
  %.fca.1.extract78 = extractvalue { i64, i32 } %i.ax, 1
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.az = load ptr, ptr %i.i, align 8, !tbaa !189, !nonnull !26, !align !190
  %i.ba = call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.ay, ptr noundef nonnull align 8 dereferenceable(912) %i.az, ptr noundef %i.am, i1 noundef zeroext false)
  %i.bb = extractvalue { i16, ptr } %i.ba, 0
  %i.bc = zext i32 %3 to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.bf = call { i64, i32 } @_ZNK4llvm19RISCVTargetLowering11getLMULCostENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518448) %i.be, i16 %i.bb) #24 ; 2 uses
  %.fca.0.extract71 = extractvalue { i64, i32 } %i.bf, 0 ; 2 uses
  %.fca.1.extract72 = extractvalue { i64, i32 } %i.bf, 1
  %i.bg = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.bd, i64 %.fca.0.extract71) ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  %i.bi = extractvalue { i64, i1 } %i.bg, 0
  %i.bj = ashr exact i64 %i.bi, 2
  %i.bk = icmp sgt i64 %.fca.0.extract71, 0
  %spec.select303 = select i1 %i.bk, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i.i179 = select i1 %i.bh, i64 %spec.select303, i64 %i.bj
  %i.bl = icmp eq i32 %.fca.1.extract72, 1
  %.0.i186 = call i64 @llvm.sadd.sat.i64(i64 %.fca.0.extract77, i64 %.0.i.i179) ; 3 uses
  %i.bm = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.019.1.lcssa.sink.i, i64 %.0.i186) ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  br i1 %i.bn, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZN4llvmmlERKNS_15InstructionCostES2_.exit185
  %i.bo = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bp = icmp sgt i64 %.0.i186, 0
  br i1 %i.bp, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit196, label %.thread.i.i195

bb.p:                                             ; preds = %bb.n
  %i.bq = icmp ne i64 %.sroa.019.1.lcssa.sink.i, 0
  %i.br = icmp slt i64 %.0.i186, 0
  %or.cond.i.i194 = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %or.cond.i.i194, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit196, label %.thread.i.i195

.thread.i.i195:                                   ; preds = %bb.p, %bb.o
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit196

bb.q:                                             ; preds = %_ZN4llvmmlERKNS_15InstructionCostES2_.exit185
  %i.bs = extractvalue { i64, i1 } %i.bm, 0
  %i.bt = sdiv i64 %i.bs, 4
  br label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit196

_ZN4llvmmlERKNS_15InstructionCostES2_.exit196:    ; preds = %bb.o, %bb.p, %.thread.i.i195, %bb.q
  %.0.i.i190 = phi i64 [ %i.bt, %bb.q ], [ -9223372036854775808, %.thread.i.i195 ], [ 9223372036854775807, %bb.p ], [ 9223372036854775807, %bb.o ]
  %i.bu = icmp eq i32 %.fca.1.extract78, 1
  %i.bv = select i1 %i.bl, i1 true, i1 %i.bu
  %spec.select.i191 = select i1 %i.bv, i32 1, i32 %.sink.i
  br label %.critedge156

bb.r:                                             ; preds = %bb.m
  %i.bw = call noundef i32 @_ZNK4llvm12RISCVTTIImpl17getEstimatedVLForEPNS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %2)
  %i.bx = zext i32 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 2
  br label %.critedge156

.critedge156.thread:                              ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit, %bb.l, %_ZNK4llvm16BasicTTIImplBaseINS_12RISCVTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = and i32 %i.ca, 255
  %i.cc = icmp eq i32 %i.cb, 19
  br i1 %i.cc, label %.critedge156, label %.critedge158

.thread301:                                       ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = and i32 %i.ce, 255
  %i.cg = icmp eq i32 %i.cf, 19
  br i1 %i.cg, label %.critedge156, label %.thread302

.thread:                                          ; preds = %bb.b
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = and i32 %i.ci, 255
  %i.ck = icmp eq i32 %i.cj, 19
  br i1 %i.ck, label %.critedge156, label %.critedge158

.thread302:                                       ; preds = %.thread301
  %i.cl = trunc i64 %5 to i32                     ; 4 uses
  %i.cm = icmp ugt i32 %i.cl, 1
  br i1 %i.cm, label %bb.s, label %.critedge158

bb.s:                                             ; preds = %.thread302
  %i.cn = getelementptr [4 x i8], ptr %4, i64 %5
  %i.co = getelementptr i8, ptr %i.cn, i64 -4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !38
  %i.cq = add i32 %i.cp, 1
  %i.cr = icmp eq i32 %i.cq, %i.cl
  br i1 %i.cr, label %bb.t, label %.critedge158

bb.t:                                             ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !37 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1512
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call noundef i32 %i.cw(ptr noundef nonnull align 8 dereferenceable(518448) %i.ct) #24
  %.not152 = icmp ult i32 %i.cx, %i.cl
  br i1 %.not152, label %.critedge158, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = load ptr, ptr %2, align 8, !tbaa !198, !noalias !702, !nonnull !26, !align !190
  %i.cz = load ptr, ptr %i.cs, align 8, !tbaa !37, !noalias !702
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !189, !noalias !702, !nonnull !26, !align !190
  %i.dc = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.cz, ptr noundef nonnull align 8 dereferenceable(912) %i.db, ptr noundef nonnull %2, i1 noundef zeroext false), !noalias !702 ; 2 uses
  %i.dd = extractvalue { i16, ptr } %i.dc, 0
  %i.de = extractvalue { i16, ptr } %i.dc, 1
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.24.0..sroa_idx.i198 = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %.sroa.025.0.i200 = phi i16 [ %i.dd, %bb.u ], [ %.sroa.0.0.copyload.i211, %bb.x ] ; 6 uses
  %.sroa.1027.0.i201 = phi ptr [ %i.de, %bb.u ], [ %.sroa.24.0.copyload.i212, %bb.x ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !702
  %i.dg = load ptr, ptr %i.cs, align 8, !tbaa !37, !noalias !702
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.478") align 8 %11, ptr noundef nonnull align 8 dereferenceable(518435) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %i.cy, i16 %.sroa.025.0.i200, ptr %.sroa.1027.0.i201) #24, !noalias !702
  %i.dh = load i8, ptr %11, align 8, !tbaa !232, !noalias !702
  switch i8 %i.dh, label %_ZN4llvm15InstructionCostmLEl.exit.i209 [
    i8 9, label %bb.w
    i8 0, label %_ZNK4llvm16BasicTTIImplBaseINS_12RISCVTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit216
  ]

bb.w:                                             ; preds = %bb.v
  %.not.i206 = icmp eq i16 %.sroa.025.0.i200, 0
  %spec.select.i207 = select i1 %.not.i206, i16 8, i16 %.sroa.025.0.i200
  br label %_ZNK4llvm16BasicTTIImplBaseINS_12RISCVTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit216

_ZN4llvm15InstructionCostmLEl.exit.i209:          ; preds = %bb.v
  %.sroa.0.0.copyload.i211 = load i16, ptr %i.df, align 8, !tbaa !225, !noalias !702 ; 2 uses
  %.sroa.24.0.copyload.i212 = load ptr, ptr %.sroa.24.0..sroa_idx.i198, align 8, !tbaa !209, !noalias !702 ; 2 uses
  %.not.i.i.i213 = icmp eq i16 %.sroa.025.0.i200, %.sroa.0.0.copyload.i211
  %i.di = icmp eq ptr %.sroa.1027.0.i201, %.sroa.24.0.copyload.i212
  %.not4.i.i214 = select i1 %.not.i.i.i213, i1 %i.di, i1 false
  br i1 %.not4.i.i214, label %_ZNK4llvm16BasicTTIImplBaseINS_12RISCVTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit216, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm15InstructionCostmLEl.exit.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !702
  br label %bb.v, !llvm.loop !1

_ZNK4llvm16BasicTTIImplBaseINS_12RISCVTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit216: ; preds = %bb.v, %_ZN4llvm15InstructionCostmLEl.exit.i209, %bb.w
  %.sroa.025.0.lcssa38.sink.i204 = phi i16 [ %spec.select.i207, %bb.w ], [ %.sroa.025.0.i200, %_ZN4llvm15InstructionCostmLEl.exit.i209 ], [ %.sroa.025.0.i200, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !702
  %i.dj = add i16 %.sroa.025.0.lcssa38.sink.i204, -19
  %spec.select.i217 = icmp ult i16 %i.dj, 197
  br i1 %spec.select.i217, label %bb.y, label %.critedge158

bb.y:                                             ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_12RISCVTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit216
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !218 ; 2 uses
  %i.dm = load i32, ptr %i.cd, align 8
  %i.dn = and i32 %i.dm, 255
  %i.do = icmp eq i32 %i.dn, 19
  %.not.i221 = icmp eq i32 %3, 0
  br i1 %.not.i221, label %.critedge158, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit222

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit222: ; preds = %bb.y
  %i.dp = urem i32 %i.dl, %3
  %i.dq = udiv i32 %i.dl, %3
  %i.dr = icmp eq i32 %i.dp, 0
  br i1 %i.dr, label %bb.z, label %.critedge158

bb.z:                                             ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit222
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !217
  %.sroa.2.0.insert.shift.i.i226 = select i1 %i.do, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i227 = zext i32 %i.dq to i64
  %.sroa.0.0.insert.insert.i.i228 = or disjoint i64 %.sroa.2.0.insert.shift.i.i226, %.sroa.0.0.insert.ext.i.i227
  %i.du = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.dt, i64 %.sroa.0.0.insert.insert.i.i228) #24
  %i.dv = load ptr, ptr %i.cs, align 8, !tbaa !37
  %i.dw = load ptr, ptr %i.da, align 8, !tbaa !189, !nonnull !26, !align !190
  %i.dx = call noundef zeroext i1 @_ZNK4llvm19RISCVTargetLowering28isLegalInterleavedAccessTypeEPNS_10VectorTypeEjNS_5AlignEjRKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(518448) %i.dv, ptr noundef %i.du, i32 noundef %i.cl, i8 %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(912) %i.dw) #24
  br i1 %i.dx, label %.critedge163, label %.critedge158

.critedge163:                                     ; preds = %bb.z
  %i.dy = call noundef i32 @_ZNK4llvm12RISCVTTIImpl17getEstimatedVLForEPNS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %2)
  %i.dz = zext i32 %i.dy to i64
  %i.ea = shl nuw nsw i64 %i.dz, 2
  br label %.critedge156

.critedge158:                                     ; preds = %.critedge156.thread, %bb.y, %.thread, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit222, %bb.z, %_ZNK4llvm16BasicTTIImplBaseINS_12RISCVTTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit216, %.thread302, %bb.t, %bb.s
  %i.eb = call { i64, i32 } @_ZNK4llvm12RISCVTTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS4_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i8 %6, i32 noundef %7, i32 noundef %8, i64 0, ptr noundef null) ; 2 uses
  %.fca.0.extract32 = extractvalue { i64, i32 } %i.eb, 0 ; 3 uses
  %.fca.1.extract33 = extractvalue { i64, i32 } %i.eb, 1 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !218 ; 2 uses
  %i.ee = udiv i32 %i.ed, %3                      ; 3 uses
  %i.ef = icmp eq i32 %1, 33
  br i1 %i.ef, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %.critedge158
  %.idx = shl nuw nsw i64 %5, 2
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.not154310 = icmp eq i64 %5, 0
  br i1 %.not154310, label %.critedge156, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ei = mul i32 %i.ee, %3                       ; 6 uses
  %i.ej = zext i32 %i.ei to i64                   ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.em = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.en = zext i32 %3 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit
  %.0144313 = phi ptr [ %4, %.lr.ph ], [ %i.fw, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit ] ; 2 uses
  %.sroa.11.1312 = phi i32 [ %.fca.1.extract33, %.lr.ph ], [ %spec.select305, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit ]
  %.sroa.0295.1311 = phi i64 [ %.fca.0.extract32, %.lr.ph ], [ %.0.i231, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit ]
  %i.eo = load i32, ptr %.0144313, align 4, !tbaa !38
  %i.ep = load ptr, ptr %i.eh, align 8, !tbaa !217
  %i.eq = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.ep, i32 noundef %i.ei) #24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @_ZN4llvm16createStrideMaskEjjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.121") align 8 %13, i32 noundef %i.eo, i32 noundef %3, i32 noundef %i.ee) #24
  %i.er = load i32, ptr %i.ek, align 8, !tbaa !255 ; 3 uses
  %i.es = zext i32 %i.er to i64                   ; 3 uses
  %i.et = icmp eq i32 %i.ei, %i.er
  br i1 %i.et, label %_ZN4llvm15SmallVectorImplIiE6resizeEmi.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eu = icmp ult i32 %i.ei, %i.er
  br i1 %i.eu, label %.sink.split.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = sub nuw nsw i64 %i.ej, %i.es            ; 2 uses
  %i.ew = load i32, ptr %i.el, align 4, !tbaa !256
  %.not.i.i.i.i = icmp ugt i32 %i.ei, %i.ew
  br i1 %.not.i.i.i.i, label %bb.ae, label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i, !prof !214

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.em, i64 noundef %i.ej, i64 noundef 4) #24
  %.pre4.pre.i.i = load i32, ptr %i.ek, align 8, !tbaa !255
  %.pre.i = zext i32 %.pre4.pre.i.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i: ; preds = %bb.ae, %bb.ad
  %.pre-phi.i = phi i64 [ %i.es, %bb.ad ], [ %.pre.i, %bb.ae ]
  %i.ex = load ptr, ptr %13, align 8, !tbaa !29
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.pre-phi.i ; 4 uses
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.ev, 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx.i.i.i.i.i.i
  %i.fa = udiv i32 %i.ed, %3
  %i.fb = zext i32 %i.fa to i64
  %i.fc = mul nuw i64 %i.fb, %i.en
  %i.fd = shl i64 %i.fc, 2
  %i.fe = shl nuw nsw i64 %i.es, 2
  %i.ff = add i64 %i.fd, -4
  %i.fg = sub i64 %i.ff, %i.fe                    ; 2 uses
  %i.fh = lshr exact i64 %i.fg, 2
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fg, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i
  %n.vec = and i64 %i.fi, 9223372036854775800     ; 3 uses
  %i.fj = shl i64 %n.vec, 2
  %i.fk = getelementptr i8, ptr %i.ey, i64 %i.fj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ey, i64 %i.fl ; 2 uses
  %i.fm = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -1), ptr %next.gep, align 4, !tbaa !38
  store <4 x i32> splat (i32 -1), ptr %i.fm, align 4, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !699

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fi, %n.vec
  br i1 %cmp.n, label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i, %middle.block
  %.06.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ey, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE28reserveForParamAndGetAddressERim.exit.i.i ], [ %i.fk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 -1, ptr %.06.i.i.i.i.i.i.i.i, align 4, !tbaa !38
  %i.fo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fo, %i.ez
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !700

_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block
  %.pre.i.i = load i32, ptr %i.ek, align 8, !tbaa !255
  %i.fp = trunc nuw i64 %i.ev to i32
  %i.fq = add i32 %.pre.i.i, %i.fp                ; 2 uses
  %.pre317 = zext i32 %i.fq to i64
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ac, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i
  %.pre.pre-phi = phi i64 [ %i.ej, %bb.ac ], [ %.pre317, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i ]
  %.sink.i230 = phi i32 [ %i.ei, %bb.ac ], [ %i.fq, %_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i ]
  store i32 %.sink.i230, ptr %i.ek, align 8, !tbaa !255
  br label %_ZN4llvm15SmallVectorImplIiE6resizeEmi.exit

_ZN4llvm15SmallVectorImplIiE6resizeEmi.exit:      ; preds = %bb.ab, %.sink.split.i
  %.pre-phi = phi i64 [ %i.ej, %bb.ab ], [ %.pre.pre-phi, %.sink.split.i ]
  %i.fr = load ptr, ptr %13, align 8, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.fs = call { i64, i32 } @_ZNK4llvm12RISCVTTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 7, ptr noundef %i.eq, ptr noundef %i.eq, ptr %i.fr, i64 %.pre-phi, i32 noundef %8, i32 noundef 0, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.120") align 8 %14, ptr poison) ; 2 uses
  %.fca.0.extract17 = extractvalue { i64, i32 } %i.fs, 0
  %.fca.1.extract18 = extractvalue { i64, i32 } %i.fs, 1
  %i.ft = icmp eq i32 %.fca.1.extract18, 1
  %spec.select305 = select i1 %i.ft, i32 1, i32 %.sroa.11.1312 ; 2 uses
  %.0.i231 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0295.1311, i64 %.fca.0.extract17) ; 2 uses
  %i.fu = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.em
  br i1 %i.fv, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm15SmallVectorImplIiE6resizeEmi.exit
  call void @free(ptr noundef %i.fu) #24
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit:           ; preds = %_ZN4llvm15SmallVectorImplIiE6resizeEmi.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.fw = getelementptr inbounds nuw i8, ptr %.0144313, i64 4 ; 2 uses
  %.not154 = icmp eq ptr %i.fw, %i.eg
  br i1 %.not154, label %.critedge156, label %bb.ab

bb.ag:                                            ; preds = %.critedge158
  %.not153 = icmp eq i32 %3, 2
  br i1 %.not153, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fx = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_12RISCVTTIImplEE26getInterleavedMemoryOpCostEjPNS_4TypeEjNS_8ArrayRefIjEENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindEbb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr %4, i64 %5, i8 %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9, i1 noundef zeroext %10) ; 2 uses
  %.fca.0.extract10 = extractvalue { i64, i32 } %i.fx, 0
  %.fca.1.extract11 = extractvalue { i64, i32 } %i.fx, 1
  br label %.critedge156

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZN4llvm20createInterleaveMaskEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.121") align 8 %15, i32 noundef %i.ee, i32 noundef 2) #24
  %i.fy = load ptr, ptr %15, align 8, !tbaa !29
  %i.fz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !255
  %i.gb = zext i32 %i.ga to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.gc = call { i64, i32 } @_ZNK4llvm12RISCVTTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 7, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr %i.fy, i64 %i.gb, i32 noundef %8, i32 noundef 0, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.120") align 8 %16, ptr poison) ; 2 uses
  %.fca.0.extract6 = extractvalue { i64, i32 } %i.gc, 0
  %.fca.1.extract7 = extractvalue { i64, i32 } %i.gc, 1
  %i.gd = icmp eq i32 %.fca.1.extract7, 1
  %spec.select.i236 = select i1 %i.gd, i32 1, i32 %.fca.1.extract33
  %.0.i.i237 = call i64 @llvm.sadd.sat.i64(i64 %.fca.0.extract32, i64 %.fca.0.extract6)
  %i.ge = load ptr, ptr %15, align 8, !tbaa !29   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit240, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @free(ptr noundef %i.ge) #24
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit240

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit240:        ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %.critedge156
end_hunk_0
begin_hunk_1_@_ZNK4llvm27TargetTransformInfoImplBase32shouldTreatInstructionLikeSelectEPKNS_11InstructionE:bb.a
bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds i8, ptr %1, i64 -64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !204 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !220
  %i.bf = icmp ugt i8 %i.be, 22
  br i1 %i.bf, label %_ZNK4llvm12PatternMatch15LogicalOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEES5_Lj30ELb0EE5matchIKNS_11InstructionEEEbPT_.exit.thread.i.i.i, label %_ZNK4llvm12PatternMatch15LogicalOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEES5_Lj30ELb0EE5matchIKNS_11InstructionEEEbPT_.exit.i.i.i

_ZNK4llvm12PatternMatch15LogicalOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEES5_Lj30ELb0EE5matchIKNS_11InstructionEEEbPT_.exit.i.i.i: ; preds = %bb.i
  %i.bg = tail call noundef zeroext i1 @_ZNK4llvm8Constant10isOneValueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #24
  br i1 %i.bg, label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_14ThreeOps_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEENS6_IJNS_8ConstantEEEESA_Lj59ELb0EEEEEbPT_RKT0_.exit, label %_ZNK4llvm12PatternMatch15LogicalOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEES5_Lj30ELb0EE5matchIKNS_11InstructionEEEbPT_.exit.thread.i.i.i

_ZNK4llvm12PatternMatch15LogicalOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEES5_Lj30ELb0EE5matchIKNS_11InstructionEEEbPT_.exit.thread.i.i.i: ; preds = %_ZNK4llvm12PatternMatch15LogicalOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEES5_Lj30ELb0EE5matchIKNS_11InstructionEEEbPT_.exit.i.i.i, %bb.i, %bb.h, %_ZNK4llvm4Type18isIntOrIntVectorTyEj.exit.i.i.i.i
  br label %_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_14ThreeOps_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEENS6_IJNS_8ConstantEEEESA_Lj59ELb0EEEEEbPT_RKT0_.exit

_ZN4llvm12PatternMatch5matchIKNS_11InstructionENS0_14ThreeOps_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEENS6_IJNS_8ConstantEEEESA_Lj59ELb0EEEEEbPT_RKT0_.exit: ; preds = %_ZNK4llvm12PatternMatch15LogicalOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEES5_Lj30ELb0EE5matchIKNS_11InstructionEEEbPT_.exit.thread.i.i.i, %_ZNK4llvm12PatternMatch15LogicalOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEES5_Lj30ELb0EE5matchIKNS_11InstructionEEEbPT_.exit.i.i.i, %_ZNK4llvm12PatternMatch15LogicalOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEES5_Lj29ELb0EE5matchIKNS_11InstructionEEEbPT_.exit.i.i, %bb.a, %_ZNK4llvm4User10getOperandEj.exit10.i.i
  %.0 = phi i1 [ false, %_ZNK4llvm4User10getOperandEj.exit10.i.i ], [ false, %bb.a ], [ false, %_ZNK4llvm12PatternMatch15LogicalOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEES5_Lj29ELb0EE5matchIKNS_11InstructionEEEbPT_.exit.i.i ], [ true, %_ZNK4llvm12PatternMatch15LogicalOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEES5_Lj30ELb0EE5matchIKNS_11InstructionEEEbPT_.exit.thread.i.i.i ], [ false, %_ZNK4llvm12PatternMatch15LogicalOp_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEES5_Lj30ELb0EE5matchIKNS_11InstructionEEEbPT_.exit.i.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm12RISCVTTIImpl36shouldCopyAttributeWhenOutliningFromEPKNS_8FunctionERKNS_9AttributeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm9Attribute17isStringAttributeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #24
  br i1 %i.a, label %bb.b, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread7

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i64 } @_ZNK4llvm9Attribute15getKindAsStringEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #24 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 1
  %.not.i = icmp eq i64 %i.c, 9
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread7

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.b
  %i.d = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.e = load i64, ptr %i.d, align 1
  %i.f = xor i64 %i.e, 8103508940177043049
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i64
  %i.j = xor i64 %i.i, 116
  %i.k = or i64 %i.f, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread7

_ZN4llvmeqENS_9StringRefES0_.exit.thread7:        ; preds = %bb.b, %_ZN4llvmeqENS_9StringRefES0_.exit, %bb.a
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread7
  %.0 = phi i1 [ true, %_ZN4llvmeqENS_9StringRefES0_.exit.thread7 ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK4llvm9Attribute17isStringAttributeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare { ptr, i64 } @_ZNK4llvm9Attribute15getKindAsStringEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i8 } @_ZNK4llvm12RISCVTTIImpl20instCombineIntrinsicERNS_12InstCombinerERNS_13IntrinsicInstE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1240) %1, ptr noundef nonnull align 8 dereferenceable(92) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"struct.llvm::PatternMatchHelpers::match_combine_and", align 8 ; 12 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %i.c = alloca [3 x ptr], align 8                ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %7 = alloca %class.anon.375, align 1            ; 3 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !969, !nonnull !26, !align !190 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !213  ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !222
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !207  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 255
  %i.p = icmp ne i32 %i.o, 19
  %.not88 = icmp eq ptr %i.l, null
  %.not = or i1 %.not88, %i.p
  br i1 %.not, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i32 2, ptr %3, align 8, !tbaa !38, !alias.scope !970
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !tbaa !971, !alias.scope !970
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 1, ptr %i.q, align 8, !tbaa !38, !alias.scope !970
  %.sroa.45.i.i.sroa.3.0..sroa.45.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.a, ptr %.sroa.45.i.i.sroa.3.0..sroa.45.0..sroa_idx.i.i.sroa_idx, align 8, !tbaa !972
  %.sroa.45.i.i.sroa.4.0..sroa.45.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 0, ptr %.sroa.45.i.i.sroa.4.0..sroa.45.0..sroa_idx.i.i.sroa_idx, align 8, !tbaa !298
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.r, align 8, !alias.scope !973
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 12708, ptr %i.s, align 8, !tbaa !38, !alias.scope !973
  %i.t = getelementptr inbounds i8, ptr %2, i64 -32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !204  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i8, ptr %i.u, align 8, !tbaa !220
  %i.w = icmp eq i8 %i.v, 14
  br i1 %i.w, label %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_13IntrinsicInstEEEbPT_.exit.i.i, label %.critedge

_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_13IntrinsicInstEEEbPT_.exit.i.i: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !238
  %i.z = icmp eq i32 %i.y, 12708
  br i1 %i.z, label %_ZNK4llvm12PatternMatch14Argument_matchINS_19PatternMatchHelpers9match_isaIJNS_11PoisonValueEEEEE5matchINS_13IntrinsicInstEEEbPT_.exit.i.i.i, label %.critedge

_ZNK4llvm12PatternMatch14Argument_matchINS_19PatternMatchHelpers9match_isaIJNS_11PoisonValueEEEEE5matchINS_13IntrinsicInstEEEbPT_.exit.i.i.i: ; preds = %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_13IntrinsicInstEEEbPT_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 268435455
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [32 x i8], ptr %2, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !204
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !220
  %i.ai = icmp eq i8 %i.ah, 1
  br i1 %i.ai, label %_ZN4llvm12PatternMatch5matchINS_13IntrinsicInstENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_9match_isaIJNS_11PoisonValueEEEEEENS6_INS0_8ap_matchINS_5APIntEEEEENS6_INS0_20bind_const_intval_tyEEEEEEEEbPT_RKT0_.exit, label %.critedge

_ZN4llvm12PatternMatch5matchINS_13IntrinsicInstENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_9match_isaIJNS_11PoisonValueEEEEEENS6_INS0_8ap_matchINS_5APIntEEEEENS6_INS0_20bind_const_intval_tyEEEEEEEEbPT_RKT0_.exit: ; preds = %_ZNK4llvm12PatternMatch14Argument_matchINS_19PatternMatchHelpers9match_isaIJNS_11PoisonValueEEEEE5matchINS_13IntrinsicInstEEEbPT_.exit.i.i.i
  %i.aj = call noundef zeroext i1 @_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch14Argument_matchINS2_8ap_matchINS_5APIntEEEEENS3_INS2_20bind_const_intval_tyEEEEE5matchINS_13IntrinsicInstEEEbPT_(ptr noundef nonnull align 8 dereferenceable(52) %3, ptr noundef nonnull %2)
  br i1 %i.aj, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZN4llvm12PatternMatch5matchINS_13IntrinsicInstENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_9match_isaIJNS_11PoisonValueEEEEEENS6_INS0_8ap_matchINS_5APIntEEEEENS6_INS0_20bind_const_intval_tyEEEEEEEEbPT_RKT0_.exit
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !213 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not6.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_5Value18user_iterator_implINS_4UserEEEEEZNKS_12RISCVTTIImpl20instCombineIntrinsicERNS_12InstCombinerERNS_13IntrinsicInstEE3$_0EEbOT_T0_.exit.thread", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.g
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %i.az, %bb.g ], [ %i.ak, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !222 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !207
  %i.ap = icmp eq ptr %i.ao, %i.l
  br i1 %i.ap, label %bb.f, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_5Value18user_iterator_implINS_4UserEEEEEZNKS_12RISCVTTIImpl20instCombineIntrinsicERNS_12InstCombinerERNS_13IntrinsicInstEE3$_0EEbOT_T0_.exit.thread85"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = load i8, ptr %i.am, align 8, !tbaa !220 ; 3 uses
  %i.ar = icmp ugt i8 %i.aq, 29                   ; 2 uses
  %i.as = icmp eq i8 %i.aq, 19
  %spec.select.i.i.i.i.i.i.i.i.not.not.i.i.i.i.i.i.i.i.i = or i1 %i.ar, %i.as
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.not.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm12RISCVTTIImpl20instCombineIntrinsicERNS2_12InstCombinerERNS2_13IntrinsicInstEE3$_0EclINS2_5Value18user_iterator_implINS2_4UserEEEEEbT_.exit.i.i.i.i.i", label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_5Value18user_iterator_implINS_4UserEEEEEZNKS_12RISCVTTIImpl20instCombineIntrinsicERNS_12InstCombinerERNS_13IntrinsicInstEE3$_0EEbOT_T0_.exit.thread85"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm12RISCVTTIImpl20instCombineIntrinsicERNS2_12InstCombinerERNS2_13IntrinsicInstEE3$_0EclINS2_5Value18user_iterator_implINS2_4UserEEEEEbT_.exit.i.i.i.i.i": ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.au = load i16, ptr %i.at, align 2
  %i.av = zext i16 %i.au to i32
  %i.aw = zext i8 %i.aq to i32
  %i.ax = add nsw i32 %i.aw, -30
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.ar, i32 %i.ax, i32 %i.av
  %.not5.i.i.i.i.i = icmp eq i32 %.1.i.i.i.i.i.i.i.i.i.i, 51
  br i1 %.not5.i.i.i.i.i, label %bb.g, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_5Value18user_iterator_implINS_4UserEEEEEZNKS_12RISCVTTIImpl20instCombineIntrinsicERNS_12InstCombinerERNS_13IntrinsicInstEE3$_0EEbOT_T0_.exit.thread85"

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm12RISCVTTIImpl20instCombineIntrinsicERNS2_12InstCombinerERNS2_13IntrinsicInstEE3$_0EclINS2_5Value18user_iterator_implINS2_4UserEEEEEbT_.exit.i.i.i.i.i"
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !221 ; 2 uses
  %.not.i.i.i.i.i61 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i61, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_5Value18user_iterator_implINS_4UserEEEEEZNKS_12RISCVTTIImpl20instCombineIntrinsicERNS_12InstCombinerERNS_13IntrinsicInstEE3$_0EEbOT_T0_.exit.thread", label %.lr.ph.i.i.i.i.i, !llvm.loop !968

"_ZN4llvm6all_ofINS_14iterator_rangeINS_5Value18user_iterator_implINS_4UserEEEEEZNKS_12RISCVTTIImpl20instCombineIntrinsicERNS_12InstCombinerERNS_13IntrinsicInstEE3$_0EEbOT_T0_.exit.thread85": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm12RISCVTTIImpl20instCombineIntrinsicERNS2_12InstCombinerERNS2_13IntrinsicInstEE3$_0EclINS2_5Value18user_iterator_implINS2_4UserEEEEEbT_.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread

.critedge:                                        ; preds = %bb.d, %bb.c, %_ZNK4llvm12PatternMatch14Argument_matchINS_19PatternMatchHelpers9match_isaIJNS_11PoisonValueEEEEE5matchINS_13IntrinsicInstEEEbPT_.exit.i.i.i, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_13IntrinsicInstEEEbPT_.exit.i.i, %_ZN4llvm12PatternMatch5matchINS_13IntrinsicInstENS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_9match_isaIJNS_11PoisonValueEEEEEENS6_INS0_8ap_matchINS_5APIntEEEEENS6_INS0_20bind_const_intval_tyEEEEEEEEbPT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread

"_ZN4llvm6all_ofINS_14iterator_rangeINS_5Value18user_iterator_implINS_4UserEEEEEZNKS_12RISCVTTIImpl20instCombineIntrinsicERNS_12InstCombinerERNS_13IntrinsicInstEE3$_0EEbOT_T0_.exit.thread": ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !207 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !217
  %i.be = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.e, ptr noundef %i.bd) ; 2 uses
  %.fca.1.extract25 = extractvalue { i64, i8 } %i.be, 1
  %i.bf = trunc nuw i8 %.fca.1.extract25 to i1
  br i1 %i.bf, label %bb.h, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.h:                                             ; preds = %"_ZN4llvm6all_ofINS_14iterator_rangeINS_5Value18user_iterator_implINS_4UserEEEEEZNKS_12RISCVTTIImpl20instCombineIntrinsicERNS_12InstCombinerERNS_13IntrinsicInstEE3$_0EEbOT_T0_.exit.thread"
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.15) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %"_ZN4llvm6all_ofINS_14iterator_rangeINS_5Value18user_iterator_implINS_4UserEEEEEZNKS_12RISCVTTIImpl20instCombineIntrinsicERNS_12InstCombinerERNS_13IntrinsicInstEE3$_0EEbOT_T0_.exit.thread"
  %.fca.0.extract24 = extractvalue { i64, i8 } %i.be, 0
  %i.bg = trunc i64 %.fca.0.extract24 to i32      ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !217
  %i.bj = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.e, ptr noundef %i.bi) ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.bj, 1
  %i.bk = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.bk, label %bb.i, label %_ZNK4llvm8TypeSizecvmEv.exit62

bb.i:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.15) #26
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit62:                   ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %.fca.0.extract = extractvalue { i64, i8 } %i.bj, 0
  %i.bl = trunc i64 %.fca.0.extract to i32        ; 4 uses
  %i.bm = urem i32 %i.bg, %i.bl
  %i.bn = udiv i32 %i.bg, %i.bl                   ; 5 uses
  %.not59 = icmp eq i32 %i.bm, 0
  br i1 %.not59, label %bb.j, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread

bb.j:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit62
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !215
  %i.bp = zext i32 %i.bn to i64                   ; 2 uses
  %i.bq = urem i64 %i.bo, %i.bp
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = icmp eq i32 %i.bn, 1
  %or.cond = or i1 %i.bs, %i.br
  br i1 %or.cond, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = load i32, ptr %i.aa, align 4
  %i.bu = and i32 %i.bt, 268435455
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds [32 x i8], ptr %2, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !204
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !207
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !218 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = and i32 %i.cf, 255
  %i.ch = icmp eq i32 %i.cg, 19
  %9 = mul i32 %i.bn, %i.bl                       ; 3 uses
  %.not.i = icmp ugt i32 %i.bl, %i.bg
  br i1 %.not.i, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit: ; preds = %bb.k
  %10 = urem i32 %i.cd, %i.bn
  %11 = udiv i32 %i.cd, %i.bn
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %bb.l, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread

bb.l:                                             ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !472 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !473 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl
  %.not16.not.i = icmp samesign eq i64 %i.cl, 0
  br i1 %.not16.not.i, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread, label %.lr.ph.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.01117.i, i64 1 ; 2 uses
  %.not.not.i = icmp eq ptr %i.cn, %i.cm
  br i1 %.not.not.i, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.m
  %.01117.i = phi ptr [ %i.cn, %bb.m ], [ %i.cj, %bb.l ] ; 2 uses
  %i.co = load i8, ptr %.01117.i, align 1, !tbaa !193
  %i.cp = zext i8 %i.co to i32
  %.not14.not.i = icmp ugt i32 %9, %i.cp
  br i1 %.not14.not.i, label %bb.m, label %_ZNK4llvm10DataLayout18fitsInLegalIntegerEj.exit

_ZNK4llvm10DataLayout18fitsInLegalIntegerEj.exit: ; preds = %.lr.ph.i
  %i.cq = load ptr, ptr %i.ba, align 8, !tbaa !207
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !198, !nonnull !26, !align !190
  %i.cs = call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, i32 noundef %9) #24 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !37 ; 2 uses
  %i.cv = call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.cu, ptr noundef nonnull align 8 dereferenceable(912) %i.e, ptr noundef %i.cs, i1 noundef zeroext false) ; 2 uses
  %i.cw = extractvalue { i16, ptr } %i.cv, 0
  %i.cx = extractvalue { i16, ptr } %i.cv, 1
  %i.cy = call noundef zeroext i1 @_ZNK4llvm19RISCVTargetLowering24isLegalElementTypeForRVVENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518448) %i.cu, i16 %i.cw, ptr %i.cx) #24
  br i1 %i.cy, label %bb.n, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread

bb.n:                                             ; preds = %_ZNK4llvm10DataLayout18fitsInLegalIntegerEj.exit
  %.sroa.2.0.insert.shift.i.i63 = select i1 %i.ch, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i64 = zext nneg i32 %11 to i64
  %.sroa.0.0.insert.insert.i.i65 = or disjoint i64 %.sroa.2.0.insert.shift.i.i63, %.sroa.0.0.insert.ext.i.i64
  %i.cz = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.cs, i64 %.sroa.0.0.insert.insert.i.i65) #24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !475
  call void @_ZN4llvm5APInt8getSplatEjRKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, i32 noundef %9, ptr noundef nonnull align 8 dereferenceable(12) %i.da) #24
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.dc = call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.cz) #24
  store ptr %i.dc, ptr %i.c, align 8, !tbaa !286
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.de = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeERKNS_5APIntE(ptr noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(12) %4) #24
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !286
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dg = load i64, ptr %i.b, align 8, !tbaa !215
  %i.dh = udiv i64 %i.dg, %i.bp
  %i.di = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.cb, i64 noundef %i.dh, i1 noundef zeroext false, i1 noundef zeroext false) #24
  store ptr %i.di, ptr %i.df, align 8, !tbaa !286
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 257, ptr %i.dj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEPNS_4TypeEjNS_8ArrayRefIPNS_5ValueEEENS_9FMFSourceERKNS_5TwineES4_Ed_UlS2_E_EEvlS2_, ptr %6, align 8, !tbaa !975
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dl = ptrtoint ptr %7 to i64
  store i64 %i.dl, ptr %i.dk, align 8, !tbaa !976
  %i.dm = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEPNS_4TypeEjNS_8ArrayRefIPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %i.db, ptr noundef %i.cz, i32 noundef 12708, ptr nonnull %i.c, i64 3, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i16 257, ptr %i.dn, align 8
  %i.do = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %i.db, i32 noundef 51, ptr noundef %i.dm, ptr noundef nonnull %i.bb, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef null, i64 0)
  %i.dp = call noundef ptr @_ZN4llvm12InstCombiner19replaceInstUsesWithERNS_11InstructionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !192
  %i.ds = icmp ugt i32 %i.dr, 64
  br i1 %i.ds, label %bb.o, label %_ZN4llvm5APIntD2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.dt = load ptr, ptr %4, align 8, !tbaa !193   ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %_ZN4llvm5APIntD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.dt) #27
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread: ; preds = %bb.m, %bb.l, %bb.k, %_ZN4llvm5APIntD2Ev.exit, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit, %_ZNK4llvm10DataLayout18fitsInLegalIntegerEj.exit, %bb.j, %_ZNK4llvm8TypeSizecvmEv.exit62, %.critedge, %"_ZN4llvm6all_ofINS_14iterator_rangeINS_5Value18user_iterator_implINS_4UserEEEEEZNKS_12RISCVTTIImpl20instCombineIntrinsicERNS_12InstCombinerERNS_13IntrinsicInstEE3$_0EEbOT_T0_.exit.thread85"
  %.sroa.082.1 = phi ptr [ undef, %_ZNK4llvm8TypeSizecvmEv.exit62 ], [ undef, %bb.j ], [ undef, %.critedge ], [ undef, %"_ZN4llvm6all_ofINS_14iterator_rangeINS_5Value18user_iterator_implINS_4UserEEEEEZNKS_12RISCVTTIImpl20instCombineIntrinsicERNS_12InstCombinerERNS_13IntrinsicInstEE3$_0EEbOT_T0_.exit.thread85" ], [ %i.dp, %_ZN4llvm5APIntD2Ev.exit ], [ undef, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit ], [ undef, %bb.k ], [ undef, %_ZNK4llvm10DataLayout18fitsInLegalIntegerEj.exit ], [ undef, %bb.l ], [ undef, %bb.m ]
  %.sroa.283.1 = phi i8 [ 0, %_ZNK4llvm8TypeSizecvmEv.exit62 ], [ 0, %bb.j ], [ 0, %.critedge ], [ 0, %"_ZN4llvm6all_ofINS_14iterator_rangeINS_5Value18user_iterator_implINS_4UserEEEEEZNKS_12RISCVTTIImpl20instCombineIntrinsicERNS_12InstCombinerERNS_13IntrinsicInstEE3$_0EEbOT_T0_.exit.thread85" ], [ 1, %_ZN4llvm5APIntD2Ev.exit ], [ 0, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit ], [ 0, %bb.k ], [ 0, %_ZNK4llvm10DataLayout18fitsInLegalIntegerEj.exit ], [ 0, %bb.l ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.a, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread
  %.sroa.082.2 = phi ptr [ %.sroa.082.1, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.283.2 = phi i8 [ %.sroa.283.1, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.082.2, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.283.2, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare void @_ZN4llvm5APInt8getSplatEjRKS0_(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, i32 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm12InstCombiner19replaceInstUsesWithERNS_11InstructionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.465", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.m, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !981, !nonnull !26, !align !190 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2064
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm19InstructionWorklist4pushEPNS_11InstructionE.exit.i, %.lr.ph.i
  %.sroa.06.012.i = phi ptr [ %i.b, %.lr.ph.i ], [ %.sroa.06.0.i, %_ZN4llvm19InstructionWorklist4pushEPNS_11InstructionE.exit.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !222  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.l = load i32, ptr %i.g, align 8, !tbaa !255
  store ptr %i.k, ptr %3, align 8, !tbaa !983
  store i32 %i.l, ptr %i.h, align 8, !tbaa !984
  %i.m = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JjEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.h), !noalias !985
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.m, 1
  %i.n = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %i.n, label %bb.c, label %_ZN4llvm19InstructionWorklist4pushEPNS_11InstructionE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.g, align 8, !tbaa !255  ; 2 uses
  %i.p = load i32, ptr %i.i, align 4, !tbaa !256
  %.not.i.i.i = icmp ult i32 %i.o, %i.p
  br i1 %.not.i.i.i, label %bb.e, label %bb.d, !prof !259

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(2256) %i.e, ptr noundef %i.k)
  br label %_ZN4llvm19InstructionWorklist4pushEPNS_11InstructionE.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = zext i32 %i.o to i64
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  store ptr %i.k, ptr %i.s, align 1
  %i.t = load i32, ptr %i.g, align 8, !tbaa !255
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.g, align 8, !tbaa !255
  br label %_ZN4llvm19InstructionWorklist4pushEPNS_11InstructionE.exit.i

_ZN4llvm19InstructionWorklist4pushEPNS_11InstructionE.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i, i64 8
  %.sroa.06.0.i = load ptr, ptr %i.v, align 8, !tbaa !219 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.06.0.i, null
  br i1 %.not.i, label %_ZN4llvm19InstructionWorklist19pushUsersToWorkListERNS_11InstructionE.exit, label %bb.b

_ZN4llvm19InstructionWorklist19pushUsersToWorkListERNS_11InstructionE.exit: ; preds = %_ZN4llvm19InstructionWorklist4pushEPNS_11InstructionE.exit.i
  %i.w = icmp eq ptr %1, %2
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm19InstructionWorklist19pushUsersToWorkListERNS_11InstructionE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !207
  %i.z = call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.y) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm19InstructionWorklist19pushUsersToWorkListERNS_11InstructionE.exit
  %.016 = phi ptr [ %i.z, %bb.f ], [ %2, %_ZN4llvm19InstructionWorklist19pushUsersToWorkListERNS_11InstructionE.exit ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.016, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !213
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ad = load i8, ptr %.016, align 8, !tbaa !220
  %i.ae = icmp ugt i8 %i.ad, 29
  br i1 %i.ae, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.016, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 536870912
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, 536870912
  %.not17 = icmp eq i32 %i.ak, 0
  br i1 %.not17, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm5Value8takeNameEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %.016, ptr noundef nonnull %1) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %.016) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  %.0 = phi ptr [ %1, %bb.l ], [ null, %bb.a ]
  ret ptr %.0
}

declare noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEPNS_4TypeEjNS_8ArrayRefIPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i32 noundef, ptr, i64, i64, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef byval(%"class.llvm::function_ref") align 8) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeERKNS_5APIntE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm27TargetTransformInfoImplBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12RISCVTTIImplD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm27TargetTransformInfoImplBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm16BasicTTIImplBaseINS_12RISCVTTIImplEE32getEstimatedNumberOfCaseClustersERKNS_10SwitchInstERjPNS_18ProfileSummaryInfoEPNS_18BlockFrequencyInfoE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"class.llvm::APInt", align 8       ; 14 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 12 uses
  %7 = alloca %"class.llvm::DenseMap.634", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 268435455
  %i.e = add nsw i32 %i.d, -2                     ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 7 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef nonnull align 8 dereferenceable(912) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(16) %0) #24 ; 3 uses
  store i32 0, ptr %2, align 4, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !337
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !354
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 640
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(518435) %i.g, ptr noundef %i.o) #24 ; 3 uses
  %i.t = icmp eq i32 %i.e, 0
  br i1 %i.t, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %i.k, i32 noundef 0) #24
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !476
  %i.x = icmp ult i32 %i.w, %i.e
  br i1 %i.x, label %bb.ad, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.y = getelementptr inbounds i8, ptr %1, i64 -8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !219
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !993
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !995 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !192 ; 3 uses
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !192
  %i.aj = icmp ult i32 %i.ai, 65
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  br i1 %i.aj, label %_ZN4llvm5APIntC2ERKS0_.exit.thread, label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit.thread:               ; preds = %bb.d
end_hunk_1
