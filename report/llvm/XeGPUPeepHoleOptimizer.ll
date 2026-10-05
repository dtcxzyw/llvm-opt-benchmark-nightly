Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XeGPUPeepHoleOptimizer?download=true
inline.NumInlined: 4540
inline.NumDeleted: 2582
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4mlir13TypeConverterD2Ev:bb.a
  %i.bn = phi ptr [ %.pre.i11, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFNS_11SmallVectorIN4mlir5ValueELj6EEERNS3_9OpBuilderENS3_9TypeRangeENS3_10ValueRangeENS3_8LocationENS3_4TypeEEELb0EE13destroy_rangeEPSD_SF_.exit.loopexit.i ], [ %i.be, %_ZN4llvm11SmallVectorISt8functionIFN4mlir13TypeConverter25AttributeConversionResultENS2_4TypeENS2_9AttributeEEELj2EED2Ev.exit ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZN4llvm11SmallVectorISt8functionIFNS0_IN4mlir5ValueELj6EEERNS2_9OpBuilderENS2_9TypeRangeENS2_10ValueRangeENS2_8LocationENS2_4TypeEEELj2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFNS_11SmallVectorIN4mlir5ValueELj6EEERNS3_9OpBuilderENS3_9TypeRangeENS3_10ValueRangeENS3_8LocationENS3_4TypeEEELb0EE13destroy_rangeEPSD_SF_.exit.i
  tail call void @free(ptr noundef %i.bn) #22
  br label %_ZN4llvm11SmallVectorISt8functionIFNS0_IN4mlir5ValueELj6EEERNS2_9OpBuilderENS2_9TypeRangeENS2_10ValueRangeENS2_8LocationENS2_4TypeEEELj2EED2Ev.exit

_ZN4llvm11SmallVectorISt8functionIFNS0_IN4mlir5ValueELj6EEERNS2_9OpBuilderENS2_9TypeRangeENS2_10ValueRangeENS2_8LocationENS2_4TypeEEELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFNS_11SmallVectorIN4mlir5ValueELj6EEERNS3_9OpBuilderENS3_9TypeRangeENS3_10ValueRangeENS3_8LocationENS3_4TypeEEELb0EE13destroy_rangeEPSD_SF_.exit.i, %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !20 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !21 ; 2 uses
  %.not4.i.i12 = icmp eq i32 %i.bt, 0
  br i1 %.not4.i.i12, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFN4mlir5ValueERNS2_9OpBuilderENS2_4TypeENS2_10ValueRangeENS2_8LocationEEELb0EE13destroy_rangeEPSA_SC_.exit.i, label %.lr.ph.i.preheader.i13

.lr.ph.i.preheader.i13:                           ; preds = %_ZN4llvm11SmallVectorISt8functionIFNS0_IN4mlir5ValueELj6EEERNS2_9OpBuilderENS2_9TypeRangeENS2_10ValueRangeENS2_8LocationENS2_4TypeEEELj2EED2Ev.exit
  %i.bu = zext i32 %i.bt to i64
  %.idx.i14 = shl nuw nsw i64 %i.bu, 5
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx.i14
  br label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i18, %.lr.ph.i.preheader.i13
  %.05.i.i16 = phi ptr [ %i.bw, %_ZNSt14_Function_baseD2Ev.exit.i.i18 ], [ %i.bv, %.lr.ph.i.preheader.i13 ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.05.i.i16, i64 -32 ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %.05.i.i16, i64 -16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i17, label %_ZNSt14_Function_baseD2Ev.exit.i.i18, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i15
  %i.bz = tail call noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i32 noundef 3) #22, !inline_history !459 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i18

_ZNSt14_Function_baseD2Ev.exit.i.i18:             ; preds = %bb.j, %.lr.ph.i.i15
  %.not.i.i19 = icmp eq ptr %i.br, %i.bw
  br i1 %.not.i.i19, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFN4mlir5ValueERNS2_9OpBuilderENS2_4TypeENS2_10ValueRangeENS2_8LocationEEELb0EE13destroy_rangeEPSA_SC_.exit.loopexit.i, label %.lr.ph.i.i15, !llvm.loop !460

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFN4mlir5ValueERNS2_9OpBuilderENS2_4TypeENS2_10ValueRangeENS2_8LocationEEELb0EE13destroy_rangeEPSA_SC_.exit.loopexit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i18
  %.pre.i20 = load ptr, ptr %i.bq, align 8, !tbaa !20
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFN4mlir5ValueERNS2_9OpBuilderENS2_4TypeENS2_10ValueRangeENS2_8LocationEEELb0EE13destroy_rangeEPSA_SC_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFN4mlir5ValueERNS2_9OpBuilderENS2_4TypeENS2_10ValueRangeENS2_8LocationEEELb0EE13destroy_rangeEPSA_SC_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFN4mlir5ValueERNS2_9OpBuilderENS2_4TypeENS2_10ValueRangeENS2_8LocationEEELb0EE13destroy_rangeEPSA_SC_.exit.loopexit.i, %_ZN4llvm11SmallVectorISt8functionIFNS0_IN4mlir5ValueELj6EEERNS2_9OpBuilderENS2_9TypeRangeENS2_10ValueRangeENS2_8LocationENS2_4TypeEEELj2EED2Ev.exit
  %i.ca = phi ptr [ %.pre.i20, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFN4mlir5ValueERNS2_9OpBuilderENS2_4TypeENS2_10ValueRangeENS2_8LocationEEELb0EE13destroy_rangeEPSA_SC_.exit.loopexit.i ], [ %i.br, %_ZN4llvm11SmallVectorISt8functionIFNS0_IN4mlir5ValueELj6EEERNS2_9OpBuilderENS2_9TypeRangeENS2_10ValueRangeENS2_8LocationENS2_4TypeEEELj2EED2Ev.exit ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZN4llvm11SmallVectorISt8functionIFN4mlir5ValueERNS2_9OpBuilderENS2_4TypeENS2_10ValueRangeENS2_8LocationEEELj2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFN4mlir5ValueERNS2_9OpBuilderENS2_4TypeENS2_10ValueRangeENS2_8LocationEEELb0EE13destroy_rangeEPSA_SC_.exit.i
  tail call void @free(ptr noundef %i.ca) #22
  br label %_ZN4llvm11SmallVectorISt8functionIFN4mlir5ValueERNS2_9OpBuilderENS2_4TypeENS2_10ValueRangeENS2_8LocationEEELj2EED2Ev.exit

_ZN4llvm11SmallVectorISt8functionIFN4mlir5ValueERNS2_9OpBuilderENS2_4TypeENS2_10ValueRangeENS2_8LocationEEELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFN4mlir5ValueERNS2_9OpBuilderENS2_4TypeENS2_10ValueRangeENS2_8LocationEEELb0EE13destroy_rangeEPSA_SC_.exit.i, %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !20 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !21 ; 2 uses
  %.not4.i.i21 = icmp eq i32 %i.cg, 0
  br i1 %.not4.i.i21, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS_15SmallVectorImplIS7_EEEELb0EE13destroy_rangeEPSE_SG_.exit.i, label %.lr.ph.i.preheader.i22

.lr.ph.i.preheader.i22:                           ; preds = %_ZN4llvm11SmallVectorISt8functionIFN4mlir5ValueERNS2_9OpBuilderENS2_4TypeENS2_10ValueRangeENS2_8LocationEEELj2EED2Ev.exit
  %i.ch = zext i32 %i.cg to i64
  %.idx.i23 = shl nuw nsw i64 %i.ch, 5
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i23
  br label %.lr.ph.i.i24

.lr.ph.i.i24:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i27, %.lr.ph.i.preheader.i22
  %.05.i.i25 = phi ptr [ %i.cj, %_ZNSt14_Function_baseD2Ev.exit.i.i27 ], [ %i.ci, %.lr.ph.i.preheader.i22 ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.05.i.i25, i64 -32 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %.05.i.i25, i64 -16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i26, label %_ZNSt14_Function_baseD2Ev.exit.i.i27, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i24
  %i.cm = tail call noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i32 noundef 3) #22, !inline_history !461 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i27

_ZNSt14_Function_baseD2Ev.exit.i.i27:             ; preds = %bb.l, %.lr.ph.i.i24
  %.not.i.i28 = icmp eq ptr %i.ce, %i.cj
  br i1 %.not.i.i28, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS_15SmallVectorImplIS7_EEEELb0EE13destroy_rangeEPSE_SG_.exit.loopexit.i, label %.lr.ph.i.i24, !llvm.loop !3

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS_15SmallVectorImplIS7_EEEELb0EE13destroy_rangeEPSE_SG_.exit.loopexit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i27
  %.pre.i29 = load ptr, ptr %i.cd, align 8, !tbaa !20
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS_15SmallVectorImplIS7_EEEELb0EE13destroy_rangeEPSE_SG_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS_15SmallVectorImplIS7_EEEELb0EE13destroy_rangeEPSE_SG_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS_15SmallVectorImplIS7_EEEELb0EE13destroy_rangeEPSE_SG_.exit.loopexit.i, %_ZN4llvm11SmallVectorISt8functionIFN4mlir5ValueERNS2_9OpBuilderENS2_4TypeENS2_10ValueRangeENS2_8LocationEEELj2EED2Ev.exit
  %i.cn = phi ptr [ %.pre.i29, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS_15SmallVectorImplIS7_EEEELb0EE13destroy_rangeEPSE_SG_.exit.loopexit.i ], [ %i.ce, %_ZN4llvm11SmallVectorISt8functionIFN4mlir5ValueERNS2_9OpBuilderENS2_4TypeENS2_10ValueRangeENS2_8LocationEEELj2EED2Ev.exit ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZN4llvm11SmallVectorISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS_15SmallVectorImplIS7_EEEELj4EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS_15SmallVectorImplIS7_EEEELb0EE13destroy_rangeEPSE_SG_.exit.i
  tail call void @free(ptr noundef %i.cn) #22
  br label %_ZN4llvm11SmallVectorISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS_15SmallVectorImplIS7_EEEELj4EED2Ev.exit

_ZN4llvm11SmallVectorISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS_15SmallVectorImplIS7_EEEELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS_15SmallVectorImplIS7_EEEELb0EE13destroy_rangeEPSE_SG_.exit.i, %bb.m
  ret void
}

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13TypeConverterD0Ev(ptr noundef nonnull align 8 dereferenceable(508) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13TypeConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(508) dereferenceable(508) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 512) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir16ConversionTargetD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir16ConversionTargetD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #22, !inline_history !462
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #22 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !463 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !463 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !463  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !463  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #22
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #22, !inline_history !462
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlNS1_3gpu9GPUFuncOpEE_SE_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef %1) #2 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.364", align 8 ; 7 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_3gpu9GPUFuncOpEvE2idE
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %i.e
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlNS_3gpu9GPUFuncOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN4mlir5xegpu10getChipStrB5cxx11EPNS_9OperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.364") align 8 %2, ptr noundef nonnull %1) #22
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !126, !range !76, !noundef !77
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i.i, label %_ZZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvENKUlN4mlir3gpu9GPUFuncOpEE_clES3_.exit.i

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !129  ; 2 uses
  %cond.i.i = icmp eq i64 %i.j, 3
  %.pre.pre.i = load ptr, ptr %2, align 8, !tbaa !130 ; 8 uses
  br i1 %cond.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6.thread9.thread.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i: ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i.i
  %i.k = load i16, ptr %.pre.pre.i, align 1
  %i.l = xor i16 %i.k, 30320
  %i.m = getelementptr i8, ptr %.pre.pre.i, i64 2
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i16
  %i.p = xor i16 %i.o, 99
  %i.q = or i16 %i.l, %i.p
  %i.r = icmp ne i16 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6.thread9.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i
  %i.u = load i16, ptr %.pre.pre.i, align 1
  %i.v = xor i16 %i.u, 28002
  %i.w = getelementptr i8, ptr %.pre.pre.i, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i16
  %i.z = xor i16 %i.y, 103
  %i.aa = or i16 %i.v, %i.z
  %i.ab = icmp ne i16 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6.thread9.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.i.i
  %i.ae = load i16, ptr %.pre.pre.i, align 1
  %i.af = xor i16 %i.ae, 29283
  %i.ag = getelementptr i8, ptr %.pre.pre.i, i64 2
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i16
  %i.aj = xor i16 %i.ai, 105
  %i.ak = or i16 %i.af, %i.aj
  %i.al = icmp ne i16 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6.thread9.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6.thread9.thread.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6.thread9.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6.i.i, %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i.i
  store i8 0, ptr %i.f, align 8, !tbaa !126
  br label %bb.c

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6.thread9.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit3.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i
  %i.ao = load ptr, ptr %.val, align 8, !tbaa !465, !nonnull !77
  store i8 1, ptr %i.ao, align 1, !tbaa !85
  %.pre.i.i = load i8, ptr %i.f, align 8, !tbaa !126, !range !76
  %i.ap = trunc nuw i8 %.pre.i.i to i1
  store i8 0, ptr %i.f, align 8, !tbaa !126
  br i1 %i.ap, label %bb.c, label %_ZZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvENKUlN4mlir3gpu9GPUFuncOpEE_clES3_.exit.i

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6.thread9.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6.thread9.thread.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %.pre.pre.i, %i.aq
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.as = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.as)
  br label %_ZZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvENKUlN4mlir3gpu9GPUFuncOpEE_clES3_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.at = load i64, ptr %i.aq, align 8, !tbaa !131
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre.i, i64 noundef %i.au) #25
  br label %_ZZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvENKUlN4mlir3gpu9GPUFuncOpEE_clES3_.exit.i

_ZZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvENKUlN4mlir3gpu9GPUFuncOpEE_clES3_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit6.thread9.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlNS_3gpu9GPUFuncOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit

_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlNS_3gpu9GPUFuncOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit: ; preds = %bb.a, %_ZZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvENKUlN4mlir3gpu9GPUFuncOpEE_clES3_.exit.i
  ret void
}

declare void @_ZN4mlir5xegpu10getChipStrB5cxx11EPNS_9OperationE(ptr dead_on_unwind writable sret(%"class.std::optional.364") align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #12 comdat {
bb.a:
  tail call void @abort() #24
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #4

declare i8 @_ZN4mlir21applyPatternsGreedilyERNS_6RegionERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef byval(%"class.mlir::GreedyRewriteConfig") align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir16PDLPatternModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.c = load i32, ptr %i.b, align 4, !tbaa !113
  %i.d = icmp eq i32 %i.c, 0
  %.pre13.i = load ptr, ptr %i.a, align 8, !tbaa !114 ; 4 uses
  br i1 %i.d, label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !115  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %.pre13.i, i64 %.idx.i
  %.not11.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i, label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.012.i = phi ptr [ %i.p, %bb.e ], [ %.pre13.i, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %.012.i, align 8, !tbaa !117 ; 5 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !119
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.n = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i32 noundef 3) #22, !inline_history !466 ; 0 uses
  br label %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i

_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i: ; preds = %bb.d, %bb.c
  %i.o = add i64 %i.j, 41
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 noundef %i.o, i64 noundef 8) #22
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i, %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.h
  br i1 %.not.i, label %.loopexit.loopexit.i, label %.lr.ph.i

.loopexit.loopexit.i:                             ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !114
  br label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit

_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit: ; preds = %bb.a, %bb.b, %.loopexit.loopexit.i
  %i.q = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %.pre13.i, %bb.b ], [ %.pre13.i, %bb.a ]
  tail call void @free(ptr noundef %i.q) #22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.t = load i32, ptr %i.s, align 4, !tbaa !113
  %i.u = icmp eq i32 %i.t, 0
  %.pre13.i1 = load ptr, ptr %i.r, align 8, !tbaa !114 ; 4 uses
  br i1 %i.u, label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit12, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load i32, ptr %i.v, align 8, !tbaa !115  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i2 = shl nuw nsw i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %.pre13.i1, i64 %.idx.i2
  %.not11.i3 = icmp eq i32 %i.w, 0
  br i1 %.not11.i3, label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit12, label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %bb.f, %bb.i
  %.012.i5 = phi ptr [ %i.ag, %bb.i ], [ %.pre13.i1, %bb.f ] ; 2 uses
  %i.z = load ptr, ptr %.012.i5, align 8, !tbaa !117 ; 5 uses
  %.not10.i6 = icmp eq ptr %i.z, null
  br i1 %.not10.i6, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i4
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !119
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i7, label %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i8, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ae = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef 3) #22, !inline_history !466 ; 0 uses
  br label %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i8

_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i8: ; preds = %bb.h, %bb.g
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFSt8optionalIbEPN4mlir9OperationEEZNS2_16ConversionTarget21addDynamicallyLegalOpINS2_5xegpu8LoadNdOpEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS9_E_EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_S4_EEvE4typeEOSE_EUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_:bb.a
  %i.e = and i64 %i.a, 4294967295
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_126canBeOptimizedForTransposeEN4mlir5xegpu14TensorDescTypeE(ptr %i.j)
  %i.l = xor i1 %i.k, true
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.sroa.0.0.insert.ext.i = zext i1 %i.l to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.0.0.insert.ext.i, 256
  ret i16 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFSt8optionalIbEPN4mlir9OperationEEZNS2_16ConversionTarget21addDynamicallyLegalOpINS2_5xegpu8LoadNdOpEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS9_E_EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_S4_EEvE4typeEOSE_EUlS4_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #15 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS1_5xegpu8LoadNdOpEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS5_E_EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS1_9OperationEEEvE4typeEOSA_EUlSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !87
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS1_5xegpu8LoadNdOpEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS5_E_EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS1_9OperationEEEvE4typeEOSA_EUlSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !135
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS1_5xegpu8LoadNdOpEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS5_E_EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS1_9OperationEEEvE4typeEOSA_EUlSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i8, ptr %1, align 8
  store i8 %.val, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS1_5xegpu8LoadNdOpEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS5_E_EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS1_9OperationEEEvE4typeEOSA_EUlSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS1_5xegpu8LoadNdOpEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS5_E_EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS1_9OperationEEEvE4typeEOSA_EUlSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare i64 @_ZN4mlir5xegpu8LoadNdOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 256, 258) i16 @_ZNSt17_Function_handlerIFSt8optionalIbEPN4mlir9OperationEEZNS2_16ConversionTarget21addDynamicallyLegalOpINS2_6vector9ExtractOpEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS9_E_EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_S4_EEvE4typeEOSE_EUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #2 align 2 {
bb.a:
  %2 = alloca %"class.mlir::xegpu::DistributeLayoutAttr", align 8 ; 6 uses
  %3 = alloca %"class.mlir::OpResult", align 8    ; 4 uses
  %4 = alloca %"class.llvm::SmallVector.468", align 8 ; 7 uses
  %5 = alloca %"class.llvm::SmallVector.468", align 8 ; 6 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds i8, ptr %.val, i64 -16
  %i.b = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef 0) #22 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.d, 7
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.b
  store ptr %spec.select.i.i.i.i.i.i, ptr %3, align 8
  %i.e = call { ptr, ptr } @_ZN4mlir5xegpu18getTemporaryLayoutINS_8OpResultEvEENS0_20DistributeLayoutAttrERKT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #22 ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  store ptr %i.f, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = extractvalue { ptr, ptr } %i.e, 1
  store ptr %i.h, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %_ZSt10__invoke_rISt8optionalIbERZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_6vector9ExtractOpEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS6_E_EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSB_EUlSD_E_JSD_EENSA_IX16is_invocable_r_vIT_SB_DpT1_EESJ_E4typeESG_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNK4mlir5xegpu20DistributeLayoutAttr27getEffectiveLaneLayoutAsIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.468") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZNK4mlir5xegpu20DistributeLayoutAttr25getEffectiveLaneDataAsIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.468") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %2) #22
  %i.j = load ptr, ptr %4, align 8, !tbaa !20     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !21
  %i.m = load ptr, ptr %5, align 8, !tbaa !20     ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21
  %.not.i.i.i.i.i = icmp eq i32 %i.l, 2
  %.not1.i.i.i.i.i = icmp eq i32 %i.o, 2
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not1.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_ZN12_GLOBAL__N_126canBeOptimizedForTransposeEN4llvm8ArrayRefIlEES2_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.j, align 8, !tbaa !63
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %_ZN12_GLOBAL__N_126canBeOptimizedForTransposeEN4llvm8ArrayRefIlEES2_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !63
  %.not2.i.i.i.i.i = icmp eq i64 %i.s, 1
  br i1 %.not2.i.i.i.i.i, label %bb.e, label %_ZN12_GLOBAL__N_126canBeOptimizedForTransposeEN4llvm8ArrayRefIlEES2_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.m, align 8, !tbaa !63
  %.not3.i.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not3.i.i.i.i.i, label %bb.f, label %_ZN12_GLOBAL__N_126canBeOptimizedForTransposeEN4llvm8ArrayRefIlEES2_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !63
  %i.w = icmp eq i64 %i.v, 1
  %i.x = zext i1 %i.w to i16
  %i.y = or disjoint i16 %i.x, 256
  br label %_ZN12_GLOBAL__N_126canBeOptimizedForTransposeEN4llvm8ArrayRefIlEES2_.exit.i.i.i.i

_ZN12_GLOBAL__N_126canBeOptimizedForTransposeEN4llvm8ArrayRefIlEES2_.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i.i.i.i.i = phi i16 [ 257, %bb.e ], [ 257, %bb.b ], [ 257, %bb.c ], [ %i.y, %bb.f ], [ 257, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = icmp eq ptr %i.m, %i.z
  br i1 %i.aa, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_126canBeOptimizedForTransposeEN4llvm8ArrayRefIlEES2_.exit.i.i.i.i
  call void @free(ptr noundef %i.m) #22
  %.pre.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !20
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i.i:    ; preds = %bb.g, %_ZN12_GLOBAL__N_126canBeOptimizedForTransposeEN4llvm8ArrayRefIlEES2_.exit.i.i.i.i
  %i.ab = phi ptr [ %i.j, %_ZN12_GLOBAL__N_126canBeOptimizedForTransposeEN4llvm8ArrayRefIlEES2_.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i.i
  call void @free(ptr noundef %i.ab) #22
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i.i.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i.i.i:   ; preds = %bb.h, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZSt10__invoke_rISt8optionalIbERZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_6vector9ExtractOpEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS6_E_EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSB_EUlSD_E_JSD_EENSA_IX16is_invocable_r_vIT_SB_DpT1_EESJ_E4typeESG_DpOSK_.exit

_ZSt10__invoke_rISt8optionalIbERZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_6vector9ExtractOpEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS6_E_EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSB_EUlSD_E_JSD_EENSA_IX16is_invocable_r_vIT_SB_DpT1_EESJ_E4typeESG_DpOSK_.exit: ; preds = %bb.a, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i.i.i
  %.0.i.i.i.i = phi i16 [ %.0.i.i.i.i.i, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i.i.i ], [ 257, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i16 %.0.i.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFSt8optionalIbEPN4mlir9OperationEEZNS2_16ConversionTarget21addDynamicallyLegalOpINS2_6vector9ExtractOpEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS9_E_EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_S4_EEvE4typeEOSE_EUlS4_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #15 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS1_6vector9ExtractOpEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS5_E_EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS1_9OperationEEEvE4typeEOSA_EUlSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !87
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS1_6vector9ExtractOpEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS5_E_EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS1_9OperationEEEvE4typeEOSA_EUlSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !135
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS1_6vector9ExtractOpEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS5_E_EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS1_9OperationEEEvE4typeEOSA_EUlSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i8, ptr %1, align 8
  store i8 %.val, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS1_6vector9ExtractOpEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS5_E_EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS1_9OperationEEEvE4typeEOSA_EUlSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS1_6vector9ExtractOpEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS5_E_EENSt9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS1_9OperationEEEvE4typeEOSA_EUlSC_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare { ptr, ptr } @_ZN4mlir5xegpu18getTemporaryLayoutINS_8OpResultEvEENS0_20DistributeLayoutAttrERKT_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 256, 258) i16 @_ZNSt17_Function_handlerIFSt8optionalIbEPN4mlir9OperationEEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #2 align 2 {
bb.a:
  %2 = alloca %"class.mlir::xegpu::DistributeLayoutAttr", align 8 ; 5 uses
  %3 = alloca %"class.mlir::vector::MultiDimReductionOp", align 8 ; 4 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !133   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds i8, ptr %.val, i64 -16
  %i.b = tail call { ptr, ptr } @_ZN4mlir5xegpu23getDistributeLayoutAttrENS_5ValueE(ptr nonnull %i.a) #22 ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0        ; 2 uses
  store ptr %i.c, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = extractvalue { ptr, ptr } %i.b, 1
  store ptr %i.e, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.c, null
  br i1 %i.f, label %_ZSt10__invoke_rISt8optionalIbERZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlPN4mlir9OperationEE_JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef zeroext i1 @_ZNK4mlir5xegpu20DistributeLayoutAttr13isForSubgroupEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #22
  br i1 %i.g, label %bb.c, label %_ZSt10__invoke_rISt8optionalIbERZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlPN4mlir9OperationEE_JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !101
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.k = icmp eq ptr %i.j, @_ZN4mlir6detail14TypeIDResolverINS_6vector19MultiDimReductionOpEvE2idE
  %spec.select.i.i.i.i.i = select i1 %i.k, ptr %.val, ptr null ; 2 uses
  store ptr %spec.select.i.i.i.i.i, ptr %3, align 8
  %.not.i.i.i = icmp eq ptr %spec.select.i.i.i.i.i, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call { ptr, i64 } @_ZN4mlir6vector19MultiDimReductionOp16getReductionDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  %i.m = extractvalue { ptr, i64 } %i.l, 1
  %i.n = icmp ne i64 %i.m, 2
  %i.o = zext i1 %i.n to i16
  %i.p = or disjoint i16 %i.o, 256
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %spec.select.i.i.i = phi i16 [ %i.p, %bb.d ], [ 257, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZSt10__invoke_rISt8optionalIbERZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlPN4mlir9OperationEE_JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit

_ZSt10__invoke_rISt8optionalIbERZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlPN4mlir9OperationEE_JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit: ; preds = %bb.a, %bb.b, %bb.e
  %.1.i.i.i = phi i16 [ %spec.select.i.i.i, %bb.e ], [ 257, %bb.a ], [ 257, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i16 %.1.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFSt8optionalIbEPN4mlir9OperationEEZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlS4_E_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #17 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlPN4mlir9OperationEE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlPN4mlir9OperationEE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlPN4mlir9OperationEE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlPN4mlir9OperationEE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !87
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlPN4mlir9OperationEE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlPN4mlir9OperationEE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_126XeGPUPeepHoleOptimizerPass14runOnOperationEvEUlPN4mlir9OperationEE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

declare { ptr, ptr } @_ZN4mlir5xegpu23getDistributeLayoutAttrENS_5ValueE(ptr) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4mlir5xegpu20DistributeLayoutAttr13isForSubgroupEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare { ptr, i64 } @_ZN4mlir6vector19MultiDimReductionOp16getReductionDimsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13TypeConverter18registerConversionESt8functionIFSt8optionalIN4llvm13LogicalResultEENS3_12PointerUnionIJNS_4TypeENS_5ValueEEEERNS3_15SmallVectorImplIS7_EEEE(ptr noundef nonnull align 8 dereferenceable(508) %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS_15SmallVectorImplIS7_EEEELb0EE18growAndEmplaceBackIJSE_EEERSE_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS0_IS7_EEEEE12emplace_backIJSD_EEERSD_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.c to i64
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.g ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !100
  store ptr %i.l, ptr %i.j, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !79
  %.not.i.i.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEEC2EOSD_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !150
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !79
  store ptr %i.p, ptr %i.o, align 8, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEEC2EOSD_.exit.i

_ZNSt8functionIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEEC2EOSD_.exit.i: ; preds = %bb.d, %bb.c
  %i.q = load i32, ptr %i.b, align 8, !tbaa !21
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.b, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS0_IS7_EEEEE12emplace_backIJSD_EEERSD_DpOT_.exit

_ZN4llvm15SmallVectorImplISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS0_IS7_EEEEE12emplace_backIJSD_EEERSD_DpOT_.exit: ; preds = %bb.b, %_ZNSt8functionIFSt8optionalIN4llvm13LogicalResultEENS1_12PointerUnionIJN4mlir4TypeENS5_5ValueEEEERNS1_15SmallVectorImplIS6_EEEEC2EOSD_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !151  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS0_IS7_EEEEE12emplace_backIJSD_EEERSD_DpOT_.exit
  %i.w = shl i32 %i.u, 2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.y = load i32, ptr %i.x, align 4, !tbaa !123  ; 3 uses
  %i.z = icmp ult i32 %i.w, %i.y
  %i.aa = icmp ugt i32 %i.y, 64
  %or.cond.i = and i1 %i.z, %i.aa
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.s)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !152
  %i.ad = zext i32 %i.y to i64
  %i.ae = add nuw nsw i64 %i.ad, 31
  %i.af = lshr i64 %i.ae, 3
  %i.ag = and i64 %i.af, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %i.ag, i1 false)
  store i32 0, ptr %i.t, align 8, !tbaa !151
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit: ; preds = %_ZN4llvm15SmallVectorImplISt8functionIFSt8optionalINS_13LogicalResultEENS_12PointerUnionIJN4mlir4TypeENS6_5ValueEEEERNS0_IS7_EEEEE12emplace_backIJSD_EEERSD_DpOT_.exit, %bb.f, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !153 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5clearEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E5clearEv.exit
  %i.al = shl i32 %i.aj, 2
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !120 ; 4 uses
  %i.ao = icmp ult i32 %i.al, %i.an
  br i1 %i.ao, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp ugt i32 %i.an, 64
  br i1 %i.ap, label %bb.j, label %.lr.ph7.preheader.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ah)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5clearEv.exit

bb.k:                                             ; preds = %bb.h
  %i.aq = icmp eq i32 %i.an, 0
  br i1 %i.aq, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.k, %bb.i
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !121
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !122
  %i.au = zext i32 %i.an to i64
  %i.av = add nuw nsw i64 %i.au, 31
  %i.aw = lshr i64 %i.av, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !23 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.az = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.l

bb.l:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.ay, %.lr.ph.i.i ], [ %i.bj, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ba = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.bb = or disjoint i32 %i.ba, %i.az
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !20 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef %i.bf) #22
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.m, %bb.l
  %i.bi = add i32 %.0.i3.i.i, -1
  %i.bj = and i32 %i.bi, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.l, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.aw
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.loopexit.i, label %.lr.ph7.i.i, !llvm.loop !2

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4TypeENS_11SmallVectorIS3_Lj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.loopexit.i: ; preds = %._crit_edge.i.i
  %.pre.i = load i32, ptr %i.am, align 4, !tbaa !120
  %i.bk = zext i32 %.pre.i to i64
end_hunk_1
