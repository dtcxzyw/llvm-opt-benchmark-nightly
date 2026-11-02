Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopEmitter?download=true
inline.NumInlined: 4607
inline.NumDeleted: 2561
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4mlir13sparse_tensor14genCoIterationERNS_9OpBuilderENS_8LocationEN4llvm8ArrayRefIPNS0_14SparseIteratorEEENS4_15MutableArrayRefINS_5ValueEEESA_b:bb.a
  br label %bb.r

bb.r:                                             ; preds = %_ZN4mlir13sparse_tensor14SparseIterator12genWhileCondERNS_9OpBuilderENS_8LocationENS_10ValueRangeE.exit, %bb.q
  %.sroa.041.0 = phi ptr [ %i.gp, %bb.q ], [ %i.gn, %_ZN4mlir13sparse_tensor14SparseIterator12genWhileCondERNS_9OpBuilderENS_8LocationENS_10ValueRangeE.exit ] ; 2 uses
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %25, align 8
  store i64 %i.gm, ptr %.sroa.247.0..sroa_idx, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %.093191, i64 8 ; 2 uses
  %.not97 = icmp eq ptr %i.gq, %i.m
  br i1 %.not97, label %._crit_edge193, label %bb.o

._crit_edge198:                                   ; preds = %_ZN4mlir13sparse_tensor14SparseIterator12linkNewScopeENS_10ValueRangeE.exit, %._crit_edge193
  %i.gr = and i64 %5, 4294967295
  %.not209 = icmp eq i64 %i.gr, 0
  br i1 %.not209, label %._crit_edge202, label %.lr.ph201.preheader

.lr.ph201.preheader:                              ; preds = %._crit_edge198
  %wide.trip.count = and i64 %5, 4294967295
  br label %.lr.ph201

bb.s:                                             ; preds = %.lr.ph197, %_ZN4mlir13sparse_tensor14SparseIterator12linkNewScopeENS_10ValueRangeE.exit
  %.096195 = phi ptr [ %2, %.lr.ph197 ], [ %i.hm, %_ZN4mlir13sparse_tensor14SparseIterator12linkNewScopeENS_10ValueRangeE.exit ] ; 2 uses
  %i.gs = load ptr, ptr %.096195, align 8, !tbaa !160 ; 4 uses
  %.sroa.025.0.copyload = load i64, ptr %27, align 8 ; 3 uses
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %.sroa.025.0.copyload, ptr %9, align 8
  store i64 %.sroa.2.0.copyload, ptr %i.fs, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 104 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !249 ; 2 uses
  %i.gv = zext i32 %i.gu to i64                   ; 2 uses
  %..i.i123 = call i64 @llvm.umin.i64(i64 %i.gv, i64 %.sroa.2.0.copyload) ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 112
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !250, !nonnull !196, !align !251
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !180
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.025.0.copyload, ptr %8, align 8
  store i64 0, ptr %i.ft, align 8
  %.not.i124 = icmp eq i64 %..i.i123, 0
  br i1 %.not.i124, label %_ZN4mlir13sparse_tensor14SparseIterator4seekENS_10ValueRangeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gz = phi i64 [ %i.hc, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.s ]
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.gy, %bb.s ] ; 2 uses
  %.045.i.i.i.i.i.i.i.i = phi i64 [ %i.he, %.lr.ph.i.i.i.i.i.i.i.i ], [ %..i.i123, %bb.s ] ; 2 uses
  %i.ha = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.gz) #20
  store ptr %i.ha, ptr %.06.i.i.i.i.i.i.i.i, align 8, !tbaa !109
  %i.hb = load i64, ptr %i.ft, align 8, !tbaa !256
  %i.hc = add nsw i64 %i.hb, 1                    ; 2 uses
  store i64 %i.hc, ptr %i.ft, align 8, !tbaa !256
  %i.hd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 8
  %i.he = add nsw i64 %.045.i.i.i.i.i.i.i.i, -1
  %i.hf = icmp samesign ugt i64 %.045.i.i.i.i.i.i.i.i, 1
  br i1 %i.hf, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN4mlir13sparse_tensor14SparseIterator4seekENS_10ValueRangeE.exit.loopexit.i, !llvm.loop !12

_ZN4mlir13sparse_tensor14SparseIterator4seekENS_10ValueRangeE.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pre.i125 = load i32, ptr %i.gt, align 8, !tbaa !249 ; 2 uses
  %.pre3.i = zext i32 %.pre.i125 to i64
  br label %_ZN4mlir13sparse_tensor14SparseIterator4seekENS_10ValueRangeE.exit.i

_ZN4mlir13sparse_tensor14SparseIterator4seekENS_10ValueRangeE.exit.i: ; preds = %_ZN4mlir13sparse_tensor14SparseIterator4seekENS_10ValueRangeE.exit.loopexit.i, %bb.s
  %.pre-phi.i126 = phi i64 [ %.pre3.i, %_ZN4mlir13sparse_tensor14SparseIterator4seekENS_10ValueRangeE.exit.loopexit.i ], [ %i.gv, %bb.s ] ; 2 uses
  %i.hg = phi i32 [ %.pre.i125, %_ZN4mlir13sparse_tensor14SparseIterator4seekENS_10ValueRangeE.exit.loopexit.i ], [ %i.gu, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gs, i64 96
  store i64 0, ptr %i.hh, align 8, !tbaa !109
  %i.hi = icmp eq i32 %i.hg, 0
  br i1 %i.hi, label %_ZN4mlir13sparse_tensor14SparseIterator12linkNewScopeENS_10ValueRangeE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4mlir13sparse_tensor14SparseIterator4seekENS_10ValueRangeE.exit.i
  %i.hj = call i64 @_ZN4mlir10ValueRange11offset_baseERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef %.pre-phi.i126) #20
  br label %_ZN4mlir13sparse_tensor14SparseIterator12linkNewScopeENS_10ValueRangeE.exit

_ZN4mlir13sparse_tensor14SparseIterator12linkNewScopeENS_10ValueRangeE.exit: ; preds = %_ZN4mlir13sparse_tensor14SparseIterator4seekENS_10ValueRangeE.exit.i, %bb.t
  %.sroa.0.0.i.i.i.i127 = phi i64 [ %i.hj, %bb.t ], [ %.sroa.025.0.copyload, %_ZN4mlir13sparse_tensor14SparseIterator4seekENS_10ValueRangeE.exit.i ]
  %i.hk = sub i64 %.sroa.2.0.copyload, %.pre-phi.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store i64 %.sroa.0.0.i.i.i.i127, ptr %27, align 8
  store i64 %i.hk, ptr %.sroa.2.0..sroa_idx, align 8
  %i.hl = call ptr @_ZN4mlir13sparse_tensor14SparseIterator5derefERNS_9OpBuilderENS_8LocationE(ptr noundef nonnull align 8 dereferenceable(120) %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1) #20 ; 0 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.096195, i64 8 ; 2 uses
  %.not98 = icmp eq ptr %i.hm, %i.m
  br i1 %.not98, label %._crit_edge198, label %bb.s

._crit_edge202:                                   ; preds = %.lr.ph201, %._crit_edge198
  br i1 %.not183, label %.preheader, label %bb.w

.preheader:                                       ; preds = %._crit_edge202
  br i1 %.not187, label %.loopexit, label %.lr.ph206

.lr.ph201:                                        ; preds = %.lr.ph201.preheader, %.lr.ph201
  %indvars.iv = phi i64 [ 0, %.lr.ph201.preheader ], [ %indvars.iv.next, %.lr.ph201 ] ; 3 uses
  %i.hn = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %27, i64 noundef %indvars.iv) #20
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store ptr %i.hn, ptr %i.ho, align 8, !tbaa !109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge202, label %.lr.ph201, !llvm.loop !451

.lr.ph206:                                        ; preds = %.preheader, %bb.v
  %.094205 = phi ptr [ %i.hw, %bb.v ], [ %2, %.preheader ] ; 2 uses
  %.sroa.0133.0204 = phi ptr [ %.sroa.0133.1, %bb.v ], [ null, %.preheader ] ; 3 uses
  %i.hp = load ptr, ptr %.094205, align 8, !tbaa !160
  %.not185 = icmp eq ptr %.sroa.0133.0204, null
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i130 = load ptr, ptr %i.hq, align 8, !tbaa !109 ; 2 uses
  br i1 %.not185, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph206
  %i.hr = call ptr @_ZN4mlir5arith6CmpIOp6createERNS_9OpBuilderENS_8LocationENS0_13CmpIPredicateENS_5ValueES6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 noundef 6, ptr %.sroa.0.0.copyload.i130, ptr nonnull %.sroa.0133.0204) #20
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -16
  %i.ht = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i64 noundef 0) #20
  %.sroa.0.0.copyload.i129 = load ptr, ptr %i.hq, align 8, !tbaa !109
  %i.hu = call ptr @_ZN4mlir5arith8SelectOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %i.ht, ptr %.sroa.0.0.copyload.i129, ptr nonnull %.sroa.0133.0204) #20
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -16
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph206, %bb.u
  %.sroa.0133.1 = phi ptr [ %i.hv, %bb.u ], [ %.sroa.0.0.copyload.i130, %.lr.ph206 ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.094205, i64 8 ; 2 uses
  %.not99 = icmp eq ptr %i.hw, %i.m
  br i1 %.not99, label %.loopexit, label %.lr.ph206

bb.w:                                             ; preds = %._crit_edge202
  %i.hx = call { ptr, i64 } @_ZN4mlir3scf7WhileOp17getAfterArgumentsEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #20 ; 2 uses
  %i.hy = extractvalue { ptr, i64 } %i.hx, 0
  %i.hz = extractvalue { ptr, i64 } %i.hx, 1
  %i.ia = getelementptr [8 x i8], ptr %i.hy, i64 %i.hz
  %i.ib = getelementptr i8, ptr %i.ia, i64 -8
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !109
  %i.id = inttoptr i64 %i.ic to ptr
  br label %.loopexit

.loopexit:                                        ; preds = %bb.v, %.preheader, %bb.w
  %.sroa.0133.2 = phi ptr [ %i.id, %bb.w ], [ null, %.preheader ], [ %.sroa.0133.1, %bb.v ]
  %i.ie = load ptr, ptr %19, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  %i.if = load ptr, ptr %22, align 8, !tbaa !180  ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.cc
  br i1 %i.ig, label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.if) #20
  br label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir8LocationELj6EED2Ev.exit: ; preds = %.loopexit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.ih = load ptr, ptr %15, align 8, !tbaa !180  ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.b
  br i1 %i.ii, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EED2Ev.exit
  call void @free(ptr noundef %i.ih) #20
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.ie, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.0133.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir13sparse_tensor11LoopEmitter23shouldIteratedByForLoopEN4llvm8ArrayRefIPNS0_14SparseIteratorEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(280) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ugt i64 %2, 1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 1
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !160    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(120) %i.c) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN4mlir13sparse_tensor11LoopEmitter27enterCurrentCoIterationCaseERNS_9OpBuilderENS_8LocationENS0_9I64BitSetEjN4llvm15MutableArrayRefINS_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, i64 %3, i32 noundef %4, ptr nofree noundef readonly byval(%"class.llvm::MutableArrayRef") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %7 = alloca %"class.mlir::ArrayAttr", align 8   ; 4 uses
  %8 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  %9 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %10 = alloca %"class.mlir::sparse_tensor::CoIterateOp", align 8 ; 18 uses
  %11 = alloca %"class.llvm::SmallVector.501", align 8 ; 10 uses
  %12 = alloca %"class.mlir::ArrayAttr", align 8  ; 5 uses
  %13 = alloca %"class.mlir::TypeRange", align 8  ; 5 uses
  %14 = alloca %"class.mlir::ValueTypeRange", align 8 ; 4 uses
  %15 = alloca %"class.mlir::OperandRange", align 8 ; 5 uses
  %16 = alloca %"class.llvm::SmallVector.533", align 8 ; 16 uses
  %17 = alloca %"class.mlir::sparse_tensor::IterSpaceType", align 8 ; 4 uses
  %18 = alloca %"class.llvm::SmallVector.546", align 8 ; 15 uses
  %19 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  %20 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %21 = alloca %"class.mlir::ValueRange", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !275
  store ptr %i.d, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.e = call ptr @_ZN4mlir13sparse_tensor11CoIterateOp8getCasesEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  store ptr %i.e, ptr %12, align 8
  %i.f = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #20, !noalias !470
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 3 uses
  %i.h = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #20, !noalias !470 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.l, ptr %11, align 8, !tbaa !180
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i32 0, ptr %i.m, align 8, !tbaa !181
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 6, ptr %i.n, align 4, !tbaa !182
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = ptrtoint ptr %i.g to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 3 uses
  %i.s = icmp ugt i64 %i.r, 6
  br i1 %i.s, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull %i.l, i64 noundef %i.r, i64 noundef 8) #20
  %.pre.i.i = load i32, ptr %i.m, align 8, !tbaa !181 ; 2 uses
  %.pre18.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi.i.i = phi i64 [ 0, %bb.a ], [ %.pre18.i.i, %bb.b ]
  %i.t = phi i32 [ 0, %bb.a ], [ %.pre.i.i, %bb.b ]
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.g, %i.k
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2INS1_9ArrayAttr19attr_value_iteratorIS2_EEEERKNS_14iterator_rangeIT_EE.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i
  %i.u = load ptr, ptr %11, align 8, !tbaa !180
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.05.09.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.05.09.i.i.i.i.i.i, align 8, !tbaa !213
  %i.w = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i to i64
  store i64 %i.w, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !213
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2INS1_9ArrayAttr19attr_value_iteratorIS2_EEEERKNS_14iterator_rangeIT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !459

_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2INS1_9ArrayAttr19attr_value_iteratorIS2_EEEERKNS_14iterator_rangeIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE7reserveEm.exit.i.i
  %i.z = trunc i64 %i.r to i32
  %i.aa = add i32 %i.t, %i.z
  store i32 %i.aa, ptr %i.m, align 8, !tbaa !181
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.ab = call ptr @_ZN4mlir7Builder17getI64IntegerAttrEl(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %3) #20
  %i.ac = zext i32 %4 to i64                      ; 6 uses
  %i.ad = load ptr, ptr %11, align 8, !tbaa !180  ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !213
  %i.af = load i32, ptr %i.m, align 8, !tbaa !181
  %i.ag = zext i32 %i.af to i64
  %i.ah = call ptr @_ZN4mlir7Builder12getArrayAttrEN4llvm8ArrayRefINS_9AttributeEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %i.ad, i64 %i.ag) #20
  %i.ai = load ptr, ptr %10, align 8, !tbaa !190  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.ak, 16777215
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.am = lshr i32 %i.ak, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.am, 1
  %i.an = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.an
  store ptr %i.ah, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %10, align 8, !tbaa !190  ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 44
  %i.ar = load i32, ptr %i.aq, align 4            ; 3 uses
  %i.as = and i32 %i.ar, 8388607
  %i.at = icmp ne i32 %i.as, 0
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.av = lshr i32 %i.ar, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.av, 1
  %i.aw = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.aw
  %i.ay = lshr i32 %i.ar, 21
  %i.az = and i32 %i.ay, 2040
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !210
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %i.ac ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.bh = call i64 @_ZN4mlir13sparse_tensor11CoIterateOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1) #20 ; 3 uses
  %i.bi = load ptr, ptr %10, align 8, !tbaa !190  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 44
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = and i32 %i.bk, 8388608
  %.not.i.i.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir13sparse_tensor11CoIterateOp11getInitArgsEv.exit, label %bb.c, !prof !191

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2INS1_9ArrayAttr19attr_value_iteratorIS2_EEEERKNS_14iterator_rangeIT_EE.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !194
  br label %_ZN4mlir13sparse_tensor11CoIterateOp11getInitArgsEv.exit

_ZN4mlir13sparse_tensor11CoIterateOp11getInitArgsEv.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2INS1_9ArrayAttr19attr_value_iteratorIS2_EEEERKNS_14iterator_rangeIT_EE.exit, %bb.c
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.bn, %bb.c ], [ null, %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2INS1_9ArrayAttr19attr_value_iteratorIS2_EEEERKNS_14iterator_rangeIT_EE.exit ]
  %i.bo = and i64 %i.bh, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.bh, 32
  %i.bp = add i64 %.sroa.5.0.extract.shift.i.i, %i.bh
  %i.bq = and i64 %i.bp, 4294967295
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.bo
  %i.bs = sub nsw i64 %i.bq, %i.bo
  store ptr %i.br, ptr %15, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.bs, ptr %i.bt, align 8
  call void @_ZNK4mlir12OperandRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %.sroa.0149.0.copyload = load ptr, ptr %14, align 8
  %.sroa.4150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.4150.0.copyload = load i64, ptr %.sroa.4150.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 24
  %.sroa.5152.0.copyload = load i64, ptr %.sroa.5152.0..sroa_idx, align 8
  %i.bu = getelementptr inbounds [32 x i8], ptr %.sroa.0149.0.copyload, i64 %.sroa.4150.0.copyload
  %i.bv = sub nsw i64 %.sroa.5152.0.copyload, %.sroa.4150.0.copyload
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %i.bu, i64 %i.bv) #20
  %i.bw = load i64, ptr %9, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.by = load i64, ptr %i.bx, align 8
  call void @_ZN4mlir9TypeRangeC2ENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 %i.bw, i64 %i.by) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.bz = call i64 @_ZN4mlir13sparse_tensor11CoIterateOp14getCrdUsedLvlsEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #20 ; 2 uses
  %i.ca = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bz) ; 13 uses
  %i.cb = trunc nuw nsw i64 %i.ca to i32          ; 2 uses
  %i.cc = call ptr @_ZN4mlir7Builder12getIndexTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.cd, ptr %16, align 8, !tbaa !180
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 10 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 3 uses
  store i32 6, ptr %i.cf, align 4, !tbaa !182
  %i.cg = icmp samesign ugt i64 %i.ca, 6
  br i1 %i.cg, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZN4mlir13sparse_tensor11CoIterateOp11getInitArgsEv.exit
  store i32 0, ptr %i.ce, align 8, !tbaa !181
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull %i.cd, i64 noundef %i.ca, i64 noundef 8) #20
  %i.ch = load ptr, ptr %16, align 8, !tbaa !180  ; 2 uses
  %i.ci = ptrtoint ptr %i.cc to i64               ; 2 uses
  %n.vec193 = and i64 %i.ca, 124                  ; 3 uses
  %i.cj = shl nuw nsw i64 %n.vec193, 3
  %i.ck = getelementptr i8, ptr %i.ch, i64 %i.cj
  %i.cl = and i64 %i.ca, 3
  %broadcast.splatinsert194 = insertelement <2 x i64> poison, i64 %i.ci, i64 0
  %broadcast.splat195 = shufflevector <2 x i64> %broadcast.splatinsert194, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %.lr.ph.preheader.i.i.i.i.i.i
  %index197 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i ], [ %index.next199, %vector.body196 ] ; 2 uses
  %i.cm = shl i64 %index197, 3
  %next.gep198 = getelementptr i8, ptr %i.ch, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep198, i64 16
  store <2 x i64> %broadcast.splat195, ptr %next.gep198, align 8, !tbaa !471
  store <2 x i64> %broadcast.splat195, ptr %i.cn, align 8, !tbaa !471
  %index.next199 = add nuw i64 %index197, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next199, %n.vec193
  br i1 %i.co, label %middle.block200, label %vector.body196, !llvm.loop !460

middle.block200:                                  ; preds = %vector.body196
  %cmp.n201 = icmp eq i64 %i.ca, %n.vec193
  br i1 %cmp.n201, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i39:                             ; preds = %middle.block200, %.lr.ph.i.i.i.i.i.i39
  %.09.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i39 ], [ %i.ck, %middle.block200 ] ; 2 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i.i39 ], [ %i.cl, %middle.block200 ]
  store i64 %i.ci, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !471
  %i.cp = add nsw i64 %.068.i.i.i.i.i.i, -1       ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i40 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i.i.i.i40, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i39, !llvm.loop !461

_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %_ZN4mlir13sparse_tensor11CoIterateOp11getInitArgsEv.exit
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.cr = ptrtoint ptr %i.cc to i64               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ca, 2
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.cs = and i64 %i.ca, 6                        ; 4 uses
  %22 = shl nuw nsw i64 %i.cs, 3
  %23 = getelementptr i8, ptr %i.cd, i64 %22
  %24 = and i64 %i.ca, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cr, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  store <2 x i64> %broadcast.splat, ptr %i.cd, align 8, !tbaa !471
  %cmp.n.a = icmp eq i64 %i.cs, 2
  br i1 %cmp.n.a, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %16, i64 32
  store <2 x i64> %broadcast.splat, ptr %next.gep.1, align 8, !tbaa !471
  %25 = icmp eq i64 %i.cs, 4
  br i1 %25, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %16, i64 48
  store <2 x i64> %broadcast.splat, ptr %next.gep.2, align 8, !tbaa !471
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.body
  %cmp.n = icmp eq i64 %i.ca, %i.cs
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.cd, %.lr.ph.preheader.i.i.i.i.i ], [ %23, %middle.block ]
  %.068.i.i.i.i.i.ph = phi i64 [ %i.ca, %.lr.ph.preheader.i.i.i.i.i ], [ %24, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i ], [ %.068.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  store i64 %i.cr, ptr %.09.i.i.i.i.i, align 8, !tbaa !471
  %i.ct = add nsw i64 %.068.i.i.i.i.i, -1         ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i38 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i.i.i38, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !462

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i39, %middle.block200
  %.pre = load i32, ptr %i.cf, align 4, !tbaa !182
  %i.cv = zext i32 %.pre to i64
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.loopexit, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.cw = phi i64 [ 6, %_ZSt6fill_nIPN4mlir4TypeEmS1_ET_S3_T0_RKT1_.exit.i.i ], [ %i.cv, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit.loopexit ], [ 6, %middle.block ], [ 6, %.lr.ph.i.i.i.i.i ]
  store i32 %i.cb, ptr %i.ce, align 8, !tbaa !181
  %.sroa.0.0.copyload.i41 = load i64, ptr %13, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !266 ; 4 uses
  %i.cz = add i64 %i.cy, %i.ca                    ; 2 uses
  %i.da = icmp ugt i64 %i.cz, %i.cw
  br i1 %i.da, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull %i.cd, i64 noundef %i.cz, i64 noundef 8) #20
  %.pre.i = load i32, ptr %i.ce, align 8, !tbaa !181 ; 2 uses
  %.pre28.i = zext i32 %.pre.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit
  %.pre-phi.i = phi i64 [ %i.ca, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit ], [ %.pre28.i, %bb.d ]
  %i.db = phi i32 [ %i.cb, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EEC2EmRKS2_.exit ], [ %.pre.i, %bb.d ]
  %.not8.i.i.i.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not8.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEvEEvT_ST_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i
  %i.dc = load ptr, ptr %16, align 8, !tbaa !180
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.pre-phi.i
  br label %.lr.ph.i.i.i.i.i45

.lr.ph.i.i.i.i.i45:                               ; preds = %.lr.ph.i.i.i.i.i45, %.lr.ph.i.i.i.i.preheader.i
  %.010.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i45 ], [ %i.dd, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i45 ], [ 0, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %i.de = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %.sroa.0.0.copyload.i41, i64 noundef %.sroa.2.09.i.i.i.i.i) #20
  %i.df = ptrtoint ptr %i.de to i64
  store i64 %i.df, ptr %.010.i.i.i.i.i, align 8, !tbaa !471
  %i.dg = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i46 = icmp eq i64 %i.dg, %i.cy
  br i1 %.not.i.i.i.i.i46, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i45, !llvm.loop !463

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i45
  %.pre27.i = load i32, ptr %i.ce, align 8, !tbaa !181
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEvEEvT_ST_.exit

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEvEEvT_ST_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i
  %i.di = phi i32 [ %.pre27.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i ], [ %i.db, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i ]
  %i.dj = trunc i64 %i.cy to i32
  %i.dk = add i32 %i.di, %i.dj                    ; 2 uses
  store i32 %i.dk, ptr %i.ce, align 8, !tbaa !181
  %i.dl = icmp eq i64 %3, 0
  br i1 %i.dl, label %._crit_edge, label %_ZN4mlir13sparse_tensor11CoIterateOp13getIterSpacesEv.exit.lr.ph

_ZN4mlir13sparse_tensor11CoIterateOp13getIterSpacesEv.exit.lr.ph: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEvEEvT_ST_.exit
  %i.dm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %3, i1 true)
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %3, i1 true)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = xor i32 %i.dp, 63
  br label %_ZN4mlir13sparse_tensor11CoIterateOp13getIterSpacesEv.exit

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_.exit, %_ZN4llvm28const_set_bits_iterator_implIN4mlir13sparse_tensor9I64BitSetEEppEv.exit
  %.pre167 = load i32, ptr %i.ce, align 8, !tbaa !181
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEvEEvT_ST_.exit
  %i.dr = phi i32 [ %.pre167, %._crit_edge.loopexit ], [ %i.dk, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEvEEvT_ST_.exit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.ds = zext i32 %i.dr to i64                   ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.dt, ptr %18, align 8, !tbaa !180
  %i.du = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store i32 0, ptr %i.du, align 8, !tbaa !181
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 12
  store i32 6, ptr %i.dv, align 4, !tbaa !182
  %i.dw = icmp ugt i32 %i.dr, 6
  br i1 %i.dw, label %.lr.ph.preheader.i.i.i.i.i.i64, label %_ZSt6fill_nIPN4mlir8LocationEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i64:                   ; preds = %._crit_edge
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef nonnull %i.dt, i64 noundef %i.ds, i64 noundef 8) #20
  %i.dx = load ptr, ptr %18, align 8, !tbaa !180  ; 2 uses
  %i.dy = ptrtoint ptr %2 to i64                  ; 2 uses
  %n.vec204 = and i64 %i.ds, 4294967292           ; 3 uses
  %i.dz = shl nuw nsw i64 %n.vec204, 3
  %i.ea = getelementptr i8, ptr %i.dx, i64 %i.dz
  %i.eb = and i64 %i.ds, 3
  %broadcast.splatinsert205 = insertelement <2 x i64> poison, i64 %i.dy, i64 0
  %broadcast.splat206 = shufflevector <2 x i64> %broadcast.splatinsert205, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %.lr.ph.preheader.i.i.i.i.i.i64
  %index208 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i64 ], [ %index.next210, %vector.body207 ] ; 2 uses
  %i.ec = shl i64 %index208, 3
  %next.gep209 = getelementptr i8, ptr %i.dx, i64 %i.ec ; 2 uses
  %i.ed = getelementptr i8, ptr %next.gep209, i64 16
  store <2 x i64> %broadcast.splat206, ptr %next.gep209, align 8
  store <2 x i64> %broadcast.splat206, ptr %i.ed, align 8
  %index.next210 = add nuw i64 %index208, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next210, %n.vec204
  br i1 %i.ee, label %middle.block211, label %vector.body207, !llvm.loop !464

middle.block211:                                  ; preds = %vector.body207
  %cmp.n212 = icmp eq i64 %n.vec204, %i.ds
  br i1 %cmp.n212, label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i65

.lr.ph.i.i.i.i.i.i65:                             ; preds = %middle.block211, %.lr.ph.i.i.i.i.i.i65
  %.09.i.i.i.i.i.i66 = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i65 ], [ %i.ea, %middle.block211 ] ; 2 uses
  %.068.i.i.i.i.i.i67 = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i.i65 ], [ %i.eb, %middle.block211 ]
  store i64 %i.dy, ptr %.09.i.i.i.i.i.i66, align 8
  %i.ef = add nsw i64 %.068.i.i.i.i.i.i67, -1     ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i66, i64 8
  %.not.i.i.i.i.i.i68 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i.i.i.i.i68, label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i65, !llvm.loop !465

_ZSt6fill_nIPN4mlir8LocationEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %._crit_edge
  %.not.i58 = icmp eq i32 %i.dr, 0
  br i1 %.not.i58, label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i.i.i59

.lr.ph.preheader.i.i.i.i.i59:                     ; preds = %_ZSt6fill_nIPN4mlir8LocationEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.eh = ptrtoint ptr %2 to i64                  ; 6 uses
  store i64 %i.eh, ptr %i.dt, align 8
  %.not.i.i.i.i.i63 = icmp eq i32 %i.dr, 1
  br i1 %.not.i.i.i.i.i63, label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i60.1

.lr.ph.i.i.i.i.i60.1:                             ; preds = %.lr.ph.preheader.i.i.i.i.i59
  %i.ei = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 %i.eh, ptr %i.ei, align 8
  %.not.i.i.i.i.i63.1 = icmp eq i32 %i.dr, 2
  br i1 %.not.i.i.i.i.i63.1, label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i60.2

.lr.ph.i.i.i.i.i60.2:                             ; preds = %.lr.ph.i.i.i.i.i60.1
  %i.ej = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %i.eh, ptr %i.ej, align 8
  %.not.i.i.i.i.i63.2 = icmp eq i32 %i.dr, 3
  br i1 %.not.i.i.i.i.i63.2, label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i60.3

.lr.ph.i.i.i.i.i60.3:                             ; preds = %.lr.ph.i.i.i.i.i60.2
  %i.ek = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i64 %i.eh, ptr %i.ek, align 8
  %.not.i.i.i.i.i63.3 = icmp eq i32 %i.dr, 4
  br i1 %.not.i.i.i.i.i63.3, label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i60.4

.lr.ph.i.i.i.i.i60.4:                             ; preds = %.lr.ph.i.i.i.i.i60.3
  %i.el = getelementptr inbounds nuw i8, ptr %18, i64 48
  store i64 %i.eh, ptr %i.el, align 8
  %.not.i.i.i.i.i63.4 = icmp eq i32 %i.dr, 5
  br i1 %.not.i.i.i.i.i63.4, label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i60.5

.lr.ph.i.i.i.i.i60.5:                             ; preds = %.lr.ph.i.i.i.i.i60.4
  %i.em = getelementptr inbounds nuw i8, ptr %18, i64 56
  store i64 %i.eh, ptr %i.em, align 8
  br label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EEC2EmRKS2_.exit

_ZN4llvm11SmallVectorIN4mlir8LocationELj6EEC2EmRKS2_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i59, %.lr.ph.i.i.i.i.i60.1, %.lr.ph.i.i.i.i.i60.2, %.lr.ph.i.i.i.i.i60.3, %.lr.ph.i.i.i.i.i60.4, %.lr.ph.i.i.i.i.i60.5, %.lr.ph.i.i.i.i.i.i65, %middle.block211, %_ZSt6fill_nIPN4mlir8LocationEmS1_ET_S3_T0_RKT1_.exit.i.i
  store i32 %i.dr, ptr %i.du, align 8, !tbaa !181
  %i.en = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22 ; 9 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.en, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.eo, align 8, !tbaa !487
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 40 ; 3 uses
  store ptr %i.ep, ptr %i.ep, align 8, !tbaa !276
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !211
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.er, i8 0, i64 24, i1 false)
  call void @_ZN4llvm12ilist_traitsIN4mlir5BlockEE13addNodeToListEPS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.bg, ptr noundef nonnull %i.en) #20
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 3 uses
  %i.et = load ptr, ptr %i.bg, align 8, !tbaa !276 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store ptr %i.bg, ptr %i.eu, align 8, !tbaa !211
  store ptr %i.et, ptr %i.es, align 8, !tbaa !276
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %i.es, ptr %i.ev, align 8, !tbaa !211
  store ptr %i.es, ptr %i.bg, align 8, !tbaa !276
  %i.ew = load ptr, ptr %16, align 8, !tbaa !180
  %i.ex = load i32, ptr %i.ce, align 8, !tbaa !181
  %i.ey = zext i32 %i.ex to i64
  call void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr %i.ew, i64 %i.ey) #20
  %i.ez = load ptr, ptr %18, align 8, !tbaa !180
  %i.fa = load i32, ptr %i.du, align 8, !tbaa !181
  %i.fb = zext i32 %i.fa to i64
  %i.fc = load i64, ptr %19, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = call { ptr, ptr } @_ZN4mlir5Block12addArgumentsENS_9TypeRangeEN4llvm8ArrayRefINS_8LocationEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.en, i64 %i.fc, i64 %i.fe, ptr %i.ez, i64 %i.fb) #20 ; 0 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !211 ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !211
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.fi, ptr %i.fl, align 8, !tbaa !237
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.fk, ptr %i.fm, align 8
  %i.fn = load ptr, ptr %10, align 8, !tbaa !190  ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 44
  %i.fp = load i32, ptr %i.fo, align 4            ; 3 uses
  %i.fq = and i32 %i.fp, 8388607
  %i.fr = icmp ne i32 %i.fq, 0
  call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  %i.ft = lshr i32 %i.fp, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.ft, 1
  %i.fu = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %i.fu
end_hunk_0
