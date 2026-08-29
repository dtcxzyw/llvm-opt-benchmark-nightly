Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64TargetTransformInfo?download=true
inline.NumInlined: 13233
inline.NumDeleted: 4962
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNK4llvm14AArch64TTIImpl26getInterleavedMemoryOpCostEjPNS_4TypeEjNS_8ArrayRefIjEENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindEbb:bb.a
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = call noundef i32 @_ZNK4llvm21AArch64TargetLowering25getNumInterleavedAccessesEPNS_10VectorTypeERKNS_10DataLayoutEb(ptr noundef nonnull align 8 dereferenceable(518448) %i.ag, ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(912) %i.ah, i1 noundef zeroext %i.aj) #30
  %i.al = mul i32 %i.ak, %3
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 2
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.ao = call noundef zeroext i1 @_ZNK4llvm4Type12isScalableTyEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #30
  br i1 %i.ao, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit108, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit108.thread

.thread:                                          ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit
  %i.ap = tail call noundef zeroext i1 @_ZNK4llvm4Type12isScalableTyEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #30 ; 0 uses
  br label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit108.thread

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit108: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !233
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.at = load i32, ptr %i.as, align 8
  %i.au = and i32 %i.at, 255
  %i.av = icmp eq i32 %i.au, 19
  %i.aw = icmp eq i32 %i.ar, 1
  %i.ax = select i1 %i.aw, i1 %i.av, i1 false
  br i1 %i.ax, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit108
  br i1 %9, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp eq i32 %1, 33
  %i.az = select i1 %i.ay, i32 241, i32 245
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %11, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.ba, align 8, !tbaa !405
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 %i.az, ptr %i.bb, align 8, !tbaa !408
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i8 1, ptr %i.bc, align 4, !tbaa !409
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 %7, ptr %i.bd, align 8, !tbaa !410
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 36
  store i8 %6, ptr %i.be, align 4, !tbaa !99
  %i.bf = call { i64, i32 } @_ZNK4llvm14AArch64TTIImpl24getMemIntrinsicInstrCostERKNS_26MemIntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(37) %11, i32 noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bg = call { i64, i32 } @_ZNK4llvm14AArch64TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS4_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull %2, i8 %6, i32 noundef %7, i32 noundef %8, i64 poison, ptr poison)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { i64, i32 } [ %i.bf, %bb.k ], [ %i.bg, %bb.l ] ; 2 uses
  %.sroa.6145.0 = extractvalue { i64, i32 } %.pn, 1
  %.sroa.0144.0 = extractvalue { i64, i32 } %.pn, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE23getTypeLegalizationCostEPNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE23getTypeLegalizationCostEPNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2)
  %.sroa.0141.0.copyload = load i64, ptr %12, align 8, !tbaa !91 ; 5 uses
  %.sroa.6143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.6143.0.copyload = load i32, ptr %.sroa.6143.0..sroa_idx, align 8, !tbaa !286
  %i.bh = icmp eq i32 %1, 34
  %i.bi = icmp eq i32 %3, 4
  %or.cond3 = and i1 %i.bh, %i.bi
  br i1 %or.cond3, label %bb.n, label %_ZN4llvm15InstructionCostmLEl.exit

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bk = load i16, ptr %i.bj, align 8, !tbaa !283 ; 3 uses
  %i.bl = add i16 %i.bk, -19
  %spec.select.i.i.i = icmp ult i16 %i.bl, 197
  br i1 %spec.select.i.i.i, label %bb.o, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

bb.o:                                             ; preds = %bb.n
  %i.bm = zext nneg i16 %i.bk to i64
  %i.bn = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !303
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.n, %bb.o
  %.sroa.0.0.i.i = phi i16 [ %i.bp, %bb.o ], [ %i.bk, %bb.n ]
  %i.bq = zext i16 %.sroa.0.0.i.i to i64
  %i.br = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bs, align 16
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bu = load i16, ptr %i.bt, align 8, !tbaa !283 ; 3 uses
  %i.bv = add i16 %i.bu, -19
  %spec.select.i.i.i112 = icmp ult i16 %i.bv, 197
  br i1 %spec.select.i.i.i112, label %bb.p, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit115

bb.p:                                             ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %i.bw = zext nneg i16 %i.bu to i64
  %i.bx = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 -2
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !303
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit115

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit115:     ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit, %bb.p
  %.sroa.0.0.i.i113 = phi i16 [ %i.bz, %bb.p ], [ %i.bu, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit ]
  %i.ca = zext i16 %.sroa.0.0.i.i113 to i64
  %i.cb = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -16
  %.sroa.0.0.copyload.i.i114 = load i64, ptr %i.cc, align 16
  %i.cd = shl i64 %.sroa.0.0.copyload.i.i114, 2
  %i.ce = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.cd
  br i1 %i.ce, label %bb.q, label %_ZN4llvm15InstructionCostmLEl.exit

bb.q:                                             ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit115
  %i.cf = add i64 %.sroa.0141.0.copyload, -576460752303423488
  %i.cg = icmp ult i64 %i.cf, -1152921504606846976
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ch = icmp sgt i64 %.sroa.0141.0.copyload, 0
  %spec.select = select i1 %i.ch, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvm15InstructionCostmLEl.exit

bb.s:                                             ; preds = %bb.q
  %i.ci = shl nsw i64 %.sroa.0141.0.copyload, 2
  br label %_ZN4llvm15InstructionCostmLEl.exit

_ZN4llvm15InstructionCostmLEl.exit:               ; preds = %bb.r, %bb.s, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit115, %bb.m
  %.sroa.0141.0 = phi i64 [ %.sroa.0141.0.copyload, %bb.m ], [ %.sroa.0141.0.copyload, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit115 ], [ %i.ci, %bb.s ], [ %spec.select, %bb.r ] ; 2 uses
  %i.cj = zext i32 %3 to i64
  %i.ck = shl nuw nsw i64 %i.cj, 2
  %i.cl = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ck, i64 %.sroa.0141.0) ; 2 uses
  %i.cm = extractvalue { i64, i1 } %i.cl, 1
  %i.cn = extractvalue { i64, i1 } %i.cl, 0
  %i.co = ashr exact i64 %i.cn, 2
  %i.cp = icmp sgt i64 %.sroa.0141.0, 0
  %spec.select158 = select i1 %i.cp, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i.i = select i1 %i.cm, i64 %spec.select158, i64 %i.co
  %i.cq = icmp eq i32 %.sroa.6143.0.copyload, 1
  %spec.select.i120 = select i1 %i.cq, i32 1, i32 %.sroa.6145.0
  %.0.i.i121 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0144.0, i64 %.0.i.i)
  %i.cr = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %3, i1 true)
  %i.cs = xor i32 %i.cr, 31
  %i.ct = mul i32 %i.cs, %3
  %i.cu = zext i32 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 2
  %.0.i.i129 = call i64 @llvm.sadd.sat.i64(i64 %.0.i.i121, i64 %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %.critedge

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit108.thread: ; preds = %.thread, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.t

bb.t:                                             ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit108.thread, %bb.f, %bb.e
  %i.cw = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE26getInterleavedMemoryOpCostEjPNS_4TypeEjNS_8ArrayRefIjEENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindEbb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr %4, i64 %5, i8 %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9, i1 noundef zeroext %10) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.cw, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.cw, 1
  br label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

.critedge:                                        ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit108, %_ZN4llvm15InstructionCostmLEl.exit, %bb.h
  %.sroa.0154.0 = phi i64 [ %i.an, %bb.h ], [ %.0.i.i129, %_ZN4llvm15InstructionCostmLEl.exit ], [ 0, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit108 ]
  %.sroa.8155.0 = phi i32 [ 0, %bb.h ], [ %spec.select.i120, %_ZN4llvm15InstructionCostmLEl.exit ], [ 1, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit108 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

_ZN4llvm13isPowerOf2_32Ej.exit.thread:            ; preds = %bb.c, %bb.d, %bb.b, %.critedge, %bb.t
  %.sroa.0154.1 = phi i64 [ 0, %bb.c ], [ %.fca.0.extract, %bb.t ], [ %.sroa.0154.0, %.critedge ], [ 0, %bb.b ], [ 0, %bb.d ]
  %.sroa.8155.1 = phi i32 [ 1, %bb.c ], [ %.fca.1.extract, %bb.t ], [ %.sroa.8155.0, %.critedge ], [ 1, %bb.b ], [ 1, %bb.d ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0154.1, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.8155.1, 1
  ret { i64, i32 } %.fca.1.insert
}

declare noundef zeroext i1 @_ZNK4llvm21AArch64TargetLowering28isLegalInterleavedAccessTypeEPNS_10VectorTypeERKNS_10DataLayoutERb(ptr noundef nonnull align 8 dereferenceable(518448), ptr noundef, ptr noundef nonnull align 8 dereferenceable(912), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm21AArch64TargetLowering25getNumInterleavedAccessesEPNS_10VectorTypeERKNS_10DataLayoutEb(ptr noundef nonnull align 8 dereferenceable(518448), ptr noundef, ptr noundef nonnull align 8 dereferenceable(912), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE26getInterleavedMemoryOpCostEjPNS_4TypeEjNS_8ArrayRefIjEENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindEbb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr %4, i64 %5, i8 %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9, i1 noundef zeroext %10) unnamed_addr #3 comdat align 2 {
bb.a:
  %11 = alloca %"class.llvm::ArrayRef.216", align 8 ; 4 uses
  %12 = alloca %"class.llvm::ArrayRef.216", align 8 ; 4 uses
  %13 = alloca %"class.llvm::ArrayRef.216", align 8 ; 4 uses
  %14 = alloca %"class.llvm::ArrayRef.216", align 8 ; 4 uses
  %15 = alloca %"struct.std::pair.169", align 8   ; 7 uses
  %16 = alloca %"class.llvm::MemIntrinsicCostAttributes", align 8 ; 9 uses
  %17 = alloca %"class.llvm::BitVector", align 8  ; 11 uses
  %18 = alloca %"class.llvm::APInt", align 8      ; 16 uses
  %19 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %20 = alloca %"class.llvm::APInt", align 8      ; 24 uses
  %21 = alloca %"class.llvm::ArrayRef.168", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 255
  %i.d = icmp eq i32 %i.c, 19
  br i1 %i.d, label %bb.bv, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !233  ; 13 uses
  %i.g = udiv i32 %i.f, %3                        ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !343
  %i.j = tail call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.i, i32 noundef %i.g) #30 ; 7 uses
  %or.cond = or i1 %9, %10
  br i1 %or.cond, label %_ZNK4llvm14AArch64TTIImpl24getMemIntrinsicInstrCostERKNS_26MemIntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE.exit, label %bb.c

_ZNK4llvm14AArch64TTIImpl24getMemIntrinsicInstrCostERKNS_26MemIntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE.exit: ; preds = %bb.b
  %i.k = icmp eq i32 %1, 33
  %i.l = select i1 %i.k, i32 241, i32 245
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %16, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.m, align 8, !tbaa !405
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 %i.l, ptr %i.n, align 8, !tbaa !408
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 28
  store i8 1, ptr %i.o, align 4, !tbaa !409
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i32 %7, ptr %i.p, align 8, !tbaa !410
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 36
  store i8 %6, ptr %i.q, align 4, !tbaa !99
  %i.r = call { i64, i32 } @_ZNK4llvm14AArch64TTIImpl21getMaskedMemoryOpCostERKNS_26MemIntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(37) %16, i32 noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = tail call { i64, i32 } @_ZNK4llvm14AArch64TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS4_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull %2, i8 %6, i32 noundef %7, i32 noundef %8, i64 poison, ptr poison)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK4llvm14AArch64TTIImpl24getMemIntrinsicInstrCostERKNS_26MemIntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE.exit
  %.pn = phi { i64, i32 } [ %i.r, %_ZNK4llvm14AArch64TTIImpl24getMemIntrinsicInstrCostERKNS_26MemIntrinsicCostAttributesENS_19TargetTransformInfo14TargetCostKindE.exit ], [ %i.s, %bb.c ] ; 2 uses
  %.sroa.19.0 = extractvalue { i64, i32 } %.pn, 1 ; 2 uses
  %.sroa.0321.0 = extractvalue { i64, i32 } %.pn, 0 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !288, !noalias !682, !nonnull !19, !align !90
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35, !noalias !682
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !287, !noalias !682, !nonnull !19, !align !90
  %i.y = call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.v, ptr noundef nonnull align 8 dereferenceable(912) %i.x, ptr noundef nonnull %2, i1 noundef zeroext false), !noalias !682 ; 2 uses
  %i.z = extractvalue { i16, ptr } %i.y, 0
  %i.aa = extractvalue { i16, ptr } %i.y, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %bb.d
  %.sroa.019.0.i = phi i64 [ 4, %bb.d ], [ %.sroa.019.1.i, %bb.k ] ; 4 uses
  %.sroa.025.0.i = phi i16 [ %i.z, %bb.d ], [ %.sroa.0.0.copyload.i, %bb.k ] ; 6 uses
  %.sroa.1027.0.i = phi ptr [ %i.aa, %bb.d ], [ %.sroa.24.0.copyload.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30, !noalias !682
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !35, !noalias !682
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.169") align 8 %15, ptr noundef nonnull align 8 dereferenceable(518435) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i16 %.sroa.025.0.i, ptr %.sroa.1027.0.i) #30, !noalias !682
  %i.ad = load i8, ptr %15, align 8, !tbaa !299, !noalias !682 ; 2 uses
  switch i8 %i.ad, label %bb.g [
    i8 9, label %bb.f
    i8 0, label %_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  ]

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq i16 %.sroa.025.0.i, 0
  %spec.select.i = select i1 %.not.i, i16 8, i16 %.sroa.025.0.i
  br label %_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = and i8 %i.ad, -5
  %or.cond.i = icmp eq i8 %i.ae, 2
  br i1 %or.cond.i, label %bb.h, label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.h:                                             ; preds = %bb.g
  %i.af = add i64 %.sroa.019.0.i, -1152921504606846976
  %i.ag = icmp ult i64 %i.af, -2305843009213693952
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp sgt i64 %.sroa.019.0.i, 0
  %spec.select28.i = select i1 %i.ah, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ai = shl nsw i64 %.sroa.019.0.i, 1
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

_ZN4llvm15InstructionCostmLEl.exit.i:             ; preds = %bb.j, %bb.i, %bb.g
  %.sroa.019.1.i = phi i64 [ %.sroa.019.0.i, %bb.g ], [ %i.ai, %bb.j ], [ %spec.select28.i, %bb.i ]
  %.sroa.0.0.copyload.i = load i16, ptr %i.ab, align 8, !tbaa !303, !noalias !682 ; 2 uses
  %.sroa.24.0.copyload.i = load ptr, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !232, !noalias !682 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.sroa.025.0.i, %.sroa.0.0.copyload.i
  %i.aj = icmp eq ptr %.sroa.1027.0.i, %.sroa.24.0.copyload.i
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.aj, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm15InstructionCostmLEl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30, !noalias !682
  br label %bb.e, !llvm.loop !304

_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit: ; preds = %bb.e, %_ZN4llvm15InstructionCostmLEl.exit.i, %bb.f
  %.sroa.025.0.lcssa38.sink.i = phi i16 [ %spec.select.i, %bb.f ], [ %.sroa.025.0.i, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ %.sroa.025.0.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30, !noalias !682
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !287, !nonnull !19, !align !90
  %i.al = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ak, ptr noundef nonnull %2) ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %i.al, 1
  %i.am = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.am, label %bb.l, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.l:                                             ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.57) #32
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %i.al, 0
  %i.an = add i64 %.fca.0.extract.i.i, 7
  %i.ao = lshr i64 %i.an, 3
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = zext i16 %.sroa.025.0.lcssa38.sink.i to i64
  %i.ar = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aq ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.ar, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.as = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.as, label %bb.m, label %_ZNK4llvm8TypeSizecvmEv.exit143

bb.m:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.57) #32
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit143:                  ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.at = getelementptr i8, ptr %i.ar, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.at, align 16
  %i.au = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.av = lshr i64 %i.au, 3
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  %i.ax = icmp eq i32 %.sroa.19.0, 0
  %i.ay = icmp ugt i32 %i.ap, %i.aw
  %or.cond140 = and i1 %i.ax, %i.ay
  br i1 %or.cond140, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit143
  %i.az = add i32 %i.ap, -1
  %i.ba = udiv i32 %i.az, %i.aw                   ; 2 uses
  %i.bb = add nuw i32 %i.ba, 1                    ; 3 uses
  %i.bc = icmp ne i32 %i.f, 0
  %i.bd = zext i1 %i.bc to i32                    ; 2 uses
  %i.be = sub i32 %i.f, %i.bd
  %i.bf = udiv i32 %i.be, %i.bb
  %i.bg = add i32 %i.bf, %i.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.bh = add i32 %i.ba, 64                       ; 2 uses
  %i.bi = lshr i32 %i.bh, 6                       ; 4 uses
  %i.bj = zext nneg i32 %i.bi to i64              ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.bk, ptr %17, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 6, ptr %i.bm, align 4, !tbaa !24
  %i.bn = icmp ugt i32 %i.bh, 447
  br i1 %i.bn, label %bb.o, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bl, align 8, !tbaa !23
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %17, ptr noundef nonnull %i.bk, i64 noundef %i.bj, i64 noundef 8) #30
  %i.bo = load ptr, ptr %17, align 8, !tbaa !21   ; 3 uses
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bj, 3 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i.i.i.i.i.i.i.i
  %i.bq = add nsw i64 %.idx.i.i.i.i.i.i.i.i, -8   ; 2 uses
  %i.br = lshr exact i64 %i.bq, 3
  %i.bs = add nuw nsw i64 %i.br, 1
  %xtraiter441 = and i64 %i.bs, 7                 ; 2 uses
  %lcmp.mod442.not = icmp eq i64 %xtraiter441, 0
  br i1 %lcmp.mod442.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.bo, %bb.o ] ; 2 uses
  %prol.iter443 = phi i64 [ %prol.iter443.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.o ]
  store i64 0, ptr %.06.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !91
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter443.next = add i64 %prol.iter443, 1   ; 2 uses
  %prol.iter443.cmp.not = icmp eq i64 %prol.iter443.next, %xtraiter441
  br i1 %prol.iter443.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !685

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %bb.o
  %.06.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bo, %bb.o ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bu = icmp ult i64 %i.bq, 56
  br i1 %i.bu, label %_ZN4llvm9BitVectorC2Ejb.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 0, ptr %.06.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !91
  %i.bv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 8
  store i64 0, ptr %i.bv, align 8, !tbaa !91
  %i.bw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 16
  store i64 0, ptr %i.bw, align 8, !tbaa !91
  %i.bx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 24
  store i64 0, ptr %i.bx, align 8, !tbaa !91
  %i.by = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 32
  store i64 0, ptr %i.by, align 8, !tbaa !91
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 40
  store i64 0, ptr %i.bz, align 8, !tbaa !91
  %i.ca = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 48
  store i64 0, ptr %i.ca, align 8, !tbaa !91
  %i.cb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 56
  store i64 0, ptr %i.cb, align 8, !tbaa !91
end_hunk_0
begin_hunk_1_@_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE26getInterleavedMemoryOpCostEjPNS_4TypeEjNS_8ArrayRefIjEENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindEbb:bb.a
  store i32 %i.bi, ptr %i.bl, align 8, !tbaa !23
  %i.cr = getelementptr inbounds nuw i8, ptr %17, i64 64
  store i32 %i.bb, ptr %i.cr, align 8, !tbaa !689
  %.idx = shl nuw nsw i64 %5, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.not375 = icmp eq i64 %5, 0
  %.pre394 = load ptr, ptr %17, align 8           ; 2 uses
  %.not389 = icmp ugt i32 %3, %i.f
  %or.cond428 = or i1 %.not375, %.not389
  br i1 %or.cond428, label %._crit_edge378.split, label %.lr.ph

._crit_edge378.split.loopexit:                    ; preds = %._crit_edge
  %.pre = load ptr, ptr %17, align 8, !tbaa !21
  br label %._crit_edge378.split

._crit_edge378.split:                             ; preds = %._crit_edge378.split.loopexit, %_ZN4llvm9BitVectorC2Ejb.exit
  %i.ct = phi ptr [ %.pre, %._crit_edge378.split.loopexit ], [ %.pre394, %_ZN4llvm9BitVectorC2Ejb.exit ] ; 6 uses
  %.idx.i = shl nuw nsw i64 %i.bj, 3              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx.i
  %.not10.i = icmp eq i32 %i.bi, 0
  br i1 %.not10.i, label %_ZNK4llvm9BitVector5countEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge378.split
  %i.cv = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.cw = lshr exact i64 %i.cv, 3
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cv, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader434, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.cx, 4611686018427387900     ; 3 uses
  %i.cy = shl i64 %n.vec, 3
  %i.cz = getelementptr i8, ptr %i.ct, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.dg, %vector.body ]
  %vec.phi432 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.dh, %vector.body ]
  %i.da = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ct, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !91
  %wide.load433 = load <2 x i64>, ptr %i.db, align 8, !tbaa !91
  %i.dc = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.dd = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load433)
  %i.de = trunc nuw nsw <2 x i64> %i.dc to <2 x i32>
  %i.df = trunc nuw nsw <2 x i64> %i.dd to <2 x i32>
  %i.dg = add <2 x i32> %vec.phi, %i.de           ; 2 uses
  %i.dh = add <2 x i32> %vec.phi432, %i.df        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !690

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.dh, %i.dg
  %i.dj = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %_ZNK4llvm9BitVector5countEv.exit.loopexit, label %.lr.ph.i.preheader434

.lr.ph.i.preheader434:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.dj, %middle.block ]
  %.0911.i.ph = phi ptr [ %i.ct, %.lr.ph.i.preheader ], [ %i.cz, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader434, %.lr.ph.i
  %.012.i = phi i32 [ %i.dn, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader434 ]
  %.0911.i = phi ptr [ %i.do, %.lr.ph.i ], [ %.0911.i.ph, %.lr.ph.i.preheader434 ] ; 2 uses
  %i.dk = load i64, ptr %.0911.i, align 8, !tbaa !91
  %i.dl = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dk)
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = add i32 %.012.i, %i.dm                  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i, i64 8 ; 2 uses
  %.not.i144 = icmp eq ptr %i.do, %i.cu
  br i1 %.not.i144, label %_ZNK4llvm9BitVector5countEv.exit.loopexit, label %.lr.ph.i, !llvm.loop !691

_ZNK4llvm9BitVector5countEv.exit.loopexit:        ; preds = %.lr.ph.i, %middle.block
  %.lcssa430 = phi i32 [ %i.dj, %middle.block ], [ %i.dn, %.lr.ph.i ]
  %i.dp = zext i32 %.lcssa430 to i64
  br label %_ZNK4llvm9BitVector5countEv.exit

_ZNK4llvm9BitVector5countEv.exit:                 ; preds = %_ZNK4llvm9BitVector5countEv.exit.loopexit, %._crit_edge378.split
  %.0.lcssa.i = phi i64 [ 0, %._crit_edge378.split ], [ %i.dp, %_ZNK4llvm9BitVector5countEv.exit.loopexit ]
  %i.dq = sdiv i64 %.sroa.0321.0, 4
  %i.dr = mul nsw i64 %i.dq, %.0.lcssa.i          ; 2 uses
  %i.ds = icmp ne i64 %i.dr, 0
  %i.dt = zext i1 %i.ds to i64                    ; 2 uses
  %i.du = sub i64 %i.dr, %i.dt
  %i.dv = zext i32 %i.bb to i64
  %i.dw = udiv i64 %i.du, %i.dv
  %i.dx = add i64 %i.dw, %i.dt                    ; 3 uses
  %i.dy = add i64 %i.dx, 2305843009213693952
  %i.dz = icmp ult i64 %i.dy, 4611686018427387904
  %i.ea = shl nsw i64 %i.dx, 2
  %i.eb = icmp sgt i64 %i.dx, 0
  %i.ec = select i1 %i.eb, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i = select i1 %i.dz, i64 %i.ea, i64 %i.ec
  %i.ed = icmp eq ptr %i.ct, %i.bk
  br i1 %i.ed, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm9BitVector5countEv.exit
  call void @free(ptr noundef %i.ct) #30
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZNK4llvm9BitVector5countEv.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.s

.lr.ph:                                           ; preds = %_ZN4llvm9BitVectorC2Ejb.exit, %._crit_edge
  %.0376 = phi ptr [ %i.ef, %._crit_edge ], [ %4, %_ZN4llvm9BitVectorC2Ejb.exit ] ; 2 uses
  %i.ee = load i32, ptr %.0376, align 4, !tbaa !27
  br label %bb.r

._crit_edge:                                      ; preds = %bb.r
  %i.ef = getelementptr inbounds nuw i8, ptr %.0376, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ef, %i.cs
  br i1 %.not, label %._crit_edge378.split.loopexit, label %.lr.ph

bb.r:                                             ; preds = %.lr.ph, %bb.r
  %.0134374 = phi i32 [ 0, %.lr.ph ], [ %i.er, %bb.r ] ; 2 uses
  %i.eg = mul i32 %.0134374, %3
  %i.eh = add i32 %i.eg, %i.ee
  %i.ei = udiv i32 %i.eh, %i.bg                   ; 2 uses
  %i.ej = and i32 %i.ei, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl nuw i64 1, %i.ek
  %i.em = lshr i32 %i.ei, 6
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.pre394, i64 %i.en ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !91
  %i.eq = or i64 %i.el, %i.ep
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !91
  %i.er = add nuw i32 %.0134374, 1                ; 2 uses
  %i.es = icmp ult i32 %i.er, %i.g
  br i1 %i.es, label %bb.r, label %._crit_edge, !llvm.loop !692

bb.s:                                             ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %_ZNK4llvm8TypeSizecvmEv.exit143
  %.sroa.0321.1 = phi i64 [ %.0.i, %_ZN4llvm9BitVectorD2Ev.exit ], [ %.sroa.0321.0, %_ZNK4llvm8TypeSizecvmEv.exit143 ] ; 2 uses
  %.sroa.19.1 = phi i32 [ 0, %_ZN4llvm9BitVectorD2Ev.exit ], [ %.sroa.19.0, %_ZNK4llvm8TypeSizecvmEv.exit143 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.et = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 6 uses
  store i32 %i.g, ptr %i.et, align 8, !tbaa !251, !alias.scope !693
  %i.eu = icmp ult i32 %i.g, 65
  br i1 %i.eu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ev = sub nsw i32 0, %i.g
  %i.ew = and i32 %i.ev, 63
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = lshr i64 -1, %i.ex
  %i.ez = icmp ugt i32 %3, %i.f
  %spec.select.i.i = select i1 %i.ez, i64 0, i64 %i.ey, !prof !256
  store i64 %spec.select.i.i, ptr %18, align 8, !tbaa !99, !alias.scope !693
  br label %_ZN4llvm5APInt10getAllOnesEj.exit

bb.u:                                             ; preds = %bb.s
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %18, i64 noundef -1, i1 noundef zeroext true) #30
  br label %_ZN4llvm5APInt10getAllOnesEj.exit

_ZN4llvm5APInt10getAllOnesEj.exit:                ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.fa = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i32 %i.f, ptr %i.fa, align 8, !tbaa !251, !alias.scope !696
  %i.fb = icmp ult i32 %i.f, 65
  br i1 %i.fb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit
  %i.fc = sub nsw i32 0, %i.f
  %i.fd = and i32 %i.fc, 63
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = lshr i64 -1, %i.fe
  %i.fg = icmp eq i32 %i.f, 0
  %spec.select.i.i145 = select i1 %i.fg, i64 0, i64 %i.ff, !prof !256
  store i64 %spec.select.i.i145, ptr %19, align 8, !tbaa !99, !alias.scope !696
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.fh = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i32 %i.f, ptr %i.fh, align 8, !tbaa !251, !alias.scope !699
  store i64 0, ptr %20, align 8, !tbaa !99, !alias.scope !702
  br label %_ZN4llvm5APInt7getZeroEj.exit

bb.w:                                             ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %19, i64 noundef -1, i1 noundef zeroext true) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.fi = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i32 %i.f, ptr %i.fi, align 8, !tbaa !251, !alias.scope !702
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %20, i64 noundef 0, i1 noundef zeroext false) #30
  br label %_ZN4llvm5APInt7getZeroEj.exit

_ZN4llvm5APInt7getZeroEj.exit:                    ; preds = %bb.v, %bb.w
  %i.fj = phi ptr [ %i.fh, %bb.v ], [ %i.fi, %bb.w ] ; 6 uses
  %.idx390 = shl nsw i64 %5, 2                    ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 %.idx390
  %.not139384 = icmp ne i64 %5, 0
  %i.fl = icmp ule i32 %3, %i.f
  %or.cond388 = and i1 %.not139384, %i.fl
  br i1 %or.cond388, label %.lr.ph381.preheader, label %._crit_edge387.split

.lr.ph381.preheader:                              ; preds = %_ZN4llvm5APInt7getZeroEj.exit
  %.pre395 = load i32, ptr %i.fj, align 8, !tbaa !251
  %i.fm = icmp ult i32 %.pre395, 65
  %umax = call i32 @llvm.umax.i32(i32 %i.g, i32 1) ; 3 uses
  %xtraiter444 = and i32 %umax, 1
  %22 = icmp ult i32 %i.g, 2
  %unroll_iter = and i32 %umax, -2
  %lcmp.mod445.not = icmp eq i32 %xtraiter444, 0
  %lcmp.mod446 = trunc i32 %umax to i1
  %umax447 = call i32 @llvm.umax.i32(i32 %i.g, i32 1) ; 2 uses
  %xtraiter448 = and i32 %umax447, 3              ; 3 uses
  %i.fn = icmp ult i32 %i.g, 4
  %unroll_iter452 = and i32 %umax447, -4
  %lcmp.mod449.not = icmp eq i32 %xtraiter448, 0
  %lcmp.mod451 = icmp ne i32 %xtraiter448, 0
  br label %.lr.ph381

._crit_edge387.split:                             ; preds = %._crit_edge382, %_ZN4llvm5APInt7getZeroEj.exit
  %i.fo = icmp eq i32 %1, 33
  %i.fp = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fq = load i32, ptr %i.fp, align 8
  %i.fr = and i32 %i.fq, 255
  %i.fs = icmp eq i32 %i.fr, 19                   ; 2 uses
  br i1 %i.fo, label %bb.x, label %bb.as

.lr.ph381:                                        ; preds = %.lr.ph381.preheader, %._crit_edge382
  %.0135385 = phi ptr [ %i.hq, %._crit_edge382 ], [ %4, %.lr.ph381.preheader ] ; 2 uses
  %i.ft = load i32, ptr %.0135385, align 4, !tbaa !27 ; 8 uses
  br i1 %i.fm, label %.lr.ph381.split.us, label %_ZN4llvm5APInt6setBitEj.exit.preheader

_ZN4llvm5APInt6setBitEj.exit.preheader:           ; preds = %.lr.ph381
  br i1 %22, label %_ZN4llvm5APInt6setBitEj.exit.epil.preheader, label %_ZN4llvm5APInt6setBitEj.exit

.lr.ph381.split.us:                               ; preds = %.lr.ph381
  %.promoted = load i64, ptr %20, align 8, !tbaa !99 ; 2 uses
  br i1 %i.fn, label %_ZN4llvm5APInt6setBitEj.exit.us.epil.preheader, label %_ZN4llvm5APInt6setBitEj.exit.us

_ZN4llvm5APInt6setBitEj.exit.us:                  ; preds = %.lr.ph381.split.us, %_ZN4llvm5APInt6setBitEj.exit.us
  %i.fu = phi i64 [ %i.gv, %_ZN4llvm5APInt6setBitEj.exit.us ], [ %.promoted, %.lr.ph381.split.us ]
  %.0136379.us = phi i32 [ %i.gw, %_ZN4llvm5APInt6setBitEj.exit.us ], [ 0, %.lr.ph381.split.us ] ; 5 uses
  %niter453 = phi i32 [ %niter453.next.3, %_ZN4llvm5APInt6setBitEj.exit.us ], [ 0, %.lr.ph381.split.us ]
  %i.fv = mul i32 %.0136379.us, %3
  %i.fw = add i32 %i.fv, %i.ft
  %i.fx = and i32 %i.fw, 63
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = or i64 %i.fu, %i.fz
  %i.gb = or disjoint i32 %.0136379.us, 1
  %i.gc = mul i32 %i.gb, %3
  %i.gd = add i32 %i.gc, %i.ft
  %i.ge = and i32 %i.gd, 63
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = shl nuw i64 1, %i.gf
  %i.gh = or i64 %i.ga, %i.gg
  %i.gi = or disjoint i32 %.0136379.us, 2
  %i.gj = mul i32 %i.gi, %3
  %i.gk = add i32 %i.gj, %i.ft
  %i.gl = and i32 %i.gk, 63
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = shl nuw i64 1, %i.gm
  %i.go = or i64 %i.gh, %i.gn
  %i.gp = or disjoint i32 %.0136379.us, 3
  %i.gq = mul i32 %i.gp, %3
  %i.gr = add i32 %i.gq, %i.ft
  %i.gs = and i32 %i.gr, 63
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = shl nuw i64 1, %i.gt
  %i.gv = or i64 %i.go, %i.gu                     ; 3 uses
  %i.gw = add nuw i32 %.0136379.us, 4             ; 2 uses
  %niter453.next.3 = add i32 %niter453, 4         ; 2 uses
  %niter453.ncmp.3.not = icmp eq i32 %niter453.next.3, %unroll_iter452
  br i1 %niter453.ncmp.3.not, label %._crit_edge382.split.us.unr-lcssa, label %_ZN4llvm5APInt6setBitEj.exit.us, !llvm.loop !704

._crit_edge382.split.us.unr-lcssa:                ; preds = %_ZN4llvm5APInt6setBitEj.exit.us
  br i1 %lcmp.mod449.not, label %._crit_edge382.split.us, label %_ZN4llvm5APInt6setBitEj.exit.us.epil.preheader

_ZN4llvm5APInt6setBitEj.exit.us.epil.preheader:   ; preds = %._crit_edge382.split.us.unr-lcssa, %.lr.ph381.split.us
  %.epil.init = phi i64 [ %.promoted, %.lr.ph381.split.us ], [ %i.gv, %._crit_edge382.split.us.unr-lcssa ]
  %.0136379.us.epil.init = phi i32 [ 0, %.lr.ph381.split.us ], [ %i.gw, %._crit_edge382.split.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod451)
  br label %_ZN4llvm5APInt6setBitEj.exit.us.epil

_ZN4llvm5APInt6setBitEj.exit.us.epil:             ; preds = %_ZN4llvm5APInt6setBitEj.exit.us.epil, %_ZN4llvm5APInt6setBitEj.exit.us.epil.preheader
  %i.gx = phi i64 [ %.epil.init, %_ZN4llvm5APInt6setBitEj.exit.us.epil.preheader ], [ %i.hd, %_ZN4llvm5APInt6setBitEj.exit.us.epil ]
  %.0136379.us.epil = phi i32 [ %.0136379.us.epil.init, %_ZN4llvm5APInt6setBitEj.exit.us.epil.preheader ], [ %i.he, %_ZN4llvm5APInt6setBitEj.exit.us.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %_ZN4llvm5APInt6setBitEj.exit.us.epil.preheader ], [ %epil.iter.next, %_ZN4llvm5APInt6setBitEj.exit.us.epil ]
  %i.gy = mul i32 %.0136379.us.epil, %3
  %i.gz = add i32 %i.gy, %i.ft
  %i.ha = and i32 %i.gz, 63
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = shl nuw i64 1, %i.hb
  %i.hd = or i64 %i.gx, %i.hc                     ; 2 uses
  %i.he = add nuw i32 %.0136379.us.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter448
  br i1 %epil.iter.cmp.not, label %._crit_edge382.split.us, label %_ZN4llvm5APInt6setBitEj.exit.us.epil, !llvm.loop !705

._crit_edge382.split.us:                          ; preds = %_ZN4llvm5APInt6setBitEj.exit.us.epil, %._crit_edge382.split.us.unr-lcssa
  %.lcssa = phi i64 [ %i.gv, %._crit_edge382.split.us.unr-lcssa ], [ %i.hd, %_ZN4llvm5APInt6setBitEj.exit.us.epil ]
  store i64 %.lcssa, ptr %20, align 8, !tbaa !99
  br label %._crit_edge382

._crit_edge382.loopexit.unr-lcssa:                ; preds = %_ZN4llvm5APInt6setBitEj.exit
  br i1 %lcmp.mod445.not, label %._crit_edge382, label %_ZN4llvm5APInt6setBitEj.exit.epil.preheader

_ZN4llvm5APInt6setBitEj.exit.epil.preheader:      ; preds = %._crit_edge382.loopexit.unr-lcssa, %_ZN4llvm5APInt6setBitEj.exit.preheader
  %.0136379.epil.init = phi i32 [ 0, %_ZN4llvm5APInt6setBitEj.exit.preheader ], [ %i.io, %._crit_edge382.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod446)
  %i.hf = mul i32 %.0136379.epil.init, %3
  %i.hg = add i32 %i.hf, %i.ft                    ; 2 uses
  %i.hh = and i32 %i.hg, 63
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = shl nuw i64 1, %i.hi
  %i.hk = load ptr, ptr %20, align 8, !tbaa !99
  %i.hl = lshr i32 %i.hg, 6
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hm ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !91
  %i.hp = or i64 %i.ho, %i.hj
  store i64 %i.hp, ptr %i.hn, align 8, !tbaa !91
  br label %._crit_edge382

._crit_edge382:                                   ; preds = %_ZN4llvm5APInt6setBitEj.exit.epil.preheader, %._crit_edge382.loopexit.unr-lcssa, %._crit_edge382.split.us
  %i.hq = getelementptr inbounds nuw i8, ptr %.0135385, i64 4 ; 2 uses
  %.not139 = icmp eq ptr %i.hq, %i.fk
  br i1 %.not139, label %._crit_edge387.split, label %.lr.ph381

_ZN4llvm5APInt6setBitEj.exit:                     ; preds = %_ZN4llvm5APInt6setBitEj.exit.preheader, %_ZN4llvm5APInt6setBitEj.exit
  %.0136379 = phi i32 [ %i.io, %_ZN4llvm5APInt6setBitEj.exit ], [ 0, %_ZN4llvm5APInt6setBitEj.exit.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %_ZN4llvm5APInt6setBitEj.exit ], [ 0, %_ZN4llvm5APInt6setBitEj.exit.preheader ]
  %i.hr = mul i32 %.0136379, %3
  %i.hs = add i32 %i.hr, %i.ft                    ; 2 uses
  %i.ht = and i32 %i.hs, 63
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = shl nuw i64 1, %i.hu
  %i.hw = load ptr, ptr %20, align 8, !tbaa !99
  %i.hx = lshr i32 %i.hs, 6
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.hy ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !91
  %i.ib = or i64 %i.ia, %i.hv
  store i64 %i.ib, ptr %i.hz, align 8, !tbaa !91
  %i.ic = or disjoint i32 %.0136379, 1
  %i.id = mul i32 %i.ic, %3
  %i.ie = add i32 %i.id, %i.ft                    ; 2 uses
  %i.if = and i32 %i.ie, 63
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = shl nuw i64 1, %i.ig
  %i.ii = load ptr, ptr %20, align 8, !tbaa !99
  %i.ij = lshr i32 %i.ie, 6
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ik ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !91
  %i.in = or i64 %i.im, %i.ih
  store i64 %i.in, ptr %i.il, align 8, !tbaa !91
  %i.io = add nuw i32 %.0136379, 2                ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge382.loopexit.unr-lcssa, label %_ZN4llvm5APInt6setBitEj.exit, !llvm.loop !706

bb.x:                                             ; preds = %._crit_edge387.split
  br i1 %i.fs, label %_ZNK4llvm14AArch64TTIImpl24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS6_18VectorInstrContextE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ip = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !343
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load i32, ptr %i.ir, align 8            ; 2 uses
  %trunc.i.i.i = trunc i32 %i.is to i8
  switch i8 %trunc.i.i.i, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i [
    i8 3, label %bb.z
    i8 2, label %bb.z
    i8 0, label %bb.z
    i8 1, label %bb.z
    i8 5, label %bb.z
  ]

_ZNK4llvm4Type17isFloatingPointTyEv.exit.i:       ; preds = %bb.y
  %i.it = and i32 %i.is, 253
  %spec.select.i.i149 = icmp eq i32 %i.it, 4
  br i1 %spec.select.i.i149, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !233 ; 2 uses
  %i.iw = icmp sgt i32 %i.iv, 0
  br i1 %i.iw, label %.lr.ph.split.us.i.preheader, label %_ZNK4llvm14AArch64TTIImpl24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS6_18VectorInstrContextE.exit

.lr.ph.split.us.i.preheader:                      ; preds = %bb.z
  %.pre401 = load ptr, ptr %18, align 8
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.aa
  %i.ix = phi ptr [ %i.jk, %bb.aa ], [ %.pre401, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.042.us.i = phi i32 [ %i.jl, %bb.aa ], [ 0, %.lr.ph.split.us.i.preheader ] ; 4 uses
  %.sroa.7.041.us.i = phi i32 [ %.sroa.7.2.us.i, %bb.aa ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.sroa.036.040.us.i = phi i64 [ %.sroa.036.2.us.i, %bb.aa ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %i.iy = and i32 %.042.us.i, 63
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = shl nuw i64 1, %i.iz
  %i.jb = load i32, ptr %i.et, align 8, !tbaa !251
  %i.jc = icmp ult i32 %i.jb, 65
  %i.jd = lshr i32 %.042.us.i, 6
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.je
  %.in.i.i.us.i = select i1 %i.jc, ptr %18, ptr %i.jf
  %i.jg = load i64, ptr %.in.i.i.us.i, align 8, !tbaa !99
  %i.jh = and i64 %i.jg, %i.ja
  %.not.us.i = icmp eq i64 %i.jh, 0
  br i1 %.not.us.i, label %bb.aa, label %_ZN4llvm15InstructionCostpLERKS0_.exit.us.i

_ZN4llvm15InstructionCostpLERKS0_.exit.us.i:      ; preds = %.lr.ph.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.ji = call { i64, i32 } @_ZNK4llvm14AArch64TTIImpl24getVectorInstrCostHelperEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_11InstructionEPNS_5ValueENS_8ArrayRefISt5tupleIJS9_PNS_4UserEiEEEENS3_18VectorInstrContextE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 64, ptr noundef nonnull %i.j, i32 noundef %8, i32 noundef %.042.us.i, ptr noundef null, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.216") align 8 %14, i8 noundef zeroext 0) ; 2 uses
  %.fca.0.extract.i.us.i = extractvalue { i64, i32 } %i.ji, 0
  %.fca.1.extract.i.us.i = extractvalue { i64, i32 } %i.ji, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.jj = icmp eq i32 %.fca.1.extract.i.us.i, 1
  %spec.select.us.i = select i1 %i.jj, i32 1, i32 %.sroa.7.041.us.i
  %.0.i.us.i = call i64 @llvm.sadd.sat.i64(i64 %.sroa.036.040.us.i, i64 %.fca.0.extract.i.us.i)
  %.pre400 = load ptr, ptr %18, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm15InstructionCostpLERKS0_.exit.us.i, %.lr.ph.split.us.i
  %i.jk = phi ptr [ %i.ix, %.lr.ph.split.us.i ], [ %.pre400, %_ZN4llvm15InstructionCostpLERKS0_.exit.us.i ]
  %.sroa.036.2.us.i = phi i64 [ %.sroa.036.040.us.i, %.lr.ph.split.us.i ], [ %.0.i.us.i, %_ZN4llvm15InstructionCostpLERKS0_.exit.us.i ] ; 2 uses
  %.sroa.7.2.us.i = phi i32 [ %.sroa.7.041.us.i, %.lr.ph.split.us.i ], [ %spec.select.us.i, %_ZN4llvm15InstructionCostpLERKS0_.exit.us.i ] ; 2 uses
  %i.jl = add nuw nsw i32 %.042.us.i, 1           ; 2 uses
  %exitcond71.not.i = icmp eq i32 %i.jl, %i.iv
  br i1 %exitcond71.not.i, label %_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS8_18VectorInstrContextE.exit.loopexit, label %.lr.ph.split.us.i, !llvm.loop !617

end_hunk_1
