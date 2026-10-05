Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/EraseUnusedOperandsAndResults?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1560
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4mlir6linalg39deduplicateOperandsAndRemoveDeadResultsERNS_12RewriterBaseENS0_9GenericOpEb:bb.a

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE22hasPureTensorSemanticsEv.exit.thread.i: ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE22hasPureTensorSemanticsEv.exit.i, %_ZN4mlir9Operation11getOperandsEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #17, !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #17, !noalias !302
  call void @_ZN4mlir6linalg9GenericOp17getOutputsMutableEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %34, ptr noundef nonnull align 8 dereferenceable(8) %31) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %33, ptr noundef nonnull align 8 dereferenceable(56) %34, i64 16, i1 false), !noalias !302
  %i.hi = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 2 uses
  store ptr %i.hj, ptr %i.hi, align 8, !tbaa !12, !alias.scope !303, !noalias !302
  %i.hk = getelementptr inbounds nuw i8, ptr %33, i64 24
  store i32 0, ptr %i.hk, align 8, !tbaa !13, !alias.scope !303, !noalias !302
  %i.hl = getelementptr inbounds nuw i8, ptr %33, i64 28
  store i32 1, ptr %i.hl, align 4, !tbaa !14, !alias.scope !303, !noalias !302
  %i.hm = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !13, !noalias !304
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.hn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9enumerateIN4mlir19MutableOperandRangeEJEEEDaOT_DpOT0_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE22hasPureTensorSemanticsEv.exit.thread.i
  %i.ho = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.hp = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairIjN4mlir14NamedAttributeEEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(40) %i.hi, ptr noundef nonnull align 8 dereferenceable(40) %i.ho) ; 0 uses
  br label %_ZN4llvm9enumerateIN4mlir19MutableOperandRangeEJEEEDaOT_DpOT0_.exit.i

_ZN4llvm9enumerateIN4mlir19MutableOperandRangeEJEEEDaOT_DpOT0_.exit.i: ; preds = %bb.z, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE22hasPureTensorSemanticsEv.exit.thread.i
  %i.hq = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !12, !noalias !302 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZN4mlir19MutableOperandRangeD2Ev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm9enumerateIN4mlir19MutableOperandRangeEJEEEDaOT_DpOT0_.exit.i
  call void @free(ptr noundef %i.hr) #17
  br label %_ZN4mlir19MutableOperandRangeD2Ev.exit.i

_ZN4mlir19MutableOperandRangeD2Ev.exit.i:         ; preds = %bb.aa, %_ZN4llvm9enumerateIN4mlir19MutableOperandRangeEJEEEDaOT_DpOT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #17, !noalias !302
  %i.hu = call noundef ptr @_ZNK4mlir19MutableOperandRange5beginEv(ptr noundef nonnull align 8 dereferenceable(56) %33) #17, !noalias !305 ; 2 uses
  %i.hv = call noundef ptr @_ZNK4mlir19MutableOperandRange3endEv(ptr noundef nonnull align 8 dereferenceable(56) %33) #17, !noalias !306 ; 2 uses
  %.not112.i = icmp eq ptr %i.hu, %i.hv
  br i1 %.not112.i, label %._crit_edge.i45, label %.lr.ph.i39

._crit_edge.i45:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit.i, %_ZN4mlir19MutableOperandRangeD2Ev.exit.i
  %i.hw = load ptr, ptr %i.hi, align 8, !tbaa !12, !noalias !302 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.hj
  br i1 %i.hx, label %_ZN4llvm6detail5zippyINS0_14zip_enumeratorEJNS0_12index_streamEN4mlir19MutableOperandRangeEEED2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i45
  call void @free(ptr noundef %i.hw) #17
  br label %_ZN4llvm6detail5zippyINS0_14zip_enumeratorEJNS0_12index_streamEN4mlir19MutableOperandRangeEEED2Ev.exit.i

_ZN4llvm6detail5zippyINS0_14zip_enumeratorEJNS0_12index_streamEN4mlir19MutableOperandRangeEEED2Ev.exit.i: ; preds = %bb.ab, %._crit_edge.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17, !noalias !302
  br label %bb.bn

.lr.ph.i39:                                       ; preds = %_ZN4mlir19MutableOperandRangeD2Ev.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit.i
  %.sroa.7101.0114.i = phi i32 [ %i.iy, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit.i ], [ 0, %_ZN4mlir19MutableOperandRangeD2Ev.exit.i ] ; 2 uses
  %.sroa.098.0113.i = phi ptr [ %i.iz, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit.i ], [ %i.hu, %_ZN4mlir19MutableOperandRangeD2Ev.exit.i ] ; 3 uses
  %i.hy = load i32, ptr %i.m, align 8, !tbaa !13, !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !302
  store i32 %.sroa.7101.0114.i, ptr %i.a, align 4, !tbaa !50, !noalias !302
  %i.hz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1) %51, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.fca.0.extract.i.i40 = extractvalue { ptr, i8 } %i.hz, 0
  %i.ia = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i40, i64 4
  store i32 %i.hy, ptr %i.ia, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !302
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.098.0113.i, i64 24
  %.sroa.0.0.copyload.i.i41 = load ptr, ptr %i.ib, align 8, !tbaa !49 ; 2 uses
  %i.ic = load i32, ptr %i.m, align 8, !tbaa !13, !noalias !302 ; 2 uses
  %i.id = load i32, ptr %i.n, align 4, !tbaa !14, !noalias !302
  %.not.i41.i = icmp ult i32 %i.ic, %i.id
  br i1 %.not.i41.i, label %bb.ad, label %bb.ac, !prof !46

bb.ac:                                            ; preds = %.lr.ph.i39
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(64) %48, ptr %.sroa.0.0.copyload.i.i41)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i42

bb.ad:                                            ; preds = %.lr.ph.i39
  %i.ie = zext i32 %i.ic to i64
  %i.if = load ptr, ptr %48, align 8, !tbaa !12, !noalias !302
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ie
  store ptr %.sroa.0.0.copyload.i.i41, ptr %i.ig, align 1
  %i.ih = load i32, ptr %i.m, align 8, !tbaa !13, !noalias !302
  %i.ii = add i32 %i.ih, 1
  store i32 %i.ii, ptr %i.m, align 8, !tbaa !13, !noalias !302
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i42

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i42: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #17, !noalias !302
  %i.ij = call ptr @_ZN4mlir6linalg9GenericOp15getIndexingMapsEv(ptr noundef nonnull align 8 dereferenceable(8) %31) #17
  store ptr %i.ij, ptr %30, align 8, !noalias !302
  %i.ik = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %30) #17, !noalias !307
  %i.il = extractvalue { ptr, i64 } %i.ik, 0
  %i.im = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %30) #17, !noalias !307 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17, !noalias !302
  %i.in = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.098.0113.i) #17
  %i.io = zext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.io
  %.sroa.0.0.copyload.i.i.i.i.i43 = load ptr, ptr %i.ip, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %29), !noalias !302
  store ptr %.sroa.0.0.copyload.i.i.i.i.i43, ptr %29, align 8, !noalias !302
  %i.iq = call ptr @_ZNK4mlir13AffineMapAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %29) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29), !noalias !302
  %i.ir = load i32, ptr %i.p, align 8, !tbaa !13, !noalias !302 ; 2 uses
  %i.is = load i32, ptr %i.q, align 4, !tbaa !14, !noalias !302
  %.not.i42.i = icmp ult i32 %i.ir, %i.is
  br i1 %.not.i42.i, label %bb.af, label %bb.ae, !prof !46

bb.ae:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i42
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(64) %49, ptr %i.iq)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit.i

bb.af:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit.i42
  %i.it = zext i32 %i.ir to i64
  %i.iu = load ptr, ptr %49, align 8, !tbaa !12, !noalias !302
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.it
  store ptr %i.iq, ptr %i.iv, align 1
  %i.iw = load i32, ptr %i.p, align 8, !tbaa !13, !noalias !302
  %i.ix = add i32 %i.iw, 1
  store i32 %i.ix, ptr %i.p, align 8, !tbaa !13, !noalias !302
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AffineMapELb1EE9push_backES2_.exit.i: ; preds = %bb.af, %bb.ae
  %i.iy = add i32 %.sroa.7101.0114.i, 1
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.098.0113.i, i64 32 ; 2 uses
  %.not.i44 = icmp eq ptr %i.iz, %i.hv
  br i1 %.not.i44, label %._crit_edge.i45, label %.lr.ph.i39

bb.ag:                                            ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE22hasPureTensorSemanticsEv.exit.i
  %i.ja = load i32, ptr %i.go, align 4, !noalias !302 ; 3 uses
  %i.jb = and i32 %i.ja, 8388607
  %i.jc = icmp ne i32 %i.jb, 0
  call void @llvm.assume(i1 %i.jc)
  %i.jd = lshr i32 %i.ja, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.jd, 1
  %i.je = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.027.0.copyload, i64 %i.je
  %i.jg = lshr i32 %i.ja, 21
  %i.jh = and i32 %i.jg, 2040
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.027.0.copyload, i64 40
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !38, !noalias !302
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [32 x i8], ptr %i.jj, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 72
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !39, !noalias !302
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -8
  %i.jr = call noundef ptr @_ZN4mlir5Block13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.jq) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #17, !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #17, !noalias !302
  call void @_ZN4mlir6linalg9GenericOp17getOutputsMutableEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %36, ptr noundef nonnull align 8 dereferenceable(8) %31) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %35, ptr noundef nonnull align 8 dereferenceable(56) %36, i64 16, i1 false), !noalias !302
  %i.js = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 2 uses
  store ptr %i.jt, ptr %i.js, align 8, !tbaa !12, !alias.scope !308, !noalias !302
  %i.ju = getelementptr inbounds nuw i8, ptr %35, i64 24
  store i32 0, ptr %i.ju, align 8, !tbaa !13, !alias.scope !308, !noalias !302
  %i.jv = getelementptr inbounds nuw i8, ptr %35, i64 28
  store i32 1, ptr %i.jv, align 4, !tbaa !14, !alias.scope !308, !noalias !302
  %i.jw = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !13, !noalias !309
  %.not.i.i.i.i.i.i.i.i.i43.i = icmp eq i32 %i.jx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i43.i, label %_ZN4llvm9enumerateIN4mlir19MutableOperandRangeEJEEEDaOT_DpOT0_.exit44.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jy = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.jz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairIjN4mlir14NamedAttributeEEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(40) %i.js, ptr noundef nonnull align 8 dereferenceable(40) %i.jy) ; 0 uses
  br label %_ZN4llvm9enumerateIN4mlir19MutableOperandRangeEJEEEDaOT_DpOT0_.exit44.i

_ZN4llvm9enumerateIN4mlir19MutableOperandRangeEJEEEDaOT_DpOT0_.exit44.i: ; preds = %bb.ah, %bb.ag
  %i.ka = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !12, !noalias !302 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.kd = icmp eq ptr %i.kb, %i.kc
  br i1 %i.kd, label %_ZN4mlir19MutableOperandRangeD2Ev.exit45.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm9enumerateIN4mlir19MutableOperandRangeEJEEEDaOT_DpOT0_.exit44.i
  call void @free(ptr noundef %i.kb) #17
  br label %_ZN4mlir19MutableOperandRangeD2Ev.exit45.i

_ZN4mlir19MutableOperandRangeD2Ev.exit45.i:       ; preds = %bb.ai, %_ZN4llvm9enumerateIN4mlir19MutableOperandRangeEJEEEDaOT_DpOT0_.exit44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17, !noalias !302
  %i.ke = call noundef ptr @_ZNK4mlir19MutableOperandRange5beginEv(ptr noundef nonnull align 8 dereferenceable(56) %35) #17, !noalias !310 ; 2 uses
  %i.kf = call noundef ptr @_ZNK4mlir19MutableOperandRange3endEv(ptr noundef nonnull align 8 dereferenceable(56) %35) #17, !noalias !311 ; 2 uses
  %.not108115.i = icmp eq ptr %i.ke, %i.kf
  br i1 %.not108115.i, label %._crit_edge119.i, label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %_ZN4mlir19MutableOperandRangeD2Ev.exit45.i
  %i.kg = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.ki = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jr, i64 72
  %i.kk = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.km = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.kn = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.ko = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.kp = getelementptr inbounds nuw i8, ptr %22, i64 32
  %64 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6linalg7YieldOpEvE2idE
  %i.kq = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %32, i64 24
  br label %bb.ak

._crit_edge119.i:                                 ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit58.i, %_ZN4mlir19MutableOperandRangeD2Ev.exit45.i
  %i.ks = load ptr, ptr %i.js, align 8, !tbaa !12, !noalias !302 ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.jt
  br i1 %i.kt, label %_ZN4llvm6detail5zippyINS0_14zip_enumeratorEJNS0_12index_streamEN4mlir19MutableOperandRangeEEED2Ev.exit46.i, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge119.i
  call void @free(ptr noundef %i.ks) #17
  br label %_ZN4llvm6detail5zippyINS0_14zip_enumeratorEJNS0_12index_streamEN4mlir19MutableOperandRangeEEED2Ev.exit46.i

_ZN4llvm6detail5zippyINS0_14zip_enumeratorEJNS0_12index_streamEN4mlir19MutableOperandRangeEEED2Ev.exit46.i: ; preds = %bb.aj, %._crit_edge119.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #17, !noalias !302
  br label %bb.bn

bb.ak:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit58.i, %.lr.ph118.i
  %.sroa.790.0117.i = phi i64 [ 0, %.lr.ph118.i ], [ %i.ss, %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit58.i ] ; 3 uses
  %.sroa.087.0116.i = phi ptr [ %i.ke, %.lr.ph118.i ], [ %i.st, %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit58.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17, !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17, !noalias !302
  call void @_ZN4mlir6linalg9GenericOp17getOutputsMutableEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %27, ptr noundef nonnull align 8 dereferenceable(8) %31) #17
  %i.ku = call { ptr, i64 } @_ZNK4mlir19MutableOperandRangecvNS_12OperandRangeEEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #17 ; 2 uses
  %i.kv = load ptr, ptr %i.kg, align 8, !tbaa !12, !noalias !302 ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.kh
  br i1 %i.kw, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE11getDpsInitsEv.exit.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @free(ptr noundef %i.kv) #17
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE11getDpsInitsEv.exit.i.i

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE11getDpsInitsEv.exit.i.i: ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17, !noalias !302
  %i.kx = extractvalue { ptr, i64 } %i.ku, 0
  store ptr %i.kx, ptr %28, align 8, !noalias !302
  %i.ky = extractvalue { ptr, i64 } %i.ku, 1
  store i64 %i.ky, ptr %i.ki, align 8, !noalias !302
  %i.kz = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.087.0116.i) #17
  %i.la = call noundef i32 @_ZNK4mlir12OperandRange20getBeginOperandIndexEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #17
  %i.lb = sub i32 %i.kz, %i.la                    ; 3 uses
  %i.lc = load ptr, ptr %31, align 8, !tbaa !20, !noalias !302 ; 2 uses
  %i.ld = icmp ult i32 %i.lb, 6
  br i1 %i.ld, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE11getDpsInitsEv.exit.i.i
  %i.le = add nuw nsw i32 %i.lb, 1
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = sub nsw i64 0, %i.lf
  %i.lh = getelementptr inbounds [16 x i8], ptr %i.lc, i64 %i.lg
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE15getTiedOpResultEPNS_9OpOperandE.exit.i

bb.an:                                            ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE11getDpsInitsEv.exit.i.i
  %i.li = getelementptr inbounds i8, ptr %i.lc, i64 -96
  %i.lj = add i32 %i.lb, -5
  %i.lk = zext i32 %i.lj to i64
  %i.ll = sub nsw i64 0, %i.lk
  %i.lm = getelementptr inbounds [24 x i8], ptr %i.li, i64 %i.ll
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE15getTiedOpResultEPNS_9OpOperandE.exit.i

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE15getTiedOpResultEPNS_9OpOperandE.exit.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i = phi ptr [ %i.lh, %bb.am ], [ %i.lm, %bb.an ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17, !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17, !noalias !302
  %i.ln = call ptr @_ZN4mlir6linalg9GenericOp15getIndexingMapsEv(ptr noundef nonnull align 8 dereferenceable(8) %31) #17
  store ptr %i.ln, ptr %26, align 8, !noalias !302
  %i.lo = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #17, !noalias !312
  %i.lp = extractvalue { ptr, i64 } %i.lo, 0
  %i.lq = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #17, !noalias !312 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17, !noalias !302
  %i.lr = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.087.0116.i) #17
  %i.ls = zext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %i.ls
  %.sroa.0.0.copyload.i.i.i.i47.i = load ptr, ptr %i.lt, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %25), !noalias !302
  store ptr %.sroa.0.0.copyload.i.i.i.i47.i, ptr %25, align 8, !noalias !302
  %i.lu = call ptr @_ZNK4mlir13AffineMapAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %25), !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #17, !noalias !302
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.087.0116.i, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i48.i = load ptr, ptr %i.lv, align 8, !tbaa !49
  %i.lw = trunc i64 %.sroa.790.0117.i to i32      ; 2 uses
  %i.lx = load ptr, ptr %i.kj, align 8, !tbaa !58
  %i.ly = and i64 %.sroa.790.0117.i, 4294967295
  %i.lz = getelementptr inbounds nuw [32 x i8], ptr %i.lx, i64 %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %.sroa.0.0.copyload.i.i.i47 = load ptr, ptr %i.ma, align 8, !tbaa !49
  %i.mb = ptrtoint ptr %.sroa.0.0.copyload.i.i.i47 to i64
  store i64 %i.mb, ptr %37, align 8, !tbaa !49, !alias.scope !313, !noalias !302
  %i.mc = ptrtoint ptr %i.lu to i64
  store i64 %i.mc, ptr %i.kk, align 8, !tbaa !55, !alias.scope !313, !noalias !302
  %i.md = ptrtoint ptr %.sroa.0.0.copyload.i48.i to i64
  store i64 %i.md, ptr %i.kl, align 8, !tbaa !49, !alias.scope !313, !noalias !302
  %.sroa.05.0.copyload.i = load ptr, ptr %31, align 8, !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %24), !noalias !302
  store ptr %.sroa.05.0.copyload.i, ptr %24, align 8, !noalias !302
  %i.me = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !45
  %i.mf = icmp eq ptr %i.me, null
  br i1 %i.mf, label %bb.ao, label %_ZL17isResultValueDeadN4mlir6linalg9GenericOpENS_8OpResultE.exit.thread.i

bb.ao:                                            ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE15getTiedOpResultEPNS_9OpOperandE.exit.i
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.mg, align 8 ; 2 uses
  %i.mh = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %i.mi = icmp eq i64 %i.mh, 6
  br i1 %i.mi, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.mj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !319
  %i.ml = trunc i64 %i.mk to i32
  %i.mm = add i32 %i.ml, 6
  br label %_ZNK4mlir8OpResult15getResultNumberEv.exit.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.mn = trunc i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.mo = and i32 %i.mn, 7
  br label %_ZNK4mlir8OpResult15getResultNumberEv.exit.i.i

_ZNK4mlir8OpResult15getResultNumberEv.exit.i.i:   ; preds = %bb.aq, %bb.ap
  %.1.i.i.i.i = phi i32 [ %i.mo, %bb.aq ], [ %i.mm, %bb.ap ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17, !noalias !302
  call void @_ZN4mlir6linalg9GenericOp17getOutputsMutableEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %24) #17
  %i.mp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4mlir19MutableOperandRangeixEj(ptr noundef nonnull align 8 dereferenceable(56) %23, i32 noundef %.1.i.i.i.i) #17
  %i.mq = load ptr, ptr %i.km, align 8, !tbaa !12, !noalias !302 ; 2 uses
  %i.mr = icmp eq ptr %i.mq, %i.kn
  br i1 %i.mr, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE17getDpsInitOperandEl.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNK4mlir8OpResult15getResultNumberEv.exit.i.i
  call void @free(ptr noundef %i.mq) #17
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE17getDpsInitOperandEl.exit.i.i

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE17getDpsInitOperandEl.exit.i.i: ; preds = %bb.ar, %_ZNK4mlir8OpResult15getResultNumberEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17, !noalias !302
  %i.ms = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %i.mp) #17
  %i.mt = load ptr, ptr %24, align 8, !tbaa !20, !noalias !302 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 44
  %i.mv = load i32, ptr %i.mu, align 4            ; 3 uses
  %i.mw = and i32 %i.mv, 8388607
  %i.mx = icmp ne i32 %i.mw, 0
  call void @llvm.assume(i1 %i.mx)
  %i.my = lshr i32 %i.mv, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.my, 1
  %i.mz = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %i.mt, i64 %i.mz
  %i.nb = lshr i32 %i.mv, 21
  %i.nc = and i32 %i.nb, 2040
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mt, i64 40
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !38
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [32 x i8], ptr %i.ne, i64 %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 72
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !39 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 48
  %i.nm = zext i32 %i.ms to i64
  %i.nn = load ptr, ptr %i.nl, align 8, !tbaa !42 ; 3 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %i.nm
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.no, align 8
  %i.np = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !45
  %.not.i49.i = icmp eq ptr %i.np, null
  br i1 %.not.i49.i, label %_ZL17isResultValueDeadN4mlir6linalg9GenericOpENS_8OpResultE.exit.thread106.i, label %bb.as

_ZL17isResultValueDeadN4mlir6linalg9GenericOpENS_8OpResultE.exit.thread106.i: ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE17getDpsInitOperandEl.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24), !noalias !302
  br label %bb.az

bb.as:                                            ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE17getDpsInitOperandEl.exit.i.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nk, i64 56
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17, !noalias !302
  call void @_ZN4mlir6linalg9GenericOp17getOutputsMutableEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %24) #17
  %i.ns = call { ptr, i64 } @_ZNK4mlir19MutableOperandRangecvNS_12OperandRangeEEv(ptr noundef nonnull align 8 dereferenceable(56) %22) #17
  %i.nt = load ptr, ptr %i.ko, align 8, !tbaa !12, !noalias !302 ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.kp
  br i1 %i.nu, label %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE19getRegionOutputArgsEv.exit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @free(ptr noundef %i.nt) #17
  br label %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE19getRegionOutputArgsEv.exit.i.i

_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE19getRegionOutputArgsEv.exit.i.i: ; preds = %bb.at, %bb.as
  %i.nv = ptrtoint ptr %i.nr to i64
  %i.nw = ptrtoint ptr %i.nn to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = ashr exact i64 %i.nx, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17, !noalias !302
  %i.nz = extractvalue { ptr, i64 } %i.ns, 1
  %.sroa.0.0.copyload.pn.idx.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.ny, i64 %i.nz)
  %.sroa.0.0.copyload.pn.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %.sroa.0.0.copyload.pn.idx.i.i.i.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i5.i.i = load i64, ptr %i.mg, align 8
  %i.oa = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i5.i.i, 7 ; 2 uses
  %i.ob = icmp eq i64 %i.oa, 6
  br i1 %i.ob, label %bb.au, label %_ZNK4mlir8OpResult15getResultNumberEv.exit7.i.i

bb.au:                                            ; preds = %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE19getRegionOutputArgsEv.exit.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !319
  %i.oe = add i64 %i.od, 6
  %i.of = and i64 %i.oe, 4294967295
  br label %_ZNK4mlir8OpResult15getResultNumberEv.exit7.i.i

_ZNK4mlir8OpResult15getResultNumberEv.exit7.i.i:  ; preds = %bb.au, %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE19getRegionOutputArgsEv.exit.i.i
  %.1.i.i6.i.i = phi i64 [ %i.of, %bb.au ], [ %i.oa, %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE19getRegionOutputArgsEv.exit.i.i ]
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.pn.i.i.i.i, i64 %.1.i.i6.i.i
  %i.oh = load i64, ptr %i.og, align 8
  %i.oi = inttoptr i64 %i.oh to ptr               ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i50.i = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.i50.i, label %_ZL17isResultValueDeadN4mlir6linalg9GenericOpENS_8OpResultE.exit.thread.i, label %_ZNK4mlir5Value9hasOneUseEv.exit.i.i

_ZNK4mlir5Value9hasOneUseEv.exit.i.i:             ; preds = %_ZNK4mlir8OpResult15getResultNumberEv.exit7.i.i
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !65
  %i.ol = icmp eq ptr %i.ok, null
  br i1 %i.ol, label %bb.av, label %_ZL17isResultValueDeadN4mlir6linalg9GenericOpENS_8OpResultE.exit.thread.i

bb.av:                                            ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.i.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !66 ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 36
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !67 ; 2 uses
  %i.oq = icmp eq i32 %i.op, 0
  %i.or = getelementptr inbounds i8, ptr %i.on, i64 -16
  %i.os = zext i32 %i.op to i64                   ; 2 uses
  %.sroa.0.0.i.i.i51.i = select i1 %i.oq, ptr null, ptr %i.or ; 2 uses
  %i.ot = call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS3_6detail12OpResultImplENS3_8OpResultES8_S8_E8iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNKS4_9use_emptyEvEUlS8_E_EEET_SG_SG_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i.i51.i, i64 0, ptr %.sroa.0.0.i.i.i51.i, i64 %i.os)
  %i.ou = extractvalue { ptr, i64 } %i.ot, 1
  %i.ov = icmp eq i64 %i.ou, %i.os
  br i1 %i.ov, label %bb.aw, label %_ZL17isResultValueDeadN4mlir6linalg9GenericOpENS_8OpResultE.exit.thread.i

bb.aw:                                            ; preds = %bb.av
  %i.ow = getelementptr inbounds nuw i8, ptr %i.on, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.ow, align 8, !tbaa !68
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !71
  %65 = icmp ne ptr %i.oy, @_ZN4mlir6detail14TypeIDResolverINS_6linalg7YieldOpEvE2idE
  %spec.select.i.i.i.i.not.i.i = or i1 %64, %65
  br i1 %spec.select.i.i.i.i.not.i.i, label %_ZL17isResultValueDeadN4mlir6linalg9GenericOpENS_8OpResultE.exit.thread.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i8.i.i = load i64, ptr %i.mg, align 8
  %i.oz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i8.i.i, 7 ; 2 uses
  %i.pa = icmp eq i64 %i.oz, 6
  br i1 %i.pa, label %bb.ay, label %_ZL17isResultValueDeadN4mlir6linalg9GenericOpENS_8OpResultE.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.pb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !319
  %i.pd = add i64 %i.pc, 6
  %i.pe = and i64 %i.pd, 4294967295
  br label %_ZL17isResultValueDeadN4mlir6linalg9GenericOpENS_8OpResultE.exit.i

_ZL17isResultValueDeadN4mlir6linalg9GenericOpENS_8OpResultE.exit.thread.i: ; preds = %bb.aw, %bb.av, %_ZNK4mlir5Value9hasOneUseEv.exit.i.i, %_ZNK4mlir8OpResult15getResultNumberEv.exit7.i.i, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE15getTiedOpResultEPNS_9OpOperandE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24), !noalias !302
  br label %bb.be

_ZL17isResultValueDeadN4mlir6linalg9GenericOpENS_8OpResultE.exit.i: ; preds = %bb.ay, %bb.ax
  %.1.i.i9.i.i = phi i64 [ %i.pe, %bb.ay ], [ %i.oz, %bb.ax ]
  %i.pf = getelementptr inbounds nuw i8, ptr %i.on, i64 72
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !58
  %i.ph = getelementptr inbounds nuw [32 x i8], ptr %i.pg, i64 %.1.i.i9.i.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %.sroa.0.0.copyload.i.i.i.i52.i = load ptr, ptr %i.pi, align 8, !tbaa !49
  %.not24.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i52.i, %i.oi
  call void @llvm.lifetime.end.p0(ptr nonnull %24), !noalias !302
  br i1 %.not24.i.i, label %bb.az, label %bb.be

bb.az:                                            ; preds = %_ZL17isResultValueDeadN4mlir6linalg9GenericOpENS_8OpResultE.exit.i, %_ZL17isResultValueDeadN4mlir6linalg9GenericOpENS_8OpResultE.exit.thread106.i
  %i.pj = load i32, ptr %i.g, align 8, !tbaa !13, !noalias !302 ; 2 uses
  %i.pk = load i32, ptr %i.h, align 4, !tbaa !14, !noalias !302
  %.not.i53.i = icmp ult i32 %i.pj, %i.pk
  br i1 %.not.i53.i, label %bb.bb, label %bb.ba, !prof !46

bb.ba:                                            ; preds = %bb.az
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(64) %46, ptr noundef nonnull %.sroa.087.0116.i)
  %.pre.i49 = load i32, ptr %i.g, align 8, !tbaa !13, !noalias !302
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit.i50

bb.bb:                                            ; preds = %bb.az
  %i.pl = zext i32 %i.pj to i64
  %i.pm = load ptr, ptr %46, align 8, !tbaa !12, !noalias !302
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %i.pl
  store ptr %.sroa.087.0116.i, ptr %i.pn, align 1
  %i.po = load i32, ptr %i.g, align 8, !tbaa !13, !noalias !302
  %i.pp = add i32 %i.po, 1                        ; 2 uses
  store i32 %i.pp, ptr %i.g, align 8, !tbaa !13, !noalias !302
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit.i50

_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit.i50: ; preds = %bb.bb, %bb.ba
  %i.pq = phi i32 [ %.pre.i49, %bb.ba ], [ %i.pp, %bb.bb ]
  %i.pr = load ptr, ptr %46, align 8, !tbaa !12, !noalias !302
  %i.ps = zext i32 %i.pq to i64
  %.sroa.01.0.copyload.i.i51 = load ptr, ptr %31, align 8, !noalias !302 ; 3 uses
  %.not.i.i.i.i.i52 = icmp eq ptr %.sroa.01.0.copyload.i.i51, null
  br i1 %.not.i.i.i.i.i52, label %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE22canOpOperandsBeDroppedEN4llvm8ArrayRefIPNS_9OpOperandEEE.exit.i53, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit.i50
  %i.pt = call noundef ptr @_ZN4mlir11OpInterfaceINS_6linalg8LinalgOpENS1_6detail23LinalgOpInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %.sroa.01.0.copyload.i.i51)
  br label %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE22canOpOperandsBeDroppedEN4llvm8ArrayRefIPNS_9OpOperandEEE.exit.i53

_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE22canOpOperandsBeDroppedEN4llvm8ArrayRefIPNS_9OpOperandEEE.exit.i53: ; preds = %bb.bc, %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit.i50
  %i.pu = phi ptr [ %i.pt, %bb.bc ], [ null, %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit.i50 ]
  %i.pv = call noundef zeroext i1 @_ZN4mlir6linalg6detail26canOpOperandsBeDroppedImplENS0_8LinalgOpEN4llvm8ArrayRefIPNS_9OpOperandEEE(ptr %.sroa.01.0.copyload.i.i51, ptr %i.pu, ptr %i.pr, i64 %i.ps) #17
  br i1 %i.pv, label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit58.i, label %bb.bd

bb.bd:                                            ; preds = %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE22canOpOperandsBeDroppedEN4llvm8ArrayRefIPNS_9OpOperandEEE.exit.i53
  %i.pw = load i32, ptr %i.g, align 8, !tbaa !13, !noalias !302
  %i.px = add i32 %i.pw, -1
  store i32 %i.px, ptr %i.g, align 8, !tbaa !13, !noalias !302
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZL17isResultValueDeadN4mlir6linalg9GenericOpENS_8OpResultE.exit.i, %_ZL17isResultValueDeadN4mlir6linalg9GenericOpENS_8OpResultE.exit.thread.i
  %i.py = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.087.0116.i) #17
  %i.pz = load ptr, ptr %31, align 8, !tbaa !20, !noalias !302 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 44
  %i.qb = load i32, ptr %i.qa, align 4            ; 3 uses
  %i.qc = and i32 %i.qb, 8388607
  %i.qd = icmp ne i32 %i.qc, 0
  call void @llvm.assume(i1 %i.qd)
  %i.qe = lshr i32 %i.qb, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i48 = and i32 %i.qe, 1
  %i.qf = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i48 to i64
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr %i.pz, i64 %i.qf
  %i.qh = lshr i32 %i.qb, 21
  %i.qi = and i32 %i.qh, 2040
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.qj
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pz, i64 40
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !38
  %i.qn = zext i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [32 x i8], ptr %i.qk, i64 %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 72
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !39
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 48
  %i.qs = zext i32 %i.py to i64
  %i.qt = load ptr, ptr %i.qr, align 8, !tbaa !42
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.qt, i64 %i.qs
  %.sroa.0.0.copyload.i.i54.i = load ptr, ptr %i.qu, align 8
  %i.qv = load ptr, ptr %.sroa.0.0.copyload.i.i54.i, align 8, !tbaa !45
  %.not109.i = icmp eq ptr %i.qv, null
  br i1 %.not109.i, label %bb.bf, label %.critedge.i

bb.bf:                                            ; preds = %bb.be
  %i.qw = call noundef ptr @_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapISt5tupleIJN4mlir5ValueENS3_9AffineMapES4_EEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E6doFindIS6_EEPKSB_RKT_(ptr noundef nonnull align 1 dereferenceable(1) %32, ptr noundef nonnull align 8 dereferenceable(24) %37), !noalias !320 ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.qw, null
  %i.qx = load i32, ptr %32, align 8, !noalias !321
  %i.qy = and i32 %i.qx, 1
  %.not.i.i.i.i5.i.i.i = icmp eq i32 %i.qy, 0     ; 2 uses
  %i.qz = load ptr, ptr %i.kq, align 8, !noalias !321
  %i.ra = select i1 %.not.i.i.i.i5.i.i.i, ptr %i.qz, ptr %i.kq
  %i.rb = load i32, ptr %i.kr, align 8, !noalias !321
  %i.rc = select i1 %.not.i.i.i.i5.i.i.i, i32 %i.rb, i32 4
  %i.rd = zext i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw [32 x i8], ptr %i.ra, i64 %i.rd
  %.not110111.i = icmp eq ptr %i.qw, %i.re
  %.not110.i = select i1 %.not.not.i.i.i, i1 true, i1 %.not110111.i
  br i1 %.not110.i, label %.critedge.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.rg = load i32, ptr %i.rf, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !302
  store i32 %i.lw, ptr %i.b, align 4, !tbaa !50, !noalias !302
  %i.rh = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1) %51, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.fca.0.extract.i56.i = extractvalue { ptr, i8 } %i.rh, 0
  %i.ri = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i56.i, i64 4
  store i32 %i.rg, ptr %i.ri, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !302
  %i.rj = load i32, ptr %i.g, align 8, !tbaa !13, !noalias !302 ; 2 uses
  %i.rk = load i32, ptr %i.h, align 4, !tbaa !14, !noalias !302
  %.not.i57.i = icmp ult i32 %i.rj, %i.rk
  br i1 %.not.i57.i, label %bb.bi, label %bb.bh, !prof !46

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(64) %46, ptr noundef nonnull %.sroa.087.0116.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit58.i

bb.bi:                                            ; preds = %bb.bg
  %i.rl = zext i32 %i.rj to i64
  %i.rm = load ptr, ptr %46, align 8, !tbaa !12, !noalias !302
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %i.rl
  store ptr %.sroa.087.0116.i, ptr %i.rn, align 1
  %i.ro = load i32, ptr %i.g, align 8, !tbaa !13, !noalias !302
  %i.rp = add i32 %i.ro, 1
  store i32 %i.rp, ptr %i.g, align 8, !tbaa !13, !noalias !302
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE9push_backES3_.exit58.i

.critedge.i:                                      ; preds = %bb.bf, %bb.be
  %i.rq = load i32, ptr %i.m, align 8, !tbaa !13, !noalias !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17, !noalias !302
  store i32 %i.lw, ptr %i.c, align 4, !tbaa !50, !noalias !302
  %i.rr = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1) %51, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %.fca.0.extract.i59.i = extractvalue { ptr, i8 } %i.rr, 0
  %i.rs = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i59.i, i64 4
  store i32 %i.rq, ptr %i.rs, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17, !noalias !302
  %i.rt = load i32, ptr %i.m, align 8, !tbaa !13, !noalias !302
  %i.ru = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt5tupleIJN4mlir5ValueENS3_9AffineMapES4_EEjLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E24lookupOrInsertIntoBucketIRKS6_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %32, ptr noundef nonnull align 8 dereferenceable(24) %37)
  %.fca.0.extract.i60.i = extractvalue { ptr, i8 } %i.ru, 0
  %i.rv = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i60.i, i64 24
  store i32 %i.rt, ptr %i.rv, align 4, !tbaa !50
  %.sroa.0.0.copyload.i61.i = load ptr, ptr %i.lv, align 8, !tbaa !49 ; 2 uses
  %i.rw = load i32, ptr %i.m, align 8, !tbaa !13, !noalias !302 ; 2 uses
  %i.rx = load i32, ptr %i.n, align 4, !tbaa !14, !noalias !302
  %.not.i62.i = icmp ult i32 %i.rw, %i.rx
  br i1 %.not.i62.i, label %bb.bk, label %bb.bj, !prof !46

bb.bj:                                            ; preds = %.critedge.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(64) %48, ptr %.sroa.0.0.copyload.i61.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit63.i

bb.bk:                                            ; preds = %.critedge.i
  %i.ry = zext i32 %i.rw to i64
  %i.rz = load ptr, ptr %48, align 8, !tbaa !12, !noalias !302
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %i.ry
  store ptr %.sroa.0.0.copyload.i61.i, ptr %i.sa, align 1
  %i.sb = load i32, ptr %i.m, align 8, !tbaa !13, !noalias !302
  %i.sc = add i32 %i.sb, 1
  store i32 %i.sc, ptr %i.m, align 8, !tbaa !13, !noalias !302
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit63.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit63.i: ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17, !noalias !302
  %i.sd = call ptr @_ZN4mlir6linalg9GenericOp15getIndexingMapsEv(ptr noundef nonnull align 8 dereferenceable(8) %31) #17
  store ptr %i.sd, ptr %21, align 8, !noalias !302
  %i.se = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #17, !noalias !331
  %i.sf = extractvalue { ptr, i64 } %i.se, 0
  %i.sg = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #17, !noalias !331 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17, !noalias !302
  %i.sh = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.087.0116.i) #17
  %i.si = zext i32 %i.sh to i64
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %i.si
  %.sroa.0.0.copyload.i.i.i.i64.i = load ptr, ptr %i.sj, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %20), !noalias !302
  store ptr %.sroa.0.0.copyload.i.i.i.i64.i, ptr %20, align 8, !noalias !302
  %i.sk = call ptr @_ZNK4mlir13AffineMapAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20), !noalias !302
  %i.sl = load i32, ptr %i.p, align 8, !tbaa !13, !noalias !302 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_142DeduplicateAndRemoveDeadOperandsAndResultsD0Ev:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6linalg9GenericOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i8 %i.d
}

declare void @_ZN4mlir14RewritePattern6anchorEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_142DeduplicateAndRemoveDeadOperandsAndResults15matchAndRewriteEN4mlir6linalg9GenericOpERNS1_15PatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.anon.361, align 8            ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !140, !range !484, !noundef !150
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call { ptr, i8 } @_ZN4mlir6linalg39deduplicateOperandsAndRemoveDeadResultsERNS_12RewriterBaseENS0_9GenericOpEb(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %1, i1 noundef zeroext %i.c) ; 2 uses
  %i.e = extractvalue { ptr, i8 } %i.d, 0
  %i.f = extractvalue { ptr, i8 } %i.d, 1
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = icmp ne ptr %i.e, %1
  %or.cond.not = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.j, align 1, !tbaa !487
  store ptr @.str.12, ptr %4, align 8, !tbaa !15
  store i8 3, ptr %i.i, align 8, !tbaa !488
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %4, ptr %3, align 8, !tbaa !489
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !490  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg9GenericOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #17
  br i1 %i.m, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg9GenericOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8
  %i.o = ptrtoint ptr %3 to i64
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6linalg9GenericOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.o) #17, !inline_history !483
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg9GenericOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg9GenericOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.b, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg9GenericOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.06.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg9GenericOpEEEN4llvm13LogicalResultEOT_PKc.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.06.0
}

declare void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64, i16, ptr noundef, ptr noundef byval(%"class.llvm::ArrayRef.52") align 8) unnamed_addr #2

declare noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6linalg9GenericOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !492, !nonnull !150, !align !493
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #17 ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_128RemoveUnusedCycleInGenericOpD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_128RemoveUnusedCycleInGenericOp15matchAndRewriteEN4mlir6linalg9GenericOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %4 = alloca %"class.mlir::ResultRange::UseIterator", align 8 ; 5 uses
  %5 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %6 = alloca %"class.llvm::iterator_range.397", align 8 ; 7 uses
  %7 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %8 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %9 = alloca %"class.mlir::linalg::GenericOp", align 8 ; 5 uses
  %10 = alloca %"class.mlir::BlockArgument", align 8 ; 4 uses
  %11 = alloca %"class.mlir::ValueUserIterator.390", align 8 ; 4 uses
  store ptr %1, ptr %9, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit.i, label %bb.b, !prof !56

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !59
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit.i

_ZN4mlir9Operation11getOperandsEv.exit.i:         ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.i = tail call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_6detail32DestinationStyleOpInterfaceTraitINS3_6linalg9GenericOpEE22hasPureTensorSemanticsEvEUlS7_E_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i.i, i64 0, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i)
  %i.j = extractvalue { ptr, i64 } %i.i, 1
  %.not.i = icmp eq i64 %.sroa.4.0.i.i.i, %i.j
  br i1 %.not.i, label %bb.c, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE22hasPureTensorSemanticsEv.exit.thread

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i
  %i.k = load i32, ptr %i.a, align 4
  %i.l = and i32 %i.k, 8388608
  %.not.i.i2.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i2.i, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE22hasPureTensorSemanticsEv.exit, label %bb.d, !prof !56

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  %i.q = zext i32 %i.p to i64
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE22hasPureTensorSemanticsEv.exit

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE22hasPureTensorSemanticsEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i3.i = phi ptr [ %i.n, %bb.d ], [ null, %bb.c ] ; 2 uses
  %.sroa.4.0.i.i4.i = phi i64 [ %i.q, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.r = tail call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_6detail32DestinationStyleOpInterfaceTraitINS3_6linalg9GenericOpEE22hasPureTensorSemanticsEvEUlS7_E0_EEET_SK_SK_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i3.i, i64 0, ptr %.sroa.0.0.i.i3.i, i64 %.sroa.4.0.i.i4.i)
  %i.s = extractvalue { ptr, i64 } %i.r, 1
  %.not = icmp eq i64 %.sroa.4.0.i.i4.i, %i.s
  br i1 %.not, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE22hasPureTensorSemanticsEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE22hasPureTensorSemanticsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @_ZN4mlir6linalg9GenericOp17getOutputsMutableEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #17
  %i.t = call { ptr, i64 } @_ZNK4mlir19MutableOperandRangecvNS_12OperandRangeEEv(ptr noundef nonnull align 8 dereferenceable(56) %8) #17
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE11getDpsInitsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.v) #17
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE11getDpsInitsEv.exit

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE11getDpsInitsEv.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.y = extractvalue { ptr, i64 } %i.t, 1        ; 2 uses
  %.not4446 = icmp eq i64 %i.y, 0
  br i1 %.not4446, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE22hasPureTensorSemanticsEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE11getDpsInitsEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 72
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 32
  %12 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6linalg7YieldOpEvE2idE
  %i.ae = ptrtoint ptr %10 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.p
  %.01250 = phi i8 [ 0, %.lr.ph ], [ %.4, %bb.p ] ; 7 uses
  %.sroa.432.049 = phi i64 [ 0, %.lr.ph ], [ %i.di, %bb.p ] ; 6 uses
  %i.af = trunc i64 %.sroa.432.049 to i32
  %i.ag = load ptr, ptr %9, align 8, !tbaa !20    ; 5 uses
  %i.ah = icmp ult i32 %i.af, 6
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = add nuw nsw i64 %.sroa.432.049, 1
  %i.aj = and i64 %i.ai, 15
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.ak
  br label %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_6linalg9GenericOpENS0_15VariadicResultsEE9getResultEj.exit

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds i8, ptr %i.ag, i64 -96
  %i.an = add nuw i64 %.sroa.432.049, 4294967291
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds [24 x i8], ptr %i.am, i64 %i.ap
  br label %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_6linalg9GenericOpENS0_15VariadicResultsEE9getResultEj.exit

_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_6linalg9GenericOpENS0_15VariadicResultsEE9getResultEj.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi ptr [ %i.al, %bb.h ], [ %i.aq, %bb.i ]
  %i.ar = load ptr, ptr %.0.i.i.i, align 8, !tbaa !45
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_6linalg9GenericOpENS0_15VariadicResultsEE9getResultEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %i.au = load i32, ptr %i.at, align 4            ; 3 uses
  %i.av = and i32 %i.au, 8388607
  %i.aw = icmp ne i32 %i.av, 0
  call void @llvm.assume(i1 %i.aw)
  %i.ax = lshr i32 %i.au, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.ax, 1
  %i.ay = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ay
  %i.ba = lshr i32 %i.au, 21
  %i.bb = and i32 %i.ba, 2040
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !38
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !39 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @_ZN4mlir6linalg9GenericOp17getOutputsMutableEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %9) #17
  %i.bo = call { ptr, i64 } @_ZNK4mlir19MutableOperandRangecvNS_12OperandRangeEEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #17
  %i.bp = load ptr, ptr %i.z, align 8, !tbaa !12  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.aa
  br i1 %i.bq, label %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE19getRegionOutputArgsEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.bp) #17
  br label %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE19getRegionOutputArgsEv.exit

_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE19getRegionOutputArgsEv.exit: ; preds = %bb.j, %bb.k
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bl to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.bv = extractvalue { ptr, i64 } %i.bo, 1
  %.sroa.0.0.copyload.pn.idx.i.i = call i64 @llvm.usub.sat.i64(i64 %i.bu, i64 %i.bv)
  %.sroa.0.0.copyload.pn.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.0.0.copyload.pn.idx.i.i
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.pn.i.i, i64 %.sroa.432.049
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  store i64 %i.bx, ptr %10, align 8
  %.cast = inttoptr i64 %i.bx to ptr
  %i.by = load ptr, ptr %.cast, align 8, !tbaa !45 ; 3 uses
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %_ZNK4mlir5Value9hasOneUseEv.exit.thread, label %_ZNK4mlir5Value9hasOneUseEv.exit

_ZNK4mlir5Value9hasOneUseEv.exit:                 ; preds = %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE19getRegionOutputArgsEv.exit
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !65
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.l, label %_ZNK4mlir5Value9hasOneUseEv.exit.thread

bb.l:                                             ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !66 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !503
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 36 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !67, !noalias !503 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = getelementptr inbounds i8, ptr %i.cc, i64 -16 ; 3 uses
  %i.ch = zext i32 %i.ce to i64
  %.sroa.0.0.i.i.i17 = select i1 %i.cf, ptr null, ptr %i.cg
  store ptr %.sroa.0.0.i.i.i17, ptr %5, align 8, !noalias !503
  store i64 %i.ch, ptr %i.ab, align 8, !noalias !503
  call void @_ZNK4mlir11ResultRange7getUsesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.397") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !503
  %.sroa.4.0.copyload7.i.i = load ptr, ptr %.sroa.4.0..sroa_idx6.i.i, align 8 ; 2 uses
  %.sroa.33.0.copyload.i.i = load ptr, ptr %.sroa.33.0..sroa_idx.i.i, align 8 ; 2 uses
  %.not.i.i18 = icmp eq ptr %.sroa.4.0.copyload7.i.i, %.sroa.33.0.copyload.i.i
  br i1 %.not.i.i18, label %_ZN4mlir9Operation9hasOneUseEv.exit.thread, label %_ZN4mlir9Operation9hasOneUseEv.exit

_ZN4mlir9Operation9hasOneUseEv.exit.thread:       ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %_ZNK4mlir5Value9hasOneUseEv.exit.thread

_ZN4mlir9Operation9hasOneUseEv.exit:              ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(80) %6, i64 32, i1 false)
  store ptr %.sroa.4.0.copyload7.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ci = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4mlir11ResultRange11UseIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #17, !noalias !504 ; 0 uses
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cj = icmp eq ptr %.sroa.3.0.copyload.i.i, %.sroa.33.0.copyload.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br i1 %i.cj, label %bb.m, label %_ZNK4mlir5Value9hasOneUseEv.exit.thread

bb.m:                                             ; preds = %_ZN4mlir9Operation9hasOneUseEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !505
  %i.ck = load i32, ptr %i.cd, align 4, !tbaa !67, !noalias !505 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  %i.cm = zext i32 %i.ck to i64
  %.sroa.0.0.i.i.i19 = select i1 %i.cl, ptr null, ptr %i.cg
  store ptr %.sroa.0.0.i.i.i19, ptr %3, align 8, !noalias !505
  store i64 %i.cm, ptr %i.ac, align 8, !noalias !505
  call void @_ZNK4mlir11ResultRange9use_beginEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ResultRange::UseIterator") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !505
  %i.cn = load ptr, ptr %i.ad, align 8, !tbaa !507
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !tbaa !68
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !71
  %i.ct = icmp eq ptr %i.cs, @_ZN4mlir6detail14TypeIDResolverINS_6linalg7YieldOpEvE2idE
  %spec.select.i.i.i.i.i = and i1 %12, %i.ct
  br i1 %spec.select.i.i.i.i.i, label %bb.n, label %_ZNK4mlir5Value9hasOneUseEv.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !58
  %i.cw = and i64 %.sroa.432.049, 4294967295
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cy, align 8, !tbaa !49
  %.not45 = icmp eq ptr %.sroa.0.0.copyload.i.i, %i.cg
  br i1 %.not45, label %bb.o, label %_ZNK4mlir5Value9hasOneUseEv.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.cz = load ptr, ptr %2, align 8, !tbaa !86
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.cc, i64 %i.ae, i64 1) #17
  %i.db = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.dc = load ptr, ptr %2, align 8, !tbaa !86
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.db) #17, !inline_history !502
  %i.df = load ptr, ptr %2, align 8, !tbaa !86
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.db) #17, !inline_history !502
  br label %_ZNK4mlir5Value9hasOneUseEv.exit.thread

_ZNK4mlir5Value9hasOneUseEv.exit.thread:          ; preds = %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE19getRegionOutputArgsEv.exit, %bb.o, %bb.m, %bb.n, %_ZN4mlir9Operation9hasOneUseEv.exit.thread, %_ZN4mlir9Operation9hasOneUseEv.exit, %_ZNK4mlir5Value9hasOneUseEv.exit
  %.315 = phi i8 [ %.01250, %_ZNK4mlir5Value9hasOneUseEv.exit ], [ %.01250, %_ZN4mlir9Operation9hasOneUseEv.exit.thread ], [ %.01250, %_ZN4mlir9Operation9hasOneUseEv.exit ], [ %.01250, %bb.n ], [ %.01250, %bb.m ], [ 1, %bb.o ], [ %.01250, %_ZN4mlir6linalg6detail13LinalgOpTraitINS0_9GenericOpEE19getRegionOutputArgsEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.p

bb.p:                                             ; preds = %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_6linalg9GenericOpENS0_15VariadicResultsEE9getResultEj.exit, %_ZNK4mlir5Value9hasOneUseEv.exit.thread
  %.4 = phi i8 [ %.315, %_ZNK4mlir5Value9hasOneUseEv.exit.thread ], [ %.01250, %_ZN4mlir7OpTrait6detail20MultiResultTraitBaseINS_6linalg9GenericOpENS0_15VariadicResultsEE9getResultEj.exit ] ; 2 uses
  %i.di = add nuw i64 %.sroa.432.049, 1           ; 2 uses
  %.not44 = icmp eq i64 %i.di, %i.y
  br i1 %.not44, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE22hasPureTensorSemanticsEv.exit.thread, label %bb.g

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE22hasPureTensorSemanticsEv.exit.thread: ; preds = %bb.p, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE11getDpsInitsEv.exit, %_ZN4mlir9Operation11getOperandsEv.exit.i, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE22hasPureTensorSemanticsEv.exit
  %.sroa.0.1 = phi i8 [ 0, %_ZN4mlir9Operation11getOperandsEv.exit.i ], [ 0, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE22hasPureTensorSemanticsEv.exit ], [ 0, %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE11getDpsInitsEv.exit ], [ %.4, %bb.p ]
  ret i8 %.sroa.0.1
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN4mlir11ResultRange11UseIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZNK4mlir11ResultRange7getUsesEv(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range.397") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZNK4mlir11ResultRange9use_beginEv(ptr dead_on_unwind writable sret(%"class.mlir::ResultRange::UseIterator") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir7PatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir7PatternD2Ev.exit

_ZN4mlir7PatternD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_124FoldDuplicateInputBbArgsD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_124FoldDuplicateInputBbArgs15matchAndRewriteEN4mlir6linalg9GenericOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::AffineMapAttr", align 8 ; 4 uses
  %4 = alloca %"class.mlir::ArrayAttr", align 8   ; 5 uses
  %5 = alloca %"class.mlir::AffineMapAttr", align 8 ; 4 uses
  %6 = alloca %"class.mlir::ArrayAttr", align 8   ; 5 uses
  %7 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %8 = alloca %"class.mlir::linalg::GenericOp", align 8 ; 9 uses
  %9 = alloca %"class.llvm::DenseMap.409", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %10 = alloca %"class.llvm::SmallVector.21", align 8 ; 10 uses
  %11 = alloca %"class.llvm::SmallVector.21", align 8 ; 9 uses
  store ptr %1, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %i.j = phi ptr [ %1, %bb.a ], [ %.pre, %.loopexit ] ; 2 uses
  %storemerge = phi i32 [ 0, %bb.a ], [ %i.eb, %.loopexit ] ; 2 uses
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !50
  %i.k = sext i32 %storemerge to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 8388608
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit.i, label %bb.c, !prof !56

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  %i.q = zext i32 %i.p to i64
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit.i

_ZN4mlir9Operation14getNumOperandsEv.exit.i:      ; preds = %bb.c, %bb.b
  %i.r = phi i64 [ %i.q, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @_ZN4mlir6linalg9GenericOp17getOutputsMutableEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  %i.s = call { ptr, i64 } @_ZNK4mlir19MutableOperandRangecvNS_12OperandRangeEEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #17
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.c
  br i1 %i.u, label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE15getNumDpsInputsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit.i
  call void @free(ptr noundef %i.t) #17
  br label %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE15getNumDpsInputsEv.exit

_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE15getNumDpsInputsEv.exit: ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.v = extractvalue { ptr, i64 } %i.s, 1
  %i.w = sub nsw i64 %i.r, %i.v
  %i.x = icmp sgt i64 %i.w, %i.k
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE15getNumDpsInputsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !154
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.r, label %bb.o

bb.f:                                             ; preds = %_ZN4mlir6detail32DestinationStyleOpInterfaceTraitINS_6linalg9GenericOpEE15getNumDpsInputsEv.exit
  %i.ab = load ptr, ptr %8, align 8, !tbaa !20    ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ad = load i32, ptr %i.ac, align 4            ; 4 uses
  %i.ae = and i32 %i.ad, 8388607
  %i.af = icmp ne i32 %i.ae, 0
  call void @llvm.assume(i1 %i.af)
  %i.ag = lshr i32 %i.ad, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.ag, 1
  %i.ah = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ah
  %i.aj = lshr i32 %i.ad, 21
  %i.ak = and i32 %i.aj, 2040
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !38
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.at = load i32, ptr %i.a, align 4, !tbaa !50  ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.av = zext i32 %i.at to i64
end_hunk_1
