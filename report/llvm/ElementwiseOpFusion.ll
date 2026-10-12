Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ElementwiseOpFusion?download=true
inline.NumInlined: 10184
inline.NumDeleted: 5613
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZL31generateCollapsedIndexingRegionN4mlir8LocationEPNS_5BlockERKN12_GLOBAL__N_114CollapsingInfoEN4llvm8ArrayRefINS_12OpFoldResultEEERNS_12RewriterBaseE:bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  store ptr %.sroa.04.0.copyload.i, ptr %i.ec, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.ab, ptr %5, align 8, !tbaa !35
  store i32 0, ptr %i.ac, align 8, !tbaa !44
  store i32 1, ptr %i.ad, align 4, !tbaa !36
  call void @_ZN4mlir9OpBuilder12createOrFoldINS_5arith7DivSIOpEJRNS_5ValueES5_EEEvRN4llvm15SmallVectorImplIS4_EENS_8LocationEDpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %0, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %i.ed = load ptr, ptr %5, align 8, !tbaa !35    ; 3 uses
  %.sroa.04.0.copyload.i32 = load ptr, ptr %i.ed, align 8, !tbaa !88
  %i.ee = icmp eq ptr %i.ed, %i.ab
  br i1 %i.ee, label %_ZN4mlir9OpBuilder12createOrFoldINS_5arith7DivSIOpEJRNS_5ValueES5_EEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeENS_8LocationEDpOT0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN4mlir5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS8_bEOT_DpOT0_.exit
  call void @free(ptr noundef nonnull %i.ed) #19
  br label %_ZN4mlir9OpBuilder12createOrFoldINS_5arith7DivSIOpEJRNS_5ValueES5_EEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeENS_8LocationEDpOT0_.exit

_ZN4mlir9OpBuilder12createOrFoldINS_5arith7DivSIOpEJRNS_5ValueES5_EEENSt9enable_ifIXclsrT_8hasTraitINS_7OpTrait9OneResultEEEES4_E4typeENS_8LocationEDpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN4mlir5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS8_bEOT_DpOT0_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  store ptr %.sroa.04.0.copyload.i32, ptr %10, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %.not67 = icmp eq ptr %i.az, %i.ao
  br i1 %.not67, label %._crit_edge, label %.lr.ph

._crit_edge81:                                    ; preds = %.lr.ph80, %._crit_edge76
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !186 ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %_ZN4llvm8DenseMapIjN4mlir5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge81
  %i.ei = load ptr, ptr %9, align 8, !tbaa !184
  %i.ej = zext i32 %i.eg to i64                   ; 2 uses
  %i.ek = shl nuw nsw i64 %i.ej, 4
  %i.el = add nuw nsw i64 %i.ej, 31
  %i.em = lshr i64 %i.el, 3
  %i.en = and i64 %i.em, 1073741820
  %i.eo = add nuw nsw i64 %i.en, %i.ek
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ei, i64 noundef %i.eo, i64 noundef 8) #19
  br label %_ZN4llvm8DenseMapIjN4mlir5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit

_ZN4llvm8DenseMapIjN4mlir5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit: ; preds = %._crit_edge81, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.ep = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8DenseMapIjN4mlir5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit
  call void @free(ptr noundef %i.ep) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4llvm8DenseMapIjN4mlir5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store <2 x ptr> %i.f, ptr %i.d, align 8
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit:      ; preds = %bb.m, %bb.n
  ret void

.lr.ph80:                                         ; preds = %._crit_edge76, %.lr.ph80
  %.078 = phi ptr [ %i.fb, %.lr.ph80 ], [ %i.ae, %._crit_edge76 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.es = load i64, ptr %.078, align 8
  store i64 %i.es, ptr %12, align 8
  %i.et = call noundef i64 @_ZN4mlir6linalg7IndexOp6getDimEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #19
  %i.eu = load ptr, ptr %12, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.ev = trunc i64 %i.et to i32
  store i32 %i.ev, ptr %i.b, align 4, !tbaa !86
  %i.ew = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjN4mlir5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.fca.0.extract.i33 = extractvalue { ptr, i8 } %i.ew, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i33, i64 8
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = load ptr, ptr %4, align 8, !tbaa !38
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.eu, i64 %i.ey, i64 1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.fb = getelementptr inbounds nuw i8, ptr %.078, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fb, %i.ai
  br i1 %.not, label %._crit_edge81, label %.lr.ph80
}

declare ptr @_ZN4mlir6linalg8LinalgOp28getIndexingMapMatchingResultENS_8OpResultE(ptr noundef nonnull align 8 dereferenceable(16), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL23getOperandReassociationN4mlir9AffineMapERKN12_GLOBAL__N_114CollapsingInfoE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.mlir::AffineDimExpr", align 8 ; 4 uses
  %4 = alloca %"class.mlir::AffineMap", align 8   ; 4 uses
  %5 = alloca %"class.mlir::AffineDimExpr", align 8 ; 4 uses
  %6 = alloca %"struct.llvm::detail::SafeIntIterator.805", align 8 ; 4 uses
  %7 = alloca %"struct.llvm::detail::SafeIntIterator.805", align 8 ; 4 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val = load ptr, ptr %i.d, align 8, !tbaa !35
  %.val12 = load ptr, ptr %2, align 8, !tbaa !35
  %i.e = call noundef i32 @_ZNK4mlir9AffineMap13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph._crit_edge
  %.026 = phi i32 [ %i.r, %.lr.ph._crit_edge ], [ 0, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.f = call ptr @_ZNK4mlir9AffineMap9getResultEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %.026) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN4mlir13AffineDimExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.f) #19
  %i.g = load ptr, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.g, ptr %5, align 8
  %i.h = call noundef i32 @_ZNK4mlir13AffineDimExpr11getPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.i ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !165
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %.val12, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !166
  %i.q = icmp eq i32 %i.p, 0
  %i.r = add i32 %i.n, %.026                      ; 3 uses
  br i1 %i.q, label %bb.b, label %.lr.ph._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.s = zext i32 %.026 to i64                    ; 5 uses
  %i.t = zext i32 %i.r to i64                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 %i.s, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 %i.t, ptr %7, align 8
  %i.u = load i32, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.v = load i32, ptr %i.c, align 4, !tbaa !36
  %.not.i = icmp ult i32 %i.u, %i.v
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !63

bb.c:                                             ; preds = %bb.b
  %i.w = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE18growAndEmplaceBackIJNS_6detail15SafeIntIteratorIjLb0EEES7_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE12emplace_backIJNS_6detail15SafeIntIteratorIjLb0EEES7_EEERS2_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.x = zext i32 %i.u to i64
  %i.y = load ptr, ptr %0, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.x ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 2, ptr %i.ac, align 4, !tbaa !36
  %i.ad = sub nsw i64 %i.t, %i.s                  ; 9 uses
  %i.ae = icmp ugt i64 %i.ad, 2
  br i1 %i.ae, label %bb.e, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull %i.aa, i64 noundef %i.ad, i64 noundef 8) #19
  %.pre.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !44 ; 2 uses
  %.pre15.i.i.i = zext i32 %.pre.i.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.pre-phi.i.i.i = phi i64 [ 0, %bb.d ], [ %.pre15.i.i.i, %bb.e ]
  %i.af = phi i32 [ 0, %bb.d ], [ %.pre.i.i.i, %bb.e ]
  %i.ag = icmp sgt i64 %i.ad, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i, label %_ZN4llvm11SmallVectorIlLj2EEC2INS_6detail15SafeIntIteratorIjLb0EEEvEET_S6_.exit.i

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i:           ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.ad, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i
  %n.vec = and i64 %i.ad, 9223372036854775804     ; 4 uses
  %i.aj = and i64 %i.ad, 3
  %i.ak = shl i64 %n.vec, 3
  %i.al = getelementptr i8, ptr %i.ai, i64 %i.ak
  %i.am = add nuw i64 %n.vec, %i.s
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.an = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.an ; 2 uses
  %i.ao = and <2 x i64> %vec.ind, splat (i64 4294967295)
  %i.ap = and <2 x i64> %step.add, splat (i64 4294967295)
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.ao, ptr %next.gep, align 8, !tbaa !106
  store <2 x i64> %i.ap, ptr %i.aq, align 8, !tbaa !106
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !571

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorIlLj2EEC2INS_6detail15SafeIntIteratorIjLb0EEEvEET_S6_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i ], [ %i.aj, %middle.block ] ; 2 uses
  %.049.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i ], [ %i.al, %middle.block ] ; 3 uses
  %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i ], [ %i.am, %middle.block ] ; 3 uses
  %i.as = and i64 %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.ph, 4294967295
  store i64 %i.as, ptr %.049.i.i.i.i.i.i.i.i.i.i.i.ph, align 8, !tbaa !106
  %i.at = icmp samesign ugt i64 %.010.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN4llvm11SmallVectorIlLj2EEC2INS_6detail15SafeIntIteratorIjLb0EEEvEET_S6_.exit.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.1:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i.i.i.i.i.i.ph, i64 8
  %i.av = add nuw nsw i64 %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %i.aw = and i64 %i.av, 4294967295
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !106
  %i.ax = icmp eq i64 %.010.i.i.i.i.i.i.i.i.i.i.i.ph, 3
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.2, label %_ZN4llvm11SmallVectorIlLj2EEC2INS_6detail15SafeIntIteratorIjLb0EEEvEET_S6_.exit.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.2:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ay = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i.i.i.i.i.i.ph, i64 16
  %i.az = add nuw nsw i64 %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.ph, 2
  %i.ba = and i64 %i.az, 4294967295
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !106
  br label %_ZN4llvm11SmallVectorIlLj2EEC2INS_6detail15SafeIntIteratorIjLb0EEEvEET_S6_.exit.i

_ZN4llvm11SmallVectorIlLj2EEC2INS_6detail15SafeIntIteratorIjLb0EEEvEET_S6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.2, %middle.block, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i
  %i.bb = trunc i64 %i.ad to i32
  %i.bc = add i32 %i.af, %i.bb
  store i32 %i.bc, ptr %i.ab, align 8, !tbaa !44
  %i.bd = load i32, ptr %i.b, align 8, !tbaa !44
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.b, align 8, !tbaa !44
  br label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE12emplace_backIJNS_6detail15SafeIntIteratorIjLb0EEES7_EEERS2_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE12emplace_backIJNS_6detail15SafeIntIteratorIjLb0EEES7_EEERS2_DpOT_.exit: ; preds = %bb.c, %_ZN4llvm11SmallVectorIlLj2EEC2INS_6detail15SafeIntIteratorIjLb0EEEvEET_S6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE12emplace_backIJNS_6detail15SafeIntIteratorIjLb0EEES7_EEERS2_DpOT_.exit
  %i.bf = call noundef i32 @_ZNK4mlir9AffineMap13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %i.bg = icmp ult i32 %i.r, %i.bf
  br i1 %i.bg, label %.lr.ph, label %._crit_edge, !llvm.loop !572

._crit_edge:                                      ; preds = %.lr.ph._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir19applyPermutationMapINS_12OpFoldResultEEEN4llvm11SmallVectorIT_Xsr42CalculateSmallVectorDefaultInlinedElementsIS4_EE5valueEEENS_9AffineMapENS2_8ArrayRefIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.201") align 8 %0, ptr %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.mlir::AffineConstantExpr", align 8 ; 3 uses
  %5 = alloca %"class.mlir::AffineConstantExpr", align 8 ; 3 uses
  %6 = alloca %"class.mlir::AffineExpr", align 8  ; 4 uses
  %7 = alloca %"class.mlir::AffineDimExpr", align 8 ; 4 uses
  %8 = alloca %"class.mlir::AffineDimExpr", align 8 ; 4 uses
  %9 = alloca %"class.mlir::AffineExpr", align 8  ; 4 uses
  %10 = alloca %"class.mlir::AffineMap", align 8  ; 3 uses
  %11 = alloca %"class.mlir::AffineDimExpr", align 8 ; 4 uses
  store ptr %1, ptr %10, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i32 0, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  store i32 6, ptr %i.c, align 4, !tbaa !36
  %i.d = call noundef i32 @_ZNK4mlir9AffineMap13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #19 ; 2 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !36
  %i.f = icmp ugt i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #19
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = call { ptr, i64 } @_ZNK4mlir9AffineMap10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #19 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.j, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not17 = icmp eq i64 %i.j, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit
  ret void

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit
  %.018 = phi ptr [ %i.ak, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit ], [ %i.i, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit ] ; 2 uses
  %i.l = load i64, ptr %.018, align 8, !tbaa !105
  %i.m = inttoptr i64 %i.l to ptr                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.m, ptr %9, align 8
  %i.n = call noundef i32 @_ZNK4mlir10AffineExpr7getKindEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #19
  %i.o = icmp eq i32 %i.n, 6
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @_ZN4mlir13AffineDimExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef null) #19
  %i.p = load ptr, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZN4llvm8dyn_castIN4mlir13AffineDimExprENS1_10AffineExprEEEDcRT0_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @_ZN4mlir13AffineDimExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.m) #19
  %i.q = load ptr, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN4llvm8dyn_castIN4mlir13AffineDimExprENS1_10AffineExprEEEDcRT0_.exit

_ZN4llvm8dyn_castIN4mlir13AffineDimExprENS1_10AffineExprEEEDcRT0_.exit: ; preds = %bb.c, %bb.d
  %.sroa.03.0.i.i = phi ptr [ %i.q, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  store ptr %.sroa.03.0.i.i, ptr %11, align 8
  %.not16 = icmp eq ptr %.sroa.03.0.i.i, null
  br i1 %.not16, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir13AffineDimExprENS1_10AffineExprEEEDcRT0_.exit
  %i.r = call noundef i32 @_ZNK4mlir13AffineDimExpr11getPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #19
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.s
  %.sroa.0.0.copyload = load i64, ptr %i.t, align 8 ; 2 uses
  %i.u = load i32, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.v = load i32, ptr %i.c, align 4, !tbaa !36
  %.not.i = icmp ult i32 %i.u, %i.v
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !63

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.0.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit

bb.g:                                             ; preds = %bb.e
  %i.w = zext i32 %i.u to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  store i64 %.sroa.0.0.copyload, ptr %i.y, align 1
  %i.z = load i32, ptr %i.b, align 8, !tbaa !44
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !44
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit

bb.h:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir13AffineDimExprENS1_10AffineExprEEEDcRT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.m, ptr %6, align 8
  %i.ab = call noundef i32 @_ZNK4mlir10AffineExpr7getKindEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %i.ac = icmp eq i32 %i.ab, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN4mlir18AffineConstantExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN4llvm8dyn_castIN4mlir18AffineConstantExprENS1_10AffineExprEEEDcRT0_.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN4mlir18AffineConstantExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.m) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN4llvm8dyn_castIN4mlir18AffineConstantExprENS1_10AffineExprEEEDcRT0_.exit

_ZN4llvm8dyn_castIN4mlir18AffineConstantExprENS1_10AffineExprEEEDcRT0_.exit: ; preds = %bb.i, %bb.j
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !36
  %.not.i9 = icmp ult i32 %i.ad, %i.ae
  br i1 %.not.i9, label %bb.l, label %bb.k, !prof !63

bb.k:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir18AffineConstantExprENS1_10AffineExprEEEDcRT0_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 0)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit

bb.l:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir18AffineConstantExprENS1_10AffineExprEEEDcRT0_.exit
  %i.af = zext i32 %i.ad to i64
  %i.ag = load ptr, ptr %0, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store i64 0, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.b, align 8, !tbaa !44
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.b, align 8, !tbaa !44
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE9push_backES2_.exit: ; preds = %bb.l, %bb.k, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.ak = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare ptr @_ZN4mlir6memref13ExpandShapeOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEN4llvm8ArrayRefINS7_11SmallVectorIlLj2EEEEENS8_INS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.208") align 8) local_unnamed_addr #2

declare ptr @_ZN4mlir6tensor13ExpandShapeOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueEN4llvm8ArrayRefINS7_11SmallVectorIlLj2EEEEENS8_INS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr, i64, ptr noundef byval(%"class.llvm::ArrayRef.208") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6linalg41populateFoldReshapeOpsByExpansionPatternsERNS_17RewritePatternSetERKSt8functionIFbPNS_9OpOperandEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 8 uses
  %3 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %4 = alloca %"class.llvm::ArrayRef.1113", align 8 ; 4 uses
  %5 = alloca %"class.std::function", align 8     ; 8 uses
  %6 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %7 = alloca %"class.llvm::ArrayRef.1113", align 8 ; 4 uses
  %8 = alloca %"class.std::function", align 8     ; 8 uses
  %9 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %10 = alloca %"class.llvm::ArrayRef.1113", align 8 ; 4 uses
  %11 = alloca %"class.std::function", align 8    ; 8 uses
  %12 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !619
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !619
  %i.b = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #18, !noalias !620 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false), !noalias !620
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !211, !noalias !620 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8functionIFbPN4mlir9OpOperandEEEC2ERKS4_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 16
end_hunk_0
begin_hunk_1_@_ZL26fuseWithReshapeByExpansionN4mlir6linalg8LinalgOpEPNS_9OperationEPNS_9OpOperandERNS_15PatternRewriterE:bb.a
  %i.gp = zext i32 %i.go to i64
  %i.gq = load ptr, ptr %45, align 8, !tbaa !35
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gl
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !86 ; 4 uses
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.gp
  %i.gv = load ptr, ptr %i.bq, align 8, !tbaa !35
  %i.gw = getelementptr inbounds nuw [64 x i8], ptr %i.gv, i64 %i.gl ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 4 uses
  store i32 0, ptr %i.gx, align 8, !tbaa !44
  %.idx.i = shl nuw nsw i64 %i.gt, 3
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !36
  %i.ha = icmp ugt i32 %i.gs, %i.gz
  br i1 %i.ha, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.thread.i: ; preds = %.lr.ph.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull %i.hb, i64 noundef %i.gt, i64 noundef 8) #19
  %.pre8.pre.i.i.i = load i32, ptr %i.gx, align 8, !tbaa !44
  %i.hc = zext i32 %.pre8.pre.i.i.i to i64
  br label %bb.x

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i: ; preds = %.lr.ph.i
  %.not.i.i.i.i = icmp eq i32 %i.gs, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6assignIPKS2_vEEvT_S7_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.thread.i
  %.pre8.i.i83.i = phi i64 [ %i.hc, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i ]
  %i.hd = load ptr, ptr %i.gw, align 8, !tbaa !35
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %.pre8.i.i83.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.he, ptr readonly align 8 %i.gu, i64 %.idx.i, i1 false)
  %.pre.i.i42.i = load i32, ptr %i.gx, align 8, !tbaa !44
  br label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6assignIPKS2_vEEvT_S7_.exit.i

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE6assignIPKS2_vEEvT_S7_.exit.i: ; preds = %bb.x, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i
  %i.hf = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.i ], [ %.pre.i.i42.i, %bb.x ]
  %i.hg = add i32 %i.hf, %i.gs
  store i32 %i.hg, ptr %i.gx, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  %i.hh = add nuw nsw i64 %.sroa.727.044.i, 1
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.024.045.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.hi, %i.gd
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge50.i:                                  ; preds = %bb.aa, %._crit_edge.i
  %i.hj = call noundef i32 @_ZNK4mlir9AffineMap10getNumDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %42) #19 ; 2 uses
  %i.hk = load i32, ptr %i.bp, align 4, !tbaa !36
  %i.hl = icmp ugt i32 %i.hj, %i.hk
  br i1 %i.hl, label %bb.y, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i

bb.y:                                             ; preds = %._crit_edge50.i
  %i.hm = zext i32 %i.hj to i64
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(196) %60, i64 noundef %i.hm)
  br label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i: ; preds = %bb.y, %._crit_edge50.i
  %i.hn = load ptr, ptr %45, align 8, !tbaa !35, !noalias !1065 ; 3 uses
  %i.ho = load i32, ptr %i.ec, align 8, !tbaa !44, !noalias !1066 ; 2 uses
  %i.hp = zext i32 %i.ho to i64
  %.idx57.i = shl nuw nsw i64 %i.hp, 2
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.idx57.i
  %.not3951.i = icmp eq i32 %i.ho, 0
  br i1 %.not3951.i, label %._crit_edge55.i, label %.lr.ph54.i

.lr.ph49.i:                                       ; preds = %._crit_edge.i, %bb.aa
  %.sroa.013.047.i = phi i64 [ %i.ig, %bb.aa ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.hr = load ptr, ptr %i.bq, align 8, !tbaa !35
  %i.hs = getelementptr inbounds nuw [64 x i8], ptr %i.hr, i64 %.sroa.013.047.i ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 4 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !44
  %.not.i43.i = icmp eq i32 %i.hu, 0
  br i1 %.not.i43.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph49.i
  %i.hv = load ptr, ptr %i.bu, align 8, !tbaa !35
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.sroa.013.047.i
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !36
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.thread.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEaSESt16initializer_listIS2_E.exit.i

_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.thread.i.i.i: ; preds = %bb.z
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.hs, ptr noundef nonnull %i.ib, i64 noundef 1, i64 noundef 8) #19
  %.pre8.pre.i.i.i.i.i = load i32, ptr %i.ht, align 8, !tbaa !44
  %i.ic = zext i32 %.pre8.pre.i.i.i.i.i to i64
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEaSESt16initializer_listIS2_E.exit.i

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEaSESt16initializer_listIS2_E.exit.i: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.thread.i.i.i, %bb.z
  %.pre8.i.i5.i.i.i = phi i64 [ %i.ic, %_ZN4llvm15SmallVectorImplIN4mlir12OpFoldResultEE7reserveEm.exit.i.i.thread.i.i.i ], [ 0, %bb.z ]
  %i.id = load ptr, ptr %i.hs, align 8, !tbaa !35
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.pre8.i.i5.i.i.i
  store i64 %i.hx, ptr %i.ie, align 1
  %.pre.i.i.i.i45.i = load i32, ptr %i.ht, align 8, !tbaa !44
  %i.if = add i32 %.pre.i.i.i.i45.i, 1
  store i32 %i.if, ptr %i.ht, align 8, !tbaa !44
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EEaSESt16initializer_listIS2_E.exit.i, %.lr.ph49.i
  %i.ig = add nuw nsw i64 %.sroa.013.047.i, 1     ; 2 uses
  %.not38.i = icmp eq i64 %i.ig, %i.gf
  br i1 %.not38.i, label %._crit_edge50.i, label %.lr.ph49.i

._crit_edge55.loopexit.i:                         ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE12emplace_backIJNS_6detail15SafeIntIteratorIlLb0EEES7_EEERS2_DpOT_.exit.i
  %.pre60.i = load ptr, ptr %45, align 8, !tbaa !35
  br label %._crit_edge55.i

._crit_edge55.i:                                  ; preds = %._crit_edge55.loopexit.i, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i
  %i.ih = phi ptr [ %i.hn, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i ], [ %.pre60.i, %._crit_edge55.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i ], [ %i.jv, %._crit_edge55.loopexit.i ]
  %i.ii = getelementptr inbounds nuw i8, ptr %60, i64 192 ; 3 uses
  store i32 %.0.lcssa.i, ptr %i.ii, align 8, !tbaa !1083
  %i.ij = icmp eq ptr %i.ih, %i.eb
  br i1 %i.ij, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge55.i
  call void @free(ptr noundef %i.ih) #19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  %.not.i.i48.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i48.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store <2 x ptr> %i.ch, ptr %i.cf, align 8
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false)
  br label %bb.ai

.lr.ph54.i:                                       ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE12emplace_backIJNS_6detail15SafeIntIteratorIlLb0EEES7_EEERS2_DpOT_.exit.i
  %.053.i = phi i32 [ %i.jv, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE12emplace_backIJNS_6detail15SafeIntIteratorIlLb0EEES7_EEERS2_DpOT_.exit.i ], [ 0, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i ] ; 3 uses
  %.sroa.05.052.i = phi ptr [ %i.jw, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE12emplace_backIJNS_6detail15SafeIntIteratorIlLb0EEES7_EEERS2_DpOT_.exit.i ], [ %i.hn, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE7reserveEm.exit.i ] ; 3 uses
  %i.ik = zext i32 %.053.i to i64                 ; 5 uses
  %i.il = load i32, ptr %.sroa.05.052.i, align 4, !tbaa !86
  %i.im = add i32 %i.il, %.053.i
  %i.in = zext i32 %i.im to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19
  store i64 %i.ik, ptr %48, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  store i64 %i.in, ptr %49, align 8
  %i.io = load i32, ptr %i.bo, align 8, !tbaa !44 ; 2 uses
  %i.ip = load i32, ptr %i.bp, align 4, !tbaa !36
  %.not.i53.i = icmp ult i32 %i.io, %i.ip
  br i1 %.not.i53.i, label %bb.ag, label %bb.af, !prof !63

bb.af:                                            ; preds = %.lr.ph54.i
  %i.iq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIlLj2EEELb0EE18growAndEmplaceBackIJNS_6detail15SafeIntIteratorIlLb0EEES7_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(196) %60, ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull align 8 dereferenceable(8) %49) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE12emplace_backIJNS_6detail15SafeIntIteratorIlLb0EEES7_EEERS2_DpOT_.exit.i

bb.ag:                                            ; preds = %.lr.ph54.i
  %i.ir = zext i32 %i.io to i64
  %i.is = load ptr, ptr %60, align 8, !tbaa !35
  %i.it = getelementptr inbounds nuw [32 x i8], ptr %i.is, i64 %i.ir ; 6 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16 ; 2 uses
  store ptr %i.iu, ptr %i.it, align 8, !tbaa !35
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 3 uses
  store i32 0, ptr %i.iv, align 8, !tbaa !44
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  store i32 2, ptr %i.iw, align 4, !tbaa !36
  %i.ix = sub nsw i64 %i.in, %i.ik                ; 9 uses
  %i.iy = icmp ugt i64 %i.ix, 2
  br i1 %i.iy, label %bb.ah, label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.it, ptr noundef nonnull %i.iu, i64 noundef %i.ix, i64 noundef 8) #19
  %.pre.i.i.i.i = load i32, ptr %i.iv, align 8, !tbaa !44 ; 2 uses
  %.pre15.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.pre-phi.i.i.i.i = phi i64 [ 0, %bb.ag ], [ %.pre15.i.i.i.i, %bb.ah ]
  %i.iz = phi i32 [ 0, %bb.ag ], [ %.pre.i.i.i.i, %bb.ah ]
  %i.ja = icmp sgt i64 %i.ix, 0
  br i1 %i.ja, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i, label %_ZN4llvm11SmallVectorIlLj2EEC2INS_6detail15SafeIntIteratorIlLb0EEEvEET_S6_.exit.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i:         ; preds = %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i
  %i.jb = load ptr, ptr %i.it, align 8, !tbaa !35
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.pre-phi.i.i.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.ix, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %vector.ph457

vector.ph457:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i
  %n.vec458 = and i64 %i.ix, 9223372036854775804  ; 4 uses
  %i.jd = and i64 %i.ix, 3
  %i.je = shl i64 %n.vec458, 3
  %i.jf = getelementptr i8, ptr %i.jc, i64 %i.je
  %i.jg = add nuw i64 %n.vec458, %i.ik
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ik, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  br label %vector.body459

vector.body459:                                   ; preds = %vector.body459, %vector.ph457
  %index460 = phi i64 [ 0, %vector.ph457 ], [ %index.next462, %vector.body459 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph457 ], [ %vec.ind.next, %vector.body459 ] ; 3 uses
  %step.add = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.jh = shl i64 %index460, 3
  %next.gep461 = getelementptr i8, ptr %i.jc, i64 %i.jh ; 2 uses
  %i.ji = getelementptr i8, ptr %next.gep461, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep461, align 8, !tbaa !106
  store <2 x i64> %step.add, ptr %i.ji, align 8, !tbaa !106
  %index.next462 = add nuw i64 %index460, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.jj = icmp eq i64 %index.next462, %n.vec458
  br i1 %i.jj, label %middle.block463, label %vector.body459, !llvm.loop !1027

middle.block463:                                  ; preds = %vector.body459
  %cmp.n464 = icmp eq i64 %i.ix, %n.vec458
  br i1 %cmp.n464, label %_ZN4llvm11SmallVectorIlLj2EEC2INS_6detail15SafeIntIteratorIlLb0EEEvEET_S6_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %middle.block463, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ix, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ], [ %i.jd, %middle.block463 ] ; 2 uses
  %.049.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ], [ %i.jf, %middle.block463 ] ; 3 uses
  %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ik, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i.i.i ], [ %i.jg, %middle.block463 ] ; 3 uses
  store i64 %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.i.ph, ptr %.049.i.i.i.i.i.i.i.i.i.i.i.i.ph, align 8, !tbaa !106
  %i.jk = icmp samesign ugt i64 %.010.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br i1 %i.jk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN4llvm11SmallVectorIlLj2EEC2INS_6detail15SafeIntIteratorIlLb0EEEvEET_S6_.exit.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i.i.i.i.i.i.i.ph, i64 8
  %i.jm = add nuw nsw i64 %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  store i64 %i.jm, ptr %i.jl, align 8, !tbaa !106
  %i.jn = icmp eq i64 %.010.i.i.i.i.i.i.i.i.i.i.i.i.ph, 3
  br i1 %i.jn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2, label %_ZN4llvm11SmallVectorIlLj2EEC2INS_6detail15SafeIntIteratorIlLb0EEEvEET_S6_.exit.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.jo = getelementptr inbounds nuw i8, ptr %.049.i.i.i.i.i.i.i.i.i.i.i.i.ph, i64 16
  %i.jp = add nuw nsw i64 %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.i.ph, 2
  store i64 %i.jp, ptr %i.jo, align 8, !tbaa !106
  br label %_ZN4llvm11SmallVectorIlLj2EEC2INS_6detail15SafeIntIteratorIlLb0EEEvEET_S6_.exit.i.i

_ZN4llvm11SmallVectorIlLj2EEC2INS_6detail15SafeIntIteratorIlLb0EEEvEET_S6_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.2, %middle.block463, %_ZN4llvm15SmallVectorImplIlE7reserveEm.exit.i.i.i.i
  %i.jq = trunc i64 %i.ix to i32
  %i.jr = add i32 %i.iz, %i.jq
  store i32 %i.jr, ptr %i.iv, align 8, !tbaa !44
  %i.js = load i32, ptr %i.bo, align 8, !tbaa !44
  %i.jt = add i32 %i.js, 1
  store i32 %i.jt, ptr %i.bo, align 8, !tbaa !44
  br label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE12emplace_backIJNS_6detail15SafeIntIteratorIlLb0EEES7_EEERS2_DpOT_.exit.i

_ZN4llvm15SmallVectorImplINS_11SmallVectorIlLj2EEEE12emplace_backIJNS_6detail15SafeIntIteratorIlLb0EEES7_EEERS2_DpOT_.exit.i: ; preds = %_ZN4llvm11SmallVectorIlLj2EEC2INS_6detail15SafeIntIteratorIlLb0EEEvEET_S6_.exit.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19
  %i.ju = load i32, ptr %.sroa.05.052.i, align 4, !tbaa !86
  %i.jv = add i32 %i.ju, %.053.i                  ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.05.052.i, i64 4 ; 2 uses
  %.not39.i = icmp eq ptr %i.jw, %i.hq
  br i1 %.not39.i, label %._crit_edge55.loopexit.i, label %.lr.ph54.i

.thread448:                                       ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.jx, align 8, !tbaa !262
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit.i241

bb.ai:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #19
  call void @_ZN4mlir6linalg8LinalgOp20getIndexingMapsArrayEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.51") align 8 %62, ptr noundef nonnull align 8 dereferenceable(16) %50) #19
  %.val131 = load ptr, ptr %62, align 8, !tbaa !35 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %62, i64 8
  %.val132 = load i32, ptr %i.jy, align 8, !tbaa !44 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.jz = zext i32 %.val132 to i64                ; 2 uses
  %.idx.i147 = shl nuw nsw i64 %i.jz, 3
  %i.ka = getelementptr inbounds nuw i8, ptr %.val131, i64 %.idx.i147
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.kb = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 4 uses
  store ptr %i.kb, ptr %61, align 8, !tbaa !35, !alias.scope !1086
  %i.kc = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 5 uses
  store i32 0, ptr %i.kc, align 8, !tbaa !44, !alias.scope !1086
  %i.kd = getelementptr inbounds nuw i8, ptr %61, i64 12
  store i32 4, ptr %i.kd, align 4, !tbaa !36, !alias.scope !1086
  %i.ke = icmp ugt i32 %.val132, 4
  br i1 %i.ke, label %_ZN4llvm15SmallVectorImplIN4mlir9AffineMapEE7reserveEm.exit.i.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIN4mlir9AffineMapEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir9AffineMapEE7reserveEm.exit.i.i.i.thread.i: ; preds = %bb.ai
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %61, ptr noundef nonnull %i.kb, i64 noundef %i.jz, i64 noundef 8) #19
  %.pre25.pre.i.i.i.i = load i32, ptr %i.kc, align 8, !tbaa !44, !alias.scope !1086
  %i.kf = zext i32 %.pre25.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %61, align 8, !tbaa !35, !alias.scope !1086
  br label %.lr.ph.i.i.i.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir9AffineMapEE7reserveEm.exit.i.i.i.i: ; preds = %bb.ai
  %.not2.i.i.i.i.i.i.i.i = icmp eq i32 %.val132, 0
  br i1 %.not2.i.i.i.i.i.i.i.i, label %"_ZN4llvm13map_to_vectorILj4ENS_11SmallVectorIN4mlir9AffineMapELj6EEEZL26fuseWithReshapeByExpansionNS2_6linalg8LinalgOpEPNS2_9OperationEPNS2_9OpOperandERNS2_15PatternRewriterEE3$_0EEDaOT0_OT1_.exit", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIN4mlir9AffineMapEE7reserveEm.exit.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir9AffineMapEE7reserveEm.exit.i.i.i.thread.i
  %i.kg = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIN4mlir9AffineMapEE7reserveEm.exit.i.i.i.thread.i ], [ %i.kb, %_ZN4llvm15SmallVectorImplIN4mlir9AffineMapEE7reserveEm.exit.i.i.i.i ]
  %.pre25.i.i.i13.i = phi i64 [ %i.kf, %_ZN4llvm15SmallVectorImplIN4mlir9AffineMapEE7reserveEm.exit.i.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir9AffineMapEE7reserveEm.exit.i.i.i.i ]
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %.pre25.i.i.i13.i
  %i.ki = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 6 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %37, i64 12 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 5 uses
  %i.km = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %39, i64 12
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZNK4llvm15mapped_iteratorIPN4mlir9AffineMapEZL26fuseWithReshapeByExpansionNS1_6linalg8LinalgOpEPNS1_9OperationEPNS1_9OpOperandERNS1_15PatternRewriterEE3$_0S2_EdeEv.exit.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i
  %.04.i.i.i.i.i.i.i.i = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.mn, %"_ZNK4llvm15mapped_iteratorIPN4mlir9AffineMapEZL26fuseWithReshapeByExpansionNS1_6linalg8LinalgOpEPNS1_9OperationEPNS1_9OpOperandERNS1_15PatternRewriterEE3$_0S2_EdeEv.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.val13.i.i.i.i.i.i.i.i = phi ptr [ %.val131, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.mm, %"_ZNK4llvm15mapped_iteratorIPN4mlir9AffineMapEZL26fuseWithReshapeByExpansionNS1_6linalg8LinalgOpEPNS1_9OperationEPNS1_9OpOperandERNS1_15PatternRewriterEE3$_0S2_EdeEv.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.val2.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val13.i.i.i.i.i.i.i.i, align 8, !tbaa !103, !noalias !1084
  call void @llvm.lifetime.start.p0(ptr nonnull %36), !noalias !1086
  store ptr %.val2.i.i.i.i.i.i.i.i.i, ptr %36, align 8, !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19, !noalias !1086
  store ptr %i.ki, ptr %37, align 8, !tbaa !35, !noalias !1086
  store i32 0, ptr %i.kj, align 8, !tbaa !44, !noalias !1086
  store i32 6, ptr %i.kk, align 4, !tbaa !36, !noalias !1086
  %i.ko = call { ptr, i64 } @_ZNK4mlir9AffineMap10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #19 ; 2 uses
  %i.kp = extractvalue { ptr, i64 } %i.ko, 0      ; 2 uses
  %i.kq = extractvalue { ptr, i64 } %i.ko, 1      ; 2 uses
  %.idx22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.kq, 3
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.idx22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.kq, 0
  br i1 %.not20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %_ZN4llvm11SmallVectorIN4mlir10AffineExprELj4EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aj
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ii, align 8, !tbaa !1083, !noalias !1084
  %i.ks = call noundef i32 @_ZNK4mlir9AffineMap13getNumSymbolsEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #19
  %i.kt = load ptr, ptr %37, align 8, !tbaa !35, !noalias !1086
  %i.ku = load i32, ptr %i.kj, align 8, !tbaa !44, !noalias !1086
  %i.kv = zext i32 %i.ku to i64
  %i.kw = load ptr, ptr %i.ce, align 8, !tbaa !263, !noalias !1084
  %i.kx = call ptr @_ZN4mlir9AffineMap3getEjjN4llvm8ArrayRefINS_10AffineExprEEEPNS_11MLIRContextE(i32 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 noundef %i.ks, ptr %i.kt, i64 %i.kv, ptr noundef %i.kw) #19
  %i.ky = load ptr, ptr %37, align 8, !tbaa !35, !noalias !1086 ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.ki
  br i1 %i.kz, label %"_ZNK4llvm15mapped_iteratorIPN4mlir9AffineMapEZL26fuseWithReshapeByExpansionNS1_6linalg8LinalgOpEPNS1_9OperationEPNS1_9OpOperandERNS1_15PatternRewriterEE3$_0S2_EdeEv.exit.i.i.i.i.i.i.i.i", label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @free(ptr noundef %i.ky) #19
  br label %"_ZNK4llvm15mapped_iteratorIPN4mlir9AffineMapEZL26fuseWithReshapeByExpansionNS1_6linalg8LinalgOpEPNS1_9OperationEPNS1_9OpOperandERNS1_15PatternRewriterEE3$_0S2_EdeEv.exit.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.aj, %_ZN4llvm11SmallVectorIN4mlir10AffineExprELj4EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mk, %_ZN4llvm11SmallVectorIN4mlir10AffineExprELj4EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.kp, %bb.aj ] ; 2 uses
  %i.la = load i64, ptr %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !105
  %i.lb = inttoptr i64 %i.la to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19, !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %35), !noalias !1086
  call void @_ZN4mlir13AffineDimExprC1EPNS_6detail17AffineExprStorageE(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef %i.lb) #19
  %i.lc = load ptr, ptr %35, align 8, !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %35), !noalias !1086
  store ptr %i.lc, ptr %38, align 8, !noalias !1086
  %i.ld = call noundef i32 @_ZNK4mlir13AffineDimExpr11getPositionEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19, !noalias !1086
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19, !noalias !1086
  %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %60, align 8, !tbaa !35, !noalias !1084
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [32 x i8], ptr %.val10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.le ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !35 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !44 ; 4 uses
  %i.lj = zext i32 %i.li to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.lj, 3
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.kl, ptr %39, align 8, !tbaa !35, !alias.scope !1088, !noalias !1086
  store i32 0, ptr %i.km, align 8, !tbaa !44, !alias.scope !1088, !noalias !1086
  store i32 4, ptr %i.kn, align 4, !tbaa !36, !alias.scope !1088, !noalias !1086
  %i.ll = icmp ugt i32 %i.li, 4
  br i1 %i.ll, label %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %39, ptr noundef nonnull %i.kl, i64 noundef %i.lj, i64 noundef 8) #19
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.km, align 8, !tbaa !44, !alias.scope !1088, !noalias !1086
  %.pre25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %39, align 8, !tbaa !35, !alias.scope !1088, !noalias !1086
  br label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.li, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm13map_to_vectorILj4ENS_8ArrayRefIlEEZL26getIndexingMapInExpandedOpRN4mlir9OpBuilderENS3_9AffineMapERKN12_GLOBAL__N_113ExpansionInfoEE3$_0EEDaOT0_OT1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lm = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.kl, %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.pre-phi.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %.pre-phi.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ls, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ln, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.allc.04.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.lg, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val5.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.0.allc.04.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !106, !noalias !1087
  %i.lo = trunc i64 %.val5.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.lp = call ptr @_ZN4mlir7Builder16getAffineDimExprEj(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i32 noundef %i.lo) #19
  %i.lq = ptrtoint ptr %i.lp to i64
  store i64 %i.lq, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !105
  %i.lr = getelementptr inbounds nuw i8, ptr %.0.allc.04.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lr, %i.lk
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm23SmallVectorTemplateBaseIN4mlir10AffineExprELb1EE18uninitialized_copyINS_15mapped_iteratorIPKlZL26getIndexingMapInExpandedOpRNS1_9OpBuilderENS1_9AffineMapERKN12_GLOBAL__N_113ExpansionInfoEE3$_0S2_EEPS2_EEvT_SI_T0_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1036

"_ZN4llvm23SmallVectorTemplateBaseIN4mlir10AffineExprELb1EE18uninitialized_copyINS_15mapped_iteratorIPKlZL26getIndexingMapInExpandedOpRNS1_9OpBuilderENS1_9AffineMapERKN12_GLOBAL__N_113ExpansionInfoEE3$_0S2_EEPS2_EEvT_SI_T0_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.km, align 8, !tbaa !44, !alias.scope !1088, !noalias !1086
  %.pre23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %39, align 8, !tbaa !35, !noalias !1086
  br label %"_ZN4llvm13map_to_vectorILj4ENS_8ArrayRefIlEEZL26getIndexingMapInExpandedOpRN4mlir9OpBuilderENS3_9AffineMapERKN12_GLOBAL__N_113ExpansionInfoEE3$_0EEDaOT0_OT1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4llvm13map_to_vectorILj4ENS_8ArrayRefIlEEZL26getIndexingMapInExpandedOpRN4mlir9OpBuilderENS3_9AffineMapERKN12_GLOBAL__N_113ExpansionInfoEE3$_0EEDaOT0_OT1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4llvm23SmallVectorTemplateBaseIN4mlir10AffineExprELb1EE18uninitialized_copyINS_15mapped_iteratorIPKlZL26getIndexingMapInExpandedOpRNS1_9OpBuilderENS1_9AffineMapERKN12_GLOBAL__N_113ExpansionInfoEE3$_0S2_EEPS2_EEvT_SI_T0_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lt = phi ptr [ %.pre23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4llvm23SmallVectorTemplateBaseIN4mlir10AffineExprELb1EE18uninitialized_copyINS_15mapped_iteratorIPKlZL26getIndexingMapInExpandedOpRNS1_9OpBuilderENS1_9AffineMapERKN12_GLOBAL__N_113ExpansionInfoEE3$_0S2_EEPS2_EEvT_SI_T0_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.kl, %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.lu = phi i32 [ %.pre24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4llvm23SmallVectorTemplateBaseIN4mlir10AffineExprELb1EE18uninitialized_copyINS_15mapped_iteratorIPKlZL26getIndexingMapInExpandedOpRNS1_9OpBuilderENS1_9AffineMapERKN12_GLOBAL__N_113ExpansionInfoEE3$_0S2_EEPS2_EEvT_SI_T0_.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.lv = add i32 %i.lu, %i.li                    ; 4 uses
  store i32 %i.lv, ptr %i.km, align 8, !tbaa !44, !alias.scope !1088, !noalias !1086
  %i.lw = zext i32 %i.lv to i64                   ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.lw, 3
  %i.lx = load i32, ptr %i.kj, align 8, !tbaa !44, !noalias !1086 ; 2 uses
  %i.ly = zext i32 %i.lx to i64
  %i.lz = add nuw nsw i64 %i.ly, %i.lw            ; 2 uses
  %i.ma = load i32, ptr %i.kk, align 4, !tbaa !36, !noalias !1086
  %i.mb = zext i32 %i.ma to i64
  %i.mc = icmp samesign ugt i64 %i.lz, %i.mb
  br i1 %i.mc, label %bb.al, label %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %"_ZN4llvm13map_to_vectorILj4ENS_8ArrayRefIlEEZL26getIndexingMapInExpandedOpRN4mlir9OpBuilderENS3_9AffineMapERKN12_GLOBAL__N_113ExpansionInfoEE3$_0EEDaOT0_OT1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull %i.ki, i64 noundef %i.lz, i64 noundef 8) #19
  %.pre8.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.kj, align 8, !tbaa !44, !noalias !1086
  br label %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al, %"_ZN4llvm13map_to_vectorILj4ENS_8ArrayRefIlEEZL26getIndexingMapInExpandedOpRN4mlir9OpBuilderENS3_9AffineMapERKN12_GLOBAL__N_113ExpansionInfoEE3$_0EEDaOT0_OT1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.pre8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.lx, %"_ZN4llvm13map_to_vectorILj4ENS_8ArrayRefIlEEZL26getIndexingMapInExpandedOpRN4mlir9OpBuilderENS3_9AffineMapERKN12_GLOBAL__N_113ExpansionInfoEE3$_0EEDaOT0_OT1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre8.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.lv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE6appendIPS2_vEEvT_S6_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm15SmallVectorImplIN4mlir10AffineExprEE7reserveEm.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.md = load ptr, ptr %37, align 8, !tbaa !35, !noalias !1086
  %i.me = zext i32 %.pre8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.me
end_hunk_1
