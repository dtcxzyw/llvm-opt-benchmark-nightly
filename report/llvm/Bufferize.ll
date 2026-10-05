Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Bufferize?download=true
inline.NumInlined: 4321
inline.NumDeleted: 2392
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4mlir13bufferization11bufferizeOpEPNS_9OperationERKNS0_20BufferizationOptionsERNS0_18BufferizationStateEPNS0_23BufferizationStatisticsE:bb.a
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !125
  %i.fh = icmp eq ptr %0, %i.fg
  br i1 %i.fh, label %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit87, label %bb.w, !prof !132

bb.w:                                             ; preds = %.lr.ph.i.i.i85
  %i.fi = add nuw i32 %.019.i.i.i86, 1
  %i.fj = and i32 %i.fi, %i.eq                    ; 3 uses
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = lshr i64 %i.fk, 5
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !61
  %i.fo = and i32 %i.fj, 31
  %i.fp = lshr i32 %i.fn, %i.fo
  %i.fq = trunc i32 %i.fp to i1
  br i1 %i.fq, label %.lr.ph.i.i.i85, label %.loopexit137, !prof !133

.loopexit137:                                     ; preds = %bb.w, %.thread121, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.fr = load ptr, ptr %10, align 8, !tbaa !128, !noalias !409 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !129, !noalias !409 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !130, !noalias !409 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !165, !noalias !409
  %i.fy = icmp eq i32 %i.fx, 0
  %i.fz = zext i32 %i.fv to i64                   ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fz ; 6 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i32 %i.fv, 0
  %or.cond.i.i.i.i = select i1 %i.fy, i1 true, i1 %.not.i.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm9to_vectorIRNS_8DenseSetIPN4mlir9OperationENS_12DenseMapInfoIS4_vEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISI_EE5valueEEEOSC_.exit, label %bb.x

bb.x:                                             ; preds = %.loopexit137
  %i.gb = add nuw nsw i64 %i.fz, 31
  %i.gc = lshr i64 %i.gb, 5                       ; 2 uses
  %i.gd = load i32, ptr %i.ft, align 4, !tbaa !61, !noalias !410 ; 2 uses
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.x
  %i.gf = icmp eq i64 %i.gc, 1
  br i1 %i.gf, label %_ZN4llvm9to_vectorIRNS_8DenseSetIPN4mlir9OperationENS_12DenseMapInfoIS4_vEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISI_EE5valueEEEOSC_.exit, label %.lr.ph205

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph205
  %i.gg = add nuw nsw i64 %i.gi, 1                ; 2 uses
  %i.gh = icmp eq i64 %i.gg, %i.gc
  br i1 %i.gh, label %_ZN4llvm9to_vectorIRNS_8DenseSetIPN4mlir9OperationENS_12DenseMapInfoIS4_vEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISI_EE5valueEEEOSC_.exit, label %.lr.ph205, !llvm.loop !1

.lr.ph205:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %i.gi = phi i64 [ %i.gg, %.lr.ph.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !61, !noalias !410 ; 2 uses
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i, !llvm.loop !1

._crit_edge.i.loopexit.i.i.i.i.i.i:               ; preds = %.lr.ph205
  %i.gm = shl i64 %i.gi, 8
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i, %bb.x
  %.012.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.x ], [ %i.gm, %._crit_edge.i.loopexit.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i = phi i32 [ %i.gd, %bb.x ], [ %i.gk, %._crit_edge.i.loopexit.i.i.i.i.i.i ]
  %i.gn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr i8, ptr %i.fr, i64 %.012.lcssa.i.i.i.i.i.i.i
  %i.gq = getelementptr [8 x i8], ptr %i.gp, i64 %i.go
  br label %_ZN4llvm9to_vectorIRNS_8DenseSetIPN4mlir9OperationENS_12DenseMapInfoIS4_vEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISI_EE5valueEEEOSC_.exit

_ZN4llvm9to_vectorIRNS_8DenseSetIPN4mlir9OperationENS_12DenseMapInfoIS4_vEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISI_EE5valueEEEOSC_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader, %.loopexit137, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ga, %.loopexit137 ], [ %i.gq, %._crit_edge.i.i.i.i.i.i.i ], [ %i.ga, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ga, %.lr.ph.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !408
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !408
  store ptr %i.ga, ptr %6, align 8, !noalias !408
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ga, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !408
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.fr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !408
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.ft, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !408
  store ptr %.sroa.0.0.i.i.i.i, ptr %7, align 8, !noalias !408
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ga, ptr %.sroa.24.0..sroa_idx.i, align 8, !noalias !408
  %.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.fr, ptr %.sroa.35.0..sroa_idx.i, align 8, !noalias !408
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.ft, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !408
  %i.gr = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store ptr %i.gr, ptr %21, align 8, !tbaa !44, !alias.scope !408
  %i.gs = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i32 0, ptr %i.gs, align 8, !tbaa !45, !alias.scope !408
  %i.gt = getelementptr inbounds nuw i8, ptr %21, i64 12
  store i32 6, ptr %i.gt, align 4, !tbaa !46, !alias.scope !408
  call void @_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6appendINS_6detail12DenseSetImplIS3_NS_8DenseMapIS3_NS6_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS6_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEEvEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(64) %21, ptr noundef nonnull byval(%"class.llvm::detail::DenseSetImpl<mlir::Operation *, llvm::DenseMap<mlir::Operation *, llvm::detail::DenseSetEmpty, llvm::DenseMapInfo<mlir::Operation *>, llvm::detail::DenseSetPair<mlir::Operation *>>>::DenseSetIterator") align 8 %7, ptr noundef nonnull byval(%"class.llvm::detail::DenseSetImpl<mlir::Operation *, llvm::DenseMap<mlir::Operation *, llvm::detail::DenseSetEmpty, llvm::DenseMapInfo<mlir::Operation *>, llvm::detail::DenseSetPair<mlir::Operation *>>>::DenseSetIterator") align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !408
  %i.gu = load ptr, ptr %21, align 8, !tbaa !44   ; 2 uses
  %i.gv = load i32, ptr %i.gs, align 8, !tbaa !45 ; 2 uses
  %i.gw = zext i32 %i.gv to i64
  %.idx = shl nuw nsw i64 %i.gw, 3
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.idx
  %.not80149 = icmp eq i32 %i.gv, 0
  br i1 %.not80149, label %._crit_edge, label %.lr.ph151

.lr.ph151:                                        ; preds = %_ZN4llvm9to_vectorIRNS_8DenseSetIPN4mlir9OperationENS_12DenseMapInfoIS4_vEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISI_EE5valueEEEOSC_.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.gz = getelementptr inbounds nuw i8, ptr %15, i64 32
  %.pre165 = load ptr, ptr %14, align 8, !tbaa !128, !noalias !411
  br label %bb.y

._crit_edge:                                      ; preds = %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit91, %_ZN4llvm9to_vectorIRNS_8DenseSetIPN4mlir9OperationENS_12DenseMapInfoIS4_vEEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISI_EE5valueEEEOSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  store ptr %15, ptr %22, align 8, !tbaa !412
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %22, ptr %5, align 8, !tbaa !102
  %i.ha = ptrtoint ptr %5 to i64
  %i.hb = call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nonnull @"_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_13bufferization11bufferizeOpES4_RKNSC_20BufferizationOptionsERNSC_18BufferizationStateEPNSC_23BufferizationStatisticsEE3$_2NSC_10ToTensorOpES2_EENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESS_E4typeES4_OT1_EUlS4_E_EES2_lS4_", i64 %i.ha, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.hd = load i8, ptr %i.hc, align 8, !tbaa !167, !range !55, !noundef !56
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %.thread132, label %bb.ab

bb.y:                                             ; preds = %.lr.ph151, %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit91
  %i.hf = phi ptr [ %.pre165, %.lr.ph151 ], [ %i.ip, %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit91 ] ; 2 uses
  %.073150 = phi ptr [ %i.gu, %.lr.ph151 ], [ %i.iq, %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit91 ] ; 2 uses
  %i.hg = load ptr, ptr %.073150, align 8, !tbaa !125 ; 5 uses
  %i.hh = load ptr, ptr %i.el, align 8, !tbaa !129, !noalias !411 ; 2 uses
  %i.hi = load i32, ptr %i.en, align 4, !tbaa !130, !noalias !411 ; 2 uses
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %.loopexit136, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hk = add i32 %i.hi, -1                       ; 2 uses
  %i.hl = ptrtoint ptr %i.hg to i64
  %i.hm = mul i64 %i.hl, -4658895280553007687     ; 2 uses
  %i.hn = lshr i64 %i.hm, 31
  %i.ho = xor i64 %i.hn, %i.hm
  %i.hp = trunc i64 %i.ho to i32
  %i.hq = and i32 %i.hk, %i.hp                    ; 3 uses
  %i.hr = zext i32 %i.hq to i64                   ; 2 uses
  %i.hs = lshr i64 %i.hr, 5
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hs
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !61
  %i.hv = and i32 %i.hq, 31
  %i.hw = lshr i32 %i.hu, %i.hv
  %i.hx = trunc i32 %i.hw to i1
  br i1 %i.hx, label %.lr.ph.i.i.i89, label %.loopexit136, !prof !131

.lr.ph.i.i.i89:                                   ; preds = %bb.z, %bb.aa
  %i.hy = phi i64 [ %i.ie, %bb.aa ], [ %i.hr, %bb.z ]
  %.019.i.i.i90 = phi i32 [ %i.id, %bb.aa ], [ %i.hq, %bb.z ]
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !125
  %i.ib = icmp eq ptr %i.hg, %i.ia
  br i1 %i.ib, label %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit91, label %bb.aa, !prof !132

bb.aa:                                            ; preds = %.lr.ph.i.i.i89
  %i.ic = add nuw i32 %.019.i.i.i90, 1
  %i.id = and i32 %i.ic, %i.hk                    ; 3 uses
  %i.ie = zext i32 %i.id to i64                   ; 2 uses
  %i.if = lshr i64 %i.ie, 5
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !61
  %i.ii = and i32 %i.id, 31
  %i.ij = lshr i32 %i.ih, %i.ii
  %i.ik = trunc i32 %i.ij to i1
  br i1 %i.ik, label %.lr.ph.i.i.i89, label %.loopexit136, !prof !133

.loopexit136:                                     ; preds = %bb.aa, %bb.y, %bb.z
  %i.il = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !163
  %i.in = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.hg) #27
  store ptr %i.im, ptr %i.gy, align 8, !tbaa !164
  store ptr %i.in, ptr %i.gz, align 8
  %i.io = call i8 @_ZN4mlir13bufferization24foldToBufferToTensorPairERNS_12RewriterBaseENS0_10ToBufferOpERKNS0_20BufferizationOptionsE(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr nonnull %i.hg, ptr noundef nonnull align 8 dereferenceable(352) %1) #27 ; 0 uses
  %.pre164 = load ptr, ptr %14, align 8, !tbaa !128, !noalias !411
  br label %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit91

_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit91: ; preds = %.lr.ph.i.i.i89, %.loopexit136
  %i.ip = phi ptr [ %.pre164, %.loopexit136 ], [ %i.hf, %.lr.ph.i.i.i89 ]
  %i.iq = getelementptr inbounds nuw i8, ptr %.073150, i64 8 ; 2 uses
  %.not80 = icmp eq ptr %i.iq, %i.gx
  br i1 %.not80, label %._crit_edge, label %bb.y

bb.ab:                                            ; preds = %._crit_edge
  %i.ir = load ptr, ptr %12, align 8, !tbaa !44   ; 2 uses
  %i.is = load i32, ptr %i.ad, align 8, !tbaa !45 ; 2 uses
  %i.it = zext i32 %i.is to i64
  %.idx156 = shl nuw nsw i64 %i.it, 3
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 %.idx156
  %.not81152 = icmp eq i32 %i.is, 0
  br i1 %.not81152, label %.thread132, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.ab
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.iw = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.ix = getelementptr inbounds nuw i8, ptr %23, i64 72
  %26 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization10ToTensorOpEvE2idE
  %27 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization10ToBufferOpEvE2idE
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph155, %.loopexit
  %.0153 = phi ptr [ %i.ir, %.lr.ph155 ], [ %i.lc, %.loopexit ] ; 2 uses
  %i.iy = load ptr, ptr %.0153, align 8, !tbaa !125 ; 9 uses
  %i.iz = load ptr, ptr %14, align 8, !tbaa !128, !noalias !413
  %i.ja = load ptr, ptr %i.el, align 8, !tbaa !129, !noalias !413 ; 2 uses
  %i.jb = load i32, ptr %i.en, align 4, !tbaa !130, !noalias !413 ; 2 uses
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %.loopexit135, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jd = add i32 %i.jb, -1                       ; 2 uses
  %i.je = ptrtoint ptr %i.iy to i64
  %i.jf = mul i64 %i.je, -4658895280553007687     ; 2 uses
  %i.jg = lshr i64 %i.jf, 31
  %i.jh = xor i64 %i.jg, %i.jf
  %i.ji = trunc i64 %i.jh to i32
  %i.jj = and i32 %i.jd, %i.ji                    ; 3 uses
  %i.jk = zext i32 %i.jj to i64                   ; 2 uses
  %i.jl = lshr i64 %i.jk, 5
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !61
  %i.jo = and i32 %i.jj, 31
  %i.jp = lshr i32 %i.jn, %i.jo
  %i.jq = trunc i32 %i.jp to i1
  br i1 %i.jq, label %.lr.ph.i.i.i93, label %.loopexit135, !prof !131

.lr.ph.i.i.i93:                                   ; preds = %bb.ad, %bb.ae
  %i.jr = phi i64 [ %i.jx, %bb.ae ], [ %i.jk, %bb.ad ]
  %.019.i.i.i94 = phi i32 [ %i.jw, %bb.ae ], [ %i.jj, %bb.ad ]
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jr
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !125
  %i.ju = icmp eq ptr %i.iy, %i.jt
  br i1 %i.ju, label %.loopexit, label %bb.ae, !prof !132

bb.ae:                                            ; preds = %.lr.ph.i.i.i93
  %i.jv = add nuw i32 %.019.i.i.i94, 1
  %i.jw = and i32 %i.jv, %i.jd                    ; 3 uses
  %i.jx = zext i32 %i.jw to i64                   ; 2 uses
  %i.jy = lshr i64 %i.jx, 5
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jy
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !61
  %i.kb = and i32 %i.jw, 31
  %i.kc = lshr i32 %i.ka, %i.kb
  %i.kd = trunc i32 %i.kc to i1
  br i1 %i.kd, label %.lr.ph.i.i.i93, label %.loopexit135, !prof !133

.loopexit135:                                     ; preds = %bb.ae, %bb.ac, %bb.ad
  %i.ke = call noundef zeroext i1 @_ZN4mlir13bufferization18hasTensorSemanticsEPNS_9OperationE(ptr noundef %i.iy) #27
  br i1 %i.ke, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %.loopexit135
  %i.kf = call noundef zeroext i1 @_ZNK4mlir13bufferization20BufferizationOptions11isOpAllowedEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(352) %1, ptr noundef %i.iy) #27
  br i1 %i.kf, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !414
  %i.kg = getelementptr inbounds nuw i8, ptr %i.iy, i64 36
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !168, !noalias !414 ; 2 uses
  %i.ki = icmp eq i32 %i.kh, 0
  %i.kj = getelementptr inbounds i8, ptr %i.iy, i64 -16
  %i.kk = zext i32 %i.kh to i64
  %.sroa.0.0.i.i = select i1 %i.ki, ptr null, ptr %i.kj
  store ptr %.sroa.0.0.i.i, ptr %4, align 8, !noalias !414
  store i64 %i.kk, ptr %i.iv, align 8, !noalias !414
  call void @_ZNK4mlir11ResultRange7getUsesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !414
  %i.kl = load ptr, ptr %i.iw, align 8, !tbaa !171
  %i.km = load ptr, ptr %i.ix, align 8, !tbaa !171
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag
  %i.ko = call noundef zeroext i1 @_ZN4mlir18isMemoryEffectFreeEPNS_9OperationE(ptr noundef nonnull %i.iy) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br i1 %i.ko, label %.loopexit, label %bb.ai

.critedge:                                        ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge, %bb.ah
  %i.kp = getelementptr inbounds nuw i8, ptr %i.iy, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.kp, align 8, !tbaa !172
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !173 ; 2 uses
  %i.ks = icmp eq ptr %i.kr, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization10ToTensorOpEvE2idE
  %spec.select.i.i.i.i.i = and i1 %26, %i.ks
  %i.kt = icmp eq ptr %i.kr, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization10ToBufferOpEvE2idE
  %spec.select.i.i.i.i3.i = and i1 %27, %i.kt
  %spec.select.i = or i1 %spec.select.i.i.i.i.i, %spec.select.i.i.i.i3.i
  br i1 %spec.select.i, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  %i.ku = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.kv = getelementptr inbounds nuw i8, ptr %25, i64 33
  store i8 1, ptr %i.kv, align 1, !tbaa !152
  store ptr @.str.7, ptr %25, align 8, !tbaa !42
  store i8 3, ptr %i.ku, align 8, !tbaa !153
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %24, ptr noundef nonnull align 8 dereferenceable(64) %i.iy, ptr noundef nonnull align 8 dereferenceable(34) %25) #27
  %i.kw = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %24) #27
  %i.kx = load ptr, ptr %24, align 8, !tbaa !161
  %.not.i96 = icmp eq ptr %i.kx, null
  br i1 %.not.i96, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %24) #27
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ky = getelementptr inbounds nuw i8, ptr %24, i64 200 ; 2 uses
  %i.kz = load i8, ptr %i.ky, align 8, !tbaa !162, !range !55, !noundef !56
  %i.la = trunc nuw i8 %i.kz to i1
  store i8 0, ptr %i.ky, align 8, !tbaa !162
  br i1 %i.la, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.lb = getelementptr inbounds nuw i8, ptr %24, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.lb) #27
  br label %bb.an

.loopexit:                                        ; preds = %.lr.ph.i.i.i93, %bb.ai, %bb.af, %bb.ah, %.loopexit135
  %i.lc = getelementptr inbounds nuw i8, ptr %.0153, i64 8 ; 2 uses
  %.not81 = icmp eq ptr %i.lc, %i.iu
  br i1 %.not81, label %.thread132, label %bb.ac

bb.an:                                            ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %.thread132

.thread132:                                       ; preds = %.loopexit, %bb.ab, %bb.an, %._crit_edge
  %.sroa.070.13 = phi i8 [ %i.kw, %bb.an ], [ 1, %._crit_edge ], [ 1, %bb.ab ], [ 1, %.loopexit ]
  %i.ld = load ptr, ptr %21, align 8, !tbaa !44   ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.gr
  br i1 %i.le, label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %.thread132
  call void @free(ptr noundef %i.ld) #27
  br label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit: ; preds = %.thread132, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit87

_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit87: ; preds = %.lr.ph.i.i.i85, %bb.u, %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit
  %.sroa.070.14 = phi i8 [ %.sroa.070.7, %bb.u ], [ %.sroa.070.13, %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit ], [ 1, %.lr.ph.i.i.i85 ]
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN12_GLOBAL__N_121BufferizationRewriterE, i64 16), ptr %15, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN12_GLOBAL__N_121BufferizationRewriterE, i64 144), ptr %i.al, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4mlir13bufferization13AnalysisStateE, i64 16), ptr %i.aq, align 8, !tbaa !27
  %i.lf = getelementptr inbounds nuw i8, ptr %15, i64 148
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !95 ; 2 uses
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %_ZN4llvm8DenseMapISt4pairIPN4mlir9OperationES4_EbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEED2Ev.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit87
  %i.li = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !96
  %i.lk = zext i32 %i.lg to i64                   ; 2 uses
  %i.ll = mul nuw nsw i64 %i.lk, 24
  %i.lm = add nuw nsw i64 %i.lk, 31
  %i.ln = lshr i64 %i.lm, 3
  %i.lo = and i64 %i.ln, 1073741820
  %i.lp = add nuw nsw i64 %i.lo, %i.ll
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.lj, i64 noundef %i.lp, i64 noundef 8) #27, !inline_history !174
  br label %_ZN4llvm8DenseMapISt4pairIPN4mlir9OperationES4_EbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEED2Ev.exit.i.i

_ZN4llvm8DenseMapISt4pairIPN4mlir9OperationES4_EbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEED2Ev.exit.i.i: ; preds = %bb.ap, %_ZNK4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE8containsEPKS3_.exit87
  %i.lq = getelementptr inbounds nuw i8, ptr %15, i64 124
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !99 ; 2 uses
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %_ZN12_GLOBAL__N_121BufferizationRewriterD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm8DenseMapISt4pairIPN4mlir9OperationES4_EbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEED2Ev.exit.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %15, i64 104
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !100
  %i.lv = zext i32 %i.lr to i64                   ; 2 uses
  %i.lw = mul nuw nsw i64 %i.lv, 24
  %i.lx = add nuw nsw i64 %i.lv, 31
  %i.ly = lshr i64 %i.lx, 3
  %i.lz = and i64 %i.ly, 1073741820
  %i.ma = add nuw nsw i64 %i.lz, %i.lw
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.lu, i64 noundef %i.ma, i64 noundef 8) #27, !inline_history !174
  br label %_ZN12_GLOBAL__N_121BufferizationRewriterD2Ev.exit

_ZN12_GLOBAL__N_121BufferizationRewriterD2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt4pairIPN4mlir9OperationES4_EbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEED2Ev.exit.i.i, %bb.aq
  call void @_ZN4mlir12RewriterBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(160) %15) #27, !inline_history !174
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.mb = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !130 ; 2 uses
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN12_GLOBAL__N_121BufferizationRewriterD2Ev.exit
  %i.me = load ptr, ptr %14, align 8, !tbaa !128
  %i.mf = zext i32 %i.mc to i64                   ; 2 uses
  %i.mg = shl nuw nsw i64 %i.mf, 3
  %i.mh = add nuw nsw i64 %i.mf, 31
  %i.mi = lshr i64 %i.mh, 3
  %i.mj = and i64 %i.mi, 1073741820
  %i.mk = add nuw nsw i64 %i.mj, %i.mg
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.me, i64 noundef %i.mk, i64 noundef 8) #27
  br label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_121BufferizationRewriterD2Ev.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.ml = load ptr, ptr %12, align 8, !tbaa !44   ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %i.ac
  br i1 %i.mm, label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit98, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit
  call void @free(ptr noundef %i.ml) #27
  br label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit98

_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit98: ; preds = %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.mn = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !130 ; 2 uses
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit99, label %bb.at

bb.at:                                            ; preds = %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit98
  %i.mq = load ptr, ptr %10, align 8, !tbaa !128
  %i.mr = zext i32 %i.mo to i64                   ; 2 uses
  %i.ms = shl nuw nsw i64 %i.mr, 3
  %i.mt = add nuw nsw i64 %i.mr, 31
  %i.mu = lshr i64 %i.mt, 3
  %i.mv = and i64 %i.mu, 1073741820
  %i.mw = add nuw nsw i64 %i.mv, %i.ms
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.mq, i64 noundef %i.mw, i64 noundef 8) #27
  br label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit99

_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit99: ; preds = %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit98, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.au

bb.au:                                            ; preds = %_ZN4mlir13bufferization13AnalysisStateD2Ev.exit, %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit99
  %.sroa.070.15 = phi i8 [ %.sroa.070.14, %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit99 ], [ 0, %_ZN4mlir13bufferization13AnalysisStateD2Ev.exit ]
  ret i8 %.sroa.070.15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4mlir13bufferization13AnalysisStateC1ERKNS0_20BufferizationOptionsE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(352)) unnamed_addr #2

declare i8 @_ZN4mlir13bufferization18insertTensorCopiesEPNS_9OperationERKNS0_13AnalysisStateERKNS0_18BufferizationStateE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { ptr, ptr } @_ZNK4mlir13bufferization20BufferizationOptions21dynCastBufferizableOpEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(352), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4mlir13bufferization18hasTensorSemanticsEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4mlir13bufferization23BufferizableOpInterface31supportsUnstructuredControlFlowEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare i8 @_ZN4mlir13bufferization23BufferizableOpInterface9bufferizeERNS_12RewriterBaseERKNS0_20BufferizationOptionsERNS0_18BufferizationStateE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(352), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare i8 @_ZN4mlir13bufferization24foldToBufferToTensorPairERNS_12RewriterBaseENS0_10ToBufferOpERKNS0_20BufferizationOptionsE(ptr noundef nonnull align 8 dereferenceable(40), ptr, ptr noundef nonnull align 8 dereferenceable(352)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4mlir13bufferization20BufferizationOptions11isOpAllowedEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(352), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4mlir18isMemoryEffectFreeEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121BufferizationRewriterD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) initializes((0, 8), (40, 48), (80, 88)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN12_GLOBAL__N_121BufferizationRewriterE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN12_GLOBAL__N_121BufferizationRewriterE, i64 144), ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4mlir13bufferization13AnalysisStateE, i64 16), ptr %i.b, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.d = load i32, ptr %i.c, align 4, !tbaa !95   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvm8DenseMapISt4pairIPN4mlir9OperationES4_EbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.h = zext i32 %i.d to i64                     ; 2 uses
  %i.i = mul nuw nsw i64 %i.h, 24
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_121BufferizationRewriter21notifyOperationErasedEPN4mlir9OperationE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !129, !noalias !484 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !130, !noalias !484 ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add i32 %i.k, -1                         ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = mul i64 %i.o, -4658895280553007687       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.m, %i.s                       ; 3 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = lshr i64 %i.u, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !61
  %i.y = and i32 %i.t, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit, !prof !131

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %i.ab = phi i64 [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.019.i.i.i.i = phi i32 [ %i.ag, %bb.c ], [ %i.t, %bb.b ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !125
  %i.ae = icmp eq ptr %i.n, %i.ad
  br i1 %i.ae, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E6doFindIS4_EEPSA_RKT_.exit.i.i, label %bb.c, !prof !132

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.af = add nuw i32 %.019.i.i.i.i, 1
  %i.ag = and i32 %i.af, %i.m                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !61
  %i.al = and i32 %i.ag, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit, !prof !133

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E6doFindIS4_EEPSA_RKT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit

_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit: ; preds = %bb.c, %bb.a, %bb.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E6doFindIS4_EEPSA_RKT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121BufferizationRewriter23notifyOperationInsertedEPN4mlir9OperationENS1_9OpBuilder11InsertPointE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noundef %1, ptr nofree readnone captures(address_is_null) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.252", align 8 ; 9 uses
  %5 = alloca %class.anon.223, align 1            ; 3 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %6 = alloca %"class.mlir::MemoryEffectOpInterface", align 8 ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !125
  %.not4 = icmp eq ptr %2, null
  br i1 %.not4, label %bb.b, label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187, !nonnull !56, !align !188 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128, !noalias !495 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129, !noalias !495 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !130, !noalias !495 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %i.h, -1                         ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.j, %i.o                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !61
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit, !prof !131

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.x = phi i64 [ %i.ad, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %.019.i.i.i.i = phi i32 [ %i.ac, %bb.d ], [ %i.p, %bb.c ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !125
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E6doFindIS4_EEPSA_RKT_.exit.i.i, label %bb.d, !prof !132

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = add nuw i32 %.019.i.i.i.i, 1
  %i.ac = and i32 %i.ab, %i.j                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !61
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit, !prof !133

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E6doFindIS4_EEPSA_RKT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit

_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit: ; preds = %bb.d, %bb.b, %bb.c, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E6doFindIS4_EEPSA_RKT_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !123
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.an = call noundef ptr @_ZN4mlir11OpInterfaceINS_23MemoryEffectOpInterfaceENS_6detail38MemoryEffectOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %1)
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %_ZN4llvm8dyn_castIN4mlir23MemoryEffectOpInterfaceENS1_9OperationEEEDcPT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm20ValueFromPointerCastIN4mlir23MemoryEffectOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = call noundef ptr @_ZN4mlir11OpInterfaceINS_23MemoryEffectOpInterfaceENS_6detail38MemoryEffectOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %1)
  br label %_ZN4llvm20ValueFromPointerCastIN4mlir23MemoryEffectOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir23MemoryEffectOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i: ; preds = %bb.g, %bb.f
  %i.ap = phi ptr [ %i.ao, %bb.g ], [ null, %bb.f ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %1, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %i.ap, 1
  br label %_ZN4llvm8dyn_castIN4mlir23MemoryEffectOpInterfaceENS1_9OperationEEEDcPT0_.exit

_ZN4llvm8dyn_castIN4mlir23MemoryEffectOpInterfaceENS1_9OperationEEEDcPT0_.exit: ; preds = %bb.e, %_ZN4llvm20ValueFromPointerCastIN4mlir23MemoryEffectOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4llvm20ValueFromPointerCastIN4mlir23MemoryEffectOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i ], [ zeroinitializer, %bb.e ] ; 2 uses
  %i.aq = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 2 uses
  store ptr %i.aq, ptr %6, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.as = extractvalue { ptr, ptr } %.pn.i.i, 1
  store ptr %i.as, ptr %i.ar, align 8
  %.not5 = icmp eq ptr %i.aq, null
  br i1 %.not5, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir23MemoryEffectOpInterfaceENS1_9OperationEEEDcPT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.at, ptr %4, align 8, !tbaa !44
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.au, align 8, !tbaa !45
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 4, ptr %i.av, align 4, !tbaa !46
  call void @_ZN4mlir23MemoryEffectOpInterface10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  %i.aw = load ptr, ptr %4, align 8, !tbaa !44    ; 2 uses
  %i.ax = load i32, ptr %i.au, align 8, !tbaa !45
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %i.ay ; 2 uses
  %i.ba = call noundef ptr @_ZSt9__find_ifIPN4mlir11SideEffects14EffectInstanceINS0_13MemoryEffects6EffectEEEN9__gnu_cxx5__ops10_Iter_predIZNS0_23MemoryEffectOpInterface9hasEffectINS3_8AllocateEEEbvEUlRKT_E_EEESD_SD_SD_T0_St26random_access_iterator_tag(ptr noundef %i.aw, ptr noundef %i.az)
  %i.bb = load ptr, ptr %4, align 8, !tbaa !44    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.at
  br i1 %i.bc, label %_ZN4mlir23MemoryEffectOpInterface9hasEffectINS_13MemoryEffects8AllocateEEEbv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.bb) #27
  br label %_ZN4mlir23MemoryEffectOpInterface9hasEffectINS_13MemoryEffects8AllocateEEEbv.exit

_ZN4mlir23MemoryEffectOpInterface9hasEffectINS_13MemoryEffects8AllocateEEEbv.exit: ; preds = %bb.h, %bb.i
  %i.bd = icmp ne ptr %i.az, %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.be = zext i1 %i.bd to i64
  %i.bf = load ptr, ptr %i.al, align 8, !tbaa !123 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !191
  %i.bh = add nsw i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !191
  br label %bb.j

bb.j:                                             ; preds = %_ZN4mlir23MemoryEffectOpInterface9hasEffectINS_13MemoryEffects8AllocateEEEbv.exit, %_ZN4llvm8dyn_castIN4mlir23MemoryEffectOpInterfaceENS1_9OperationEEEDcPT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !172
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !173 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization10ToBufferOpEvE2idE
  %7 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization10ToBufferOpEvE2idE
  %spec.select.i.i.i.i.i = and i1 %7, %i.bl
  br i1 %spec.select.i.i.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !189, !nonnull !56, !align !188
  %i.bo = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !496 ; 0 uses
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit

bb.m:                                             ; preds = %bb.k
  %i.bp = icmp eq ptr %i.bk, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization10ToTensorOpEvE2idE
  %8 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization10ToTensorOpEvE2idE
  %spec.select.i.i.i.i.i3 = and i1 %8, %i.bp
  br i1 %spec.select.i.i.i.i.i3, label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = call noundef zeroext i1 @_ZN4mlir13bufferization18hasTensorSemanticsEPNS_9OperationE(ptr noundef nonnull %1) #27
  br i1 %i.bq, label %bb.o, label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !497, !nonnull !56, !align !188
  %i.bt = call noundef zeroext i1 @_ZNK4mlir13bufferization20BufferizationOptions11isOpAllowedEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(352) %i.bs, ptr noundef nonnull %1) #27
  br i1 %i.bt, label %bb.p, label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !498, !nonnull !56, !align !188 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !45 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !46
  %.not.i = icmp ult i32 %i.bx, %i.bz
  br i1 %.not.i, label %bb.r, label %bb.q, !prof !132

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull %1)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit

bb.r:                                             ; preds = %bb.p
  %i.ca = zext i32 %i.bx to i64
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !44
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %1, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.bw, align 8, !tbaa !45
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.bw, align 8, !tbaa !45
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit: ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %bb.a, %bb.l
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn40_N12_GLOBAL__N_121BufferizationRewriterD1Ev(ptr noundef initializes((-40, -32), (0, 8), (40, 48)) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN12_GLOBAL__N_121BufferizationRewriterE, i64 16), ptr %i.a, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN12_GLOBAL__N_121BufferizationRewriterE, i64 144), ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4mlir13bufferization13AnalysisStateE, i64 16), ptr %i.b, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !95   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvm8DenseMapISt4pairIPN4mlir9OperationES4_EbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.h = zext i32 %i.d to i64                     ; 2 uses
  %i.i = mul nuw nsw i64 %i.h, 24
  %i.j = add nuw nsw i64 %i.h, 31
  %i.k = lshr i64 %i.j, 3
  %i.l = and i64 %i.k, 1073741820
  %i.m = add nuw nsw i64 %i.l, %i.i
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.g, i64 noundef %i.m, i64 noundef 8) #27, !inline_history !174
  br label %_ZN4llvm8DenseMapISt4pairIPN4mlir9OperationES4_EbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEED2Ev.exit.i.i

_ZN4llvm8DenseMapISt4pairIPN4mlir9OperationES4_EbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.o = load i32, ptr %i.n, align 4, !tbaa !99   ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN12_GLOBAL__N_121BufferizationRewriterD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8DenseMapISt4pairIPN4mlir9OperationES4_EbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEED2Ev.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !100
  %i.s = zext i32 %i.o to i64                     ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = add nuw nsw i64 %i.s, 31
  %i.v = lshr i64 %i.u, 3
  %i.w = and i64 %i.v, 1073741820
  %i.x = add nuw nsw i64 %i.w, %i.t
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.r, i64 noundef %i.x, i64 noundef 8) #27, !inline_history !174
  br label %_ZN12_GLOBAL__N_121BufferizationRewriterD2Ev.exit

_ZN12_GLOBAL__N_121BufferizationRewriterD2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt4pairIPN4mlir9OperationES4_EbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEED2Ev.exit.i.i, %bb.c
  tail call void @_ZN4mlir12RewriterBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(160) %i.a) #27, !inline_history !174
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn40_N12_GLOBAL__N_121BufferizationRewriterD0Ev(ptr noundef initializes((-40, -32), (0, 8), (40, 48)) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN12_GLOBAL__N_121BufferizationRewriterE, i64 16), ptr %i.a, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN12_GLOBAL__N_121BufferizationRewriterE, i64 144), ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4mlir13bufferization13AnalysisStateE, i64 16), ptr %i.b, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !95   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvm8DenseMapISt4pairIPN4mlir9OperationES4_EbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.h = zext i32 %i.d to i64                     ; 2 uses
  %i.i = mul nuw nsw i64 %i.h, 24
  %i.j = add nuw nsw i64 %i.h, 31
  %i.k = lshr i64 %i.j, 3
  %i.l = and i64 %i.k, 1073741820
  %i.m = add nuw nsw i64 %i.l, %i.i
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.g, i64 noundef %i.m, i64 noundef 8) #27, !inline_history !499
  br label %_ZN4llvm8DenseMapISt4pairIPN4mlir9OperationES4_EbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEED2Ev.exit.i.i.i

_ZN4llvm8DenseMapISt4pairIPN4mlir9OperationES4_EbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEED2Ev.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.o = load i32, ptr %i.n, align 4, !tbaa !99   ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN12_GLOBAL__N_121BufferizationRewriterD0Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8DenseMapISt4pairIPN4mlir9OperationES4_EbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEED2Ev.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !100
  %i.s = zext i32 %i.o to i64                     ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = add nuw nsw i64 %i.s, 31
  %i.v = lshr i64 %i.u, 3
  %i.w = and i64 %i.v, 1073741820
  %i.x = add nuw nsw i64 %i.w, %i.t
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.r, i64 noundef %i.x, i64 noundef 8) #27, !inline_history !499
  br label %_ZN12_GLOBAL__N_121BufferizationRewriterD0Ev.exit

_ZN12_GLOBAL__N_121BufferizationRewriterD0Ev.exit: ; preds = %_ZN4llvm8DenseMapISt4pairIPN4mlir9OperationES4_EbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEED2Ev.exit.i.i.i, %bb.c
  tail call void @_ZN4mlir12RewriterBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(160) %i.a) #27, !inline_history !499
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 noundef 160) #26, !inline_history !500
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_ZThn40_N12_GLOBAL__N_121BufferizationRewriter23notifyOperationInsertedEPN4mlir9OperationENS1_9OpBuilder11InsertPointE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(address_is_null) %2, ptr nofree readnone captures(none) %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN12_GLOBAL__N_121BufferizationRewriter23notifyOperationInsertedEPN4mlir9OperationENS1_9OpBuilder11InsertPointE(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef %1, ptr %2, ptr poison)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir9OpBuilder8Listener19notifyBlockInsertedEPNS_5BlockEPNS_6RegionEN4llvm14ilist_iteratorINS6_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir12RewriterBase8Listener17notifyBlockErasedEPNS_5BlockE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir12RewriterBase8Listener23notifyOperationModifiedEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir12RewriterBase8Listener23notifyOperationReplacedEPNS_9OperationES3_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !168  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds i8, ptr %2, i64 -16
  %i.e = zext i32 %i.b to i64
  %.sroa.0.0.i = select i1 %i.c, ptr null, ptr %i.d
  call void @_ZN4mlir10ValueRangeC1ENS_11ResultRangeE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %.sroa.0.0.i, i64 %i.e) #27
  %i.f = load i64, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i64 %i.f, i64 %i.h) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir12RewriterBase8Listener23notifyOperationReplacedEPNS_9OperationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_ZThn40_N12_GLOBAL__N_121BufferizationRewriter21notifyOperationErasedEPN4mlir9OperationE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %class.anon.223, align 1            ; 3 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !125
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !187, !nonnull !56, !align !188
  %i.d = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !511 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_1
begin_hunk_2_@_ZN4mlir13bufferization20BufferizationOptionsC2ERKS1_:bb.a
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !102
  br label %_ZNSt8functionIFN4mlir13bufferization14BufferLikeTypeENS1_14TensorLikeTypeENS0_9AttributeERKNS1_20BufferizationOptionsEEEC2ERKS9_.exit

_ZNSt8functionIFN4mlir13bufferization14BufferLikeTypeENS1_14TensorLikeTypeENS0_9AttributeERKNS1_20BufferizationOptionsEEEC2ERKS9_.exit: ; preds = %_ZNSt8functionIFN4mlir13bufferization14BufferLikeTypeENS1_14TensorLikeTypeENS0_9AttributeENS0_4func6FuncOpERKNS1_20BufferizationOptionsEEEC2ERKSB_.exit, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false)
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.not.i17 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.not.i17, label %_ZNSt8functionIFSt8optionalIN4mlir9AttributeEENS1_13bufferization14TensorLikeTypeEEEC2ERKS7_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt8functionIFN4mlir13bufferization14BufferLikeTypeENS1_14TensorLikeTypeENS0_9AttributeERKNS1_20BufferizationOptionsEEEC2ERKS9_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.az = tail call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i32 noundef 2) #27, !inline_history !799 ; 0 uses
  %i.ba = load <2 x ptr>, ptr %i.av, align 8, !tbaa !102
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !102
  br label %_ZNSt8functionIFSt8optionalIN4mlir9AttributeEENS1_13bufferization14TensorLikeTypeEEEC2ERKS7_.exit

_ZNSt8functionIFSt8optionalIN4mlir9AttributeEENS1_13bufferization14TensorLikeTypeEEEC2ERKS7_.exit: ; preds = %_ZNSt8functionIFN4mlir13bufferization14BufferLikeTypeENS1_14TensorLikeTypeENS0_9AttributeERKNS1_20BufferizationOptionsEEEC2ERKS9_.exit, %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i8 0, i64 32, i1 false)
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.not.i18 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.not.i18, label %_ZNSt8functionIFN4llvm9FailureOrIN4mlir13bufferization14BufferLikeTypeEEES4_S4_RKNS3_20BufferizationOptionsEEEC2ERKSA_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFSt8optionalIN4mlir9AttributeEENS1_13bufferization14TensorLikeTypeEEEC2ERKS7_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bg = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i32 noundef 2) #27, !inline_history !800 ; 0 uses
  %i.bh = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !102
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !102
  br label %_ZNSt8functionIFN4llvm9FailureOrIN4mlir13bufferization14BufferLikeTypeEEES4_S4_RKNS3_20BufferizationOptionsEEEC2ERKSA_.exit

_ZNSt8functionIFN4llvm9FailureOrIN4mlir13bufferization14BufferLikeTypeEEES4_S4_RKNS3_20BufferizationOptionsEEEC2ERKSA_.exit: ; preds = %_ZNSt8functionIFSt8optionalIN4mlir9AttributeEENS1_13bufferization14TensorLikeTypeEEEC2ERKS7_.exit, %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.bk = load i64, ptr %i.bj, align 8
  store i64 %i.bk, ptr %i.bi, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !44
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.bn, align 8, !tbaa !45
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 1, ptr %i.bo, align 4, !tbaa !46
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !45
  %.not.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELj1EEC2ERKS8_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt8functionIFN4llvm9FailureOrIN4mlir13bufferization14BufferLikeTypeEEES4_S4_RKNS3_20BufferizationOptionsEEEC2ERKSA_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.bs = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt8functionIFvRN4mlir13bufferization13AnalysisStateEEEEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef nonnull align 8 dereferenceable(48) %i.br) ; 0 uses
  br label %_ZN4llvm11SmallVectorISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELj1EEC2ERKS8_.exit

_ZN4llvm11SmallVectorISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELj1EEC2ERKS8_.exit: ; preds = %_ZNSt8functionIFN4llvm9FailureOrIN4mlir13bufferization14BufferLikeTypeEEES4_S4_RKNS3_20BufferizationOptionsEEEC2ERKSA_.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !44
  %i.g = load i32, ptr %i.a, align 8, !tbaa !45
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !45
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !44
  %i.g = load i32, ptr %i.a, align 8, !tbaa !45
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !45
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !44
  %i.g = load i32, ptr %i.a, align 8, !tbaa !45
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !45
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #27, !inline_history !801
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #27 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !149 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !149 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !149  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !149  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #27
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #27, !inline_history !801
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_13bufferization11bufferizeOpES3_RKNSB_20BufferizationOptionsERNSB_18BufferizationStateEPNSB_23BufferizationStatisticsEE3$_0NSB_10ToBufferOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESR_E4typeES3_OT1_EUlS3_E_EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization10ToBufferOpEvE2idE
  %2 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization10ToBufferOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %2, %i.e
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_13bufferization11bufferizeOpEPNS_9OperationERKNS4_20BufferizationOptionsERNS4_18BufferizationStateEPNS4_23BufferizationStatisticsEE3$_0NS4_10ToBufferOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S6_PNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES6_OT1_ENKUlS6_E_clES6_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.f, align 8
  %.val.i = load ptr, ptr %.val, align 8, !tbaa !809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr %1, ptr %i.a, align 8, !tbaa !125
  %i.g = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !810 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_13bufferization11bufferizeOpEPNS_9OperationERKNS4_20BufferizationOptionsERNS4_18BufferizationStateEPNS4_23BufferizationStatisticsEE3$_0NS4_10ToBufferOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S6_PNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES6_OT1_ENKUlS6_E_clES6_.exit"

"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_13bufferization11bufferizeOpEPNS_9OperationERKNS4_20BufferizationOptionsERNS4_18BufferizationStateEPNS4_23BufferizationStatisticsEE3$_0NS4_10ToBufferOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S6_PNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES6_OT1_ENKUlS6_E_clES6_.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !128, !noalias !815 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129, !noalias !815 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !130, !noalias !815 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !125    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !61
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !131

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !125
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.c, !prof !132

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !61
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !133, !llvm.loop !3

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !192
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !165
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !132

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !192
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !129
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !128
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !61
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !61
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !165
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !125
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !125
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_13bufferization11bufferizeOpES3_RKNS7_20BufferizationOptionsERNS7_18BufferizationStateEPNS7_23BufferizationStatisticsEE3$_1EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !817, !nonnull !56, !align !188
  %i.c = tail call noundef zeroext i1 @_ZNK4mlir13bufferization20BufferizationOptions11isOpAllowedEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(352) %i.b, ptr noundef %1) #27
  br i1 %i.c, label %bb.b, label %"_ZZN4mlir13bufferization11bufferizeOpEPNS_9OperationERKNS0_20BufferizationOptionsERNS0_18BufferizationStateEPNS0_23BufferizationStatisticsEENK3$_1clES2_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4mlir13bufferization18hasTensorSemanticsEPNS_9OperationE(ptr noundef %1) #27
  br i1 %i.d, label %bb.c, label %"_ZZN4mlir13bufferization11bufferizeOpEPNS_9OperationERKNS0_20BufferizationOptionsERNS0_18BufferizationStateEPNS0_23BufferizationStatisticsEENK3$_1clES2_.exit"

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !818, !nonnull !56, !align !188 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !46
  %.not.i.i = icmp ult i32 %i.h, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !132

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef %1)
  br label %"_ZZN4mlir13bufferization11bufferizeOpEPNS_9OperationERKNS0_20BufferizationOptionsERNS0_18BufferizationStateEPNS0_23BufferizationStatisticsEENK3$_1clES2_.exit"

bb.e:                                             ; preds = %bb.c
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  store ptr %1, ptr %i.m, align 1
  %i.n = load i32, ptr %i.g, align 8, !tbaa !45
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.g, align 8, !tbaa !45
  br label %"_ZZN4mlir13bufferization11bufferizeOpEPNS_9OperationERKNS0_20BufferizationOptionsERNS0_18BufferizationStateEPNS0_23BufferizationStatisticsEENK3$_1clES2_.exit"

"_ZZN4mlir13bufferization11bufferizeOpEPNS_9OperationERKNS0_20BufferizationOptionsERNS0_18BufferizationStateEPNS0_23BufferizationStatisticsEENK3$_1clES2_.exit": ; preds = %bb.a, %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6appendINS_6detail12DenseSetImplIS3_NS_8DenseMapIS3_NS6_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS6_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEEvEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef byval(%"class.llvm::detail::DenseSetImpl<mlir::Operation *, llvm::DenseMap<mlir::Operation *, llvm::detail::DenseSetEmpty, llvm::DenseMapInfo<mlir::Operation *>, llvm::detail::DenseSetPair<mlir::Operation *>>>::DenseSetIterator") align 8 %1, ptr noundef byval(%"class.llvm::detail::DenseSetImpl<mlir::Operation *, llvm::DenseMap<mlir::Operation *, llvm::detail::DenseSetEmpty, llvm::DenseMapInfo<mlir::Operation *>, llvm::detail::DenseSetPair<mlir::Operation *>>>::DenseSetIterator") align 8 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.04.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.04.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.04.sroa.2.0.copyload = load ptr, ptr %.sroa.04.sroa.2.0..sroa_idx, align 8 ; 8 uses
  %.sroa.04.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.04.sroa.3.0.copyload = load ptr, ptr %.sroa.04.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.04.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.04.sroa.4.0.copyload = load ptr, ptr %.sroa.04.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.03.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.not5.i = icmp eq ptr %.sroa.04.sroa.0.0.copyload, %.sroa.03.sroa.0.0.copyload ; 2 uses
  br i1 %.not5.i, label %_ZSt10__distanceIN4llvm6detail12DenseSetImplIPN4mlir9OperationENS0_8DenseMapIS5_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS5_vEENS1_12DenseSetPairIS5_EEEEE16DenseSetIteratorILb0EEEENSt15iterator_traitsIT_E15difference_typeESH_SH_St18input_iterator_tag.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = ptrtoint ptr %.sroa.04.sroa.2.0.copyload to i64
  %i.b = ptrtoint ptr %.sroa.04.sroa.3.0.copyload to i64 ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = add nsw i64 %i.d, 31
  %i.f = lshr i64 %i.e, 5                         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i, %.lr.ph.i
  %.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ae, %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i ]
  %storemerge16.i.i.i46.i = phi ptr [ %.sroa.04.sroa.0.0.copyload, %.lr.ph.i ], [ %storemerge16.i.i.i.i, %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i46.i, i64 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.h, %i.b
  %i.j = ashr exact i64 %i.i, 3                   ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.j, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = lshr i64 %i.j, 5                         ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.sroa.4.0.copyload, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !61
  %i.n = trunc i64 %i.j to i32
  %i.o = and i32 %i.n, 31
  %i.p = shl nsw i32 -1, %i.o
end_hunk_2
begin_hunk_3_@_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6appendINS_6detail12DenseSetImplIS3_NS_8DenseMapIS3_NS6_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS6_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEEvEEvT_SI_:bb.a
  %.012.lcssa.i.i.i.i = phi i64 [ %i.k, %bb.c ], [ %i.w, %.lr.ph ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.q, %bb.c ], [ %i.y, %.lr.ph ]
  %i.aa = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64
  %.idx.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i, 8
  %i.ac = getelementptr i8, ptr %.sroa.04.sroa.3.0.copyload, i64 %.idx.i.i.i.i
  %i.ad = getelementptr [8 x i8], ptr %i.ac, i64 %i.ab
  br label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i

_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %._crit_edge.i.i.i.i, %bb.b
  %storemerge16.i.i.i.i = phi ptr [ %.sroa.04.sroa.2.0.copyload, %bb.b ], [ %i.ad, %._crit_edge.i.i.i.i ], [ %.sroa.04.sroa.2.0.copyload, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.04.sroa.2.0.copyload, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ae = add nuw nsw i64 %.07.i, 1               ; 2 uses
  %.not.i = icmp eq ptr %storemerge16.i.i.i.i, %.sroa.03.sroa.0.0.copyload
  br i1 %.not.i, label %_ZSt10__distanceIN4llvm6detail12DenseSetImplIPN4mlir9OperationENS0_8DenseMapIS5_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS5_vEENS1_12DenseSetPairIS5_EEEEE16DenseSetIteratorILb0EEEENSt15iterator_traitsIT_E15difference_typeESH_SH_St18input_iterator_tag.exit, label %bb.b, !llvm.loop !819

_ZSt10__distanceIN4llvm6detail12DenseSetImplIPN4mlir9OperationENS0_8DenseMapIS5_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS5_vEENS1_12DenseSetPairIS5_EEEEE16DenseSetIteratorILb0EEEENSt15iterator_traitsIT_E15difference_typeESH_SH_St18input_iterator_tag.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.ae, %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !45 ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = add i64 %.0.lcssa.i, %i.ah              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !46
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp ugt i64 %i.ai, %i.al
  br i1 %i.am, label %bb.d, label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit

bb.d:                                             ; preds = %_ZSt10__distanceIN4llvm6detail12DenseSetImplIPN4mlir9OperationENS0_8DenseMapIS5_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS5_vEENS1_12DenseSetPairIS5_EEEEE16DenseSetIteratorILb0EEEENSt15iterator_traitsIT_E15difference_typeESH_SH_St18input_iterator_tag.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.an, i64 noundef %i.ai, i64 noundef 8) #27
  %.pre = load i32, ptr %i.af, align 8, !tbaa !45
  br label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit: ; preds = %_ZSt10__distanceIN4llvm6detail12DenseSetImplIPN4mlir9OperationENS0_8DenseMapIS5_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS5_vEENS1_12DenseSetPairIS5_EEEEE16DenseSetIteratorILb0EEEENSt15iterator_traitsIT_E15difference_typeESH_SH_St18input_iterator_tag.exit, %bb.d
  %i.ao = phi i32 [ %i.ag, %_ZSt10__distanceIN4llvm6detail12DenseSetImplIPN4mlir9OperationENS0_8DenseMapIS5_NS1_13DenseSetEmptyENS0_12DenseMapInfoIS5_vEENS1_12DenseSetPairIS5_EEEEE16DenseSetIteratorILb0EEEENSt15iterator_traitsIT_E15difference_typeESH_SH_St18input_iterator_tag.exit ], [ %.pre, %bb.d ] ; 2 uses
  br i1 %.not5.i, label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE18uninitialized_copyINS_6detail12DenseSetImplIS3_NS_8DenseMapIS3_NS6_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS6_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEEPS3_EEvT_SJ_T0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit
  %i.ap = zext i32 %i.ao to i64
  %i.aq = load ptr, ptr %0, align 8, !tbaa !44
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = ptrtoint ptr %.sroa.04.sroa.2.0.copyload to i64
  %i.at = ptrtoint ptr %.sroa.04.sroa.3.0.copyload to i64 ; 2 uses
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3                 ; 2 uses
  %i.aw = add nsw i64 %i.av, 31
  %i.ax = lshr i64 %i.aw, 5                       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.az, %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %storemerge16.i.i.i57.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.04.sroa.0.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i ], [ %storemerge16.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ay = load ptr, ptr %storemerge16.i.i.i57.i.i.i.i.i.i.i.i, align 8, !tbaa !125
  store ptr %i.ay, ptr %.08.i.i.i.i.i.i.i.i, align 8, !tbaa !125
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i57.i.i.i.i.i.i.i.i, i64 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.at
  %i.bd = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.bd, %i.av
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.be = lshr i64 %i.bd, 5                       ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.sroa.4.0.copyload, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !61
  %i.bh = trunc i64 %i.bd to i32
  %i.bi = and i32 %i.bh, 31
  %i.bj = shl nsw i32 -1, %i.bi
  %i.bk = and i32 %i.bg, %i.bj                    ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.f
  %i.bm = add nuw nsw i64 %i.be, 1                ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %i.ax
  br i1 %i.bn, label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i, label %.lr.ph46

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph46
  %i.bo = add i64 %i.bq, 1                        ; 2 uses
  %i.bp = icmp eq i64 %i.bo, %i.ax
  br i1 %i.bp, label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i, label %.lr.ph46, !llvm.loop !1

.lr.ph46:                                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.bq = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.04.sroa.4.0.copyload, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !61 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph46, %bb.f
  %.012.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.be, %bb.f ], [ %i.bq, %.lr.ph46 ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.f ], [ %i.bs, %.lr.ph46 ]
  %i.bu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bv = zext nneg i32 %i.bu to i64
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i.i.i.i.i.i.i.i, 8
  %i.bw = getelementptr i8, ptr %.sroa.04.sroa.3.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.bv
  br label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i

_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %storemerge16.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.04.sroa.2.0.copyload, %bb.e ], [ %i.bx, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.04.sroa.2.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.04.sroa.2.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %storemerge16.i.i.i.i.i.i.i.i.i.i.i, %.sroa.03.sroa.0.0.copyload
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE18uninitialized_copyINS_6detail12DenseSetImplIS3_NS_8DenseMapIS3_NS6_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS6_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEEPS3_EEvT_SJ_T0_.exit, label %bb.e, !llvm.loop !820

_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE18uninitialized_copyINS_6detail12DenseSetImplIS3_NS_8DenseMapIS3_NS6_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS6_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEEPS3_EEvT_SJ_T0_.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIPN4mlir9OperationENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE7reserveEm.exit
  %i.by = trunc i64 %.0.lcssa.i to i32
  %i.bz = add i32 %i.ao, %i.by
  store i32 %i.bz, ptr %i.af, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(i64 noundef %2, ptr noundef %0) #27, !inline_history !821
  switch i32 %i.b, label %bb.c [
    i32 2, label %.thread
    i32 0, label %.thread.fold.split
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #27 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not75 = icmp eq i64 %i.e, 0
  br i1 %.not75, label %._crit_edge77, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.03176 = phi ptr [ %i.o, %._crit_edge ], [ %i.d, %bb.c ] ; 4 uses
  %.sroa.037.0.in71 = getelementptr inbounds nuw i8, ptr %.03176, i64 8
  %.sroa.037.072 = load ptr, ptr %.sroa.037.0.in71, align 8, !tbaa !149 ; 2 uses
  %.not6973 = icmp eq ptr %.sroa.037.072, %.03176
  br i1 %.not6973, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.d
  %.sroa.037.0.in = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 8
  %.sroa.037.0 = load ptr, ptr %.sroa.037.0.in, align 8, !tbaa !149 ; 2 uses
  %.not69 = icmp eq ptr %.sroa.037.0, %.03176
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.sroa.037.074 = phi ptr [ %.sroa.037.0, %.loopexit ], [ %.sroa.037.072, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.034.0 = phi ptr [ %i.h, %.lr.ph ], [ %i.k, %bb.e ] ; 3 uses
  %.not70 = icmp eq ptr %.sroa.034.0, %i.i
  br i1 %.not70, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.034.0) #27
  %i.m = tail call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull %i.l, ptr %1, i64 %2, i32 noundef %3)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.d

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %.03176, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.f
  br i1 %.not, label %._crit_edge77, label %.preheader

._crit_edge77:                                    ; preds = %._crit_edge, %bb.c
  %i.p = icmp eq i32 %3, 1
  br i1 %i.p, label %bb.f, label %.thread

bb.f:                                             ; preds = %._crit_edge77
  %i.q = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %0) #27, !inline_history !821
  br label %.thread

.thread.fold.split:                               ; preds = %bb.b
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b, %.thread.fold.split, %._crit_edge77, %bb.f
  %.sroa.030.9 = phi i32 [ %i.q, %bb.f ], [ 0, %.thread.fold.split ], [ 1, %._crit_edge77 ], [ 1, %bb.b ], [ 0, %bb.e ]
  ret i32 %.sroa.030.9
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 1, 3) i32 @"_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_13bufferization11bufferizeOpES4_RKNSC_20BufferizationOptionsERNSC_18BufferizationStateEPNSC_23BufferizationStatisticsEE3$_2NSC_10ToTensorOpES2_EENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESS_E4typeES4_OT1_EUlS4_E_EES2_lS4_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %3 = alloca %"class.llvm::iterator_range", align 8 ; 5 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization10ToTensorOpEvE2idE
  %4 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_13bufferization10ToTensorOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %4, %i.e
  %.not2.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not2.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_13bufferization11bufferizeOpEPNS_9OperationERKNS4_20BufferizationOptionsERNS4_18BufferizationStateEPNS4_23BufferizationStatisticsEE3$_2NS4_10ToTensorOpENS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S6_PNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_SG_EE5valueESN_E4typeES6_OT1_ENKUlS6_E_clES6_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !824
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !168, !noalias !824 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = getelementptr inbounds i8, ptr %1, i64 -16
  %i.j = zext i32 %i.g to i64
  %.sroa.0.0.i.i.i.i = select i1 %i.h, ptr null, ptr %i.i
  store ptr %.sroa.0.0.i.i.i.i, ptr %2, align 8, !noalias !824
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !824
  call void @_ZNK4mlir11ResultRange7getUsesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !824
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !171
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !171
  %i.p = icmp eq ptr %i.n, %i.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %i.p, label %bb.c, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_13bufferization11bufferizeOpEPNS_9OperationERKNS4_20BufferizationOptionsERNS4_18BufferizationStateEPNS4_23BufferizationStatisticsEE3$_2NS4_10ToTensorOpENS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S6_PNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_SG_EE5valueESN_E4typeES6_OT1_ENKUlS6_E_clES6_.exit"

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %.val, align 8, !tbaa !826, !nonnull !56, !align !188
  call void @_ZN4mlir12RewriterBase7eraseOpEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull %1) #27
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_13bufferization11bufferizeOpEPNS_9OperationERKNS4_20BufferizationOptionsERNS4_18BufferizationStateEPNS4_23BufferizationStatisticsEE3$_2NS4_10ToTensorOpENS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S6_PNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_SG_EE5valueESN_E4typeES6_OT1_ENKUlS6_E_clES6_.exit"

"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_13bufferization11bufferizeOpEPNS_9OperationERKNS4_20BufferizationOptionsERNS4_18BufferizationStateEPNS4_23BufferizationStatisticsEE3$_2NS4_10ToTensorOpENS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S6_PNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_SG_EE5valueESN_E4typeES6_OT1_ENKUlS6_E_clES6_.exit": ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.02.1.i = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ]
  ret i32 %.sroa.02.1.i
}

declare void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { builtin nounwind allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!18, !19}
!llvm.ident = !{!20}
!llvm.errno.tbaa = !{!25}

!0 = distinct !{!0, !57}
!1 = distinct !{!1, !57}
!2 = distinct !{!2, !57}
!3 = distinct !{!3, !57}
!4 = distinct !{!4, !57}
!5 = distinct !{null}
!6 = distinct !{ptr @_ZN4mlir6detail11PassOptions6OptionImN4llvm2cl6parserImEEED2Ev, ptr @_ZN4llvm2cl3optImLb0ENS0_6parserImEEED2Ev, null}
!7 = distinct !{ptr @_ZN4mlir6detail11PassOptions6OptionINS_13bufferization15LayoutMapOptionENS1_19GenericOptionParserIS4_EEED2Ev, ptr @_ZN4llvm2cl3optIN4mlir13bufferization15LayoutMapOptionELb0ENS2_6detail11PassOptions19GenericOptionParserIS4_EEED2Ev, null}
!8 = distinct !{ptr @_ZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEED2Ev, null, null}
!9 = distinct !{ptr @_ZN4mlir6detail11PassOptions6OptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm2cl6parserIS8_EEED2Ev, null, null}
!10 = distinct !{ptr @_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEED2Ev, null, null}
!11 = distinct !{null, null, null}
!12 = distinct !{!12, !57}
!13 = distinct !{!13, !57}
!14 = distinct !{ptr @_ZN4llvm2cl3optIN4mlir13bufferization15LayoutMapOptionELb0ENS2_6detail11PassOptions19GenericOptionParserIS4_EEED2Ev, null}
!15 = distinct !{ptr @_ZN4llvm2cl3optImLb0ENS0_6parserImEEED2Ev, null}
!16 = distinct !{!16, !57}
!17 = distinct !{!17, !57}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 2}
!20 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!21 = !{!"Simple C++ TBAA"}
!22 = !{!"omnipotent char", !21, i64 0}
!23 = !{!"int", !22, i64 0}
!24 = !{!"__libc_errno", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!"vtable pointer", !21, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"bool", !22, i64 0}
!29 = !{!"_ZTSSt22_Optional_payload_baseIN4mlir13bufferization27OneShotBufferizationOptionsEE", !22, i64 0, !28, i64 384}
!30 = !{!29, !28, i64 384}
!31 = !{!"any pointer", !22, i64 0}
!32 = !{!"p1 _ZTSN4mlir4PassE", !31, i64 0}
!33 = !{!"_ZTSSt10_Head_baseILm0EPN4mlir4PassELb0EE", !32, i64 0}
!34 = !{!33, !32, i64 0}
!35 = !{!"p1 omnipotent char", !31, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !35, i64 0}
!37 = !{!36, !35, i64 0}
!38 = !{!"long", !22, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0, !38, i64 8, !22, i64 16}
!40 = !{!39, !35, i64 0}
!41 = !{!39, !38, i64 8}
!42 = !{!22, !22, i64 0}
!43 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !31, i64 0, !23, i64 8, !23, i64 12}
!44 = !{!43, !31, i64 0}
!45 = !{!43, !23, i64 8}
!46 = !{!43, !23, i64 12}
!47 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE", !43, i64 0}
!48 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEE", !47, i64 0}
!49 = !{!"_ZTSN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !48, i64 0}
!50 = !{!"_ZTSN4llvm18SmallVectorStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EEE", !22, i64 0}
!51 = !{!"_ZTSN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EEE", !49, i64 0, !50, i64 16}
!52 = !{!"_ZTSN4mlir13bufferization15LayoutMapOptionE", !22, i64 0}
!53 = !{!"_ZTSN4mlir13bufferization27OneShotBufferizePassOptionsE", !28, i64 0, !28, i64 1, !23, i64 4, !39, i64 8, !28, i64 40, !28, i64 41, !28, i64 42, !51, i64 48, !28, i64 96, !51, i64 104, !52, i64 152, !28, i64 156, !28, i64 157, !28, i64 158, !28, i64 159, !52, i64 160, !38, i64 168}
!54 = !{!53, !28, i64 96}
!55 = !{i8 0, i8 2}
!56 = !{}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!28, !28, i64 0}
!59 = !{!"_ZTSSt14_Function_base", !22, i64 0, !31, i64 16}
!60 = !{!59, !31, i64 16}
!61 = !{!23, !23, i64 0}
!62 = !{!"_ZTSSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !59, i64 0, !31, i64 24}
!63 = !{!62, !31, i64 24}
!64 = !{!"_ZTSN4mlir6detail11PassOptions10OptionBaseE", !28, i64 8}
!65 = !{!64, !28, i64 8}
!66 = !{!52, !52, i64 0}
!67 = !{!"_ZTSSt8functionIFvRKN4mlir13bufferization15LayoutMapOptionEEE", !59, i64 0, !31, i64 24}
!68 = !{!67, !31, i64 24}
!69 = !{!38, !38, i64 0}
!70 = !{!"_ZTSSt8functionIFvRKmEE", !59, i64 0, !31, i64 24}
!71 = !{!70, !31, i64 24}
!72 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN4mlir13bufferization8OpFilter5EntryEvEE", !43, i64 0}
!73 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN4mlir13bufferization8OpFilter5EntryELb0EEE", !72, i64 0}
!74 = !{!"_ZTSN4llvm15SmallVectorImplIN4mlir13bufferization8OpFilter5EntryEEE", !73, i64 0}
!75 = !{!"_ZTSN4llvm18SmallVectorStorageIN4mlir13bufferization8OpFilter5EntryELj1EEE", !22, i64 0}
!76 = !{!"_ZTSN4llvm11SmallVectorIN4mlir13bufferization8OpFilter5EntryELj1EEE", !74, i64 0, !75, i64 16}
!77 = !{!"_ZTSN4mlir13bufferization8OpFilterE", !76, i64 0}
!78 = !{!"_ZTSSt8functionIFN4llvm9FailureOrIN4mlir5ValueEEERNS2_9OpBuilderENS2_8LocationENS2_10MemRefTypeENS2_10ValueRangeEjEE", !59, i64 0, !31, i64 24}
!79 = !{!"_ZTSSt8functionIFN4llvm13LogicalResultERN4mlir9OpBuilderENS2_8LocationENS2_5ValueES6_EE", !59, i64 0, !31, i64 24}
!80 = !{!"_ZTSSt8functionIFN4llvm9FailureOrIN4mlir5ValueEEERNS2_9OpBuilderENS2_8LocationENS2_4TypeES3_EE", !59, i64 0, !31, i64 24}
!81 = !{!"_ZTSSt8functionIFN4mlir13bufferization14BufferLikeTypeENS1_14TensorLikeTypeENS0_9AttributeENS0_4func6FuncOpERKNS1_20BufferizationOptionsEEE", !59, i64 0, !31, i64 24}
!82 = !{!"_ZTSSt8functionIFN4mlir13bufferization14BufferLikeTypeENS1_14TensorLikeTypeENS0_9AttributeERKNS1_20BufferizationOptionsEEE", !59, i64 0, !31, i64 24}
!83 = !{!"_ZTSSt8functionIFSt8optionalIN4mlir9AttributeEENS1_13bufferization14TensorLikeTypeEEE", !59, i64 0, !31, i64 24}
!84 = !{!"_ZTSSt8functionIFN4llvm9FailureOrIN4mlir13bufferization14BufferLikeTypeEEES4_S4_RKNS3_20BufferizationOptionsEEE", !59, i64 0, !31, i64 24}
!85 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt8functionIFvRN4mlir13bufferization13AnalysisStateEEEvEE", !43, i64 0}
!86 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELb0EEE", !85, i64 0}
!87 = !{!"_ZTSN4llvm15SmallVectorImplISt8functionIFvRN4mlir13bufferization13AnalysisStateEEEEE", !86, i64 0}
!88 = !{!"_ZTSN4llvm18SmallVectorStorageISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELj1EEE", !22, i64 0}
!89 = !{!"_ZTSN4llvm11SmallVectorISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELj1EEE", !87, i64 0, !88, i64 16}
!90 = !{!"_ZTSN4mlir13bufferization20BufferizationOptionsE", !77, i64 0, !28, i64 56, !28, i64 57, !28, i64 58, !78, i64 64, !79, i64 96, !80, i64 128, !81, i64 160, !28, i64 192, !82, i64 200, !83, i64 232, !84, i64 264, !28, i64 296, !28, i64 297, !28, i64 298, !23, i64 300, !89, i64 304}
!91 = !{!90, !28, i64 296}
!92 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairISt4pairIPN4mlir9OperationES5_EbEE", !31, i64 0}
!93 = !{!"p1 int", !31, i64 0}
!94 = !{!"_ZTSN4llvm8DenseMapISt4pairIPN4mlir9OperationES4_EbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEE", !92, i64 0, !93, i64 8, !23, i64 16, !23, i64 20}
!95 = !{!94, !23, i64 20}
!96 = !{!94, !92, i64 0}
!97 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairISt7variantIJPN4mlir9OperationEPNS3_5BlockEPNS3_6RegionENS3_5ValueEEES9_EE", !31, i64 0}
!98 = !{!"_ZTSN4llvm8DenseMapISt7variantIJPN4mlir9OperationEPNS2_5BlockEPNS2_6RegionENS2_5ValueEEES8_NS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_S8_EEEE", !97, i64 0, !93, i64 8, !23, i64 16, !23, i64 20}
!99 = !{!98, !23, i64 20}
!100 = !{!98, !97, i64 0}
!101 = !{!"p1 _ZTSN4llvm8DenseSetIPN4mlir9OperationENS_12DenseMapInfoIS3_vEEEE", !31, i64 0}
!102 = !{!31, !31, i64 0}
!103 = !{!"p1 _ZTSN4mlir13bufferization20BufferizationOptionsE", !31, i64 0}
!104 = !{!"p1 _ZTSN4llvm11SmallVectorIPN4mlir9OperationELj6EEE", !31, i64 0}
!105 = !{!"p1 _ZTSN4mlir11MLIRContextE", !31, i64 0}
!106 = !{!"_ZTSN4mlir7BuilderE", !105, i64 0}
!107 = !{!"_ZTSN4mlir9OpBuilder12ListenerBase4KindE", !22, i64 0}
!108 = !{!"_ZTSN4mlir9OpBuilder12ListenerBaseE", !107, i64 0}
!109 = !{!"p1 _ZTSN4mlir9OpBuilder8ListenerE", !31, i64 0}
!110 = !{!"p1 _ZTSN4mlir5BlockE", !31, i64 0}
!111 = !{!"p1 _ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEEE", !31, i64 0}
end_hunk_3
