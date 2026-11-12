Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NVGPUToNVVM?download=true
inline.NumInlined: 8921
inline.NumDeleted: 4701
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK12_GLOBAL__N_121NVGPUTruncfOpLowering15matchAndRewriteEN4mlir5nvgpu8TruncfOpENS2_15TruncfOpAdaptorERNS1_25ConversionPatternRewriterE:bb.a
  %i.cg = add i64 %.sroa.5.0.extract.shift.i.i.i, %i.bz
  %i.ch = and i64 %i.cg, 4294967295
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.ci = icmp eq i64 %i.ch, %i.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  br i1 %i.ci, label %_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEE13getRandomBitsEv.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEE14getODSOperandsEj.exit.i.i
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %11, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.cj, align 8
  %i.ck = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef 0) #21
  %i.cl = ptrtoint ptr %i.ck to i64
  br label %_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEE13getRandomBitsEv.exit.i

_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEE13getRandomBitsEv.exit.i: ; preds = %bb.h, %_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEE14getODSOperandsEj.exit.i.i
  %.sroa.03.0.i.i = phi i64 [ %i.cl, %bb.h ], [ 0, %_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEE14getODSOperandsEj.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.cm = load i64, ptr %i.bw, align 8, !tbaa !186
  %i.cn = trunc i64 %i.cm to i32
  %i.co = call i64 @_ZN4mlir5nvgpu6detail26TruncfOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr noundef nonnull align 8 dereferenceable(80) %22, i32 noundef 0, i32 noundef %i.cn) #21
  %.sroa.0.0.copyload.i13.i.i104.i = load i64, ptr %i.ca, align 8 ; 2 uses
  %i.cp = and i64 %i.co, 4294967295               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.0.0.copyload.i13.i.i104.i, ptr %8, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.cp, ptr %i.cq, align 8
  %i.cr = icmp eq i64 %i.cp, 0
  br i1 %i.cr, label %_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEE5getInEv.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEE13getRandomBitsEv.exit.i
  %i.cs = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %i.cp) #21
  br label %_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEE5getInEv.exit.i

_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEE5getInEv.exit.i: ; preds = %bb.i, %_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEE13getRandomBitsEv.exit.i
  %.sroa.0.0.i.i.i.i.i106.i = phi i64 [ %i.cs, %bb.i ], [ %.sroa.0.0.copyload.i13.i.i104.i, %_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEE13getRandomBitsEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  store i64 %.sroa.0.0.i.i.i.i.i106.i, ptr %9, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ct, align 8
  %i.cu = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef 0) #21 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.cv = icmp eq i32 %i.bb, 64
  br i1 %i.cv, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEE5getInEv.exit.i
  %i.cw = icmp sgt i32 %i.bd, 15
  br i1 %i.cw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.059.0.copyload.i = load ptr, ptr %19, align 8, !tbaa !132
  %i.cx = call ptr @_ZNK4mlir13TypeConverter11convertTypeENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508) %i.e, ptr %.sroa.059.0.copyload.i) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.i, align 8
  %i.cy = call ptr @_ZN4mlir4LLVM9FPTruncOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueENS0_13FastmathFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.02.0.copyload.i.i, ptr %i.cx, ptr %i.cu, i32 noundef 0) #21
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -16
  store ptr %i.cz, ptr %20, align 8
  %i.da = load ptr, ptr %16, align 8, !tbaa !141
  %i.db = ptrtoint ptr %20 to i64
  call void @_ZN4mlir25ConversionPatternRewriter9replaceOpEPNS_9OperationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.da, i64 %i.db, i64 1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %_ZN12_GLOBAL__N_111lowerTruncfEN4mlir5nvgpu8TruncfOpENS1_15TruncfOpAdaptorERNS0_25ConversionPatternRewriterEPKNS0_17LLVMTypeConverterE.exit

bb.l:                                             ; preds = %bb.j
  %i.dc = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #21 ; 2 uses
  %i.dd = extractvalue { ptr, i64 } %i.dc, 0
  %i.de = extractvalue { ptr, i64 } %i.dc, 1
  %i.df = call { ptr, ptr } @_ZN4mlir7Builder10getF32TypeEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #21
  %i.dg = extractvalue { ptr, ptr } %i.df, 0
  %i.dh = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr %i.dd, i64 %i.de, ptr %i.dg, ptr null, i64 0) #21 ; 2 uses
  %.sroa.02.0.copyload.i108.i = load ptr, ptr %i.i, align 8
  %i.di = call ptr @_ZN4mlir4LLVM9FPTruncOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueENS0_13FastmathFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.02.0.copyload.i108.i, ptr %i.dh, ptr %i.cu, i32 noundef 0) #21
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -16
  %i.dk = ptrtoint ptr %i.dh to i64
  store i64 %i.dk, ptr %18, align 8
  %i.dl = call { ptr, ptr } @_ZN4mlir7Builder10getF32TypeEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #21
  %i.dm = extractvalue { ptr, ptr } %i.dl, 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEE5getInEv.exit.i
  %.sroa.0196.0.i = phi ptr [ %i.dj, %bb.l ], [ %i.cu, %_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEE5getInEv.exit.i ]
  %.0.i = phi i32 [ 32, %bb.l ], [ %i.bb, %_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEE5getInEv.exit.i ] ; 2 uses
  %.sroa.074.0.i = phi ptr [ %i.dm, %bb.l ], [ %i.ay, %_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEE5getInEv.exit.i ]
  %i.dn = icmp eq i32 %i.bd, 6
  %i.do = select i1 %i.dn, i32 8, i32 %i.bd       ; 3 uses
  %i.dp = mul nsw i32 %.0.i, %i.bi
  %i.dq = sdiv i32 %i.dp, 32
  %i.dr = mul nsw i32 %i.do, %i.bi                ; 2 uses
  %i.ds = sdiv i32 %i.dr, 32                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.dt = sext i32 %i.dq to i64
  store i64 %i.dt, ptr %i.a, align 8, !tbaa !28
  %i.du = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr nonnull %i.a, i64 1, ptr %i.j, ptr null, i64 0) #21
  %.sroa.02.0.copyload.i111.i = load ptr, ptr %i.i, align 8
  %i.dv = call ptr @_ZN4mlir4LLVM9BitcastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.02.0.copyload.i111.i, ptr %i.du, ptr %.sroa.0196.0.i) #21
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.dx = sext i32 %i.ds to i64
  store i64 %i.dx, ptr %i.b, align 8, !tbaa !28
  %i.dy = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr nonnull %i.b, i64 1, ptr %i.j, ptr null, i64 0) #21
  %.sroa.01.0.copyload.i114.i = load ptr, ptr %i.i, align 8
  %i.dz = call ptr @_ZN4mlir4LLVM7UndefOp6createERNS_9OpBuilderENS_8LocationENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.01.0.copyload.i114.i, ptr %i.dy) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.074.0.i, ptr %7, align 8
  %i.ea = call noundef zeroext i1 @_ZNK4mlir4Type5isF32Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br i1 %i.ea, label %_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = call noundef zeroext i1 @_ZNK4mlir4Type6isBF16Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br i1 %i.eb, label %_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ec = call noundef zeroext i1 @_ZNK4mlir4Type5isF16Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br i1 %i.ec, label %_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %7, align 8, !tbaa !132
  %i.ed = load ptr, ptr %.sroa.02.0.copyload.i.i.i, align 8, !tbaa !128
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ee, align 8, !tbaa !18 ; 6 uses
  %i.ef = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16Float8E4M3FNTypeEvE2idE
  %i.eg = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14Float8E5M2TypeEvE2idE
  %or.cond.i.i.i.i.i = or i1 %i.ef, %i.eg
  %i.eh = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_17Float8E8M0FNUTypeEvE2idE
  %spec.select.i.i.i.i.i = or i1 %i.eh, %or.cond.i.i.i.i.i
  br i1 %spec.select.i.i.i.i.i, label %_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ei = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16Float6E2M3FNTypeEvE2idE
  %i.ej = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16Float6E3M2FNTypeEvE2idE
  %spec.select.i.i9.i.i.i = or i1 %i.ei, %i.ej
  br i1 %spec.select.i.i9.i.i.i, label %_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ek = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16Float4E2M1FNTypeEvE2idE
  %i.el = select i1 %i.ek, i64 4294967301, i64 5
  br label %_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit.i.i

_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit.i.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.7.0.i.i.i = phi i64 [ %i.el, %bb.r ], [ 4294967296, %bb.m ], [ 4294967297, %bb.n ], [ 4294967298, %bb.o ], [ 4294967299, %bb.p ], [ 4294967300, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.01.0.extract.trunc.i.i = trunc i64 %.sroa.7.0.i.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.az, ptr %6, align 8
  %i.em = call noundef zeroext i1 @_ZNK4mlir4Type5isF32Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br i1 %i.em, label %_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit25.i.i, label %bb.s

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit.i.i
  %i.en = call noundef zeroext i1 @_ZNK4mlir4Type6isBF16Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br i1 %i.en, label %_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit25.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eo = call noundef zeroext i1 @_ZNK4mlir4Type5isF16Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br i1 %i.eo, label %_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit25.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.02.0.copyload.i19.i.i = load ptr, ptr %6, align 8, !tbaa !132
  %i.ep = load ptr, ptr %.sroa.02.0.copyload.i19.i.i, align 8, !tbaa !128
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i20.i.i = load ptr, ptr %i.eq, align 8, !tbaa !18 ; 6 uses
  %i.er = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i20.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16Float8E4M3FNTypeEvE2idE
  %i.es = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i20.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14Float8E5M2TypeEvE2idE
  %or.cond.i.i.i21.i.i = or i1 %i.er, %i.es
  %i.et = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i20.i.i, @_ZN4mlir6detail14TypeIDResolverINS_17Float8E8M0FNUTypeEvE2idE
  %spec.select.i.i.i22.i.i = or i1 %i.et, %or.cond.i.i.i21.i.i
  br i1 %spec.select.i.i.i22.i.i, label %_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit25.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eu = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i20.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16Float6E2M3FNTypeEvE2idE
  %i.ev = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i20.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16Float6E3M2FNTypeEvE2idE
  %spec.select.i.i9.i23.i.i = or i1 %i.eu, %i.ev
  br i1 %spec.select.i.i9.i23.i.i, label %_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit25.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ew = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i20.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16Float4E2M1FNTypeEvE2idE
  %i.ex = select i1 %i.ew, i64 4294967301, i64 5
  br label %_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit25.i.i

_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit25.i.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit.i.i
  %.sroa.7.0.i24.i.i = phi i64 [ %i.ex, %bb.w ], [ 4294967296, %_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit.i.i ], [ 4294967297, %bb.s ], [ 4294967298, %bb.t ], [ 4294967299, %bb.u ], [ 4294967300, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.7.0.i24.i.i to i32 ; 3 uses
  %i.ey = icmp samesign ugt i64 %.sroa.7.0.i.i.i, 4294967295
  %i.ez = icmp samesign ugt i64 %.sroa.7.0.i24.i.i, 4294967295
  %or.cond.i.i = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %or.cond.i.i, label %.preheader.preheader.i.i, label %_ZN12_GLOBAL__N_112lookupConvOpINS_17FPTruncTableEntryELm11EEESt8optionalIT_ERAT0__KS3_N4mlir4TypeES9_.exit.thread.i

.preheader.preheader.i.i:                         ; preds = %_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit25.i.i
  switch i32 %.sroa.01.0.extract.trunc.i.i, label %_ZN12_GLOBAL__N_112lookupConvOpINS_17FPTruncTableEntryELm11EEESt8optionalIT_ERAT0__KS3_N4mlir4TypeES9_.exit.thread.i [
    i32 0, label %bb.x
    i32 2, label %bb.y
    i32 1, label %bb.z
  ]

bb.x:                                             ; preds = %.preheader.preheader.i.i
  %switch.tableidx = add nsw i32 %.sroa.0.0.extract.trunc.i.i, -1 ; 2 uses
  %i.fa = icmp ult i32 %switch.tableidx, 5
  br i1 %i.fa, label %_ZN12_GLOBAL__N_112lookupConvOpINS_17FPTruncTableEntryELm11EEESt8optionalIT_ERAT0__KS3_N4mlir4TypeES9_.exit.i, label %_ZN12_GLOBAL__N_112lookupConvOpINS_17FPTruncTableEntryELm11EEESt8optionalIT_ERAT0__KS3_N4mlir4TypeES9_.exit.thread.i

bb.y:                                             ; preds = %.preheader.preheader.i.i
  %switch.tableidx17 = add nsw i32 %.sroa.0.0.extract.trunc.i.i, -3 ; 2 uses
  %i.fb = icmp ult i32 %switch.tableidx17, 3
  br i1 %i.fb, label %_ZN12_GLOBAL__N_112lookupConvOpINS_17FPTruncTableEntryELm11EEESt8optionalIT_ERAT0__KS3_N4mlir4TypeES9_.exit.i, label %_ZN12_GLOBAL__N_112lookupConvOpINS_17FPTruncTableEntryELm11EEESt8optionalIT_ERAT0__KS3_N4mlir4TypeES9_.exit.thread.i

bb.z:                                             ; preds = %.preheader.preheader.i.i
  %switch.tableidx21 = add nsw i32 %.sroa.0.0.extract.trunc.i.i, -3 ; 2 uses
  %i.fc = icmp ult i32 %switch.tableidx21, 3
  br i1 %i.fc, label %_ZN12_GLOBAL__N_112lookupConvOpINS_17FPTruncTableEntryELm11EEESt8optionalIT_ERAT0__KS3_N4mlir4TypeES9_.exit.i, label %_ZN12_GLOBAL__N_112lookupConvOpINS_17FPTruncTableEntryELm11EEESt8optionalIT_ERAT0__KS3_N4mlir4TypeES9_.exit.thread.i

_ZN12_GLOBAL__N_112lookupConvOpINS_17FPTruncTableEntryELm11EEESt8optionalIT_ERAT0__KS3_N4mlir4TypeES9_.exit.i: ; preds = %bb.z, %bb.y, %bb.x
  %switch.tableidx21.sink = phi i32 [ %switch.tableidx17, %bb.y ], [ %switch.tableidx, %bb.x ], [ %switch.tableidx21, %bb.z ]
  %.0.ptr15.lcssa.i.i.in = phi ptr [ @switch.table._ZNK12_GLOBAL__N_121NVGPUTruncfOpLowering15matchAndRewriteEN4mlir5nvgpu8TruncfOpENS2_15TruncfOpAdaptorERNS1_25ConversionPatternRewriterE.582, %bb.y ], [ @switch.table._ZNK12_GLOBAL__N_121NVGPUTruncfOpLowering15matchAndRewriteEN4mlir5nvgpu8TruncfOpENS2_15TruncfOpAdaptorERNS1_25ConversionPatternRewriterE, %bb.x ], [ @switch.table._ZNK12_GLOBAL__N_121NVGPUTruncfOpLowering15matchAndRewriteEN4mlir5nvgpu8TruncfOpENS2_15TruncfOpAdaptorERNS1_25ConversionPatternRewriterE.583, %bb.z ]
  %23 = zext nneg i32 %switch.tableidx21.sink to i64
  %switch.gep23 = getelementptr inbounds nuw [8 x i8], ptr %.0.ptr15.lcssa.i.i.in, i64 %23
  %.0.ptr15.lcssa.i.i = load ptr, ptr %switch.gep23, align 8 ; 2 uses
  %.sroa.06.0.copyload.i.i = load i64, ptr %.0.ptr15.lcssa.i.i, align 4, !tbaa !112 ; 2 uses
  %.sroa.2.0..0.ptr.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.ptr15.lcssa.i.i, i64 8
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..0.ptr.sroa_idx.i.i, align 4, !tbaa !112 ; 2 uses
  %i.fd = and i64 %.sroa.06.0.copyload.i.i, 4294967295
  %i.fe = icmp eq i64 %i.fd, 0
  %.neg.i = select i1 %i.fe, i32 -2, i32 -1
  %i.ff = sdiv i32 %.0.i, %i.do                   ; 4 uses
  %i.fg = shl i32 %i.do, 1                        ; 3 uses
  %.sroa.0181.0215.i = getelementptr inbounds i8, ptr %i.dz, i64 -16 ; 4 uses
  %i.fh = icmp sgt i32 %i.dr, 31
  br i1 %i.fh, label %.lr.ph220.i, label %._crit_edge221.i

.lr.ph220.i:                                      ; preds = %_ZN12_GLOBAL__N_112lookupConvOpINS_17FPTruncTableEntryELm11EEESt8optionalIT_ERAT0__KS3_N4mlir4TypeES9_.exit.i
  %i.fi = sdiv i32 32, %i.fg                      ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 1
  %i.fk = sext i32 %i.fi to i64                   ; 3 uses
  %i.fl = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.fm = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.fn = ptrtoint ptr %i.az to i64               ; 4 uses
  br i1 %i.fj, label %.lr.ph220.split.us.preheader.i, label %.lr.ph220.split.i

.lr.ph220.split.us.preheader.i:                   ; preds = %.lr.ph220.i
  %wide.trip.count247.i = zext nneg i32 %i.ds to i64
  br label %.lr.ph220.split.us.i

.lr.ph220.split.us.i:                             ; preds = %.lr.ph220.split.us.i, %.lr.ph220.split.us.preheader.i
  %indvars.iv244.i = phi i64 [ 0, %.lr.ph220.split.us.preheader.i ], [ %indvars.iv.next245.i, %.lr.ph220.split.us.i ] ; 2 uses
  %.sroa.0181.0219.us.i = phi ptr [ %.sroa.0181.0215.i, %.lr.ph220.split.us.preheader.i ], [ %.sroa.0181.0.us.i, %.lr.ph220.split.us.i ]
  %.090216.us.i = phi i32 [ 0, %.lr.ph220.split.us.preheader.i ], [ %i.ft, %.lr.ph220.split.us.i ] ; 2 uses
  %i.fo = call ptr @_ZN4mlir7Builder17getI64IntegerAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef %indvars.iv244.i) #21
  %.sroa.02.0.copyload.i120.us.i = load ptr, ptr %i.i, align 8
  %i.fp = call ptr @_ZN4mlir4LLVM10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.02.0.copyload.i120.us.i, ptr %i.k, ptr %i.fo) #21
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -16
  %i.fr = call fastcc ptr @_ZN12_GLOBAL__N_121createTruncConversionERN4mlir20ImplicitLocOpBuilderEPNS0_11MLIRContextENS_13FPTruncConvOpENS0_5ValueEiNS0_4NVVM18FPRoundingModeAttrENS7_18SaturationModeAttrENS0_8BoolAttrENS0_4TypeESB_S6_(ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef %.sroa.2.0.copyload.i.i, ptr nonnull %i.dw, i32 noundef %.090216.us.i, ptr %i.bq, i64 %i.fl, i64 %i.fm, i64 %i.fn, i64 %i.fn, i64 %.sroa.03.0.i.i)
  %.sroa.03.0.copyload.i133.us.i = load ptr, ptr %i.i, align 8
  %i.fs = call ptr @_ZN4mlir4LLVM15InsertElementOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.03.0.copyload.i133.us.i, ptr nonnull %.sroa.0181.0219.us.i, ptr nonnull %i.fr, ptr nonnull %i.fq) #21
  %i.ft = add nsw i32 %.090216.us.i, %i.ff
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %.sroa.0181.0.us.i = getelementptr inbounds i8, ptr %i.fs, i64 -16 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next245.i, %wide.trip.count247.i
  br i1 %exitcond248.not.i, label %._crit_edge221.i, label %.lr.ph220.split.us.i, !llvm.loop !1212

.lr.ph220.split.i:                                ; preds = %.lr.ph220.i
  %i.fu = icmp sgt i32 %i.ff, 0
  %wide.trip.count242.i = zext nneg i32 %i.ds to i64 ; 2 uses
  br i1 %i.fu, label %.lr.ph.us.i, label %.lr.ph220.split.split.i

.lr.ph.us.i:                                      ; preds = %.lr.ph220.split.i, %._crit_edge.us.i
  %indvars.iv239.i = phi i64 [ %indvars.iv.next240.i, %._crit_edge.us.i ], [ 0, %.lr.ph220.split.i ] ; 2 uses
  %.sroa.0181.0219.us223.i = phi ptr [ %.sroa.0181.0.us228.i, %._crit_edge.us.i ], [ %.sroa.0181.0215.i, %.lr.ph220.split.i ]
  %.090216.us225.i = phi i32 [ %i.gm, %._crit_edge.us.i ], [ 0, %.lr.ph220.split.i ] ; 2 uses
  %i.fv = call ptr @_ZN4mlir7Builder17getI64IntegerAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef %indvars.iv239.i) #21
  %.sroa.02.0.copyload.i120.us226.i = load ptr, ptr %i.i, align 8
  %i.fw = call ptr @_ZN4mlir4LLVM10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.02.0.copyload.i120.us226.i, ptr %i.k, ptr %i.fv) #21
  %i.fx = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %i.g, i32 noundef %i.fg, i32 noundef 0) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 %i.fk, ptr %i.c, align 8, !tbaa !28
  %i.fy = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr nonnull %i.c, i64 1, ptr %i.fx, ptr null, i64 0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %.sroa.01.0.copyload.i123.us.i = load ptr, ptr %i.i, align 8
  %i.fz = call ptr @_ZN4mlir4LLVM7UndefOp6createERNS_9OpBuilderENS_8LocationENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.01.0.copyload.i123.us.i, ptr %i.fy) #21
  %.sroa.0163.0211.us.i = getelementptr inbounds i8, ptr %i.fz, i64 -16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.us.i
  %indvars.iv236.i = phi i64 [ %indvars.iv.next237.i, %bb.aa ], [ %i.fk, %.lr.ph.us.i ]
  %.sroa.0163.0214.us.i = phi ptr [ %.sroa.0163.0.us.i, %bb.aa ], [ %.sroa.0163.0211.us.i, %.lr.ph.us.i ]
  %.087213.us.i = phi i32 [ %i.ga, %bb.aa ], [ %i.ff, %.lr.ph.us.i ]
  %indvars.iv.next237.i = add nsw i64 %indvars.iv236.i, -1 ; 2 uses
  %i.ga = add nsw i32 %.087213.us.i, %.neg.i      ; 3 uses
  %i.gb = add nsw i32 %i.ga, %.090216.us225.i
  %i.gc = call fastcc ptr @_ZN12_GLOBAL__N_121createTruncConversionERN4mlir20ImplicitLocOpBuilderEPNS0_11MLIRContextENS_13FPTruncConvOpENS0_5ValueEiNS0_4NVVM18FPRoundingModeAttrENS7_18SaturationModeAttrENS0_8BoolAttrENS0_4TypeESB_S6_(ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef %.sroa.2.0.copyload.i.i, ptr nonnull %i.dw, i32 noundef %i.gb, ptr %i.bq, i64 %i.fl, i64 %i.fm, i64 %i.fn, i64 %i.fn, i64 0)
  %i.gd = call ptr @_ZN4mlir7Builder17getI64IntegerAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef %indvars.iv.next237.i) #21
  %.sroa.02.0.copyload.i125.us.i = load ptr, ptr %i.i, align 8
  %i.ge = call ptr @_ZN4mlir4LLVM10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.02.0.copyload.i125.us.i, ptr %i.k, ptr %i.gd) #21
  %.sroa.03.0.copyload.i.us.i = load ptr, ptr %i.i, align 8
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -16
  %i.gg = call ptr @_ZN4mlir4LLVM15InsertElementOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.03.0.copyload.i.us.i, ptr nonnull %.sroa.0163.0214.us.i, ptr nonnull %i.gc, ptr nonnull %i.gf) #21
  %.sroa.0163.0.us.i = getelementptr inbounds i8, ptr %i.gg, i64 -16 ; 2 uses
  %i.gh = icmp sgt i32 %i.ga, 0
  br i1 %i.gh, label %bb.aa, label %._crit_edge.us.i, !llvm.loop !1213

._crit_edge.us.i:                                 ; preds = %bb.aa
  %i.gi = getelementptr inbounds i8, ptr %i.fw, i64 -16
  %.sroa.02.0.copyload.i130.us.i = load ptr, ptr %i.i, align 8
  %i.gj = call ptr @_ZN4mlir4LLVM9BitcastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.02.0.copyload.i130.us.i, ptr %i.j, ptr nonnull %.sroa.0163.0.us.i) #21
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -16
  %.sroa.03.0.copyload.i133.us227.i = load ptr, ptr %i.i, align 8
  %i.gl = call ptr @_ZN4mlir4LLVM15InsertElementOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.03.0.copyload.i133.us227.i, ptr nonnull %.sroa.0181.0219.us223.i, ptr nonnull %i.gk, ptr nonnull %i.gi) #21
  %i.gm = add nuw nsw i32 %.090216.us225.i, %i.ff
  %indvars.iv.next240.i = add nuw nsw i64 %indvars.iv239.i, 1 ; 2 uses
  %.sroa.0181.0.us228.i = getelementptr inbounds i8, ptr %i.gl, i64 -16 ; 2 uses
  %exitcond243.not.i = icmp eq i64 %indvars.iv.next240.i, %wide.trip.count242.i
  br i1 %exitcond243.not.i, label %._crit_edge221.i, label %.lr.ph.us.i, !llvm.loop !1212

_ZN12_GLOBAL__N_112lookupConvOpINS_17FPTruncTableEntryELm11EEESt8optionalIT_ERAT0__KS3_N4mlir4TypeES9_.exit.thread.i: ; preds = %bb.z, %bb.y, %bb.x, %.preheader.preheader.i.i, %_ZN12_GLOBAL__N_114classifyFPTypeEN4mlir4TypeE.exit25.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.go, align 1, !tbaa !168
  store ptr @.str.90, ptr %5, align 8, !tbaa !112
  store i8 3, ptr %i.gn, align 8, !tbaa !169
  %i.gp = load ptr, ptr %16, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %5, ptr %4, align 8, !tbaa !173
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !174 ; 4 uses
  %.not.i.i.i.i116.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i116.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5nvgpu8TruncfOpEEEN4llvm13LogicalResultEOT_PKc.exit119.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN12_GLOBAL__N_112lookupConvOpINS_17FPTruncTableEntryELm11EEESt8optionalIT_ERAT0__KS3_N4mlir4TypeES9_.exit.thread.i
  %i.gs = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.gr) #21
  br i1 %i.gs, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i117.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5nvgpu8TruncfOpEEEN4llvm13LogicalResultEOT_PKc.exit119.i

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i117.i: ; preds = %bb.ab
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %.sroa.0.0.copyload.i.i.i.i118.i = load ptr, ptr %i.gt, align 8
  %i.gu = ptrtoint ptr %4 to i64
  %i.gv = load ptr, ptr %i.gr, align 8, !tbaa !23
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 88
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(12) %i.gr, ptr %.sroa.0.0.copyload.i.i.i.i118.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_5nvgpu8TruncfOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.gu) #21, !inline_history !1211
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5nvgpu8TruncfOpEEEN4llvm13LogicalResultEOT_PKc.exit119.i

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5nvgpu8TruncfOpEEEN4llvm13LogicalResultEOT_PKc.exit119.i: ; preds = %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i117.i, %bb.ab, %_ZN12_GLOBAL__N_112lookupConvOpINS_17FPTruncTableEntryELm11EEESt8optionalIT_ERAT0__KS3_N4mlir4TypeES9_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN12_GLOBAL__N_111lowerTruncfEN4mlir5nvgpu8TruncfOpENS1_15TruncfOpAdaptorERNS0_25ConversionPatternRewriterEPKNS0_17LLVMTypeConverterE.exit

._crit_edge221.i:                                 ; preds = %.lr.ph220.split.split.i, %._crit_edge.us.i, %.lr.ph220.split.us.i, %_ZN12_GLOBAL__N_112lookupConvOpINS_17FPTruncTableEntryELm11EEESt8optionalIT_ERAT0__KS3_N4mlir4TypeES9_.exit.i
  %.sroa.0181.0.lcssa.i = phi ptr [ %.sroa.0181.0215.i, %_ZN12_GLOBAL__N_112lookupConvOpINS_17FPTruncTableEntryELm11EEESt8optionalIT_ERAT0__KS3_N4mlir4TypeES9_.exit.i ], [ %.sroa.0181.0.us.i, %.lr.ph220.split.us.i ], [ %.sroa.0181.0.us228.i, %._crit_edge.us.i ], [ %.sroa.0181.0.i, %.lr.ph220.split.split.i ] ; 2 uses
  %.sroa.02.0.copyload.i = load ptr, ptr %19, align 8, !tbaa !132
  %i.gy = call ptr @_ZNK4mlir13TypeConverter11convertTypeENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(508) %i.e, ptr %.sroa.02.0.copyload.i) #21 ; 2 uses
  %.sroa.0174.4.extract.shift.mask.i = and i64 %.sroa.06.0.copyload.i.i, -4294967296
  %i.gz = icmp eq i64 %.sroa.0174.4.extract.shift.mask.i, 17179869184
  br i1 %i.gz, label %bb.ac, label %bb.ad

.lr.ph220.split.split.i:                          ; preds = %.lr.ph220.split.i, %.lr.ph220.split.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph220.split.split.i ], [ 0, %.lr.ph220.split.i ] ; 2 uses
  %.sroa.0181.0219.i = phi ptr [ %.sroa.0181.0.i, %.lr.ph220.split.split.i ], [ %.sroa.0181.0215.i, %.lr.ph220.split.i ]
  %i.ha = call ptr @_ZN4mlir7Builder17getI64IntegerAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef %indvars.iv.i) #21
  %.sroa.02.0.copyload.i120.i = load ptr, ptr %i.i, align 8
  %i.hb = call ptr @_ZN4mlir4LLVM10ConstantOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.02.0.copyload.i120.i, ptr %i.k, ptr %i.ha) #21
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 -16
  %i.hd = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %i.g, i32 noundef %i.fg, i32 noundef 0) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 %i.fk, ptr %i.c, align 8, !tbaa !28
  %i.he = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr nonnull %i.c, i64 1, ptr %i.hd, ptr null, i64 0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %.sroa.01.0.copyload.i123.i = load ptr, ptr %i.i, align 8
  %i.hf = call ptr @_ZN4mlir4LLVM7UndefOp6createERNS_9OpBuilderENS_8LocationENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.01.0.copyload.i123.i, ptr %i.he) #21
  %.sroa.0163.0211.i = getelementptr inbounds i8, ptr %i.hf, i64 -16
  %.sroa.02.0.copyload.i130.i = load ptr, ptr %i.i, align 8
  %i.hg = call ptr @_ZN4mlir4LLVM9BitcastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.02.0.copyload.i130.i, ptr %i.j, ptr nonnull %.sroa.0163.0211.i) #21
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -16
  %.sroa.03.0.copyload.i133.i = load ptr, ptr %i.i, align 8
  %i.hi = call ptr @_ZN4mlir4LLVM15InsertElementOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.03.0.copyload.i133.i, ptr nonnull %.sroa.0181.0219.i, ptr nonnull %i.hh, ptr nonnull %i.hc) #21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.sroa.0181.0.i = getelementptr inbounds i8, ptr %i.hi, i64 -16 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count242.i
  br i1 %exitcond.not.i, label %._crit_edge221.i, label %.lr.ph220.split.split.i, !llvm.loop !1212

bb.ac:                                            ; preds = %._crit_edge221.i
  %i.hj = call ptr @_ZN4mlir7Builder9getI8TypeEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %sext.i = shl i64 %i.bh, 32
  %i.hk = ashr exact i64 %sext.i, 32
  store i64 %i.hk, ptr %i.d, align 8, !tbaa !28
  %i.hl = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr nonnull %i.d, i64 1, ptr %i.hj, ptr null, i64 0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  %.sroa.02.0.copyload.i137.i = load ptr, ptr %i.i, align 8
  %i.hm = call ptr @_ZN4mlir4LLVM9BitcastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.02.0.copyload.i137.i, ptr %i.hl, ptr nonnull %.sroa.0181.0.lcssa.i) #21
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  %.sroa.02.0.copyload.i140.i = load ptr, ptr %i.i, align 8
  %i.ho = call ptr @_ZN4mlir4LLVM7TruncOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueENS0_20IntegerOverflowFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.02.0.copyload.i140.i, ptr %i.gy, ptr nonnull %i.hn, i32 noundef 0) #21
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -16
  store ptr %i.hp, ptr %21, align 8
  %i.hq = load ptr, ptr %16, align 8, !tbaa !141
  %i.hr = ptrtoint ptr %21 to i64
  call void @_ZN4mlir25ConversionPatternRewriter9replaceOpEPNS_9OperationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.hq, i64 %i.hr, i64 1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %_ZN12_GLOBAL__N_111lowerTruncfEN4mlir5nvgpu8TruncfOpENS1_15TruncfOpAdaptorERNS0_25ConversionPatternRewriterEPKNS0_17LLVMTypeConverterE.exit

bb.ad:                                            ; preds = %._crit_edge221.i
  %.sroa.02.0.copyload.i143.i = load ptr, ptr %i.i, align 8
  %i.hs = call ptr @_ZN4mlir4LLVM9BitcastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr %.sroa.02.0.copyload.i143.i, ptr %i.gy, ptr nonnull %.sroa.0181.0.lcssa.i) #21
  %i.ht = load ptr, ptr %16, align 8, !tbaa !141
  call void @_ZN4mlir25ConversionPatternRewriter9replaceOpEPNS_9OperationES2_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ht, ptr noundef %i.hs) #21
  br label %_ZN12_GLOBAL__N_111lowerTruncfEN4mlir5nvgpu8TruncfOpENS1_15TruncfOpAdaptorERNS0_25ConversionPatternRewriterEPKNS0_17LLVMTypeConverterE.exit

_ZN12_GLOBAL__N_111lowerTruncfEN4mlir5nvgpu8TruncfOpENS1_15TruncfOpAdaptorERNS0_25ConversionPatternRewriterEPKNS0_17LLVMTypeConverterE.exit: ; preds = %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5nvgpu8TruncfOpEEEN4llvm13LogicalResultEOT_PKc.exit.i, %bb.k, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5nvgpu8TruncfOpEEEN4llvm13LogicalResultEOT_PKc.exit119.i, %bb.ac, %bb.ad
  %.sroa.086.2.i = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5nvgpu8TruncfOpEEEN4llvm13LogicalResultEOT_PKc.exit.i ], [ 1, %bb.k ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_5nvgpu8TruncfOpEEEN4llvm13LogicalResultEOT_PKc.exit119.i ], [ 1, %bb.ad ], [ 1, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  ret i8 %.sroa.086.2.i
}
end_hunk_0
