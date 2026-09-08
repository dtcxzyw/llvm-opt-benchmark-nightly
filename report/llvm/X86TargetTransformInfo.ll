Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86TargetTransformInfo?download=true
inline.NumInlined: 8597
inline.NumDeleted: 3034
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZNK4llvm10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS4_16OperandValueInfoEPKNS_11InstructionE:bb.a
  %.029.val32.val.i.i.i.i.i = load i8, ptr %.029.val32.i.i.i.i.i, align 8, !tbaa !213
  %i.s = icmp ugt i8 %.029.val32.val.i.i.i.i.i, 22
  br i1 %i.s, label %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit", label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 32
  %.val31.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !230
  %.val31.val.i.i.i.i.i = load i8, ptr %.val31.i.i.i.i.i, align 8, !tbaa !213
  %i.u = icmp ugt i8 %.val31.val.i.i.i.i.i, 22
  br i1 %i.u, label %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 64
  %.val30.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !230
  %.val30.val.i.i.i.i.i = load i8, ptr %.val30.i.i.i.i.i, align 8, !tbaa !213
  %i.w = icmp ugt i8 %.val30.val.i.i.i.i.i, 22
  br i1 %i.w, label %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit543", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 96
  %.val.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !230
  %.val.val.i.i.i.i.i = load i8, ptr %.val.i.i.i.i.i, align 8, !tbaa !213
  %i.y = icmp ugt i8 %.val.val.i.i.i.i.i, 22
  br i1 %i.y, label %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit545", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 128
  %i.aa = add nsw i64 %.044.i.i.i.i.i, -1
  %i.ab = icmp sgt i64 %.044.i.i.i.i.i, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !641

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.j
  %.neg327 = and i64 %gepdiff, 96
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.f
  %.pre-phi50.i.i.i.i.i = phi i64 [ %.neg327, %._crit_edge.loopexit.i.i.i.i.i ], [ %gepdiff, %bb.f ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.o, %bb.f ] ; 5 uses
  %i.ac = ashr exact i64 %.pre-phi50.i.i.i.i.i, 5
  switch i64 %i.ac, label %_ZN4llvm16dyn_cast_or_nullINS_9StoreInstEKNS_11InstructionEEEDaPT0_.exit.thread [
    i64 3, label %bb.k
    i64 2, label %bb.m
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.029.val.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i, align 8, !tbaa !230
  %.029.val.val.i.i.i.i.i = load i8, ptr %.029.val.i.i.i.i.i, align 8, !tbaa !213
  %i.ad = icmp ugt i8 %.029.val.val.i.i.i.i.i, 22
  br i1 %i.ad, label %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.ae, %bb.l ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !230
  %.1.val.val.i.i.i.i.i = load i8, ptr %.1.val.i.i.i.i.i, align 8, !tbaa !213
  %i.af = icmp ugt i8 %.1.val.val.i.i.i.i.i, 22
  br i1 %i.af, label %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.ag, %bb.n ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i, align 8, !tbaa !230
  %.2.val.val.i.i.i.i.i = load i8, ptr %.2.val.i.i.i.i.i, align 8, !tbaa !213
  %i.ah = icmp ugt i8 %.2.val.val.i.i.i.i.i, 22
  br i1 %i.ah, label %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit", label %_ZN4llvm16dyn_cast_or_nullINS_9StoreInstEKNS_11InstructionEEEDaPT0_.exit.thread

"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 32
  br label %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit543": ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 64
  br label %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit545": ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.02943.i.i.i.i.i, i64 96
  br label %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i, %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit543", %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit545", %bb.k, %bb.m, %bb.o
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %bb.m ], [ %.029.lcssa.i.i.i.i.i, %bb.k ], [ %.2.i.i.i.i.i, %bb.o ], [ %i.ak, %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit545" ], [ %i.aj, %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit543" ], [ %i.ai, %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02943.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.al = icmp eq ptr %i.g, %.028.i.i.i.i.i
  br i1 %i.al, label %_ZN4llvm16dyn_cast_or_nullINS_9StoreInstEKNS_11InstructionEEEDaPT0_.exit.thread, label %.critedge185

_ZN4llvm16dyn_cast_or_nullINS_9StoreInstEKNS_11InstructionEEEDaPT0_.exit.thread: ; preds = %bb.o, %._crit_edge.i.i.i.i.i, %bb.d, %bb.e, %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit", %_ZN4llvm16dyn_cast_or_nullINS_9StoreInstEKNS_11InstructionEEEDaPT0_.exit
  br label %.critedge185

bb.p:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !194
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !195, !nonnull !174, !align !193
  %i.aq = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.an, ptr noundef nonnull align 8 dereferenceable(912) %i.ap, ptr noundef %2, i1 noundef zeroext true) ; 2 uses
  %i.ar = extractvalue { i16, ptr } %i.aq, 0
  %i.as = extractvalue { i16, ptr } %i.aq, 1
  %.not.i.i195 = icmp eq i16 %i.ar, 1
  %i.at = icmp eq ptr %i.as, null
  %.not4.i = select i1 %.not.i.i195, i1 %i.at, i1 false
  br i1 %.not4.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.au = tail call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, i8 %3, i32 noundef %4, i32 noundef 0, i64 %.fr, ptr noundef %7) ; 2 uses
  %.fca.0.extract104 = extractvalue { i64, i32 } %i.au, 0
  %.fca.1.extract105 = extractvalue { i64, i32 } %i.au, 1
  br label %.critedge185

bb.r:                                             ; preds = %bb.p
  %i.av = load ptr, ptr %2, align 8, !tbaa !192, !noalias !648, !nonnull !174, !align !193
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !194, !noalias !648
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !195, !noalias !648, !nonnull !174, !align !193
  %i.ay = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.aw, ptr noundef nonnull align 8 dereferenceable(912) %i.ax, ptr noundef nonnull %2, i1 noundef zeroext false), !noalias !648 ; 2 uses
  %i.az = extractvalue { i16, ptr } %i.ay, 0
  %i.ba = extractvalue { i16, ptr } %i.ay, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.s

bb.s:                                             ; preds = %bb.y, %bb.r
  %.sroa.019.0.i = phi i64 [ 4, %bb.r ], [ %.sroa.019.1.i, %bb.y ] ; 5 uses
  %.sroa.025.0.i = phi i16 [ %i.az, %bb.r ], [ %.sroa.0.0.copyload.i, %bb.y ] ; 6 uses
  %.sroa.1027.0.i = phi ptr [ %i.ba, %bb.r ], [ %.sroa.24.0.copyload.i, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !648
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !194, !noalias !648
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.372") align 8 %8, ptr noundef nonnull align 8 dereferenceable(518435) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.av, i16 %.sroa.025.0.i, ptr %.sroa.1027.0.i) #23, !noalias !648
  %i.bd = load i8, ptr %8, align 8, !tbaa !201, !noalias !648 ; 2 uses
  switch i8 %i.bd, label %bb.u [
    i8 9, label %bb.t
    i8 0, label %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  ]

bb.t:                                             ; preds = %bb.s
  %.not.i = icmp eq i16 %.sroa.025.0.i, 0
  %spec.select.i = select i1 %.not.i, i16 8, i16 %.sroa.025.0.i
  br label %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit

bb.u:                                             ; preds = %bb.s
  %i.be = and i8 %i.bd, -5
  %or.cond.i = icmp eq i8 %i.be, 2
  br i1 %or.cond.i, label %bb.v, label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.v:                                             ; preds = %bb.u
  %i.bf = add i64 %.sroa.019.0.i, -1152921504606846976
  %i.bg = icmp ult i64 %i.bf, -2305843009213693952
  br i1 %i.bg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bh = icmp sgt i64 %.sroa.019.0.i, 0
  %spec.select28.i = select i1 %i.bh, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

bb.x:                                             ; preds = %bb.v
  %i.bi = shl nsw i64 %.sroa.019.0.i, 1
  br label %_ZN4llvm15InstructionCostmLEl.exit.i

_ZN4llvm15InstructionCostmLEl.exit.i:             ; preds = %bb.x, %bb.w, %bb.u
  %.sroa.019.1.i = phi i64 [ %.sroa.019.0.i, %bb.u ], [ %i.bi, %bb.x ], [ %spec.select28.i, %bb.w ] ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.bb, align 8, !tbaa !202, !noalias !648 ; 2 uses
  %.sroa.24.0.copyload.i = load ptr, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !188, !noalias !648 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.sroa.025.0.i, %.sroa.0.0.copyload.i
  %i.bj = icmp eq ptr %.sroa.1027.0.i, %.sroa.24.0.copyload.i
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.bj, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm15InstructionCostmLEl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !648
  br label %bb.s, !llvm.loop !0

_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit: ; preds = %bb.s, %_ZN4llvm15InstructionCostmLEl.exit.i, %bb.t
  %.sroa.019.1.lcssa.sink.i = phi i64 [ 0, %bb.t ], [ %.sroa.019.1.i, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ %.sroa.019.0.i, %bb.s ] ; 3 uses
  %i.bk = phi i1 [ true, %bb.t ], [ false, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ false, %bb.s ]
  %.sroa.025.0.lcssa38.sink.i = phi i16 [ %spec.select.i, %bb.t ], [ %.sroa.025.0.i, %_ZN4llvm15InstructionCostmLEl.exit.i ], [ %.sroa.025.0.i, %bb.s ]
  %.sroa.025.0.lcssa38.sink.i.fr = freeze i16 %.sroa.025.0.lcssa38.sink.i ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !648
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = and i32 %i.bm, 255
  %i.bo = icmp eq i32 %i.bn, 18
  %i.bp = icmp eq i32 %1, 34
  %i.bq = and i32 %.sroa.0269.0.extract.trunc, -2
  %spec.select.i197 = icmp eq i32 %i.bq, 2
  %or.cond315 = and i1 %i.bp, %spec.select.i197
  br i1 %or.cond315, label %bb.z, label %_ZN4llvm15InstructionCostpLERKS0_.exit

bb.z:                                             ; preds = %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  %i.br = load ptr, ptr %i.ao, align 8, !tbaa !195, !nonnull !174, !align !193
  %i.bs = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.br, ptr noundef nonnull %2) #23
  %i.bt = call { i64, i32 } @_ZNK4llvm10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS4_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 33, ptr noundef nonnull %2, i8 %i.bs, i32 noundef 0, i32 noundef 0, i64 %.fr, ptr noundef null) ; 2 uses
  %.fca.0.extract93 = extractvalue { i64, i32 } %i.bt, 0
  %.fca.1.extract94 = extractvalue { i64, i32 } %i.bt, 1
  %i.bu = icmp eq i32 %.fca.1.extract94, 1
  %spec.select = zext i1 %i.bu to i32
  br label %_ZN4llvm15InstructionCostpLERKS0_.exit

_ZN4llvm15InstructionCostpLERKS0_.exit:           ; preds = %bb.z, %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit
  %.sroa.0245.0 = phi i64 [ 0, %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit ], [ %.fca.0.extract93, %bb.z ] ; 6 uses
  %.sroa.18.0 = phi i32 [ 0, %_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE23getTypeLegalizationCostEPNS_4TypeE.exit ], [ %spec.select, %bb.z ] ; 6 uses
  %i.bv = add i16 %.sroa.025.0.lcssa38.sink.i.fr, -19
  %spec.select.i198 = icmp ult i16 %i.bv, 197
  %or.cond316 = and i1 %i.bo, %spec.select.i198
  br i1 %or.cond316, label %bb.aa, label %_ZN4llvmmlERKNS_15InstructionCostES2_.exit

_ZN4llvmmlERKNS_15InstructionCostES2_.exit:       ; preds = %_ZN4llvm15InstructionCostpLERKS0_.exit
  %i.bw = add i16 %.sroa.025.0.lcssa38.sink.i.fr, -12
  %or.cond.i199 = icmp ult i16 %i.bw, 7
  %i.bx = add i16 %.sroa.025.0.lcssa38.sink.i.fr, -105
  %or.cond3.i = icmp ult i16 %i.bx, 58
  %or.cond4.i = or i1 %or.cond.i199, %or.cond3.i
  %i.by = add i16 %.sroa.025.0.lcssa38.sink.i.fr, -195
  %spec.select.i200 = icmp ult i16 %i.by, 21
  %i.bz = or i1 %spec.select.i200, %or.cond4.i    ; 2 uses
  %spec.select317 = select i1 %i.bz, i32 %.sroa.18.0, i32 0
  %i.ca = add i64 %.sroa.019.1.lcssa.sink.i, -2305843009213693952
  %i.cb = icmp ult i64 %i.ca, -4611686018427387904
  %i.cc = shl i64 %.sroa.019.1.lcssa.sink.i, 2
  %i.cd = ashr exact i64 %i.cc, 2
  %i.ce = icmp sgt i64 %.sroa.019.1.lcssa.sink.i, 0
  %spec.select319 = select i1 %i.ce, i64 9223372036854775807, i64 -9223372036854775808
  %.0.i.i202 = select i1 %i.cb, i64 %spec.select319, i64 %i.cd ; 2 uses
  %spec.select.i207 = select i1 %i.bk, i32 1, i32 %spec.select317
  %i.cf = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0245.0, i64 %.0.i.i202)
  %.0.i.i208 = select i1 %i.bz, i64 %i.cf, i64 %.0.i.i202
  br label %.critedge185

bb.aa:                                            ; preds = %_ZN4llvm15InstructionCostpLERKS0_.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !191 ; 4 uses
  %i.ci = load ptr, ptr %i.ao, align 8, !tbaa !195, !nonnull !174, !align !193
  %i.cj = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ci, ptr noundef %i.ch) ; 2 uses
  %.fca.1.extract69 = extractvalue { i64, i8 } %i.cj, 1
  %i.ck = trunc nuw i8 %.fca.1.extract69 to i1
  br i1 %i.ck, label %bb.ab, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.aa
  %.fca.0.extract68 = extractvalue { i64, i8 } %i.cj, 0
  %i.cl = trunc i64 %.fca.0.extract68 to i32      ; 9 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !186 ; 4 uses
  %i.co = zext nneg i16 %.sroa.025.0.lcssa38.sink.i.fr to i64 ; 2 uses
  %i.cp = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.co ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.cp, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.cq = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.cq, label %bb.ac, label %_ZNK4llvm8TypeSizecvmEv.exit214

bb.ac:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit214:                  ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.cr = urem i32 128, %i.cl
  %i.cs = udiv exact i32 128, %i.cl               ; 4 uses
  %.not180 = icmp eq i32 %i.cr, 0
  br i1 %.not180, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit214
  %i.ct = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull %2, i8 %3, i32 noundef %4, i32 noundef 0, i64 %.fr, ptr noundef %7) ; 2 uses
  %.fca.0.extract57 = extractvalue { i64, i32 } %i.ct, 0
  %.fca.1.extract58 = extractvalue { i64, i32 } %i.ct, 1
  br label %.critedge185

bb.ae:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit214
  %i.cu = getelementptr i8, ptr %i.cp, i64 -16
  %.sroa.0.0.copyload.i211 = load i64, ptr %i.cu, align 16 ; 2 uses
  %12 = icmp ne i64 %.sroa.0.0.copyload.i211, 0
  %13 = zext i1 %12 to i64                        ; 2 uses
  %14 = sub i64 %.sroa.0.0.copyload.i211, %13
  %15 = lshr i64 %14, 3
  %16 = add nuw nsw i64 %15, %13
  %17 = trunc i64 %16 to i32                      ; 3 uses
  %i.cv = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.ch, i32 noundef %i.cs) #23 ; 2 uses
  %i.cw = icmp slt i32 %i.cn, 1
  br i1 %i.cw, label %.critedge185, label %.lr.ph464

.lr.ph464:                                        ; preds = %bb.ae
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cy = add i32 %.sroa.0269.0.extract.trunc, -1
  %spec.select.i217 = icmp ult i32 %i.cy, 2
  %or.cond320 = and i1 %i.a, %spec.select.i217
  %i.cz = add nsw i16 %.sroa.025.0.lcssa38.sink.i.fr, -163
  %spec.select.i.i218 = icmp ult i16 %i.cz, 53
  %i.da = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.co
  %i.db = getelementptr i8, ptr %i.da, i64 -2
  %i.dc = select i1 %i.a, i32 4, i32 5
  %18 = add nsw i32 %i.cs, -1
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.de = xor i1 %i.a, true
  br i1 %or.cond320, label %.lr.ph464.split.us.split, label %bb.af

.lr.ph464.split.us.split:                         ; preds = %.lr.ph464
  %19 = zext nneg i8 %3 to i64
  %20 = shl nuw i64 1, %19
  %21 = shl nsw i32 %17, 3                        ; 2 uses
  %22 = srem i32 %21, %i.cl
  %.not181.us502 = icmp eq i32 %22, 0
  br i1 %.not181.us502, label %.lr.ph504, label %bb.ag

.lr.ph504:                                        ; preds = %.lr.ph464.split.us.split, %._crit_edge.split.us.us
  %23 = phi i32 [ %42, %._crit_edge.split.us.us ], [ %21, %.lr.ph464.split.us.split ] ; 3 uses
  %.0166461.us503 = phi i32 [ %41, %._crit_edge.split.us.us ], [ %17, %.lr.ph464.split.us.split ] ; 4 uses
  %24 = sdiv exact i32 %23, %i.cl                 ; 4 uses
  %25 = icmp sgt i32 %24, %i.cs
  br i1 %25, label %26, label %28

26:                                               ; preds = %.lr.ph504
  %27 = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.ch, i32 noundef %24) #23
  br label %28

28:                                               ; preds = %26, %.lr.ph504
  %29 = phi ptr [ %27, %26 ], [ %i.cv, %.lr.ph504 ]
  %30 = icmp eq i32 %23, %i.cl
  br i1 %30, label %.lr.ph.us, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %2, align 8, !tbaa !192, !nonnull !174, !align !193
  %33 = call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %32, i32 noundef %23) #23
  %34 = getelementptr inbounds nuw i8, ptr %29, i64 32
  %35 = load i32, ptr %34, align 8, !tbaa !186
  %36 = udiv i32 %35, %24
  %37 = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %33, i32 noundef %36) #23 ; 0 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %28, %31
  %38 = sext i32 %.0166461.us503 to i64
  %39 = icmp slt i32 %i.cn, %24
  %40 = icmp ult i64 %20, %38
  %or.cond568 = select i1 %39, i1 %40, i1 false
  br i1 %or.cond568, label %._crit_edge.split.us.us, label %.split470.us

._crit_edge.split.us.us:                          ; preds = %.lr.ph.us
  %41 = sdiv i32 %.0166461.us503, 2               ; 2 uses
  %42 = shl nsw i32 %41, 3                        ; 2 uses
  %43 = srem i32 %42, %i.cl
  %.not181.us = icmp eq i32 %43, 0
  br i1 %.not181.us, label %.lr.ph504, label %bb.ag

.split470.us:                                     ; preds = %.lr.ph.us
  %44 = icmp eq i32 %.0166461.us503, 32
  br i1 %44, label %bb.al, label %.lr.ph.split.us

bb.af:                                            ; preds = %.lr.ph464, %._crit_edge
  %.sroa.0160.0462 = phi i8 [ %.sroa.0160.1.lcssa, %._crit_edge ], [ %3, %.lr.ph464 ] ; 5 uses
  %.0166461 = phi i32 [ %i.gf, %._crit_edge ], [ %17, %.lr.ph464 ] ; 7 uses
  %.0167460 = phi i32 [ %.1168.lcssa, %._crit_edge ], [ 0, %.lr.ph464 ] ; 3 uses
  %.sroa.18.1459 = phi i32 [ %.sroa.18.2.lcssa, %._crit_edge ], [ %.sroa.18.0, %.lr.ph464 ] ; 3 uses
  %.sroa.0245.1458 = phi i64 [ %.sroa.0245.2.lcssa, %._crit_edge ], [ %.sroa.0245.0, %.lr.ph464 ] ; 3 uses
  %.0457 = phi i32 [ %.1302.lcssa, %._crit_edge ], [ %i.cn, %.lr.ph464 ] ; 4 uses
  %i.df = shl nsw i32 %.0166461, 3                ; 4 uses
  %i.dg = srem i32 %i.df, %i.cl
  %i.dh = sdiv exact i32 %i.df, %i.cl             ; 8 uses
  %.not181 = icmp eq i32 %i.dg, 0
  br i1 %.not181, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge.split.us.us, %.lr.ph464.split.us.split
  %.us-phi468 = phi i8 [ %3, %.lr.ph464.split.us.split ], [ %3, %._crit_edge.split.us.us ], [ %.sroa.0160.0462, %bb.af ]
  %i.di = call { i64, i32 } @_ZNK4llvm16BasicTTIImplBaseINS_10X86TTIImplEE15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENS6_16OperandValueInfoEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull %2, i8 %.us-phi468, i32 noundef %4, i32 noundef 0, i64 %.fr, ptr noundef %7) ; 2 uses
  %.fca.0.extract34 = extractvalue { i64, i32 } %i.di, 0
  %.fca.1.extract35 = extractvalue { i64, i32 } %i.di, 1
  br label %.critedge185

bb.ah:                                            ; preds = %bb.af
  %i.dj = icmp sgt i32 %i.dh, %i.cs
  br i1 %i.dj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dk = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.ch, i32 noundef %i.dh) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.dl = phi ptr [ %i.dk, %bb.ai ], [ %i.cv, %bb.ah ] ; 4 uses
  %i.dm = icmp eq i32 %i.df, %i.cl
  br i1 %i.dm, label %.lr.ph, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dn = load ptr, ptr %2, align 8, !tbaa !192, !nonnull !174, !align !193
  %i.do = call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, i32 noundef %i.df) #23
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !186
  %i.dr = udiv i32 %i.dq, %i.dh
  %i.ds = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %i.do, i32 noundef %i.dr) #23
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.ak, %bb.aj
  %i.dt = phi ptr [ %i.ds, %bb.ak ], [ %i.dl, %bb.aj ] ; 2 uses
  %cond = icmp eq i32 %.0166461, 1                ; 2 uses
  %i.du = sext i32 %.0166461 to i64               ; 3 uses
  %i.dv = icmp eq i32 %.0166461, 32
  %i.dw = icmp slt i32 %.0166461, 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dy = icmp sgt i32 %.0166461, 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  br i1 %spec.select.i.i218, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.us:                                  ; preds = %.split470.us
  %i.ea = icmp slt i32 %.0166461.us503, 4
  br i1 %i.ea, label %.thread307.us, label %.thread308.us

.thread307.us:                                    ; preds = %.lr.ph.split.us
  %.0.i1.i215.us = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0245.0, i64 8)
  br label %.critedge185

bb.al:                                            ; preds = %.split470.us
  %i.eb = load ptr, ptr %i.cx, align 8, !tbaa !24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 529
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !649, !range !173, !noundef !174
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.am, label %.thread308.us

.thread308.us:                                    ; preds = %bb.al, %.lr.ph.split.us
  %.0.i1.i216.us = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0245.0, i64 4)
  br label %.critedge185

bb.am:                                            ; preds = %bb.al
  %.0.i1.i.us = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0245.0, i64 8)
  br label %.critedge185

.lr.ph.split.split.us:                            ; preds = %.lr.ph
  %i.ef = icmp slt i32 %.0457, %i.dh
  br i1 %i.ef, label %bb.an, label %.split.us

bb.an:                                            ; preds = %.lr.ph.split.split.us
  br i1 %i.a, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %cond, label %.split.us, label %._crit_edge

bb.ap:                                            ; preds = %bb.an
  %i.eg = zext nneg i8 %.sroa.0160.0462 to i64
  %i.eh = shl nuw i64 1, %i.eg
  %i.ei = icmp ult i64 %i.eh, %i.du
  br i1 %i.ei, label %._crit_edge, label %.split.us

.split.us:                                        ; preds = %bb.ao, %.lr.ph.split.split.us, %bb.ap
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.1) #22
  unreachable

.lr.ph.split.split:                               ; preds = %.lr.ph, %.thread309
  %.sroa.0160.1369 = phi i8 [ %i.gd, %.thread309 ], [ %.sroa.0160.0462, %.lr.ph ] ; 4 uses
  %.1168366 = phi i32 [ %i.fu, %.thread309 ], [ %.0167460, %.lr.ph ] ; 4 uses
  %.sroa.18.2363 = phi i32 [ %.sroa.18.4, %.thread309 ], [ %.sroa.18.1459, %.lr.ph ] ; 5 uses
  %.sroa.0245.2362 = phi i64 [ %.sroa.0245.5, %.thread309 ], [ %.sroa.0245.1458, %.lr.ph ] ; 5 uses
  %.1302359 = phi i32 [ %i.fv, %.thread309 ], [ %.0457, %.lr.ph ] ; 5 uses
  %i.ej = icmp slt i32 %.1302359, %i.dh
  br i1 %i.ej, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %.lr.ph.split.split
  br i1 %i.a, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ek = zext nneg i8 %.sroa.0160.1369 to i64
  %i.el = shl nuw i64 1, %i.ek
  %i.em = icmp ult i64 %i.el, %i.du
  br i1 %i.em, label %._crit_edge, label %bb.at

bb.as:                                            ; preds = %bb.aq
  br i1 %cond, label %.thread307, label %._crit_edge

bb.at:                                            ; preds = %bb.ar, %.lr.ph.split.split
  br i1 %i.dv, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.en = load ptr, ptr %i.cx, align 8, !tbaa !24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 529
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !649, !range !173, !noundef !174
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.av, label %.thread308

bb.av:                                            ; preds = %bb.au
  %.0.i1.i = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0245.2362, i64 8)
  br label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

bb.aw:                                            ; preds = %bb.at
  br i1 %i.dw, label %.thread307, label %.thread308

.thread307:                                       ; preds = %bb.as, %bb.aw
  %.0.i1.i215 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0245.2362, i64 8)
  br label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

.thread308:                                       ; preds = %bb.au, %bb.aw
  %.0.i1.i216 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0245.2362, i64 4)
  br label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit

_ZNK4llvm3MVT20getVectorNumElementsEv.exit:       ; preds = %.thread307, %.thread308, %bb.av
  %.sroa.0245.3 = phi i64 [ %.0.i1.i, %bb.av ], [ %.0.i1.i215, %.thread307 ], [ %.0.i1.i216, %.thread308 ] ; 3 uses
  %i.er = sub nsw i32 %i.cn, %.1302359            ; 3 uses
  %i.es = load i16, ptr %i.db, align 2, !tbaa !214
  %i.et = zext i16 %i.es to i32
  %i.eu = urem i32 %i.er, %i.et
  %i.ev = icmp eq i32 %i.eu, 0                    ; 2 uses
  %i.ew = icmp eq i32 %.1168366, 0
  br i1 %i.ew, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %i.ex = load i32, ptr %i.dx, align 8, !tbaa !186 ; 2 uses
  br i1 %i.ev, label %.thread309, label %_ZN4llvm15InstructionCostpLERKS0_.exit220

_ZN4llvm15InstructionCostpLERKS0_.exit220:        ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.ey = call { i64, i32 } @_ZNK4llvm10X86TTIImpl14getShuffleCostENS_19TargetTransformInfo11ShuffleKindEPNS_10VectorTypeES4_NS_8ArrayRefIiEENS1_14TargetCostKindEiS4_NS5_IPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.dc, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr null, i64 0, i32 noundef 0, i32 noundef %i.er, ptr noundef nonnull %i.dl, ptr noundef nonnull byval(%"class.llvm::ArrayRef.62") align 8 %9, ptr poison) ; 2 uses
  %.fca.0.extract13 = extractvalue { i64, i32 } %i.ey, 0
  %.fca.1.extract14 = extractvalue { i64, i32 } %i.ey, 1
  %i.ez = icmp eq i32 %.fca.1.extract14, 1
  %spec.select321 = select i1 %i.ez, i32 1, i32 %.sroa.18.2363
  %.0.i219 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0245.3, i64 %.fca.0.extract13)
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm15InstructionCostpLERKS0_.exit220, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit
  %.sroa.0245.4 = phi i64 [ %.sroa.0245.3, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ], [ %.0.i219, %_ZN4llvm15InstructionCostpLERKS0_.exit220 ] ; 2 uses
  %.sroa.18.3 = phi i32 [ %.sroa.18.2363, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ], [ %spec.select321, %_ZN4llvm15InstructionCostpLERKS0_.exit220 ] ; 2 uses
  %.2169 = phi i32 [ %.1168366, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit ], [ %i.ex, %_ZN4llvm15InstructionCostpLERKS0_.exit220 ] ; 2 uses
  %or.cond8 = or i1 %i.dy, %i.ev
  br i1 %or.cond8, label %.thread309, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %45 = and i32 %i.er, %18
  %i.fa = sdiv i32 %45, %i.dh                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.fb = load i32, ptr %i.dz, align 8, !tbaa !186 ; 2 uses
  %i.fc = add nsw i32 %i.fa, 1                    ; 2 uses
  store i32 %i.fb, ptr %i.dd, align 8, !tbaa !243, !alias.scope !650
  %i.fd = icmp ult i32 %i.fb, 65
  br i1 %i.fd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i64 0, ptr %10, align 8, !tbaa !244, !alias.scope !650
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i

bb.bb:                                            ; preds = %bb.az
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %10, i64 noundef 0, i1 noundef zeroext false) #23
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i

_ZN4llvm5APIntC2Ejmbb.exit.i:                     ; preds = %bb.bb, %bb.ba
  %i.fe = icmp ult i32 %i.fc, 65
  br i1 %i.fe, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %i.ff = zext nneg i32 %i.fa to i64
  %i.fg = shl nuw i64 1, %i.ff                    ; 2 uses
  %i.fh = load i32, ptr %i.dd, align 8, !tbaa !243, !alias.scope !650
  %i.fi = icmp ult i32 %i.fh, 65
  br i1 %i.fi, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fj = load i64, ptr %10, align 8, !tbaa !244, !alias.scope !650
  %i.fk = or i64 %i.fj, %i.fg
  store i64 %i.fk, ptr %10, align 8, !tbaa !244, !alias.scope !650
  br label %_ZN4llvm5APInt10getBitsSetEjjj.exit

bb.be:                                            ; preds = %bb.bc
  %i.fl = load ptr, ptr %10, align 8, !tbaa !244, !alias.scope !650 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !239
  %i.fn = or i64 %i.fm, %i.fg
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !239
  br label %_ZN4llvm5APInt10getBitsSetEjjj.exit

bb.bf:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  call void @_ZN4llvm5APInt15setBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12) %10, i32 noundef %i.fa, i32 noundef %i.fc) #23
  br label %_ZN4llvm5APInt10getBitsSetEjjj.exit

_ZN4llvm5APInt10getBitsSetEjjj.exit:              ; preds = %bb.bd, %bb.be, %bb.bf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.fo = call { i64, i32 } @_ZNK4llvm10X86TTIImpl24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS6_18VectorInstrContextE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.dt, ptr noundef nonnull align 8 dereferenceable(12) %10, i1 noundef zeroext %i.a, i1 noundef zeroext %i.de, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull byval(%"class.llvm::ArrayRef.119") align 8 %11, i8 zeroext poison) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.fo, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.fo, 1
  %i.fp = icmp eq i32 %.fca.1.extract, 1
  %spec.select322 = select i1 %i.fp, i32 1, i32 %.sroa.18.3
  %.0.i221 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0245.4, i64 %.fca.0.extract)
  %i.fq = load i32, ptr %i.dd, align 8, !tbaa !243
  %i.fr = icmp ugt i32 %i.fq, 64
  br i1 %i.fr, label %bb.bg, label %_ZN4llvm5APIntD2Ev.exit

bb.bg:                                            ; preds = %_ZN4llvm5APInt10getBitsSetEjjj.exit
  %i.fs = load ptr, ptr %10, align 8, !tbaa !244  ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %_ZN4llvm5APIntD2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %i.fs) #25
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm5APInt10getBitsSetEjjj.exit, %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.thread309

.thread309:                                       ; preds = %bb.ax, %_ZN4llvm5APIntD2Ev.exit, %bb.ay
  %.2169314 = phi i32 [ %.2169, %bb.ay ], [ %.2169, %_ZN4llvm5APIntD2Ev.exit ], [ %i.ex, %bb.ax ]
  %.sroa.0245.5 = phi i64 [ %.sroa.0245.4, %bb.ay ], [ %.0.i221, %_ZN4llvm5APIntD2Ev.exit ], [ %.sroa.0245.3, %bb.ax ] ; 2 uses
  %.sroa.18.4 = phi i32 [ %.sroa.18.3, %bb.ay ], [ %spec.select322, %_ZN4llvm5APIntD2Ev.exit ], [ %.sroa.18.2363, %bb.ax ] ; 2 uses
  %i.fu = sub nsw i32 %.2169314, %i.dh
  %i.fv = sub nsw i32 %.1302359, %i.dh            ; 2 uses
  %i.fw = zext nneg i8 %.sroa.0160.1369 to i64
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = or i64 %i.fx, %i.du                     ; 2 uses
  %i.fz = sub i64 0, %i.fy
  %i.ga = and i64 %i.fy, %i.fz
  %i.gb = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ga, i1 false)
  %i.gc = trunc nuw nsw i64 %i.gb to i8
  %i.gd = sub nsw i8 63, %i.gc
  %i.ge = icmp sgt i32 %i.fv, 0
  br i1 %i.ge, label %.lr.ph.split.split, label %.critedge185, !llvm.loop !646

._crit_edge:                                      ; preds = %bb.ar, %bb.as, %bb.ap, %bb.ao
  %.1302.lcssa = phi i32 [ %.0457, %bb.ap ], [ %.0457, %bb.ao ], [ %.1302359, %bb.as ], [ %.1302359, %bb.ar ] ; 2 uses
  %.sroa.0245.2.lcssa = phi i64 [ %.sroa.0245.1458, %bb.ap ], [ %.sroa.0245.1458, %bb.ao ], [ %.sroa.0245.2362, %bb.as ], [ %.sroa.0245.2362, %bb.ar ] ; 2 uses
  %.sroa.18.2.lcssa = phi i32 [ %.sroa.18.1459, %bb.ap ], [ %.sroa.18.1459, %bb.ao ], [ %.sroa.18.2363, %bb.as ], [ %.sroa.18.2363, %bb.ar ] ; 2 uses
  %.1168.lcssa = phi i32 [ %.0167460, %bb.ap ], [ %.0167460, %bb.ao ], [ %.1168366, %bb.as ], [ %.1168366, %bb.ar ]
  %.sroa.0160.1.lcssa = phi i8 [ %.sroa.0160.0462, %bb.ap ], [ %.sroa.0160.0462, %bb.ao ], [ %.sroa.0160.1369, %bb.as ], [ %.sroa.0160.1369, %bb.ar ]
  %i.gf = sdiv i32 %.0166461, 2
  %i.gg = icmp slt i32 %.1302.lcssa, 1
  br i1 %i.gg, label %.critedge185, label %bb.af, !llvm.loop !647

.critedge185:                                     ; preds = %._crit_edge, %.thread309, %bb.ae, %.thread307.us, %.thread308.us, %bb.am, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit, %bb.ag, %bb.ad, %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit", %bb.q, %_ZN4llvm16dyn_cast_or_nullINS_9StoreInstEKNS_11InstructionEEEDaPT0_.exit.thread, %bb.b
  %.sroa.0293.4 = phi i64 [ %.fca.0.extract118, %bb.b ], [ %.fca.0.extract104, %bb.q ], [ 8, %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit" ], [ 4, %_ZN4llvm16dyn_cast_or_nullINS_9StoreInstEKNS_11InstructionEEEDaPT0_.exit.thread ], [ %.0.i.i208, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit ], [ %.0.i1.i216.us, %.thread308.us ], [ %.fca.0.extract57, %bb.ad ], [ %.fca.0.extract34, %bb.ag ], [ %.0.i1.i.us, %bb.am ], [ %.0.i1.i215.us, %.thread307.us ], [ %.sroa.0245.0, %bb.ae ], [ %.sroa.0245.5, %.thread309 ], [ %.sroa.0245.2.lcssa, %._crit_edge ]
  %.sroa.10.4 = phi i32 [ %.fca.1.extract119, %bb.b ], [ %.fca.1.extract105, %bb.q ], [ 0, %"_ZN4llvm6all_ofINS_14iterator_rangeIPKNS_3UseEEEZNKS_10X86TTIImpl15getMemoryOpCostEjPNS_4TypeENS_5AlignEjNS_19TargetTransformInfo14TargetCostKindENSA_16OperandValueInfoEPKNS_11InstructionEE3$_0EEbOT_T0_.exit" ], [ 0, %_ZN4llvm16dyn_cast_or_nullINS_9StoreInstEKNS_11InstructionEEEDaPT0_.exit.thread ], [ %spec.select.i207, %_ZN4llvmmlERKNS_15InstructionCostES2_.exit ], [ %.sroa.18.0, %.thread308.us ], [ %.fca.1.extract58, %bb.ad ], [ %.fca.1.extract35, %bb.ag ], [ %.sroa.18.0, %bb.am ], [ %.sroa.18.0, %.thread307.us ], [ %.sroa.18.0, %bb.ae ], [ %.sroa.18.4, %.thread309 ], [ %.sroa.18.2.lcssa, %._crit_edge ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0293.4, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.10.4, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZZNK4llvm10X86TTIImpl18getVectorInstrCostEjPNS_4TypeENS_19TargetTransformInfo14TargetCostKindEjPKNS_5ValueES7_NS3_18VectorInstrContextEENK3$_0clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !345  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !651, !nonnull !174, !align !652
  %i.d = load i16, ptr %i.c, align 2, !tbaa !653  ; 5 uses
  %i.e = icmp eq i16 %i.d, 6
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.i = load i32, ptr %i.h, align 8, !tbaa !175
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = add i16 %i.d, -2
  %or.cond.i = icmp ult i16 %i.k, 10
  %i.l = add i16 %i.d, -19
  %or.cond3.i = icmp ult i16 %i.l, 86
  %or.cond4.i = or i1 %or.cond.i, %or.cond3.i
  %i.m = add i16 %i.d, -163
  %spec.select.i = icmp ult i16 %i.m, 32
  %i.n = or i1 %spec.select.i, %or.cond4.i
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 360
  %i.r = load i32, ptr %i.q, align 8, !tbaa !175
  %i.s = icmp sgt i32 %i.r, 4
  br i1 %i.s, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = icmp eq i16 %i.d, 14
  br i1 %i.t, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 360
  %i.x = load i32, ptr %i.w, align 8, !tbaa !175  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !654, !nonnull !174, !align !348
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !217
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !655, !nonnull !174, !align !348
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !217
  %i.ag = icmp eq i32 %i.af, 64
  br i1 %i.ag, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = icmp samesign ugt i32 %i.x, 4
  br i1 %i.ah, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !655, !nonnull !174, !align !348
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !217
  %i.al = icmp eq i32 %i.ak, 64
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.i, %bb.j, %bb.h, %bb.d, %bb.b
  %i.am = phi i1 [ true, %bb.h ], [ true, %bb.d ], [ true, %bb.b ], [ false, %bb.i ], [ %i.al, %bb.j ], [ false, %bb.e ], [ false, %bb.f ]
  ret i1 %i.am
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15CostTableLookupILm4EtEEPKNS_13CostTblEntryTIT0_EERAT__S4_iNS_3MVTE(ptr noundef nonnull align 2 dereferenceable(24) %0, i32 noundef %1, i16 %2) local_unnamed_addr #8 comdat {
.lr.ph.i:
  %i.a = load i16, ptr %0, align 2, !tbaa !349
  %i.b = zext i16 %i.a to i32
  %i.c = icmp eq i32 %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = icmp eq i16 %i.e, %2
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTEEUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.thread, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i
  %.ptr7 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.h = load i16, ptr %.ptr7, align 2, !tbaa !349
  %i.i = zext i16 %i.h to i32
  %i.j = icmp eq i32 %1, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i16, ptr %i.k, align 2
  %i.m = icmp eq i16 %i.l, %2
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTEEUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.ptr6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i16, ptr %.ptr6, align 2, !tbaa !349
  %i.p = zext i16 %i.o to i32
  %i.q = icmp eq i32 %1, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.s = load i16, ptr %i.r, align 2
  %i.t = icmp eq i16 %i.s, %2
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  br i1 %i.u, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTEEUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.v = load i16, ptr %.ptr, align 2, !tbaa !349
  %i.w = zext i16 %i.v to i32
  %i.x = icmp eq i32 %1, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = icmp eq i16 %i.z, %2
  %i.ab = select i1 %i.x, i1 %i.aa, i1 false
  br i1 %i.ab, label %_ZSt9__find_ifIPKN4llvm13CostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTEEUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.thread, label %bb.d

_ZSt9__find_ifIPKN4llvm13CostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTEEUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.thread: ; preds = %bb.a, %bb.b, %.lr.ph.i, %bb.c
  %.028.i.idx.ph = phi i64 [ 6, %bb.a ], [ 0, %.lr.ph.i ], [ 12, %bb.b ], [ 18, %bb.c ]
  %.028.i.ptr10 = getelementptr inbounds nuw i8, ptr %0, i64 %.028.i.idx.ph
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZSt9__find_ifIPKN4llvm13CostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTEEUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.thread
  %i.ac = phi ptr [ %.028.i.ptr10, %_ZSt9__find_ifIPKN4llvm13CostTblEntryTItEEN9__gnu_cxx5__ops10_Iter_predIZNS0_15CostTableLookupItEEPKNS1_IT_EENS0_8ArrayRefISA_EEiNS0_3MVTEEUlRS3_E_EEES9_S9_S9_T0_St26random_access_iterator_tag.exit.thread ], [ null, %bb.c ]
  ret ptr %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i16, ptr } @_ZNK4llvm3EVT13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !225    ; 4 uses
  %.not.i = icmp eq i16 %i.a, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.b = add i16 %i.a, -19
  %spec.select.i.i = icmp ult i16 %i.b, 197
  br i1 %spec.select.i.i, label %bb.b, label %bb.d

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #21
  br i1 %i.c, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.split
  %i.d = zext nneg i16 %i.a to i64
  %i.e = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !202
  %i.h = insertvalue { i16, ptr } poison, i16 %i.g, 0
  %i.i = insertvalue { i16, ptr } %i.h, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.j = tail call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #23
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.d:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %.sroa.31.0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.31.0.copyload = load ptr, ptr %.sroa.31.0..0..sroa_idx, align 8, !tbaa !188
  %i.k = insertvalue { i16, ptr } poison, i16 %i.a, 0
  %i.l = insertvalue { i16, ptr } %i.k, ptr %.sroa.31.0.copyload, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.c, %bb.b, %bb.d
  %.fca.1.insert.merged = phi { i16, ptr } [ %i.l, %bb.d ], [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  ret { i16, ptr } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i32 } @_ZNK4llvm10X86TTIImpl24getScalarizationOverheadEPNS_10VectorTypeERKNS_5APIntEbbNS_19TargetTransformInfo14TargetCostKindEbNS_8ArrayRefIPNS_5ValueEEENS6_18VectorInstrContextE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5, i1 noundef zeroext %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.119") align 8 captures(none) %7, i8 zeroext %8) unnamed_addr #4 align 2 {
bb.a:
  %9 = alloca %"struct.std::pair.372", align 8    ; 7 uses
  %10 = alloca %"class.llvm::ArrayRef.119", align 8 ; 2 uses
  %11 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %12 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %13 = alloca %"class.llvm::ArrayRef.62", align 8 ; 2 uses
  %14 = alloca %"class.llvm::ArrayRef.119", align 8 ; 2 uses
  %15 = alloca %"class.llvm::APInt", align 8      ; 12 uses
  %16 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %17 = alloca %"class.llvm::ArrayRef.62", align 8 ; 4 uses
  %18 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %19 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %20 = alloca %"class.llvm::ArrayRef.62", align 8 ; 2 uses
  %21 = alloca %"class.llvm::ArrayRef.119", align 8 ; 2 uses
  %22 = alloca %"class.llvm::ArrayRef.119", align 8 ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !192, !noalias !662, !nonnull !174, !align !193
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !194, !noalias !662
end_hunk_0
