Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SuperVectorize?download=true
inline.NumInlined: 4220
inline.NumDeleted: 2358
begin_hunk_0_@_ZL7widenOpPN4mlir9OperationERN12_GLOBAL__N_118VectorizationStateE:bb.a
  call void @free(ptr noundef %i.cn) #24
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj8EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj8EED2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret ptr %.3
}

declare ptr @_ZNK4mlir10MemRefType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr, i64, ptr, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_118VectorizationState29getScalarValueReplacementsForEN4mlir10ValueRangeERN4llvm15SmallVectorImplINS1_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::detail::indexed_accessor_range_base<mlir::ValueRange, llvm::PointerUnion<const mlir::Value *, mlir::OpOperand *, mlir::detail::OpResultImpl *, const llvm::Repeated<mlir::Value> *>, mlir::Value, mlir::Value, mlir::Value>::iterator", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i64 %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.a, align 8
  %.not13 = icmp eq i64 %2, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  %storemerge14 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit ]
  %i.g = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %storemerge14) #24 ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !155, !noalias !504 ; 3 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !156, !noalias !504 ; 2 uses
  %i.j = load i32, ptr %i.d, align 4, !tbaa !157, !noalias !504 ; 4 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = xor i64 %i.m, -49064778989728563         ; 2 uses
  %i.o = lshr i64 %i.n, 30
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, -4658895280553007687       ; 2 uses
  %i.r = lshr i64 %i.q, 27
  %i.s = xor i64 %i.r, %i.q
  %i.t = mul i64 %i.s, -7723592293110705685       ; 2 uses
  %i.u = lshr i64 %i.t, 31
  %i.v = xor i64 %i.u, %i.t
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.l, %i.w                       ; 3 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = lshr i64 %i.y, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !73, !noalias !505
  %i.ac = and i32 %i.x, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !104

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %i.af = phi i64 [ %i.ak, %bb.d ], [ %i.y, %bb.c ]
  %.01419.i.i.i.i.i.i = phi i32 [ %i.aj, %bb.d ], [ %i.x, %bb.c ]
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.af ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !163, !noalias !505
  %i.ah = icmp eq ptr %i.g, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.ah, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.loopexit.i.i, label %bb.d, !prof !96

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ai = add nuw i32 %.01419.i.i.i.i.i.i, 1
  %i.aj = and i32 %i.ai, %i.l                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !73, !noalias !505
  %i.ao = and i32 %i.aj, 31
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !106

.loopexit.i.i.i.i:                                ; preds = %bb.d, %bb.c, %bb.b
  %i.ar = zext i32 %i.j to i64                    ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ar
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i = zext i32 %i.j to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.loopexit.i.i, %.loopexit.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.loopexit.i.i ], [ %i.ar, %.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi ptr [ %i.ag, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.loopexit.i.i ], [ %i.as, %.loopexit.i.i.i.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.pre-phi.i.i
  %.not.i.i = icmp eq ptr %.lcssa.sink.i.i.i.i, %i.at
  br i1 %.not.i.i, label %_ZNK4mlir9IRMapping15lookupOrDefaultINS_5ValueEEEDaT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 8
  %.sroa.speculate.load..i.i = load ptr, ptr %i.au, align 8, !tbaa !163
  br label %_ZNK4mlir9IRMapping15lookupOrDefaultINS_5ValueEEEDaT_.exit

_ZNK4mlir9IRMapping15lookupOrDefaultINS_5ValueEEEDaT_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.i.i, %bb.e
  %.sroa.speculated.i.i = phi ptr [ %.sroa.speculate.load..i.i, %bb.e ], [ %i.g, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.i.i ] ; 2 uses
  %i.av = load i32, ptr %i.e, align 8, !tbaa !41  ; 2 uses
  %i.aw = load i32, ptr %i.f, align 4, !tbaa !29
  %.not.i = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !96

bb.f:                                             ; preds = %_ZNK4mlir9IRMapping15lookupOrDefaultINS_5ValueEEEDaT_.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %.sroa.speculated.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

bb.g:                                             ; preds = %_ZNK4mlir9IRMapping15lookupOrDefaultINS_5ValueEEEDaT_.exit
  %i.ax = zext i32 %i.av to i64
  %i.ay = load ptr, ptr %3, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ax
  store ptr %.sroa.speculated.i.i, ptr %i.az, align 1
  %i.ba = load i32, ptr %i.e, align 8, !tbaa !41
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.e, align 8, !tbaa !41
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit: ; preds = %bb.f, %bb.g
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !514
  %i.bd = add nsw i64 %i.bc, 1                    ; 3 uses
  store i64 %i.bd, ptr %i.a, align 8
  %.not = icmp eq i64 %i.bd, %2
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #3

declare ptr @_ZN4mlir7Builder22getMultiDimIdentityMapEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL22computeMemoryOpIndicesPN4mlir9OperationENS_9AffineMapENS_10ValueRangeERN12_GLOBAL__N_118VectorizationStateERN4llvm15SmallVectorImplINS_5ValueEEE(ptr nofree noundef readonly captures(none) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(280) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.mlir::AffineMap", align 8   ; 4 uses
  store ptr %1, ptr %6, align 8
  %i.a = call { ptr, i64 } @_ZNK4mlir9AffineMap10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #24 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not20 = icmp eq i64 %i.c, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit
  %.021 = phi ptr [ %i.b, %.lr.ph ], [ %i.t, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit ] ; 2 uses
  %.sroa.07.0.copyload = load ptr, ptr %.021, align 8, !tbaa !204
  %i.h = call noundef i32 @_ZNK4mlir9AffineMap10getNumDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #24
  %i.i = call noundef i32 @_ZNK4mlir9AffineMap13getNumSymbolsEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #24
  %i.j = call ptr @_ZN4mlir9AffineMap3getEjjNS_10AffineExprE(i32 noundef %i.h, i32 noundef %i.i, ptr %.sroa.07.0.copyload) #24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8
  %i.k = call ptr @_ZN4mlir6affine13AffineApplyOp6createERNS_9OpBuilderENS_8LocationENS_9AffineMapENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %.sroa.0.0.copyload.i, ptr %i.j, i64 %2, i64 %3) #24
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -16 ; 2 uses
  %i.m = load i32, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  %i.n = load i32, ptr %i.g, align 4, !tbaa !29
  %.not.i = icmp ult i32 %i.m, %i.n
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !96

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %i.l)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = zext i32 %i.m to i64
  %i.p = load ptr, ptr %5, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store ptr %i.l, ptr %i.q, align 1
  %i.r = load i32, ptr %i.f, align 8, !tbaa !41
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.f, align 8, !tbaa !41
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE9push_backES2_.exit: ; preds = %bb.c, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL27isIVMappedToMultipleIndicesN4llvm8ArrayRefIN4mlir5ValueEEERKNS_8DenseMapIPNS1_9OperationEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEE(ptr %0, i64 %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::DenseSet.326", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !101, !noalias !523
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102, !noalias !523 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !103, !noalias !523 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !107, !noalias !523
  %i.h = icmp eq i32 %i.g, 0
  %i.i = zext i32 %i.e to i64                     ; 4 uses
  %.idx97 = shl nuw nsw i64 %i.i, 4               ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.h, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond, label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw nsw i64 %i.i, 31
  %i.k = lshr i64 %i.j, 5                         ; 2 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !73, !noalias !524 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.i.preheader, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.n = icmp eq i64 %i.k, 1
  br i1 %i.n, label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit._crit_edge, label %.lr.ph108

.lr.ph.i.i.i:                                     ; preds = %.lr.ph108
  %i.o = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.k
  br i1 %i.p, label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit._crit_edge, label %.lr.ph108, !llvm.loop !8

.lr.ph108:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.q = phi i64 [ %i.o, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !73, !noalias !524 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !8

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph108
  %i.u = shl i64 %i.q, 9
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5beginEv.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5beginEv.exit: ; preds = %bb.b, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.l, %bb.b ], [ %i.s, %._crit_edge.i.loopexit.i.i ]
  %i.v = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %i.w = shl nuw nsw i32 %i.v, 4
  %.idx96 = zext nneg i32 %i.w to i64
  %i.x = or disjoint i64 %.012.lcssa.i.i.i, %.idx96 ; 2 uses
  %.not4556.not = icmp eq i64 %i.x, %.idx97
  br i1 %.not4556.not, label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit._crit_edge, label %.lr.ph59

.lr.ph59:                                         ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5beginEv.exit
  %.idx = shl i64 %1, 3                           ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not52 = icmp eq i64 %1, 0
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ab = add nuw nsw i64 %i.i, 31
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %4 = add i64 %.idx, -8                          ; 2 uses
  %.not98 = icmp eq i64 %4, 0
  %.not98.a = icmp eq i64 %4, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %_ZN4llvm16DenseMapIteratorIPN4mlir9OperationEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEELb1EEppEv.exit
  %.pn = phi i64 [ %i.x, %.lr.ph59 ], [ %i.dk, %_ZN4llvm16DenseMapIteratorIPN4mlir9OperationEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEELb1EEppEv.exit ] ; 2 uses
  %.sroa.032.057 = getelementptr i8, ptr %i.a, i64 %.pn
  %i.ad = load ptr, ptr %.sroa.032.057, align 8, !tbaa !525 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.af = load i32, ptr %i.ae, align 4            ; 3 uses
  %i.ag = and i32 %i.af, 8388607
  %i.ah = icmp ne i32 %i.ag, 0
  call void @llvm.assume(i1 %i.ah)
  %i.ai = lshr i32 %i.af, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.ai, 1
  %i.aj = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.aj
  %i.al = lshr i32 %i.af, 21
  %i.am = and i32 %i.al, 2040
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !198
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !132
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !201
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.aw, align 8
  call void @_ZN4mlir6affine20getInvariantAccessesENS_5ValueEN4llvm8ArrayRefIS1_EE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::DenseSet.326") align 8 %3, ptr %.sroa.0.0.copyload.i.i, ptr %0, i64 %1) #24
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !528 ; 4 uses
  br i1 %.not52, label %.split.loop.exit50, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ax = load ptr, ptr %3, align 8, !tbaa !529, !noalias !530
  %i.ay = load ptr, ptr %i.z, align 8, !tbaa !531, !noalias !530 ; 2 uses
  %i.az = icmp eq i32 %.pre, 0
  %i.ba = add i32 %.pre, -1                       ; 2 uses
  br i1 %i.az, label %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit.us.preheader, label %.lr.ph.split

_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit.us.preheader: ; preds = %.lr.ph
  br i1 %.not98, label %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit.us.preheader.a, label %.split.loop.exit50.thread

_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit.us.preheader.a: ; preds = %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit.us.preheader
  call void @llvm.assume(i1 %.not98.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.split.loop.exit50.thread.thread

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit.thread
  %.054 = phi ptr [ %i.ch, %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit.thread ], [ %0, %.lr.ph ] ; 2 uses
  %.02153 = phi i32 [ %.not2982, %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit.thread ], [ 0, %.lr.ph ] ; 3 uses
  %i.bb = load i64, ptr %.054, align 8, !tbaa !163 ; 2 uses
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = xor i64 %i.bb, -49064778989728563       ; 2 uses
  %i.be = lshr i64 %i.bd, 30
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = mul i64 %i.bf, -4658895280553007687     ; 2 uses
  %i.bh = lshr i64 %i.bg, 27
  %i.bi = xor i64 %i.bh, %i.bg
  %i.bj = mul i64 %i.bi, -7723592293110705685     ; 2 uses
  %i.bk = lshr i64 %i.bj, 31
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = and i32 %i.ba, %i.bm                    ; 3 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = lshr i64 %i.bo, 5
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !73
  %i.bs = and i32 %i.bn, 31
  %i.bt = lshr i32 %i.br, %i.bs
  %i.bu = trunc i32 %i.bt to i1
  br i1 %i.bu, label %.lr.ph.i.i.i.i, label %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit, !prof !104

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split, %bb.d
  %i.bv = phi i64 [ %i.bz, %bb.d ], [ %i.bo, %.lr.ph.split ]
  %.01421.i.i.i.i = phi i32 [ %i.by, %bb.d ], [ %i.bn, %.lr.ph.split ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bv
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !163
  %.not99 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, %i.bc
  br i1 %.not99, label %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit.thread, label %bb.d, !prof !96

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bx = add nuw i32 %.01421.i.i.i.i, 1
  %i.by = and i32 %i.bx, %i.ba                    ; 3 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = lshr i64 %i.bz, 5
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !73
  %i.cd = and i32 %i.by, 31
  %i.ce = lshr i32 %i.cc, %i.cd
  %i.cf = trunc i32 %i.ce to i1
  br i1 %i.cf, label %.lr.ph.i.i.i.i, label %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit, !prof !106

_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit: ; preds = %bb.d, %.lr.ph.split
  %i.cg = add nuw nsw i32 %.02153, 1
  %.not100 = icmp eq i32 %.02153, 0
  br i1 %.not100, label %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit.thread, label %.split.loop.exit50

_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit
  %.not2982 = phi i32 [ %i.cg, %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit ], [ %.02153, %.lr.ph.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.054, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ch, %i.y
  br i1 %.not, label %.split.loop.exit50, label %.lr.ph.split

.split.loop.exit50.thread:                        ; preds = %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit.us.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit._crit_edge

.split.loop.exit50:                               ; preds = %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit.thread, %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit, %bb.c
  %cond1 = phi i1 [ true, %bb.c ], [ true, %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit.thread ], [ false, %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit ] ; 2 uses
  %i.ci = icmp eq i32 %.pre, 0
  br i1 %i.ci, label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %.split

.split:                                           ; preds = %.split.loop.exit50
  %i.cj = load ptr, ptr %3, align 8, !tbaa !529
  %i.ck = zext i32 %.pre to i64                   ; 2 uses
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.ck, 31
  %i.cn = lshr i64 %i.cm, 3
  %i.co = and i64 %i.cn, 1073741820
  %i.cp = add nuw nsw i64 %i.co, %i.cl
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cj, i64 noundef %i.cp, i64 noundef 8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %cond1, label %.split.loop.exit50.thread.thread, label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit._crit_edge

_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit: ; preds = %.split.loop.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %cond1, label %.split.loop.exit50.thread.thread, label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit._crit_edge

.split.loop.exit50.thread.thread:                 ; preds = %_ZNK4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countERKS3_.exit.us.preheader.a, %.split, %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit
  %i.cq = add i64 %.pn, 16
  %i.cr = ashr exact i64 %i.cq, 4                 ; 3 uses
  %.not.i.i = icmp ult i64 %i.cr, %i.i
  br i1 %.not.i.i, label %bb.e, label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit._crit_edge

bb.e:                                             ; preds = %.split.loop.exit50.thread.thread
  %i.cs = lshr i64 %i.cr, 5                       ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !73
  %i.cv = trunc nuw i64 %i.cr to i32
  %i.cw = and i32 %i.cv, 31
  %i.cx = shl nsw i32 -1, %i.cw
  %i.cy = and i32 %i.cu, %i.cx                    ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph.i.i.preheader, label %_ZN4llvm16DenseMapIteratorIPN4mlir9OperationEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEELb1EEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.da = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %i.db = icmp eq i64 %i.da, %i.ac
  br i1 %i.db, label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit._crit_edge, label %.lr.ph109

.lr.ph.i.i:                                       ; preds = %.lr.ph109
  %i.dc = add i64 %i.de, 1                        ; 2 uses
  %i.dd = icmp eq i64 %i.dc, %i.ac
  br i1 %i.dd, label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit._crit_edge, label %.lr.ph109, !llvm.loop !8

.lr.ph109:                                        ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.de = phi i64 [ %i.dc, %.lr.ph.i.i ], [ %i.da, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !73 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.i.i, label %_ZN4llvm16DenseMapIteratorIPN4mlir9OperationEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEELb1EEppEv.exit, !llvm.loop !8

_ZN4llvm16DenseMapIteratorIPN4mlir9OperationEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEELb1EEppEv.exit: ; preds = %.lr.ph109, %bb.e
  %.012.lcssa.i.i = phi i64 [ %i.cs, %bb.e ], [ %i.de, %.lr.ph109 ]
  %.0.lcssa.i.i = phi i32 [ %i.cy, %bb.e ], [ %i.dg, %.lr.ph109 ]
  %i.di = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = shl i64 %.012.lcssa.i.i, 9
  %i.dj = shl nuw nsw i32 %i.di, 4
  %.idx101 = zext nneg i32 %i.dj to i64
  %i.dk = or disjoint i64 %.idx.i.i, %.idx101     ; 2 uses
  %.not45.not = icmp eq i64 %i.dk, %.idx97
  br i1 %.not45.not, label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit._crit_edge, label %bb.c

_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit._crit_edge: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader, %_ZN4llvm16DenseMapIteratorIPN4mlir9OperationEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEELb1EEppEv.exit, %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, %.split, %.split.loop.exit50.thread.thread, %.lr.ph.i.i, %.lr.ph.i.i.i.preheader, %.split.loop.exit50.thread, %bb.a, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5beginEv.exit
  %.not45.lcssa = phi i1 [ false, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5beginEv.exit ], [ true, %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit ], [ false, %bb.a ], [ true, %.split.loop.exit50.thread ], [ false, %.lr.ph.i.i ], [ false, %.lr.ph.i.i.i.preheader ], [ false, %.split.loop.exit50.thread.thread ], [ true, %.split ], [ false, %_ZN4llvm16DenseMapIteratorIPN4mlir9OperationEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEELb1EEppEv.exit ], [ false, %.lr.ph.i.i.preheader ], [ false, %.lr.ph.i.i.i ]
  ret i1 %.not45.lcssa
}

declare ptr @_ZN4mlir18makePermutationMapEPNS_5BlockEN4llvm8ArrayRefINS_5ValueEEERKNS2_8DenseMapIPNS_9OperationEjNS2_12DenseMapInfoIS8_vEENS2_6detail12DenseMapPairIS8_jEEEE(ptr noundef, ptr, i64, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare ptr @_ZN4mlir6vector22createReadOrMaskedReadERNS_9OpBuilderENS_8LocationENS_5ValueERKNS_10VectorTypeESt8optionalIS4_EbN4llvm8ArrayRefIS4_EENS_9AffineMapE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr noundef nonnull align 8 dereferenceable(8), ptr, i8, i1 noundef zeroext, ptr noundef byval(%"class.llvm::ArrayRef.300") align 8, i64) local_unnamed_addr #3

declare noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !28
  %i.g = load i32, ptr %i.a, align 8, !tbaa !41
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !41
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !41
  ret void
}

declare { ptr, i64 } @_ZNK4mlir10MemRefType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZNK4mlir13AffineMapAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK4mlir9AffineMap10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZN4mlir9AffineMap3getEjjNS_10AffineExprE(i32 noundef, i32 noundef, ptr) local_unnamed_addr #3

declare noundef i32 @_ZNK4mlir9AffineMap10getNumDimsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZNK4mlir9AffineMap13getNumSymbolsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare ptr @_ZN4mlir6affine13AffineApplyOp6createERNS_9OpBuilderENS_8LocationENS_9AffineMapENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64, i64) local_unnamed_addr #3

declare void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #3

declare void @_ZN4mlir6affine20getInvariantAccessesENS_5ValueEN4llvm8ArrayRefIS1_EE(ptr dead_on_unwind writable sret(%"class.llvm::DenseSet.326") align 8, ptr, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !152, !noalias !536 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !153, !noalias !536 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !154, !noalias !536 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !105    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !73
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !104

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !105
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.c, !prof !96

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !73
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !106, !llvm.loop !9

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !205
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !206
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !96

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !205
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !153
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !152
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !73
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !73
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !206
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !105
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !105
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !105
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !152, !noalias !541 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !153, !noalias !541 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !154, !noalias !541 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !105    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !73
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !104

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !105
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !96

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !73
end_hunk_0
