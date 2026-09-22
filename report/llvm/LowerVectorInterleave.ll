Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LowerVectorInterleave?download=true
inline.NumInlined: 1063
inline.NumDeleted: 675
begin_hunk_0_@_ZNK12_GLOBAL__N_120UnrollDeinterleaveOp15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS1_15PatternRewriterE:bb.a
  %i.bx = icmp eq ptr %i.bw, %i.ac
  br i1 %i.bx, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.bw) #13
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.by = load i64, ptr %i.s, align 8, !tbaa !93
  %i.bz = add nsw i64 %i.by, 1                    ; 3 uses
  store i64 %i.bz, ptr %i.s, align 8, !tbaa !93
  %i.ca = load i64, ptr %i.w, align 8, !tbaa !93
  %.not = icmp eq i64 %i.bz, %i.ca
  br i1 %.not, label %._crit_edge, label %bb.i

bb.k:                                             ; preds = %bb.h, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store ptr %.sroa.018.0.lcssa, ptr %8, align 8, !tbaa !98
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.016.0.lcssa, ptr %i.cb, align 8, !tbaa !98
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nonnull %8, i64 2) #13
  %i.cc = load i64, ptr %7, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = load ptr, ptr %2, align 8, !tbaa !38
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %1, i64 %i.cc, i64 %i.ce) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %.pre = load i8, ptr %i.h, align 8, !tbaa !83, !range !84
  %i.ch = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.h, align 8, !tbaa !83
  br i1 %i.ch, label %bb.l, label %_ZNSt14_Optional_baseIN4mlir21StaticTileOffsetRangeELb0ELb0EED2Ev.exit

bb.l:                                             ; preds = %bb.k
  call void @_ZN4mlir21StaticTileOffsetRangeD2Ev(ptr noundef nonnull align 8 dead_on_return(616) dereferenceable(624) %3) #13
  br label %_ZNSt14_Optional_baseIN4mlir21StaticTileOffsetRangeELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir21StaticTileOffsetRangeELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.k, %bb.l
  %.sroa.036.069 = phi i8 [ 1, %bb.l ], [ 1, %bb.k ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i8 %.sroa.036.069
}

declare ptr @_ZN4mlir6vector14DeinterleaveOp6createERNS_9OpBuilderENS_8LocationENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr) local_unnamed_addr #6

declare void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_119InterleaveToShuffleD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #13
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #13
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_119InterleaveToShuffle15matchAndRewriteEN4mlir6vector12InterleaveOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::VectorType", align 8  ; 6 uses
  %4 = alloca %"class.llvm::SmallVector.51", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.f = inttoptr i64 %i.e to ptr
  store ptr %i.f, ptr %3, align 8
  %i.g = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %i.h = extractvalue { ptr, i64 } %i.g, 1
  %i.i = icmp sgt i64 %i.h, 1
  br i1 %i.i, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #13 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 4 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ashr i64 %i.l, 2                         ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = and i64 %i.l, -4
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.k, i64 %i.q
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.047.i.i.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.z, %bb.g ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i ], [ %i.y, %bb.g ] ; 9 uses
  %i.r = load i8, ptr %.02946.i.i.i.i.i, align 1, !tbaa !99, !range !84, !noundef !85
  %.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i, label %bb.d, label %_ZNK4mlir10VectorType10isScalableEv.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !99, !range !84, !noundef !85
  %.not4.i = icmp eq i8 %i.t, 0
  br i1 %.not4.i, label %bb.e, label %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !99, !range !84, !noundef !85
  %.not5.i = icmp eq i8 %i.v, 0
  br i1 %.not5.i, label %bb.f, label %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit32

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !99, !range !84, !noundef !85
  %.not6.i = icmp eq i8 %i.x, 0
  br i1 %.not6.i, label %bb.g, label %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit34

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 4
  %i.z = add nsw i64 %.047.i.i.i.i.i, -1
  %i.aa = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.c, label %._crit_edge.i.i.i.i.i, !llvm.loop !0

._crit_edge.i.i.i.i.i:                            ; preds = %bb.g, %bb.b
  %.029.lcssa.i.i.i.i.i = phi ptr [ %i.k, %bb.b ], [ %scevgep.i.i.i.i.i, %bb.g ] ; 6 uses
  %.pre-phi.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i to i64
  %i.ab = sub i64 %i.n, %.pre-phi.i.i.i.i.i
  switch i64 %i.ab, label %_ZNK4mlir10VectorType10isScalableEv.exit.thread [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ac = load i8, ptr %.029.lcssa.i.i.i.i.i, align 1, !tbaa !99, !range !84, !noundef !85
  %.not7.i = icmp eq i8 %i.ac, 0
  br i1 %.not7.i, label %bb.i, label %_ZNK4mlir10VectorType10isScalableEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.ad, %bb.i ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ae = load i8, ptr %.1.i.i.i.i.i, align 1, !tbaa !99, !range !84, !noundef !85
  %.not8.i = icmp eq i8 %i.ae, 0
  br i1 %.not8.i, label %bb.j, label %_ZNK4mlir10VectorType10isScalableEv.exit

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i:               ; preds = %bb.j, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.af, %bb.j ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ag = load i8, ptr %.2.i.i.i.i.i, align 1, !tbaa !99, !range !84, !noundef !85
  %.not9.i = icmp eq i8 %i.ag, 0
  br i1 %.not9.i, label %_ZNK4mlir10VectorType10isScalableEv.exit.thread, label %_ZNK4mlir10VectorType10isScalableEv.exit

_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 1
  br label %_ZNK4mlir10VectorType10isScalableEv.exit

_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit32: ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 2
  br label %_ZNK4mlir10VectorType10isScalableEv.exit

_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit34: ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 3
  br label %_ZNK4mlir10VectorType10isScalableEv.exit

_ZNK4mlir10VectorType10isScalableEv.exit:         ; preds = %bb.c, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit32, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit34, %bb.h, %._crit_edge._crit_edge.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i, %bb.h ], [ %.2.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.aj, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit34 ], [ %i.ai, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit32 ], [ %i.ah, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i, %bb.c ]
  %.not = icmp eq ptr %.028.i.i.i.i.i, %i.m
  br i1 %.not, label %_ZNK4mlir10VectorType10isScalableEv.exit.thread, label %bb.m

_ZNK4mlir10VectorType10isScalableEv.exit.thread:  ; preds = %._crit_edge._crit_edge52.i.i.i.i.i, %._crit_edge.i.i.i.i.i, %_ZNK4mlir10VectorType10isScalableEv.exit
  %i.ak = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #13 ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ak, 0
  %i.am = extractvalue { ptr, i64 } %i.ak, 1
  %i.an = call noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr %i.al, i64 %i.am) #13 ; 4 uses
  %i.ao = shl nsw i64 %i.an, 1                    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !80, !alias.scope !192
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !64, !alias.scope !192
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 6, ptr %i.ar, align 4, !tbaa !65, !alias.scope !192
  %i.as = icmp ugt i64 %i.ao, 6
  br i1 %i.as, label %bb.k, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i

bb.k:                                             ; preds = %_ZNK4mlir10VectorType10isScalableEv.exit.thread
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %i.ap, i64 noundef %i.ao, i64 noundef 8) #13
  %.pre.i.i.i.i = load i32, ptr %i.aq, align 8, !tbaa !64, !alias.scope !192 ; 2 uses
  %.pre24.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.pre27.pre = load ptr, ptr %4, align 8, !tbaa !80
  br label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i: ; preds = %bb.k, %_ZNK4mlir10VectorType10isScalableEv.exit.thread
  %.pre = phi ptr [ %i.ap, %_ZNK4mlir10VectorType10isScalableEv.exit.thread ], [ %.pre27.pre, %bb.k ] ; 2 uses
  %.pre-phi.i.i.i.i = phi i64 [ 0, %_ZNK4mlir10VectorType10isScalableEv.exit.thread ], [ %.pre24.i.i.i.i, %bb.k ]
  %i.at = phi i32 [ 0, %_ZNK4mlir10VectorType10isScalableEv.exit.thread ], [ %.pre.i.i.i.i, %bb.k ]
  %i.au = icmp sgt i64 %i.an, 0
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i, label %_ZN4llvm13map_to_vectorIRNS_10iota_rangeIlEEZNK12_GLOBAL__N_119InterleaveToShuffle15matchAndRewriteEN4mlir6vector12InterleaveOpERNS6_15PatternRewriterEEUllE_EEDaOT_OT0_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i:         ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i
  %5 = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.pre-phi.i.i.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.ao, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.a, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i
  %n.vec = and i64 %i.ao, 9223372036854775804     ; 4 uses
  %6 = shl i64 %n.vec, 3
  %7 = getelementptr i8, ptr %5, i64 %6
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.an, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %8 = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %5, i64 %8    ; 2 uses
  %9 = and <2 x i64> %vec.ind, splat (i64 1)
  %10 = and <2 x i64> %vec.ind, splat (i64 1)
  %11 = icmp eq <2 x i64> %9, zeroinitializer
  %12 = icmp eq <2 x i64> %10, zeroinitializer
  %13 = select <2 x i1> %11, <2 x i64> zeroinitializer, <2 x i64> %broadcast.splat
  %14 = select <2 x i1> %12, <2 x i64> zeroinitializer, <2 x i64> %broadcast.splat
  %15 = lshr <2 x i64> %vec.ind, splat (i64 1)
  %16 = lshr <2 x i64> %step.add, splat (i64 1)
  %17 = add nuw nsw <2 x i64> %13, %15
  %18 = add nuw nsw <2 x i64> %14, %16
  %19 = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %17, ptr %next.gep, align 8, !tbaa !62
  store <2 x i64> %18, ptr %19, align 8, !tbaa !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %20 = icmp eq i64 %index.next, %n.vec
  br i1 %20, label %middle.block, label %vector.body, !llvm.loop !189

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZN4llvm13map_to_vectorIRNS_10iota_rangeIlEEZNK12_GLOBAL__N_119InterleaveToShuffle15matchAndRewriteEN4mlir6vector12InterleaveOpERNS6_15PatternRewriterEEUllE_EEDaOT_OT0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.a

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.a:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i, %middle.block
  %.044.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %5, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ], [ %7, %middle.block ]
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.a, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.044.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.044.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.a ] ; 2 uses
  %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i.a ] ; 3 uses
  %21 = and i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %21, 0
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 0, i64 %i.an
  %.udiv32 = lshr i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.av = add nuw nsw i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.udiv32
  store i64 %i.av, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !62
  %i.aw = add nuw nsw i64 %.0.allc.03.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.044.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %exitcond.not.1 = icmp eq i64 %i.aw, %i.ao
  br i1 %exitcond.not.1, label %_ZN4llvm13map_to_vectorIRNS_10iota_rangeIlEEZNK12_GLOBAL__N_119InterleaveToShuffle15matchAndRewriteEN4mlir6vector12InterleaveOpERNS6_15PatternRewriterEEUllE_EEDaOT_OT0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !190

_ZN4llvm13map_to_vectorIRNS_10iota_rangeIlEEZNK12_GLOBAL__N_119InterleaveToShuffle15matchAndRewriteEN4mlir6vector12InterleaveOpERNS6_15PatternRewriterEEUllE_EEDaOT_OT0_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i
  %i.ay = trunc i64 %i.ao to i32
  %i.az = add i32 %i.at, %i.ay                    ; 2 uses
  store i32 %i.az, ptr %i.aq, align 8, !tbaa !64, !alias.scope !192
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !96  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !98
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %.sroa.0.0.copyload.i.i.i.i6 = load ptr, ptr %i.bc, align 8, !tbaa !98
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.be, align 8
  %i.bf = zext i32 %i.az to i64
  %i.bg = call ptr @_ZN4mlir6vector9ShuffleOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_N4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i6, ptr %.pre, i64 %i.bf) #13
  %i.bh = load ptr, ptr %2, align 8, !tbaa !38
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %1, ptr noundef %i.bg) #13, !inline_history !191
  %i.bk = load ptr, ptr %4, align 8, !tbaa !80    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ap
  br i1 %i.bl, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm13map_to_vectorIRNS_10iota_rangeIlEEZNK12_GLOBAL__N_119InterleaveToShuffle15matchAndRewriteEN4mlir6vector12InterleaveOpERNS6_15PatternRewriterEEUllE_EEDaOT_OT0_.exit
  call void @free(ptr noundef %i.bk) #13
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZN4llvm13map_to_vectorIRNS_10iota_rangeIlEEZNK12_GLOBAL__N_119InterleaveToShuffle15matchAndRewriteEN4mlir6vector12InterleaveOpERNS6_15PatternRewriterEEUllE_EEDaOT_OT0_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNK4mlir10VectorType10isScalableEv.exit, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  %.sroa.02.0 = phi i8 [ 1, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit ], [ 0, %_ZNK4mlir10VectorType10isScalableEv.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i8 %.sroa.02.0
}

declare { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr, i64) local_unnamed_addr #6

declare ptr @_ZN4mlir6vector9ShuffleOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_N4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #13
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir7PatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #13
  br label %_ZN4mlir7PatternD2Ev.exit

_ZN4mlir7PatternD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121DeinterleaveToShuffleD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #13
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #13
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::VectorType", align 8  ; 6 uses
  %4 = alloca %"class.llvm::SmallVector.51", align 8 ; 10 uses
  %5 = alloca %"class.llvm::SmallVector.51", align 8 ; 10 uses
  %6 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %7 = alloca [2 x %"class.mlir::Value"], align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.f = inttoptr i64 %i.e to ptr
  store ptr %i.f, ptr %3, align 8
  %i.g = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %i.h = extractvalue { ptr, i64 } %i.g, 1
  %.not = icmp eq i64 %i.h, 1
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.i = call { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #13 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 4 uses
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ashr i64 %i.k, 2                         ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.p = and i64 %i.k, -4
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.j, i64 %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.047.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.y, %bb.g ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.x, %bb.g ] ; 9 uses
  %i.q = load i8, ptr %.02946.i.i.i.i.i, align 1, !tbaa !99, !range !84, !noundef !85
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %bb.d, label %_ZNK4mlir10VectorType10isScalableEv.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !99, !range !84, !noundef !85
  %.not4.i = icmp eq i8 %i.s, 0
  br i1 %.not4.i, label %bb.e, label %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !99, !range !84, !noundef !85
  %.not5.i = icmp eq i8 %i.u, 0
  br i1 %.not5.i, label %bb.f, label %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit66

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !99, !range !84, !noundef !85
  %.not6.i = icmp eq i8 %i.w, 0
  br i1 %.not6.i, label %bb.g, label %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit68

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 4
  %i.y = add nsw i64 %.047.i.i.i.i.i, -1
  %i.z = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.z, label %bb.c, label %._crit_edge.i.i.i.i.i, !llvm.loop !0

._crit_edge.i.i.i.i.i:                            ; preds = %bb.g, %bb.b
  %.029.lcssa.i.i.i.i.i = phi ptr [ %i.j, %bb.b ], [ %scevgep.i.i.i.i.i, %bb.g ] ; 6 uses
  %.pre-phi.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i to i64
  %i.aa = sub i64 %i.m, %.pre-phi.i.i.i.i.i
  switch i64 %i.aa, label %_ZNK4mlir10VectorType10isScalableEv.exit.thread [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ab = load i8, ptr %.029.lcssa.i.i.i.i.i, align 1, !tbaa !99, !range !84, !noundef !85
  %.not7.i = icmp eq i8 %i.ab, 0
  br i1 %.not7.i, label %bb.i, label %_ZNK4mlir10VectorType10isScalableEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.ac, %bb.i ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ad = load i8, ptr %.1.i.i.i.i.i, align 1, !tbaa !99, !range !84, !noundef !85
  %.not8.i = icmp eq i8 %i.ad, 0
  br i1 %.not8.i, label %bb.j, label %_ZNK4mlir10VectorType10isScalableEv.exit

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i:               ; preds = %bb.j, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.ae, %bb.j ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.af = load i8, ptr %.2.i.i.i.i.i, align 1, !tbaa !99, !range !84, !noundef !85
  %.not9.i = icmp eq i8 %i.af, 0
  br i1 %.not9.i, label %_ZNK4mlir10VectorType10isScalableEv.exit.thread, label %_ZNK4mlir10VectorType10isScalableEv.exit

_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 1
  br label %_ZNK4mlir10VectorType10isScalableEv.exit

_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit66: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 2
  br label %_ZNK4mlir10VectorType10isScalableEv.exit

_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit68: ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 3
  br label %_ZNK4mlir10VectorType10isScalableEv.exit

_ZNK4mlir10VectorType10isScalableEv.exit:         ; preds = %bb.c, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit66, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit68, %bb.h, %._crit_edge._crit_edge.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i, %bb.h ], [ %.2.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.ai, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit68 ], [ %i.ah, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit66 ], [ %i.ag, %_ZNK4mlir10VectorType10isScalableEv.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i, %bb.c ]
  %.not44 = icmp eq ptr %.028.i.i.i.i.i, %i.l
  br i1 %.not44, label %_ZNK4mlir10VectorType10isScalableEv.exit.thread, label %bb.n

_ZNK4mlir10VectorType10isScalableEv.exit.thread:  ; preds = %._crit_edge._crit_edge52.i.i.i.i.i, %._crit_edge.i.i.i.i.i, %_ZNK4mlir10VectorType10isScalableEv.exit
  %i.aj = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #13 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = call noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr %i.ak, i64 %i.al) #13 ; 3 uses
  %i.an = sdiv i64 %i.am, 2                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ao, ptr %4, align 8, !tbaa !80, !alias.scope !205
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !64, !alias.scope !205
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 6, ptr %i.aq, align 4, !tbaa !65, !alias.scope !205
  %i.ar = icmp ugt i64 %i.an, 6
  br i1 %i.ar, label %bb.k, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i

bb.k:                                             ; preds = %_ZNK4mlir10VectorType10isScalableEv.exit.thread
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %i.ao, i64 noundef %i.an, i64 noundef 8) #13
  %.pre.i.i.i.i = load i32, ptr %i.ap, align 8, !tbaa !64, !alias.scope !205 ; 2 uses
  %.pre27.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.val14.pre57.pre = load ptr, ptr %4, align 8, !tbaa !80
  br label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i: ; preds = %bb.k, %_ZNK4mlir10VectorType10isScalableEv.exit.thread
  %.val14.pre = phi ptr [ %i.ao, %_ZNK4mlir10VectorType10isScalableEv.exit.thread ], [ %.val14.pre57.pre, %bb.k ] ; 7 uses
  %.pre-phi.i.i.i.i = phi i64 [ 0, %_ZNK4mlir10VectorType10isScalableEv.exit.thread ], [ %.pre27.i.i.i.i, %bb.k ]
  %i.as = phi i32 [ 0, %_ZNK4mlir10VectorType10isScalableEv.exit.thread ], [ %.pre.i.i.i.i, %bb.k ]
  %.val14.pre79 = ptrtoaddr ptr %.val14.pre to i64
  %i.at = icmp sgt i64 %i.am, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i, label %_ZN4llvm13map_to_vectorIRNS_10iota_rangeIlEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE_EEDaOT_OT0_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i:         ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val14.pre, i64 %.pre-phi.i.i.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.am, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i
  %n.vec = and i64 %i.an, 4611686018427387900     ; 4 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.au, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.ax ; 2 uses
  %i.ay = shl nuw nsw <2 x i64> %vec.ind, splat (i64 1)
  %step.add = shl <2 x i64> %vec.ind, splat (i64 1)
  %i.az = add <2 x i64> %step.add, splat (i64 4)
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.ay, ptr %next.gep, align 8, !tbaa !62
  store <2 x i64> %i.az, ptr %i.ba, align 8, !tbaa !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZN4llvm13map_to_vectorIRNS_10iota_rangeIlEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE_EEDaOT_OT0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i, %middle.block
  %.0411.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ], [ %i.aw, %middle.block ]
  %.sroa.07.010.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.0411.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0411.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.010.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.07.010.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bc = shl nuw nsw i64 %.sroa.07.010.i.i.i.i.i.i.i.i.i.i.i.i, 1
  store i64 %i.bc, ptr %.0411.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !62
  %i.bd = add nuw nsw i64 %.sroa.07.010.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0411.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %exitcond.not = icmp eq i64 %i.bd, %i.an
  br i1 %exitcond.not, label %_ZN4llvm13map_to_vectorIRNS_10iota_rangeIlEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE_EEDaOT_OT0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !198

_ZN4llvm13map_to_vectorIRNS_10iota_rangeIlEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE_EEDaOT_OT0_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i
  %i.bf = trunc i64 %i.an to i32
  %i.bg = add i32 %i.as, %i.bf                    ; 6 uses
  store i32 %i.bg, ptr %i.ap, align 8, !tbaa !64, !alias.scope !205
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.bh = zext i32 %i.bg to i64                   ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.bi, ptr %5, align 8, !tbaa !80, !alias.scope !207
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !64, !alias.scope !207
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 6, ptr %i.bk, align 4, !tbaa !65, !alias.scope !207
  %i.bl = icmp ugt i32 %i.bg, 6
  br i1 %i.bl, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i16

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i: ; preds = %_ZN4llvm13map_to_vectorIRNS_10iota_rangeIlEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE_EEDaOT_OT0_.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.bi, i64 noundef %i.bh, i64 noundef 8) #13
  %.pre.i.i.i.i20 = load i32, ptr %i.bj, align 8, !tbaa !64, !alias.scope !207 ; 2 uses
  %.pre23.i.i.i.i = zext i32 %.pre.i.i.i.i20 to i64
  %.pre = load ptr, ptr %5, align 8, !tbaa !80, !alias.scope !207
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i18

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i16: ; preds = %_ZN4llvm13map_to_vectorIRNS_10iota_rangeIlEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE_EEDaOT_OT0_.exit
  %.not.i17 = icmp eq i32 %i.bg, 0
  br i1 %.not.i17, label %_ZN4llvm13map_to_vectorIRNS_11SmallVectorIlLj6EEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE0_EEDaOT_OT0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i18

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i18:       ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i16, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i
  %i.bm = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i ], [ %i.bi, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i16 ] ; 2 uses
  %i.bn = phi i32 [ %.pre.i.i.i.i20, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i16 ]
  %.pre-phi.i.i.i3.i = phi i64 [ %.pre23.i.i.i.i, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i16 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.pre-phi.i.i.i3.i ; 4 uses
  %i.bp = icmp ne i32 %i.bg, 0
  %.neg = sext i1 %i.bp to i64
  %i.bq = add nuw nsw i64 %i.bh, 1
  %i.br = add nsw i64 %i.bq, %.neg                ; 3 uses
  %min.iters.check81 = icmp ult i64 %i.br, 10
  br i1 %min.iters.check81, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i18
  %i.bs = ptrtoaddr ptr %i.bm to i64
  %i.bt = shl nuw nsw i64 %.pre-phi.i.i.i3.i, 3
  %i.bu = add i64 %i.bt, %i.bs
  %i.bv = sub i64 %.val14.pre79, %i.bu
  %diff.check = icmp ugt i64 %i.bv, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19.preheader, label %vector.ph82

vector.ph82:                                      ; preds = %vector.memcheck
  %n.vec83 = and i64 %i.br, -4                    ; 4 uses
  %i.bw = sub nsw i64 %i.bh, %n.vec83
  %i.bx = shl nsw i64 %n.vec83, 3                 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bo, i64 %i.bx
  %i.bz = getelementptr i8, ptr %.val14.pre, i64 %i.bx
  br label %vector.body84

vector.body84:                                    ; preds = %vector.body84, %vector.ph82
  %index85 = phi i64 [ 0, %vector.ph82 ], [ %index.next89, %vector.body84 ] ; 2 uses
  %i.ca = shl i64 %index85, 3                     ; 2 uses
  %next.gep86 = getelementptr i8, ptr %i.bo, i64 %i.ca ; 2 uses
  %next.gep87 = getelementptr i8, ptr %.val14.pre, i64 %i.ca ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep87, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep87, align 8, !tbaa !62, !noalias !206
  %wide.load88 = load <2 x i64>, ptr %i.cb, align 8, !tbaa !62, !noalias !206
  %i.cc = add nsw <2 x i64> %wide.load, splat (i64 1)
  %i.cd = add nsw <2 x i64> %wide.load88, splat (i64 1)
  %i.ce = getelementptr i8, ptr %next.gep86, i64 16
  store <2 x i64> %i.cc, ptr %next.gep86, align 8, !tbaa !62
  store <2 x i64> %i.cd, ptr %i.ce, align 8, !tbaa !62
  %index.next89 = add nuw i64 %index85, 4         ; 2 uses
  %i.cf = icmp eq i64 %index.next89, %n.vec83
  br i1 %i.cf, label %middle.block90, label %vector.body84, !llvm.loop !203

middle.block90:                                   ; preds = %vector.body84
  %cmp.n91 = icmp eq i64 %i.br, %n.vec83
  br i1 %cmp.n91, label %_ZN4llvm13map_to_vectorIRNS_11SmallVectorIlLj6EEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE0_EEDaOT_OT0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19.preheader:       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i18, %middle.block90
  %.010.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i18 ], [ %i.bw, %middle.block90 ]
  %.049.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bo, %vector.memcheck ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i18 ], [ %i.by, %middle.block90 ]
  %.sroa.07.08.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.val14.pre, %vector.memcheck ], [ %.val14.pre, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i18 ], [ %i.bz, %middle.block90 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19
  %.010.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19 ], [ %.010.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19.preheader ] ; 2 uses
  %.049.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19 ], [ %.049.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19.preheader ] ; 2 uses
  %.sroa.07.08.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19 ], [ %.sroa.07.08.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19.preheader ] ; 2 uses
  %.val6.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.07.08.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !62, !noalias !206
  %i.cg = add nsw i64 %.val6.val.i.i.i.i.i.i.i.i.i.i.i.i, 1
  store i64 %i.cg, ptr %.049.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !62
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.07.08.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cj = add nsw i64 %.010.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ck = icmp samesign ugt i64 %.010.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19, label %_ZN4llvm13map_to_vectorIRNS_11SmallVectorIlLj6EEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE0_EEDaOT_OT0_.exit.loopexit, !llvm.loop !204

_ZN4llvm13map_to_vectorIRNS_11SmallVectorIlLj6EEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE0_EEDaOT_OT0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19, %middle.block90
  %.pre59 = load ptr, ptr %4, align 8, !tbaa !80
  %.pre60 = load i32, ptr %i.ap, align 8, !tbaa !64
  %i.cl = zext i32 %.pre60 to i64
  br label %_ZN4llvm13map_to_vectorIRNS_11SmallVectorIlLj6EEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE0_EEDaOT_OT0_.exit

_ZN4llvm13map_to_vectorIRNS_11SmallVectorIlLj6EEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE0_EEDaOT_OT0_.exit: ; preds = %_ZN4llvm13map_to_vectorIRNS_11SmallVectorIlLj6EEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE0_EEDaOT_OT0_.exit.loopexit, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i16
  %i.cm = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i16 ], [ %i.cl, %_ZN4llvm13map_to_vectorIRNS_11SmallVectorIlLj6EEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE0_EEDaOT_OT0_.exit.loopexit ]
  %i.cn = phi ptr [ %.val14.pre, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i16 ], [ %.pre59, %_ZN4llvm13map_to_vectorIRNS_11SmallVectorIlLj6EEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE0_EEDaOT_OT0_.exit.loopexit ]
  %i.co = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i16 ], [ %i.bn, %_ZN4llvm13map_to_vectorIRNS_11SmallVectorIlLj6EEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE0_EEDaOT_OT0_.exit.loopexit ]
  %i.cp = add i32 %i.co, %i.bg
  store i32 %i.cp, ptr %i.bj, align 8, !tbaa !64, !alias.scope !207
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cr, align 8
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !98 ; 2 uses
  %i.cu = call ptr @_ZN4mlir6vector9ShuffleOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_N4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i.i, ptr %.sroa.0.0.copyload.i.i.i, ptr %i.cn, i64 %i.cm) #13
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -16
  %.sroa.0.0.copyload.i.i22 = load ptr, ptr %i.cr, align 8
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %.sroa.0.0.copyload.i.i.i23 = load ptr, ptr %i.cx, align 8, !tbaa !98 ; 2 uses
  %i.cy = load ptr, ptr %5, align 8, !tbaa !80
  %i.cz = load i32, ptr %i.bj, align 8, !tbaa !64
  %i.da = zext i32 %i.cz to i64
  %i.db = call ptr @_ZN4mlir6vector9ShuffleOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_N4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr %.sroa.0.0.copyload.i.i22, ptr %.sroa.0.0.copyload.i.i.i23, ptr %.sroa.0.0.copyload.i.i.i23, ptr %i.cy, i64 %i.da) #13
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %i.cv, ptr %7, align 8, !tbaa !98
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !98
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr nonnull %7, i64 2) #13
  %i.de = load i64, ptr %6, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = load ptr, ptr %2, align 8, !tbaa !38
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %1, i64 %i.de, i64 %i.dg) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.dj = load ptr, ptr %5, align 8, !tbaa !80    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bi
  br i1 %i.dk, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm13map_to_vectorIRNS_11SmallVectorIlLj6EEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE0_EEDaOT_OT0_.exit
  call void @free(ptr noundef %i.dj) #13
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit:            ; preds = %_ZN4llvm13map_to_vectorIRNS_11SmallVectorIlLj6EEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE0_EEDaOT_OT0_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.dl = load ptr, ptr %4, align 8, !tbaa !80    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.ao
  br i1 %i.dm, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit25, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit
  call void @free(ptr noundef %i.dl) #13
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit25

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit25:          ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZNK4mlir10VectorType10isScalableEv.exit, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit25
  %.sroa.012.0 = phi i8 [ 1, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit25 ], [ 0, %_ZNK4mlir10VectorType10isScalableEv.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i8 %.sroa.012.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { builtin nounwind allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !73}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN4mlir11MLIRContextE", !9, i64 0}
!11 = !{!"p1 _ZTSSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS1_EE", !9, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !12, i64 0}
!14 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE", !13, i64 0}
!15 = !{!"_ZTSSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE", !14, i64 0}
!16 = !{!"p1 _ZTSN4mlir9OperationE", !9, i64 0}
!17 = !{!"_ZTSN4mlir7OpStateE", !16, i64 0}
!18 = !{!"_ZTSN4mlir2OpINS_8ModuleOpEJNS_7OpTrait9OneRegionENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_17NoRegionArgumentsENS2_12NoTerminatorENS2_11SingleBlockENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_11AffineScopeENS2_19IsIsolatedFromAboveENS2_11SymbolTableENS_17SymbolOpInterface5TraitENS_16OpAsmOpInterface5TraitENS_19RegionKindInterface5TraitENS2_18HasOnlyGraphRegionEEEE", !17, i64 0}
!19 = !{!"_ZTSN4mlir8ModuleOpE", !18, i64 0}
!20 = !{!"_ZTSN4mlir11OwningOpRefINS_8ModuleOpEEE", !19, i64 0}
!21 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !9, i64 0, !6, i64 8, !6, i64 12}
!22 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EEvEE", !21, i64 0}
!23 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EEE", !22, i64 0}
!24 = !{!"_ZTSN4llvm15SmallVectorImplISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EEEE", !23, i64 0}
!25 = !{!"_ZTSN4llvm18SmallVectorStorageISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EEE", !5, i64 0}
!26 = !{!"_ZTSN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EEE", !24, i64 0, !25, i64 16}
!27 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPN4mlir9OperationEPNS2_19PDLPatternConfigSetEEE", !9, i64 0}
!28 = !{!"p1 int", !9, i64 0}
!29 = !{!"_ZTSN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !27, i64 0, !28, i64 8, !6, i64 16, !6, i64 20}
!30 = !{!"any p2 pointer", !9, i64 0}
!31 = !{!"p2 _ZTSN4llvm18StringMapEntryBaseE", !30, i64 0}
!32 = !{!"_ZTSN4llvm13StringMapImplE", !31, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!33 = !{!"_ZTSN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEEE", !32, i64 0}
!34 = !{!"_ZTSN4mlir16PDLPatternModuleE", !20, i64 0, !26, i64 8, !29, i64 72, !33, i64 96, !33, i64 120}
!35 = !{!"_ZTSN4mlir17RewritePatternSetE", !10, i64 0, !15, i64 8, !34, i64 32}
!36 = !{!35, !10, i64 0}
!37 = !{!"vtable pointer", !4, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"_ZTSN4mlir7Pattern8RootKindE", !5, i64 0}
!40 = !{!"short", !5, i64 0}
!41 = !{!"_ZTSN4mlir14PatternBenefitE", !40, i64 0}
!42 = !{!"_ZTSN4llvm6detail13PunnedPointerIPN4mlir11MLIRContextEEE", !5, i64 0}
!43 = !{!"_ZTSN4llvm14PointerIntPairIPN4mlir11MLIRContextELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEE", !42, i64 0}
!44 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN4mlir13OperationNameEvEE", !21, i64 0}
!45 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN4mlir13OperationNameELb1EEE", !44, i64 0}
!46 = !{!"_ZTSN4llvm15SmallVectorImplIN4mlir13OperationNameEEE", !45, i64 0}
!47 = !{!"_ZTSN4llvm18SmallVectorStorageIN4mlir13OperationNameELj2EEE", !5, i64 0}
!48 = !{!"_ZTSN4llvm11SmallVectorIN4mlir13OperationNameELj2EEE", !46, i64 0, !47, i64 16}
!49 = !{!"p1 omnipotent char", !9, i64 0}
!50 = !{!"long", !5, i64 0}
!51 = !{!"_ZTSN4llvm9StringRefE", !49, i64 0, !50, i64 8}
!52 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_9StringRefEvEE", !21, i64 0}
!53 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EEE", !52, i64 0}
!54 = !{!"_ZTSN4llvm15SmallVectorImplINS_9StringRefEEE", !53, i64 0}
!55 = !{!"_ZTSN4llvm11SmallVectorINS_9StringRefELj0EEE", !54, i64 0}
!56 = !{!"_ZTSN4mlir7PatternE", !9, i64 0, !39, i64 8, !41, i64 12, !43, i64 16, !48, i64 24, !51, i64 56, !55, i64 72}
!57 = !{!"_ZTSN4mlir14RewritePatternE", !56, i64 8}
!58 = !{!"_ZTSN4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6vector12InterleaveOpEEE", !57, i64 0}
!59 = !{!"_ZTSN4mlir16OpRewritePatternINS_6vector12InterleaveOpEEE", !58, i64 0}
!60 = !{!"_ZTSN12_GLOBAL__N_118UnrollInterleaveOpE", !59, i64 0, !50, i64 96}
!61 = !{!60, !50, i64 96}
!62 = !{!50, !50, i64 0}
!63 = !{!49, !49, i64 0}
!64 = !{!21, !6, i64 8}
!65 = !{!21, !6, i64 12}
!66 = !{!12, !11, i64 8}
!67 = !{!12, !11, i64 16}
!68 = !{!"p1 _ZTSN4mlir14RewritePatternE", !9, i64 0}
!69 = !{!"_ZTSSt10_Head_baseILm0EPN4mlir14RewritePatternELb0EE", !68, i64 0}
!70 = !{!69, !68, i64 0}
!71 = !{!12, !11, i64 0}
!72 = !{!68, !68, i64 0}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!"_ZTSN4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6vector14DeinterleaveOpEEE", !57, i64 0}
!77 = !{!"_ZTSN4mlir16OpRewritePatternINS_6vector14DeinterleaveOpEEE", !76, i64 0}
!78 = !{!"_ZTSN12_GLOBAL__N_120UnrollDeinterleaveOpE", !77, i64 0, !50, i64 96}
!79 = !{!78, !50, i64 96}
!80 = !{!21, !9, i64 0}
!81 = !{!"bool", !5, i64 0}
!82 = !{!"_ZTSSt22_Optional_payload_baseIN4mlir21StaticTileOffsetRangeEE", !5, i64 0, !81, i64 616}
!83 = !{!82, !81, i64 616}
!84 = !{i8 0, i8 2}
!85 = !{}
!86 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIlvEE", !21, i64 0}
!87 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIlLb1EEE", !86, i64 0}
!88 = !{!"_ZTSN4llvm15SmallVectorImplIlEE", !87, i64 0}
!89 = !{!"_ZTSN4llvm18SmallVectorStorageIlLj6EEE", !5, i64 0}
!90 = !{!"_ZTSN4llvm11SmallVectorIlLj6EEE", !88, i64 0, !89, i64 16}
!91 = !{!"_ZTSN4mlir6detail19TileOffsetRangeImplE", !90, i64 0, !90, i64 64, !90, i64 128, !50, i64 192}
!92 = !{!"_ZTSN4mlir6detail23TileOffsetRangeIteratorIlEE", !91, i64 0, !50, i64 200}
!93 = !{!92, !50, i64 200}
!94 = !{!"p1 _ZTSN4mlir9OpOperandE", !9, i64 0}
!95 = !{!"_ZTSN4mlir6detail14OperandStorageE", !6, i64 0, !6, i64 3, !6, i64 4, !94, i64 8}
!96 = !{!95, !94, i64 8}
!97 = !{!"p1 _ZTSN4mlir6detail9ValueImplE", !9, i64 0}
!98 = !{!97, !97, i64 0}
!99 = !{!81, !81, i64 0}
!100 = distinct !{!100, !"_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_118UnrollInterleaveOpEJRlPNS_11MLIRContextERNS_14PatternBenefitEEEESt10unique_ptrIT_St14default_deleteISA_EEDpOT0_"}
!101 = distinct !{!101, !100, !"_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_118UnrollInterleaveOpEJRlPNS_11MLIRContextERNS_14PatternBenefitEEEESt10unique_ptrIT_St14default_deleteISA_EEDpOT0_: argument 0"}
!102 = distinct !{!102, !"_ZSt11make_uniqueIN12_GLOBAL__N_118UnrollInterleaveOpEJRlPN4mlir11MLIRContextERNS3_14PatternBenefitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!103 = distinct !{!103, !102, !"_ZSt11make_uniqueIN12_GLOBAL__N_118UnrollInterleaveOpEJRlPN4mlir11MLIRContextERNS3_14PatternBenefitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!104 = distinct !{!104, !"_ZSt19__relocate_object_aISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!105 = distinct !{!105, !104, !"_ZSt19__relocate_object_aISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!106 = distinct !{!106, !104, !"_ZSt19__relocate_object_aISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!107 = distinct !{!107, !"LVerDomain"}
!108 = distinct !{!108, !107}
!109 = distinct !{!109, !107}
!110 = distinct !{!110, !73, !74, !75}
!111 = distinct !{!111, !73, !74}
!112 = distinct !{!112, !"_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_120UnrollDeinterleaveOpEJRlPNS_11MLIRContextERNS_14PatternBenefitEEEESt10unique_ptrIT_St14default_deleteISA_EEDpOT0_"}
!113 = distinct !{!113, !112, !"_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_120UnrollDeinterleaveOpEJRlPNS_11MLIRContextERNS_14PatternBenefitEEEESt10unique_ptrIT_St14default_deleteISA_EEDpOT0_: argument 0"}
!114 = distinct !{!114, !"_ZSt11make_uniqueIN12_GLOBAL__N_120UnrollDeinterleaveOpEJRlPN4mlir11MLIRContextERNS3_14PatternBenefitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!115 = distinct !{!115, !114, !"_ZSt11make_uniqueIN12_GLOBAL__N_120UnrollDeinterleaveOpEJRlPN4mlir11MLIRContextERNS3_14PatternBenefitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!116 = distinct !{!116, !"_ZSt19__relocate_object_aISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!117 = distinct !{!117, !116, !"_ZSt19__relocate_object_aISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!118 = distinct !{!118, !116, !"_ZSt19__relocate_object_aISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!119 = distinct !{!119, !"LVerDomain"}
!120 = distinct !{!120, !119}
!121 = distinct !{!121, !119}
!122 = distinct !{!122, !73, !74, !75}
!123 = distinct !{!123, !73, !74}
!124 = !{!103, !101}
!125 = !{!101}
!126 = !{!105}
!127 = !{!106}
!128 = !{!106, !108}
!129 = !{!105, !109}
!130 = !{!115, !113}
!131 = !{!113}
!132 = !{!117}
!133 = !{!118}
!134 = !{!118, !120}
!135 = !{!117, !121}
!136 = distinct !{!136, !"_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_119InterleaveToShuffleEJPNS_11MLIRContextERNS_14PatternBenefitEEEESt10unique_ptrIT_St14default_deleteIS9_EEDpOT0_"}
!137 = distinct !{!137, !136, !"_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_119InterleaveToShuffleEJPNS_11MLIRContextERNS_14PatternBenefitEEEESt10unique_ptrIT_St14default_deleteIS9_EEDpOT0_: argument 0"}
!138 = distinct !{!138, !"_ZSt11make_uniqueIN12_GLOBAL__N_119InterleaveToShuffleEJPN4mlir11MLIRContextERNS2_14PatternBenefitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!139 = distinct !{!139, !138, !"_ZSt11make_uniqueIN12_GLOBAL__N_119InterleaveToShuffleEJPN4mlir11MLIRContextERNS2_14PatternBenefitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!140 = distinct !{!140, !"_ZSt19__relocate_object_aISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!141 = distinct !{!141, !140, !"_ZSt19__relocate_object_aISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!142 = distinct !{!142, !140, !"_ZSt19__relocate_object_aISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!143 = distinct !{!143, !"LVerDomain"}
!144 = distinct !{!144, !143}
!145 = distinct !{!145, !143}
!146 = distinct !{!146, !73, !74, !75}
!147 = distinct !{!147, !73, !74}
!148 = !{!139, !137}
!149 = !{!137}
!150 = !{!141}
!151 = !{!142}
!152 = !{!142, !144}
!153 = !{!141, !145}
!154 = distinct !{!154, !"_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_121DeinterleaveToShuffleEJPNS_11MLIRContextERNS_14PatternBenefitEEEESt10unique_ptrIT_St14default_deleteIS9_EEDpOT0_"}
!155 = distinct !{!155, !154, !"_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_121DeinterleaveToShuffleEJPNS_11MLIRContextERNS_14PatternBenefitEEEESt10unique_ptrIT_St14default_deleteIS9_EEDpOT0_: argument 0"}
!156 = distinct !{!156, !"_ZSt11make_uniqueIN12_GLOBAL__N_121DeinterleaveToShuffleEJPN4mlir11MLIRContextERNS2_14PatternBenefitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!157 = distinct !{!157, !156, !"_ZSt11make_uniqueIN12_GLOBAL__N_121DeinterleaveToShuffleEJPN4mlir11MLIRContextERNS2_14PatternBenefitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!158 = distinct !{!158, !"_ZSt19__relocate_object_aISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!159 = distinct !{!159, !158, !"_ZSt19__relocate_object_aISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!160 = distinct !{!160, !158, !"_ZSt19__relocate_object_aISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!161 = distinct !{!161, !"LVerDomain"}
!162 = distinct !{!162, !161}
!163 = distinct !{!163, !161}
!164 = distinct !{!164, !73, !74, !75}
!165 = distinct !{!165, !73, !74}
!166 = !{!157, !155}
!167 = !{!155}
!168 = !{!159}
!169 = !{!160}
!170 = !{!160, !162}
!171 = !{!159, !163}
!172 = distinct !{!172, !"_ZNK4mlir21StaticTileOffsetRange5beginEv"}
!173 = distinct !{!173, !172, !"_ZNK4mlir21StaticTileOffsetRange5beginEv: argument 0"}
!174 = distinct !{!174, !"_ZNK4mlir21StaticTileOffsetRange3endEv"}
!175 = distinct !{!175, !174, !"_ZNK4mlir21StaticTileOffsetRange3endEv: argument 0"}
!176 = !{!173}
!177 = !{!175}
!178 = !{!91, !50, i64 192}
!179 = distinct !{!179, !"_ZNK4mlir21StaticTileOffsetRange5beginEv"}
!180 = distinct !{!180, !179, !"_ZNK4mlir21StaticTileOffsetRange5beginEv: argument 0"}
!181 = distinct !{!181, !"_ZNK4mlir21StaticTileOffsetRange3endEv"}
!182 = distinct !{!182, !181, !"_ZNK4mlir21StaticTileOffsetRange3endEv: argument 0"}
!183 = !{!180}
!184 = !{!182}
!185 = distinct !{!185, !"_ZN4llvm13map_to_vectorIRNS_10iota_rangeIlEEZNK12_GLOBAL__N_119InterleaveToShuffle15matchAndRewriteEN4mlir6vector12InterleaveOpERNS6_15PatternRewriterEEUllE_EEDaOT_OT0_"}
!186 = distinct !{!186, !185, !"_ZN4llvm13map_to_vectorIRNS_10iota_rangeIlEEZNK12_GLOBAL__N_119InterleaveToShuffle15matchAndRewriteEN4mlir6vector12InterleaveOpERNS6_15PatternRewriterEEUllE_EEDaOT_OT0_: argument 0"}
!187 = distinct !{!187, !"_ZN4llvm9to_vectorINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIlLb0EEEZNK12_GLOBAL__N_119InterleaveToShuffle15matchAndRewriteEN4mlir6vector12InterleaveOpERNS8_15PatternRewriterEEUllE_lEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISP_EE5valueEEEOSJ_"}
!188 = distinct !{!188, !187, !"_ZN4llvm9to_vectorINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIlLb0EEEZNK12_GLOBAL__N_119InterleaveToShuffle15matchAndRewriteEN4mlir6vector12InterleaveOpERNS8_15PatternRewriterEEUllE_lEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISP_EE5valueEEEOSJ_: argument 0"}
!189 = distinct !{!189, !73, !74, !75}
!190 = distinct !{!190, !73, !75, !74}
!191 = distinct !{null}
!192 = !{!188, !186}
!193 = distinct !{!193, !"_ZN4llvm13map_to_vectorIRNS_10iota_rangeIlEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE_EEDaOT_OT0_"}
!194 = distinct !{!194, !193, !"_ZN4llvm13map_to_vectorIRNS_10iota_rangeIlEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE_EEDaOT_OT0_: argument 0"}
!195 = distinct !{!195, !"_ZN4llvm9to_vectorINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIlLb0EEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS8_15PatternRewriterEEUllE_lEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISP_EE5valueEEEOSJ_"}
!196 = distinct !{!196, !195, !"_ZN4llvm9to_vectorINS_14iterator_rangeINS_15mapped_iteratorINS_6detail15SafeIntIteratorIlLb0EEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS8_15PatternRewriterEEUllE_lEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISP_EE5valueEEEOSJ_: argument 0"}
!197 = distinct !{!197, !73, !74, !75}
!198 = distinct !{!198, !73, !75, !74}
!199 = distinct !{!199, !"_ZN4llvm13map_to_vectorIRNS_11SmallVectorIlLj6EEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE0_EEDaOT_OT0_"}
!200 = distinct !{!200, !199, !"_ZN4llvm13map_to_vectorIRNS_11SmallVectorIlLj6EEEZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE0_EEDaOT_OT0_: argument 0"}
!201 = distinct !{!201, !"_ZN4llvm9to_vectorINS_14iterator_rangeINS_15mapped_iteratorIPlZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE0_lEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISN_EE5valueEEEOSH_"}
!202 = distinct !{!202, !201, !"_ZN4llvm9to_vectorINS_14iterator_rangeINS_15mapped_iteratorIPlZNK12_GLOBAL__N_121DeinterleaveToShuffle15matchAndRewriteEN4mlir6vector14DeinterleaveOpERNS6_15PatternRewriterEEUllE0_lEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISN_EE5valueEEEOSH_: argument 0"}
!203 = distinct !{!203, !73, !74, !75}
!204 = distinct !{!204, !73, !74}
!205 = !{!196, !194}
!206 = !{!200}
!207 = !{!202, !200}
end_hunk_0
