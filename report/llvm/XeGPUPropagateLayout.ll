Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XeGPUPropagateLayout?download=true
inline.NumInlined: 6860
inline.NumDeleted: 3643
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z8getNumSgPN4mlir9OperationEiNS_5xegpu20DistributeLayoutAttrE:bb.a
  %xtraiter = and i64 %i.g, 7                     ; 3 uses
  %i.h = icmp samesign ult i64 %i.f, 7
  br i1 %i.h, label %.lr.ph.i.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %i.g, 4611686018427387896
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.new
  %.08.i.i.i = phi ptr [ %.pre, %.new ], [ %i.af, %.lr.ph.i.i.i ] ; 9 uses
  %.057.i.i.i = phi i64 [ 1, %.new ], [ %i.ae, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %i.i = load i64, ptr %.08.i.i.i, align 8, !tbaa !55
  %i.j = mul nsw i64 %i.i, %.057.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !55
  %i.m = mul nsw i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !55
  %i.p = mul nsw i64 %i.o, %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !55
  %i.s = mul nsw i64 %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !55
  %i.v = mul nsw i64 %i.u, %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !55
  %i.y = mul nsw i64 %i.x, %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !55
  %i.ab = mul nsw i64 %i.aa, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !55
  %i.ae = mul nsw i64 %i.ad, %i.ab                ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4llvm10product_ofIRNS_11SmallVectorIlLj6EEElEEDaOT_T0_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !101

_ZN4llvm10product_ofIRNS_11SmallVectorIlLj6EEElEEDaOT_T0_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4llvm10product_ofIRNS_11SmallVectorIlLj6EEElEEDaOT_T0_.exit, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN4llvm10product_ofIRNS_11SmallVectorIlLj6EEElEEDaOT_T0_.exit.loopexit.unr-lcssa, %bb.c
  %.08.i.i.i.epil.init = phi ptr [ %.pre, %bb.c ], [ %i.af, %_ZN4llvm10product_ofIRNS_11SmallVectorIlLj6EEElEEDaOT_T0_.exit.loopexit.unr-lcssa ]
  %.057.i.i.i.epil.init = phi i64 [ 1, %bb.c ], [ %i.ae, %_ZN4llvm10product_ofIRNS_11SmallVectorIlLj6EEElEEDaOT_T0_.exit.loopexit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.08.i.i.i.epil = phi ptr [ %i.ai, %.lr.ph.i.i.i.epil ], [ %.08.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.057.i.i.i.epil = phi i64 [ %i.ah, %.lr.ph.i.i.i.epil ], [ %.057.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.ag = load i64, ptr %.08.i.i.i.epil, align 8, !tbaa !55
  %i.ah = mul nsw i64 %i.ag, %.057.i.i.i.epil     ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4llvm10product_ofIRNS_11SmallVectorIlLj6EEElEEDaOT_T0_.exit, label %.lr.ph.i.i.i.epil, !llvm.loop !102

_ZN4llvm10product_ofIRNS_11SmallVectorIlLj6EEElEEDaOT_T0_.exit: ; preds = %_ZN4llvm10product_ofIRNS_11SmallVectorIlLj6EEElEEDaOT_T0_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.b
  %.sroa.0.0 = phi i64 [ undef, %bb.b ], [ %i.ae, %_ZN4llvm10product_ofIRNS_11SmallVectorIlLj6EEElEEDaOT_T0_.exit.loopexit.unr-lcssa ], [ %i.ah, %.lr.ph.i.i.i.epil ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ak = icmp eq ptr %.pre, %i.aj
  br i1 %i.ak, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm10product_ofIRNS_11SmallVectorIlLj6EEElEEDaOT_T0_.exit
  call void @free(ptr noundef %.pre) #27
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZN4llvm10product_ofIRNS_11SmallVectorIlLj6EEElEEDaOT_T0_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %.not.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, %bb.a
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit ], [ undef, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.0.i = phi ptr [ %0, %bb.e ], [ %i.an, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !103 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %.loopexit, label %_ZN4mlir9Operation11getParentOpEv.exit.i

_ZN4mlir9Operation11getParentOpEv.exit.i:         ; preds = %bb.f
  %i.an = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.am) #27 ; 4 uses
  %.not.i4 = icmp eq ptr %i.an, null
  br i1 %.not.i4, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !120
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !121
  %i.ar = icmp eq ptr %i.aq, @_ZN4mlir6detail14TypeIDResolverINS_3gpu9GPUFuncOpEvE2idE
  br i1 %i.ar, label %bb.h, label %bb.f, !llvm.loop !123

bb.h:                                             ; preds = %bb.g
  store ptr %i.an, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN4mlir3gpu9GPUFuncOp17getKnownBlockSizeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.36") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.at = load i8, ptr %i.as, align 8, !tbaa !124, !range !66, !noundef !67
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZNRSt8optionalIN4llvm8ArrayRefIiEEE5valueEv.exit, label %bb.i

_ZNRSt8optionalIN4llvm8ArrayRefIiEEE5valueEv.exit: ; preds = %bb.h
  %i.av = load ptr, ptr %7, align 8, !tbaa !126   ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !129 ; 2 uses
  %.idx.i.i5 = shl i64 %i.ax, 2                   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i.i5
  %.not6.i.i.i6 = icmp eq i64 %i.ax, 0
  br i1 %.not6.i.i.i6, label %_ZN4llvm10product_ofIRNS_8ArrayRefIiEEKiEEDaOT_T0_.exit, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %_ZNRSt8optionalIN4llvm8ArrayRefIiEEE5valueEv.exit
  %i.az = add i64 %.idx.i.i5, -4                  ; 2 uses
  %i.ba = lshr exact i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.az, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i7.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i7.preheader
  %n.vec = and i64 %i.bb, 9223372036854775800     ; 3 uses
  %i.bc = shl i64 %n.vec, 2
  %i.bd = getelementptr i8, ptr %i.av, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi24 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.bh, %vector.body ]
  %i.be = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !18
  %wide.load25 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !18
  %i.bg = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bh = mul <4 x i32> %wide.load25, %vec.phi24  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.bh, %i.bg
  %i.bj = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZN4llvm10product_ofIRNS_8ArrayRefIiEEKiEEDaOT_T0_.exit, label %.lr.ph.i.i.i7.preheader26

.lr.ph.i.i.i7.preheader26:                        ; preds = %.lr.ph.i.i.i7.preheader, %middle.block
  %.08.i.i.i8.ph = phi ptr [ %i.av, %.lr.ph.i.i.i7.preheader ], [ %i.bd, %middle.block ]
  %.057.i.i.i9.ph = phi i32 [ 1, %.lr.ph.i.i.i7.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7.preheader26, %.lr.ph.i.i.i7
  %.08.i.i.i8 = phi ptr [ %i.bm, %.lr.ph.i.i.i7 ], [ %.08.i.i.i8.ph, %.lr.ph.i.i.i7.preheader26 ] ; 2 uses
  %.057.i.i.i9 = phi i32 [ %i.bl, %.lr.ph.i.i.i7 ], [ %.057.i.i.i9.ph, %.lr.ph.i.i.i7.preheader26 ]
  %i.bk = load i32, ptr %.08.i.i.i8, align 4, !tbaa !18
  %i.bl = mul nsw i32 %i.bk, %.057.i.i.i9         ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i8, i64 4 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.bm, %i.ay
  br i1 %.not.i.i.i10, label %_ZN4llvm10product_ofIRNS_8ArrayRefIiEEKiEEDaOT_T0_.exit, label %.lr.ph.i.i.i7, !llvm.loop !133

_ZN4llvm10product_ofIRNS_8ArrayRefIiEEKiEEDaOT_T0_.exit: ; preds = %.lr.ph.i.i.i7, %middle.block, %_ZNRSt8optionalIN4llvm8ArrayRefIiEEE5valueEv.exit
  %.05.lcssa.i.i.i11 = phi i32 [ 1, %_ZNRSt8optionalIN4llvm8ArrayRefIiEEE5valueEv.exit ], [ %i.bj, %middle.block ], [ %i.bl, %.lr.ph.i.i.i7 ]
  %i.bn = sdiv i32 %.05.lcssa.i.i.i11, %1
  %i.bo = sext i32 %i.bn to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4llvm10product_ofIRNS_8ArrayRefIiEEKiEEDaOT_T0_.exit
  %.sroa.0.2 = phi i64 [ %i.bo, %_ZN4llvm10product_ofIRNS_8ArrayRefIiEEKiEEDaOT_T0_.exit ], [ %.sroa.0.1, %bb.h ]
  %.sroa.3.1 = phi i8 [ 1, %_ZN4llvm10product_ofIRNS_8ArrayRefIiEEKiEEDaOT_T0_.exit ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %_ZN4mlir9Operation11getParentOpEv.exit.i, %bb.i
  %.sroa.0.3 = phi i64 [ %.sroa.0.2, %bb.i ], [ %.sroa.0.1, %_ZN4mlir9Operation11getParentOpEv.exit.i ], [ %.sroa.0.1, %bb.f ]
  %.sroa.3.2 = phi i8 [ %.sroa.3.1, %bb.i ], [ 0, %_ZN4mlir9Operation11getParentOpEv.exit.i ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, %.loopexit
  %.sroa.0.4 = phi i64 [ %.sroa.0.3, %.loopexit ], [ %.sroa.0.0, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit ]
  %.sroa.3.3 = phi i8 [ %.sroa.3.2, %.loopexit ], [ 1, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0.4, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.3, 1
  ret { i64, i8 } %.fca.1.insert
}

declare void @_ZNK4mlir5xegpu20DistributeLayoutAttr25getEffectiveSgLayoutAsIntEv(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.13") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN4mlir3gpu9GPUFuncOp17getKnownBlockSizeEv(ptr dead_on_unwind writable sret(%"class.std::optional.36") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir5xegpu16propagateLayoutsERNS_9OpBuilderEPNS_9OperationENS0_10LayoutKindEjb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 {
bb.a:
  %.sroa.011.i.i = alloca [8 x i8], align 8       ; 4 uses
  %5 = alloca %"class.mlir::Attribute", align 8   ; 4 uses
  %6 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %7 = alloca %"class.mlir::FunctionOpInterface", align 16 ; 6 uses
  %8 = alloca %class.anon.1147, align 8           ; 5 uses
  %9 = alloca %"class.llvm::SmallVector.1040", align 8 ; 12 uses
  %10 = alloca %"class.llvm::iterator_range.1078", align 8 ; 5 uses
  %11 = alloca %"class.mlir::detail::op_iterator", align 8 ; 9 uses
  %12 = alloca %"class.llvm::iterator_range.1089", align 8 ; 5 uses
  %13 = alloca %"class.mlir::detail::op_iterator.1090", align 8 ; 9 uses
  %14 = alloca %"class.llvm::iterator_range.1078", align 8 ; 5 uses
  %15 = alloca %"class.mlir::detail::op_iterator", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %16 = alloca %"class.mlir::DataFlowConfig", align 1 ; 4 uses
  %17 = alloca %"class.mlir::SymbolTableCollection", align 8 ; 6 uses
  %18 = alloca %"class.(anonymous namespace)::RunLayoutInfoPropagation", align 8 ; 20 uses
  %19 = alloca %class.anon.68, align 8            ; 4 uses
  %20 = alloca %class.anon.69, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  store i8 1, ptr %16, align 1, !tbaa !134
  call void @_ZN4mlir14DataFlowSolverC2ERKNS_14DataFlowConfigE(ptr noundef nonnull align 8 dereferenceable(216) %18, ptr noundef nonnull align 1 dereferenceable(1) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.b = getelementptr inbounds nuw i8, ptr %18, i64 208 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4mlir21SymbolTableCollectionE, i64 16), ptr %17, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = call noundef ptr @_ZN4mlir14DataFlowSolver4loadINS_8dataflow16DeadCodeAnalysisEJEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(216) %18) ; 0 uses
  %i.e = call noundef ptr @_ZN4mlir14DataFlowSolver4loadINS_8dataflow25SparseConstantPropagationEJEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(216) %18) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %18, i64 88 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.g = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28 ; 6 uses
  call void @_ZN4mlir8dataflow38AbstractSparseBackwardDataFlowAnalysisC2ERNS_14DataFlowSolverERNS_21SymbolTableCollectionE(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(216) %18, ptr noundef nonnull align 8 dereferenceable(32) %17) #27
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN12_GLOBAL__N_121LayoutInfoPropagationE, i64 16), ptr %i.g, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i32 %2, ptr %i.h, align 8, !tbaa !166
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  store i32 %3, ptr %i.i, align 4, !tbaa !174
  store ptr %i.g, ptr %i.a, align 8, !tbaa !175
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 96 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !16   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %18, i64 100
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  %.not.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16DataFlowAnalysisESt14default_deleteIS3_EELb0EE18growAndEmplaceBackIJPN12_GLOBAL__N_121LayoutInfoPropagationEEEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !13
  %.pre3.i.i = load i32, ptr %i.j, align 8, !tbaa !16
  br label %_ZN12_GLOBAL__N_124RunLayoutInfoPropagationC2EPN4mlir9OperationENS1_5xegpu10LayoutKindEj.exit

bb.c:                                             ; preds = %bb.a
  %i.n = zext i32 %i.k to i64
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  store ptr %i.g, ptr %i.p, align 8, !tbaa !177
  %i.q = add nuw i32 %i.k, 1                      ; 2 uses
  store i32 %i.q, ptr %i.j, align 8, !tbaa !16
  br label %_ZN12_GLOBAL__N_124RunLayoutInfoPropagationC2EPN4mlir9OperationENS1_5xegpu10LayoutKindEj.exit

_ZN12_GLOBAL__N_124RunLayoutInfoPropagationC2EPN4mlir9OperationENS1_5xegpu10LayoutKindEj.exit: ; preds = %bb.b, %bb.c
  %i.r = phi i32 [ %.pre3.i.i, %bb.b ], [ %i.q, %bb.c ]
  %i.s = phi ptr [ %.pre.i.i, %bb.b ], [ %i.o, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.t = zext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !177
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr @_ZZN12_GLOBAL__N_121LayoutInfoPropagation13resolveTypeIDEvE2id, ptr %i.x, align 8, !tbaa !51
  %i.y = call i8 @_ZN4mlir14DataFlowSolver16initializeAndRunEPNS_9OperationEN4llvm12function_refIFbRNS_16DataFlowAnalysisEEEE(ptr noundef nonnull align 8 dereferenceable(216) %18, ptr noundef %1, ptr null, i64 undef) #27 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4mlir21SymbolTableCollectionE, i64 16), ptr %17, align 8, !tbaa !8
  call void @_ZN4llvm8DenseMapIPN4mlir9OperationESt10unique_ptrINS1_11SymbolTableESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br i1 %4, label %bb.d, label %bb.au

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_124RunLayoutInfoPropagationC2EPN4mlir9OperationENS1_5xegpu10LayoutKindEj.exit
  %i.z = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #27 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.aa, ptr %9, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  store i32 3, ptr %i.ac, align 4, !tbaa !17
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !136 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !120
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !121
  %i.ah = icmp ne ptr %i.ag, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %.not6263.i = icmp eq ptr %i.ad, null
  %.not62.i = or i1 %.not6263.i, %i.ah
  br i1 %.not62.i, label %_ZN12_GLOBAL__N_124RunLayoutInfoPropagation19printAnalysisResultERN4llvm11raw_ostreamE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 44 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !noalias !179 ; 3 uses
  %i.ak = and i32 %i.aj, 8388607
  %i.al = icmp ne i32 %i.ak, 0
  call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 2 uses
  %i.an = lshr i32 %i.aj, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.an, 1
  %i.ao = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ao
  %i.aq = lshr i32 %i.aj, 21
  %i.ar = and i32 %i.aq, 2040
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !182, !noalias !179
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %i.aw
  call void @_ZN4mlir6Region6getOpsINS_19FunctionOpInterfaceEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS0_10OpIteratorEEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.1078") align 8 %10, ptr noundef nonnull align 8 dereferenceable(28) %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(128) %10, i64 64, i1 false)
  %.sroa.355.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 80
  %.sroa.355.0.copyload.i = load ptr, ptr %.sroa.355.0..sroa_idx.i, align 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !183 ; 2 uses
  %.not6474.i = icmp eq ptr %i.az, %.sroa.355.0.copyload.i
  br i1 %.not6474.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 48
  br label %bb.f

._crit_edge.i:                                    ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_19FunctionOpInterfaceENS2_6Region10OpIteratorEEEPFS5_RNS2_9OperationEES5_EES8_St20forward_iterator_tagS5_lPS5_S5_EppEv.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.bd = load i32, ptr %i.ai, align 4, !noalias !186 ; 3 uses
  %i.be = and i32 %i.bd, 8388607
  %i.bf = icmp ne i32 %i.be, 0
  call void @llvm.assume(i1 %i.bf)
  %i.bg = lshr i32 %i.bd, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i24.i = and i32 %i.bg, 1
  %i.bh = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i24.i to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.bh
  %i.bj = lshr i32 %i.bd, 21
  %i.bk = and i32 %i.bj, 2040
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bl
  %i.bn = load i32, ptr %i.au, align 8, !tbaa !182, !noalias !186
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %i.bo
  call void @_ZN4mlir6Region6getOpsINS_3gpu11GPUModuleOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS0_10OpIteratorEEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.1089") align 8 %12, ptr noundef nonnull align 8 dereferenceable(28) %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(128) %12, i64 64, i1 false)
  %.sroa.352.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 80
  %.sroa.352.0.copyload.i = load ptr, ptr %.sroa.352.0..sroa_idx.i, align 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !183 ; 2 uses
  %.not6579.i = icmp eq ptr %i.br, %.sroa.352.0.copyload.i
  br i1 %.not6579.i, label %.loopexit.i, label %.lr.ph81.i

.lr.ph81.i:                                       ; preds = %._crit_edge.i
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 56
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 80
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 48
  br label %bb.j

bb.f:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_19FunctionOpInterfaceENS2_6Region10OpIteratorEEEPFS5_RNS2_9OperationEES5_EES8_St20forward_iterator_tagS5_lPS5_S5_EppEv.exit.i, %.lr.ph.i
  %i.bz = phi ptr [ %i.az, %.lr.ph.i ], [ %i.cw, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_19FunctionOpInterfaceENS2_6Region10OpIteratorEEEPFS5_RNS2_9OperationEES5_EES8_St20forward_iterator_tagS5_lPS5_S5_EppEv.exit.i ]
  %i.ca = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.bz) #27
  %i.cb = load ptr, ptr %i.ba, align 8, !tbaa !189
  %i.cc = call { ptr, ptr } %i.cb(ptr noundef nonnull align 8 dereferenceable(64) %i.ca) #27, !inline_history !191 ; 2 uses
  %i.cd = extractvalue { ptr, ptr } %i.cc, 0      ; 2 uses
  %i.ce = extractvalue { ptr, ptr } %i.cc, 1      ; 2 uses
  %i.cf = load i32, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %i.cg = load i32, ptr %i.ac, align 4, !tbaa !17
  %.not.i.i = icmp ult i32 %i.cf, %i.cg
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir19FunctionOpInterfaceELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.cd, ptr %i.ce)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir19FunctionOpInterfaceELb1EE9push_backES2_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ch = zext i32 %i.cf to i64
  %i.ci = load ptr, ptr %9, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.ch ; 2 uses
  store ptr %i.cd, ptr %i.cj, align 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.ce, ptr %.sroa.3.0..sroa_idx.i.i, align 1
  %i.ck = load i32, ptr %i.ab, align 8, !tbaa !16
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.ab, align 8, !tbaa !16
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir19FunctionOpInterfaceELb1EE9push_backES2_.exit.i
end_hunk_0
begin_hunk_1_@_ZN4mlir5xegpu16propagateLayoutsERNS_9OpBuilderEPNS_9OperationENS0_10LayoutKindEjb:bb.a
  store i32 %i.ep, ptr %i.ab, align 8, !tbaa !16
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir19FunctionOpInterfaceELb1EE9push_backES2_.exit31.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir19FunctionOpInterfaceELb1EE9push_backES2_.exit31.i: ; preds = %bb.m, %bb.l
  %i.eq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(56) %15) #27 ; 0 uses
  %i.er = load ptr, ptr %i.bt, align 8, !tbaa !183 ; 3 uses
  %i.es = load ptr, ptr %i.bv, align 8, !tbaa !183
  %.not1.i.i.i32.i = icmp eq ptr %i.er, %i.es
  br i1 %.not1.i.i.i32.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_19FunctionOpInterfaceENS2_6Region10OpIteratorEEEPFS5_RNS2_9OperationEES5_EES8_St20forward_iterator_tagS5_lPS5_S5_EppEv.exit35.i, label %.lr.ph.i.i.i33.i

.lr.ph.i.i.i33.i:                                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir19FunctionOpInterfaceELb1EE9push_backES2_.exit31.i, %bb.n
  %i.et = phi ptr [ %i.ey, %bb.n ], [ %i.er, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir19FunctionOpInterfaceELb1EE9push_backES2_.exit31.i ]
  %i.eu = load ptr, ptr %i.bw, align 8, !tbaa !192
  %i.ev = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.et) #27
  %i.ew = call noundef zeroext i1 %i.eu(ptr noundef nonnull align 8 dereferenceable(64) %i.ev) #27, !inline_history !199
  br i1 %i.ew, label %.lr.ph.i.i.i33._ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_19FunctionOpInterfaceENS2_6Region10OpIteratorEEEPFS5_RNS2_9OperationEES5_EES8_St20forward_iterator_tagS5_lPS5_S5_EppEv.exit35.loopexit_crit_edge.i, label %bb.n

.lr.ph.i.i.i33._ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_19FunctionOpInterfaceENS2_6Region10OpIteratorEEEPFS5_RNS2_9OperationEES5_EES8_St20forward_iterator_tagS5_lPS5_S5_EppEv.exit35.loopexit_crit_edge.i: ; preds = %.lr.ph.i.i.i33.i
  %.pre95.pre.i = load ptr, ptr %i.bt, align 8, !tbaa !183
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_19FunctionOpInterfaceENS2_6Region10OpIteratorEEEPFS5_RNS2_9OperationEES5_EES8_St20forward_iterator_tagS5_lPS5_S5_EppEv.exit35.i

bb.n:                                             ; preds = %.lr.ph.i.i.i33.i
  %i.ex = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(56) %15) #27 ; 0 uses
  %i.ey = load ptr, ptr %i.bt, align 8, !tbaa !183 ; 3 uses
  %i.ez = load ptr, ptr %i.bv, align 8, !tbaa !183
  %.not.i.i.i34.i = icmp eq ptr %i.ey, %i.ez
  br i1 %.not.i.i.i34.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_19FunctionOpInterfaceENS2_6Region10OpIteratorEEEPFS5_RNS2_9OperationEES5_EES8_St20forward_iterator_tagS5_lPS5_S5_EppEv.exit35.i, label %.lr.ph.i.i.i33.i, !llvm.loop !200

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_19FunctionOpInterfaceENS2_6Region10OpIteratorEEEPFS5_RNS2_9OperationEES5_EES8_St20forward_iterator_tagS5_lPS5_S5_EppEv.exit35.i: ; preds = %bb.n, %.lr.ph.i.i.i33._ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_19FunctionOpInterfaceENS2_6Region10OpIteratorEEEPFS5_RNS2_9OperationEES5_EES8_St20forward_iterator_tagS5_lPS5_S5_EppEv.exit35.loopexit_crit_edge.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir19FunctionOpInterfaceELb1EE9push_backES2_.exit31.i
  %i.fa = phi ptr [ %i.er, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir19FunctionOpInterfaceELb1EE9push_backES2_.exit31.i ], [ %.pre95.pre.i, %.lr.ph.i.i.i33._ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_19FunctionOpInterfaceENS2_6Region10OpIteratorEEEPFS5_RNS2_9OperationEES5_EES8_St20forward_iterator_tagS5_lPS5_S5_EppEv.exit35.loopexit_crit_edge.i ], [ %i.ey, %bb.n ] ; 2 uses
  %.not66.i = icmp eq ptr %i.fa, %.sroa.3.0.copyload.i
  br i1 %.not66.i, label %._crit_edge78.i, label %.lr.ph77.i

.loopexit.i:                                      ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_3gpu11GPUModuleOpENS2_6Region10OpIteratorEEEPFS6_RNS2_9OperationEES6_EES9_St20forward_iterator_tagS6_lPS6_S6_EppEv.exit.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %.pre97.i = load ptr, ptr %9, align 8, !tbaa !13 ; 3 uses
  %.pre98.i = load i32, ptr %i.ab, align 8, !tbaa !16 ; 2 uses
  %i.fb = zext i32 %.pre98.i to i64
  %.idx.i = shl nuw nsw i64 %i.fb, 4
  %i.fc = getelementptr inbounds nuw i8, ptr %.pre97.i, i64 %.idx.i
  %.not83.i = icmp eq i32 %.pre98.i, 0
  br i1 %.not83.i, label %._crit_edge87.i, label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %.loopexit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 15 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %18, i64 184
  %i.fg = getelementptr inbounds nuw i8, ptr %18, i64 192
  %i.fh = getelementptr inbounds nuw i8, ptr %18, i64 204
  %i.fi = mul i64 ptrtoint (ptr @_ZZN12_GLOBAL__N_117LayoutInfoLattice13resolveTypeIDEvE2id to i64), -4658895280553007687 ; 2 uses
  %i.fj = lshr i64 %i.fi, 31
  %i.fk = xor i64 %i.fj, %i.fi
  %i.fl = trunc i64 %i.fk to i32                  ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %18, i64 160
  %i.fn = getelementptr inbounds nuw i8, ptr %18, i64 168
  %i.fo = getelementptr inbounds nuw i8, ptr %18, i64 180
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fq = ptrtoint ptr %8 to i64
  br label %bb.p

._crit_edge87.loopexit.i:                         ; preds = %"_ZZN12_GLOBAL__N_124RunLayoutInfoPropagation19printAnalysisResultERN4llvm11raw_ostreamEENK3$_0clEN4mlir19FunctionOpInterfaceE.exit.i"
  %.pre99.i = load ptr, ptr %9, align 8, !tbaa !13
  br label %._crit_edge87.i

._crit_edge87.i:                                  ; preds = %._crit_edge87.loopexit.i, %.loopexit.i
  %i.fr = phi ptr [ %.pre99.i, %._crit_edge87.loopexit.i ], [ %.pre97.i, %.loopexit.i ] ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.aa
  br i1 %i.fs, label %_ZN12_GLOBAL__N_124RunLayoutInfoPropagation19printAnalysisResultERN4llvm11raw_ostreamE.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge87.i
  call void @free(ptr noundef %i.fr) #27
  br label %_ZN12_GLOBAL__N_124RunLayoutInfoPropagation19printAnalysisResultERN4llvm11raw_ostreamE.exit

bb.p:                                             ; preds = %"_ZZN12_GLOBAL__N_124RunLayoutInfoPropagation19printAnalysisResultERN4llvm11raw_ostreamEENK3$_0clEN4mlir19FunctionOpInterfaceE.exit.i", %.lr.ph86.i
  %.084.i = phi ptr [ %.pre97.i, %.lr.ph86.i ], [ %i.pm, %"_ZZN12_GLOBAL__N_124RunLayoutInfoPropagation19printAnalysisResultERN4llvm11raw_ostreamEENK3$_0clEN4mlir19FunctionOpInterfaceE.exit.i" ] ; 2 uses
  %i.ft = load <2 x ptr>, ptr %.084.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store <2 x ptr> %i.ft, ptr %7, align 16
  %i.fu = load ptr, ptr %i.fd, align 8, !tbaa !208
  %i.fv = load ptr, ptr %i.fe, align 8, !tbaa !212 ; 2 uses
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = icmp ult i64 %i.fy, 10
  br i1 %i.fz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ga = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull @.str.26, i64 noundef 10) #27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.fv, ptr noundef nonnull align 1 dereferenceable(10) @.str.26, i64 10, i1 false)
  %i.gb = load ptr, ptr %i.fe, align 8, !tbaa !212
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 10
  store ptr %i.gc, ptr %i.fe, align 8, !tbaa !212
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi ptr [ %i.ga, %bb.q ], [ %i.z, %bb.r ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.gd = call ptr @_ZN4mlir19FunctionOpInterface11getNameAttrEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #27
  store ptr %i.gd, ptr %6, align 8
  %i.ge = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.gf = extractvalue { ptr, i64 } %i.ge, 0      ; 2 uses
  %i.gg = extractvalue { ptr, i64 } %i.ge, 1      ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !208
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 32 ; 3 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !212 ; 3 uses
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = icmp ugt i64 %i.gg, %i.gn
  br i1 %i.go, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  %i.gp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i, ptr noundef %i.gf, i64 noundef %i.gg) #27 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %.pre.i.i8 = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !212
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  %.not.i.i.i7 = icmp eq i64 %i.gg, 0
  br i1 %.not.i.i.i7, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gk, ptr align 1 %i.gf, i64 %i.gg, i1 false)
  %i.gq = load ptr, ptr %i.gj, align 8, !tbaa !212
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gg ; 2 uses
  store ptr %i.gr, ptr %i.gj, align 8, !tbaa !212
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i:  ; preds = %bb.u, %bb.t, %bb.s
  %i.gs = phi ptr [ %.pre.i.i8, %bb.s ], [ %i.gr, %bb.u ], [ %i.gk, %bb.t ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.gp, %bb.s ], [ %.0.i.i.i.i, %bb.u ], [ %.0.i.i.i.i, %bb.t ] ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !208
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %i.gs to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = icmp ult i64 %i.gx, 2
  br i1 %i.gy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i
  %i.gz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, ptr noundef nonnull @.str.27, i64 noundef 2) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit13.i.i

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32 ; 2 uses
  store i16 2618, ptr %i.gs, align 1
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !212
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  store ptr %i.hc, ptr %i.ha, align 8, !tbaa !212
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit13.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit13.i.i:           ; preds = %bb.w, %bb.v
  %i.hd = load ptr, ptr %7, align 16, !tbaa !213  ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 44
  %i.hf = load i32, ptr %i.he, align 4            ; 3 uses
  %i.hg = and i32 %i.hf, 8388607
  %i.hh = icmp ne i32 %i.hg, 0
  call void @llvm.assume(i1 %i.hh)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 64
  %i.hj = lshr i32 %i.hf, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.hj, 1
  %i.hk = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %i.hk
  %i.hm = lshr i32 %i.hf, 21
  %i.hn = and i32 %i.hm, 2040
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !182
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [32 x i8], ptr %i.hp, i64 %i.hs ; 3 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !215
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %"_ZZN12_GLOBAL__N_124RunLayoutInfoPropagation19printAnalysisResultERN4llvm11raw_ostreamEENK3$_0clEN4mlir19FunctionOpInterfaceE.exit.i", label %_ZN4mlir19FunctionOpInterface12getArgumentsEv.exit.i.i

_ZN4mlir19FunctionOpInterface12getArgumentsEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit13.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !216 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !217 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 56
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !220 ; 2 uses
  %.not3.i.i = icmp eq ptr %i.ib, %i.hz
  br i1 %.not3.i.i, label %"_ZZN12_GLOBAL__N_124RunLayoutInfoPropagation19printAnalysisResultERN4llvm11raw_ostreamEENK3$_0clEN4mlir19FunctionOpInterfaceE.exit.i", label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit26.i.i
  %.val10.pre.i.i = load ptr, ptr %7, align 16, !tbaa !213
  br label %"_ZZN12_GLOBAL__N_124RunLayoutInfoPropagation19printAnalysisResultERN4llvm11raw_ostreamEENK3$_0clEN4mlir19FunctionOpInterfaceE.exit.i"

.lr.ph.i.i:                                       ; preds = %_ZN4mlir19FunctionOpInterface12getArgumentsEv.exit.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit26.i.i
  %.04.i.i = phi ptr [ %i.pl, %_ZN4llvm11raw_ostreamlsEPKc.exit26.i.i ], [ %i.hz, %_ZN4mlir19FunctionOpInterface12getArgumentsEv.exit.i.i ] ; 2 uses
  %.sroa.02.0.copyload.i.i = load ptr, ptr %.04.i.i, align 8 ; 2 uses
  %i.ic = ptrtoint ptr %.sroa.02.0.copyload.i.i to i64
  %i.id = or i64 %i.ic, 4                         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.011.i.i)
  store i64 %i.id, ptr %.sroa.011.i.i, align 8
  %i.ie = load ptr, ptr %i.ff, align 8, !tbaa !221, !noalias !222 ; 3 uses
  %i.if = load ptr, ptr %i.fg, align 8, !tbaa !227, !noalias !222 ; 3 uses
  %i.ig = load i32, ptr %i.fh, align 4, !tbaa !228, !noalias !222 ; 3 uses
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfIN12_GLOBAL__N_117LayoutInfoLatticeEEENS_13LatticeAnchorES4_.exit.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.ii = add i32 %i.ig, -1                       ; 3 uses
  %i.ij = and i32 %i.ii, %i.fl                    ; 4 uses
  %i.ik = zext i32 %i.ij to i64                   ; 3 uses
  %i.il = lshr i64 %i.ik, 5
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !18
  %i.io = and i32 %i.ij, 31
  %i.ip = lshr i32 %i.in, %i.io
  %i.iq = trunc i32 %i.ip to i1
  br i1 %i.iq, label %.lr.ph.i.i.i38.i, label %_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfIN12_GLOBAL__N_117LayoutInfoLatticeEEENS_13LatticeAnchorES4_.exit.i, !prof !229

.lr.ph.i.i.i38.i:                                 ; preds = %bb.x, %bb.y
  %i.ir = phi i64 [ %i.iw, %bb.y ], [ %i.ik, %bb.x ]
  %.01419.i.i.i.i = phi i32 [ %i.iv, %bb.y ], [ %i.ij, %bb.x ]
  %i.is = getelementptr inbounds nuw [176 x i8], ptr %i.ie, i64 %i.ir
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.is, align 8, !tbaa !51
  %i.it = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, @_ZZN12_GLOBAL__N_117LayoutInfoLattice13resolveTypeIDEvE2id
  br i1 %i.it, label %.lr.ph.i.i.i.i.i39.i, label %bb.y, !prof !21

bb.y:                                             ; preds = %.lr.ph.i.i.i38.i
  %i.iu = add nuw i32 %.01419.i.i.i.i, 1
  %i.iv = and i32 %i.iu, %i.ii                    ; 3 uses
  %i.iw = zext i32 %i.iv to i64                   ; 2 uses
  %i.ix = lshr i64 %i.iw, 5
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !18
  %i.ja = and i32 %i.iv, 31
  %i.jb = lshr i32 %i.iz, %i.ja
  %i.jc = trunc i32 %i.jb to i1
  br i1 %i.jc, label %.lr.ph.i.i.i38.i, label %_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfIN12_GLOBAL__N_117LayoutInfoLatticeEEENS_13LatticeAnchorES4_.exit.i, !prof !230

.lr.ph.i.i.i.i.i39.i:                             ; preds = %.lr.ph.i.i.i38.i, %bb.z
  %i.jd = phi i64 [ %i.ji, %bb.z ], [ %i.ik, %.lr.ph.i.i.i38.i ] ; 2 uses
  %.01419.i.i.i.i.i40.i = phi i32 [ %i.jh, %bb.z ], [ %i.ij, %.lr.ph.i.i.i38.i ]
  %i.je = getelementptr inbounds nuw [176 x i8], ptr %i.ie, i64 %i.jd
  %.sroa.0.0.copyload.i.i.i.i.i41.i = load ptr, ptr %i.je, align 8, !tbaa !51, !noalias !231
  %i.jf = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i41.i, @_ZZN12_GLOBAL__N_117LayoutInfoLattice13resolveTypeIDEvE2id
  br i1 %i.jf, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit.i.i, label %bb.z, !prof !21

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i39.i
  %i.jg = add nuw i32 %.01419.i.i.i.i.i40.i, 1
  %i.jh = and i32 %i.jg, %i.ii                    ; 3 uses
  %i.ji = zext i32 %i.jh to i64                   ; 2 uses
  %i.jj = lshr i64 %i.ji, 5
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !18, !noalias !231
  %i.jm = and i32 %i.jh, 31
  %i.jn = lshr i32 %i.jl, %i.jm
  %i.jo = trunc i32 %i.jn to i1
  br i1 %i.jo, label %.lr.ph.i.i.i.i.i39.i, label %.loopexit.i.i.i.i42.i, !prof !230

.loopexit.i.i.i.i42.i:                            ; preds = %bb.z
  %i.jp = zext i32 %i.ig to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i39.i, %.loopexit.i.i.i.i42.i
  %i.jq = phi i64 [ %i.jp, %.loopexit.i.i.i.i42.i ], [ %i.jd, %.lr.ph.i.i.i.i.i39.i ]
  %i.jr = getelementptr inbounds nuw [176 x i8], ptr %i.ie, i64 %i.jq ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !236, !noalias !239 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !248, !noalias !239 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 28
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !249, !noalias !239 ; 4 uses
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %.loopexit.i.i.i5.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit.i.i
  %i.jz = add i32 %i.jx, -1                       ; 2 uses
  %i.ka = mul i64 %i.id, -4658895280553007687     ; 2 uses
  %i.kb = lshr i64 %i.ka, 31
  %i.kc = xor i64 %i.kb, %i.ka
  %i.kd = trunc i64 %i.kc to i32
  %i.ke = and i32 %i.jz, %i.kd                    ; 3 uses
  %i.kf = zext i32 %i.ke to i64                   ; 2 uses
  %i.kg = lshr i64 %i.kf, 5
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !18, !noalias !250
  %i.kj = and i32 %i.ke, 31
  %i.kk = lshr i32 %i.ki, %i.kj
  %i.kl = trunc i32 %i.kk to i1
  br i1 %i.kl, label %.lr.ph.i.i.i.i6.i.i, label %.loopexit.i.i.i5.i.i, !prof !229

.lr.ph.i.i.i.i6.i.i:                              ; preds = %bb.aa, %bb.ab
  %i.km = phi i64 [ %i.kr, %bb.ab ], [ %i.kf, %bb.aa ]
  %.017.i.i.i.i.i46.i = phi i32 [ %i.kq, %bb.ab ], [ %i.ke, %bb.aa ]
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.jt, i64 %i.km ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i47.i = load i64, ptr %i.kn, align 8, !noalias !250
  %i.ko = icmp eq i64 %i.id, %.sroa.0.0.copyload.i.i.i.i.i.i47.i
  br i1 %i.ko, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i.i.i, label %bb.ab, !prof !21

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i6.i.i
  %i.kp = add nuw i32 %.017.i.i.i.i.i46.i, 1
  %i.kq = and i32 %i.kp, %i.jz                    ; 3 uses
  %i.kr = zext i32 %i.kq to i64                   ; 2 uses
  %i.ks = lshr i64 %i.kr, 5
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !18, !noalias !250
  %i.kv = and i32 %i.kq, 31
  %i.kw = lshr i32 %i.ku, %i.kv
  %i.kx = trunc i32 %i.kw to i1
  br i1 %i.kx, label %.lr.ph.i.i.i.i6.i.i, label %.loopexit.i.i.i5.i.i, !prof !230

.loopexit.i.i.i5.i.i:                             ; preds = %bb.ab, %bb.aa, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit.i.i
  %i.ky = zext i32 %i.jx to i64                   ; 2 uses
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.jt, i64 %i.ky
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i6.i.i
  %.pre.i.i48.i = zext i32 %i.jx to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i.i.i, %.loopexit.i.i.i5.i.i
  %.pre-phi.i.i43.i = phi i64 [ %.pre.i.i48.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i.i.i ], [ %i.ky, %.loopexit.i.i.i5.i.i ]
  %.lcssa.sink.i.i.i.i44.i = phi ptr [ %i.kn, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i.i.i ], [ %i.kz, %.loopexit.i.i.i5.i.i ] ; 2 uses
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.jt, i64 %.pre-phi.i.i43.i
  %i.lb = icmp eq ptr %.lcssa.sink.i.i.i.i44.i, %i.la
  br i1 %i.lb, label %_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfIN12_GLOBAL__N_117LayoutInfoLatticeEEENS_13LatticeAnchorES4_.exit.i, label %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit.i.i

_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i44.i, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !251
  %i.le = call noundef ptr @_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE7ECValue9getLeaderEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ld) ; 2 uses
  %.not.i45.i = icmp eq ptr %i.le, null
  %21 = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %spec.select.i.i = select i1 %.not.i45.i, ptr %.sroa.011.i.i, ptr %21
  %.sroa.0.0.pre.i.i = load i64, ptr %spec.select.i.i, align 8
  br label %_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfIN12_GLOBAL__N_117LayoutInfoLatticeEEENS_13LatticeAnchorES4_.exit.i

_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfIN12_GLOBAL__N_117LayoutInfoLatticeEEENS_13LatticeAnchorES4_.exit.i: ; preds = %bb.y, %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i.i.i, %bb.x, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.0.pre.i.i, %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit.i.i ], [ %i.id, %.lr.ph.i.i ], [ %i.id, %bb.x ], [ %i.id, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i.i.i ], [ %i.id, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.011.i.i)
  %i.lf = load ptr, ptr %i.fm, align 8, !tbaa !261, !noalias !262 ; 3 uses
  %i.lg = load ptr, ptr %i.fn, align 8, !tbaa !271, !noalias !262 ; 2 uses
  %i.lh = load i32, ptr %i.fo, align 4, !tbaa !272, !noalias !262 ; 4 uses
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %.loopexit.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfIN12_GLOBAL__N_117LayoutInfoLatticeEEENS_13LatticeAnchorES4_.exit.i
  %i.lj = add i32 %i.lh, -1                       ; 2 uses
  %i.lk = mul i64 %.sroa.0.1.i.i, -4658895280553007687 ; 2 uses
  %i.ll = lshr i64 %i.lk, 31
  %i.lm = xor i64 %i.ll, %i.lk
  %i.ln = trunc i64 %i.lm to i32
  %i.lo = and i32 %i.lj, %i.ln                    ; 3 uses
  %i.lp = zext i32 %i.lo to i64                   ; 2 uses
  %i.lq = lshr i64 %i.lp, 5
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.lq
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !18, !noalias !273
  %i.lt = and i32 %i.lo, 31
  %i.lu = lshr i32 %i.ls, %i.lt
  %i.lv = trunc i32 %i.lu to i1
  br i1 %i.lv, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, !prof !229

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ac, %bb.ad
  %i.lw = phi i64 [ %i.mb, %bb.ad ], [ %i.lp, %bb.ac ]
  %.017.i.i.i.i.i.i = phi i32 [ %i.ma, %bb.ad ], [ %i.lo, %bb.ac ]
  %i.lx = getelementptr inbounds nuw [32 x i8], ptr %i.lf, i64 %i.lw ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.lx, align 8, !noalias !273
  %i.ly = icmp eq i64 %.sroa.0.1.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  br i1 %i.ly, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit.loopexit.i.i.i, label %bb.ad, !prof !21

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.lz = add nuw i32 %.017.i.i.i.i.i.i, 1
  %i.ma = and i32 %i.lz, %i.lj                    ; 3 uses
  %i.mb = zext i32 %i.ma to i64                   ; 2 uses
  %i.mc = lshr i64 %i.mb, 5
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 4, !tbaa !18, !noalias !273
  %i.mf = and i32 %i.ma, 31
  %i.mg = lshr i32 %i.me, %i.mf
  %i.mh = trunc i32 %i.mg to i1
  br i1 %i.mh, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, !prof !230

.loopexit.i.i.i.i.i:                              ; preds = %bb.ad, %bb.ac, %_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfIN12_GLOBAL__N_117LayoutInfoLatticeEEENS_13LatticeAnchorES4_.exit.i
  %i.mi = zext i32 %i.lh to i64                   ; 2 uses
  %i.mj = getelementptr inbounds nuw [32 x i8], ptr %i.lf, i64 %i.mi
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit.i.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i.i = zext i32 %i.lh to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit.i.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit.i.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit.loopexit.i.i.i, %.loopexit.i.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit.loopexit.i.i.i ], [ %i.mi, %.loopexit.i.i.i.i.i ]
  %.lcssa.sink.i.i.i.i.i = phi ptr [ %i.lx, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit.loopexit.i.i.i ], [ %i.mj, %.loopexit.i.i.i.i.i ] ; 4 uses
  %i.mk = getelementptr inbounds nuw [32 x i8], ptr %i.lf, i64 %.pre-phi.i.i.i
  %i.ml = icmp eq ptr %.lcssa.sink.i.i.i.i.i, %i.mk
  br i1 %i.ml, label %_ZN12_GLOBAL__N_124RunLayoutInfoPropagation13getLayoutInfoEN4mlir5ValueE.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit.i.i.i
  %i.mm = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i.i, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !274, !noalias !277 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i.i, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !286, !noalias !277 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i.i, i64 28
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !287, !noalias !277 ; 4 uses
  %i.ms = icmp eq i32 %i.mr, 0
  br i1 %i.ms, label %.loopexit.i.i6.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mt = add i32 %i.mr, -1                       ; 2 uses
  %i.mu = and i32 %i.mt, %i.fl                    ; 3 uses
  %i.mv = zext i32 %i.mu to i64                   ; 2 uses
  %i.mw = lshr i64 %i.mv, 5
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !18, !noalias !288
  %i.mz = and i32 %i.mu, 31
  %i.na = lshr i32 %i.my, %i.mz
  %i.nb = trunc i32 %i.na to i1
  br i1 %i.nb, label %.lr.ph.i.i.i9.i.i.i, label %.loopexit.i.i6.i.i.i, !prof !229

.lr.ph.i.i.i9.i.i.i:                              ; preds = %bb.af, %bb.ag
  %i.nc = phi i64 [ %i.nh, %bb.ag ], [ %i.mv, %bb.af ]
  %.01419.i.i.i.i.i.i = phi i32 [ %i.ng, %bb.ag ], [ %i.mu, %bb.af ]
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %i.mn, i64 %i.nc ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.nd, align 8, !tbaa !51, !noalias !288
  %i.ne = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZZN12_GLOBAL__N_117LayoutInfoLattice13resolveTypeIDEvE2id
  br i1 %i.ne, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.loopexit.i.i.i, label %bb.ag, !prof !21

bb.ag:                                            ; preds = %.lr.ph.i.i.i9.i.i.i
  %i.nf = add nuw i32 %.01419.i.i.i.i.i.i, 1
  %i.ng = and i32 %i.nf, %i.mt                    ; 3 uses
  %i.nh = zext i32 %i.ng to i64                   ; 2 uses
  %i.ni = lshr i64 %i.nh, 5
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.ni
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !18, !noalias !288
  %i.nl = and i32 %i.ng, 31
  %i.nm = lshr i32 %i.nk, %i.nl
  %i.nn = trunc i32 %i.nm to i1
  br i1 %i.nn, label %.lr.ph.i.i.i9.i.i.i, label %.loopexit.i.i6.i.i.i, !prof !230

.loopexit.i.i6.i.i.i:                             ; preds = %bb.ag, %bb.af, %bb.ae
  %i.no = zext i32 %i.mr to i64                   ; 2 uses
  %i.np = getelementptr inbounds nuw [16 x i8], ptr %i.mn, i64 %i.no
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i9.i.i.i
  %.pre32.i.i.i = zext i32 %i.mr to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.loopexit.i.i.i, %.loopexit.i.i6.i.i.i
  %.pre-phi33.i.i.i = phi i64 [ %.pre32.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.loopexit.i.i.i ], [ %i.no, %.loopexit.i.i6.i.i.i ]
  %.lcssa.sink.i.i7.i.i.i = phi ptr [ %i.nd, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.loopexit.i.i.i ], [ %i.np, %.loopexit.i.i6.i.i.i ] ; 2 uses
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %i.mn, i64 %.pre-phi33.i.i.i
  %i.nr = icmp eq ptr %.lcssa.sink.i.i7.i.i.i, %i.nq
  br i1 %i.nr, label %_ZN12_GLOBAL__N_124RunLayoutInfoPropagation13getLayoutInfoEN4mlir5ValueE.exit.i, label %_ZNK4mlir14DataFlowSolver11lookupStateIN12_GLOBAL__N_117LayoutInfoLatticeENS_5ValueEEEPKT_T0_.exit.i.i

_ZNK4mlir14DataFlowSolver11lookupStateIN12_GLOBAL__N_117LayoutInfoLatticeENS_5ValueEEEPKT_T0_.exit.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i.i.i
  %i.ns = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i7.i.i.i, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !289 ; 2 uses
  %.not.i37.i = icmp eq ptr %i.nt, null
  br i1 %.not.i37.i, label %_ZN12_GLOBAL__N_124RunLayoutInfoPropagation13getLayoutInfoEN4mlir5ValueE.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNK4mlir14DataFlowSolver11lookupStateIN12_GLOBAL__N_117LayoutInfoLatticeENS_5ValueEEEPKT_T0_.exit.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 160
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.nu, align 8
  br label %_ZN12_GLOBAL__N_124RunLayoutInfoPropagation13getLayoutInfoEN4mlir5ValueE.exit.i

_ZN12_GLOBAL__N_124RunLayoutInfoPropagation13getLayoutInfoEN4mlir5ValueE.exit.i: ; preds = %bb.ah, %_ZNK4mlir14DataFlowSolver11lookupStateIN12_GLOBAL__N_117LayoutInfoLatticeENS_5ValueEEEPKT_T0_.exit.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.ah ], [ null, %_ZNK4mlir14DataFlowSolver11lookupStateIN12_GLOBAL__N_117LayoutInfoLatticeENS_5ValueEEEPKT_T0_.exit.i.i ], [ null, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E4findERKS3_.exit.i.i.i ], [ null, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i.i.i ] ; 2 uses
  %i.nv = load ptr, ptr %i.fd, align 8, !tbaa !208
  %i.nw = load ptr, ptr %i.fe, align 8, !tbaa !212 ; 2 uses
  %i.nx = ptrtoint ptr %i.nv to i64
  %i.ny = ptrtoint ptr %i.nw to i64
  %i.nz = sub i64 %i.nx, %i.ny
  %i.oa = icmp ult i64 %i.nz, 10
  br i1 %i.oa, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN12_GLOBAL__N_124RunLayoutInfoPropagation13getLayoutInfoEN4mlir5ValueE.exit.i
  %i.ob = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull @.str.28, i64 noundef 10) #27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit16.i.i

bb.aj:                                            ; preds = %_ZN12_GLOBAL__N_124RunLayoutInfoPropagation13getLayoutInfoEN4mlir5ValueE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.nw, ptr noundef nonnull align 1 dereferenceable(10) @.str.28, i64 10, i1 false)
  %i.oc = load ptr, ptr %i.fe, align 8, !tbaa !212
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 10
  store ptr %i.od, ptr %i.fe, align 8, !tbaa !212
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit16.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit16.i.i:           ; preds = %bb.aj, %bb.ai
  %.0.i.i15.i.i = phi ptr [ %i.ob, %bb.ai ], [ %i.z, %bb.aj ]
  %i.oe = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4mlirlsERN4llvm11raw_ostreamENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i15.i.i, ptr %.sroa.02.0.copyload.i.i) #27 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !208
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 32 ; 3 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !212 ; 2 uses
  %i.oj = icmp eq ptr %i.og, %i.oi
  br i1 %i.oj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit16.i.i
  %i.ok = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.oe, ptr noundef nonnull @.str.29, i64 noundef 1) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit19.i.i

bb.al:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit16.i.i
  store i8 10, ptr %i.oi, align 1
  %i.ol = load ptr, ptr %i.oh, align 8, !tbaa !212
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 1
  store ptr %i.om, ptr %i.oh, align 8, !tbaa !212
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit19.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit19.i.i:           ; preds = %bb.al, %bb.ak
  %i.on = load ptr, ptr %i.fd, align 8, !tbaa !208
  %i.oo = load ptr, ptr %i.fe, align 8, !tbaa !212 ; 2 uses
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = ptrtoint ptr %i.oo to i64
  %i.or = sub i64 %i.op, %i.oq
  %i.os = icmp ult i64 %i.or, 10
  br i1 %i.os, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit19.i.i
  %i.ot = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull @.str.30, i64 noundef 10) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit22.i.i

bb.an:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit19.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.oo, ptr noundef nonnull align 1 dereferenceable(10) @.str.30, i64 10, i1 false)
  %i.ou = load ptr, ptr %i.fe, align 8, !tbaa !212
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 10
  store ptr %i.ov, ptr %i.fe, align 8, !tbaa !212
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit22.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit22.i.i:           ; preds = %bb.an, %bb.am
  %.not.i23.i.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not.i23.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit22.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.0.0.i.i, ptr %5, align 8
  call void @_ZNK4mlir9Attribute5printERN4llvm11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i1 noundef zeroext false) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZNK12_GLOBAL__N_110LayoutInfo5printERN4llvm11raw_ostreamE.exit.i.i

end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS_17LayoutInfoLatticeEEENS5_IPKS6_EE:bb.a

bb.oi:                                            ; preds = %bb.oh
  %i.cpl = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.16, i64 49), i64 33) #27
  store ptr %i.cpl, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id) #27
  br label %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i31.i.i.i.i

_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i31.i.i.i.i: ; preds = %bb.oi, %bb.oh, %bb.og
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i32.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu20DistributeLayoutAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !51 ; 2 uses
  %i.cpm = load ptr, ptr %i.cph, align 8, !tbaa !13 ; 3 uses
  %i.cpn = getelementptr inbounds nuw i8, ptr %i.cpg, i64 16
  %i.cpo = load i32, ptr %i.cpn, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i33.i.i.i.i = icmp eq i32 %i.cpo, 0
  br i1 %.not.i.i.i.i.i.i.i.i33.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i43.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i34.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i34.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i31.i.i.i.i
  %i.cpp = zext i32 %i.cpo to i64                 ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i35.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i35.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i35.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i34.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i36.i.i.i.i = phi i64 [ %i.cpp, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i34.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i42.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i35.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i37.i.i.i.i = phi ptr [ %i.cpm, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i34.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i41.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i35.i.i.i.i ] ; 2 uses
  %i.cpq = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i36.i.i.i.i, 1 ; 3 uses
  %i.cpr = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i37.i.i.i.i, i64 %i.cpq ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i40.i.i.i.i = load ptr, ptr %i.cpr, align 8, !tbaa !51
  %i.cps = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i40.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i32.i.i.i.i ; 2 uses
  %i.cpt = getelementptr inbounds nuw i8, ptr %i.cpr, i64 16
  %i.cpu = xor i64 %i.cpq, -1
  %i.cpv = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i36.i.i.i.i, %i.cpu
  %.112.i.i.i.i.i.i.i.i.i.i41.i.i.i.i = select i1 %i.cps, ptr %i.cpt, ptr %.01116.i.i.i.i.i.i.i.i.i.i37.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i42.i.i.i.i = select i1 %i.cps, i64 %i.cpv, i64 %i.cpq ; 2 uses
  %i.cpw = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i42.i.i.i.i, 0
  br i1 %i.cpw, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i35.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i43.i.i.i.i, !llvm.loop !544

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i43.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i35.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i31.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i44.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i31.i.i.i.i ], [ %i.cpp, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i35.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i45.i.i.i.i = phi ptr [ %i.cpm, %_ZN4mlir6detail9InterfaceINS_5xegpu20DistributeLayoutAttrENS_9AttributeENS2_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i31.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i41.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i35.i.i.i.i ] ; 3 uses
  %i.cpx = getelementptr inbounds nuw [16 x i8], ptr %i.cpm, i64 %.pre-phi.i.i.i.i.i.i.i44.i.i.i.i
  %.not.i.i.i.i.i.i.i46.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i45.i.i.i.i, %i.cpx
  br i1 %.not.i.i.i.i.i.i.i46.i.i.i.i, label %_ZN4mlir5xegpu20DistributeLayoutAttrCI2NS_6detail9InterfaceIS1_NS_9AttributeENS0_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEEEINS0_10LayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS3_IS1_S4_S6_S4_S8_E5TraitIT_EESD_EE5valueEvE4typeELPv0EEESD_.exit48.i.i.i.i, label %bb.oj

bb.oj:                                            ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i43.i.i.i.i
  %i.cpy = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i45.i.i.i.i, align 8, !tbaa !121
  %i.cpz = icmp eq ptr %i.cpy, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i32.i.i.i.i
  br i1 %i.cpz, label %bb.ok, label %_ZN4mlir5xegpu20DistributeLayoutAttrCI2NS_6detail9InterfaceIS1_NS_9AttributeENS0_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEEEINS0_10LayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS3_IS1_S4_S6_S4_S8_E5TraitIT_EESD_EE5valueEvE4typeELPv0EEESD_.exit48.i.i.i.i

bb.ok:                                            ; preds = %bb.oj
  %i.cqa = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i45.i.i.i.i, i64 8
  %i.cqb = load ptr, ptr %i.cqa, align 8, !tbaa !545
  br label %_ZN4mlir5xegpu20DistributeLayoutAttrCI2NS_6detail9InterfaceIS1_NS_9AttributeENS0_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEEEINS0_10LayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS3_IS1_S4_S6_S4_S8_E5TraitIT_EESD_EE5valueEvE4typeELPv0EEESD_.exit48.i.i.i.i

_ZN4mlir5xegpu20DistributeLayoutAttrCI2NS_6detail9InterfaceIS1_NS_9AttributeENS0_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEEEINS0_10LayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS3_IS1_S4_S6_S4_S8_E5TraitIT_EESD_EE5valueEvE4typeELPv0EEESD_.exit48.i.i.i.i: ; preds = %bb.ok, %bb.oj, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i43.i.i.i.i, %bb.of
  %i.cqc = phi ptr [ null, %bb.of ], [ %i.cqb, %bb.ok ], [ null, %bb.oj ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i43.i.i.i.i ]
  %i.cqd = load ptr, ptr %6, align 8, !tbaa !213  ; 2 uses
  %i.cqe = getelementptr inbounds nuw i8, ptr %i.cqd, i64 44
  %i.cqf = load i32, ptr %i.cqe, align 4          ; 2 uses
  %.not.i.i.i49.i.i.i.i689 = icmp ugt i32 %i.cqf, 16777215
  call void @llvm.assume(i1 %.not.i.i.i49.i.i.i.i689)
  %i.cqg = getelementptr inbounds nuw i8, ptr %i.cqd, i64 64
  %i.cqh = lshr i32 %i.cqf, 23
  %.lobit.i.i.i.i.i.i.i.i.i50.i.i.i.i690 = and i32 %i.cqh, 1
  %i.cqi = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i50.i.i.i.i690 to i64
  %i.cqj = getelementptr inbounds nuw [16 x i8], ptr %i.cqg, i64 %i.cqi ; 2 uses
  store ptr %i.cpf, ptr %i.cqj, align 8
  %.sroa.2.0..sroa_idx.i51.i.i.i.i691 = getelementptr inbounds nuw i8, ptr %i.cqj, i64 8
  store ptr %i.cqc, ptr %.sroa.2.0..sroa_idx.i51.i.i.i.i691, align 8
  br label %.critedge2.i.i.i.i

.critedge2.i.i.i.i:                               ; preds = %_ZN4mlir5xegpu20DistributeLayoutAttrCI2NS_6detail9InterfaceIS1_NS_9AttributeENS0_6detail35DistributeLayoutAttrInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEEEINS0_10LayoutAttrETnPNSt9enable_ifIXsr3std10is_base_ofINS3_IS1_S4_S6_S4_S8_E5TraitIT_EESD_EE5valueEvE4typeELPv0EEESD_.exit48.i.i.i.i, %bb.oe, %bb.od, %.critedge.i.i.i.i678
  %i.cqk = call { ptr, ptr } @_ZN4mlir5xegpu15ConvertLayoutOp18getInputLayoutAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %6) ; 2 uses
  %i.cql = extractvalue { ptr, ptr } %i.cqk, 0
  %i.cqm = load ptr, ptr %2, align 8, !tbaa !431  ; 4 uses
  %i.cqn = getelementptr inbounds nuw i8, ptr %i.cqm, i64 160 ; 2 uses
  %.val.i.i.i.i.i.i679 = load ptr, ptr %i.cqn, align 8, !tbaa !434 ; 2 uses
  %.not.i.i.i.i.i.i680 = icmp eq ptr %.val.i.i.i.i.i.i679, null ; 3 uses
  %.sroa.0.0.i.i.sroa.speculated.i.i.i.i681 = select i1 %.not.i.i.i.i.i.i680, ptr %i.cql, ptr %.val.i.i.i.i.i.i679 ; 2 uses
  %i.cqo = icmp ne ptr %.sroa.0.0.i.i.sroa.speculated.i.i.i.i681, null
  %i.cqp = xor i1 %.not.i.i.i.i.i.i680, %i.cqo
  br i1 %i.cqp, label %"_ZZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS_17LayoutInfoLatticeEEENS5_IPKS6_EEENK4$_18clENS1_5xegpu15ConvertLayoutOpE.exit.i.i", label %bb.ol

bb.ol:                                            ; preds = %.critedge2.i.i.i.i
  %i.cqq = extractvalue { ptr, ptr } %i.cqk, 1
  br i1 %.not.i.i.i.i.i.i680, label %.cont.i.i.i.i684, label %.else.i.i.i.i682

.else.i.i.i.i682:                                 ; preds = %bb.ol
  %.sroa.gep52.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cqm, i64 168
  %.sroa.3.0.i.i.else.val.i.i.i.i683 = load ptr, ptr %.sroa.gep52.i.i.i.i, align 8
  br label %.cont.i.i.i.i684

.cont.i.i.i.i684:                                 ; preds = %.else.i.i.i.i682, %bb.ol
  %.sroa.3.0.i.i.i.i.i.i685 = phi ptr [ %i.cqq, %bb.ol ], [ %.sroa.3.0.i.i.else.val.i.i.i.i683, %.else.i.i.i.i682 ]
  store ptr %.sroa.0.0.i.i.sroa.speculated.i.i.i.i681, ptr %i.cqn, align 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i686 = getelementptr inbounds nuw i8, ptr %i.cqm, i64 168
  store ptr %.sroa.3.0.i.i.i.i.i.i685, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i686, align 8
  br label %"_ZZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS_17LayoutInfoLatticeEEENS5_IPKS6_EEENK4$_18clENS1_5xegpu15ConvertLayoutOpE.exit.i.i"

"_ZZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS_17LayoutInfoLatticeEEENS5_IPKS6_EEENK4$_18clENS1_5xegpu15ConvertLayoutOpE.exit.i.i": ; preds = %.cont.i.i.i.i684, %.critedge2.i.i.i.i
  %.0.i.i.i.i.i687 = phi i32 [ 1, %.cont.i.i.i.i684 ], [ 0, %.critedge2.i.i.i.i ]
  call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %i.cqm, i32 noundef %.0.i.i.i.i.i687) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE7DefaultIZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationES3_NS_8ArrayRefIPNS6_17LayoutInfoLatticeEEENS8_IPKS9_EEE4$_19EEvOT_.exit"

"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationES5_NS_8ArrayRefIPNS9_17LayoutInfoLatticeEEENSB_IPKSC_EEE4$_18EERS6_OT_.exit": ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationES5_NS_8ArrayRefIPNS9_17LayoutInfoLatticeEEENSB_IPKSC_EEE4$_17EERS6_OT_.exit"
  %.idx.i.i = shl nuw nsw i64 %5, 3
  %i.cqr = getelementptr inbounds nuw i8, ptr %4, i64 %.idx.i.i
  %.not40.i.i = icmp eq i64 %5, 0
  br i1 %.not40.i.i, label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE7DefaultIZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationES3_NS_8ArrayRefIPNS6_17LayoutInfoLatticeEEENS8_IPKS9_EEE4$_19EEvOT_.exit", label %.lr.ph42.i.i

.lr.ph42.i.i:                                     ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationES5_NS_8ArrayRefIPNS9_17LayoutInfoLatticeEEENSB_IPKSC_EEE4$_18EERS6_OT_.exit"
  %i.cqs = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cqt = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cqu = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.idx43.i.i = shl nuw nsw i64 %3, 3
  %i.cqv = getelementptr inbounds nuw i8, ptr %2, i64 %.idx43.i.i
  %i.cqw = icmp ne i64 %3, 0
  br label %bb.om

bb.om:                                            ; preds = %.loopexit.i.i, %.lr.ph42.i.i
  %.041.i.i = phi ptr [ %4, %.lr.ph42.i.i ], [ %i.cru, %.loopexit.i.i ] ; 2 uses
  %i.cqx = load ptr, ptr %.041.i.i, align 8, !tbaa !431 ; 2 uses
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.cqx, i64 160
  %.val.i.i = load ptr, ptr %i.cqy, align 8, !tbaa !434
  %.not36.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not36.i.i, label %.loopexit.i.i, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.cqz = load i32, ptr %i.cqs, align 4
  %i.cra = and i32 %i.cqz, 8388608
  %.not.i.i.i = icmp eq i32 %i.cra, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %_ZN4mlir9Operation13getOpOperandsEv.exit.i.i, !prof !438

_ZN4mlir9Operation13getOpOperandsEv.exit.i.i:     ; preds = %bb.on
  %i.crb = load ptr, ptr %i.cqt, align 8, !tbaa !411 ; 2 uses
  %i.crc = load i32, ptr %i.cqu, align 4, !tbaa !572 ; 2 uses
  %i.crd = zext i32 %i.crc to i64
  %i.cre = shl nuw nsw i64 %i.crd, 5
  %i.crf = getelementptr inbounds nuw i8, ptr %i.crb, i64 %i.cre
  %i.crg = icmp ne i32 %i.crc, 0
  %spec.select.i.i.not.i37.i.i = select i1 %i.cqw, i1 %i.crg, i1 false
  br i1 %spec.select.i.i.not.i37.i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4mlir9Operation13getOpOperandsEv.exit.i.i, %bb.op
  %.sroa.031.039.i.i = phi ptr [ %i.crr, %bb.op ], [ %i.crb, %_ZN4mlir9Operation13getOpOperandsEv.exit.i.i ] ; 2 uses
  %.sroa.7.038.i.i = phi ptr [ %i.crq, %bb.op ], [ %2, %_ZN4mlir9Operation13getOpOperandsEv.exit.i.i ] ; 2 uses
  %i.crh = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i, i64 24
  %.sroa.0.0.copyload.i.i.i714 = load ptr, ptr %i.crh, align 8, !tbaa !414
  %i.cri = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i714, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cri, align 8
  %i.crj = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.crk = inttoptr i64 %i.crj to ptr
  %i.crl = load ptr, ptr %i.crk, align 8, !tbaa !439
  %i.crm = getelementptr inbounds nuw i8, ptr %i.crl, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.crm, align 8, !tbaa !51 ; 2 uses
  %i.crn = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_5xegpu14TensorDescTypeEvE2idE
  %i.cro = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  %spec.select.i.i.i = or i1 %i.crn, %i.cro
  br i1 %spec.select.i.i.i, label %bb.oo, label %bb.op

bb.oo:                                            ; preds = %.lr.ph.i.i
  %i.crp = load ptr, ptr %.sroa.7.038.i.i, align 8, !tbaa !431
  tail call void @_ZN4mlir8dataflow38AbstractSparseBackwardDataFlowAnalysis4meetEPNS0_21AbstractSparseLatticeERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.crp, ptr noundef nonnull align 8 dereferenceable(160) %i.cqx) #27
  br label %bb.op

bb.op:                                            ; preds = %bb.oo, %.lr.ph.i.i
  %i.crq = getelementptr inbounds nuw i8, ptr %.sroa.7.038.i.i, i64 8 ; 2 uses
  %i.crr = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i, i64 32 ; 2 uses
  %i.crs = icmp ne ptr %i.crq, %i.cqv
  %i.crt = icmp ne ptr %i.crr, %i.crf
  %spec.select.i.i.not.i.i.i = select i1 %i.crs, i1 %i.crt, i1 false
  br i1 %spec.select.i.i.not.i.i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.op, %_ZN4mlir9Operation13getOpOperandsEv.exit.i.i, %bb.on, %bb.om
  %i.cru = getelementptr inbounds nuw i8, ptr %.041.i.i, i64 8 ; 2 uses
  %.not.i.i713 = icmp eq ptr %i.cru, %i.cqr
  br i1 %.not.i.i713, label %"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE7DefaultIZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationES3_NS_8ArrayRefIPNS6_17LayoutInfoLatticeEEENS8_IPKS9_EEE4$_19EEvOT_.exit", label %bb.om

"_ZN4llvm10TypeSwitchIPN4mlir9OperationEvE7DefaultIZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationES3_NS_8ArrayRefIPNS6_17LayoutInfoLatticeEEENS8_IPKS9_EEE4$_19EEvOT_.exit": ; preds = %.loopexit.i.i, %"_ZZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS_17LayoutInfoLatticeEEENS5_IPKS6_EEENK3$_1clENS1_5xegpu8DpasMxOpE.exit.i.i", %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationES5_NS_8ArrayRefIPNS9_17LayoutInfoLatticeEEENSB_IPKSC_EEE3$_0EERS6_OT_.exit.thread", %"_ZZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS_17LayoutInfoLatticeEEENS5_IPKS6_EEENK3$_2clENS1_5xegpu9StoreNdOpE.exit.i.i", %"_ZZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS_17LayoutInfoLatticeEEENS5_IPKS6_EEENK3$_3clENS1_5xegpu14StoreScatterOpE.exit.i.i", %"_ZZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS_17LayoutInfoLatticeEEENS5_IPKS6_EEENK3$_4clENS1_5xegpu8LoadNdOpE.exit.i.i", %"_ZZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS_17LayoutInfoLatticeEEENS5_IPKS6_EEENK3$_5clENS1_5xegpu12LoadGatherOpE.exit.i.i", %"_ZZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS_17LayoutInfoLatticeEEENS5_IPKS6_EEENK3$_6clENS1_5xegpu12PrefetchNdOpE.exit.i.i", %"_ZZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS_17LayoutInfoLatticeEEENS5_IPKS6_EEENK3$_7clENS1_6vector11TransposeOpE.exit.i.i", %bb.ij, %bb.iq, %bb.ir, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i379, %_ZN4mlir8dataflow7LatticeIN12_GLOBAL__N_110LayoutInfoEE4meetIS3_EENS_12ChangeResultERKT_.exit29.i.i.i.i, %bb.iz, %_ZN4mlir8dataflow7LatticeIN12_GLOBAL__N_110LayoutInfoEE4meetIS3_EENS_12ChangeResultERKT_.exit.i.i.i.i414, %"_ZZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS_17LayoutInfoLatticeEEENS5_IPKS6_EEENK4$_11clENS1_6vector19MultiDimReductionOpE.exit.i.i", %"_ZZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS_17LayoutInfoLatticeEEENS5_IPKS6_EEENK4$_12clENS1_6vector11ReductionOpE.exit.i.i", %bb.ll, %bb.lp, %"_ZZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS_17LayoutInfoLatticeEEENS5_IPKS6_EEENK4$_14clENS1_6vector11ShapeCastOpE.exit.i.i", %bb.lx, %bb.mf, %bb.mg, %bb.mh, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i593, %bb.mm, %"_ZZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS_17LayoutInfoLatticeEEENS5_IPKS6_EEENK4$_17clENS1_5xegpu13StoreMatrixOpE.exit.i.i", %"_ZZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS_17LayoutInfoLatticeEEENS5_IPKS6_EEENK4$_18clENS1_5xegpu15ConvertLayoutOpE.exit.i.i", %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEvEES5_E4CaseIZN12_GLOBAL__N_121LayoutInfoPropagation14visitOperationES5_NS_8ArrayRefIPNS9_17LayoutInfoLatticeEEENSB_IPKSC_EEE4$_18EERS6_OT_.exit"
  ret i8 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN12_GLOBAL__N_121LayoutInfoPropagation17visitExternalCallEN4mlir15CallOpInterfaceEN4llvm8ArrayRefIPNS_17LayoutInfoLatticeEEENS4_IPKS5_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i64 %4, ptr nofree noundef readnone byval(%"class.llvm::ArrayRef.203") align 8 captures(none) %5) unnamed_addr #13 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN12_GLOBAL__N_121LayoutInfoPropagation14setToExitStateEPNS_17LayoutInfoLatticeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #13 align 2 {
_ZN4mlir8dataflow7LatticeIN12_GLOBAL__N_110LayoutInfoEE4meetIS3_EENS_12ChangeResultERKT_.exit:
  ret void
}

declare void @_ZN4mlir8dataflow38AbstractSparseBackwardDataFlowAnalysisC2ERNS_14DataFlowSolverERNS_21SymbolTableCollectionE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfIN12_GLOBAL__N_117LayoutInfoLatticeEEENS_13LatticeAnchorES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i64 %1) unnamed_addr #2 align 2 {
bb.a:
  %.sroa.011 = alloca [8 x i8], align 8           ; 2 uses
  store i64 %1, ptr %.sroa.011, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221, !noalias !573 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227, !noalias !573 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.f = load i32, ptr %i.e, align 4, !tbaa !228, !noalias !573 ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 3 uses
  %i.i = mul i64 ptrtoint (ptr @_ZZN12_GLOBAL__N_117LayoutInfoLattice13resolveTypeIDEvE2id to i64), -4658895280553007687 ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.h, %i.l                       ; 4 uses
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %i.o = lshr i64 %i.n, 5
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18
  %i.r = and i32 %i.m, 31
  %i.s = lshr i32 %i.q, %i.r
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit.thread, !prof !229

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.u = phi i64 [ %i.z, %bb.c ], [ %i.n, %bb.b ]
  %.01419.i.i = phi i32 [ %i.y, %bb.c ], [ %i.m, %bb.b ]
  %i.v = getelementptr inbounds nuw [176 x i8], ptr %i.b, i64 %i.u
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.v, align 8, !tbaa !51
  %i.w = icmp eq ptr %.sroa.0.0.copyload.i.i, @_ZZN12_GLOBAL__N_117LayoutInfoLattice13resolveTypeIDEvE2id
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.x = add nuw i32 %.01419.i.i, 1
  %i.y = and i32 %i.x, %i.h                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = lshr i64 %i.z, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !18
  %i.ad = and i32 %i.y, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i.i, label %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit.thread, !prof !230

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %bb.d
  %i.ag = phi i64 [ %i.al, %bb.d ], [ %i.n, %.lr.ph.i.i ] ; 2 uses
  %.01419.i.i.i.i = phi i32 [ %i.ak, %bb.d ], [ %i.m, %.lr.ph.i.i ]
  %i.ah = getelementptr inbounds nuw [176 x i8], ptr %i.b, i64 %i.ag
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !51, !noalias !578
  %i.ai = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, @_ZZN12_GLOBAL__N_117LayoutInfoLattice13resolveTypeIDEvE2id
  br i1 %i.ai, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = add nuw i32 %.01419.i.i.i.i, 1
  %i.ak = and i32 %i.aj, %i.h                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !18, !noalias !578
  %i.ap = and i32 %i.ak, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !230

.loopexit.i.i.i:                                  ; preds = %bb.d
  %i.as = zext i32 %i.f to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit.i.i.i
  %i.at = phi i64 [ %i.as, %.loopexit.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.i ]
  %i.au = getelementptr inbounds nuw [176 x i8], ptr %i.b, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !236, !noalias !583 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !248, !noalias !583 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !249, !noalias !583 ; 4 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %.loopexit.i.i.i5, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit
  %i.bc = add i32 %i.ba, -1                       ; 2 uses
  %i.bd = mul i64 %1, -4658895280553007687        ; 2 uses
  %i.be = lshr i64 %i.bd, 31
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = and i32 %i.bc, %i.bg                    ; 3 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = lshr i64 %i.bi, 5
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !18, !noalias !592
  %i.bm = and i32 %i.bh, 31
  %i.bn = lshr i32 %i.bl, %i.bm
  %i.bo = trunc i32 %i.bn to i1
  br i1 %i.bo, label %.lr.ph.i.i.i.i6, label %.loopexit.i.i.i5, !prof !229

.lr.ph.i.i.i.i6:                                  ; preds = %bb.e, %bb.f
  %i.bp = phi i64 [ %i.bu, %bb.f ], [ %i.bi, %bb.e ]
  %.017.i.i.i.i = phi i32 [ %i.bt, %bb.f ], [ %i.bh, %bb.e ]
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bp ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.bq, align 8, !noalias !592
  %i.br = icmp eq i64 %1, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.br, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i, label %bb.f, !prof !21

bb.f:                                             ; preds = %.lr.ph.i.i.i.i6
  %i.bs = add nuw i32 %.017.i.i.i.i, 1
  %i.bt = and i32 %i.bs, %i.bc                    ; 3 uses
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = lshr i64 %i.bu, 5
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !18, !noalias !592
  %i.by = and i32 %i.bt, 31
  %i.bz = lshr i32 %i.bx, %i.by
  %i.ca = trunc i32 %i.bz to i1
  br i1 %i.ca, label %.lr.ph.i.i.i.i6, label %.loopexit.i.i.i5, !prof !230

.loopexit.i.i.i5:                                 ; preds = %bb.f, %bb.e, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS_18EquivalenceClassesINS2_13LatticeAnchorEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E2atERKS3_.exit
  %i.cb = zext i32 %i.ba to i64                   ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.cb
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i6
  %.pre.i = zext i32 %i.ba to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i, %.loopexit.i.i.i5
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i ], [ %i.cb, %.loopexit.i.i.i5 ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.bq, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.loopexit.i ], [ %i.cc, %.loopexit.i.i.i5 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %.pre-phi.i
  %i.ce = icmp eq ptr %.lcssa.sink.i.i.i, %i.cd
  br i1 %i.ce, label %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit.thread, label %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit

_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !251
  %i.ch = tail call noundef ptr @_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE7ECValue9getLeaderEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cg) ; 2 uses
  %.not = icmp eq ptr %i.ch, null
  %2 = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %spec.select = select i1 %.not, ptr %.sroa.011, ptr %2
  %.sroa.0.0.pre = load i64, ptr %spec.select, align 8
  br label %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit.thread

_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit.thread: ; preds = %bb.c, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i, %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit, %bb.b, %bb.a
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.pre, %_ZNK4llvm18EquivalenceClassesIN4mlir13LatticeAnchorEE10findLeaderERKS2_.exit ], [ %1, %bb.a ], [ %1, %bb.b ], [ %1, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorEPNS_18EquivalenceClassesIS3_E7ECValueENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4findERKS3_.exit.i ], [ %1, %bb.c ]
  ret i64 %.sroa.0.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir8dataflow21AbstractSparseLatticeD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4mlir8dataflow21AbstractSparseLatticeE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvm11SmallVectorIPN4mlir16DataFlowAnalysisELj4EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.c) #27
  br label %_ZN4llvm11SmallVectorIPN4mlir16DataFlowAnalysisELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorIPN4mlir16DataFlowAnalysisELj4EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i8, ptr %i.f, align 8, !tbaa !404, !range !66, !noundef !67
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4llvm9SetVectorIPN4mlir16DataFlowAnalysisENS_11SmallVectorIS3_Lj4EEENS_11SmallPtrSetIS3_Lj4EEELj0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPN4mlir16DataFlowAnalysisELj4EED2Ev.exit.i
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !400
  tail call void @free(ptr noundef %i.i) #27
  br label %_ZN4llvm9SetVectorIPN4mlir16DataFlowAnalysisENS_11SmallVectorIS3_Lj4EEENS_11SmallPtrSetIS3_Lj4EEELj0EED2Ev.exit

_ZN4llvm9SetVectorIPN4mlir16DataFlowAnalysisENS_11SmallVectorIS3_Lj4EEENS_11SmallPtrSetIS3_Lj4EEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPN4mlir16DataFlowAnalysisELj4EED2Ev.exit.i, %bb.c
  tail call void @_ZN4mlir13AnalysisStateD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117LayoutInfoLatticeD0Ev(ptr noundef nonnull align 8 dereferenceable(176) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4mlir8dataflow21AbstractSparseLatticeE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvm11SmallVectorIPN4mlir16DataFlowAnalysisELj4EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.c) #27
  br label %_ZN4llvm11SmallVectorIPN4mlir16DataFlowAnalysisELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPN4mlir16DataFlowAnalysisELj4EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i8, ptr %i.f, align 8, !tbaa !404, !range !66, !noundef !67
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4mlir8dataflow21AbstractSparseLatticeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPN4mlir16DataFlowAnalysisELj4EED2Ev.exit.i.i
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !400
  tail call void @free(ptr noundef %i.i) #27
  br label %_ZN4mlir8dataflow21AbstractSparseLatticeD2Ev.exit

_ZN4mlir8dataflow21AbstractSparseLatticeD2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPN4mlir16DataFlowAnalysisELj4EED2Ev.exit.i.i, %bb.c
  tail call void @_ZN4mlir13AnalysisStateD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(176) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4mlir8dataflow7LatticeIN12_GLOBAL__N_110LayoutInfoEE5printERN4llvm11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Attribute", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val = load ptr, ptr %i.a, align 8, !tbaa !434 ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.val, ptr %2, align 8
  call void @_ZNK4mlir9Attribute5printERN4llvm11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext false) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZNK12_GLOBAL__N_110LayoutInfo5printERN4llvm11raw_ostreamE.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !212  ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 13
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.7, i64 noundef 13) #27 ; 0 uses
  br label %_ZNK12_GLOBAL__N_110LayoutInfo5printERN4llvm11raw_ostreamE.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.e, ptr noundef nonnull align 1 dereferenceable(13) @.str.7, i64 13, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !212
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 13
  store ptr %i.l, ptr %i.d, align 8, !tbaa !212
  br label %_ZNK12_GLOBAL__N_110LayoutInfo5printERN4llvm11raw_ostreamE.exit

_ZNK12_GLOBAL__N_110LayoutInfo5printERN4llvm11raw_ostreamE.exit: ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 0, 2) i32 @_ZN4mlir8dataflow7LatticeIN12_GLOBAL__N_110LayoutInfoEE4joinERKNS0_21AbstractSparseLatticeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #14 align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 0, 2) i32 @_ZN4mlir8dataflow7LatticeIN12_GLOBAL__N_110LayoutInfoEE4meetERKNS0_21AbstractSparseLatticeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %1) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %.val.i.i = load ptr, ptr %i.b, align 8, !tbaa !434
  %.not.i.i = icmp eq ptr %.val.i.i, null         ; 2 uses
  %..i.i = select i1 %.not.i.i, ptr %i.a, ptr %i.b ; 2 uses
  %.sroa.0.0.i.i = load ptr, ptr %..i.i, align 8  ; 2 uses
  %i.c = icmp ne ptr %.sroa.0.0.i.i, null
  %i.d = xor i1 %.not.i.i, %i.c
  br i1 %i.d, label %_ZN4mlir8dataflow7LatticeIN12_GLOBAL__N_110LayoutInfoEE4meetIS3_EENS_12ChangeResultERKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %..i.i, i64 8
  %.sroa.3.0.i.i = load ptr, ptr %.sroa.3.0.in.i.i, align 8
  store ptr %.sroa.0.0.i.i, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %.sroa.3.0.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  br label %_ZN4mlir8dataflow7LatticeIN12_GLOBAL__N_110LayoutInfoEE4meetIS3_EENS_12ChangeResultERKT_.exit

_ZN4mlir8dataflow7LatticeIN12_GLOBAL__N_110LayoutInfoEE4meetIS3_EENS_12ChangeResultERKT_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0.i
}

declare void @_ZNK4mlir9Attribute5printERN4llvm11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir5xegpu5uArch8getUArchEN4llvm9StringRefE(ptr %0, i64 %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %1, ptr %i.a, align 8
  %i.b = icmp eq i64 %1, 3
  br i1 %i.b, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit, label %_ZN4mlir5xegpu5uArch8PVCuArch11getInstanceEv.exit

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit: ; preds = %bb.a
  %i.c = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.12, i64 3) #27
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread

bb.b:                                             ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit
  %i.e = load atomic i8, ptr @_ZGVZN4mlir5xegpu5uArch8PVCuArch11getInstanceEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN4mlir5xegpu5uArch8PVCuArch11getInstanceEv.exit, !prof !319

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir5xegpu5uArch8PVCuArch11getInstanceEvE8instance) #27
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN4mlir5xegpu5uArch8PVCuArch11getInstanceEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN4mlir5xegpu5uArch8PVCuArchC2Ev(ptr noundef nonnull align 8 dereferenceable(544) @_ZZN4mlir5xegpu5uArch8PVCuArch11getInstanceEvE8instance)
  br label %_ZN4mlir5xegpu5uArch8PVCuArch11getInstanceEv.exit.sink.split

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !593
  %i.h = icmp eq i64 %.pre, 3
  br i1 %i.h, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit1, label %_ZN4mlir5xegpu5uArch8PVCuArch11getInstanceEv.exit

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit1: ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread
  %i.i = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.13, i64 3) #27
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit1.thread

bb.e:                                             ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit1
  %i.k = load atomic i8, ptr @_ZGVZN4mlir5xegpu5uArch8BMGuArch11getInstanceEvE8instance acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.f, label %_ZN4mlir5xegpu5uArch8PVCuArch11getInstanceEv.exit, !prof !319

bb.f:                                             ; preds = %bb.e
  %i.m = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir5xegpu5uArch8BMGuArch11getInstanceEvE8instance) #27
  %.not.i2 = icmp eq i32 %i.m, 0
  br i1 %.not.i2, label %_ZN4mlir5xegpu5uArch8PVCuArch11getInstanceEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN4mlir5xegpu5uArch8BMGuArchC2Ev(ptr noundef nonnull align 8 dereferenceable(544) @_ZZN4mlir5xegpu5uArch8BMGuArch11getInstanceEvE8instance)
  br label %_ZN4mlir5xegpu5uArch8PVCuArch11getInstanceEv.exit.sink.split

end_hunk_2
