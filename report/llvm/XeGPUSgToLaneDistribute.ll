Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XeGPUSgToLaneDistribute?download=true
inline.NumInlined: 10294
inline.NumDeleted: 5298
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4mlir16ConversionTargetD2Ev:bb.a
  %.not11.i2.i.i = icmp eq i32 %i.at, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.au = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.j

bb.j:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13OperationNameESt8functionIFSt8optionalIbEPNS2_9OperationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.at, %.lr.ph.i.i ], [ %i.be, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13OperationNameESt8functionIFSt8optionalIbEPNS2_9OperationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.av = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aw = or disjoint i32 %i.av, %i.au
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !51 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i11, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13OperationNameESt8functionIFSt8optionalIbEPNS2_9OperationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bc = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i32 noundef 3) #24, !inline_history !973 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13OperationNameESt8functionIFSt8optionalIbEPNS2_9OperationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13OperationNameESt8functionIFSt8optionalIbEPNS2_9OperationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.k, %bb.j
  %i.bd = add i32 %.0.i3.i.i, -1
  %i.be = and i32 %i.bd, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.j, !llvm.loop !974

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13OperationNameESt8functionIFSt8optionalIbEPNS2_9OperationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ar
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13OperationNameESt8functionIFSt8optionalIbEPNS2_9OperationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !975

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13OperationNameESt8functionIFSt8optionalIbEPNS2_9OperationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.aj, align 4, !tbaa !978 ; 2 uses
  %i.bf = icmp eq i32 %.pr.i, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIN4mlir13OperationNameESt8functionIFSt8optionalIbEPNS1_9OperationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13OperationNameESt8functionIFSt8optionalIbEPNS2_9OperationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i
  %i.bg = load ptr, ptr %i.ai, align 8, !tbaa !979
  %i.bh = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 40
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bm, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIN4mlir13OperationNameESt8functionIFSt8optionalIbEPNS1_9OperationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir13OperationNameESt8functionIFSt8optionalIbEPNS1_9OperationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit: ; preds = %_ZN4llvm9StringMapIN4mlir16ConversionTarget18LegalizationActionENS_15MallocAllocatorEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13OperationNameESt8functionIFSt8optionalIbEPNS2_9OperationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i, %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !34 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !35 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir13OperationNameENS2_16ConversionTarget16LegalizationInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm8DenseMapIN4mlir13OperationNameESt8functionIFSt8optionalIbEPNS1_9OperationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit
  %i.bs = zext i32 %i.br to i64
  %.idx.i.i = mul nuw nsw i64 %i.bs, 48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN4mlir13OperationNameENS0_16ConversionTarget16LegalizationInfoEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.bu, %_ZNSt4pairIN4mlir13OperationNameENS0_16ConversionTarget16LegalizationInfoEED2Ev.exit.i.i.i ], [ %i.bt, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48 ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !51 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairIN4mlir13OperationNameENS0_16ConversionTarget16LegalizationInfoEED2Ev.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.bx = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 2 uses
  %i.by = tail call noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i32 noundef 3) #24, !inline_history !976 ; 0 uses
  br label %_ZNSt4pairIN4mlir13OperationNameENS0_16ConversionTarget16LegalizationInfoEED2Ev.exit.i.i.i

_ZNSt4pairIN4mlir13OperationNameENS0_16ConversionTarget16LegalizationInfoEED2Ev.exit.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %.not.i.i.i12 = icmp eq ptr %i.bp, %i.bu
  br i1 %.not.i.i.i12, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir13OperationNameENS2_16ConversionTarget16LegalizationInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !977

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir13OperationNameENS2_16ConversionTarget16LegalizationInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIN4mlir13OperationNameENS0_16ConversionTarget16LegalizationInfoEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.bo, align 8, !tbaa !34
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir13OperationNameENS2_16ConversionTarget16LegalizationInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir13OperationNameENS2_16ConversionTarget16LegalizationInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir13OperationNameENS2_16ConversionTarget16LegalizationInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, %_ZN4llvm8DenseMapIN4mlir13OperationNameESt8functionIFSt8optionalIbEPNS1_9OperationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit
  %i.bz = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir13OperationNameENS2_16ConversionTarget16LegalizationInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i ], [ %i.bp, %_ZN4llvm8DenseMapIN4mlir13OperationNameESt8functionIFSt8optionalIbEPNS1_9OperationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit ] ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.ai
  br i1 %i.ca, label %_ZN4llvm11SmallVectorISt4pairIN4mlir13OperationNameENS2_16ConversionTarget16LegalizationInfoEELj0EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir13OperationNameENS2_16ConversionTarget16LegalizationInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  tail call void @free(ptr noundef %i.bz) #24
  br label %_ZN4llvm11SmallVectorISt4pairIN4mlir13OperationNameENS2_16ConversionTarget16LegalizationInfoEELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIN4mlir13OperationNameENS2_16ConversionTarget16LegalizationInfoEELj0EED2Ev.exit.i: ; preds = %bb.n, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir13OperationNameENS2_16ConversionTarget16LegalizationInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !981 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %_ZN4llvm9MapVectorIN4mlir13OperationNameENS1_16ConversionTarget16LegalizationInfoENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S4_ELj0EEELj0EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIN4mlir13OperationNameENS2_16ConversionTarget16LegalizationInfoEELj0EED2Ev.exit.i
  %i.ce = load ptr, ptr %i.bn, align 8, !tbaa !982
  %i.cf = zext i32 %i.cc to i64                   ; 2 uses
  %i.cg = shl nuw nsw i64 %i.cf, 4
  %i.ch = add nuw nsw i64 %i.cf, 31
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = and i64 %i.ci, 1073741820
  %i.ck = add nuw nsw i64 %i.cj, %i.cg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ce, i64 noundef %i.ck, i64 noundef 8) #24
  br label %_ZN4llvm9MapVectorIN4mlir13OperationNameENS1_16ConversionTarget16LegalizationInfoENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S4_ELj0EEELj0EED2Ev.exit

_ZN4llvm9MapVectorIN4mlir13OperationNameENS1_16ConversionTarget16LegalizationInfoENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S4_ELj0EEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIN4mlir13OperationNameENS2_16ConversionTarget16LegalizationInfoEELj0EED2Ev.exit.i, %bb.o
  ret void
}

declare void @_ZN4mlir5xegpu32cleanupUnrealizedConversionCastsEPNS_9OperationERKN4llvm14SmallSetVectorINS_26UnrealizedConversionCastOpELj8EEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

declare void @_ZN4mlir5xegpu26removeTemporaryLayoutAttrsEPNS_9OperationE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #24, !inline_history !983
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #24 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !984 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !984 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !984  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !984  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #24
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #24, !inline_history !983
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_127XeGPUSgToLaneDistributePass14runOnOperationEvE3$_0NS1_26UnrealizedConversionCastOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESL_E4typeES3_OT1_EUlS3_E_EEvlS3_"(i64 noundef %0, ptr noundef %1) #2 align 2 {
bb.a:
  %2 = alloca %"class.mlir::UnrealizedConversionCastOp", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  %3 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_26UnrealizedConversionCastOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %3, %i.d
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_127XeGPUSgToLaneDistributePass14runOnOperationEvE3$_0NS_26UnrealizedConversionCastOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESG_E4typeESB_OT1_ENKUlSB_E_clESB_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.e, align 8
  %.val.i = load ptr, ptr %.val, align 8, !tbaa !986
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %1, ptr %2, align 8
  %i.f = call noundef zeroext i1 @_ZN4llvm9SetVectorIN4mlir26UnrealizedConversionCastOpENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %.val.i, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_127XeGPUSgToLaneDistributePass14runOnOperationEvE3$_0NS_26UnrealizedConversionCastOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESG_E4typeESB_OT1_ENKUlSB_E_clESB_.exit"

"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_127XeGPUSgToLaneDistributePass14runOnOperationEvE3$_0NS_26UnrealizedConversionCastOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESG_E4typeESB_OT1_ENKUlSB_E_clESB_.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9SetVectorIN4mlir26UnrealizedConversionCastOpENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !156
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35   ; 4 uses
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %.idx4.i = shl nuw nsw i64 %i.h, 3              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx4.i
  %i.j = lshr i64 %i.h, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !157 ; 8 uses
  %i.k = and i64 %.idx4.i, 34359738336
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.e, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.059.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i ], [ %i.t, %bb.g ] ; 2 uses
  %.02958.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.s, %bb.g ] ; 9 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr %.02958.i.i.i.i, align 8, !tbaa !157
  %i.l = icmp eq ptr %.sroa.01.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.l, label %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i, i64 8
  %.sroa.01.0.copyload.i30.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !157
  %i.n = icmp eq ptr %.sroa.01.0.copyload.i30.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.n, label %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i, i64 16
  %.sroa.01.0.copyload.i32.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !157
  %i.p = icmp eq ptr %.sroa.01.0.copyload.i32.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.p, label %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit30, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i, i64 24
  %.sroa.01.0.copyload.i34.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !157
  %i.r = icmp eq ptr %.sroa.01.0.copyload.i34.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.r, label %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit32, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i, i64 32
  %i.t = add nsw i64 %.059.i.i.i.i, -1
  %i.u = icmp sgt i64 %.059.i.i.i.i, 1
  br i1 %i.u, label %bb.c, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !987

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.g
  %i.v = and i32 %i.g, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.b
  %.pre-phi68.i.i.i.i = phi i32 [ %i.v, %._crit_edge.loopexit.i.i.i.i ], [ %i.g, %bb.b ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.e, %bb.b ] ; 5 uses
  switch i32 %.pre-phi68.i.i.i.i, label %._crit_edge.i.i.i.i._ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.thread_crit_edge [
    i32 3, label %bb.h
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge65.i.i.i.i
  ]

._crit_edge.i.i.i.i._ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.thread_crit_edge: ; preds = %._crit_edge.i.i.i.i
  %.sroa.02.0.copyload.pre = load ptr, ptr %1, align 8
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.thread

._crit_edge._crit_edge65.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i
  %.sroa.0.0.copyload.i41.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !157
  br label %bb.l

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i
  %.sroa.0.0.copyload.i39.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !157
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %.sroa.01.0.copyload.i36.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !157
  %.sroa.0.0.copyload.i37.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !157 ; 3 uses
  %i.w = icmp eq ptr %.sroa.01.0.copyload.i36.i.i.i.i, %.sroa.0.0.copyload.i37.i.i.i.i
  br i1 %i.w, label %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge._crit_edge.i.i.i.i
  %.sroa.0.0.copyload.i39.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i37.i.i.i.i, %bb.i ], [ %.sroa.0.0.copyload.i39.pre.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 3 uses
  %.1.i.i.i.i = phi ptr [ %i.x, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.01.0.copyload.i38.i.i.i.i = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !157
  %i.y = icmp eq ptr %.sroa.01.0.copyload.i38.i.i.i.i, %.sroa.0.0.copyload.i39.i.i.i.i
  br i1 %i.y, label %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge._crit_edge65.i.i.i.i
  %.sroa.0.0.copyload.i41.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i39.i.i.i.i, %bb.k ], [ %.sroa.0.0.copyload.i41.pre.i.i.i.i, %._crit_edge._crit_edge65.i.i.i.i ] ; 3 uses
  %.2.i.i.i.i = phi ptr [ %i.z, %bb.k ], [ %.029.lcssa.i.i.i.i, %._crit_edge._crit_edge65.i.i.i.i ] ; 2 uses
  %.sroa.01.0.copyload.i40.i.i.i.i = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !157
  %i.aa = icmp eq ptr %.sroa.01.0.copyload.i40.i.i.i.i, %.sroa.0.0.copyload.i41.i.i.i.i
  br i1 %i.aa, label %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit, label %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.thread

_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit30: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit32: ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.02958.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit: ; preds = %bb.c, %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit30, %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit32, %bb.h, %bb.j, %bb.l
  %.sroa.02.0.copyload26 = phi ptr [ %.sroa.0.0.copyload.i39.i.i.i.i, %bb.j ], [ %.sroa.0.0.copyload.i37.i.i.i.i, %bb.h ], [ %.sroa.0.0.copyload.i41.i.i.i.i, %bb.l ], [ %.sroa.0.0.copyload.i.i.i.i.i, %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.0.0.copyload.i.i.i.i.i, %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit32 ], [ %.sroa.0.0.copyload.i.i.i.i.i, %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit30 ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.c ]
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i, %bb.h ], [ %.2.i.i.i.i, %bb.l ], [ %i.ab, %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %i.ad, %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit32 ], [ %i.ac, %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.loopexit.split.loop.exit30 ], [ %.02958.i.i.i.i, %bb.c ]
  %.not = icmp eq ptr %.028.i.i.i.i, %i.i
  br i1 %.not, label %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.thread, label %_ZN4llvm9SetVectorIN4mlir26UnrealizedConversionCastOpENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EE7makeBigEv.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i.i._ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.thread_crit_edge, %bb.l, %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit
  %.sroa.02.0.copyload = phi ptr [ %.sroa.02.0.copyload.pre, %._crit_edge.i.i.i.i._ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.thread_crit_edge ], [ %.sroa.0.0.copyload.i41.i.i.i.i, %bb.l ], [ %.sroa.02.0.copyload26, %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !36
  %.not.i8 = icmp ult i32 %i.g, %i.af
  br i1 %.not.i8, label %bb.n, label %bb.m, !prof !39

bb.m:                                             ; preds = %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.thread
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir26UnrealizedConversionCastOpELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr %.sroa.02.0.copyload)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !35
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir26UnrealizedConversionCastOpELb1EE9push_backES2_.exit

bb.n:                                             ; preds = %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir26UnrealizedConversionCastOpELj8EEES3_EEbOT_RKT0_.exit.thread
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.h
  store ptr %.sroa.02.0.copyload, ptr %i.ag, align 1
  %i.ah = load i32, ptr %i.f, align 8, !tbaa !35
  %i.ai = add i32 %i.ah, 1                        ; 2 uses
  store i32 %i.ai, ptr %i.f, align 8, !tbaa !35
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir26UnrealizedConversionCastOpELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN4mlir26UnrealizedConversionCastOpELb1EE9push_backES2_.exit: ; preds = %bb.m, %bb.n
  %i.aj = phi i32 [ %.pre, %bb.m ], [ %i.ai, %bb.n ] ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, 8
  br i1 %i.ak, label %.lr.ph.i.preheader, label %_ZN4llvm9SetVectorIN4mlir26UnrealizedConversionCastOpENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EE7makeBigEv.exit

.lr.ph.i.preheader:                               ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir26UnrealizedConversionCastOpELb1EE9push_backES2_.exit
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.am = zext i32 %i.aj to i64
  %.idx.i = shl nuw nsw i64 %i.am, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.09.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.al, %.lr.ph.i.preheader ] ; 2 uses
  %i.ao = tail call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir26UnrealizedConversionCastOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %.09.i), !noalias !1000 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %.not.i9 = icmp eq ptr %i.ap, %i.an
  br i1 %.not.i9, label %_ZN4llvm9SetVectorIN4mlir26UnrealizedConversionCastOpENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EE7makeBigEv.exit, label %.lr.ph.i

bb.o:                                             ; preds = %bb.a
  %i.aq = tail call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir26UnrealizedConversionCastOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !1001
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.aq, 1
  %i.ar = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.ar, label %bb.p, label %_ZN4llvm9SetVectorIN4mlir26UnrealizedConversionCastOpENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EE7makeBigEv.exit

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !35 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !36
  %.not.i10 = icmp ult i32 %i.au, %i.aw
  br i1 %.not.i10, label %bb.r, label %bb.q, !prof !39

bb.q:                                             ; preds = %bb.p
end_hunk_0
begin_hunk_1_@_ZN4llvm15SmallVectorImplIlEaSEOS1_
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIlEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !34     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIlE12assignRemoteEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #24
  %.pre = load ptr, ptr %1, align 8, !tbaa !34
  br label %_ZN4llvm15SmallVectorImplIlE12assignRemoteEOS1_.exit

_ZN4llvm15SmallVectorImplIlE12assignRemoteEOS1_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !37
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !37
  store ptr %i.c, ptr %1, align 8, !tbaa !34
  store i32 0, ptr %i.k, align 4, !tbaa !36
  store i32 0, ptr %i.j, align 8, !tbaa !35
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !35   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !35   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit
    i32 1, label %bb.h
  ], !prof !186

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.b, align 8, !tbaa !100
  store i64 %i.t, ptr %i.s, align 8, !tbaa !100
  br label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit

_ZSt4moveIPlS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !35
  store i32 0, ptr %i.m, align 8, !tbaa !35
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !36
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #24
  br label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !187

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.b, align 8, !tbaa !100
  store i64 %i.z, ptr %i.y, align 8, !tbaa !100
  br label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34

_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34:               ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !35
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_moveIPlS3_EEvT_S4_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !34
  %.idx39 = shl nuw nsw i64 %.026, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_moveIPlS3_EEvT_S4_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_moveIPlS3_EEvT_S4_T0_.exit: ; preds = %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !35
  store i32 0, ptr %i.m, align 8, !tbaa !35
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_moveIPlS3_EEvT_S4_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplIlE12assignRemoteEOS1_.exit
  ret ptr %0
}

declare void @_ZN4mlir16ConversionTarget19setLegalityCallbackENS_13OperationNameERKSt8functionIFSt8optionalIbEPNS_9OperationEEE(ptr noundef nonnull align 8 dereferenceable(160), ptr, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 256, 258) i16 @"_ZNSt17_Function_handlerIFSt8optionalIbEPN4mlir9OperationEEZNS2_16ConversionTarget21addDynamicallyLegalOpINS2_5xegpu14CreateNdDescOpEZNS8_56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS2_13TypeConverterERNS2_17RewritePatternSetERS6_S4_E3$_0EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_S4_EEvE4typeEOSH_EUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #2 align 2 {
bb.a:
  %2 = alloca %"class.mlir::xegpu::TensorDescType", align 8 ; 4 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds i8, ptr %.val, i64 -16
  %i.b = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef 0) #24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.e = inttoptr i64 %i.d to ptr
  store ptr %i.e, ptr %2, align 8
  %i.f = call ptr @_ZNK4mlir5xegpu14TensorDescType9getLayoutEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZSt10__invoke_rISt8optionalIbERZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_5xegpu14CreateNdDescOpEZNS5_56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS2_13TypeConverterERNS2_17RewritePatternSetERS3_PNS2_9OperationEE3$_0EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_SD_EEvE4typeEOSG_EUlSD_E_JSD_EENSF_IX16is_invocable_r_vIT_SG_DpT1_EESM_E4typeESJ_DpOSN_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call { ptr, ptr } @_ZN4llvm23DefaultDoCastIfPossibleIN4mlir5xegpu20DistributeLayoutAttrEKNS1_9AttributeENS_8CastInfoIS3_S5_vEEE16doCastIfPossibleES4_(ptr nonnull %i.f)
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %i.i = icmp eq ptr %i.h, null
  %i.j = zext i1 %i.i to i16
  %i.k = or disjoint i16 %i.j, 256
  br label %"_ZSt10__invoke_rISt8optionalIbERZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_5xegpu14CreateNdDescOpEZNS5_56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS2_13TypeConverterERNS2_17RewritePatternSetERS3_PNS2_9OperationEE3$_0EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_SD_EEvE4typeEOSG_EUlSD_E_JSD_EENSF_IX16is_invocable_r_vIT_SG_DpT1_EESM_E4typeESJ_DpOSN_.exit"

"_ZSt10__invoke_rISt8optionalIbERZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_5xegpu14CreateNdDescOpEZNS5_56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS2_13TypeConverterERNS2_17RewritePatternSetERS3_PNS2_9OperationEE3$_0EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_SD_EEvE4typeEOSG_EUlSD_E_JSD_EENSF_IX16is_invocable_r_vIT_SG_DpT1_EESM_E4typeESJ_DpOSN_.exit": ; preds = %bb.a, %bb.b
  %.pn.i.i.i.i.i.i = phi i16 [ %i.k, %bb.b ], [ 257, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i16 %.pn.i.i.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt8optionalIbEPN4mlir9OperationEEZNS2_16ConversionTarget21addDynamicallyLegalOpINS2_5xegpu14CreateNdDescOpEZNS8_56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS2_13TypeConverterERNS2_17RewritePatternSetERS6_S4_E3$_0EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_S4_EEvE4typeEOSH_EUlS4_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #14 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS1_5xegpu14CreateNdDescOpEZNS4_56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS1_13TypeConverterERNS1_17RewritePatternSetERS2_PNS1_9OperationEE3$_0EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_SC_EEvE4typeEOSF_EUlSC_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !52
  br label %"_ZNSt14_Function_base13_Base_managerIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS1_5xegpu14CreateNdDescOpEZNS4_56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS1_13TypeConverterERNS1_17RewritePatternSetERS2_PNS1_9OperationEE3$_0EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_SC_EEvE4typeEOSF_EUlSC_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !167
  br label %"_ZNSt14_Function_base13_Base_managerIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS1_5xegpu14CreateNdDescOpEZNS4_56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS1_13TypeConverterERNS1_17RewritePatternSetERS2_PNS1_9OperationEE3$_0EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_SC_EEvE4typeEOSF_EUlSC_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i8, ptr %1, align 8
  store i8 %.val, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS1_5xegpu14CreateNdDescOpEZNS4_56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS1_13TypeConverterERNS1_17RewritePatternSetERS2_PNS1_9OperationEE3$_0EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_SC_EEvE4typeEOSF_EUlSC_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS1_5xegpu14CreateNdDescOpEZNS4_56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS1_13TypeConverterERNS1_17RewritePatternSetERS2_PNS1_9OperationEE3$_0EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_SC_EEvE4typeEOSF_EUlSC_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #3

declare void @_ZN4mlir16ConversionTarget16setDialectActionEN4llvm8ArrayRefINS1_9StringRefEEENS0_18LegalizationActionE(ptr noundef nonnull align 8 dereferenceable(160), ptr, i64, i32 noundef) local_unnamed_addr #3

declare void @_ZN4mlir16ConversionTarget19setLegalityCallbackEN4llvm8ArrayRefINS1_9StringRefEEERKSt8functionIFSt8optionalIbEPNS_9OperationEEE(ptr noundef nonnull align 8 dereferenceable(160), ptr, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 256, 258) i16 @"_ZNSt17_Function_handlerIFSt8optionalIbEPN4mlir9OperationEEZNS2_5xegpu56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS2_13TypeConverterERNS2_17RewritePatternSetERNS2_16ConversionTargetES4_E3$_1E9_M_invokeERKSt9_Any_dataOS4_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #2 align 2 {
bb.a:
  %2 = alloca %"class.mlir::xegpu::AnchorLayoutInterface", align 8 ; 5 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !157   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_5xegpu15ConvertLayoutOpEvE2idE
  %3 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_5xegpu15ConvertLayoutOpEvE2idE
  %spec.select.i.i.i.i.i.i.i.i = and i1 %3, %i.d
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %"_ZSt10__invoke_rISt8optionalIbERZN4mlir5xegpu56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS2_13TypeConverterERNS2_17RewritePatternSetERNS2_16ConversionTargetEPNS2_9OperationEE3$_1JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.e = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_5xegpu21AnchorLayoutInterfaceENS1_6detail36AnchorLayoutInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %.val)
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm8dyn_castIN4mlir5xegpu21AnchorLayoutInterfaceENS1_9OperationEEEDcPT0_.exit.i.i.i, label %_ZN4llvm20ValueFromPointerCastIN4mlir5xegpu21AnchorLayoutInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir5xegpu21AnchorLayoutInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_5xegpu21AnchorLayoutInterfaceENS1_6detail36AnchorLayoutInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %.val)
  %.fca.0.insert.i.i.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %.val, 0
  %.fca.1.insert.i.i.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i.i.i, ptr %i.f, 1
  br label %_ZN4llvm8dyn_castIN4mlir5xegpu21AnchorLayoutInterfaceENS1_9OperationEEEDcPT0_.exit.i.i.i

_ZN4llvm8dyn_castIN4mlir5xegpu21AnchorLayoutInterfaceENS1_9OperationEEEDcPT0_.exit.i.i.i: ; preds = %_ZN4llvm20ValueFromPointerCastIN4mlir5xegpu21AnchorLayoutInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i.i.i, %bb.b
  %.pn.i.i.i.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i.i.i, %_ZN4llvm20ValueFromPointerCastIN4mlir5xegpu21AnchorLayoutInterfaceENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i.i.i ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.g = extractvalue { ptr, ptr } %.pn.i.i.i.i.i, 0 ; 2 uses
  store ptr %i.g, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = extractvalue { ptr, ptr } %.pn.i.i.i.i.i, 1
  store ptr %i.i, ptr %i.h, align 8
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir5xegpu21AnchorLayoutInterfaceENS1_9OperationEEEDcPT0_.exit.i.i.i
  %i.j = call { ptr, ptr } @_ZN4mlir5xegpu21AnchorLayoutInterface15getAnchorLayoutEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #24
  %i.k = extractvalue { ptr, ptr } %i.j, 0
  %i.l = icmp eq ptr %i.k, null
  %i.m = zext i1 %i.l to i16
  %i.n = or disjoint i16 %i.m, 256
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4llvm8dyn_castIN4mlir5xegpu21AnchorLayoutInterfaceENS1_9OperationEEEDcPT0_.exit.i.i.i
  %.0.i.i.i = phi i16 [ %i.n, %bb.c ], [ 257, %_ZN4llvm8dyn_castIN4mlir5xegpu21AnchorLayoutInterfaceENS1_9OperationEEEDcPT0_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %"_ZSt10__invoke_rISt8optionalIbERZN4mlir5xegpu56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS2_13TypeConverterERNS2_17RewritePatternSetERNS2_16ConversionTargetEPNS2_9OperationEE3$_1JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit"

"_ZSt10__invoke_rISt8optionalIbERZN4mlir5xegpu56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS2_13TypeConverterERNS2_17RewritePatternSetERNS2_16ConversionTargetEPNS2_9OperationEE3$_1JSB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit": ; preds = %bb.a, %bb.d
  %.1.i.i.i = phi i16 [ %.0.i.i.i, %bb.d ], [ 256, %bb.a ]
  ret i16 %.1.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt8optionalIbEPN4mlir9OperationEEZNS2_5xegpu56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS2_13TypeConverterERNS2_17RewritePatternSetERNS2_16ConversionTargetES4_E3$_1E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #16 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4mlir5xegpu56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS1_13TypeConverterERNS1_17RewritePatternSetERNS1_16ConversionTargetEPNS1_9OperationEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 1, label %"_ZNSt14_Function_base13_Base_managerIZN4mlir5xegpu56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS1_13TypeConverterERNS1_17RewritePatternSetERNS1_16ConversionTargetEPNS1_9OperationEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split"
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN4mlir5xegpu56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS1_13TypeConverterERNS1_17RewritePatternSetERNS1_16ConversionTargetEPNS1_9OperationEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN4mlir5xegpu56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS1_13TypeConverterERNS1_17RewritePatternSetERNS1_16ConversionTargetEPNS1_9OperationEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !52
  br label %"_ZNSt14_Function_base13_Base_managerIZN4mlir5xegpu56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS1_13TypeConverterERNS1_17RewritePatternSetERNS1_16ConversionTargetEPNS1_9OperationEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4mlir5xegpu56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS1_13TypeConverterERNS1_17RewritePatternSetERNS1_16ConversionTargetEPNS1_9OperationEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN4mlir5xegpu56populateXeGPUSgToLaneDistributeTypeConversionAndLegalityERNS1_13TypeConverterERNS1_17RewritePatternSetERNS1_16ConversionTargetEPNS1_9OperationEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

declare { ptr, ptr } @_ZN4mlir5xegpu21AnchorLayoutInterface15getAnchorLayoutEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir11OpInterfaceINS_5xegpu21AnchorLayoutInterfaceENS1_6detail36AnchorLayoutInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !128 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %_ZNK4mlir13OperationName10getDialectEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu21AnchorLayoutInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_5xegpu21AnchorLayoutInterfaceEPNS_9OperationENS2_6detail36AnchorLayoutInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !178

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu21AnchorLayoutInterfaceEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_5xegpu21AnchorLayoutInterfaceEPNS_9OperationENS2_6detail36AnchorLayoutInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.16, i64 49), i64 34) #24
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu21AnchorLayoutInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu21AnchorLayoutInterfaceEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir6detail9InterfaceINS_5xegpu21AnchorLayoutInterfaceEPNS_9OperationENS2_6detail36AnchorLayoutInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_5xegpu21AnchorLayoutInterfaceEPNS_9OperationENS2_6detail36AnchorLayoutInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu21AnchorLayoutInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !44 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !34   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_5xegpu21AnchorLayoutInterfaceEPNS_9OperationENS2_6detail36AnchorLayoutInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !7

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_5xegpu21AnchorLayoutInterfaceEPNS_9OperationENS2_6detail36AnchorLayoutInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_5xegpu21AnchorLayoutInterfaceEPNS_9OperationENS2_6detail36AnchorLayoutInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_5xegpu21AnchorLayoutInterfaceEPNS_9OperationENS2_6detail36AnchorLayoutInterfaceInterfaceTraitsENS_2OpIS3_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !130
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZNK4mlir13OperationName12getInterfaceINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !180  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1069 ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !128
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu21AnchorLayoutInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !178

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu21AnchorLayoutInterfaceEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.16, i64 49), i64 34) #24
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu21AnchorLayoutInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu21AnchorLayoutInterfaceEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu21AnchorLayoutInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !44
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #24, !inline_history !1056
  br label %.thread

_ZNK4mlir13OperationName10getDialectEv.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ai, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.aj = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #24 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %.not15 = icmp eq ptr %i.aj, null
  br i1 %.not15, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir13OperationName10getDialectEv.exit
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu21AnchorLayoutInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !178

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu21AnchorLayoutInterfaceEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.16, i64 49), i64 34) #24
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu21AnchorLayoutInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5xegpu21AnchorLayoutInterfaceEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5xegpu21AnchorLayoutInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !44
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #24, !inline_history !1056
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_5xegpu21AnchorLayoutInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
end_hunk_1
