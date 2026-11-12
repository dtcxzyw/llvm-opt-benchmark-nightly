Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64TargetTransformInfo?download=true
inline.NumInlined: 13233
inline.NumDeleted: 4962
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZNK4llvm14AArch64TTIImpl35isElementTypeLegalForScalableVectorEPNS_4TypeE:bb.a
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 377
  %i.f = load i8, ptr %i.e, align 1, !tbaa !333, !range !36, !noundef !37
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.b
  %i.h = lshr i32 %i.b, 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = and i32 %i.b, 255
  %i.j = icmp eq i32 %i.i, 12                     ; 3 uses
  %i.k = lshr i32 %i.b, 8                         ; 5 uses
  %i.l = icmp eq i32 %i.k, 1
  %i.m = and i1 %i.j, %i.l
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i32 %i.k, 8
  %i.o = icmp eq i32 %i.k, 16
  %i.p = or i1 %i.n, %i.o
  %i.q = icmp eq i32 %i.k, 32
  %i.r = or i1 %i.q, %i.p
  %or.cond17 = and i1 %i.j, %i.r
  br i1 %or.cond17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.s = phi i1 [ false, %.thread ], [ %i.j, %bb.d ]
  %i.t = phi i32 [ %i.h, %.thread ], [ %i.k, %bb.d ]
  %i.u = icmp eq i32 %i.t, 64
  %i.v = and i1 %i.s, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.e, %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.c ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ %i.v, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZNK4llvm14AArch64TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS4_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i8 %3, i32 noundef %4, i32 noundef %5, i64 %6, ptr nofree readnone captures(none) %7) unnamed_addr #3 align 2 {
bb.a:
  %8 = alloca %"struct.std::pair.169", align 8    ; 8 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 8 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 8 uses
  %11 = alloca %"class.llvm::SmallVector.241", align 8 ; 11 uses
  %12 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !283, !nonnull !37, !align !107
  %i.e = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.b, ptr noundef nonnull align 8 dereferenceable(912) %i.d, ptr noundef %2, i1 noundef zeroext true) ; 2 uses
  %i.f = extractvalue { i16, ptr } %i.e, 0        ; 5 uses
  store i16 %i.f, ptr %9, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.h = extractvalue { i16, ptr } %i.e, 1        ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  %.not.i.i = icmp eq i16 %i.f, 1
  %i.i = icmp eq ptr %i.h, null                   ; 2 uses
  %.not4.i = select i1 %.not.i.i, i1 %i.i, i1 false
  br i1 %.not4.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_14AArch64TTIImplEE15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, i8 %3, i32 noundef %4, i32 noundef %5, i64 0, ptr noundef null) ; 2 uses
  %.fca.0.extract79 = extractvalue { i64, i32 } %i.j, 0
  %.fca.1.extract80 = extractvalue { i64, i32 } %i.j, 1
  br label %.critedge117

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %2, align 8, !tbaa !284, !noalias !921, !nonnull !37, !align !107
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !59, !noalias !921
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !283, !noalias !921, !nonnull !37, !align !107
  %i.n = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.l, ptr noundef nonnull align 8 dereferenceable(912) %i.m, ptr noundef nonnull %2, i1 noundef zeroext false), !noalias !921 ; 2 uses
  %i.o = extractvalue { i16, ptr } %i.n, 0
  %i.p = extractvalue { i16, ptr } %i.n, 1
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %.sroa.019.0.i = phi i64 [ 4, %bb.c ], [ %.sroa.019.1.i, %bb.i ] ; 5 uses
  %.sroa.025.0.i = phi i16 [ %i.o, %bb.c ], [ %.sroa.0.0.copyload.i, %bb.i ] ; 10 uses
  %.sroa.1027.0.i = phi ptr [ %i.p, %bb.c ], [ %.sroa.24.0.copyload.i, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !921
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !59, !noalias !921
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.169") align 8 %8, ptr noundef nonnull align 8 dereferenceable(518435) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i16 %.sroa.025.0.i, ptr %.sroa.1027.0.i) #30, !noalias !921
  %i.s = load i8, ptr %8, align 8, !tbaa !290, !noalias !921 ; 2 uses
  switch i8 %i.s, label %bb.e [
    i8 9, label %bb.j
    i8 0, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.t = and i8 %i.s, -5
  %or.cond.i = icmp eq i8 %i.t, 2
  br i1 %or.cond.i, label %bb.f, label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.f:                                             ; preds = %bb.e
  %i.u = add i64 %.sroa.019.0.i, -1152921504606846976
  %i.v = icmp ult i64 %i.u, -2305843009213693952
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = icmp sgt i64 %.sroa.019.0.i, 0
  %spec.select28.i = select i1 %i.w, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.h:                                             ; preds = %bb.f
  %i.x = shl nsw i64 %.sroa.019.0.i, 1
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

_ZN4llvm15InstructionCostmLEl.exit.i:             ; preds = %bb.h, %bb.g, %bb.e
  %.sroa.019.1.i = phi i64 [ %.sroa.019.0.i, %bb.e ], [ %i.x, %bb.h ], [ %spec.select28.i, %bb.g ] ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.q, align 8, !tbaa !291, !noalias !921 ; 2 uses
  %.sroa.24.0.copyload.i = load ptr, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !236, !noalias !921 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.sroa.025.0.i, %.sroa.0.0.copyload.i
  %i.y = icmp eq ptr %.sroa.1027.0.i, %.sroa.24.0.copyload.i
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.y, i1 false
  br i1 %.not4.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15InstructionCostmLEl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !921
  br label %bb.d, !llvm.loop !1

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !921
  br label %.critedge117

bb.k:                                             ; preds = %bb.d, %_ZN4llvm15InstructionCostmLEl.exit.i
  %.sroa.019.1.lcssa.sink.i.ph = phi i64 [ %.sroa.019.1.i, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ %.sroa.019.0.i, %bb.d ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !921
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = and i32 %i.aa, 255                      ; 2 uses
  %.not281 = icmp eq i32 %i.ab, 19
  br i1 %.not281, label %bb.l, label %.critedge2

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !242 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %.critedge117, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !307
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp ne i32 %i.ai, 268
  %i.ak = and i32 %i.ad, 15
  %i.al = icmp eq i32 %i.ak, 0
  %or.cond299 = or i1 %i.aj, %i.al
  br i1 %or.cond299, label %.critedge2, label %.critedge117

.critedge2:                                       ; preds = %bb.m, %bb.k
  %i.am = and i32 %5, -2
  %or.cond = icmp eq i32 %i.am, 2
  br i1 %or.cond, label %.critedge117, label %bb.n

bb.n:                                             ; preds = %.critedge2
  %i.an = icmp eq i32 %5, 1
  br i1 %i.an, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.ao = icmp eq i32 %1, 34
  br i1 %i.ao, label %.critedge117, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !110 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 640
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !922 ; 2 uses
  %.not115 = icmp eq i32 %i.as, 0
  br i1 %.not115, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.0.i.i = call i64 @llvm.sadd.sat.i64(i64 %.sroa.019.1.lcssa.sink.i.ph, i64 -4)
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 2
  %.0.i.i130 = call i64 @llvm.sadd.sat.i64(i64 %.0.i.i, i64 %i.au)
  br label %.critedge117

bb.r:                                             ; preds = %bb.p
  %i.av = add i16 %.sroa.025.0.i, -163
  %spec.select.i133 = icmp ult i16 %i.av, 53
  br i1 %spec.select.i133, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = call noundef zeroext i1 @_ZNK4llvm16AArch64Subtarget27useSVEForFixedLengthVectorsENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(519928) %i.aq, i16 %.sroa.025.0.i, ptr null)
  br i1 %i.aw, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = add i16 %.sroa.025.0.i, -12
  %or.cond283 = icmp ult i16 %i.ax, 204
  %i.ay = zext i16 %.sroa.025.0.i to i64
  %i.az = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ay ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.az, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ba = trunc nuw i8 %.sroa.2.0.copyload.i to i1 ; 2 uses
  br i1 %or.cond283, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  br i1 %i.ba, label %bb.v, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.57) #32
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.u
  %13 = getelementptr i8, ptr %i.az, i64 -16
  %.sroa.0.0.copyload.i137 = load i64, ptr %13, align 16
  %14 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.0.0.copyload.i137, i1 true)
  %15 = getelementptr [8 x i8], ptr @switch.table._ZNK4llvm14AArch64TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS4_16OperandValueInfoEPKNS_11InstructionE, i64 %14
  %switch.gep = getelementptr i8, ptr %15, i64 -24
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  br i1 %i.ba, label %bb.x, label %_ZNK4llvm8TypeSizecvmEv.exit145

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.57) #32
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit145:                  ; preds = %bb.w
  %i.bb = getelementptr i8, ptr %i.az, i64 -16
  %.sroa.0.0.copyload.i140 = load i64, ptr %i.bb, align 16
  %i.bc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.0.0.copyload.i140, i1 true)
  %i.bd = getelementptr [8 x i8], ptr @switch.table._ZNK4llvm14AArch64TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS4_16OperandValueInfoEPKNS_11InstructionE.122, i64 %i.bc
  %switch.gep303 = getelementptr i8, ptr %i.bd, i64 -24
  %switch.load304 = load i64, ptr %switch.gep303, align 8
  br label %bb.y

bb.y:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit145, %_ZNK4llvm8TypeSizecvmEv.exit, %bb.r, %bb.s
  %.0108.neg = phi i64 [ %switch.load, %_ZNK4llvm8TypeSizecvmEv.exit ], [ -5173, %bb.r ], [ %switch.load304, %_ZNK4llvm8TypeSizecvmEv.exit145 ], [ -5173, %bb.s ]
  %i.be = load ptr, ptr %i.ap, align 8, !tbaa !110 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 208
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !255
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 984
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !343
  %i.bj = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %.0108.neg
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i16, ptr %i.bk, align 8, !tbaa !345
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !342
  %i.bo = zext i16 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [14 x i8], ptr %i.bn, i64 %i.bo ; 2 uses
  %.0.i.i150 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.019.1.lcssa.sink.i.ph, i64 -4)
  %i.bq = sdiv i64 %.0.i.i150, 4
  %i.br = sitofp i64 %i.bq to float
  %i.bs = fpext float %i.br to double
  %i.bt = call noundef double @_ZN4llvm12MCSchedModel23getReciprocalThroughputERKNS_15MCSubtargetInfoERKNS_16MCSchedClassDescE(ptr noundef nonnull align 8 dereferenceable(320) %i.be, ptr noundef nonnull align 2 dereferenceable(14) %i.bp) #30
  %i.bu = load ptr, ptr %i.ap, align 8, !tbaa !110
  %i.bv = call noundef i32 @_ZN4llvm12MCSchedModel19computeInstrLatencyERKNS_15MCSubtargetInfoERKNS_16MCSchedClassDescE(ptr noundef nonnull align 8 dereferenceable(320) %i.bu, ptr noundef nonnull align 2 dereferenceable(14) %i.bp) #30
  %i.bw = sitofp i32 %i.bv to double
  %i.bx = call double @llvm.fmuladd.f64(double %i.bs, double %i.bt, double %i.bw)
  %i.by = fptosi double %i.bx to i64              ; 3 uses
  %i.bz = add i64 %i.by, 2305843009213693952
  %i.ca = icmp ult i64 %i.bz, 4611686018427387904
  %i.cb = shl nsw i64 %i.by, 2
  %i.cc = icmp sgt i64 %i.by, 0
  %i.cd = select i1 %i.cc, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i153 = select i1 %i.ca, i64 %i.cb, i64 %i.cd
  br label %.critedge117

bb.z:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !110
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 573
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !923, !range !36, !noundef !37
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = icmp eq i32 %1, 34
  %or.cond5 = and i1 %i.cj, %i.ci
  %i.ck = add i16 %.sroa.025.0.i, -19             ; 2 uses
  %spec.select.i.i154 = icmp ult i16 %i.ck, 144
  %or.cond275 = select i1 %or.cond5, i1 %spec.select.i.i154, i1 false
  br i1 %or.cond275, label %_ZNK4llvm3MVT14is128BitVectorEv.exit, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

_ZNK4llvm3MVT14is128BitVectorEv.exit:             ; preds = %bb.z
  %i.cl = zext nneg i16 %.sroa.025.0.i to i64
  %i.cm = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cn, align 16
  %i.co = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 128
  %i.cp = icmp ult i8 %3, 4
  %or.cond276 = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond276, label %bb.aa, label %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread

bb.aa:                                            ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit
  %i.cq = add i64 %.sroa.019.1.lcssa.sink.i.ph, -1152921504606846976
  %i.cr = icmp ult i64 %i.cq, -2305843009213693952
  br i1 %i.cr, label %bb.ab, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cs = icmp sgt i64 %.sroa.019.1.lcssa.sink.i.ph, 0
  br i1 %i.cs, label %.critedge117, label %.thread.i.i170

_ZN4llvmmlERKNS_15InstructionCostES2_.exit:       ; preds = %bb.aa
  %i.ct = shl nsw i64 %.sroa.019.1.lcssa.sink.i.ph, 1
  %i.cu = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ct, i64 24) ; 2 uses
  %i.cv = extractvalue { i64, i1 } %i.cu, 1
  br i1 %i.cv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN4llvmmlERKNS_15InstructionCostES2_.exit
  %i.cw = icmp sgt i64 %.sroa.019.1.lcssa.sink.i.ph, 0
  br i1 %i.cw, label %.critedge117, label %.thread.i.i170

.thread.i.i170:                                   ; preds = %bb.ab, %bb.ac
  br label %.critedge117

bb.ad:                                            ; preds = %_ZN4llvmmlERKNS_15InstructionCostES2_.exit
  %i.cx = extractvalue { i64, i1 } %i.cu, 0
  %i.cy = ashr exact i64 %i.cx, 2
  br label %.critedge117

_ZNK4llvm3MVT14is128BitVectorEv.exit.thread:      ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit, %bb.z
  %i.cz = and i32 %i.aa, 254
  %spec.select.i.i.i = icmp eq i32 %i.cz, 18
  br i1 %spec.select.i.i.i, label %bb.ae, label %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit

bb.ae:                                            ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !294
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !236
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  %.pre = and i32 %.pre.i, 255
  br label %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit

_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit:        ; preds = %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread, %bb.ae
  %.pre-phi = phi i32 [ %i.ab, %_ZNK4llvm3MVT14is128BitVectorEv.exit.thread ], [ %.pre, %bb.ae ]
  %i.dd = icmp eq i32 %.pre-phi, 15
  br i1 %i.dd, label %.critedge117, label %bb.af

bb.af:                                            ; preds = %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit
  %i.de = call noundef zeroext i1 @_ZNK4llvm14AArch64TTIImpl13useNeonVectorEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %2)
  br i1 %i.de, label %bb.ag, label %.critedge117

bb.ag:                                            ; preds = %bb.af
  %i.df = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #31
  %i.dg = zext i32 %i.df to i64
  %spec.select.i.i.i172 = icmp ult i16 %i.ck, 197
  br i1 %spec.select.i.i.i172, label %bb.ah, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

bb.ah:                                            ; preds = %bb.ag
  %i.dh = zext nneg i16 %.sroa.025.0.i to i64
  %i.di = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 -2
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !291
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.ag, %bb.ah
  %.sroa.0.0.i.i = phi i16 [ %i.dk, %bb.ah ], [ %.sroa.025.0.i, %bb.ag ]
  %i.dl = zext i16 %.sroa.0.0.i.i to i64
  %i.dm = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dn, align 16
  %.not113 = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.dg
  br i1 %.not113, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %.not.i.i173 = icmp eq i16 %i.f, 43
  %.not4.i174 = select i1 %.not.i.i173, i1 %i.i, i1 false
  br i1 %.not4.i174, label %.critedge117, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !242
  %i.dq = shl i32 %i.dp, 1
  %i.dr = zext i32 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 2
  br label %.critedge117

bb.ak:                                            ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %.not.i176 = icmp eq i16 %i.f, 0
  br i1 %.not.i176, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dt = zext i16 %i.f to i64
  %i.du = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 -2
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !291
  %i.dx = insertvalue { i16, ptr } poison, i16 %i.dw, 0
  %i.dy = insertvalue { i16, ptr } %i.dx, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.am:                                            ; preds = %bb.ak
  %i.dz = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #30
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.al, %bb.am
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.dy, %bb.al ], [ %i.dz, %bb.am ] ; 2 uses
  %i.ea = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0
  store i16 %i.ea, ptr %10, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.ec = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  store ptr %i.ec, ptr %i.eb, align 8
  %i.ed = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %10) ; 2 uses
  %i.ee = trunc i64 %i.ed to i32                  ; 3 uses
  %.not.i.i177 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i177, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread, label %_ZN4llvm13isPowerOf2_32Ej.exit

_ZN4llvm13isPowerOf2_32Ej.exit:                   ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.ef = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.ee)
  %i.eg = icmp samesign ult i32 %i.ef, 2
  %i.eh = add i32 %i.ee, -8
  %i.ei = icmp ult i32 %i.eh, 57
  %or.cond9.not = and i1 %i.ei, %i.eg
  br i1 %or.cond9.not, label %bb.an, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.an:                                            ; preds = %_ZN4llvm13isPowerOf2_32Ej.exit
  %i.ej = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
  %.rhs.trunc = trunc i64 %i.ed to i8
  %i.ek = udiv i8 -128, %.rhs.trunc
  %.zext = zext i8 %i.ek to i32
  %.not = icmp uge i32 %i.ej, %.zext
  %i.el = icmp ne i8 %3, 0
  %or.cond277 = select i1 %.not, i1 true, i1 %i.el
  br i1 %or.cond277, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.em = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
  %i.en = icmp eq i32 %i.em, 3
  br i1 %i.en, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.eo = load i16, ptr %10, align 8, !tbaa !298
  %.not.i.i178 = icmp eq i16 %i.eo, 5
  %i.ep = load ptr, ptr %i.eb, align 8
  %i.eq = icmp eq ptr %i.ep, null
  %.not4.i179 = select i1 %.not.i.i178, i1 %i.eq, i1 false
  br i1 %.not4.i179, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
end_hunk_0
